uint64_t sub_1930(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
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

uint64_t sub_1B90(mach_port_t a1, unsigned int a2, __int128 *a3)
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

uint64_t sub_1D24(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
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

uint64_t sub_1F18(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
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

uint64_t VLxCLgDpiF(int a1)
{
  v1 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8970) ^ 0xD2)) ^ byte_9C750[byte_A8EE0[(-35 * ((qword_C86F8 + dword_C8970) ^ 0xD2))] ^ 0xE2]) + 46);
  v2 = *(v1 - 4);
  v3 = *(&off_C1600 + (byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 + v2) ^ 0xD2))] ^ 0x38] ^ (-35 * ((qword_C86F8 + v2) ^ 0xD2))) - 164);
  v4 = 1865875933 * (&v7[v2 + *(v3 - 4)] ^ 0x1E71746347E125D2);
  *(v1 - 4) = v4;
  *(v3 - 4) = v4;
  v5 = 1504884919 * (((v8 | 0x284ED875) - v8 + (v8 & 0xD7B12788)) ^ 0xD38D6F6E);
  v8[2] = v5 + 1822366053 * a1 + 164286189;
  v8[0] = v5 + 463;
  LOBYTE(v3) = -35 * ((*(v3 - 4) - *(v1 - 4)) ^ 0xD2);
  (*(*(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8970) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 + dword_C8970) ^ 0xD2))] ^ 0xEE]) - 115) + (v3 ^ byte_A8FE0[byte_A4980[v3] ^ 0x1C]) + 2388))(v8);
  return v8[1] ^ 0x9E32A85C;
}

uint64_t sub_22AC(uint64_t a1)
{
  v1 = *(&off_C1600 + ((-35 * (dword_C86D8 ^ 0xD2 ^ qword_C86F8)) ^ byte_9C850[byte_A90E0[(-35 * (dword_C86D8 ^ 0xD2 ^ qword_C86F8))] ^ 0x55]) + 131);
  v2 = -35 * (*v1 ^ qword_C86F8 ^ 0xD2);
  v3 = *(&off_C1600 + (byte_A8FEC[(byte_A4984[v2 - 4] ^ 0xEE) - 12] ^ v2) - 193);
  v4 = (*(v3 - 4) + *v1) ^ &v6;
  *v1 = 1865875933 * v4 + 0x1E71746347E125D2;
  *(v3 - 4) = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  v7 = a1;
  v9 = 210068311 * ((1656312085 - (&v7 | 0x62B95115) + (&v7 | 0x9D46AEEA)) ^ 0xF90914E) + 567;
  LOBYTE(v3) = -35 * (*v1 ^ 0xD2 ^ *(v3 - 4));
  (*(*(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C86D8) ^ 0xD2)) ^ byte_A01E0[byte_9C950[(-35 * ((qword_C86F8 + dword_C86D8) ^ 0xD2))] ^ 0x31]) + 8) + (byte_9C654[(byte_A8DE8[v3 - 8] ^ 0x16) - 4] ^ v3) + 2292))(&v7);
  return v8;
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8718) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 + dword_C8718) ^ 0xD2))] ^ 0xB3]) + 88);
  v5 = -35 * ((qword_C86F8 - *v4) ^ 0xD2);
  v6 = *(&off_C1600 + (byte_A01E0[byte_9C95C[v5 - 12] ^ 0xFA] ^ v5) - 125);
  v7 = &v9[*(v6 - 4) - *v4];
  *v4 = 1865875933 * (v7 - 0x1E71746347E125D2);
  *(v6 - 4) = 1865875933 * (v7 ^ 0x1E71746347E125D2);
  v12 = a2;
  v13 = a4;
  v10 = a1;
  v14 = a3;
  v15 = (896639297 * (((&v10 | 0x4D9A4574) - (&v10 & 0x4D9A4574)) ^ 0x5931D30C)) ^ 0x31C;
  LOBYTE(v6) = -35 * (*v4 ^ 0xD2 ^ *(v6 - 4));
  (*(*(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8718) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 - dword_C8718) ^ 0xD2))] ^ 0x43]) + 47) + (byte_9C85C[(byte_A90E8[v6 - 8] ^ 0x55) - 12] ^ v6) + 2392))(&v10);
  return v11 ^ 0x9E32A85C;
}

uint64_t sub_29FC(uint64_t a1)
{
  v1 = *(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8930) ^ 0xD2)) ^ byte_A01E0[byte_9C950[(-35 * ((qword_C86F8 - dword_C8930) ^ 0xD2))] ^ 0xFA]) - 145);
  v2 = *(v1 - 4);
  v3 = *(&off_C1600 + (byte_9C750[byte_A8EE0[(-35 * ((qword_C86F8 + v2) ^ 0xD2))] ^ 0xFC] ^ (-35 * ((qword_C86F8 + v2) ^ 0xD2))) - 57);
  v4 = &v6[v2 + *(v3 - 4)];
  *(v1 - 4) = 1865875933 * v4 - 0x1E71746347E125D2;
  *(v3 - 4) = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  v7 = a1;
  v8 = 210068311 * ((&v7 - 756948375 - 2 * (&v7 & 0xD2E1E269)) ^ 0x4037DDCD) + 441;
  LOBYTE(v3) = -35 * (*(v1 - 4) ^ 0xD2 ^ *(v3 - 4));
  return (*(*(&off_C1600 + ((-35 * (dword_C8930 ^ 0xD2 ^ qword_C86F8)) ^ byte_A02E0[byte_9CA50[(-35 * (dword_C8930 ^ 0xD2 ^ qword_C86F8))] ^ 0x4D]) - 73) + (byte_A01E0[byte_9C95C[v3 - 12] ^ 0x31] ^ v3) + 2287))(&v7);
}

uint64_t sub_2BF0(uint64_t a1)
{
  v1 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8988) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 + dword_C8988) ^ 0xD2))] ^ 0xF1]) - 45);
  v2 = *(&off_C1600 + ((-35 * (*v1 ^ qword_C86F8 ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * (*v1 ^ qword_C86F8 ^ 0xD2))] ^ 0x16]) - 2);
  v3 = 1865875933 * ((*(v2 - 4) + *v1) ^ &v5 ^ 0x1E71746347E125D2);
  *v1 = v3;
  *(v2 - 4) = v3;
  v7 = 262 - 50899313 * (((&v6 ^ 0x349343E8) & 0x6EE4A5DF | ~(&v6 ^ 0x349343E8 | 0x6EE4A5DF)) ^ 0x8F4333B2);
  v6 = a1;
  LOBYTE(v2) = -35 * ((*(v2 - 4) - *v1) ^ 0xD2);
  return (*(*(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8988) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 - dword_C8988) ^ 0xD2))] ^ 0x67]) - 34) + (byte_A8FEC[(byte_A4984[v2 - 4] ^ 0xEE) - 12] ^ v2) + 2176))(&v6);
}

uint64_t sub_2EC4()
{
  v5 = ~v2 + v1;
  v7 = __CFADD__(v0, v5) || v5 > (5 * (v3 ^ 0x701u)) + 4294966525u;
  return (*(v4 + 8 * ((v7 * ((121 * (v3 ^ 0x798)) ^ 0x16D)) ^ v3)))();
}

void sub_2F24(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = 1380333833 * ((48204118 - ((v15 - 136) | 0x2DF8956) + ((v15 - 136) | 0xFD2076A9)) ^ 0x4372DD23);
  *(v15 - 136) = &a12;
  *(v15 - 128) = v14 - v16 - 307;
  *(v15 - 124) = (((v13 << 6) & 0x7EBE78C0) + ((32 * v13) ^ 0xBF5F3C73) + 1336331214) ^ v16;
  v17 = (*(v12 + 8 * (v14 ^ 0xCFE)))(v15 - 136);
  return (*(v12 + 8 * ((29 * (*(a9 + 4) - 959689983 < ((v14 - 1629707962) & 0x61235DFBu) + 2147482423)) ^ v14)))(v17);
}

uint64_t sub_3168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *(v6 - 156);
  if (v7 == 1)
  {
    v11 = *(v6 - 188);
    v10 = *(v6 - 184);
    *(v6 - 196) = (8 * v10) ^ 0x39;
    *(v6 - 195) = (v10 >> (7 * (a6 ^ (a6 - 125)) + 98)) ^ 0x39;
    *(v6 - 194) = (v10 >> 13) ^ 0x39;
    *(v6 - 193) = (v10 >> 21) ^ 0x39;
    *(v6 - 192) = ((__PAIR64__(v11, v10) >> 29) - ((2 * (__PAIR64__(v11, v10) >> 29)) & 4) + 2) ^ 0x3B;
    *(v6 - 191) = (v11 >> 5) ^ 0x39;
    *(v6 - 190) = (v11 >> 13) ^ 0x39;
    v9 = (v11 >> 21) ^ 0x39;
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v9 = *(v6 - 188);
    v8 = *(v6 - 184);
    *(v6 - 196) = (v9 >> 21) - ((((a6 - 82) & 0xE3) - 49) & (2 * (v9 >> 21))) + 57;
    *(v6 - 195) = (v9 >> 13) - ((v9 >> 12) & 0x72) + 57;
    *(v6 - 194) = (v9 >> 5) - ((v9 >> 4) & 0x72) + 57;
    *(v6 - 193) = (__PAIR64__(v9, v8) >> 29) - ((2 * (__PAIR64__(v9, v8) >> 29)) & 0x72) + 57;
    *(v6 - 192) = (v8 >> 21) - ((v8 >> 20) & 0x72) + 57;
    *(v6 - 191) = (v8 >> 13) - ((v8 >> 12) & 0x72) + 57;
    *(v6 - 190) = (v8 >> 5) - ((v8 >> 4) & 0x72) + 57;
    LOBYTE(v9) = (8 * (v8 - ((2 * v8) & 0x1C)) + 112) ^ 0x49;
LABEL_5:
    *(v6 - 189) = v9;
  }

  return sub_45D98(a1, a2, a3, a4, 2626088396);
}

void sub_3304(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 ^ 0x21Fu));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 - 438));
  v11 = *(v10 - 4);
  v17[0] = -47 * *v11 - 70;
  v17[1] = -47 * v11[1] - 70;
  v17[2] = -47 * v11[2] - 70;
  v17[3] = -47 * v11[3] - 70;
  v17[4] = -47 * v11[4] - 70;
  v17[5] = -47 * v11[5] - 70;
  v17[6] = -47 * v11[6] - 70;
  v17[7] = -47 * v11[7] - 70;
  v17[8] = -47 * v11[8] - 70;
  v17[9] = -47 * v11[9] - 70;
  v17[10] = -47 * v11[10] - 70;
  v17[11] = -47 * v11[11] - 70;
  v17[12] = -47 * v11[12] - 70;
  v17[13] = -47 * v11[13] - 70;
  v17[14] = -47 * v11[14] - 70;
  v17[15] = -47 * v11[15] - 70;
  v17[16] = -47 * v11[16] - 70;
  v12 = *(v10 - 4);
  v17[17] = -47 * v12[17] - 70;
  v17[18] = -47 * v12[18] - 70;
  v17[19] = -47 * v12[19] - 70;
  v17[20] = -47 * v12[20] - 70;
  v17[21] = -47 * v12[21] - 70;
  v17[22] = -47 * v12[22] - 70;
  v17[23] = -47 * v12[23] - 70;
  v17[24] = -47 * v12[24] - 70;
  v17[25] = -47 * v12[25] - 70;
  v17[26] = -47 * v12[26] - 70;
  v17[27] = -47 * v12[27] - 70;
  v17[28] = -47 * v12[28] - 70;
  v17[29] = -47 * v12[29] - 70;
  v13 = (*(v4 + 8 * (a1 ^ 0xB5Au)))(v9, v17, v2);
  if (v13 == 1102)
  {
    v14 = *v8;
    v15 = **(v6 + 8 * (v5 - 495));
    v18[0] = *v15 + ((v5 - 126) ^ 0xC);
    v18[1] = v15[1] - 66;
    v18[2] = v15[2] - 66;
    v18[3] = v15[3] - 66;
    v18[4] = v15[4] - 66;
    v18[5] = v15[5] - 66;
    v18[6] = v15[6] - 66;
    v18[7] = v15[7] - 66;
    v18[8] = v15[8] - 66;
    v18[9] = v15[9] - 66;
    v18[10] = v15[10] - 66;
    v18[11] = v15[11] - 66;
    v18[12] = v15[12] - 66;
    v18[13] = v15[13] - 66;
    v18[14] = v15[14] - 66;
    v18[15] = v15[15] - 66;
    v18[16] = v15[16] - 66;
    v18[17] = v15[17] - 66;
    v18[18] = v15[18] - 66;
    v18[19] = v15[19] - 66;
    v16 = *(v4 + 8 * ((886 * ((*(v4 + 8 * (v5 + 1850)))(v14, v18, v2) == 0)) ^ (v5 + 898)));
    __asm { BRAA            X8, X17 }
  }

  if (v13)
  {
    *(v1 + 12) = 1640887140;
  }

  else
  {
    *(v7 + 356) |= (v5 + 898) ^ 0x5B8;
    *(v7 + 56) = 316771507;
    (*(v4 + 8 * (v5 ^ 0xBB8)))(*v2, v7 + 344, v7 + 348, v7 + 352, v3);
    sub_17068();
  }
}

uint64_t sub_3694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  *(v18 - 120) = &a12;
  *(v18 - 136) = &a14;
  *(v18 - 112) = v16 - ((((v18 - 136) | 0xA9A8C096) - ((v18 - 136) & 0xA9A8C096)) ^ 0x2A184A80) * v17 + 1776;
  v19 = (*(v15 + 8 * (v16 + 1964)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 128) > v14) * ((((v16 + 615) | 0x104) ^ 0xD07) + ((v16 + 1203861510) & 0xB83E87F0))) ^ v16)))(v19);
}

uint64_t sub_3748@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W8>)
{
  v5 = (v4 - 329186633) & 0x139EFAFF;
  if (a2 + 1187793666 >= 0)
  {
    a2 = (v5 ^ 0x72676B97) - a2;
  }

  return (*(v3 + 8 * ((1704 * (a2 - 959689983 >= 0)) ^ v5)))(a1, (a3 + 1));
}

uint64_t sub_3844@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + a1);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((106 * (((((4 * v2) ^ 0x1F4Cu) - 621) ^ 0x3D7) != ((((4 * v2) ^ 0x1F4Cu) - 1604) & v1))) ^ (4 * v2) ^ 0x1F4C)))();
}

uint64_t sub_3904(uint64_t a1, uint64_t a2)
{
  v7 = *(v5 + v3 - 15);
  *(v5 + v4 + 1136) = *(v5 + v3 - 31);
  *(v5 + v4 + 1152) = v7;
  return (*(v2 + 8 * ((((v5 & 0x1FFFFFE0) == 32) * (((v6 - 704) | 0x160) + 3470)) ^ (v6 + 1113))))(a1, a2, (v5 & 0x1FFFFFE0) - 32);
}

uint64_t sub_395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x440] = v62 + 2;
  v65 = STACK[0x414];
  STACK[0x228] = v61 - 112;
  switch(v65)
  {
    case -2113764002:
      return (*(v63 + 8 * ((228 * (v64 == a1 + HIDWORD(a35) - 779)) | a34)))(19);
    case 225309709:
      return (*(v63 + 8 * ((851 * (v64 == a1 + a32 - 1334)) ^ (a6 + 1010))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
    case -157870417:
      return (*(v63 + 8 * (((a6 + 986) * (v64 == a1)) ^ a34)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  LODWORD(a56) = STACK[0x348];
  return sub_2856C(a1, a2, a3, a4, a5, a6, a7, a8, STACK[0x330], a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_3A68@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 32);
  v6.i64[0] = 0x7272727272727272;
  v6.i64[1] = 0x7272727272727272;
  v7.i64[0] = 0x3939393939393939;
  v7.i64[1] = 0x3939393939393939;
  v8 = (a1 + v1 - 32);
  v9 = vaddq_s8(vsubq_s8(v5[1], vandq_s8(vaddq_s8(v5[1], v5[1]), v6)), v7);
  *v8 = vaddq_s8(vsubq_s8(*v5, vandq_s8(vaddq_s8(*v5, *v5), v6)), v7);
  v8[1] = v9;
  return (*(v4 + 8 * (((v2 - (v1 & 0xFFFFFFE0) == 164) | (4 * (v2 - (v1 & 0xFFFFFFE0) == 164))) ^ (v2 + 414))))();
}

uint64_t sub_3B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, char *a19, unsigned int a20)
{
  v22 = 843532609 * (&a15 ^ 0x10BC775E);
  a18 = (v21 + 1421511134) ^ v22;
  a19 = &a12;
  a15 = v22 - 1982663652;
  a20 = v22 - 1295632376;
  a16 = a11;
  v23 = (*(v20 + 8 * (v21 + 1003)))(&a15);
  return (*(v20 + 8 * ((174 * (a17 == ((((v21 - 734) | 0x42A) - 1640847976) ^ (v21 + 1996398972) & 0x1D3B))) ^ v21)))(v23);
}

uint64_t sub_3CC8()
{
  v8 = -v5;
  v10.val[0].i64[0] = (v3 + v8 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + v8 + 14) & 0xF;
  v10.val[1].i64[0] = (v3 + v8 + ((v4 + 58) ^ 0xFB)) & 0xF;
  v10.val[1].i64[1] = (v3 + v8 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + v8 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + v8 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + v8 + 9) & 0xF;
  v10.val[3].i64[1] = (v3 + v8) & 0xF ^ 8;
  *(v3 + v7 - 8 + v8) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v3 + v7 - 8 + v8), *(v2 + v10.val[0].i64[0] - 7)), veor_s8(*(v10.val[0].i64[0] + v0 - 4), *(v10.val[0].i64[0] + v1 - 2)))), 0x3939393939393939), vmul_s8(*&vqtbl4q_s8(v10, xmmword_A91E0), 0x6161616161616161)));
  return (*(v6 + 8 * ((49 * (8 - (v3 & 0x18) == v8)) ^ (v4 - 172))))(xmmword_A91E0);
}

uint64_t sub_3E74@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X7>, unsigned int a5@<W8>)
{
  v13 = (*(a4 + 4 * v8) ^ a5) + (v7 ^ HIDWORD(v11));
  v14 = v13 - ((2 * v13) & 0x3F3941260) - 0x5A8895C80635F6D0;
  *(a4 + 4 * a1) = v14 ^ v12;
  *(a4 + 4 * v8) = (v14 >> (((v10 - 88) & 0xFDu) + v10 + 90 + 26)) ^ a2;
  return (*(v9 + 8 * (v10 ^ ((v6 + 1 != v5) * a3))))();
}

void sub_3F18(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_C1600 + ((-35 * (dword_C8710 ^ 0xD2 ^ qword_C86F8)) ^ byte_A01E0[byte_9C950[(-35 * (dword_C8710 ^ 0xD2 ^ qword_C86F8))] ^ 0x31]) - 60);
  v4 = *(v3 - 4);
  v5 = *(&off_C1600 + ((-35 * (v4 ^ qword_C86F8 ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * (v4 ^ qword_C86F8 ^ 0xD2))] ^ 0xB3]) - 44);
  v6 = &v9[*(v5 - 4) - v4];
  *(v3 - 4) = 1865875933 * v6 + 0x1E71746347E125D2;
  *(v5 - 4) = 1865875933 * (v6 ^ 0x1E71746347E125D2);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1785193651 * (((v11 | 0x2E5F3C85) + (~v11 | 0xD1A0C37A)) ^ 0xADEFB692);
  v12 = v10;
  v13 = v6 ^ 0xCBCA0058;
  v14 = -934608903 - v6;
  LODWORD(v5) = 1865875933 * ((*(v5 - 4) + *(v3 - 4)) ^ 0x47E125D2);
  v7 = *(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8710) ^ 0xD2)) ^ byte_9C850[byte_A90E0[(-35 * ((qword_C86F8 - dword_C8710) ^ 0xD2))] ^ 0xCF]) + 89) - 8;
  (*&v7[8 * (byte_9C654[(byte_A8DE8[v5 - 8] ^ 0xF1) - 4] ^ v5) + 17664])(v11);
  if (*(a2 + 16) - 1409796850 + (v10[68] & 0x3Fu) >= 0xFFFFFFC0)
  {
    v8 = 754;
  }

  else
  {
    v8 = 755;
  }

  __asm { BRAA            X9, X17 }
}

uint64_t sub_4284@<X0>(int a1@<W8>)
{
  v10.val[1].i64[0] = (v4 + 13) & 0xF;
  v10.val[1].i64[1] = (v4 + 12) & 0xF;
  v10.val[2].i64[0] = (v4 + 11) & 0xF;
  v6 = *(v5 - 160);
  v10.val[2].i64[1] = (v4 + 10) & 0xF;
  v10.val[3].i64[0] = (v4 + 9) & 0xF;
  v10.val[3].i64[1] = v4 & 0xF ^ 8;
  v11.val[0].i64[0] = (v4 + 7) & 0xF;
  v11.val[0].i64[1] = (v4 + 6) & 0xF;
  v11.val[1].i64[0] = (v4 + 5) & 0xF;
  v11.val[1].i64[1] = (v4 + 4) & 0xF;
  v11.val[2].i64[0] = (v4 + 3) & 0xF;
  v11.val[2].i64[1] = (v4 + 2) & 0xF;
  v11.val[3].i64[0] = (v4 + 1) & 0xF;
  v11.val[3].i64[1] = v4 & 0xF;
  v7 = vqtbl4q_s8(v11, xmmword_A9260).u64[0];
  v8.i64[0] = 0x7373737373737373;
  v8.i64[1] = 0x7373737373737373;
  v10.val[0].i64[0] = (v4 - 1) & 0xF;
  v10.val[0].i64[1] = (v4 + 14) & 0xF;
  v11.val[3].i64[0] = vqtbl4q_s8(v10, xmmword_A9260).u64[0];
  v11.val[3].i64[1] = v7;
  v11.val[0] = vrev64q_s8(vmulq_s8(v11.val[3], v8));
  *(v4 + *(v5 - 120) - 16) = veorq_s8(veorq_s8(veorq_s8(*(v1 + v10.val[0].i64[0] - 15), *(v4 + *(v5 - 120) - 16)), veorq_s8(*(v2 + v10.val[0].i64[0] - 15), *(v10.val[0].i64[0] + v3 - 14))), vextq_s8(v11.val[0], v11.val[0], 8uLL));
  return (*(v6 + 8 * ((((v4 & 0x10) == 16) * ((((a1 - 645) | 7) ^ 0xB47) - 1244)) ^ ((a1 - 645) | 7))))();
}

uint64_t sub_49F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v38 = 143681137 * ((-685375974 - ((v37 - 144) | 0xD725FE1A) + ((v37 - 144) | 0x28DA01E5)) ^ 0x49E0B6AD);
  *(v37 - 136) = &a32;
  *(v37 - 144) = (v32 + 474) ^ v38;
  *(v37 - 128) = v38 ^ 0x6B91BD3A;
  (*(v33 + 8 * (v32 + 1230)))(v37 - 144);
  *(v37 - 144) = v32 - ((v37 + 567322875 - 2 * ((v37 - 144) & 0x21D0A98B)) ^ 0x316CDED5) * v34 - 389;
  *(v37 - 112) = v36;
  *(v37 - 104) = &a18;
  *(v37 - 128) = &a32;
  *(v37 - 120) = &a18;
  *(v37 - 136) = v35;
  (*(v33 + 8 * (v32 ^ 0xD10)))(v37 - 144);
  return sub_164CC();
}

uint64_t sub_4AE8@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, uint64_t a6, int a7, char *a8, int a9)
{
  v14 = ((&a5 + 935841458 - 2 * (&a5 & 0x37C7CEB2)) ^ 0xCC0479A9) * a1;
  a8 = &a3;
  a6 = v9;
  a7 = -1258285224 - v14;
  a9 = (v11 + 757771619) ^ v14;
  a5 = v12 - v14 + 347;
  v15 = (*(v10 + 8 * (v12 | 0x838)))(&a5);
  return (*(v10 + 8 * (((*(v9 + 24) == (((v12 - 191) | 0x18C) ^ (v13 + 973))) * (v12 + 727)) ^ v12)))(v15);
}

uint64_t sub_4BA4()
{
  v7 = v4 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 5) ^ 0x39;
  return (*(v5 + 8 * ((1464 * (v7 == 0)) ^ (v3 - 102))))();
}

uint64_t sub_4C4C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, _BYTE *a6@<X8>)
{
  v9 = ((a1 ^ 0x3EBDB27118639959) - (((a1 ^ 0x3EBDB27118639959) << (((v6 - 117) | 0x82u) + 95)) & 0x3916FB4BFFF71E8ALL) + 0x1C8B7DA5FFFB8F45) ^ a2;
  v10 = v9 ^ 0xDAA2BAEF20A03CA4;
  if (((a1 ^ 0x3EBDB27118639959) & 0x82EE1687ACCADB62) != 0)
  {
    v11 = a1 ^ 0x3EBDB27118639959;
  }

  else
  {
    v11 = v9 ^ 0xDAA2BAEF20A03CA4;
  }

  v12 = v11 & (a2 ^ 0x39D638B520A44C1ELL);
  v13 = a3 ^ (a5 | (v158 << 32));
  v14 = v7 ^ v13 ^ 0xDBD34F096E66DF16;
  v15 = v14 ^ 0x494296D18953CDC7;
  v16 = v12 ^ v14 ^ 0x494296D18953CDC7;
  v17 = ((a1 ^ 0x3EBDB27118639959) + 0x609B745D0F8700CELL - 2 * ((a1 ^ 0x3EBDB27118639959) & 0x609B745D0F8700EELL ^ a1 & 0x20)) ^ v8;
  v18 = v12 ^ v14 ^ 0x66680125BEDF7207;
  if (v17 == 0x68040451F630332FLL)
  {
    v18 = v14 ^ 0x1997FEDA41208DF8;
  }

  v19 = v16 + 2 * (v12 & v15) - 2 * ((v18 ^ 0x50D5680BC873403FLL) & v12);
  v20 = (v14 ^ 0xB6BD692E76AC3238) & (a2 ^ 0xD4BF8CE59CAB2957);
  v21 = v14 & 0x12964BAF43F09AB6;
  *(&v23 + 1) = v16;
  *&v23 = v19;
  v22 = v23 >> 1;
  v24 = v14 & 0x2EE2FF3DD854A924 ^ v15 & (v13 ^ 0x358E04C849C0F2C7) ^ 0xF013321005A52251 ^ v17;
  v25 = v21 ^ v13 ^ 0xDBD34F096E66DF16 ^ v20 ^ v24;
  *(&v23 + 1) = v25 ^ 0x11A368A1A8DA1EB6;
  *&v23 = v25;
  v26 = v23 >> 61;
  *(&v23 + 1) = v25 ^ 0x11A368A1A8DA1EB6;
  *&v23 = v25;
  v27 = v26 ^ v25 ^ 0x11A368A1A8DA1EB6 ^ (v23 >> 39);
  v28 = __ROR8__(__ROR8__(v27 ^ 0xF4A98A4FA66FE3CFLL ^ (v19 >> 6) ^ v22 ^ v19 ^ 0xB207F1AEA8DBF852 ^ ((v19 ^ 0xB207F1AEA8DBF852) << 58) ^ 0xF078EE88A006F8E8, 31) ^ 0x324373DF8C5E2884, 33);
  v29 = a2 ^ 0xF55A305C898CEED9 ^ ((v9 ^ 0x255D4510DF5FC35BLL) & (v17 ^ 0xEAE811738B7209C0) | v10 & 0x82EC15227D423AEFLL);
  v30 = (-v19 ^ (v29 - (v19 ^ v29)) ^ 0x4790494847ABCB91 ^ (v19 - ((2 * v19) & 0x8F2092908F579722) + 0x4790494847ABCB91)) + v29;
  v31 = v30 ^ __ROR8__(v30, 17) ^ (v30 << 54) ^ (v30 >> 10);
  v32 = v13 & 0x7338040CCDA9DA29 ^ v10 ^ (v17 ^ 0xE4C3FFA2C46616F9) & (v13 ^ 0xE493040A6E6BA41CLL) ^ 0x845EFA24402C94D1;
  *&v23 = __ROR8__(__ROR8__(v32, 48) ^ 0x8F29513BA05707FBLL, 16);
  v33 = v23 ^ 0x967F0F281E39DA8FLL ^ ((v23 ^ 0x967F0F281E39DA8FLL) << 23) ^ (((v23 >> 41) ^ (v23 >> 7) ^ 0xEC8C57CB1ECEF3AALL) & (((v23 ^ 0x967F0F281E39DA8FLL) << 57) ^ 0x19FFFFFFFFFFFFFFLL) | ((v23 ^ 0x967F0F281E39DA8FLL) << 57) & 0x1200000000000000);
  v34 = (v31 & 0xC81BB27B5A9AEE61 | (v33 ^ 0x9C40090CAAC17FBLL) & ~v31) ^ v28;
  v35 = v33 ^ 0x41355BCF4110919ELL;
  v36 = v31 ^ 0xE22809940CF6C277 ^ v33 ^ 0x41355BCF4110919ELL;
  v37 = v32 ^ v24;
  *(&v23 + 1) = v37 ^ 0x63C30712B1B41F43;
  *&v23 = v37;
  v38 = v37 ^ 0x63C30712B1B41F43 ^ __ROR8__(v37 ^ 0x63C30712B1B41F43, 28) ^ (v23 >> 19) ^ v35;
  *(&v23 + 1) = v36 & 0x9F5DA6598A732B92 ^ v31 ^ 0xE22809940CF6C277 ^ v34 ^ (v36 ^ 0x9D3D1F4F222F558CLL) & (v38 ^ 0xC45947E15CDE809FLL) ^ 0x8728CB69DA91AAF9;
  *&v23 = v36 & 0x9F5DA6598A732B92 ^ v31 ^ 0xE22809940CF6C277 ^ v34 ^ (v36 ^ 0x9D3D1F4F222F558CLL) & (v38 ^ 0xC45947E15CDE809FLL);
  v39 = v23 >> 17;
  *&v23 = __ROR8__(*(&v23 + 1), 10);
  v40 = ((v39 ^ v23 ^ 0xB146335AAB315FC3) - 2 * ((v39 ^ v23 ^ 0xB146335AAB315FC3) & 0xDDD9F4FBE0CA78ELL ^ (v39 ^ v23) & 4) + 0xDDD9F4FBE0CA78ALL) ^ *(&v23 + 1);
  v41 = v38 & 0x44035ADB80DF9AB6 ^ (v38 ^ 0xA4FB1E47295254F2) & (v27 ^ 0x164D893DD2DADD58) ^ 0x2494C0E5072E12CFLL ^ v36;
  v42 = (v41 & 0xF2F0F93CF1701AFDLL ^ 0xFAA6832F8D2D4968) & (v41 & 0xD0F06C30E8FE502 ^ 0xFFF2FD3DF5F15BFDLL) | v41 & 0x50904C00282A402;
  v43 = __ROR8__(v42 ^ 0x5BD3B9CEAA1897ALL, 7);
  *&v23 = __ROR8__(v42 ^ 0x5BD3B9CEAA1897ALL, 41);
  v44 = ((v43 ^ v23 ^ 0x9DD4B37612FAE164) - ((2 * (v43 ^ v23 ^ 0x9DD4B37612FAE164)) & 0x4EE578BE69583AB2) + 0x2772BC5F34AC1D59) ^ v42 ^ 0x5BD3B9CEAA1897ALL;
  v45 = v27 & 0xA85382AAD9727DD9 ^ v38 ^ 0x1B0E74CC38DF92FDLL ^ (v28 ^ 0x9707CEB134E88D8ALL) & (v27 ^ 0xADB12C19ADFAB811);
  *(&v23 + 1) = v45 ^ v27 ^ 0xF4A98A4FA66FE3CFLL;
  *&v23 = v45 ^ v27;
  v46 = (v31 ^ 0xA1E147DB50DBA38CLL) & (v28 ^ 0xC0ABB3E412650FACLL) ^ v28 & 0xA1E147DB50DBA38CLL ^ __ROR8__((v23 >> 54) ^ 0xDC155C41737DAC52, 10);
  LOBYTE(v21) = *(a4 + ((v46 >> 61) ^ 0x54));
  v48 = v42 ^ v45 ^ ((v42 ^ v45 ^ 0xCE1C3206ACBBC04ALL) >> 19) ^ ((v42 ^ v45 ^ 0xCE1C3206ACBBC04ALL) >> 28) ^ ((v42 ^ v45 ^ 0xF53B9DDDFF46D1E3) << 36) ^ ((v42 ^ v45 ^ 0xF53B9DDDFF46D1E3) << 45) ^ 0x73E6755EBB163966;
  v49 = (v21 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0xE) + 8) ^ 0xC4 ^ ((v21 ^ (57 - (v21 ^ 0xFA)) ^ 0x94 ^ ((v21 ^ 0x3C) - ((2 * (v21 ^ 0x3C) + 2) & 0x50) - 87)) + 1)) - 62;
  v50 = (v44 - ((2 * v44) & 0x5607F59E50126BF2) + 0x2B03FACF280935F9) ^ v48;
  v51 = v49 ^ (v46 >> 39) ^ v46 ^ 0x15FFA5899145BC04 ^ (8 * (v46 ^ 0x15FFA5899145BC04)) ^ ((v46 ^ 0x15FFA5899145BC04) << 25);
  v52 = v40 ^ 0x147D2CDEEA4;
  v53 = v40 ^ 0x147D2CDEEA4 ^ v44;
  v54 = (~(2 * v50) + v50) & (v51 ^ 0x318D14A524AE6E4BLL) ^ v53;
  v55 = ((v54 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v54 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v54 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v54 ^ 0x26974B18501E2B14) - (((v54 ^ 0x26974B18501E2B14) << 58) & (2 * (v54 ^ 0x26974B18501E2B14))));
  v56 = ((v40 ^ 0x147D2CDEEA4) - ((2 * (v40 ^ 0x147D2CDEEA4)) & 0x5607F59E50126BF2) + 0x2B03FACF280935F9) ^ v48;
  if (!v49)
  {
    v56 = v50;
  }

  v57 = v56 & ~v53;
  v58 = v34 ^ (v34 << 58);
  v59 = v58 ^ 0xB80A89FF1E5FDE08;
  v60 = (v34 >> 1) & 0x100000000000;
  if ((v60 & v58) != 0)
  {
    v61 = -v60;
  }

  else
  {
    v61 = (v34 >> 1) & 0x100000000000;
  }

  v62 = (v34 >> 1) & 0xFFFFEFFFFFFFFFFFLL ^ (v34 >> 6) ^ ((v34 << 63) | 0x7B3BCC913D0FD066) ^ (v61 + v59);
  v63 = v51 ^ v62;
  v64 = (v40 ^ 0xFFFFFEB82D32115BLL) & v44 ^ v51 ^ v62;
  v65 = v64 ^ 0x4D3B6EC6AF72E51;
  v66 = v40 ^ v57 ^ 0x7370AD2F82FD2592 ^ v64 ^ 0x4D3B6EC6AF72E51;
  v67 = __ROR8__(v66, 10);
  v68 = (v66 ^ v67 ^ (v66 >> 17)) + (v66 << 47) - 2 * ((v66 ^ v67 ^ (v66 >> 17)) & (v66 << 47));
  v69 = v64 ^ 0x7D865C0027BF965DLL;
  v70 = (v64 ^ 0x7D865C0027BF965DLL) & 0xF9BFE541A2368FBELL;
  v71 = (v64 ^ 0x7D865C0027BF965DLL) << 58;
  v72 = v51 & 0xE330CD9FBCBC283ELL ^ 0xC230C91A98100034 ^ (v51 ^ 0xCE72EB5ADB5191B4) & (v62 ^ 0xD66E6FD6F2E56824);
  v73 = (v50 ^ -v50 ^ (v72 - (v50 ^ v72))) + v72;
  v74 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v51 ^ (((v63 ^ 0xFB2C49139508D1AELL) & v52) - ((2 * ((v63 ^ 0xFB2C49139508D1AELL) & v52)) & 0x95F0FA8B02ABFD62) - 0x350782BA7EAA014FLL) ^ v73 ^ 0xC90D91D85BB84246, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v75 = v74 ^ 0x93DD7BE3C3310A2CLL ^ ((v74 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v74 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v74 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v74 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v76 = (((((2 * (0x34CDB152F4A04500 - v71)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v71) ^ 0xCB324EAD0B5FBB00)) ^ v71 ^ (v69 - ((v71 & 0xF800000000000000 ^ v70 | v69 & 0x6401ABE5DC97041) ^ v71 & 0x400000000000000))) + v69) ^ (v65 << 63) ^ __ROR8__((v69 >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v75, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v77 = v76 & 0xA8F512753D8F931ELL ^ (v69 >> 1) & 0x28F512753D8F931ELL | (v76 ^ (v69 >> 1)) & 0x570AED8AC2706CE1;
  v78 = v77 ^ v55 & ~v68;
  *(&v79 + 1) = v78;
  *&v79 = v78 ^ 0xD3DA1E3360BF843ALL;
  v80 = ((v79 >> 1) ^ v78 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v78 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v79 >> 1) ^ v78 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v78 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  v81 = v54 ^ 0x6E04C15915AB860ALL ^ v73 ^ __ROR8__(v54 ^ 0x6E04C15915AB860ALL ^ v73, 19) ^ ((v54 ^ 0x6E04C15915AB860ALL ^ v73) << 36) ^ ((v54 ^ 0x6E04C15915AB860ALL ^ v73) >> 28) ^ v55;
  v82 = ((v77 ^ v75) + (v77 | ~v75) + 1) ^ v81;
  v83 = v75 ^ v68 & ~v77 ^ 0x425764BB5877DA25 ^ v82;
  v84 = v83 ^ (v83 >> 61) ^ (v83 >> 39) ^ (8 * v83) ^ (v83 << 25);
  *(&v79 + 1) = v78;
  *&v79 = v78 ^ 0xD3DA1E3360BF843ALL;
  v85 = v68 ^ v55;
  v86 = v75 & ~v81 ^ v68 ^ v55;
  v87 = v86 ^ 0xFD;
  v88 = v86 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v86 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v86 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v86 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v89 = v86 ^ 0x97F6A7E5F6E8F58ALL ^ v82 ^ __ROR8__(v86 ^ 0x97F6A7E5F6E8F58ALL ^ v82, 19) ^ ((v86 ^ 0x97F6A7E5F6E8F58ALL ^ v82) << 36) ^ ((v86 ^ 0x97F6A7E5F6E8F58ALL ^ v82) >> 28);
  *&v79 = __ROR8__((v79 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v84 ^ v80, 3) ^ 0x55413C453664FDCDLL, 61);
  v90 = ((v89 | v88) ^ v88 & v89) & 0x2D23D578E308995FLL | (v89 ^ v88) & 0xD2DC2A871CF766A0;
  v91 = v81 & ~v85;
  v92 = (v79 ^ 0xAA09E229B327EE6ALL) & ~v84 ^ v90;
  v93 = v68 ^ 0x44C9D571A5C4A51CLL ^ v91 ^ v78 ^ ((v68 ^ 0x44C9D571A5C4A51CLL ^ v91 ^ v78) >> 10) ^ ((v68 ^ 0x44C9D571A5C4A51CLL ^ v91 ^ v78) << 47) ^ ((v68 ^ 0x44C9D571A5C4A51CLL ^ v91 ^ v78) << 54) ^ ((v68 ^ 0x44C9D571A5C4A51CLL ^ v91 ^ v78) >> 17);
  v94 = ((v92 ^ v84) + ((v79 ^ 0x55F61DD64CD81195) & v93) - 2 * ((v92 ^ v84) & (v79 ^ 0x55F61DD64CD81195) & v93)) ^ 0x6005BE354A5BB0B2;
  v95 = v94 >> (v31 & 0x3D) >> (v31 & 0x3D ^ 0x3D);
  v96 = (8 * v94) ^ (v94 >> 39) ^ ((v94 ^ (v94 << 25)) & 0xF21553F3FD140018 ^ v95 & 0x18 | (v94 ^ (v94 << 25)) & 0xDEAAC0C02EBFFE7 ^ v95 & 0xE7);
  v97 = v84 & ~v90 ^ v93 ^ v88;
  v98 = v97 ^ 0x2DB5B6AF87F64351 ^ ((v97 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v97 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v97 ^ 0x2DB5B6AF87F64351) >> 41) | ((v97 ^ 0x2DB5B6AF87F64351) << 57));
  v99 = v97 ^ 0x93C23431B76D41FLL ^ v92;
  v100 = (v99 ^ (v99 >> 28)) + (v99 >> 19) - 2 * ((v99 ^ (v99 >> 28)) & (v99 >> 19));
  v101 = v99 << 36;
  v102 = v100 ^ (v99 << 45);
  v103 = v90 & ~(v93 ^ v88);
  v104 = v102 ^ (v99 << 36);
  v105 = v79 ^ 0xAA09E229B327EE6ALL ^ v88 & ~v93;
  v106 = v104 ^ v98;
  v107 = v93 ^ 0xF374A001D380BDC2 ^ v103 ^ v105 ^ ((v93 ^ 0xF374A001D380BDC2 ^ v103 ^ v105) >> 10) ^ ((v93 ^ 0xF374A001D380BDC2 ^ v103 ^ v105) << 47) ^ ((v93 ^ 0xF374A001D380BDC2 ^ v103 ^ v105) << 54) ^ ((v93 ^ 0xF374A001D380BDC2 ^ v103 ^ v105) >> 17);
  v108 = v107 ^ v98;
  v109 = v96 & ~(v104 ^ v98) ^ v107 ^ v98;
  v110 = v105 ^ 0x6DC4FB0BD4FFFF44;
  *(&v79 + 1) = v105;
  *&v79 = v105 ^ 0x6DC4FB0BD4FFFF44;
  v111 = (v79 >> 1) ^ v105 ^ 0x6DC4FB0BD4FFFF44 ^ ((v105 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v96;
  v112 = v110 >> 6;
  v113 = v101 == v102;
  v114 = v111 + v112;
  if (!v113)
  {
    v112 = ~(v112 ^ v111);
  }

  v115 = v114 - 2 * (v112 & v111);
  v116 = v115 ^ (((~v107 | 0xFFFFFFFFEFFFFFFFLL) - (v107 & 0x4000000000)) ^ v107 & 0xFFFFFFBFEFFFFFFFLL) & v108;
  v113 = v108 == -1;
  v117 = __ROR8__(((v106 << (v100 & 0x2B) << (v100 & 0x2B ^ 0x2B)) + (v106 >> 21)) ^ __ROR8__(v115 & ~v96, 21) ^ 0x6D12C2B6EED373A6, 43);
  v118 = v107 & ~v115 ^ v96 ^ v117;
  v119 = v109 ^ 0x5035F38BF1002A3ALL ^ v117;
  v120 = v119 ^ (v119 >> 19);
  v121 = v120 & 0xD99EEE0927173347 ^ (v119 << 45) & 0xD99EE00000000000 | v120 & 0x266111F6D8E8CCB8 ^ (v119 << 45) & 0x2661000000000000;
  v122 = (v119 << 45) ^ (0xFFFFE00000000000 * v119) ^ (v121 + v120 - 2 * v121);
  v123 = v119 << 36;
  v124 = v122 + v120;
  v125 = (v119 << 36) & 0x78E1346000000000;
  v126 = v124 ^ (v119 >> 28);
  v127 = (v126 & 0x78E134634F73AA70 ^ v125 | v126 & 0x871ECB9CB08C558FLL ^ v123 & 0x871ECB9000000000) + 0x609B745D0F8700CELL - ((2 * (v126 & 0x78E134634F73AA70 ^ v125 | v126 & 0x871ECB9CB08C558FLL ^ v123 & 0x871ECB9000000000)) & 0xC136E8BA1F0E019CLL);
  a6[65] = ((v126 & 0x70 ^ v125 | v126 & 0x8F) - 50 - ((2 * (v126 & 0x70 ^ v125 | v126 & 0x8F)) & 0x9C)) ^ 0xCE;
  v128 = 69 * ((v127 ^ 0x609B745D0F8700CELL) >> (v126 & 8) >> (v126 & 8 ^ 8));
  v129 = v118 ^ 0xE013161F571CC4C5 ^ ((v118 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v118 ^ 0xE013161F571CC4C5));
  v130 = v129 ^ (((v118 ^ 0xE013161F571CC4C5) >> 61) | (v118 << 25));
  v131 = *(v155 + (v128 ^ 0x3DLL)) - 18;
  v132 = (((v131 ^ 0x57) + v131 - 2 * (v131 ^ 0x57)) ^ 0xFE) + v131;
  a6[54] = ((v129 ^ (((v118 ^ 0xE013161F571CC4C5) >> 61) | (v118 << 25))) >> 24) ^ 0x8A;
  a6[28] = BYTE2(v127) ^ 0x87;
  a6[41] = (v132 >> 2) | (v132 << 6);
  v133 = (v127 ^ 0x609B745D0F8700CELL) >> (v87 & 0x20) >> (v87 & 0x20 ^ 0x20u);
  a6[35] = BYTE1(v129);
  v134 = BYTE6(v127) ^ 0x9B;
  a6[21] = BYTE2(v129);
  v135 = v104 ^ v107;
  if (v113)
  {
    v136 = 0;
  }

  else
  {
    v136 = v135;
  }

  a6[58] = v133;
  a6[17] = BYTE4(v130) ^ 0x89;
  a6[5] = BYTE3(v127) ^ 0xF;
  a6[47] = BYTE5(v127) ^ 0x74;
  v137 = v116 - ((2 * v116) & 0x5A47EBDAAC1EB792);
  a6[14] = HIBYTE(v127) ^ 0x60;
  v138 = v137 + 0x2D23F5ED560F5BC9;
  a6[48] = v134;
  a6[16] = (v130 ^ 0x3EAE39898A000000) >> (v118 & 0x28) >> (v118 & 0x28 ^ 0x28);
  v139 = v137 - 0x5BDA183C59819C5ELL;
  v140 = 0x88FE0E29AF90F827;
  if (v138 < 0x88FE0E29AF90F827)
  {
    v139 = v138;
    v140 = 0;
  }

  if (v139)
  {
    v141 = v138;
  }

  else
  {
    v141 = v140;
  }

  *(&v142 + 1) = v141;
  *&v142 = v138;
  v143 = (v142 >> 1) ^ v138;
  a6[6] = v130;
  v144 = *(a4 + (BYTE6(v130) ^ 0xF9));
  v145 = v143 ^ (v141 << 58) ^ (v141 >> 6);
  a6[10] = BYTE1(v145);
  v146 = v107 ^ v136 & v106 ^ 0x29E1AB0124FF49E7 ^ v116;
  *&v142 = __ROR8__(v146, 10);
  v147 = (v146 ^ v142 ^ (v146 << 47)) + (v146 >> 17) - 2 * ((v146 ^ v142 ^ (v146 << 47)) & (v146 >> 17));
  a6[18] = BYTE4(v145);
  a6[25] = BYTE2(v145);
  a6[42] = HIBYTE(v130) ^ 0x3E;
  a6[12] = BYTE5(v145);
  a6[23] = BYTE6(v145);
  a6[44] = v145;
  a6[24] = BYTE3(v145);
  a6[30] = (v144 ^ 0xFA) - 119;
  a6[62] = HIBYTE(v145);
  a6[19] = (v146 ^ v142) + (v146 >> 17) - 2 * ((v146 ^ v142) & (v146 >> 17));
  v148 = *(v157 + ((((v146 ^ v142) + (v146 >> 17) - 2 * ((v146 ^ v142) & (v146 >> 17))) >> 8) ^ 0x27) + 279);
  a6[8] = ((v146 ^ v142) + (v146 >> 17) - 2 * ((v146 ^ v142) & (v146 >> 17))) >> 24;
  a6[33] = ((v146 ^ v142) + (v146 >> 17) - 2 * ((v146 ^ v142) & (v146 >> 17))) >> 16;
  a6[4] = (v148 ^ BYTE1(v147) ^ 0x2D ^ ((BYTE1(v147) ^ 0x2D) + 72) ^ 0x41) + 15;
  v149 = v109 ^ 0x4734313A1F2B2857;
  v150 = v109 ^ __ROR8__(v109 ^ 0x4734313A1F2B2857, 41) ^ ((v109 ^ 0x4734313A1F2B2857) >> 7);
  v151 = *(v156 + (((v147 >> 28) & 0xF0 | (v147 >> 36) & 0xF) ^ 0x5C));
  a6[46] = HIBYTE(v147);
  a6[43] = BYTE6(v147);
  a6[38] = BYTE5(v147);
  a6[31] = ((v151 >> 5) | (8 * v151)) ^ 0xC1;
  result = 58;
  LOBYTE(v147) = *(a4 + ((((((4 * v150) | (v150 >> 6)) ^ 0xA) >> 2) | ((((4 * v150) | (v150 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a6[55] = BYTE4(v150) ^ 0x3A;
  a6[34] = BYTE3(v150) ^ 0x1F;
  a6[32] = BYTE1(v150) ^ 0x28;
  a6[15] = (v147 ^ 0xFA) - 119;
  v153 = v150 ^ (v149 << 57);
  a6[7] = (v153 ^ 0x4734313A1F2B2857) >> (v36 & 0x10) >> (v36 & 0x10 ^ 0x10);
  a6[61] = BYTE5(v150) ^ 0x31;
  a6[56] = (*(a4 + (BYTE6(v150) ^ 0x63)) ^ 0xFA) - 119;
  a6[51] = HIBYTE(v153) ^ 0x47;
  *v154 = v158 + 1;
  return result;
}

uint64_t sub_612C(uint64_t a1)
{
  v6 = *(v5 - 228 + v1 + 72);
  v7 = ((2 * v1) & 0x7A9FCDF8) + (v1 ^ 0xBD4FE6FF) + v2;
  *(a1 + v7) = v6 ^ 0x73;
  *(a1 + v7 + 1) = ((v3 + 6) & 0xB7 ^ BYTE1(v6) ^ 0x5F) - ((2 * ((v3 + 6) & 0xB7 ^ BYTE1(v6) ^ 0x5F)) & 0x72) + 57;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0xF3) - ((2 * (BYTE2(v6) ^ 0xF3)) & 0x72) + 57;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 3) - 2 * ((HIBYTE(v6) ^ 3) & 0x3D ^ HIBYTE(v6) & 4) + 57;
  return (*(v4 + 8 * ((v1 + 4 >= *(v5 - 136)) ^ v3)))();
}

uint64_t sub_62A8(uint64_t a1)
{
  v1 = *(a1 + 8) - 896639297 * (((a1 ^ 0x980042B1 | 0x507A8C23) - ((a1 ^ 0x980042B1) & 0x507A8C23)) ^ 0xDCD158EA);
  v2 = *(a1 + 16);
  v4 = *a1;
  v6 = v2;
  v5 = (143681137 * (((&v4 | 0x333C1869) - &v4 + (&v4 & 0xCCC3E790)) ^ 0x5206AF21)) ^ (v1 + 1197044663);
  return (*(*(&off_C1600 + (v1 ^ 0xB8A6959D)) + v1 + 1197044858))(&v4);
}

uint64_t sub_6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v19 = v15 + 1678313547 > a15;
  if (a15 < 0x6409080B != (v15 + 1678313547) < 0x6409080B)
  {
    v19 = (v15 + 1678313547) < 0x6409080B;
  }

  return (*(v16 + 8 * ((!v19 * (a14 - 948)) ^ (v18 + a5 + 1529))))(v17 - 220);
}

uint64_t sub_67BC()
{
  v0 = *(&off_C1600 + ((-35 * (dword_C8928 ^ 0xD2 ^ qword_C86F8)) ^ byte_9C650[byte_A8DE0[(-35 * (dword_C8928 ^ 0xD2 ^ qword_C86F8))] ^ 0xB3]) - 98);
  v1 = *(v0 - 4);
  v2 = *(&off_C1600 + (byte_A01E0[byte_9C95C[(-35 * ((qword_C86F8 + v1) ^ 0xD2)) - 12] ^ 0x31] ^ (-35 * ((qword_C86F8 + v1) ^ 0xD2))) - 70);
  v3 = v1 ^ &v7 ^ *(v2 - 4);
  *(v0 - 4) = (1865875933 * v3) ^ 0x1E71746347E125D2;
  *(v2 - 4) = 1865875933 * (v3 ^ 0x1E71746347E125D2);
  v9 = 210068311 * (((&v8 ^ 0x87E543B3) & 0x1692BE1F | ~(&v8 ^ 0x87E543B3 | 0x1692BE1F)) ^ 0xFC5E3DF7) + 567;
  v8 = *(&off_C1600 + (byte_9C650[byte_A8DE0[(-35 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xD2))] ^ 0xF1] ^ (-35 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xD2))) - 172);
  LOBYTE(v3) = -35 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xD2);
  v4 = *(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8928) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 - dword_C8928) ^ 0xD2))] ^ 0x1C]) + 102) - 8;
  (*&v4[8 * (byte_A02EC[(byte_9CA58[v3 - 8] ^ 0x4D) - 12] ^ v3) + 17152])(&v8);
  v5 = -35 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xD2);
  v8 = *(&off_C1600 + (byte_A8FEC[(byte_A4984[v5 - 4] ^ 0x1C) - 12] ^ v5) + 15) - 4;
  v9 = 210068311 * ((2 * (&v8 & 0x7E2CF3C0) - &v8 - 2116875207) ^ 0x1305339D) + 567;
  (*&v4[8 * ((-35 * (*(v0 - 4) ^ 0xD2 ^ *(v2 - 4))) ^ byte_9C650[byte_A8DE0[(-35 * (*(v0 - 4) ^ 0xD2 ^ *(v2 - 4)))] ^ 0x16]) + 18344])(&v8);
  LOBYTE(v8) = 61 - 21 * ((((2 * &v8) | 0xAC) - &v8 + 42) ^ 0x3A);
  HIDWORD(v8) = 1388665877 * ((((2 * &v8) | 0xD01CDBAC) - &v8 - 1745776086) ^ 0xE5A30F3A) + 2187;
  return (*&v4[8 * ((-35 * (*(v0 - 4) ^ 0xD2 ^ *(v2 - 4))) ^ byte_9C650[byte_A8DE0[(-35 * (*(v0 - 4) ^ 0xD2 ^ *(v2 - 4)))] ^ 0xB3]) + 17656])(&v8);
}

uint64_t sub_6B84(uint64_t result)
{
  **result = 0;
  *(result + 12) = 1821767238;
  return result;
}

uint64_t sub_6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, int a20)
{
  v22 = a20 + 1723129074 > a17;
  if (a17 < 0x66B4DCB2 != (a20 + 1723129074) < 0x66B4DCB2)
  {
    v22 = (a20 + 1723129074) < 0x66B4DCB2;
  }

  return (*(v20 + 8 * (((((a15 - 30) ^ v22) & 1) * a13) ^ (v21 + 1599))))(a1, 114);
}

uint64_t sub_6D14@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>, int32x4_t a12@<Q7>)
{
  v15 = v13 + 4 * a6;
  a8.i64[0] = *(v15 + 4);
  a8.i32[2] = *(v15 + 12);
  v16 = vextq_s8(a7, a8, 0xCuLL);
  v17 = a8;
  v17.i32[3] = *(v13 + 4 * (a6 + 4));
  v18 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v17, a10), vandq_s8(v16, a9)), 1uLL), *(v15 + 1588));
  v16.i32[0] = *(v14 + 4 * (*(v15 + 4) & 1));
  v16.i32[1] = *(v14 + 4 * (*(v15 + 8) & 1));
  v16.i32[2] = *(v14 + 4 * (*(v15 + 12) & ((v12 ^ (a3 - 2)) * a4 - 725)));
  v16.i32[3] = *(v14 + 4 * (v17.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), a11)), a12), v16);
  return (*(a1 + 8 * (((a6 == 220) * a5) ^ (a2 + v12 + 495))))();
}

uint64_t sub_6DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  *(a28 + 360) = v63;
  v69 = (*(v66 + 8 * (v62 ^ 0x8E5)))(a1, 2, &STACK[0x494], v65, (v67 + a5), a6, &STACK[0x290], &STACK[0x358]);
  LODWORD(STACK[0x3C4]) = v69;
  if (v69 == 268435459)
  {
    LODWORD(STACK[0x3A0]) = 1640887140;
    return (*(v66 + 8 * (((((a62 + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (a62 + 5))))(v69, STACK[0x290], v70, 1640887173);
  }

  else if (v69)
  {
    v75 = 1564307779 * ((v68 - 192) ^ 0x970DCC13);
    *(v68 - 192) = a62 - v75 + 284;
    *(v68 - 188) = (v69 + v64 - ((2 * v69) & 0x3C6550B8)) ^ v75;
    *(v68 - 184) = &STACK[0x3A0];
    v76 = (*(v66 + 8 * (a62 + 2070)))(v68 - 192);
    return (*(v66 + 8 * (((((a62 + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (a62 + 5))))(v76);
  }

  else
  {
    v71 = STACK[0x308];
    v72 = STACK[0x280];
    v73 = STACK[0x228];
    LODWORD(STACK[0x2F0]) = 399605357;
    STACK[0x448] = STACK[0x290];
    LODWORD(STACK[0x3C8]) = (LODWORD(STACK[0x358]) ^ 0xBCCB9FDB) + 1539140542 + ((2 * LODWORD(STACK[0x358])) & 0x79973FB6);
    STACK[0x458] = v71;
    STACK[0x2A8] = v72;
    v74 = &STACK[0x540] + v73;
    STACK[0x470] = &STACK[0x540] + v73;
    STACK[0x428] = &STACK[0x540] + v73 + 128;
    *v74 = 0x6370646600;
    v74[8] = 1;
    STACK[0x228] = v73 + 1776;
    return (*(v66 + 8 * (((((39 * (a62 ^ 0x16E)) ^ 0x646) == 32) * ((39 * (a62 ^ 0x16E) + 170761473) & 0xF5D25DDC ^ 0xEB)) ^ (39 * (a62 ^ 0x16E)))))(~((&STACK[0x540] + v73 + 1712) << (39 * (a62 ^ 0x6Eu) - 98)) & 0x10, 1499, 170761473, 1640887173, 3883332711);
  }
}

uint64_t sub_7204()
{
  v6 = (((v0 | 0x85FA415E) - v0 + (v0 & 0x7A05BEA0)) ^ 0x12F78D4D) * v3;
  *(v5 - 192) = 0;
  *(v5 - 184) = v6 ^ 0x1DFF02A2;
  *(v5 - 160) = v2 - v6 + 1598;
  *(v5 - 176) = &STACK[0x3F8];
  *(v5 - 168) = &STACK[0x2B8];
  v7 = (*(v4 + 8 * (v2 + 2107)))(v5 - 192);
  return (*(v4 + 8 * (((*(v5 - 180) == (v2 ^ 0x119 ^ (v1 - 5))) * ((v2 - 274) | 0xB)) ^ v2)))(v7);
}

uint64_t sub_75B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v41 = (*(v39 + 8 * (v38 + 2019)))(v40);
  STACK[0x228] = a38 - 1712;
  LODWORD(STACK[0x3A0]) = 1640887176;
  return (*(v39 + 8 * (((((v38 + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (v38 + 5))))(v41);
}

uint64_t sub_7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39, uint64_t a40)
{
  v44 = (*(v40 + 8 * (v41 + 822)))(a39 + 4, 0);
  v45 = a39[4] + 1278168115 - (((v41 ^ 0x61C8ADF1) + 915795140) & (2 * a39[4]));
  a39[1] = a39[6] + 1278168115 - ((2 * a39[6]) & 0x985E9866);
  a39[2] = v45;
  v46 = (*(a40 + 8 * (v41 ^ 0xF16)))(v44);
  a39[3] = v46 + 1278168115 - ((2 * v46) & 0x985E9866);
  v47 = (*(a40 + 8 * (v41 + 754)))();
  *a39 = v47 + 1278168115 - ((2 * v47) & 0x985E9866);
  v51 = (v43 - 152) | 0xFD75DF0D52C7C81;
  v42[1] = (*a39 ^ 0x4C2F4C33) + ((1664525 * (*v42 ^ (*v42 >> 30))) ^ v42[1]);
  v48 = 1504884919 * ((0xF028A20F2AD3837ELL - ((v43 - 152) | 0xF028A20F2AD3837ELL) + v51) ^ 0x2387074A2EEFCB9ALL);
  STACK[0x5A8] = v48 ^ 2;
  STACK[0x5B8] = v48 ^ 0x26F;
  *(v43 - 116) = v48 + (v41 ^ 0x61C8ADF1) - 795603433 + 25;
  *(v43 - 128) = ((v41 ^ 0x61C8ADF1) - 795603433) ^ v48;
  *(v43 - 124) = -1504884919 * ((718504830 - ((v43 - 152) | 0x2AD3837E) + v51) ^ 0x2EEFCB9A);
  *(v43 - 144) = (((v41 ^ 0x61C8ADF1) - 795603433) ^ 0x57) - v48;
  *(v43 - 140) = ((v41 ^ 0x61C8ADF1) + 59381493) ^ v48;
  v49 = (*(a40 + 8 * (v41 ^ 0xF40)))(v43 - 152);
  return (*(a40 + 8 * *(v43 - 120)))(v49);
}

uint64_t sub_79B8@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v5 = v2 + 976760825;
  v6 = v5 < 248 * (v4 ^ 0x12Au) + 2087020040;
  v7 = v3 + 2087022024 < v5;
  if (v3 > 0x839A9237 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2 + 1;
  }

  *(result + 12) = v8;
  return result;
}

uint64_t sub_7CE4@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (*(v3 + 8 * (v4 ^ 0x94B)))(**(v2 + 8 * (v4 ^ 0x177)), va, ((((a1 - 1053584767) & 0xFFFFF000 ^ 0x50D61560) + 243046064) ^ (((a1 - 1053584767) & 0xFFFFF000 ^ 0x81BB15BA) - 552495498) ^ (v4 - 1882750666 + (((v4 ^ 0x530) - 781386742) ^ (a1 - 1053584767) & 0xFFFFF000))) - 1588233168, 1) == 0;
  return (*(v3 + 8 * (v5 | (2 * v5) | v4)))();
}

uint64_t sub_876C(double a1)
{
  *(v3 - 1) = a1;
  *v3 = a1;
  return (*(v4 + 8 * ((511 * (v2 == 0)) ^ v1)))();
}

uint64_t sub_8798@<X0>(int a1@<W8>)
{
  v5 = 1785193651 * ((1658864614 - ((v4 - 128) | 0x62E043E6) + ((v4 - 128) | 0x9D1FBC19)) ^ 0x1EAF360F);
  *(v4 - 120) = v4 - 228;
  *(v4 - 112) = (v2 - 875954261) ^ v5;
  *(v4 - 108) = a1 - v5 - 2 * a1 - 934608901;
  v6 = (*(v1 + 8 * (v2 ^ 0x9CA)))(v4 - 128);
  return (*(v1 + 8 * ((1358 * (((v2 - 311544622) & 0x1291CBBD) + *v3 + (*(v4 - 160) & 0x3Fu) - 1409797167 < ((v2 + 219911376) & 0xF2E46ED7) - 1173)) ^ v2)))(v6);
}

uint64_t sub_8964(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_897C()
{
  STACK[0x2C0] = 0;
  v3 = 1564307779 * ((2 * ((v2 - 192) & 0x6CF18EB0) - (v2 - 192) - 1827770039) ^ 0x403BD5A);
  *(v2 - 184) = v3 ^ 0x1DFF02A7;
  *(v2 - 160) = (v1 ^ 0x328) - v3 + 1147;
  *(v2 - 192) = 0;
  *(v2 - 176) = &STACK[0x2C0];
  *(v2 - 168) = &STACK[0x43C];
  v4 = (*(v0 + 8 * (v1 ^ 0x8B0)))(v2 - 192);
  return (*(v0 + 8 * (((((v1 ^ 0xB9 ^ (*(v2 - 180) == -1640847268)) & 1) == 0) * (((v1 ^ 0x328) + 420) ^ 0x44F)) ^ v1 ^ 0x328)))(v4);
}

uint64_t sub_8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11, uint64_t a12, uint64_t a13, unsigned int a14, int *a15, unsigned int a16, _DWORD *a17)
{
  a15 = &a10;
  a17 = a11;
  a16 = (143681137 * (((&a14 | 0xCFA5519) + (~&a14 | 0xF305AAE6)) ^ 0x6DC0E250)) ^ 0x72A;
  (*(v17 + 19440))(&a14);
  a14 = ((2 * (&a14 & 0x5585D770) - &a14 - 1434834804) ^ 0x80B102F6) * v18 + 1632;
  a15 = a11;
  v20 = (*(v17 + 18944))(&a14);
  return (*(v17 + 8 * (((a11 != 0) * (((v19 - 622070606) & 0x9A6F8FF7) + ((v19 + 402751656) | 0x826A0402) - 886512222)) ^ v19)))(v20);
}

uint64_t sub_8C40(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26, uint64_t a27)
{
  v28.n128_u64[0] = 0x7272727272727272;
  v28.n128_u64[1] = 0x7272727272727272;
  v29.n128_u64[0] = 0x3939393939393939;
  v29.n128_u64[1] = 0x3939393939393939;
  return (*(v27 + 8 * ((298 * (a17 < a16)) ^ a19)))(561817968, a20, a25, a22, a8, a27, a26, 3733149332, a1, a2, a3, v28, v29);
}

uint64_t sub_8CA0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v23 = a1 ^ 0x1A6;
  *a9 = a20 + 1;
  v24 = *a11;
  v25 = 1504884919 * ((((v22 - 152) | 0x892172D4BC143E5BLL) - ((v22 - 152) & 0x892172D4BC143E5BLL)) ^ 0xA571286E47D78940);
  *(v22 - 152) = v23 + 1787631261 + v25;
  *(v22 - 148) = (v23 + 1787631261) & 0x7EDD1DA2 ^ v25;
  *(v21 + 16) = v24 - v25;
  *(v21 + 24) = v25 + 5119;
  *(v22 - 116) = 1 - v25;
  *(v22 - 124) = v25 + 55969080 + v23;
  *(v22 - 120) = v25 ^ 0xD4 ^ (v23 + 1787631261);
  v26 = (*(v20 + 8 * (v23 + 1534)))(v22 - 152);
  return (*(v20 + 8 * *(v22 - 128)))(v26);
}

uint64_t sub_8D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFF66 ^ v3 ^ 0x127u) + a2;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((102 * ((a2 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_8F80()
{
  v4 = v0 + 212294620;
  v5 = (v4 < 0x1C7F25B0) ^ ((v2 - 1295202886) < 0x1C7F25B0);
  v6 = v2 - 1295202886 > v4;
  if (v5)
  {
    v6 = (v2 - 1295202886) < 0x1C7F25B0;
  }

  return (*(v1 + 8 * ((4 * !v6) | (32 * !v6) | v3)))();
}

uint64_t sub_8FE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X4>, int a5@<W5>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>, int32x4_t a12@<Q7>)
{
  v16 = v12 + 4;
  v17 = v13 + 16;
  a8.i64[0] = *(v17 + 4);
  a8.i32[2] = *(v17 + 12);
  v18 = vextq_s8(a7, a8, 0xCuLL);
  v19 = a8;
  v19.i32[3] = *(v14 + 4 * (v16 + ((a6 - a3 + 1628) ^ a4)));
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v19, a10), vandq_s8(v18, a9)), 1uLL), *(v17 - 908));
  v18.i32[0] = *(v15 + 4 * (*(v17 + 4) & 1));
  v18.i32[1] = *(v15 + 4 * (*(v17 + 8) & 1));
  v18.i32[2] = *(v15 + 4 * (*(v17 + 12) & 1));
  v18.i32[3] = *(v15 + 4 * (v19.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a11)), a12), v18);
  return (*(a1 + 8 * (((v16 != 392) * a5) ^ (a2 + a6 + 1222))))();
}

uint64_t sub_9150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24)
{
  v30 = 1388665877 * ((((2 * &a19) | 0x674F1C7E) - &a19 - 866618943) ^ 0xBE0AECD3);
  a23 = v30 + 1757;
  a21 = a15;
  a19 = v30 ^ (v27 - ((2 * v27) & 0x17822594) - 1950281014);
  (*(v29 + 19064))(&a19);
  v31 = 1388665877 * (((&a19 | 0x55AB6FEE) - &a19 + (&a19 & 0xAA549010)) ^ 0xD8060D02);
  a24 = v25;
  a21 = a15;
  a19 = ((2 * v26) & 0x5DBEBF3A) - v31 + (v26 ^ 0x2EDF5F9D) - 717755912;
  a20 = 196 - v31;
  v32 = (*(v29 + 18776))(&a19);
  return (*(v29 + 8 * ((1658 * (a22 == v24)) ^ v28)))(v32);
}

void sub_9284(uint64_t a1)
{
  v1 = 843532609 * ((-2 - ((a1 | 0x4CEB8CB9) + (~a1 | 0xB3147346))) ^ 0xA3A80418);
  v2 = *(a1 + 20) - v1;
  v3 = *(a1 + 8);
  v4 = (((*(a1 + 16) ^ v1 ^ 0x25E41B4D) - 635706189) ^ ((*(a1 + 16) ^ v1 ^ 0xA1ECE477) + 1578310537) ^ ((*(a1 + 16) ^ v1 ^ 0x8D4E880F) + 1924233201)) + 2027806658;
  v5 = 1628625863 * (*(a1 + 56) - v1) - 880953081;
  v6 = 896639297 * (&v10 ^ 0x14AB9678);
  v15 = &v8;
  v10 = &v9;
  v12 = v3;
  v16 = v5 ^ v6;
  v13 = v2 - v6 + 689;
  v14 = v4 ^ v6;
  v7 = *(&off_C1600 + (v2 ^ 0x48D)) - 8;
  (*&v7[8 * (v2 ^ 0xD7F)])(&v10);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_95CC(int a1)
{
  v4 = (v2 + 14 * (a1 ^ 0xBF) + 3) & 0xF;
  v6 = (v1 - 1) > 0xF || v4 < ((v1 - 1) & 0xFu);
  return (*(v3 + 8 * ((v6 | (2 * v6)) ^ a1)))();
}

uint64_t sub_9614@<X0>(uint64_t a1@<X3>, unsigned __int8 *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = a2;
  v47 = (4 * v44) ^ 0x1AA8;
  v48 = *(a1 + 8 * (v44 ^ 0x6C7)) - 12;
  v49 = *(v48 + (a2[5] ^ 0x56));
  v50 = *(a1 + 8 * (v44 - 1526)) - 12;
  v51 = *(v50 + (a2[15] ^ 0x74));
  v52 = *(v50 + (a2[7] ^ 0xB3));
  v53 = (v52 ^ 0xFEFF9AD0) & ((((19 * v49 + 37) ^ (76 * v49 + 104)) << (((4 * v44) ^ 0xA8) + 92)) ^ 0xF4F402C0);
  v54 = v52 & 0x3F;
  v55 = *(v50 + (a2[11] ^ 0x19));
  v56 = *(a1 + 8 * (v44 - 1467));
  v57 = *(v56 + (v46[2] ^ 0xA4));
  v58 = v53 | v54;
  v59 = *(a1 + 8 * (v44 ^ 0x694)) - 4;
  v60 = *(v59 + (v46[12] ^ 0x28));
  v61 = v57 ^ (v57 >> 5) ^ (v57 >> 3);
  v62 = (((v60 ^ (v60 >> 3) ^ ((v60 >> 2) | 0x80)) << 24) ^ 0x1D188378) & (v51 ^ 0xFFBB93F9) | v51 & 0xFFFFFF87;
  v63 = *(v59 + (*v46 ^ 0xBBLL));
  LOBYTE(v57) = *(v48 + (v46[13] ^ 0xCFLL));
  v64 = (((v63 ^ (v63 >> 3) ^ (v63 >> 2)) << 24) ^ 0x698B14F0) & ((v61 << 8) ^ 0xFF8B1CF0) | (v61 << 8) & 0xEB00;
  LOBYTE(v63) = (19 * v57 + 37) ^ (76 * v57 + 104);
  v65 = *(v59 + (v46[8] ^ 4));
  v203 = v50;
  v66 = (((v65 ^ (v65 >> 3) ^ (v65 >> 2)) << 24) ^ 0xC00E9A2) & (v55 ^ 0xFF90EBBB) | v55 & 0x5D;
  v67 = (v64 ^ 0xDD3423F3) & (*(v50 + (v46[3] ^ 0xF1)) ^ 0xFFFFFFD5) | *(v50 + (v46[3] ^ 0xF1)) & 0xFC;
  v68 = *(v56 + (v46[6] ^ 0xAELL));
  v69 = (((((v68 >> 5) | 0x60) ^ v68 ^ ((v68 >> 3) | 0x40)) << 8) ^ 0x694F938A) & (v58 ^ 0x8B10FD3E) | v58 & 0x14B00075;
  LOBYTE(v58) = *(v48 + (v46[1] ^ 0x72));
  v70 = *(v56 + (v46[10] ^ 0x41));
  v71 = ((((19 * v58 + 37) ^ (76 * v58 + 104)) << 16) ^ 0xFE48B33E) & (v67 ^ 0x9D404D34);
  v72 = v67 & 0x13E4CC1;
  LOBYTE(v67) = v70 ^ 0xF5 ^ (v70 >> 3) ^ (((v70 ^ 0xF5) >> 5) | 0x68);
  v202 = v59;
  v73 = ((v63 << 16) & 0xFA0000 | (v62 ^ 0x691D843E) & ((v63 << 16) ^ 0xFFFE97FF)) ^ 0xF6956838;
  v74 = (*(v56 + (v46[14] ^ 0xC9)) ^ 0x68 ^ (*(v56 + (v46[14] ^ 0xC9)) >> 3) ^ (((*(v56 + (v46[14] ^ 0xC9)) ^ 0x68u) >> 5) | 8)) << 8;
  v75 = *(v59 + (v46[4] ^ 0x51));
  v76 = (v75 ^ (v75 >> 3) ^ (v75 >> 2) ^ 0x13) << 24;
  v204 = v48;
  LOBYTE(v46) = *(v48 + (v46[9] ^ 0x7DLL));
  LODWORD(a27) = 37;
  LODWORD(a26) = 104;
  LODWORD(v46) = ((76 * v46 + 104) ^ (19 * v46 + 37)) << 16;
  LODWORD(a39) = v72 ^ 0xCFDD402B ^ v71;
  LODWORD(a41) = v76 & 0x7C000000 ^ 0x7B9E7D19 ^ (v76 ^ 0xB0FFFFFF) & (v69 ^ 0xFECAF418);
  LODWORD(a43) = v74 & 0x9000 ^ 0x277DB091 ^ (v74 ^ 0xFFFFABFF) & v73;
  LODWORD(a40) = v46 & 0x570000 ^ 0xFB6460E8 ^ (v46 ^ 0xFF1CFFFF) & (((v67 << 8) & 0x4300 | ((v67 << 8) ^ 0xFF9C14FF) & (v66 ^ 0xBE9C55A3)) ^ 0xDA34552A);
  v200 = STACK[0x4A8];
  v201 = STACK[0x4A0];
  v205 = (STACK[0x4A8] + 7);
  v206 = v47;
  LODWORD(a34) = (v47 + 1457257515) & 0xA9240727;
  LODWORD(a38) = a34 ^ 0x601;
  v77 = *(v56 + (*(STACK[0x4A0] + (a34 ^ 0x601)) ^ 0xD3));
  v78 = v77 ^ (v77 >> 5) ^ (v77 >> 3);
  LOBYTE(v77) = *(v50 + (*(STACK[0x4A0] + 11) ^ 0x3FLL));
  v79 = *(v56 + (*(STACK[0x4A0] + 14) ^ 0xC3));
  LOBYTE(v66) = (v77 ^ 0xA8) - 98;
  LOBYTE(a36) = ((2 * v77) & 0xC4 ^ 0x84) + v66;
  LOBYTE(v79) = ((v79 >> 5) ^ (v79 >> 3) | 0x80) ^ v79;
  v80 = *(v50 + (*(STACK[0x4A0] + 7) ^ 0xEELL));
  v81 = ((v78 << 8) ^ 0xFE69D690) & ~v80 | v80 & 0x6F;
  v82 = *(v48 + (*(STACK[0x4A0] + 13) ^ 0xFLL));
  v83 = 19 * v82;
  LODWORD(v50) = 19 * v82 + 37;
  v84 = ((v50 ^ 0xFFFFFFB5) + ((38 * v82 + 74) & 0x6A)) << (v66 & 2) << (v66 & 2 ^ 2);
  LOBYTE(v66) = v83 - 2 * (v50 & 0x3F) + 100;
  LODWORD(v50) = *(v59 + (*(STACK[0x4A0] + 8) ^ 0xAALL));
  v85 = v84 ^ v66;
  v86 = (((v84 ^ v66) << 16) ^ 0x9CCDABE5) & ((v79 << 8) ^ 0xBEFF61E7) | (v79 << 8) & 0x5400;
  v87 = *(v48 + (*(STACK[0x4A0] + 1) ^ 0xDLL));
  v88 = (76 * v87 + 104) ^ (19 * v87 + 37);
  v89 = ((*(v203 + (*(STACK[0x4A0] + 3) ^ 0x87)) << 12) ^ 0x8FA0AE91E3793F32) & ~(v88 >> 4) | (v88 >> 4) & 0xFD;
  v90 = (v89 ^ 0x601550261C822081) & ((v88 << 28) ^ 0x6E157C367CE7AAA1) ^ v89 & 0x81A08281E318551ELL;
  LODWORD(a37) = (v90 >> 12) ^ 0xEB75A33F;
  v91 = (v90 << 20) ^ 0x70B00000 | a37;
  LODWORD(v89) = *(v59 + ((*(STACK[0x4A0] + 4) - ((2 * *(STACK[0x4A0] + 4)) & 0x1A4u) + 210) ^ 0x71));
  v92 = v89 ^ (v89 >> 2) ^ ((v89 >> 3) | 0xC0) ^ 0x5B;
  LODWORD(v89) = *(v59 + (*(STACK[0x4A0] + 12) ^ 0x9FLL));
  LODWORD(v59) = v89 ^ (v89 >> 3) ^ (v89 >> 2) ^ 0x1F;
  LODWORD(v89) = *(v56 + (*(STACK[0x4A0] + 2) ^ 0x3FLL));
  LOBYTE(v88) = *(v204 + (*(STACK[0x4A0] + 9) ^ 0x9DLL));
  LODWORD(v89) = v91 ^ ((v89 ^ (v89 >> 5) ^ (v89 >> 3)) << 8);
  v93 = *(v203 + (*(STACK[0x4A0] + 15) ^ 0x4BLL));
  v94 = *(v204 + (*(STACK[0x4A0] + 5) ^ 0xF7));
  LODWORD(a35) = ((25 * (-76 - v88) + 101 * v88 - 44) ^ (19 * v88 + 37));
  v95 = ((v59 << 24) ^ 0x3FEABFAC) & (v86 ^ 0x63741008) ^ v86 & 0x84154041;
  v96 = *(v202 + (*STACK[0x4A0] ^ 0xD6));
  v97 = ((19 * v94 + 37) ^ (76 * v94 + 104)) << 16;
  v98 = (v97 ^ 0xFFF3FFFF) & ((v92 << 24) ^ 0xB8155D8D) | v97 & 0xEA0000;
  v99 = (v98 & 0x83420000 | (v81 ^ 0x82D40AED) & 0x7CA8E4B7) ^ (v98 ^ 0x440846C5) & (v81 ^ 0x82D40AED);
  v100 = (((v96 ^ (v96 >> 1)) >> 4) ^ 0xFFFFFFC9) & 0xFFFFFF8D ^ (((v96 ^ 0x2D) >> 2) | ((v96 ^ 0x2D) << 6)) ^ (((16 * (v96 ^ (v96 >> 1))) | 2) & (((v96 ^ (v96 >> 1)) >> 4) ^ 0xFFFFFFC9) | 0x30);
  HIDWORD(a29) = v89 ^ ((((v100 >> 6) | (4 * v100)) ^ 0x5F) << 24);
  v101 = *(&off_C1600 + v206 - 683) - 4;
  v102 = *(&off_C1600 + v206 - 556) - 12;
  LODWORD(a32) = *(v56 + (*(STACK[0x4A0] + 10) ^ 8)) ^ (*(v56 + (*(STACK[0x4A0] + 10) ^ 8)) >> 3) ^ ((*(v56 + (*(STACK[0x4A0] + 10) ^ 8)) >> 5) | 0x20);
  v103 = v80 ^ 0xCE;
  v104 = *(&off_C1600 + v206 - 584);
  v105 = *(&off_C1600 + (v206 ^ 0x2DC));
  v106 = *(v105 + 4 * (a32 ^ 9)) ^ (*&v102[4 * (v85 ^ 0x6B)] - 1409877230) ^ (*(v104 + 4 * v103) - (v99 ^ 0x21C1761A)) ^ (*&v101[4 * (HIBYTE(HIDWORD(a29)) ^ 0xA3)] - (HIBYTE(HIDWORD(a29)) ^ 0x5F6A3AF7));
  LODWORD(a36) = a36;
  v107 = *(v105 + 4 * (v79 ^ 0xB7u)) ^ (*&v102[4 * (BYTE2(v91) ^ 0x7C)] - 1409877230) ^ (*(v104 + 4 * (a36 ^ 0xAEu)) - (a36 ^ 0x21C17607)) ^ (*&v101[4 * (HIBYTE(v99) ^ 0xBB)] - (HIBYTE(v99) ^ 0x5F6A3AEF));
  LODWORD(a33) = v50 ^ (v50 >> 3) ^ (v50 >> 2);
  LODWORD(a31) = (v95 ^ 0x19569520) & ~v93 | v93 & 0x32;
  LODWORD(v89) = *(v105 + 4 * (BYTE1(v89) ^ 0x2Du)) ^ (*&v101[4 * (a33 ^ 0x40)] - (a33 ^ 0x5F6A3A14)) ^ (*(v104 + 4 * (v93 ^ 0x4B)) - (((v95 ^ 0x20) & ~v93 | v93 & 0x32) ^ 0x21C1762F)) ^ (*&v102[4 * (BYTE2(v99) ^ 0x9C) + 500 + 4 * ((v99 >> 15) & 0xF8 ^ 0xFFFFFFC7)] - 1409877230);
  LODWORD(a30) = v99;
  v108 = (*&v102[4 * (a35 ^ 0xE3)] - 1409877230) ^ ((HIBYTE(v95) ^ 0xA095C5D1) + *&v101[4 * (HIBYTE(v95) ^ 0x7A)] + 1) ^ *(v105 + 4 * (BYTE1(v99) ^ 0xDFu)) ^ (*(v104 + 4 * ((v90 >> 12) ^ 0x89)) - ((v90 >> 12) ^ 0x21C17620));
  LODWORD(v50) = HIBYTE(v108);
  LODWORD(v59) = *&v102[4 * (BYTE2(v108) ^ 0xC5)];
  v109 = *(v105 + 4 * (BYTE1(v89) ^ 0xF9u)) ^ (*&v101[4 * (HIBYTE(v106) ^ 0x9E)] - (HIBYTE(v106) ^ 0x5F6A3ACA)) ^ (*(v104 + 4 * (v107 ^ 0x68u)) - (v107 ^ 0x21C176C1)) ^ ((__ROR4__(__ROR4__(v59, 7) ^ 0x1289B602, 25) ^ 0xEF2DFA1B) + ((2 * v59) & 0x57EDF624));
  LODWORD(v93) = (*&v102[4 * (BYTE2(v106) ^ 0x96)] - 1409877230) ^ (*&v101[4 * (HIBYTE(v107) ^ 0xA8)] - (HIBYTE(v107) ^ 0x5F6A3AFC)) ^ *(v105 + 4 * (BYTE1(v108) ^ 0x6Eu)) ^ (*(v104 + 4 * (v89 ^ 0xFAu)) - (v89 ^ 0x21C17653));
  v110 = HIBYTE(v108) ^ 0x74;
  v111 = (*&v102[4 * (((BYTE2(v107) ^ 5) - (BYTE2(v107) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v107) ^ 5)] - 1409877230) ^ (*&v101[4 * (BYTE3(v89) ^ 0xA6)] - (BYTE3(v89) ^ 0x5F6A3AF2)) ^ *(v105 + 4 * (BYTE1(v106) ^ 0xE0u)) ^ (*(v104 + 4 * (v108 ^ 0x40u)) - (v108 ^ 0x21C176E9));
  v112 = (*&v102[4 * (BYTE2(v89) ^ 0xA3)] - 1409877230) ^ (*&v101[4 * v110] - (v50 ^ 0x5F6A3A20)) ^ *(v105 + 4 * (BYTE1(v107) ^ 0x9Au)) ^ (*(v104 + 4 * (v106 ^ 0x9Au)) - (v106 ^ 0x21C17633));
  LODWORD(v50) = (*&v102[4 * (BYTE2(v112) ^ 0x2C)] - 1409877230) ^ *(v105 + 4 * (BYTE1(v111) ^ 0xBBu)) ^ (*&v101[4 * (HIBYTE(v109) ^ 0x48)] - (HIBYTE(v109) ^ 0x5F6A3A1C)) ^ (*(v104 + 4 * (v93 ^ 0xE0u)) - (v93 ^ 0x21C17649));
  LODWORD(v89) = (*&v102[4 * (BYTE2(v109) ^ 0xE2)] - 1409877230) ^ (*&v101[4 * (BYTE3(v93) ^ 0x7D)] - (BYTE3(v93) ^ 0x5F6A3A29)) ^ *(v105 + 4 * (BYTE1(v112) ^ 0x4Fu)) ^ (*(v104 + 4 * (v111 ^ 0x80u)) - (v111 ^ 0x21C17629));
  v113 = (*&v102[4 * (BYTE2(v93) ^ 0xD9) + 500 + 4 * ((v93 >> 15) & 0xF8 ^ 0xFFFFFF4F)] - 1409877230) ^ (*&v101[4 * (HIBYTE(v111) ^ 0x45)] - (HIBYTE(v111) ^ 0x5F6A3A11)) ^ *(v105 + 4 * (BYTE1(v109) ^ 0x46u)) ^ (*(v104 + 4 * (v112 ^ 0xA8u)) - (v112 ^ 0x21C17601));
  v114 = (*&v102[4 * (BYTE2(v111) ^ 0x90)] - 1409877230) ^ (*&v101[4 * (HIBYTE(v112) ^ 0x99)] - (HIBYTE(v112) ^ 0x5F6A3ACD)) ^ *(v105 + 4 * (BYTE1(v93) ^ 0xA2u)) ^ (*(v104 + 4 * (v109 ^ 0xA5u)) - (v109 ^ 0x21C1760C));
  v115 = (*&v102[4 * (BYTE2(v114) ^ 0xF6)] - 1409877230) ^ (*&v101[4 * (BYTE3(v50) ^ 0xE5)] - (BYTE3(v50) ^ 0x5F6A3AB1)) ^ *(v105 + 4 * (BYTE1(v113) ^ 0xC1u)) ^ (*(v104 + 4 * (v89 ^ 0x57u)) - (v89 ^ 0x21C176FE));
  LODWORD(v117) = __ROR4__((*&v102[4 * (((BYTE2(v50) ^ 0x95) - (BYTE2(v50) ^ 0xE9)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v50) ^ 0x95)] - 1409877230) ^ (*&v101[4 * (BYTE3(v89) ^ 0x7E)] - (BYTE3(v89) ^ 0x5F6A3A2A)) ^ *(v105 + 4 * (BYTE1(v114) ^ 0x2Cu)) ^ (*(v104 + 4 * (v113 ^ 0x72u)) - (v113 ^ 0x21C176DB)), 24) ^ 0xAE3052B7;
  HIDWORD(v117) = v117;
  v116 = v117 >> 8;
  v118 = HIBYTE(v113) ^ 0x5F6A3A27;
  v119 = (*&v102[4 * (BYTE2(v89) ^ 0xD)] - 1409877230) ^ *(v105 + 4 * (BYTE1(v50) ^ 0xECu)) ^ (*&v101[4 * (HIBYTE(v113) ^ 0x73)] - v118) ^ (*(v104 + 4 * (v114 ^ 0x3Au)) - (v114 ^ 0x21C17693));
  LODWORD(v89) = *(v105 + 4 * (((BYTE1(v89) ^ 0x6B) - 1853103296 + ((v89 >> 7) & 0x7E ^ 0xFFFFFFA9)) ^ 0x918BE368));
  LODWORD(v59) = v89 - ((2 * v89) & 0xA118E7D0) - 796101656;
  v120 = v115 ^ 0xFBC8137;
  v121 = (*&v102[4 * (BYTE2(v113) ^ 0x7F)] - 1409877230) ^ (*&v101[4 * (HIBYTE(v114) ^ 0x97)] - (HIBYTE(v114) & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (HIBYTE(v114) & 2)))) ^ (*(v104 + 4 * (v50 ^ 0x32u)) - (v50 ^ 0x21C1769B)) ^ v59;
  v122 = v121 ^ 0xF5334662;
  v123 = (*&v102[4 * (((v121 ^ 0xF5334662) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v101[4 * (HIBYTE(v120) ^ 0x8A)] - (HIBYTE(v120) ^ 0x5F6A3ADE)) ^ *(v105 + 4 * (BYTE1(v119) ^ 0x25u)) ^ (*(v104 + 4 * (BYTE1(v117) ^ 0x25u)) - (BYTE1(v117) ^ 0x21C1768C));
  if (((v115 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v124 = (v115 ^ 0xFBC8137) >> 16;
  }

  else
  {
    v124 = ((v115 ^ 0xFBC8137) >> 16) & 0xC0;
  }

  v125 = (*&v102[4 * (v124 ^ 0x7C)] - 1409877230) ^ *(v105 + 4 * BYTE1(v122)) ^ (*(v104 + 4 * (v119 ^ 0x37u)) - (v119 ^ 0x21C1769E)) ^ (*&v101[4 * (((v116 ^ 0xED7C6FF5) >> 24) ^ 0x8A)] - (((v116 ^ 0xED7C6FF5) >> 24) ^ 0x5F6A3ADE));
  v126 = (*&v102[4 * BYTE2(v116)] - 1409877230) ^ (*&v101[4 * (((v119 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v119 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ *(v105 + 4 * BYTE1(v120)) ^ (*(v104 + 4 * (v121 ^ 0xB2u)) - (v121 ^ 0x21C1761B));
  v127 = (*&v102[4 * (BYTE2(v119) ^ 0x38)] - 1409877230) ^ *(v105 + 4 * (BYTE1(v116) ^ 0x38u)) ^ (*&v101[4 * (HIBYTE(v122) ^ 0x8A)] - (HIBYTE(v122) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v115 ^ 0xE7u)) - (v115 ^ 0x21C1764E));
  v128 = (*&v102[4 * ((v127 ^ 0x28B1C8AFu) >> 16)] - 1409877230) ^ *(v105 + 4 * ((v126 ^ 0xF582) >> 8)) ^ (*&v101[4 * (((v123 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v123 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v125 ^ 0x82u)) - (v125 ^ 0x21C1762B));
  v129 = (*&v102[4 * (BYTE2(v123) ^ 0xCF)] - 1409877230) ^ *(v105 + 4 * ((v127 ^ 0xC8AF) >> 8)) ^ (*&v101[4 * (((v125 ^ 0x94240652) >> 24) ^ 0x8A)] - (((v125 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v126 ^ 0x52u)) - (v126 ^ 0x21C176FB));
  v130 = (*&v102[4 * ((v125 ^ 0x94240652) >> 16)] - 1409877230) ^ (*&v101[4 * (((v126 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v126 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE)) ^ *(v105 + 4 * ((v123 ^ 0x3250) >> 8)) ^ (*(v104 + 4 * (v127 ^ 0x7Fu)) - (v127 ^ 0x21C176D6));
  v131 = (*&v102[4 * (BYTE2(v126) ^ 0xDC)] - 1409877230) ^ *(v105 + 4 * (((v125 ^ 0x652) >> 8) ^ 0x57u)) ^ (*&v101[4 * (((v127 ^ 0x28B1C8AFu) >> 24) ^ 0x8A)] - (((v127 ^ 0x28B1C8AFu) >> 24) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v123 ^ 0x80u)) - (v123 ^ 0x21C17629));
  v132 = (*&v102[4 * ((v131 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *(v105 + 4 * ((v130 ^ 0x7C12) >> 8)) ^ (*&v101[4 * (((v128 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v128 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v129 ^ 0x10u)) - (v129 ^ 0x21C176B9));
  v133 = (*&v102[4 * (BYTE2(v128) ^ 0xD2)] - 1409877230) ^ *(v105 + 4 * (BYTE1(v131) ^ 0xE5u)) ^ (*&v101[4 * (((v129 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)] - (((v129 ^ 0x6FA1BBC0) >> 24) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v130 ^ 0xC2u)) - (v130 ^ 0x21C1766B));
  v134 = (*&v102[4 * ((v129 ^ 0x6FA1BBC0) >> 16)] - 1409877230) ^ (*&v101[4 * (((v130 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v130 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE)) ^ *(v105 + 4 * ((v128 ^ 0x4527) >> 8)) ^ (*(v104 + 4 * (v131 ^ 0x3Fu)) - (v131 ^ 0x21C17696));
  v135 = (*&v102[4 * ((v130 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *(v105 + 4 * ((v129 ^ 0xBBC0) >> 8)) ^ (*(v104 + 4 * (v128 ^ 0xF7u)) - (v128 ^ 0x21C1765E)) ^ (*&v101[4 * (((v131 ^ 0xBE27B2EF) >> 24) ^ 0x8A)] - (((v131 ^ 0xBE27B2EF) >> 24) ^ 0x5F6A3ADE));
  v136 = (v135 ^ 0x7DDF413F) >> 24;
  v137 = (*&v102[4 * ((v135 ^ 0x7DDF413F) >> 16)] - 1409877230) ^ *(v105 + 4 * (BYTE1(v134) ^ 0x1Fu)) ^ (*(v104 + 4 * (v133 ^ 0xF5u)) - (v133 ^ 0x21C1765C)) ^ (*&v101[4 * (((v132 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v132 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE));
  v138 = (*&v102[4 * ((v132 ^ 0x179F0454) >> 16)] - 1409877230) ^ *(v105 + 4 * ((v135 ^ 0x413F) >> 8)) ^ (*&v101[4 * (((v133 ^ 0x75457125) >> 24) ^ 0x8A)] - (((v133 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*(v104 + 4 * (v134 ^ 0xC0u)) - (v134 ^ 0x21C17669));
  v139 = *(v105 + 4 * (BYTE1(v132) ^ 0x53u));
  v140 = v139 ^ -v139 ^ (-1795874037 - (__ROR4__(__ROR4__(v139, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v141 = *(v104 + 4 * (v135 ^ 0xEFu)) - (v135 ^ 0x21C17646);
  v142 = BYTE2(v134) ^ 0x59;
  v143 = (*&v102[4 * (BYTE2(v133) ^ 0x39)] - 1409877230) ^ (*&v101[4 * (((v134 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v134 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ v141 ^ (((2 * v140) & 0x29EA4616) + (v140 ^ 0x94F5230B));
  v144 = (*&v102[4 * v142] - 1409877230) ^ *(v105 + 4 * (BYTE1(v133) ^ 0x26u)) ^ (*&v101[4 * (v136 ^ 0x8A)] - (v136 ^ 0x5F6A3ADE));
  v145 = v137 ^ 0x8EBD9B97;
  v146 = v144 ^ (*(v104 + 4 * (v132 ^ 0x84u)) - (v132 ^ 0x21C1762D));
  v147 = v143 ^ 0x8CA395FC;
  v148 = v138 ^ 0xA3ECFAB3;
  v149 = v146 ^ 0x10CC86ED;
  v150 = *(v104 + 4 * (v138 ^ 0x63u)) - (v138 ^ 0x21C176CA);
  v151 = (*&v102[4 * ((v146 ^ 0x10CC86EDu) >> 16)] - 1409877230) ^ (*&v101[4 * (HIBYTE(v145) ^ 0x8A)] - (HIBYTE(v145) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *(v105 + 4 * (BYTE1(v143) ^ 0xC2u));
  v152 = (v151 ^ -v151 ^ (v150 - (v151 ^ v150))) + v150;
  if (((v143 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v153 = -16;
  }

  else
  {
    v153 = 16;
  }

  v154 = *(v104 + 4 * ((v153 + v147) ^ 0xC0u)) - ((v153 + v147) ^ 0x21C17669);
  v155 = HIBYTE(v147);
  v156 = (*&v102[4 * (BYTE2(v137) ^ 0xC1)] - 1409877230) ^ *(v105 + 4 * ((v146 ^ 0x86ED) >> 8)) ^ (*&v101[4 * (HIBYTE(v148) ^ 0x8A)] - (HIBYTE(v148) ^ 0x5F6A3ADE)) ^ v154;
  v157 = *&v101[4 * (v155 ^ 0x8A)] - (v155 ^ 0x5F6A3ADE);
  v158 = HIBYTE(v149);
  v159 = (*&v102[4 * BYTE2(v148)] - 1409877230) ^ *(v105 + 4 * BYTE1(v145)) ^ (*(v104 + 4 * (v146 ^ 0x3Du)) - (v146 ^ 0x21C17694));
  v160 = *&v101[4 * (HIBYTE(v149) ^ 0x8A)];
  v161 = *&v102[4 * (BYTE2(v143) ^ 0xDF)];
  v162 = v159 ^ v157;
  v163 = (v161 - 1409877230) ^ (v160 - (v158 ^ 0x5F6A3ADE)) ^ *(v105 + 4 * (BYTE1(v138) ^ 0xADu)) ^ (*(v104 + 4 * (v137 ^ 0x47u)) - (v137 ^ 0x21C176EE));
  v164 = v159 ^ v157 ^ 0x6CCB3DC4;
  v165 = *(&off_C1600 + v206 - 589) - 12;
  v166 = *(&off_C1600 + (v206 ^ 0x282));
  v167 = *(v166 + 4 * ((v163 ^ 0x66EB169Au) >> 16)) ^ 0x4D522762;
  v168 = *(&off_C1600 + (v206 ^ 0x2B6)) - 4;
  v169 = *(&off_C1600 + (v206 ^ 0x21B));
  v170 = ((v156 ^ 0xA4) - 1352815326) ^ *&v168[4 * (((v159 ^ v157) >> 8) ^ 0x57)] ^ *&v165[4 * (HIBYTE(v152) ^ 0xBE)] ^ *(v169 + 4 * (v156 ^ 0x91u)) ^ (((v167 >> (v118 & 3) >> (v118 & 3 ^ 3)) ^ v167) >> 2);
  v171 = *(v166 + 4 * (BYTE2(v152) ^ 0xBFu)) ^ 0x4D522762;
  v172 = *&v165[4 * (HIBYTE(v156) ^ 0x43)] ^ (v164 - 1352815326) ^ *&v168[4 * (BYTE1(v163) ^ 0x7C)] ^ v171 ^ *(v169 + 4 * (v162 ^ 0xF1u)) ^ (v171 >> 2) ^ (v171 >> 5);
  v173 = *&v165[4 * ((v163 ^ 0x66EB169Au) >> 24)];
  v174 = *&v165[4 * (HIBYTE(v162) ^ 0xD5)] ^ ((v163 ^ 0x9A) - 1352815326) ^ *(v169 + 4 * (v163 ^ 0xAFu)) ^ *&v168[4 * ((v152 ^ 0x84FF) >> 8)];
  v175 = *&v168[4 * (BYTE1(v156) ^ 0x2D)];
  v176 = v167 ^ a39 ^ (v170 - ((2 * v170) & 0x62456F94) + 824358858);
  v177 = *(v166 + 4 * (BYTE2(v156) ^ 0x20u)) ^ 0x4D522762;
  v178 = *(v166 + 4 * BYTE2(v164)) ^ 0x4D522762;
  v179 = v174 ^ (v177 >> 2) ^ (v177 >> 5);
  v180 = v173 ^ (~v152 - 1352815326) ^ v178 ^ v175 ^ (v178 >> 2) ^ (v178 >> 5) ^ *(v169 + 4 * (v152 ^ 0xCAu));
  v181 = (v172 - ((2 * v172) & 0x68370556) - 1273265493) ^ a41;
  v182 = v177 ^ a40 ^ (v179 - ((2 * v179) & 0x5B1B1326) - 1383233133);
  HIDWORD(v184) = ((v180 ^ 0x23A4540) - ((2 * (v180 ^ 0x23A4540)) & 0xFB9E3A) + 8245021) ^ a43;
  LODWORD(v184) = ((v180 ^ 0x23A4540) - 2 * ((v180 ^ 0x23A4540) & 0x3E7DCF1F ^ v180 & 2) - 1099051235) ^ a43;
  v183 = v184 >> 24;
  v185 = *(&off_C1600 + v206 - 628) - 8;
  *(STACK[0x4A8] + 8) = (-97 * v185[HIBYTE(v182) ^ 0x4CLL]) ^ ((-97 * v185[HIBYTE(v182) ^ 0x4CLL]) >> 5) ^ ((-97 * v185[HIBYTE(v182) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v205 - 3) = (-97 * v185[HIBYTE(v181) ^ 0x61]) ^ ((-97 * v185[HIBYTE(v181) ^ 0x61]) >> 5) ^ ((-97 * v185[HIBYTE(v181) ^ 0x61]) >> 1) ^ 0xD8;
  v186 = *(&off_C1600 + (v206 & 0x21DEB14C));
  v205[3] = ((((((v182 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v182 ^ 0xD2C1) >> 8) ^ 0xDA) + *(v186 + (((v182 ^ 0xD2C1) >> 8) ^ 0x6CLL))) ^ 0xB3;
  v187 = *(&off_C1600 + (v206 ^ 0x2C3));
  v188 = *(v187 + (((((v182 ^ 0xA619D2C1) >> 16) ^ -((v182 ^ 0xA619D2C1) >> 16) ^ (510 - ((v182 ^ 0xA619D2C1) >> 16) - ((2 * ((v182 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL)) ^ 0xFFFFFFD9;
  v189 = ((((v182 ^ 0xA619D2C1) >> 16) ^ -((v182 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v182 ^ 0xA619D2C1) >> 16) - ((2 * ((v182 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v190 = v189 & 8 ^ v188;
  v191 = (v189 & 8 & v188) == 0;
  v192 = v188 - (v189 & 8);
  if (v191)
  {
    v192 = v190;
  }

  v205[2] = v192 ^ v189 & 0xF7;
  HIDWORD(v194) = v183 ^ 0x8829CA87;
  LODWORD(v194) = v183 ^ 0x8829CA87;
  v193 = v194 >> 8;
  *(v200 + a38) = (*(v186 + (BYTE1(v181) ^ 0x94)) + (((BYTE1(v181) ^ 0x22) + 99) ^ BYTE1(v181) ^ 0x22)) ^ 0xA8;
  *(v205 - 2) = BYTE2(v181) ^ 0x9E ^ *(v187 + (BYTE2(v181) ^ 0xD5));
  v195 = *(&off_C1600 + v206 - 568);
  v196 = *(v195 + (v176 ^ 0xE7)) - 24;
  *(v205 - 4) = v196 ^ 0x5D ^ (v196 >> 1) & 0x1E;
  v205[5] = (-97 * v185[HIBYTE(v193) ^ 0x60]) ^ ((-97 * v185[HIBYTE(v193) ^ 0x60]) >> 5) ^ ((-97 * v185[HIBYTE(v193) ^ 0x60]) >> 1) ^ 0xFE;
  v197 = *(v195 + ((180 - (v182 ^ 0x56) + (v182 ^ 0xE2) - 2 * ((180 - (v182 ^ 0x56)) & (v182 ^ 0xE2))) ^ -(v182 ^ 0xE2)) + 180) - 24;
  v205[4] = v197 ^ 0x62 ^ (v197 >> 1) & 0x1E;
  v205[7] = (*(v186 + (((v194 >> 8) >> 8) ^ 0x4FLL)) + (((((v194 >> 8) >> 8) ^ 0xF9) + 99) ^ ((v194 >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v205 - 5) = (*(v186 + (BYTE1(v176) ^ 0x1FLL)) + (((BYTE1(v176) ^ 0xA9) + 99) ^ BYTE1(v176) ^ 0xA9)) ^ 0x84;
  v198 = *(v195 + (v181 ^ 0xDDLL));
  *v205 = (((v198 + ((v198 - 24) ^ 0xAE) - 23) ^ 0xFE) + v198 - 24) ^ ((v198 - 24) >> 1) & 0x1E;
  *(v205 - 7) = (-97 * v185[HIBYTE(v176) ^ 0x67]) ^ ((-97 * v185[HIBYTE(v176) ^ 0x67]) >> 5) ^ ((-97 * v185[HIBYTE(v176) ^ 0x67]) >> 1) ^ 0xE1;
  v205[6] = BYTE2(v193) ^ 0x8E ^ *(v187 + (BYTE2(v193) ^ 0x55));
  *(v205 - 6) = BYTE2(v176) ^ 0xD3 ^ *(v187 + (BYTE2(v176) ^ 0x7DLL));
  v205[8] = (*(v195 + (BYTE1(v194) ^ 0xF7)) - 24) ^ (((*(v195 + (BYTE1(v194) ^ 0xF7)) - 24) & ((*(v195 + (BYTE1(v194) ^ 0xF7)) - 24) ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v45 + 8 * (v206 ^ 0x7E)))(a38, v186, 132, v190, &off_C1600, 0, v205, 4294967199, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v200, v201, v202, v56, a18, a19, v203, a21, a22, a23, a24, a25, a26, a27, v204, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_B594@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x494]) = 2;
  STACK[0x290] = 0;
  LODWORD(STACK[0x358]) = 0;
  LODWORD(STACK[0x2B0]) = 0;
  return (*(v2 + 8 * (((a1 ^ 0x6C2) * ((v1 >> 1) & 1)) ^ a1)))();
}

void sub_B618()
{
  v4 = *v0 ^ v2;
  *v5 = ((v3 + 107) ^ HIBYTE(v4) ^ 0x56) - ((2 * ((v3 + 107) ^ HIBYTE(v4) ^ 0x56)) & 0x72) + 57;
  v5[1] = (BYTE2(v4) ^ 0xC1) - ((2 * (BYTE2(v4) ^ 0xC1)) & 0x72) + 57;
  v5[2] = (BYTE1(v4) ^ 0x12) + ~(2 * (((v4 >> 8) ^ 0x12) & 0x3D ^ (v4 >> 8) & 4)) + 58;
  v5[3] = v4 ^ 0xF3;
  v0[4] = *(v1 + 24);
}

uint64_t sub_B6D4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7.i64[0] = 0x7272727272727272;
  v7.i64[1] = 0x7272727272727272;
  v8.i64[0] = 0x3939393939393939;
  v8.i64[1] = 0x3939393939393939;
  v9 = *(v4 + v5 - 1 - 31);
  v10 = a2 + v5 - 1;
  *(v10 - 15) = vaddq_s8(vsubq_s8(*(v4 + v5 - 1 - 15), vandq_s8(vaddq_s8(*(v4 + v5 - 1 - 15), *(v4 + v5 - 1 - 15)), v7)), v8);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v7)), v8);
  return (*(v2 + 8 * ((55 * (((6 * (v6 ^ (v3 + 1954))) ^ 0x5F0) == (v5 & 0xFFFFFFE0))) ^ (a1 + v6 + 1341))))();
}

uint64_t sub_B768@<X0>(int a1@<W8>)
{
  v6 = (v1 - 185216094) & 0xB0A27FF;
  v7 = v2 + 6 * (v6 ^ 0x2DF) - 679;
  *(*v3 + (v5 - 2142269058 + v7)) = *(*v3 + (v2 - 1611143477));
  return (*(v4 + 8 * ((420 * (v7 == a1)) ^ v6)))();
}

uint64_t sub_B83C()
{
  if (v2 > v3 + 1738243056 != v0 - 550449718 < ((v3 + 1196) ^ 0x9864873B))
  {
    v4 = v2 > v3 + 1738243056;
  }

  else
  {
    v4 = v0 - 550449718 < v2 + 409240264;
  }

  return (*(v1 + 8 * ((783 * v4) ^ (v3 + 1196))))();
}

uint64_t sub_B918@<X0>(int a1@<W8>)
{
  v2 = a1 - 169;
  STACK[0x228] += ((v2 - 832) | 0x104u) ^ 0xFFFFFFFFFFFFFEB4;
  return (*(v1 + 8 * ((v2 + 165) ^ v2)))();
}

void sub_B954(uint64_t a1)
{
  v1 = 1556366573 * ((((2 * a1) | 0x5E6362BC) - a1 + 1355697826) ^ 0xCBD592B4);
  v2 = *(a1 + 16) + v1;
  v3 = (*(a1 + 4) ^ v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 9892;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_BA74(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v8;
  HIDWORD(v17) = a1 ^ v13;
  LODWORD(v17) = a1;
  v18 = (a8 ^ v11) & (v8 ^ 0xCB7F119E) ^ a8 & 0xC88C7AD4;
  v19 = (v17 >> 27) + (((a2 ^ 0x89485B4E) + 1991746738) ^ ((a2 ^ 0xB226FE51) + 1306067375) ^ ((a2 ^ 0x389DCE55) - 949866069)) + (((*(v15 + 4 * (a5 + v12)) ^ 0x3AB03342) - 984625986) ^ ((*(v15 + 4 * (a5 + v12)) ^ 0xE0D12A84) + 523163004) ^ ((*(v15 + 4 * (a5 + v12)) ^ 0x4453B19A) - 1146335642)) + (v18 & 0x3ED765C7 ^ 0xC92C9ABC ^ (v18 ^ 0x37F3EF6B) & (v9 & 0x634FF45A ^ 0xC26BFA72 ^ (a8 ^ 0x60BC9F10) & (v9 ^ (v13 + ((a3 + 1893855416) & 0x8F1E0D7F) - 1151)))) + 1431181400;
  return (*(v10 + 8 * ((3763 * (a5 + 1 == v14 + 20)) ^ a3)))(v19 ^ ((v19 ^ 0xB3967CC) - 1402793173) ^ ((v19 ^ 0x9E963982) + 969690469) ^ ((v19 ^ 0xB3E5AAA8) + 348118607) ^ ((v19 ^ 0x7EEF7FFF) - 642446566) ^ 0x5B56E053, v16);
}

uint64_t sub_BD24(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = a3 ^ (a5 + 6);
  v15 = 1388665877 * ((((v13 - 120) | 0x3D48FAB9) - (v13 - 120) + ((v13 - 120) & 0xC2B70540)) ^ 0xB0E59855);
  *(v13 - 120) = v15 + a3 + 320;
  *(v13 - 116) = (a12 - 386547081) ^ v15;
  *(v13 - 112) = v13 - 220;
  v16 = (*(v12 + 8 * (a3 + 2343)))(v13 - 120);
  v17 = *(v13 - 152);
  *(v13 - 220 + (v17 & 0x3F)) = -71;
  return (*(v12 + 8 * ((((v17 & 0x3Fu) > 0x37) * (v14 + 2067906665)) ^ a3)))(v16);
}

uint64_t sub_BE18@<X0>(int a1@<W8>)
{
  v7 = *(v6 - 120);
  v8 = v7 + v4;
  v9 = (((a1 + 9) ^ 0xAA) + v4) & 0xF;
  v10 = v9 + 1 - v4;
  v11 = v1 + v10;
  v12 = v1 + v9 + 1;
  v13 = v2 + v10;
  v14 = v2 + v9 + 1;
  v15 = v9 + v3 + 2;
  v17 = v12 > v7 && v11 < v8;
  v19 = v14 > v7 && v13 < v8 || v17;
  if (v15 <= v7 || v15 - v4 >= v8)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 8 * ((91 * v21) ^ a1)))();
}

uint64_t sub_BEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, unsigned int a56)
{
  LODWORD(a49) = 0;
  *(v57 + 1424) = 0;
  memset((v57 + 1432), 57, 104);
  *(a1 + 96) = v57;
  STACK[0x378] = a1 + 96;
  *(v57 + 476) = v56;
  STACK[0x3F0] = *(v58 + 8 * (a8 & 0x2692D439)) - 4;
  LODWORD(STACK[0x454]) = 191388509;
  LODWORD(STACK[0x2BC]) = a56;
  STACK[0x230] = a1;
  LODWORD(STACK[0x404]) = 0;
  LODWORD(STACK[0x35C]) = -1797553106;
  return sub_47860(a1, a2, 48, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a1, v57, a38, a39, a40, a41, a42, a43, a44, a1, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_C29C@<X0>(int a1@<W1>, int a2@<W7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = (v17 + 4 * v11);
  v19 = HIDWORD(v10) + (*v18 ^ a3) + HIDWORD(v15) + v16 * (*(*(a9 + 8) + 4 * v11) ^ a3);
  *(v18 - 1) = v19 + a3 - ((v19 << ((a2 + 38) ^ v12)) & a1);
  return (*(v14 + 8 * (((v11 + 1 == v9) * v13) ^ (a2 - 952))))();
}

uint64_t sub_C3C0(int8x16_t a1, int8x16_t a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * (((v2 + 1168) | v6) - 1562)) ^ (v2 + 680))))();
}

void sub_C41C(uint64_t a1)
{
  v1 = *(a1 + 20) - 1388665877 * (((a1 | 0xACCC06E8) - a1 + (a1 & 0x5333F917)) ^ 0x21616404);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_C538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22 = *(a1 + 16) ^ (1380333833 * ((((2 * a1) | 0x69E32B86) - a1 + 1259235901) ^ 0xAA33E49));
  v23 = 1785193651 * (((v34 | 0x2BC741E1) - v34 + (v34 & 0xD438BE18)) ^ 0xA877CBF7);
  v35 = &v33;
  v36 = v23 ^ (v22 - 875954119);
  v37 = -934608903 - v23;
  v24 = (*(*(&off_C1600 + v22 + 108) + v22 + 2375))(v34);
  return sub_42D8C(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v47 = v43;
  *a33 = a43 + 1;
  v48 = *v44;
  v49 = 1504884919 * ((~((v46 - 152) | v45) + ((v46 - 152) & v45)) ^ 0x1DFEDC45CBA23F78);
  STACK[0x5B8] = v49 + 5119;
  STACK[0x5B0] = v48 - v49;
  v50 = v49 ^ (v47 - 718729930);
  *(v46 - 124) = v49 + v47 - 1584571152;
  *(v46 - 120) = v50 ^ 0x1B;
  *(v46 - 116) = 1 - v49;
  *(v46 - 152) = v47 - 718729930 + v49;
  *(v46 - 148) = v50 ^ 0x4B;
  v51 = (*(a4 + 8 * (v47 ^ a35)))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 128)))(v51);
}

uint64_t sub_C9A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 + (v6 ^ v9) - 325;
  *(v7 + v11) = *(a5 + v11);
  return (*(v10 + 8 * (((8 * (v8 & ~(((v6 ^ v9) - 252) ^ (v11 == (((v6 ^ v9) + 71) ^ a1))))) & 0xFFFFFFDF | (32 * ((((v6 ^ v9) - 252) ^ ~(v11 == (((v6 ^ v9) + 71) ^ a1))) & 1))) ^ ((v6 ^ v9) + 1725))))();
}

uint64_t sub_C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v23 - 144) = v17 - (((v23 - 144) & 0x692BDBEF | ~((v23 - 144) | 0x692BDBEF)) ^ 0x8668534E) * v16 + 389;
  *(v23 - 112) = v19;
  *(v23 - 104) = v22;
  *(v23 - 128) = &a16;
  *(v23 - 120) = v22;
  *(v23 - 136) = v20;
  v24 = (*(v18 + 8 * (v17 | 0x81A)))(v23 - 144);
  return (*(v18 + 8 * ((992 * ((((v21 - 1037285081) < 0x7FFFFFFF) ^ (((v17 + 125) & 0xF5) - 108) ^ 3) & 1)) ^ (((v17 - 1829357955) & 0x6D09CBF5) - 446))))(v24);
}

uint64_t sub_CACC@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v13 = v5;
  HIDWORD(v14) = a1 ^ v9;
  LODWORD(v14) = a1;
  v15 = (v14 >> 27) + (a2 ^ v9 ^ v5 ^ v4) + (((v6 ^ 0x922DF0B7) + 1842483017) ^ ((v6 ^ 0x94B7152B) + 1799940821) ^ (((a4 + 1263) | 0x40) + (v6 ^ 0x5698ED6) - 90805531)) + 1252973040 + (((*(v8 + 4 * (a3 + v12)) ^ 0xE0187D43) + 535265981) ^ ((*(v8 + 4 * (a3 + v12)) ^ 0xDB47535E) + 616082594) ^ ((*(v8 + 4 * (a3 + v12)) ^ 0xA56D8641) + 1519548863));
  v16 = (v15 ^ 0xB7013516) & (2 * (v15 & 0xC6512557)) ^ v15 & 0xC6512557;
  v17 = ((2 * (v15 ^ 0x37213D30)) ^ 0xE2E030CE) & (v15 ^ 0x37213D30) ^ (2 * (v15 ^ 0x37213D30)) & (v11 + 102);
  v18 = v17 ^ 0x11100821;
  v19 = (v17 ^ 0x20401044) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xC5C0619C) & v18 ^ (4 * v18) & (v11 + 100);
  v21 = v19 ^ (v11 + 103) ^ (v20 ^ 0xC1400000) & (16 * v19);
  v22 = (16 * (v20 ^ 0x30301863)) & (v11 + 96) ^ 0xE0701807 ^ ((16 * (v20 ^ 0x30301863)) ^ 0x17018670) & (v20 ^ 0x30301863);
  v23 = (v21 << 8) & v11 ^ v21 ^ ((v21 << 8) ^ 0x70186700) & v22;
  return (*(v10 + 8 * ((1875 * (a3 + 1 == v7 + 24)) ^ a4)))(v15 ^ (2 * ((v23 << 16) & 0x71700000 ^ v23 ^ ((v23 << 16) ^ 0x18670000) & ((v22 << 8) & 0x71700000 ^ 0x1600000 ^ ((v22 << 8) ^ 0x70180000) & v22))) ^ 0xE7A27ED3, v13);
}

uint64_t sub_CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 144) = v30 + 896639297 * ((v35 - 1560950171 - 2 * ((v35 - 144) & 0xA2F5CAF5)) ^ 0xB65E5C8D) + 982;
  *(v35 - 136) = a13;
  *(v35 - 128) = a14;
  *(v35 - 120) = &a18;
  *(v35 - 112) = &a18;
  (*(v31 + 8 * (v30 + 2045)))(v35 - 144);
  *(v35 - 144) = v30 - ((((v35 - 144) | 0xB47A612) - (v35 - 144) + ((v35 - 144) & 0xF4B859E8)) ^ 0x1BFBD14C) * v33 + 389;
  *(v35 - 112) = a14;
  *(v35 - 104) = &a18;
  *(v35 - 128) = &a30;
  *(v35 - 120) = &a18;
  *(v35 - 136) = a13;
  v36 = (*(v31 + 8 * (v30 | 0x81A)))(v35 - 144);
  return (*(v31 + 8 * ((992 * (((v32 + (v30 ^ 0x2F5u) - 950 + v34 < 0x7FFFFFFF) ^ ((v30 ^ 0xF5) - 108) ^ 3) & 1)) ^ ((v30 ^ 0x2F5) - 446))))(v36);
}

uint64_t sub_CE90()
{
  v2 = STACK[0x428];
  STACK[0x3A8] = STACK[0x428];
  STACK[0x3F8] = 0;
  LODWORD(STACK[0x2B8]) = 411634585;
  STACK[0x210] = 0;
  LODWORD(STACK[0x324]) = 411634585;
  STACK[0x298] = 0;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 + 1)) & 1) * ((v0 - 1010) ^ 0x14B)) ^ v0)))();
}

uint64_t sub_CEF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  *v6 = 0;
  return (*(v7 + 8 * (((v8 == 0) * (((v5 + 1557) ^ 0x533) + v5 + 1557)) ^ v5)))(a1, a2, a3, a4, a5);
}

uint64_t sub_CF34@<X0>(int a1@<W8>)
{
  v5 = (a1 ^ 0xE654FADC) & (2 * (a1 & (v4 + 1))) ^ a1 & (v4 + 1);
  v6 = (a1 ^ 0x637C7BDE) << ((-15 * (v3 ^ 0x48)) ^ 0xE3);
  v7 = (v6 ^ 0x2BD11686) & (a1 ^ 0x637C7BDE) ^ v6 & 0x95E88B42;
  v8 = v7 ^ 0x94288941;
  v9 = (v7 ^ 0xC80B00) & (4 * v5) ^ v5;
  v10 = ((4 * v8) ^ 0x57A22D0C) & v8 ^ (4 * v8) & 0x95E88B40;
  v11 = (v10 ^ 0x15A00900) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x80488243)) ^ 0x5E88B430) & (v10 ^ 0x80488243) ^ (16 * (v10 ^ 0x80488243)) & 0x95E88B40;
  v13 = v11 ^ 0x95E88B43 ^ (v12 ^ 0x14888000) & (v11 << 8);
  v14 = (v13 << 16) & 0x15E80000 ^ v13 ^ ((v13 << 16) ^ 0xB430000) & (((v12 ^ 0x81600B43) << 8) & 0x15E80000 ^ 0x15600000 ^ (((v12 ^ 0x81600B43) << 8) ^ 0x688B0000) & (v12 ^ 0x81600B43));
  v15 = 1564307779 * (((&v17 | 0x31916400) - (&v17 & 0x31916400)) ^ 0xA69CA813);
  v19 = v3 - v15 + 127;
  v18 = v2;
  v17 = a1 ^ v15 ^ (2 * v14) ^ 0xA791925E;
  return (*(v1 + 8 * (v3 + 1542)))(&v17);
}

uint64_t sub_D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 120) = v16 - 1556366573 * ((v18 - 1026443482 - 2 * ((v18 - 136) & 0xC2D1B7AE)) ^ 0xA6359444) + 1840;
  *(v18 - 136) = v15;
  *(v18 - 128) = &a14;
  v19 = (*(v14 + 8 * (v16 ^ 0x8EA)))(v18 - 136);
  return (*(v14 + 8 * (((((v16 ^ (v17 == 1)) & 1) == 0) * (v16 - 407)) ^ v16)))(v19);
}

uint64_t sub_D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 104) = v17 - ((~((v19 - 128) | 0x4E0AC095) + ((v19 - 128) & 0x4E0AC095)) ^ 0x3245B57C) * v16 + 1238;
  *(v19 - 112) = &a15;
  *(v19 - 128) = a14;
  v20 = (*(v15 + 8 * (v17 ^ 0xA96)))(v19 - 128);
  return (*(v15 + 8 * ((((v18 + *(v19 - 120) + 686) > 0xF45266B0) * ((v17 - 532) ^ 0x19B)) ^ v17)))(v20);
}

uint64_t sub_D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  (*(a1 + 8 * (v41 + v42 + 1747)))(a20 + a21, 0x100004077774924);
  v44 = (*(a40 + 8 * (v42 ^ (v42 - 2235))))();
  *v43 = v44;
  v43[1] = 1812433253 * (v44 ^ (v44 >> 30)) + 1;
  return (*(a40 + 8 * (v42 ^ (v42 + 262) ^ 0x1E)))(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v40, a23, a24, a25, a26, a27);
}

uint64_t sub_D2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = 829 * (v19 ^ 0x25B);
  v23 = 210068311 * ((((2 * (v21 - 136)) | 0xAB282E62) - (v21 - 136) + 711715023) ^ 0x47422895);
  *(v21 - 136) = v23 + (v17 ^ 0x1F6F5FEF) + ((v22 ^ 0x3EDEB9A4) & (2 * v17)) - 369381516;
  *(v21 - 132) = (v19 + 1417) ^ v23;
  *(v21 - 128) = &a17;
  (*(v18 + 8 * (v19 + 1726)))(v21 - 136);
  *(v21 - 112) = v22 - 1785193651 * ((((v21 - 136) | 0x26C7B091) - (v21 - 136) + ((v21 - 136) & 0xD9384F68)) ^ 0xA5773A87) + 543;
  *(v21 - 120) = v20;
  *(v21 - 136) = a16;
  v24 = (*(v18 + 8 * (v22 + 731)))(v21 - 136);
  return (*(v18 + 8 * ((*(v21 - 128) <= ((v22 + 2021329027) & 0x8784F9BF) + 1941544885) | v22)))(v24);
}

uint64_t sub_D524@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v4 + v2 >= ((v5 + 917193098) & 0xC954BFFA ^ 0x7FFFF805))
  {
    v6 = 1919379964 - v3;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  *(result + 16) = 807769004;
  return result;
}

uint64_t sub_D590(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x228] -= 1616;
  LODWORD(STACK[0x3A0]) = a4 - 26;
  return (*(v4 + 8 * (((((v5 + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (v5 + 5))))();
}

uint64_t sub_D644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, int a19, char a20, int a21, int a22, uint64_t a23, char *a24, int *a25, unsigned int a26, char *a27, char *a28)
{
  a14 = 1773297654;
  v29 = *(a2 + 4);
  v30 = *(a2 + 8);
  v31 = 1556366573 * ((2 * (&a21 & 0xB13ED00) - &a21 + 1961628411) ^ 0x10083111);
  a26 = 388 - v31;
  a23 = v30;
  a24 = &a20;
  a21 = -145834977 - v31 + v29 + 540;
  a27 = &a15;
  a28 = &a17;
  a25 = &a14;
  v33 = (*(v28 + 18392))(&a21);
  return (*(v28 + 8 * ((1743 * (a22 == -1640847268)) ^ 0x11Bu)))(v33, a2);
}

uint64_t sub_D7E0()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x863)))();
  STACK[0x228] -= 16;
  return (*(v2 + 8 * (((v0 - 205) * (v1 == -1640847268)) ^ (v0 + 1495))))(v3);
}

uint64_t sub_D874()
{
  v3 = STACK[0x27C];
  v4 = (v3 ^ 0x9390C9F9) & (2 * (v3 & v1)) ^ v3 & v1;
  v5 = ((2 * (v3 ^ 0x93B01159)) ^ 0x8055F956) & (v3 ^ 0x93B01159) ^ (2 * (v3 ^ 0x93B01159)) & (((v2 + 255) | 0x500) + 1076557159);
  v6 = v5 ^ 0x402A04A9;
  v7 = v4 ^ 0x402AFCAB ^ (v5 ^ 0xF820) & (4 * v4);
  v8 = ((4 * v6) ^ 0xABF2AC) & v6 ^ (4 * v6) & 0x402AFCA8;
  v9 = v8 & 0x845310DC ^ v7 ^ (v8 ^ 0x2AF0AB) & ((16 * v7) ^ 0x86FCDA6C);
  v10 = ((16 * v8) ^ 0x86FC1A5C) & (v8 ^ 0x2AF0AB) ^ v8 & 0x845310DC;
  v11 = v10 & 0x845310DC ^ v9 ^ ((v9 << 8) ^ 0xACBF33DC) & (v10 ^ 0x210AB);
  v12 = ((v10 << 8) ^ 0x864398DC) & (v10 ^ 0x210AB) ^ v10 & 0x845310DC;
  *(STACK[0x4E0] + 4 * (((LODWORD(STACK[0x27C]) ^ (2 * (v11 ^ v12 & 0x45310DC ^ ((v11 << 16) ^ 0x78F810DC) & (v12 ^ 0x40280000) ^ ((v11 << 16) ^ 0x78F810DC) & 0x402A1088))) >> 2) ^ 0x14F2CD6D)) = v0;
  return sub_3DC90();
}

uint64_t sub_DB40@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 != 0) | (16 * (v5 != 0))) ^ (v2 + 989))))();
}

uint64_t sub_DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = (v11 + 4 * v7);
  v14 = v9 & 0x80000000;
  v15 = v7 + 1;
  v16 = *(v11 + 4 * v15);
  v17 = v13[397] ^ ((v16 & 0x7FFFFFFE | v14) >> 1);
  *v13 = (v17 + v10 - (((v8 - 1964127845) & 0x75123964 ^ (a7 + 2048)) & (2 * v17))) ^ *(v12 - 168 + 4 * (v16 & 1));
  return (*(a4 + 8 * ((51 * (v15 == 227)) | v8)))();
}

uint64_t sub_DD54@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21)
{
  STACK[0x3E0] = &STACK[0x540] + v21 + 2048;
  STACK[0x308] = &STACK[0x540] + v21 + 2176;
  STACK[0x280] = &STACK[0x540] + v21 + 2304;
  STACK[0x228] = v21 + 2432;
  LODWORD(STACK[0x3A0]) = v22;
  return (*(v23 + 8 * ((2596 * (*a21 == ((a1 - 214) ^ 0x1FD))) ^ a1)))();
}

uint64_t sub_DDBC(int8x16_t *a1, double a2, int8x16_t a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v13 = (v12 + v9);
  v14 = vaddq_s8(vsubq_s8(v13[1], vandq_s8(vaddq_s8(v13[1], v13[1]), a5)), a3);
  *a1 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a5)), a3);
  a1[1] = v14;
  return (*(v11 + 8 * (a9 + v10 - 48)))();
}

uint64_t sub_DED4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  HIDWORD(v19) = a1 ^ v15;
  LODWORD(v19) = a1;
  v20 = (a8 ^ v17) & (v8 ^ 0x2A5E48E3) ^ a8 & 0x29AD23A9;
  v21 = (v19 >> 27) + (((v9 ^ 0x7F3EE3BC) - 2134827964) ^ ((v9 ^ 0x7F65ABF5) - 2137369589) ^ ((v9 ^ 0x3A82303) - 61350659)) + (v20 & 0x67F1B9FA ^ 0xB80E46A5 ^ (v20 ^ 0xD7F3FF5E) & (v10 & 0x5D121BB7 ^ 0x991C4D07 ^ (a8 ^ 0x5EE170FD) & (v10 ^ (v15 + (v11 ^ 0x1EB) - 278)))) + (((*(v14 + 4 * (v12 + v18)) ^ 0xBFAD86CE) + 1079146802) ^ ((*(v14 + 4 * (v12 + v18)) ^ 0x145E3976) - 341719414) ^ ((*(v14 + 4 * (v12 + v18)) ^ 0x35C117E4) - 901847012)) + 1649494948;
  v22 = (v21 ^ 0x12572D52) & (2 * (v21 & 0x9A57419B)) ^ v21 & 0x9A57419B;
  v23 = ((2 * (v21 ^ 0x6D1AC56)) ^ 0x390DDB9A) & (v21 ^ 0x6D1AC56) ^ (2 * (v21 ^ 0x6D1AC56)) & a5;
  v24 = v23 ^ 0x84822445;
  v25 = (v23 ^ 0x18040888) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x721BB734) & v24 ^ (4 * v24) & a5;
  v27 = (v26 ^ 0x1002A500) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x8C8448C9)) ^ 0xC86EDCD0) & (v26 ^ 0x8C8448C9) ^ (16 * (v26 ^ 0x8C8448C9)) & (a5 - 12);
  v29 = v27 ^ (a5 + 1) ^ (v28 ^ 0x8806CC00) & (v27 << 8);
  return (*(v16 + 8 * ((491 * (v12 + 1 == v13 + 4)) ^ v11)))(v21 ^ (2 * ((v29 << 16) & 0x1C860000 ^ v29 ^ ((v29 << 16) ^ 0x6DCD0000) & (((v28 ^ 0x1480210D) << 8) & 0x1C860000 ^ 0x18020000 ^ (((v28 ^ 0x1480210D) << 8) ^ 0x6ED0000) & (v28 ^ 0x1480210D)))) ^ 0xB9A1F14B);
}

uint64_t sub_E298(uint64_t a1, __n128 a2)
{
  v4[-1] = a2;
  *v4 = a2;
  return (*(v5 + 8 * (((a1 == 0) * v3) ^ v2)))(a1 - 8);
}

uint64_t sub_E2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a13 = &a10;
  a15 = 210068311 * ((&a13 - 1622111530 - 2 * (&a13 & 0x9F508AD6)) ^ 0xD86B572) + 2202;
  v17 = (*(v16 + 18888))(&a13);
  return (*(v16 + 8 * ((1038 * (a14 == ((v15 + 692) ^ 0x34C))) ^ 0x34C)))(v17);
}

uint64_t sub_E924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = ((v13 + 3) ^ (v15 + 1224)) + a13;
  if (v16 < 0)
  {
    v16 = -v16;
  }

  return (*(v14 + 8 * ((31 * ((v16 ^ 0x3F7FFFFE) - 105663232 + ((2 * v16) & 0x7EFFFFFC) + v15 > ((((v13 - 128) | 0x80) ^ 0xFFFFF867) + ((2 * (v13 + 3)) ^ 0xAC6)))) ^ (v13 + 3))))(2572116187);
}

uint64_t sub_EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = (v13 ^ 0x6AF) - a5 - 618;
  v16 = 1388665877 * (((((v14 - 128) | 0xE6B5D608) ^ 0xFFFFFFFE) - (~(v14 - 128) | 0x194A29F7)) ^ 0x94E74B1B);
  *(v14 - 128) = v16 + v13 + 251;
  *(v14 - 124) = (a12 - 386547081) ^ v16;
  *(v14 - 120) = v14 - 228;
  v17 = (*(v12 + 8 * (v13 ^ 0x97E)))(v14 - 128);
  v18 = *(v14 - 160);
  *(v14 - 228 + (v18 & 0x3F)) = -71;
  return (*(v12 + 8 * ((((v18 & 0x3Fu) > 0x37) * (v15 ^ 0xC77BEA86)) ^ v13)))(v17);
}

uint64_t sub_EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40)
{
  v41 = (((v40 ^ 0x89C5EBFD) + 1983517699) ^ ((v40 ^ 0xD612E21F) + 703405537) ^ ((v40 ^ 0x5C2462A8) - 1545888424)) + (((a40 ^ 0x5E28552C) - 1579701548) ^ ((a40 ^ 0xBD4E610E) + 1118936818) ^ ((a40 ^ 0xE0955F68) + 527081624)) + 2004333009;
  v42 = (v41 ^ 0x574F108A) & (2 * (v41 & 0x906F24C3)) ^ v41 & 0x906F24C3;
  v43 = ((2 * (v41 ^ 0x771F588A)) ^ 0xCEE0F892) & (v41 ^ 0x771F588A) ^ (2 * (v41 ^ 0x771F588A)) & 0xE7707C48;
  v44 = v43 ^ 0x21100449;
  v45 = (v43 ^ 0xC2603000) & (4 * v42) ^ v42;
  v46 = ((4 * v44) ^ 0x9DC1F124) & v44 ^ (4 * v44) & 0xE7707C48;
  return a25((((v46 ^ 0x85407000) & (16 * v45) ^ v45 ^ 0xE7707C49 ^ (((16 * (v46 ^ 0x62300C49)) ^ 0x7707C490) & (v46 ^ 0x62300C49) ^ (16 * (v46 ^ 0x62300C49)) & 0xE7707C40 ^ 0x67004400) & (((v46 ^ 0x85407000) & (16 * v45) ^ v45) << 8)) << 16) ^ 0x7C490000, 3882908744, a23, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_F3A8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 20) - 6989 * (((result ^ 0x1865) & 0xA941 | ~(result ^ 0x1865 | 0xA941)) ^ 0xC4CD);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1FB;
  v3 = v2 ^ 0xFB;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -1071543622;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xEC3EC0C364B6484BLL;
    *(v1 + 80) = 0x13C13F3C9B49B7B4;
    *(v1 + 92) = v4;
  }

  *result = 1822826709;
  return result;
}

uint64_t sub_F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 - 1679052139 < a12 + 1206118371;
  if ((a12 + 1206118371) < 0x9BEBB295 != v12 > (v14 ^ 0x41Au) + 1679052059)
  {
    v15 = (a12 + 1206118371) < 0x9BEBB295;
  }

  return (*(v13 + 8 * (v14 ^ (8 * v15))))();
}

uint64_t sub_F590(uint64_t result)
{
  v1 = 1564307779 * ((2 * (result & 0x488664F61B1B0D8ALL) - result - 0x488664F61B1B0D8BLL) ^ 0x92BA6F7373E93E66);
  v2 = *(result + 24);
  v3 = v2 + v1;
  v4 = *(result + 4) + v1;
  v5 = *(result + 32) - v1;
  v6 = *(result + 40);
  v7 = v6 + v1;
  v8 = *result - v1;
  v9 = *(result + 8) + v1;
  v10 = v3 >= v7;
  v11 = v2 != v6;
  if (v5)
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  *(result + 12) = v12 ^ v9;
  return result;
}

void sub_F638(uint64_t a1)
{
  v1 = 1388665877 * (((a1 | 0xD676E55F) - (a1 & 0xD676E55F)) ^ 0x5BDB87B3);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_F70C@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v1) ^ v4) + v2;
  *(*(a1 + 8) + 4 * v1) = v11 + v6 - (v8 & (2 * v11));
  return (*(v7 + 8 * (((v10 > v1 + 1) ^ v5) & 1 | v3)))();
}

uint64_t sub_F75C()
{
  v6 = (*(v2 + 8 * (((v0 - 1471) | 0xC0) + 2147)))(*v3, *v1, *(v1 + 8) + 2 * (((v0 - 1471) | 0xC0) ^ 0x155u) - 493474571);
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return sub_F7A0(v6);
}

uint64_t sub_F8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = 1564307779 * ((((v14 - 144) | 0xEFC9A7B9) - (v14 - 144) + ((v14 - 144) & 0x10365840)) ^ 0x78C46BAA);
  *(v14 - 128) = v15 + v13 + 528;
  *(v14 - 124) = v15 + v10 + ((3 * (v13 ^ 0x5B)) ^ 0xEDC775FE);
  *(v14 - 120) = v12;
  *(v14 - 136) = a10;
  (*(v11 + 8 * (v13 + 1811)))(v14 - 144);
  return sub_3A758();
}

uint64_t sub_F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v20 = 210068311 * ((~((v19 - 136) | 0x643937D7) + ((v19 - 136) & 0x643937D7)) ^ 0x910F78C);
  *(v19 - 136) = (v17 ^ 0x8B7F0A58) + (v16 ^ 0x7DEBFFFF) + ((2 * v16) & 0xFBD7FFFE) + v20;
  *(v19 - 132) = (v17 + 678) ^ v20;
  *(v19 - 128) = &a14;
  (*(v15 + 8 * (v17 + 987)))(v19 - 136);
  *(v19 - 112) = (v17 ^ 0xBA) - ((v19 - 136) ^ 0x83B08A16) * v18 + 787;
  *(v19 - 120) = &a12;
  *(v19 - 136) = a11;
  v21 = (*(v15 + 8 * (v17 ^ 0xC69)))(v19 - 136);
  return (*(v15 + 8 * ((948 * (*(v19 - 128) > v14 + (((v17 ^ 0xBA) + 1274011765) & 0xB4101BAD) - 425)) ^ v17 ^ 0xBA)))(v21);
}

uint64_t sub_FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = (v16 - 176) | 0x442;
  v23 = 210068311 * ((((2 * v19) | 0xBA8DC71E) - v19 - 1564926863) ^ 0xCF90DC2B);
  *(v21 - 128) = v18;
  *(v21 - 136) = v23 + (v20 ^ 0xEDFB7F6B) + ((v20 << (((v16 + 80) | 0x42) ^ 0x47)) & 0xDBF6FED6) + 460296184;
  *(v21 - 132) = (v16 + 1582) ^ v23;
  (*(v17 + 8 * (v16 + 1891)))(v21 - 136);
  *(v21 - 136) = a16;
  *(v21 - 120) = a15;
  *(v21 - 112) = v22 - 1785193651 * ((1849958571 - (v19 | 0x6E4420AB) + (v19 | 0x91BBDF54)) ^ 0x120B5542) + 851;
  v24 = (*(v17 + 8 * (v22 + 1039)))(v21 - 136);
  return (*(v17 + 8 * ((28 * (*(v21 - 128) > ((v22 - 792) ^ 0x7BAu) + 1941545694)) ^ v22)))(v24);
}

uint64_t sub_FBF8()
{
  v9.val[0].i64[0] = (v4 - v5 - 1) & 0xF;
  v9.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v9.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v9.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v9.val[2].i64[0] = (v4 - v5 + 11) & 0xF;
  v9.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v9.val[3].i64[0] = (v4 + v6 - 1 - v5 - 110) & 0xF;
  v9.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(*(v7 - 120) + -8 - v5 + v4) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v0 + -8 - v5 + v4), *(v3 + v9.val[0].i64[0] - 7)), veor_s8(*(v9.val[0].i64[0] + v2 - 2), *(v9.val[0].i64[0] + v1 - 5)))), 0x3939393939393939), vmul_s8(*&vqtbl4q_s8(v9, xmmword_A91E0), 0x5959595959595959)));
  return (*(*(v7 - 160) + 8 * ((245 * (8 - (v4 & 0x18) == -v5)) ^ v6)))(xmmword_A91E0);
}

uint64_t sub_FE1C(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = vld1q_dup_f32(v10);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  a6.i64[0] = *(v10 + 4);
  a6.i32[2] = *(v10 + 12);
  v15 = vextq_s8(v12, a6, 0xCuLL);
  v16 = a6;
  v16.i32[3] = *(v10 + 16);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, vnegq_f32(v14)), vandq_s8(v15, v13)), 1uLL), *(v10 + 1588));
  v15.i32[0] = *(v11 - 168 + 4 * (*(v10 + 4) & 1));
  v15.i32[1] = *(v11 - 168 + 4 * (*(v10 + 8) & 1));
  v15.i32[2] = *(v11 - 168 + 4 * (*(v10 + 12) & 1));
  v15.i32[3] = *(v11 - 168 + 4 * (v16.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), vdupq_n_s32(0xEF6AC34A))), vdupq_n_s32(0x77B561A5u)), v15);
  return (*(a10 + 9944))();
}

uint64_t sub_FE28()
{
  v12 = (v3 + 1656) ^ (143681137 * (&v10 ^ 0x613AB748));
  v11 = &v8;
  v13 = v9;
  (*(v2 + 8 * (v3 + 2252)))(&v10);
  v4 = (&v10 ^ 0x2ACB2A7A) * v0;
  v10 = v4 + v3 + 1454;
  v11 = v9;
  (*(v2 + 8 * (v3 + 2190)))(&v10);
  if (v12 == v1 + (v3 ^ 0x15D) - 495)
  {
    v5 = v8;
  }

  else
  {
    v5 = v12;
  }

  v11 = v9;
  v10 = (v3 + 364) ^ v4;
  (*(v2 + 8 * (v3 ^ 0x9EDu)))(&v10);
  v11 = v7;
  v10 = ((v3 ^ 0x15D) + 47) ^ ((((&v10 | 0x575BE79A) - &v10 + (&v10 & 0xA8A41860)) ^ 0x7D90CDE0) * v0);
  (*(v2 + 8 * (v3 ^ 0x9EDu)))(&v10);
  return v5 ^ v1;
}

uint64_t sub_FF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, char a62)
{
  if (v62 == 5 || v62 == 8)
  {
    LOBYTE(STACK[0x4FF]) = LOBYTE(STACK[0x52F]) - ((2 * LOBYTE(STACK[0x52F])) & 0x72) + 57;
    LOBYTE(STACK[0x4FE]) = LOBYTE(STACK[0x52E]) - ((2 * LOBYTE(STACK[0x52E])) & 0x72) + 57;
    LOBYTE(STACK[0x4FD]) = LOBYTE(STACK[0x52D]) - (((a62 ^ 0x30) - 2) & (2 * LOBYTE(STACK[0x52D]))) + 57;
    LOBYTE(STACK[0x4FC]) = LOBYTE(STACK[0x52C]) - ((2 * LOBYTE(STACK[0x52C])) & 0x72) + 57;
    LOBYTE(STACK[0x4FB]) = LOBYTE(STACK[0x52B]) - ((2 * LOBYTE(STACK[0x52B])) & 0x72) + 57;
    LOBYTE(STACK[0x4FA]) = LOBYTE(STACK[0x52A]) - ((2 * LOBYTE(STACK[0x52A])) & 0x72) + 57;
    LOBYTE(STACK[0x4F9]) = LOBYTE(STACK[0x529]) - ((2 * LOBYTE(STACK[0x529])) & 0x72) + 57;
    LOBYTE(STACK[0x4F8]) = LOBYTE(STACK[0x528]) - ((2 * LOBYTE(STACK[0x528])) & 0x72) + 57;
    LOBYTE(STACK[0x4F7]) = LOBYTE(STACK[0x527]) - ((2 * LOBYTE(STACK[0x527])) & 0x72) + 57;
    LOBYTE(STACK[0x4F6]) = LOBYTE(STACK[0x526]) - ((2 * LOBYTE(STACK[0x526])) & 0x72) + 57;
    LOBYTE(STACK[0x4F5]) = LOBYTE(STACK[0x525]) - ((2 * LOBYTE(STACK[0x525])) & 0x72) + 57;
    LOBYTE(STACK[0x4F4]) = LOBYTE(STACK[0x524]) - ((2 * LOBYTE(STACK[0x524])) & 0x72) + 57;
    LOBYTE(STACK[0x4F3]) = LOBYTE(STACK[0x523]) - ((2 * LOBYTE(STACK[0x523])) & 0x72) + 57;
    LOBYTE(STACK[0x4F2]) = LOBYTE(STACK[0x522]) - ((2 * LOBYTE(STACK[0x522])) & 0x72) + 57;
    LOBYTE(STACK[0x4F1]) = LOBYTE(STACK[0x521]) - ((2 * LOBYTE(STACK[0x521])) & 0x72) + 57;
    LOBYTE(STACK[0x4F0]) = LOBYTE(STACK[0x520]) - ((2 * LOBYTE(STACK[0x520])) & 0x72) + 57;
  }

  else
  {
    LOBYTE(STACK[0x4FF]) = STACK[0x50F];
    LODWORD(STACK[0x4FB]) = STACK[0x50B];
    STACK[0x4F3] = STACK[0x503];
    LOWORD(STACK[0x4F1]) = STACK[0x501];
    LOBYTE(STACK[0x4F0]) = STACK[0x500];
  }

  return sub_1014C();
}

uint64_t sub_1014C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = STACK[0x3D8];
  v76 = 1388665877 * ((((v74 - 192) | 0xFF4F6724) - ((v74 - 192) | 0xB098DB) + 11573467) ^ 0x72E205C8);
  *(v74 - 140) = (v70 & 0xFB5ED7BC) - v76 + ((v72 - 1554) | 0x85) + (v71 ^ 0x7DAF6BDE) - 136997309;
  *(v74 - 136) = &STACK[0x4F0];
  *(v69 + 48) = 21 * ((((v74 + 64) | 0x24) - ((v74 + 64) | 0xDB) - 37) ^ 0xC8) + 43;
  *(v74 - 152) = v72 - v76 - 1437;
  *(v74 - 148) = ((a68 ^ 0xCAD7D5BC) + 2099871320 + ((2 * a68) & 0x95AFAB78)) ^ v76;
  *(v74 - 192) = &STACK[0x28C];
  *(v74 - 176) = &STACK[0x510];
  *(v74 - 168) = v75;
  *(v74 - 160) = v68;
  v77 = (*(v73 + 8 * (v72 + 791)))(v74 - 192);
  v78 = *(v74 - 184);
  LODWORD(STACK[0x360]) = v78;
  return (*(v73 + 8 * ((226 * (v78 == -1640847268)) ^ v72)))(v77);
}

uint64_t sub_1031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, _DWORD *a13, unsigned int a14, int *a15, unsigned int a16, _DWORD *a17)
{
  a17 = a13;
  a16 = (v18 + 828) ^ (143681137 * (((&a14 | 0x4912316C) - &a14 + (&a14 & 0xB6EDCE90)) ^ 0x28288624));
  a15 = &a12;
  (*(v17 + 8 * (v18 + 1424)))(&a14);
  a15 = a13;
  a14 = v18 + ((&a14 & 0x1792C15 | ~(&a14 | 0x1792C15)) ^ 0xD44DF990) * v19 + 626;
  (*(v17 + 8 * (v18 + 1362)))(&a14);
  a15 = a13;
  a14 = (v18 - 464) ^ ((((&a14 | 0x56FA39E2) - (&a14 & 0x56FA39E2)) ^ 0x7C311398) * v19);
  v20 = (*(v17 + 8 * (v18 ^ 0xAB1)))(&a14);
  return sub_1044C(v20);
}

uint64_t sub_1044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14)
{
  a14 = a10;
  a13 = (v16 + 79) ^ ((&a13 ^ 0x2ACB2A7A) * v15);
  v17 = (*(v14 + 8 * (v16 ^ 0x890)))(&a13);
  return sub_1048C(v17);
}

void sub_104C8(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (896639297 * ((((2 * a1) | 0xCC5E7DA6) - a1 + 433111341) ^ 0xF284A8AB));
  v2 = *(a1 + 24);
  v4 = 0;
  v7 = v1 - 1224077981 + 1380333833 * ((((2 * &v6) | 0xCC80779A) - &v6 - 1715485645) ^ 0xD8129047);
  v6 = &v4;
  v3 = *(&off_C1600 + (v1 ^ 0x397)) - 8;
  (*&v3[8 * v1 + 12608])(&v6);
  v5 = 0;
  v6 = &v5;
  v7 = v1 - 1224077981 + 1380333833 * ((&v6 & 0x8505F65A | ~(&v6 | 0x8505F65A)) ^ 0xC4A8A22F);
  (*&v3[8 * v1 + 12608])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_106A8@<X0>(int8x16_t *a1@<X2>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27)
{
  v30 = v27 - 390;
  v31 = (&a27 + a2);
  v32 = vaddq_s8(vsubq_s8(a1[1], vandq_s8(vaddq_s8(a1[1], a1[1]), a3)), a4);
  *v31 = vaddq_s8(vsubq_s8(*a1, vandq_s8(vaddq_s8(*a1, *a1), a3)), a4);
  v31[1] = v32;
  LODWORD(v31) = (v30 ^ 0x468) == (v28 & 0x60);
  return (*(v29 + 8 * (((8 * v31) | (32 * v31)) ^ v30)))();
}

uint64_t sub_107D4(uint64_t a1, int a2)
{
  v8 = v2 < v4;
  if (v8 == v3 + 1 > (v5 + 2))
  {
    v8 = a2 + v3 + 2 < v2;
  }

  return (*(v6 + 8 * ((157 * !v8) ^ v7)))();
}

uint64_t sub_10848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) + 1440987477;
  v5 = v4 > 0x6E6CC4EF;
  if (v4 < 0x6E6CC4EE)
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((1078 * v5) ^ 0x3DFu)))();
}

uint64_t sub_108DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  LODWORD(a51) = a62 - 324;
  (*(v64 + 8 * SHIDWORD(a35)))(a36 + 16, 0x100004077774924);
  v65 = (*(v64 + 8 * (a62 + 2049)))();
  *v63 = v65;
  v66 = 1812433253 * (v65 ^ (v65 >> 30)) + 1;
  v63[1] = v66;
  return (*(v64 + 8 * (((a62 - 324) | 0x140) ^ (8 * ((((((a62 - 324) | 0x140) + 781139390) ^ 1) & 1) == 0)))))(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, v62, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_109E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  v46 = v44[396] ^ ((*v44 & 0x7FFFFFFE | ((v43 - a5 + 383) ^ 0xE1C8ABA2) & v44[623]) >> 1);
  v44[623] = (a6 + v43 - 240 + v46 - (a7 & (2 * v46)) + 367834627) ^ *(v45 - 168 + 4 * (*v44 & 1));
  return (*(a4 + 8 * ((a43 < 0x270) | v43)))();
}

uint64_t sub_10A64()
{
  v3 = *(v0 + 16) - 1586401263;
  v4 = *(v0 + 12) - 468731580;
  v5 = v4 < ((48 * (v2 ^ 0x20A)) ^ 0x1798F25u);
  v6 = (v3 < 0x1798945) ^ v5;
  v7 = v3 < v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v1 + 8 * ((121 * v5) ^ v2)))();
}

uint64_t sub_10ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = STACK[0x26C];
  v36 = 896639297 * ((-196257673 - ((v34 - 192) ^ 0x90E6BAA | 0xF44D5877) + ((v34 - 192) ^ 0x90E6BAA | 0xBB2A788)) ^ 0x16175A5A);
  v37 = (*(a29 + 52) ^ ((*(a29 + 52) ^ 0x6BFCA9B7) - 23861054) ^ ((*(a29 + 52) ^ 0x83A54D0) - 1655368281) ^ (((v33 + 1509209432) & 0xA60B4FFB ^ 0xE1C6F89B) + (*(a29 + 52) ^ 0x74A9BE19)) ^ (((((2 * v33) ^ 0x46A) + 2113928371) ^ *(a29 + 52)) - 393167742) ^ 0xE10DDFB5) - v36;
  *(v34 - 168) = v30;
  *(v34 - 160) = v37;
  *(v34 - 156) = (v35 ^ 0x5EFBEBEF) - v36 + ((2 * v35) & 0xBDF7D7DE) - 9603104;
  *(v34 - 192) = &STACK[0x530];
  *(v34 - 184) = v29;
  *(v34 - 152) = (a20 ^ 0xAC7AA8FA) - v36;
  *(v34 - 148) = v33 - v36 - 621;
  v38 = (*(v32 + 8 * (v33 + 1794)))(v34 - 192);
  v39 = *(v34 - 176);
  LODWORD(STACK[0x360]) = v39;
  return (*(v32 + 8 * ((1224 * (v39 == v31)) ^ v33)))(v38);
}

uint64_t sub_10C84@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v6 = (v3 + 327) ^ (50899313 * ((2 * ((&v6 ^ 0x5710832) & 0x6728D46A) - (&v6 ^ 0x5710832) - 1730729067) ^ 0xB76D09DD));
  result = (*(v4 + 8 * (v3 + 2184)))(&v6);
  *(v1 + 8) = v2;
  return result;
}

void sub_10D30(uint64_t a1)
{
  v1 = *(a1 + 16) + 1556366573 * ((a1 + 187305641 - 2 * (a1 & 0xB2A0EA9)) ^ 0x6FCE2D43);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LODWORD(a49) = 0;
  v55 = *STACK[0x408];
  STACK[0x3F0] = v54;
  LODWORD(STACK[0x454]) = 191388487;
  LODWORD(STACK[0x2BC]) = v55;
  STACK[0x230] = a41;
  LODWORD(STACK[0x404]) = 0;
  LODWORD(STACK[0x35C]) = -1797553105;
  return sub_4785C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a41, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v37 = (LODWORD(STACK[0x2DC]) ^ 0x772DFFD7) - 86022020 + ((2 * LODWORD(STACK[0x2DC])) & 0xEE5BFFAE);
  v38 = 1785193651 * (((((v36 - 192) | 0x8A78B2D6) ^ 0xFFFFFFFE) - (~(v36 - 192) | 0x75874D29)) ^ 0xF637C73F);
  *(v36 - 184) = STACK[0x338];
  *(v36 - 176) = v32;
  *(v36 - 168) = a30;
  *(v36 - 152) = a31;
  *(v36 - 144) = (v35 - 542397189) ^ v38;
  *(v36 - 140) = v38 + v31 + 686653456;
  *(v36 - 160) = v37 ^ v38;
  v39 = (*(v34 + 8 * (v35 ^ 0xB81)))(v36 - 192);
  v40 = *(v36 - 192);
  LODWORD(STACK[0x360]) = v40;
  return (*(v34 + 8 * ((456 * (v40 == ((v35 - 339) ^ (v33 + 188)))) ^ v35)))(v39);
}

uint64_t sub_112F4(uint64_t a1, int a2)
{
  v7 = v3 + v4 + ((((a2 + 13949607) ^ v6) - 13951147) ^ ((v6 ^ 0x208E3098) - 546189464) ^ ((((a2 ^ 0x76C) - 1100450041) ^ v6) + 1100449681)) + 199965382;
  v8 = v5 + 1317635057;
  v9 = (v8 < 0x6BF353F2) ^ (v7 < 0x6BF353F2);
  v10 = v7 > v8;
  if (v9)
  {
    v10 = v7 < 0x6BF353F2;
  }

  return (*(v2 + 8 * ((13 * v10) ^ a2)))();
}

uint64_t sub_11414(uint64_t a1)
{
  v1 = 1388665877 * ((((2 * a1) | 0x4889DF1C) - a1 - 608497550) ^ 0xA9E98D62);
  v2 = *(a1 + 32) + v1;
  v3 = *a1 - v1;
  v4 = *(*(a1 + 24) + 4);
  v6 = v4 - 959689982;
  v5 = v4 - 959689982 < 0;
  v7 = 959689982 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_C1600 + v2 - 1855) + ((47 * (((v2 + 29) ^ ((v3 - 1050600708) < (4 * v7))) & 1)) ^ v2) - 1))();
}

uint64_t sub_11680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, int *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v66 = (a60 + 4 * v63);
  v67 = *v66;
  v68 = *(v65 + 4 * v63);
  LODWORD(v66) = -1174920269 * ((*(*a53 + (*a56 & 0xFFFFFFFFD8475BD4)) ^ v66) & 0x7FFFFFFF);
  LODWORD(v66) = v66 ^ (v66 >> 16);
  v69 = (-1174920269 * v66) >> ((v61 - 118) ^ 0xD6);
  v70 = 4 * v69;
  *(v65 + 4 * v63) = v67 ^ 0x1DF5A270 ^ *(*(&off_C1600 + v61 - 180) + v70 - 8) ^ *(*(&off_C1600 + v61 - 156) + v69 + 5) ^ *(*(&off_C1600 + a47) + v70 - 4) ^ (598933504 * v66) ^ (-1174920269 * v66) ^ (v68 + 502637168 - 2 * (((v68 ^ (v61 - 51)) ^ (((-((~(v61 - 321) + v63) ^ (v60 - (v61 - 321))) | (~(v61 - 321) + v63)) & 0x8000000000000000) != 0)) & 0xF ^ v68 & 0x1DF5A27F)) ^ (-857024511 * v69);
  return (*(v64 + 8 * ((2606 * (((3 * ((v61 + 394) ^ 0x2A2)) ^ 0xFFFFFEBB) + v62 == (v61 ^ 0x144))) ^ (v61 + 394))))();
}

uint64_t sub_1184C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = v5 - 1;
  STACK[0x310] = v8;
  *(a1 + v8) = ((v2 + 1) ^ v3 ^ v6) * (v2 + 18);
  return (*(v7 + 8 * (((STACK[0x310] == 0) * v4) ^ a2)))();
}

uint64_t sub_118B4(uint64_t a1)
{
  v2 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0x5A3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = 1785193651 * ((((&v7 | 0x7929BB80) ^ 0xFFFFFFFE) - (~&v7 | 0x86D6447F)) ^ 0x566CE69);
  v11 = *(a1 + 8);
  v12 = v2 - 68670000 - v5;
  v8 = v4;
  v9 = v3;
  v7 = 126794179 - v5;
  result = (*(*(&off_C1600 + (v2 ^ 0x417D936)) + v2 - 68669557))(&v7);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_119F0(uint64_t result)
{
  v1 = 843532609 * (((result | 0x4C1FA9840314A0D8) - (result | 0xB3E0567BFCEB5F27) - 0x4C1FA9840314A0D9) ^ 0xD18F9DB113A8D786);
  v2 = *(result + 4) ^ v1;
  v3 = *(result + 24) ^ v1;
  v4 = *(result + 16) ^ v1;
  v5 = *(result + 40) - v1;
  v6 = *(result + 12) - v1;
  v7 = *(result + 32) - v1;
  v8 = v3 == v5;
  v9 = v3 > v5;
  v10 = v8;
  if (v2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v6;
  }

  else
  {
    v12 = v4;
  }

  *(result + 8) = v12 ^ v7;
  return result;
}

void sub_11A94(_DWORD *a1)
{
  v1 = *a1 + 843532609 * ((-2 - ((a1 | 0xA82B26FE) + (~a1 | 0x57D4D901))) ^ 0x4768AE5F);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_11C64@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, _DWORD *a50)
{
  v57 = a2 - 681;
  *a40 = v50;
  v58 = ((v52 ^ (v52 >> 11)) << 7) & 0x9D2C5680 ^ v52 ^ (v52 >> 11);
  v59 = (a2 - 272238182) & (v58 << 15) ^ v58 ^ (((a2 - 272238182) & (v58 << 15) ^ v58) >> 18);
  v60 = (v54 + (v56 - 1));
  v61 = -1174920269 * ((*(*a47 + (*a50 & 0x23D37208)) ^ v60) & ((162 * (v57 ^ 0x3BF)) ^ 0x7FFFFEBB));
  v62 = -1174920269 * ((v61 >> (v57 ^ 0xAD)) ^ v61);
  LOBYTE(v62) = *(*(v53 + 8 * (v57 - 876)) + (v62 >> 24) - 12) ^ v59 ^ *(*(v53 + 8 * (v57 & 0x2A957816)) + (v62 >> 24) - 4) ^ *((v62 >> 24) + *(v53 + 8 * (v57 ^ 0x3DD)) + 1) ^ v62;
  *v60 = (-113 * BYTE3(v62)) ^ v62;
  return (*(v55 + 8 * ((1337 * (v56 == (v62 != (-113 * BYTE3(v62))))) ^ v57)))(a1 - v51);
}

uint64_t sub_11DA4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v8 = *(result + 40);
  v7 = *(result + 48);
  v9 = *(result + 16);
  *a2 = v4;
  *v9 = v3;
  *v8 = v5;
  *v7 = v2 + v6;
  *(result + 4) = -1640847268;
  return result;
}

uint64_t sub_11E38@<X0>(int a1@<W8>)
{
  v8 = (v2 - 2);
  v9 = v1 + 2;
  *v8 = (v6 + v9) * (v9 ^ v4);
  *(v8 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v5) ^ a1)))();
}

uint64_t sub_11ED4@<X0>(char a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  v29 = a2 ^ 0x192u;
  v30 = &a25 + v27;
  *v30 = v25;
  v30[1] = v26;
  v30[2] = v28;
  *(&a25 + v27 + v29 - 39) = a1;
  return sub_159B8(v29, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_11F4C@<X0>(char a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10.i64[0] = 0x7272727272727272;
  v10.i64[1] = 0x7272727272727272;
  v11.i64[0] = 0x3939393939393939;
  v11.i64[1] = 0x3939393939393939;
  v12 = vaddq_s8(vsubq_s8(*(a6 + 17), vandq_s8(vaddq_s8(*(a6 + 17), *(a6 + 17)), v10)), v11);
  *(a2 + v8 - 252) = vaddq_s8(vsubq_s8(*(a6 + 1), vandq_s8(vaddq_s8(*(a6 + 1), *(a6 + 1)), v10)), v11);
  *(a2 + v8 - 252 + 16) = v12;
  return (*(v7 + 8 * ((((a1 & 0x60) != 32) * ((v6 - 1388421458) & 0x46AD73FB ^ 0x3E1)) ^ (v9 + v6 + 166))))();
}

uint64_t sub_11FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v12 = (v10 + 4 * v8);
  v13 = v8 + 1;
  *v12 = *(v9 + 4 * (*(v10 + 4 * v13) & 1)) ^ v12[397] ^ ((*(v10 + 4 * v13) & 0x7FFFFFFE | v7 & 0x80000000) >> ((v6 + 76) ^ a5));
  return (*(v11 + 8 * (((v13 == 227) * a6) ^ v6)))();
}

uint64_t sub_12048@<X0>(int a1@<W8>)
{
  *v4 = v10 ^ v5;
  v6 = (a1 - 256) | 0x101;
  v12 = v9;
  v11 = (a1 - 254) ^ (((&v11 & 0x90AA9AE2 | ~(&v11 | 0x90AA9AE2)) ^ 0x459E4F67) * v1);
  (*(v3 + 8 * (a1 + 1603)))(&v11);
  v11 = (v6 - 255) ^ (50899313 * ((&v11 + 1826238749 - 2 * (&v11 & 0x6CDA311D)) ^ 0x46111B67));
  v12 = v8;
  result = (*(v3 + 8 * (v6 ^ 0xA42)))(&v11);
  *(v2 + 8) = -1640847268;
  return result;
}

uint64_t sub_122AC()
{
  v4 = v1 + 306;
  v6 = (v0 ^ 0x99F073FA) < ((v1 + 306) ^ 0x27Eu) || STACK[0x2C0] - v2 < ((257 * (v4 ^ 0x271u)) ^ 0x727uLL);
  return (*(v3 + 8 * ((173 * v6) ^ v4)))();
}

uint64_t sub_123FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  STACK[0x5B8] = v42 + 3;
  *(v44 - 152) = v41 + v42;
  *(v44 - 148) = v42 ^ v41 ^ 0x71;
  *(v44 - 124) = v42 + 55969938;
  *(v44 - 120) = v42 ^ v41 ^ 0x29;
  *(v44 - 116) = 1 - v42;
  STACK[0x5B0] = (v43 + 1) - v42;
  v45 = (*(v40 + 8 * (a35 ^ 0x61C8ABA2)))(v44 - 152);
  return (*(a40 + 8 * *(v44 - 128)))(v45);
}

uint64_t sub_1251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v28 = *(v26 - 156);
  if (v28 == 2)
  {
    return (*(v25 + 8 * ((38 * (*(v26 - 160) != 0)) ^ (v27 + a6 + 966))))(a1, a11, a3, 411634585);
  }

  if (v28 == 1)
  {
    return (*(v25 + 8 * ((133 * (*(v26 - 160) == 0)) ^ (v27 + a6 + 535))))(a11, a2, a3, 411634585);
  }

  v30 = 3 * ((a6 + 29) ^ 0xC143111);
  *(v26 - 161) = (&a25 ^ 0xBA) * (&a25 + 17);
  *(v26 - 162) = (&a25 ^ 0xD7 ^ ((v30 + 67) | 0x6C)) * (&a25 + 18);
  return (*(v25 + 8 * (v30 ^ 0x5Du)))();
}

uint64_t sub_12650@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) + 774488415;
  v5 = v2 + 774488415 < (((109 * (a1 ^ 0x238)) ^ 0xE75D7451) + ((a1 - 875221108) & 0x342ACF7F));
  v6 = (v4 < -413305251) ^ v5;
  v7 = v2 + 774488415 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v3 + 8 * ((111 * v5) ^ a1)))();
}

uint64_t sub_1281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v33 - 128) = (v31 + 535) ^ (1785193651 * ((v33 - 1365952636 - 2 * ((v33 - 144) & 0xAE953814)) ^ 0x2D25B202));
  *(v33 - 144) = v30;
  *(v33 - 136) = v32;
  (*(v29 + 8 * (v31 + 2044)))(v33 - 144);
  v34 = a27;
  *(v33 - 144) = v31 + 391 - 843532609 * ((2 * ((v33 - 144) & 0x688B8848) - (v33 - 144) - 1753974858) ^ 0x87C800E8);
  *(v33 - 112) = v30;
  *(v33 - 104) = &a24;
  *(v33 - 136) = &a26;
  *(v33 - 128) = &a24;
  *(v33 - 120) = v34;
  (*(v29 + 8 * (v31 + 2076)))(v33 - 144);
  *(v33 - 144) = v31 + 391 - 843532609 * ((445419814 - ((v33 - 144) | 0x1A8C9126) + ((v33 - 144) | 0xE5736ED9)) ^ 0xF5CF1987);
  *(v33 - 112) = v30;
  *(v33 - 104) = &a24;
  *(v33 - 128) = a14;
  *(v33 - 120) = &a24;
  *(v33 - 136) = &a26;
  (*(v29 + 8 * (v31 ^ 0x864)))(v33 - 144);
  *(v33 - 128) = a15;
  *(v33 - 136) = v31 + 896639297 * ((((v33 - 144) | 0x99369A3C) - (v33 - 144) + ((v33 - 144) & 0x66C965C0)) ^ 0x8D9D0C44) - 1197042729;
  *(v33 - 144) = &a24;
  (*(v29 + 8 * (v31 + 2085)))(v33 - 144);
  *(v33 - 128) = (v31 + 535) ^ (1785193651 * ((((v33 - 144) | 0xE85E82ED) - ((v33 - 144) & 0xE85E82ED)) ^ 0x6BEE08FB));
  *(v33 - 144) = &a29;
  *(v33 - 136) = &a24;
  (*(v29 + 8 * (v31 + 2044)))(v33 - 144);
  *(v33 - 136) = v31 - 143681137 * ((v33 - 1471953635 - 2 * ((v33 - 144) & 0xA843C5AD)) ^ 0xC97972E5) + 907;
  *(v33 - 128) = &a24;
  *(v33 - 144) = &a29;
  v35 = (*(v29 + 8 * (v31 + 2068)))(v33 - 144);
  return (*(v29 + 8 * (((19 * ((v31 - 49551680) & 0x2F41DDD ^ 0x592) - 1457) * (a19 == 0)) ^ (v31 + 645))))(v35);
}

uint64_t sub_12AC0@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v9 + v5 < v3)
  {
    v10 = v9 + v5 < v1;
  }

  return (*(v8 + 8 * ((!v10 * v6) ^ v4)))();
}

uint64_t sub_12AC8@<X0>(uint64_t a1@<X4>, uint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  HIDWORD(a9) = HIDWORD(a6) + 1943644900;
  v30.i64[0] = 0x3939393939393939;
  v30.i64[1] = 0x3939393939393939;
  HIDWORD(a11) = v27 - 801;
  return sub_3C8EC((v29 - 228), 89, a1, 114, a2, 518, a3, vdupq_n_s32(0x1E32A85Fu), v30, vdupq_n_s32(0x9E32A85C), a4, a5, a6, a7, a8, a9, a10, a11, v28 - 16, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_12CCC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(void))
{
  v30 = (((a4 ^ 0xCF625BFB) + 815637509) ^ ((a4 ^ 0x9E70EA18) + 1636767208) ^ ((a4 ^ 0x52E1DAA9) - 1390533289)) + (((v29 ^ 0xF531B95F) + 181290657) ^ ((v29 ^ 0x62E4C695) - 1659160213) ^ ((v29 ^ 0x94261480) + a2 + 1809443470)) + 1040889446;
  v31 = (v30 ^ 0x5E57AA8u) - 868656506;
  v32 = (v30 ^ 0xD7F7FFF5) + 506191833;
  LODWORD(STACK[0x308]) = v30 ^ ((v30 ^ 0xCEF9B396) + 119903164) ^ ((v30 ^ 0x2AC8E919) - 485177035) ^ v31 ^ v32 ^ 0x35D0B498;
  return sub_37A9C(a1, v31, v32, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_12E08@<X0>(char a1@<W8>, int8x8_t a2@<D0>, int8x8_t a3@<D1>)
{
  v9 = v3 + 8;
  *(v6 + v9) = vadd_s8(vsub_s8(*(v8 + v9), vand_s8(vadd_s8(*(v8 + v9), *(v8 + v9)), a2)), a3);
  return (*(v7 + 8 * (((2 * (((v4 == v9) ^ (a1 + 1)) & 1)) & 0xFB | (4 * (((v4 == v9) ^ (a1 + 1)) & 1))) ^ v5)))();
}

void sub_12E88(_DWORD *a1)
{
  v1 = *a1 - 1504884919 * (((a1 | 0xE4FD304B) - a1 + (a1 & 0x1B02CFB4)) ^ 0x1F3E8750);
  v3[0] = (1380333833 * ((((v3 | 0x7912052C) ^ 0xFFFFFFFE) - (~v3 | 0x86EDFAD3)) ^ 0x38BF5159)) ^ (v1 + 1212455105);
  v2 = *(&off_C1600 + (v1 & 0xAFF4789B)) - 8;
  (*&v2[8 * (v1 + 1906)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_12FC0@<X0>(char a1@<W8>)
{
  v7 = (v2 - 2);
  v8 = a1 + 2;
  *v7 = (v3 + v8) * (v8 ^ v5);
  *(v7 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v6 + 8 * (((v4 == 0) | (4 * (v4 == 0))) ^ v1)))();
}

uint64_t sub_12FCC()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1344C@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (a1[8])
  {
    v3 = (a1[7] | a1[4]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((v4 * (2 * ((a2 - 466431928) & 0x1BCD2F73 ^ 0x7BC) - 41)) ^ a2)))();
}

uint64_t sub_134A8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v27 = a1 ^ 0x3BA;
  v28 = 210068311 * ((((2 * (v26 - 144)) | 0x9383D32A) - (v26 - 144) - 1237445013) ^ 0xDB17D631);
  *(v26 - 116) = (v19 + 98572230 + (a1 ^ 0x3BA)) ^ v28;
  *(v26 - 144) = v24;
  *(v26 - 136) = a1 - v28 - 969;
  *(v26 - 128) = &a19;
  (*(v21 + 8 * (a1 ^ 0xFE3)))(v26 - 144);
  a13 = &a11;
  a14 = &a9;
  *(v26 - 144) = v27 - ((((2 * (v26 - 144)) | 0xF10ED3AE) - (v26 - 144) - 2022140375) ^ 0xFB37E3C1) * v20 + 940;
  *(v26 - 136) = &a13;
  *(v26 - 128) = v22;
  (*(v21 + 8 * (v27 ^ 0xC83)))(v26 - 144);
  *(v26 - 104) = (v27 + 80) ^ (143681137 * ((701813716 - ((v26 - 144) | 0x29D4D3D4) + ((v26 - 144) | 0xD62B2C2B)) ^ 0xB7119B63));
  *(v26 - 128) = &a7;
  *(v26 - 120) = &a13;
  *(v26 - 144) = &a19;
  *(v26 - 136) = v22;
  *(v26 - 112) = v25;
  v29 = (*(v21 + 8 * (v27 ^ 0xC70)))(v26 - 144);
  return (*(v21 + 8 * (((v27 - 1284) * (v23 == 0)) ^ v27)))(v29);
}

uint64_t sub_136C8@<X0>(uint64_t a1@<X2>, int a2@<W4>, _DWORD *a3@<X5>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v62 = &a56 + (v58 - 1);
  v63 = ((*(*v59 + (*a3 & v60)) ^ v62) & 0x7FFFFFFF) * (a2 + (v57 ^ 0x4BB) - 959);
  v64 = (v63 ^ HIWORD(v63)) * a2;
  v65 = *(*(v61 + 8 * (v57 - 1705)) + (v64 >> 24));
  v66 = *(*(v61 + 8 * (v57 ^ 0x79A)) + (v64 >> 24) - 4);
  v67 = *(v61 + 8 * (v57 - 1680));
  v68 = (((v57 - 1728) | 0x81) + (a4 >> v56) - 2 * ((a4 >> v56) & 7) + 66) ^ v66 ^ v65 ^ *(v67 + (v64 >> 24) - 8) ^ v64 ^ (-7 * (v64 >> 24));
  LODWORD(v64) = ((((v57 + 64) | 0x81) + (a4 >> v56) - 2 * ((a4 >> v56) & 7) + 66) ^ v66 ^ v65 ^ *(v67 + (v64 >> 24) - 8) ^ v64 ^ (-7 * BYTE3(v64)));
  *v62 = v68 ^ 7;
  return (*(a1 + 8 * ((4042 * (v58 == (v64 != 7))) ^ v57)))();
}

uint64_t sub_137A8(uint64_t a1, uint64_t a2)
{
  v2 = &v6 ^ qword_C8730 ^ qword_C86F8;
  qword_C8730 = 1865875933 * (v2 - 0x1E71746347E125D2);
  qword_C86F8 = 1865875933 * (v2 ^ 0x1E71746347E125D2);
  v3 = *(a2 + 4);
  v4 = *(&off_C1600 + ((-35 * ((qword_C86F8 - -35 * (v2 + 46)) ^ 0xD2)) ^ byte_A01E0[byte_9C950[(-35 * ((qword_C86F8 - -35 * (v2 + 46)) ^ 0xD2))] ^ 0xFA]) - 47) - 8;
  if (v3 == 411634588)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 411634595)
  {
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_13AEC()
{
  v5 = v0 - 43;
  if (v1 >= v2)
  {
    v6 = 1640887170;
  }

  else
  {
    v6 = v4;
  }

  return (*(v3 + 8 * (((v6 == ((v5 - 1592524207) & 0x5EEBFF1B ^ (v4 + 491))) * ((v5 + 341379887) & 0xEBA6F7FB ^ 0x11B)) ^ v5)))();
}

uint64_t sub_13C94()
{
  v2 = (v0 + 1616709973) & 0x9FA2F6FE;
  v3 = (*(v1 + 8 * (v2 ^ 0xBB4)))(1576, 0x105004009637391);
  STACK[0x298] = v3;
  return (*(v1 + 8 * (((v3 == 0) * ((((v2 - 690) | 0x100) + 1057) ^ 0x568)) ^ v2)))();
}

uint64_t sub_14224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  v24 = (v17 - 1013) | 0x1AD;
  v25 = 210068311 * ((v23 - 128) ^ 0x92D63FA4);
  *(v23 - 128) = v25 + (v19 ^ 0x996FBFFF) + ((v24 + 853507663) & (2 * v19)) + 1878740836;
  *(v23 - 124) = (v17 + 1003) ^ v25;
  *(v23 - 120) = &a15;
  (*(v18 + 8 * (v17 ^ 0xAE0)))(v23 - 128);
  *(v23 - 104) = v24 - ((~((v23 - 128) | v20) + ((v23 - 128) & v20)) ^ 0xF4399C7A) * v21 + 1770;
  *(v23 - 128) = a14;
  *(v23 - 112) = &a17;
  v26 = (*(v18 + 8 * (v24 + 1958)))(v23 - 128);
  return (*(v18 + 8 * (((*(v23 - 120) + (v24 ^ 0x2FC ^ v22) >= 0x8D1DF92C) * (((v24 + 149) | 0x80) ^ 0x2A8)) ^ v24)))(v26);
}

uint64_t sub_143A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v17 - 112) = v14 - ((((v17 - 136) | 0x2AD89735) - (v17 - 136) + ((v17 - 136) & 0xD52768C8)) ^ 0xA9681D23) * v16 + 901;
  *(v17 - 136) = a11;
  *(v17 - 120) = &a14;
  v18 = (*(v15 + 8 * (v14 + 1089)))(v17 - 136);
  return (*(v15 + 8 * ((((*(v17 - 128) - 1941547124) > 0x96BF415F) * (((v14 - 2106412950) & 0x7D8D4FBD) - 1300)) ^ v14)))(v18);
}

uint64_t sub_144D4@<X0>(int a1@<W8>)
{
  *v1 = STACK[0x2B0];
  v1[85] = STACK[0x2F0];
  v1[86] = STACK[0x3CC];
  v1[87] = STACK[0x204];
  v1[88] = STACK[0x3C0];
  return (*(v2 + 8 * (((((((a1 - 126) | 0x140) + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (((a1 - 126) | 0x140) + 5))))();
}

uint64_t sub_1454C(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v2 ^ 0x2C4) + 1090)) ^ (v2 + 577))))();
}

uint64_t sub_14580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v65 = v60 + 324;
  if (((a44 - v60) | (v60 - a44)) < 0)
  {
    v66 = 0x80000000;
  }

  else
  {
    v66 = -2147483647;
  }

  *v63 = v66 + (v61 ^ v60);
  (*(v64 + 8 * (v60 ^ 0x927)))(a60);
  v67 = v63[2];
  v68 = v63[1];
  v69 = v63[398];
  v70 = *(v62 + 4 * (v67 & 1));
  *v63 = v63[(163 * ((v65 + 103) ^ 0x1ACu)) ^ 0x5F8] ^ ((v68 & 0x7FFFFFFE | *v63 & 0x80000000) >> 1) ^ *(v62 + 4 * (v68 & 1));
  v63[1] = v69 ^ ((v67 & 0x7FFFFFFE | v68 & 0x80000000) >> 1) ^ v70;
  return (*(v64 + 8 * (v65 + 103)))();
}

void sub_14730(uint64_t a1)
{
  v1 = 1388665877 * ((-2 - ((~a1 | 0x52976C84) + (a1 | 0xAD68937B))) ^ 0xDF3A0E68);
  v2 = *(a1 + 40) + v1;
  v3 = *(a1 + 52) + v1;
  v4 = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v3 & 0x8A7AFCF8 ^ 0x3941FF6A ^ (v3 ^ 0xA37AFAF2) & (2 * (v3 & 0x8A7AFCF8));
  v8 = ((2 * (v3 ^ 0xB33B0392)) ^ 0x7283FED4) & (v3 ^ 0xB33B0392) ^ (2 * (v3 ^ 0xB33B0392)) & 0x3941FF6A;
  v9 = v8 & 0x720758C4 ^ v7 ^ ((4 * v7) ^ 0x9700A56C) & (v8 ^ 0x3001FE42);
  v10 = ((4 * v8) ^ 0xB200A1C4) & (v8 ^ 0x3001FE42) ^ v8 & 0x720758C4;
  v11 = v10 & 0x720758C4 ^ v9 ^ ((16 * v9) ^ 0xE60D2A64) & (v10 ^ 0x3001584A);
  v12 = ((16 * v10) ^ 0x7212DCC4) & (v10 ^ 0x3001584A) ^ v10 & 0x720758C4;
  v13 = v11 ^ v12 & 0x720758C4 ^ ((v11 << 8) ^ 0x33F832C4) & (v12 ^ 0x3001586A);
  v14 = ((v12 << 8) ^ 0x735F18C4) & (v12 ^ 0x3001586A) ^ v12 & 0x720758C4;
  v15 = 1785193651 * ((2 * (&v17 & 0x334BBAC8) - &v17 - 860601034) ^ 0x4F04CF20);
  v21 = ((*(a1 + 44) ^ v1) + 705434687) ^ v15;
  v18 = v6;
  v19 = v6;
  v22 = v4;
  v23 = v15 ^ (v2 - 542396741);
  v24 = (v3 ^ (2 * (v13 ^ v14 & 0x720758C4 ^ ((v13 << 16) ^ 0xD52D58C5) & (v14 ^ 0x9400000) ^ ((v13 << 16) ^ 0xD52D58C5) & 0x39415840)) ^ 0xD014823C) + v15;
  v20 = v5;
  v16 = *(&off_C1600 + (v2 ^ 0x5C)) - 8;
  (*&v16[8 * (v2 ^ 0x9C1)])(&v17);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_149FC@<X0>(int a1@<W8>)
{
  v6 = (v2 - 8) | 0x206;
  v7 = *(v3 + 8);
  v8 = *(v7 + 4 * v5 - 4) ^ 0x994F60DB;
  *(v7 + 4 * (v5 + a1)) = ((v6 - 327) | 0x418) ^ 0xB18F7F3B ^ ((v8 >> (32 - (v1 ^ 5))) & 0xD73FE5C0 | ~(v8 >> (32 - (v1 ^ 5))) & 0x28C01A3F);
  return (*(v4 + 8 * ((62 * (v5 > 1)) ^ v6)))(2978970340);
}

uint64_t sub_14AC0(uint64_t a1)
{
  v2 = 1037613739 * (((a1 | 0xC10FF5F2) - (a1 & 0xC10FF5F2)) ^ 0x100DD88D);
  v3 = *(a1 + 32) + v2;
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = ((*(a1 + 8) ^ v2 ^ 0xB434160F) + 1271654897) ^ ((*(a1 + 8) ^ v2 ^ 0x4226980F) - 1109825551) ^ ((*(a1 + 8) ^ v2 ^ 0xF42EE0EA) + 198254358);
  v8 = ((&v10 | 0x8168B134) - &v10 + (&v10 & 0x7E974EC8)) ^ 0x506A9C4B;
  v16 = *(a1 + 24);
  v10 = 1037613739 * v8 + 857500954 + v7;
  v14 = (1037613739 * v8) ^ (v3 + 1776824935);
  v11 = v4;
  v12 = v6;
  v13 = v5;
  result = (*(*(&off_C1600 + (v3 ^ 0x9617D484)) + v3 + 1776825702))(&v10);
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_14C54(_DWORD *a1)
{
  v2 = 1504884919 * ((-2 - ((a1 | 0xE7040B6A) + (~a1 | 0x18FBF495))) ^ 0xE338438E);
  v3 = a1[5] ^ v2;
  v4 = a1[2] - v2;
  v9 = v3 - 1564307779 * (((&v9 | 0xCC80588D) - &v9 + (&v9 & 0x337FA770)) ^ 0x5B8D949E) - 1746450168;
  v5 = *(&off_C1600 + v3 + 562358991) - 8;
  result = (*&v5[8 * (v3 ^ 0xDE7B1CE8)])(&v9);
  if (v4 > 682767071)
  {
    if (v4 == 967979743)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 682767072)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((((*&v5[8 * v3 + 0x10C279C30])((*(*(&off_C1600 + v3 + 562358905) + 6 * v7 + 2) - 411634585), 0x100004077774924) != 0) * ((v3 + 562360603) ^ 0x6A2)) ^ (v3 + 562359810))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 682767068)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 682767071)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[4] = 1640887264;
  return result;
}

uint64_t sub_14EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((v20 + 1722265438 - 2 * ((v20 - 144) & 0x66A7AFEE)) ^ 0x761BD8B0) * v19;
  *(v20 - 144) = a15;
  *(v20 - 132) = v21 + v15 + 69;
  *(v20 - 128) = v21 ^ (v17 - 4) ^ (((v17 - 4) ^ 0xF3EB186F) + 835146057) ^ (((v17 - 4) ^ 0xEED0D696) + 754753458) ^ (((v17 - 4) ^ 0x4F9F9265 ^ ((v15 + 528) | 0x91)) - 1917591588) ^ (((v17 - 4) ^ 0x6F77EDC7 ^ ((v15 - 496) | 0x312)) - 1386502149) ^ 0xD707393B;
  v22 = (*(v16 + 8 * (v15 + 1836)))(v20 - 144);
  return (*(v16 + 8 * ((980 * (*(v20 - 136) != v18)) ^ v15)))(v22);
}

uint64_t sub_15008()
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((v1 == 32) * (((v0 + 1141) | v4) ^ v5)) ^ (v0 + 82))))();
}

void sub_15054()
{
  v0 = STACK[0x448];
  v1 = STACK[0x3C8];
  v2 = STACK[0x428];
  LODWORD(STACK[0x2F4]) = 1;
  STACK[0x330] = v0;
  LODWORD(STACK[0x348]) = v1;
  STACK[0x398] = v2;
  LODWORD(STACK[0x414]) = 225309709;
  JUMPOUT(0x28584);
}

uint64_t sub_151D4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (((a2 + v4 + 449) | 0x118u) ^ 0xFFFFFFFFFFFFFAE5) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((118 * ((v3 & 0xFFFFFFE0) != 32)) ^ (a2 + v4 + 125))))();
}

uint64_t sub_1529C()
{
  v6 = ((v0 - v5 + 459) ^ 0xEDB4B511) + v3;
  v7 = (v6 < 0x576714D0) ^ ((v2 + 1054738743) < 0x576714D0);
  v8 = v6 < v2 + 1054738743;
  if (v7)
  {
    v8 = (v2 + 1054738743) < 0x576714D0;
  }

  return (*(v1 + 8 * ((v8 * (v0 + v4 - 165)) ^ (v0 + v4 + 308))))();
}

void sub_15310()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 8))
  {
    v2 = *(v0 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *v0 + 1785193651 * (((v0 | 0x9BBB7C07) - (v0 & 0x9BBB7C07)) ^ 0x180BF611);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_15428(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 + 1812)))(a1, 0);
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
    result = (*(v3 + 8 * (v2 ^ 0xB10)))(result);
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
  *(v1 + 8) = v5;
  return result;
}

uint64_t sub_154E0@<X0>(uint64_t a1@<X0>, int a2@<W8>, void *a3, _DWORD *a4)
{
  *a3 = a1;
  *a4 = a2;
  return sub_23664();
}

uint64_t sub_154EC()
{
  v12 = v6;
  v10 = &v8;
  v11 = (v2 + 1218) ^ (143681137 * ((((2 * (&v9 ^ 0x2BACD74D)) | 0xE454894C) - (&v9 ^ 0x2BACD74D) + 232110938) ^ 0xB8BC24A3));
  (*(v1 + 8 * (v2 + 1814)))(&v9);
  v10 = v6;
  v9 = v2 + (((&v9 | 0x12002D7B) + (~&v9 | 0xEDFFD284)) ^ 0x38CB0700) * v3 + 1016;
  (*(v1 + 8 * (v2 ^ 0xB28)))(&v9);
  if (v11 == v0 + v2 + 228 - 844)
  {
    v4 = v8;
  }

  else
  {
    v4 = v11;
  }

  v10 = v6;
  v9 = (v2 - 74) ^ ((((&v9 | 0x63373B7D) - &v9 + (&v9 & 0x9CC8C480)) ^ 0x49FC1107) * v3);
  (*(v1 + 8 * (v2 + 1783)))(&v9);
  v10 = v7;
  v9 = (v2 - 74) ^ (((&v9 - 46504328 - 2 * (&v9 & 0xFD3A6678)) ^ 0xD7F14C02) * v3);
  (*(v1 + 8 * (v2 + 1783)))(&v9);
  return v4 ^ v0;
}

void sub_156C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *(v5 - 124);
  if (v7 == 1)
  {
    v12 = *(v5 - 156);
    v11 = *(v5 - 152);
    *(v5 - 164) = (8 * (v11 - ((2 * v11) & 0xAA)) - 88) ^ 0x91;
    *(v5 - 163) = (v6 + a5 + 75) ^ (v11 >> 5);
    *(v5 - 162) = (v11 >> 13) ^ 0x39;
    *(v5 - 161) = (v11 >> 21) ^ 0x39;
    *(v5 - 160) = ((__PAIR64__(v12, v11) >> 29) - ((2 * (__PAIR64__(v12, v11) >> 29)) & 0xC4) - 30) ^ 0xDB;
    *(v5 - 159) = (v12 >> 5) ^ 0x39;
    *(v5 - 158) = (v12 >> 13) ^ 0x39;
    v10 = (v12 >> 21) ^ 0x39;
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_6;
    }

    v8 = *(v5 - 156);
    v9 = *(v5 - 152);
    *(v5 - 164) = ((a5 - 124) & 0x7F) + (v8 >> 21) - ((v8 >> 20) & 0x72) - 34;
    *(v5 - 163) = (v8 >> 13) - ((v8 >> 12) & 0x72) + 57;
    *(v5 - 162) = (v8 >> 5) - ((v8 >> 4) & 0x72) + 57;
    *(v5 - 161) = (__PAIR64__(v8, v9) >> 29) - ((2 * (__PAIR64__(v8, v9) >> 29)) & 0x72) + 57;
    *(v5 - 160) = (v9 >> 21) - ((v9 >> 20) & 0x72) + 57;
    *(v5 - 159) = (~(v9 >> 12) | 0x8D) + (v9 >> 13) + 58;
    *(v5 - 158) = (v9 >> 5) - ((v9 >> 4) & 0x72) + 57;
    LOBYTE(v10) = (8 * (v9 - ((2 * v9) & 0x12)) + 72) ^ 0x71;
  }

  *(v5 - 157) = v10;
LABEL_6:
  JUMPOUT(0x241C4);
}

uint64_t sub_15840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = (v22 + 636161718) & 0x5A14F3BC;
  *(v25 - 144) = v22 - 843532609 * ((-1484213491 - ((v25 - 144) | 0xA788B30D) + ((v25 - 144) | 0x58774CF2)) ^ 0x48CB3BAC) + 389;
  *(v25 - 120) = &a18;
  *(v25 - 112) = a14;
  *(v25 - 104) = &a18;
  *(v25 - 136) = a13;
  *(v25 - 128) = &a22;
  v27 = (*(v23 + 8 * (v22 ^ 0x81Au)))(v25 - 144);
  return (*(v23 + 8 * ((992 * ((((v24 - 1037285081) < 0x7FFFFFFF) ^ (v26 - 108) ^ 3) & 1)) ^ (v26 - 446))))(v27);
}

uint64_t sub_159B8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t))
{
  v16 = 1388665877 * ((2 * ((v15 - 168) & 0x554742F8) - (v15 - 168) + 716750083) ^ 0xA715DFEF);
  *(v15 - 160) = v13;
  *(v15 - 168) = v16 + a1 + 288;
  *(v15 - 164) = v16 ^ 0x3CFD8D2D;
  v17 = (*(v14 + 8 * (a1 + 2311)))(v15 - 168);
  return a13(v17, 114);
}

uint64_t sub_15B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = (((a7 ^ 0x4B094448) - 1258898504) ^ ((a7 ^ 0xB05D217F) + 1336073857) ^ (((((v8 - 1527) | 0x806) + 1701233829) ^ a7) - 1701236075)) + 1636376260;
  v10 = (v9 ^ 0xBC21851B) & (2 * (v9 & 0x3CA98998)) ^ v9 & 0x3CA98998;
  v11 = ((2 * (v9 ^ 0xBC63951B)) ^ 0x1943906) & (v9 ^ 0xBC63951B) ^ (2 * (v9 ^ 0xBC63951B)) & 0x80CA1C82;
  v12 = v11 ^ 0x804A0481;
  v13 = (v11 ^ 0x800800) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x328720C) & v12 ^ (4 * v12) & 0x80CA1C80;
  v15 = (v14 ^ 0x81000) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x80C20C83)) ^ 0xCA1C830) & (v14 ^ 0x80C20C83) ^ (16 * (v14 ^ 0x80C20C83)) & 0x80CA1C80;
  return (*(v7 + 8 * ((51 * ((v9 ^ (2 * ((((v16 ^ 0x804A1483) << 8) & 0x80CA1C00 ^ (((v16 ^ 0x804A1483) << 8) ^ 0xCA1C0000) & (v16 ^ 0x804A1483) ^ 0x80000) & (((v16 ^ 0x800800) & (v15 << 8) ^ v15) << 16) ^ (v16 ^ 0x800800) & (v15 << 8) ^ v15))) != 1017743768)) | (v8 - 491))))(a1, a2, a3, 2608);
}

uint64_t sub_15DEC@<X0>(int a1@<W8>)
{
  v4 = ((v2 + 1851206175) & 0x91A8D77F ^ (a1 + 787)) + v1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((249 * (v5 > ((v2 + 1142971173) & 0xBBDFA9FF ^ 0x81F))) ^ v2)))();
}

uint64_t sub_15E94@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 4 + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((120 * (((((49 * (v3 ^ 0x378) - 788) & v2) == 4) ^ (49 * (v3 ^ 0x78) - 91)) & 1)) ^ (49 * (v3 ^ 0x378)))))();
}

uint64_t sub_15F08@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  **(result + 8) = v3;
  *(a2 + 16) = v2;
  return sub_238B4(result);
}

uint64_t sub_15F1C@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = (3 * (v3 ^ 0x5A6) + v8 - ((2 * v8) & 0xDE008716) - 285197532) ^ 0x764F2350;
  return (*(v7 + 8 * (((v6 > (v2 + 1)) | (8 * (v6 > (v2 + 1)))) ^ (v3 - 741))))(154827708);
}

uint64_t sub_15FEC(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44)
{
  v47 = ((*v45 & 0x7FFFFFFE | v45[623] & 0x80000000) >> ((v44 + 90) & 0xEB ^ (a3 + 1))) ^ v45[396];
  v45[623] = (v47 + ((v44 - 337970849) & 0x75EDABE6 ^ 0x8C30D15B) - (a4 & (2 * v47))) ^ *(v46 + 4 * (*v45 & 1));
  return (*(a1 + 8 * ((420 * (a44 > 0x26F)) ^ v44)))();
}

uint64_t sub_160A0()
{
  v4 = (v3 + 515) | 0xC0;
  v5 = v2 > -265137047;
  if (v5 == v0 + 1452930712 < 265137046)
  {
    v5 = v0 + 1452930712 < ((v4 ^ 0x8FCDA857) + v2);
  }

  return (*(v1 + 8 * ((15 * v5) ^ v4)))(4029830249);
}

uint64_t sub_16134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, unsigned int a32)
{
  v34 = LOBYTE(STACK[0x310]);
  if (v34 == 1)
  {
    v37 = STACK[0x2F4];
    v38 = STACK[0x2F0];
    LOBYTE(STACK[0x2E8]) = (8 * (LOBYTE(STACK[0x2F4]) - ((a11 - 72) & (2 * LOBYTE(STACK[0x2F4])))) + 104) ^ 0x51;
    LOBYTE(STACK[0x2E9]) = v32 ^ (v37 >> 5);
    LOBYTE(STACK[0x2EA]) = v32 ^ (v37 >> 13);
    LOBYTE(STACK[0x2EB]) = v32 ^ (v37 >> 21);
    LOBYTE(STACK[0x2EC]) = ((__PAIR64__(v38, v37) >> 29) - ((2 * (__PAIR64__(v38, v37) >> 29)) & 0xA) + 5) ^ 0x3C;
    LOBYTE(STACK[0x2ED]) = v32 ^ (v38 >> 5);
    LOBYTE(STACK[0x2EE]) = v32 ^ (v38 >> 13);
    v36 = v32 ^ (v38 >> 21);
    goto LABEL_5;
  }

  if (v34 == 2)
  {
    v36 = STACK[0x2F0];
    v35 = STACK[0x2F4];
    LOBYTE(STACK[0x2E8]) = (LODWORD(STACK[0x2F0]) >> 21) - (a2 & (LODWORD(STACK[0x2F0]) >> 20)) + 57;
    LOBYTE(STACK[0x2E9]) = v33 + 67 + (v36 >> 13) + (~(v36 >> 12) | 0x8D) - 40;
    LOBYTE(STACK[0x2EA]) = (v36 >> 5) - (a2 & (v36 >> 4)) + 57;
    LOBYTE(STACK[0x2EB]) = (__PAIR64__(v36, v35) >> 29) - (a2 & (2 * (__PAIR64__(v36, v35) >> 29))) + 57;
    LOBYTE(STACK[0x2EC]) = (v35 >> 21) - (a2 & (v35 >> 20)) + 57;
    LOBYTE(STACK[0x2ED]) = (v35 >> 13) - (a2 & (v35 >> 12)) + 57;
    LOBYTE(STACK[0x2EE]) = (v35 >> 5) - (a2 & (v35 >> 4)) + 57;
    LOBYTE(v36) = (8 * (v35 - ((2 * v35) & 0x14)) + 80) ^ 0x69;
LABEL_5:
    LOBYTE(STACK[0x2EF]) = v36;
  }

  return sub_203B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_164CC()
{
  *(v4 - 128) = &v6;
  *(v4 - 136) = v1 - ((-685749376 - ((v4 - 144) | 0xD7204B80) + ((v4 - 144) | 0x28DFB47F)) ^ 0x49E50337) * v3 + 278;
  *(v4 - 144) = v0;
  return (*(v2 + 8 * (v1 + 1439)))(v4 - 144);
}

uint64_t sub_16570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, char a18, int a19, int a20, uint64_t a21, char *a22, int *a23, int a24, int *a25, uint64_t *a26)
{
  a14 = 1773297654;
  v29 = 1556366573 * ((((2 * &a19) | 0xA168145E) - &a19 - 1353976367) ^ 0x345029C5);
  a23 = &a14;
  a21 = a16;
  a22 = &a18;
  a19 = -145834977 - v29 + ((v26 + 960753346) & 0x123E) + a15;
  a24 = v26 - v29 + 105;
  a25 = &a15;
  a26 = &a16;
  v30 = (*(v28 + 8 * (v26 ^ 0x9E0)))(&a19);
  return (*(v28 + 8 * ((135 * (a20 == -1640847268)) ^ v26)))(v30, v27);
}

uint64_t sub_16698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = v17 - 1556366573 * ((2027149823 - ((v20 - 136) | 0x78D3D9FF) + ((v20 - 136) | 0x872C2600)) ^ 0xE3C805EA) + 1766;
  *(v20 - 136) = a15;
  *(v20 - 128) = &a17;
  v21 = (*(v18 + 8 * (v17 ^ 0x8A0)))(v20 - 136);
  return (*(v18 + 8 * ((31 * (v19 != (v17 ^ 0xBF) - 340)) ^ v17)))(v21);
}

uint64_t sub_16740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, int a23, int a24)
{
  *(v27 - 128) = (v24 - 1769192746) ^ a22;
  *(v27 - 124) = -a22;
  *(v27 - 144) = -1769191891 - a22 + v24 - 857;
  *(v27 - 140) = a24 ^ a22;
  v28 = v27 - 160;
  *(v28 + 24) = a22 ^ 3;
  *(v27 - 116) = ((v24 - 857) ^ 0x968C4662) + a22;
  *(v28 + 8) = (v26 + 1) ^ a22;
  v29 = (*(v25 + 8 * (v24 + 1465)))(v27 - 152);
  return (*(v25 + 8 * *(v27 - 120)))(v29);
}

uint64_t sub_167DC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v19 = a7 + 596;
  v20 = v7 + (((v13 ^ a4) + a5) ^ ((v13 ^ 0xAD4A60D4) - 2023927906) ^ (((a7 + 2005788718) ^ v13) + 1570423079)) + a6;
  return (*(v14 + 8 * (((((v12 == 31) ^ (v19 - 26)) & 1) * (v19 ^ a3)) ^ v19)))(a1, v20 ^ ((v20 ^ v11) + v15) ^ ((v20 ^ v16) + v17) ^ ((v20 ^ v18) + v10) ^ ((v20 ^ v8) + v9) ^ a2);
}

uint64_t sub_168E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 124);
  if (v12 == 2)
  {
    return (*(v9 + 8 * ((180 * (((*(v10 - 128) == 0) ^ (37 * (a5 ^ (a5 - 3)))) & 1)) ^ (v11 + a5 + 129))))(2227061079, a9);
  }

  if (v12 != 1)
  {
    JUMPOUT(0x169D8);
  }

  return (*(v9 + 8 * ((46 * (*(v10 - 128) != 877 * (a5 ^ (a5 - 2)) - 1754)) ^ (v11 + a5 + 1772))))(2227061079, a9);
}

uint64_t sub_16A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char *a26, char *a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  v39 = v32 + 9;
  v40 = ((((v38 - 144) | 0x992C76B5) + (~(v38 - 144) | 0x66D3894A)) ^ 0x1A9CFCA2) * v36;
  *(v38 - 144) = v33 - v40 - 359182207 + v32 + 9;
  *(v38 - 120) = v31;
  *(v38 - 136) = &a31;
  *(v38 - 124) = v40 + v32 + 1522;
  (*(v34 + 8 * (v32 ^ 0xB89)))(v38 - 144);
  a26 = &a22;
  a27 = &a20;
  *(v38 - 144) = v39 + 1708 - ((-1017798595 - ((v38 - 144) | 0xC355A03D) + ((v38 - 144) | 0x3CAA5FC2)) ^ 0xBF1AD5D4) * v36;
  *(v38 - 136) = &a26;
  *(v38 - 128) = v35;
  (*(v34 + 8 * (v39 ^ 0xB83)))(v38 - 144);
  *(v38 - 136) = &a29;
  *(v38 - 128) = v35;
  *(v38 - 144) = &a31;
  *(v38 - 120) = v39 + 319 + 1564307779 * ((v38 - 144) ^ 0x970DCC13);
  *(v38 - 112) = &a26;
  (*(v34 + 8 * (v39 ^ 0xB6A)))(v38 - 144);
  v41 = a27;
  *(v38 - 112) = v35;
  *(v38 - 104) = &a29;
  *(v38 - 144) = v39 + 181 - 843532609 * (((v38 - 144) & 0x88C27D71 | ~((v38 - 144) | 0x88C27D71)) ^ 0x6781F5D0);
  *(v38 - 128) = &a29;
  *(v38 - 120) = v41;
  *(v38 - 136) = &a26;
  (*(v34 + 8 * (v39 ^ 0xB4A)))(v38 - 144);
  *(v38 - 120) = v39 + 419 + 1564307779 * (((((v38 - 144) | 0x60C14004) ^ 0xFFFFFFFE) - (~(v38 - 144) | 0x9F3EBFFB)) ^ 0x83373E8);
  *(v38 - 144) = a15;
  *(v38 - 136) = &a29;
  *(v38 - 128) = v35;
  *(v38 - 112) = &a26;
  *(v38 - 104) = &a29;
  (*(v34 + 8 * (v39 + 1829)))(v38 - 144);
  *(v38 - 144) = v39 + 1708 - 1785193651 * ((((v38 - 144) | 0x547A1A67) - (v38 - 144) + ((v38 - 144) & 0xAB85E598)) ^ 0xD7CA9071);
  *(v38 - 136) = &a26;
  *(v38 - 128) = v37;
  (*(v34 + 8 * (v39 + 1921)))(v38 - 144);
  *(v38 - 120) = v39 + 319 + 1564307779 * ((((v38 - 144) | 0x3DBA91A0) - (v38 - 144) + ((v38 - 144) & 0xC2456E58)) ^ 0xAAB75DB3);
  *(v38 - 112) = &a26;
  *(v38 - 144) = &a31;
  *(v38 - 136) = &a24;
  *(v38 - 128) = v37;
  (*(v34 + 8 * (v39 ^ 0xB6A)))(v38 - 144);
  v42 = a27;
  *(v38 - 136) = &a26;
  *(v38 - 128) = &a24;
  *(v38 - 112) = v37;
  *(v38 - 104) = &a24;
  *(v38 - 144) = v39 + 181 - 843532609 * ((v38 - 144) ^ 0x10BC775E);
  *(v38 - 120) = v42;
  (*(v34 + 8 * (v39 ^ 0xB4A)))(v38 - 144);
  *(v38 - 120) = v39 + 419 + 1564307779 * ((v38 - 1611918353 - 2 * ((v38 - 144) & 0x9FEC147F)) ^ 0x8E1D86C);
  *(v38 - 112) = &a26;
  *(v38 - 104) = &a24;
  *(v38 - 136) = &a24;
  *(v38 - 128) = v37;
  *(v38 - 144) = a13;
  (*(v34 + 8 * (v39 + 1829)))(v38 - 144);
  *(v38 - 128) = v39 - 1556366573 * ((v38 - 144) ^ 0x64E423EA) + 1727;
  *(v38 - 144) = &a24;
  *(v38 - 136) = &a29;
  (*(v34 + 8 * (v39 + 1849)))(v38 - 144);
  *(v38 - 144) = &a24;
  *(v38 - 132) = v39 - 896639297 * ((((v38 - 144) | 0x2194DDB3) - (v38 - 144) + ((v38 - 144) & 0xDE6B2248)) ^ 0x353F4BCB) - 279;
  v43 = (*(v34 + 8 * (v39 + 1823)))(v38 - 144);
  return (*(v34 + 8 * ((1170 * ((v39 - 210 + *(v38 - 136) - 1074912142) < 0x2A8E41DE)) ^ v39)))(v43);
}

uint64_t sub_16E54()
{
  v4 = 1388665877 * (((((v3 - 144) | 0x7F463122) ^ 0xFFFFFFFE) - (~(v3 - 144) | 0x80B9CEDD)) ^ 0xD14AC31);
  *(v3 - 112) = v2 - v4 + 493;
  *(v3 - 144) = v4 + v7 - 445404906 + v2;
  *(v3 - 136) = v9;
  *(v3 - 120) = v1;
  (*(v0 + 8 * (v2 ^ 0xC83u)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 56) = -1640847268;
  return result;
}

uint64_t sub_16F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  v41 = v40 + v37;
  v42 = (((v38 ^ 0x2BF) + 697) ^ 0x2B3) & (a34 + 1);
  v43 = v36 - v37 + v42 + 1;
  v44 = v36 + v42 + 1;
  v45 = v42 + v34 + 4;
  v46 = v35 - v37 + v42 + 6;
  v47 = v35 + v42 + ((169 * (v38 ^ 0x2BFu)) ^ 0x1FDLL);
  v49 = v45 > v40 && v45 - v37 < v41;
  v51 = v44 > v40 && v43 < v41 || v49;
  if (v47 <= v40 || v46 >= v41)
  {
    v53 = v51;
  }

  else
  {
    v53 = 1;
  }

  return (*(v39 + 8 * ((60 * v53) ^ v38 ^ 0x3A0)))();
}

uint64_t sub_16FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8)
{
  v14 = (*(v12 + 4 * v13) ^ v9) + v11;
  *(v12 + 4 * v13) = v14 + v9 - ((v14 << (((a8 + 96) | a6) - 58)) & v10);
  return (*(v8 + 8 * (((HIDWORD(v14) == 0) * a7) ^ (a8 - 707))))();
}

void sub_17068()
{
  v4 = *v0;
  *v0[3] = *v1;
  *v4 = *v2 - ((*v2 << (v3 ^ 0xB3)) & 0xFC973736) - 28599397;
  JUMPOUT(0x3654);
}

uint64_t sub_1719C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v8 = v3 + 1;
  *(v5 + 4 * v8 + 908) = *(v7 + 4 * (*(v5 + 4 * v8 + 912) & 1)) ^ *(v5 + 4 * v8) ^ ((*(v5 + 4 * v8 + 912) & (a2 ^ (a1 + 94)) | v4 & 0x80000000) >> 1);
  return (*(v6 + 8 * ((v2 + 255) ^ (2 * (v8 == 395)))))();
}

uint64_t sub_17244@<X0>(int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v30 = (a18 + 24 * v25);
  *v30 = v29;
  v30[1] = a1;
  *&v27[6 * v25 + 4] = a10;
  v30[4] = a23;
  *v27 = v24 + ((v23 + 693698310) & 0xD6A6FF3B) - 538;
  return (*(v28 + 8 * (((((v23 - 855) | 0x268) ^ 0x6F1) * ((a2 + v26) < 0x80000003)) ^ v23)))();
}

uint64_t sub_1735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = v20 - 1556366573 * ((~((v21 - 136) | 0xB90E7563) + ((v21 - 136) & 0xB90E7563)) ^ 0x2215A976) + 275;
  *(v21 - 136) = v19;
  *(v21 - 128) = &a17;
  v22 = (*(v18 + 8 * (v20 ^ 0xEF7)))(v21 - 136);
  return (*(v18 + 8 * (((((v17 == 1) ^ (v20 - 64)) & 1) * (((v20 - 1396) | 0x10) - 483)) ^ v20)))(v22);
}

uint64_t sub_17410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * ((((v9 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v10 - 534) | 0x80) ^ 0x14D)) ^ v10)))();
}

uint64_t sub_17488@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = (v3 ^ 0x59) + *(v1 + v5) - ((2 * *(v1 + v5)) & 0x72) - 121;
  return (*(v4 + 8 * ((3401 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_174CC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0x72) + 57;
  return (*(v4 + 8 * ((3248 * (v5 == ((v3 - 637) ^ 0x229))) ^ v3)))();
}

uint64_t sub_17514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v22 - 120) = v19;
  *(v22 - 136) = a16;
  *(v22 - 112) = v16 - ((1502732627 - (v21 | 0x5991E153) + (v21 | 0xA66E1EAC)) ^ 0x25DE94BA) * v17 + 1765;
  v23 = (*(v18 + 8 * (v16 ^ 0x8E1)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 128) > (v20 + 1)) * ((v16 + 914) ^ 0xC69)) ^ v16)))(v23);
}

uint64_t sub_17644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (v7 ^ 0xAB3) + 239 + a7 - 883912217;
  v12 = v8 + 2049392995 < v11;
  if (v8 + 2049392995 < v10 != v11 < v10)
  {
    v12 = v11 < v10;
  }

  return (*(v9 + 8 * ((!v12 | (4 * !v12)) ^ v7)))();
}

uint64_t sub_177BC@<X0>(uint64_t a1@<X8>)
{
  v9 = (**(v8 + 8) ^ v4) + (**(v6 + 8) ^ v4);
  **(a1 + 8) = v9 + v4 - (((v3 ^ 0x30E) + v5) & (2 * v9));
  return (*(v7 + 8 * (((v1 == 1) * v2) ^ v3)))(782);
}

uint64_t sub_179C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  v30 = a28 - 583217596 > a17;
  if (a17 < a16 != a28 - 583217596 < (v29 - 583217691))
  {
    v30 = a28 - 583217596 < (v29 - 583217691);
  }

  return (*(v28 + 8 * ((v30 * (v29 + 447)) ^ (v29 + 1214))))(995, 114, a3, a25);
}

uint64_t sub_17A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  *(*v14 + v13) = -71;
  v16 = v13 + 573 * ((((v12 ^ 0x65E) + 287) | 0x435) ^ 0x63E) - 1718 >= a12;
  return (*(v15 + 8 * (((2 * v16) | (16 * v16)) ^ v12 ^ 0x65E)))();
}

uint64_t sub_17AD4()
{
  *(v2 - 120) = v1 - 143681137 * (((v2 - 128) & 0x870ED3CE | ~((v2 - 128) | 0x870ED3CE)) ^ 0x19CB9B79) + 518;
  *(v2 - 128) = v4;
  *(v2 - 112) = &v5;
  return (*(v0 + 8 * (v1 + 1679)))(v2 - 128);
}

uint64_t sub_17BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, unsigned int a14, char *a15, unsigned int a16)
{
  v20 = 1504884919 * (((&a12 | 0x5845B9D3) + (~&a12 | 0xA7BA462C)) ^ 0xA3860EC9);
  a12 = v19 - v20 - 300;
  a16 = ((v18 ^ 0xB3F1F7F8) + 2102394624 + ((v18 << ((62 * (v19 ^ 0x80)) ^ 0xB3)) & 0x30)) ^ v20;
  a13 = v16;
  a15 = &a10;
  a14 = -1244192620 - v20;
  v21 = (*(v17 + 8 * (v19 ^ 0xABF)))(&a12);
  return (*(v17 + 8 * ((27 * (*(v16 + 24) == -1640847268)) ^ v19)))(v21);
}

uint64_t sub_17C98@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v11 = v3 < v4;
  *(v10 - 220 + v5) = *(v8 + v7) - (((a3 - 96) ^ 0x78) & (2 * *(v8 + v7))) + 57;
  if (v11 == v7 + 1 > a1)
  {
    v11 = a2 + v7 + 11 < v3;
  }

  return (*(v9 + 8 * ((!v11 * v6) ^ a3)))();
}

uint64_t sub_17D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = &a17;
  *(v21 - 136) = a16;
  *(v21 - 112) = v20 - ((v21 - 136) ^ 0x83B08A16) * v17 + 1600;
  v22 = (*(v18 + 8 * (v20 ^ 0xB0C)))(v21 - 136);
  return (*(v18 + 8 * ((222 * (*(v21 - 128) > ((v20 + 1057) ^ (v19 + 1431)))) ^ v20)))(v22);
}

uint64_t sub_17DE8@<X0>(int a1@<W8>)
{
  v6 = 3 * (v1 ^ 0x308);
  v7 = (v6 ^ 0x3933B749) - v4;
  if (v5 > v7)
  {
    v7 = v5;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v7)) = *(*(v2 + 8) + 4 * v7 - 4);
  return (*(v3 + 8 * (((v7 > 1) * (151 * (v6 ^ 0x3BC) - 1538)) ^ v6)))();
}

uint64_t sub_17E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return (*(v10 + 8 * ((v11 * (((v8 ^ 0x9E) + 682) ^ 0x801)) ^ v8)))();
}

uint64_t sub_17E88@<X0>(int a1@<W6>, _DWORD *a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (a2[1] ^ a3) + (v12 ^ HIDWORD(v18)) + v17 * (*(*(a9 + 8) + 4) ^ a3);
  *a2 = v16 ^ a1 ^ v13 ^ (v19 + v11 - (v10 & (2 * v19)));
  return (*(v14 + 8 * (((v9 == 2) * v15) ^ v16)))();
}

uint64_t sub_17FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, unsigned int a14, uint64_t a15, int a16, int a17, char *a18, unsigned int a19)
{
  v23 = 843532609 * (((&a14 ^ 0x2206AD96) & 0x5743CAA9 | ~(&a14 ^ 0x2206AD96 | 0x5743CAA9)) ^ 0x9A06EF9E);
  a18 = &a12;
  a19 = v23 - 1295632376;
  a14 = v23 + 325400560;
  a17 = (v20 + 1421511507) ^ v23;
  a15 = a10;
  v24 = (*(v19 + 8 * (v20 + 1376)))(&a14);
  return (*(v19 + 8 * ((1638 * (a16 == (v21 ^ (v22 + 311)))) ^ v20)))(v24);
}

uint64_t sub_18668()
{
  *v3 = 0x9908B0DF00000000;
  v6 = **(v2 + 8 * (v0 - 825));
  v7 = 843532609 * (((v4 | (v5 - 152)) - ((v5 - 152) & v4)) ^ 0x53A8896BC290A127);
  v3[6] = v7;
  *(v5 - 140) = v0 - 2144922316 + v7;
  *(v5 - 136) = (v0 - 2144922317) ^ v7;
  v3[4] = v6 ^ v7;
  *(v5 - 120) = ((v0 - 2144922316) ^ 0x6D) + v7;
  *(v5 - 152) = v0 - v7 - 2030745530;
  *(v5 - 148) = v7;
  v8 = (*(v1 + 8 * (v0 ^ 0xBB9)))(v5 - 152);
  return (*(v1 + 8 * *(v5 - 144)))(v8);
}

uint64_t sub_187E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char *a13, uint64_t a14, char a15, int a16, int a17)
{
  v25 = ((2 * (&a12 & 0x64C72638) - &a12 + 456710592) ^ 0x9695BB2C) * v20;
  a15 = ((((*(v17 + 48) - v23) ^ 0x67) - 103) ^ (((*(v17 + 48) - v23) ^ 0x30) - 48) ^ ((((v19 ^ 0xB4) + 26) ^ (*(v17 + 48) - v23)) - 125)) - ((2 * (&a12 & 0x38) - &a12 - 64) ^ 0x2C) * v20 + 126;
  a13 = &a10;
  a14 = v21;
  a16 = (v19 + 1339) ^ v25;
  a17 = (v24 - 714572819) ^ v25;
  v26 = (*(v22 + 8 * (v19 + 2232)))(&a12);
  return (*(v22 + 8 * ((1920 * (a12 == v18)) ^ v19)))(v26);
}

uint64_t sub_188B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v21 - 120) = v20 - 1556366573 * (((v19 | 0x97EE235D) - (v19 & 0x97EE235D)) ^ 0xF30A00B7) + 828;
  *(v21 - 136) = a15;
  *(v21 - 128) = v18;
  v22 = (*(v17 + 8 * (v20 ^ 0xCDE)))(v21 - 136);
  return (*(v17 + 8 * ((808 * (v16 == (v15 ^ (v20 - 1326412248) & 0x4F0F6DF7 ^ 1))) ^ v20)))(v22);
}

uint64_t sub_18964()
{
  *(v2 - 112) = &v5;
  *(v2 - 128) = v4;
  *(v2 - 120) = v1 - 143681137 * ((((2 * (v2 - 128)) | 0x96B1327C) - (v2 - 128) + 883386050) ^ 0xAA622E76) + 329;
  return (*(v0 + 8 * (v1 + 1490)))(v2 - 128);
}

uint64_t sub_18CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int *a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v44 = 4 * (v40 ^ v39);
  v45 = -1174920269 * ((*(*a34 + (*a36 & 0xFFFFFFFFB15FA91CLL)) ^ (a38 + v44)) & 0x7FFFFFFF);
  v46 = v45 ^ HIWORD(v45);
  v47 = -1174920269 * v46;
  v48 = 4 * (((-1174920269 * v46) >> 24) + 6);
  *(a39 + v44) ^= *(a38 + v44) ^ *(*(&off_C1600 + v42 - 1640540896) + HIBYTE(v47)) ^ *(*(&off_C1600 + v42 - 1640541062) + v48 - 4) ^ *(*(&off_C1600 + v42 - 1640541013) + v48 - 12) ^ (598933504 * v46) ^ v47 ^ (1876530667 * HIBYTE(v47) + (((v42 - 1640541087 - v39) & ((v42 - 1640541087) ^ (-2 - v43)) | v39 & ~(v42 - 1640541087)) >> 31));
  return (*(a5 + 8 * ((3606 * (v41 == 1)) ^ 0x653)))();
}

uint64_t sub_18E20@<X0>(int a1@<W8>, int a2, __int16 a3, char a4, char a5, char a6, int a7, int a8, char a9, char *a10, unsigned int a11, char a12, int a13, int a14, char *a15, uint64_t a16, char *a17)
{
  v20 = v17 - 891;
  v21 = *v18;
  v22 = 1504884919 * (((&a10 | 0x29362C21) - (&a10 | 0xD6C9D3DE) - 691416098) ^ 0xD2F59B3A);
  a12 = (-73 * (((&a10 | 0x21) - (&a10 | 0xDE) - 34) ^ 0x3A)) ^ 0xC7;
  a11 = v22 + 1152464250 + (((a1 ^ 0xB785AB0B) + 1215976693) ^ ((a1 ^ 0xD4CBB5B4) + 724847180) ^ (((v20 + 2142312521) ^ a1) - 2142313502));
  a15 = &a6;
  a16 = v21;
  a14 = (v20 - 562359833) ^ v22;
  a10 = &a9;
  a17 = &a5;
  v23 = (*(v19 + 8 * (v20 + 1428)))(&a10);
  return (*(v19 + 8 * ((1522 * (a13 == ((v20 + 891) ^ 0x9E32AF0C))) ^ v20)))(v23);
}

uint64_t sub_19000@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W6>, char a4@<W7>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int *a18)
{
  v26 = v19 ^ a2;
  v27 = (v21 + (a1 - 1));
  v28 = -1174920269 * ((*(*a17 + (*a18 & (v26 ^ v20))) ^ v27) & 0x7FFFFFFF);
  v29 = -1174920269 * ((v28 >> ((v26 + a3) & a4 ^ v22)) ^ v28);
  LODWORD(v29) = *(*(v24 + 8 * (v26 ^ 0x75)) + (v29 >> 24) - 11) ^ *(*(v24 + 8 * (v26 ^ v25)) + (v29 >> 24) - 4) ^ *(*(v24 + 8 * (v26 & 0xE971F94E)) + (v29 >> 24) - 2) ^ v29 ^ (-5 * (v29 >> 24));
  *v27 = v29 ^ (a5 >> v18);
  return (*(v23 + 8 * ((761 * (a1 == (v29 != (a5 >> v18)))) ^ v26)))();
}

uint64_t sub_1900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = v5 + (((a5 ^ 0x663) + 691591753) & 0xD6C723D7) - 710;
  if (v6 > v8)
  {
    v8 = v6;
  }

  return (*(v7 + 8 * (((v8 < 0x7FFFFFFF) * (a5 - 604)) ^ a5 ^ 0x663)))();
}

uint64_t sub_19070(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = ((a5 - 904) ^ v5 ^ ((a5 - 1178) | 0x112)) - a2;
  if (v6 > v8)
  {
    v8 = v6;
  }

  return (*(v7 + 8 * ((101 * (v8 < 0x7FFFFFFF)) ^ a5)))();
}

void sub_190BC()
{
  *v5 = *v1;
  *v4 = v0;
  *v1 = 0;
  *(v1 + 8) = 0x1D69D0011D69D001;
  v2 = *(v1 + 24);
  v3 = *(v1 + 20) | 1;
  *(v1 + 16) = 1611143476;
  *(v1 + 20) = v3;
  *(v6 + 8) = v2;
}

uint64_t sub_193D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, int a19, int a20, int a21, int a22)
{
  v25 = (a20 ^ (a5 + v24 - 1326 - 393)) + a21;
  v26 = a17 < 0x41CA5989;
  if (v26 == v25 > v24 - 1103781953)
  {
    v26 = v25 + 1103780233 < a17;
  }

  return (*(v23 + 8 * ((!v26 * (v24 - 1713)) ^ (v24 - 1326))))(a1, v25, a22 + (v22 ^ a5), a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_19460(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 a5)
{
  v7 = v6 ^ 0x64;
  v8 = ((((a4 + 33) ^ 0xF7) + 111) ^ v6) & (2 * (a5 & 0x67)) ^ a5 & 0x67;
  v9 = (2 * v7) & 2 ^ ((a4 + 33) | 0x84) ^ ((2 * v7) ^ 6) & v7 ^ 0x85;
  v10 = (a5 ^ (2 * ((((4 * v9) ^ 0xC) & v9 | 3) & (16 * (v9 & (4 * v8) ^ v8)) ^ v9 & (4 * v8) ^ v8))) & 0x7F;
  v12 = v10 != 103 && (v10 ^ 0x67u) < 5;
  return (*(v5 + 8 * ((2793 * v12) ^ a4)))();
}

uint64_t sub_19558()
{
  v4 = v2 - 1864642691;
  v5 = v4 < 0xDC080955;
  v6 = v3 + v1 - 603454514 < v4;
  if (v3 > 0x23F7F6AA != v5)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((!v6 * ((v1 + 569) ^ 0x7DB)) ^ (v1 - 1125))))();
}

void sub_195D8()
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v1) >> v2;
  *(v9 + 4 * v4) = v10 + v1 - (v3 & (2 * v10));
  if (*(*(v6 + 8) + 4 * v4) == v1)
  {
    v11 = 1027325439;
  }

  else
  {
    v11 = 1027325440;
  }

  v12 = v11 + v0;
  if (((v5 - 571) | 0x712u) + v7 + *(v6 + 4) >= 0x7FFFFFFF)
  {
    v13 = 1919379964 - v12;
  }

  else
  {
    v13 = v12;
  }

  *(v6 + 4) = v13;
}

uint64_t sub_19A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a13 = v16;
  a15 = 210068311 * (((&a13 | 0xBD1CF4C0) - &a13 + (&a13 & 0x42E30B38)) ^ 0x2FCACB64) + 2202;
  v18 = (*(v15 + 18888))(&a13);
  return (*(v15 + 8 * ((162 * (a14 == v17)) | 0x10Cu)))(v18);
}

uint64_t sub_19B5C@<X0>(unint64_t a1@<X8>)
{
  v4 = v1 + 721;
  *(*(v2 + 8) + 4 * (a1 - 1)) = -1722851109;
  v5 = a1 > (v1 ^ 0x24Eu) - 390;
  return (*(v3 + 8 * (((8 * v5) | (32 * v5)) ^ v4)))();
}

uint64_t sub_19DA4@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = v27;
  v31 = a1[5] ^ 0xE2;
  v32 = *(&off_C1600 + v27 - 290) - 12;
  *(v29 - 160) = v28;
  v33 = v32[v31];
  v34 = *(&off_C1600 + v27 - 284) - 8;
  v35 = v34[a1[15] ^ 0x92];
  v36 = (v27 - 51) | 1;
  *(v29 - 116) = v36;
  v37 = v34[((a1[7] & 0xC0 ^ 0x5A8150367A40F0D9) & (a1[7] & 0x3F ^ 0x5BD7FE367A4CF0F1) | a1[7] & 0x26) ^ 0x5A8150367A40F062];
  v38 = *(&off_C1600 + v27 - 210) - 8;
  v39 = (v37 ^ 0xE6FF19B2) & ((v33 << (v36 ^ 0x39)) ^ 0xE6E419FB);
  v40 = -87 * v38[a1[12] ^ 0x68] - 84;
  v41 = *(&off_C1600 + v30 - 217) - 8;
  v42 = v41[a1[14] ^ 0xD6] + 35;
  v43 = (((((v40 ^ 0xD7) << 24) ^ 0x42987DD8) & ~((v42 ^ 0x27) << 8) | ((v42 ^ 0x27) << 8) & 0x8200) ^ 0x56670227) & ((((v32[a1[13] ^ 0xB9] << 16) ^ 0xDF39BC1E) & (v35 ^ 0xDFFFBD9C) | v35 & 0xFFFFFFE1) ^ 0x82D9A60D);
  v44 = ((v41[a1[6] ^ 0x87] + 35) ^ 0x30) << 8;
  v45 = (v44 | 0x5D1F05A) ^ (v39 & 0x4E900B9 ^ 0xB24EC1A5 ^ ((((-87 * v38[a1[4] ^ 0x57] - 84) ^ 0xA7) << 24) ^ 0x6F163146) & ((v39 | v37 & 4) ^ 0x19992AA4)) & ~v44;
  v46 = (((-87 * v38[a1[8] ^ 0xB9] - 84) ^ 0xBC) << 24) | ((v32[a1[9] ^ 0x3BLL] ^ 0x1A) << 16) | v34[a1[11] ^ 0x62] ^ 0xFA;
  LODWORD(v34) = v34[a1[3] ^ 0x29] ^ 0xB9 | ((v32[a1[1] ^ 8] ^ 0xEB) << 16) | (((-87 * v38[*a1 ^ 0xE1] - 84) ^ 0xDA) << 24);
  LOBYTE(v32) = v41[a1[2] ^ 0x8FLL] + 35;
  v47 = v41[a1[10] ^ 0xB7] + 35;
  v48 = ((((v40 ^ 0xD7) << 24) ^ 0x42987DD8) & ~((v42 ^ 0x27) << 8) & 0xA208E508 | ((v42 ^ 0x27) << 8) & 0x8000) ^ 0xCFACB8D5 ^ v43;
  LODWORD(v41) = (v34 & 0xFFFF00FF | ((v32 ^ 0xD8) << 8)) ^ 0x1B;
  v49 = v46 & 0xFFFF00FF | ((v47 ^ 0xE7) << 8);
  LODWORD(v34) = *(*(&off_C1600 + (v30 ^ 0x131)) + (BYTE2(v48) ^ 0xBAu) - 3);
  v50 = *(&off_C1600 + (v30 ^ 0x131)) - 12;
  v51 = *(&off_C1600 + v30 - 297) - 8;
  v52 = v40 ^ 0x88u;
  v53 = *&v51[4 * (v42 ^ 0x7E)] ^ 0xE2DF3F14;
  *(v29 - 156) = v30;
  v54 = *(&off_C1600 + (v30 ^ 0x1E2));
  LODWORD(v34) = ((v34 ^ v53) - ((2 * (v34 ^ v53)) & 0xB26BCBFC) - 650779138) ^ *(v54 + 4 * v52);
  v55 = *(&off_C1600 + (v30 ^ 0x175)) - 12;
  v56 = *&v55[4 * (v35 ^ 0x27)];
  *(v29 - 216) = v41;
  *(v29 - 204) = v45;
  v57 = v56 ^ v41 ^ (v34 - ((2 * v34) & 0xA12B9862) - 795489231) ^ v45;
  v58 = v56 ^ v41 ^ (v34 - ((2 * v34) & 0xA12B9862) - 795489231);
  v421 = v58;
  *(v29 - 208) = v49;
  LODWORD(v35) = v57 ^ v49;
  v429 = v57;
  v419 = v57 ^ v49;
  v431 = (v57 ^ v49 ^ v48);
  LODWORD(v41) = *&v55[4 * (v431 ^ 0x35)] ^ 0xD2A00989;
  LODWORD(v34) = v57 ^ v49 ^ v48 ^ 0xF83672DE;
  *(v29 - 168) = BYTE1(v34);
  LODWORD(v41) = v41 ^ *&v51[4 * (BYTE1(v34) ^ 0x9E)];
  v452 = v34 >> 24;
  LODWORD(v41) = (v41 - ((2 * v41) & 0xB26BCBFC) - 650779138) ^ *(v54 + 4 * ((v34 >> 24) ^ 0x86));
  v436 = BYTE2(v34);
  v59 = v50;
  v60 = v58 ^ *&v50[4 * (BYTE2(v34) ^ 0xBA)] ^ (v41 - ((2 * v41) & 0xC1D5F558) - 521471316);
  v425 = BYTE2(v57) ^ 0x5B;
  v61 = v60 ^ v57 ^ 0xA25B684D;
  *(v29 - 140) = v61;
  v62 = v61 ^ 0xF73EC34E;
  *(v29 - 212) = v48;
  v63 = v61 ^ 0xF73EC34E ^ v48;
  LODWORD(v50) = v63 ^ 0x7E4FB786;
  v539 = (v63 ^ 0x7E4FB786) >> 24;
  v506 = ((v63 ^ 0x7E4FB786) >> 16);
  v64 = *&v59[4 * (v506 ^ 0xBA)] ^ *(v54 + 4 * (v539 ^ 0x86));
  v497 = ((v63 ^ 0xB786) >> 8);
  v65 = ((v64 ^ 0x39DF1F52) - 2 * ((v64 ^ 0x39DF1F52) & 0x235C5BD ^ v64 & 5) + 37078456) ^ *&v51[4 * (v497 ^ 0x9E)];
  *(v29 - 164) = v63;
  v66 = v60 ^ *&v55[4 * (v63 ^ 0x6D)] ^ (v65 - ((2 * v65) & 0xA12B9862) - 795489231);
  *(v29 - 124) = v66;
  BYTE2(v63) = BYTE2(v35) ^ 0x36;
  v66 ^= 0xFEB4AEEu;
  v67 = v66 ^ v35 ^ 0xF83672DE;
  *(v29 - 240) = v67;
  LODWORD(v50) = v67 ^ v50;
  v544 = BYTE2(v50);
  v68 = *&v59[4 * (BYTE2(v50) ^ 0xBA)];
  *(v29 - 232) = BYTE1(v50);
  v69 = *&v51[4 * (BYTE1(v50) ^ 0x9E)] ^ v68;
  *(v29 - 248) = v50 >> 24;
  v70 = ((v69 ^ 0xE2DF3F14) - 2 * ((v69 ^ 0xE2DF3F14) & 0x5935E5FF ^ v69 & 1) - 650779138) ^ *(v54 + 4 * ((v50 >> 24) ^ 0x86));
  *(v29 - 172) = v50;
  v71 = v66;
  v536 = BYTE2(v66);
  v72 = v66 ^ *&v55[4 * (v50 ^ 0xEB)] ^ (v70 - ((2 * v70) & 0xA12B9862) - 795489231);
  v460 = v61 ^ 0xF73EC34E ^ v35 ^ 0xF83672DE;
  *(v29 - 148) = v72 ^ v460;
  v73 = v72 ^ v460 ^ 0x598844C8;
  v438 = v73;
  v468 = v73 ^ v50;
  v471 = (v73 ^ v50 ^ 0xCD2CB9A0) >> 24;
  v74 = *&v55[4 * ((v73 ^ v50) ^ 0x83)] ^ *(v54 + 4 * (v471 ^ 0x86)) ^ 0x9A029CF;
  v75 = v73 ^ v50 ^ 0xCD5DCD68;
  v450 = BYTE2(v75);
  v76 = (v74 - ((2 * v74) & 0xC1D5F558) - 521471316) ^ *&v59[4 * (BYTE2(v75) ^ 0xBA)];
  v463 = BYTE1(v75);
  v77 = (v76 - ((2 * v76) & 0x46B8B70) + 37078456) ^ *&v51[4 * (BYTE1(v75) ^ 0x9E)];
  v537 = v71 ^ v62;
  LODWORD(v34) = v71 ^ v62 ^ 0x7E4FB786;
  *(v29 - 152) = v34;
  *(v29 - 136) = v77 ^ v34;
  LODWORD(v50) = v77 ^ v34 ^ 0xF39A3E26 ^ v50;
  v78 = v77 ^ v34 ^ 0xF39A3E26;
  v528 = BYTE2(v50);
  v525 = v50;
  v79 = *&v59[4 * (BYTE2(v50) ^ 0xBA)] ^ *(v54 + 4 * ((v50 >> (v72 & 0x18) >> (v72 & 0x18 ^ 0x18)) ^ 0x86u));
  v522 = BYTE1(v50);
  v80 = ((v79 ^ 0x39DF1F52) - 2 * ((v79 ^ 0x39DF1F52) & 0x235C5BC ^ v79 & 4) + 37078456) ^ *&v51[4 * (BYTE1(v50) ^ 0x9E)];
  v516 = v77 ^ v72;
  v521 = BYTE2(v78);
  LODWORD(v50) = v78 ^ v73;
  v509 = v78 ^ v73;
  v81 = v77 ^ v72 ^ *&v55[4 * ((v78 ^ v73 ^ v75) ^ 0x83)] ^ (v80 - ((2 * v80) & 0xA12B9862) - 795489231);
  *(v29 - 132) = v81;
  v82 = v81 ^ 0x53DB0D92 ^ v78;
  v83 = v81 ^ 0x53DB0D92;
  v542 = v81 ^ 0x92;
  v84 = v82 ^ 0xF73EC34E ^ v75;
  v85 = v84 ^ 0xBF7FF0FA;
  v426 = ((v84 ^ 0xBF7FF0FA) >> 16);
  v86 = *&v59[4 * (v426 ^ 0xBA)];
  *(v29 - 256) = v84;
  v87 = v86 ^ *&v55[4 * (v84 ^ 0x11)] ^ 0x307F369D;
  v415 = HIBYTE(v85);
  LODWORD(v38) = (v87 - ((2 * v87) & 0xB26BCBFC) - 650779138) ^ *(v54 + 4 * (HIBYTE(v85) ^ 0x86));
  v416 = BYTE1(v85);
  LODWORD(v38) = (v38 - ((2 * v38) & 0x46B8B70) + 37078456) ^ *&v51[4 * (BYTE1(v85) ^ 0x9E)] ^ v83;
  *(v29 - 144) = v38;
  v515 = BYTE2(v50) ^ 0x5D;
  v88 = v82 ^ 0xF73EC34E ^ v50 ^ 0xCD5DCD68;
  v483 = v38 ^ 0x85DB0D92 ^ v82;
  v492 = v38 ^ 0x85DB0D92;
  v487 = v483 ^ 0x484133B4 ^ v88;
  LODWORD(v38) = v487 ^ 0xBDE5CEDC ^ v85;
  LOBYTE(v36) = v38 ^ 0x26;
  v501 = (v38 ^ 0x29A3E26) >> 24;
  v531 = ((v38 ^ 0x3E26) >> 8);
  v89 = *&v51[4 * (v531 ^ 0x9E)] ^ *(v54 + 4 * (v501 ^ 0x86));
  v490 = ((v38 ^ 0x29A3E26) >> 16);
  v90 = ((v89 ^ 0xDB002046) - 2 * ((v89 ^ 0xDB002046) & 0x60EAFAAD ^ v89 & 1) - 521471316) ^ *&v59[4 * (v490 ^ 0xBA)];
  v475 = v487 ^ 0xDC ^ v85;
  v455 = v90 - ((2 * v90) & 0xA12B9862) - 795489231;
  v457 = v492 ^ *&v55[4 * (v475 ^ 0xCD)];
  v466 = v457 ^ v455 ^ v483 ^ 0x484133B4;
  *(v29 - 128) = v457 ^ v455;
  v447 = v466 ^ 0x19868409 ^ v487 ^ 0xBDE5CEDC;
  *(v29 - 180) = v466 ^ 0x19868409;
  LODWORD(v38) = v447 ^ 0xC130088F ^ v38 ^ 0x29A3E26;
  v439 = (v38 ^ 0x7B68C86) >> 24;
  v441 = ((v38 ^ 0x8C86) >> 8);
  v91 = *&v51[4 * (v441 ^ 0x9E)] ^ *(v54 + 4 * (v439 ^ 0x86));
  v434 = ((v38 ^ 0x7B68C86) >> 16);
  LODWORD(v41) = ((v91 ^ 0xDB002046) - 2 * ((v91 ^ 0xDB002046) & 0x60EAFAAD ^ v91 & 1) - 521471316) ^ *&v59[4 * (v434 ^ 0xBA)];
  v495 = v457 ^ v455 ^ *&v55[4 * (v447 ^ 0x8F ^ v36 ^ 0x6D)] ^ (v41 - ((2 * v41) & 0xA12B9862) - 795489231);
  *(v29 - 176) = v495 ^ 0x7B68C86;
  v477 = v495 ^ 0x7B68C86 ^ v466 ^ 0x19868409;
  v480 = v477 ^ v447 ^ 0xC130088F;
  *(v29 - 220) = v480 ^ 0xC104CD8D;
  LODWORD(v52) = v480 ^ 0xC104CD8D ^ v38 ^ 0x7B68C86;
  v504 = v480 ^ 0x8D ^ v38 ^ 0x86;
  LODWORD(v35) = *&v55[4 * (v504 ^ 0x49)];
  v500 = (v52 ^ 0xA91877A2) >> 24;
  v92 = *(v54 + 4 * (v500 ^ 0x86));
  *(v29 - 120) = 0;
  LODWORD(v414) = v52 ^ 0xA91877A2;
  v412 = ((v52 ^ 0x77A2) >> 8);
  v93 = ((v35 ^ 0x9A029CF ^ v92) - ((2 * (v35 ^ 0x9A029CF ^ v92)) & 0x46B8B70) + 37078456) ^ *&v51[4 * (v412 ^ 0x9E)];
  v405 = ((v52 ^ 0xA91877A2) >> 16);
  HIDWORD(v413) = (v93 - ((2 * v93) & 0xC1D5F558) - 521471316) ^ *&v59[4 * (v405 ^ 0xBA)];
  v94 = v431 ^ 0xEF;
  LODWORD(v55) = *(v29 - 156);
  v95 = *(&off_C1600 + (v55 ^ 0x19D)) - 4;
  LODWORD(v35) = (BYTE2(v63) ^ 0xFD84E2EE) - 1706891406 + *&v95[4 * (BYTE2(v63) ^ 0x7E)];
  v424 = BYTE1(v421) ^ 0x6F;
  v96 = *(&off_C1600 + v55 - 148) - 4;
  LODWORD(v52) = ((v425 ^ 0xFD84E273) - 1706891406 + *&v95[4 * (v425 ^ 0xE3)]) ^ (-1974868763 * *&v96[4 * (HIBYTE(v429) ^ 0xE7)] + 784182602);
  v97 = *(&off_C1600 + v55 - 213) - 8;
  LODWORD(v54) = (v35 - ((2 * v35) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v419 ^ 0x33)];
  v98 = (-1974868763 * *&v96[4 * (HIBYTE(v421) ^ 0xCB)] + 784182602) ^ ((((v421 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (((v421 ^ 0x6AB66F6C) >> 16) ^ 0x7B)]);
  v99 = *(&off_C1600 + (v55 ^ 0x19F)) - 12;
  LODWORD(v52) = (v52 - ((2 * v52) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * (BYTE1(v429) ^ 0x4B)];
  v100 = (v98 - ((2 * v98) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v421 ^ 0x1C)];
  v432 = v52 - ((2 * v52) & 0x490A7B00);
  LODWORD(v52) = (v436 ^ 0xFD84E215) - 1706891406 + *&v95[4 * (v436 ^ 0x85)];
  LODWORD(v437) = *&v99[4 * (BYTE1(v419) ^ 0xE4)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v419) ^ 0x54)] + 784182602) ^ (v54 - ((2 * v54) & 0xBD121AB6) + 1586040155);
  LODWORD(v52) = (-1974868763 * *&v96[4 * (v452 ^ 0xBE)] + 784182602) ^ *&v97[4 * v94] ^ (v52 - 1534771839 + (~(2 * v52) | 0xB6F584FF));
  v422 = v100 - ((2 * v100) & 0xBD121AB6);
  v420 = v52 - ((2 * v52) & 0xBD121AB6);
  LODWORD(v52) = *(v29 - 132) ^ 0xB89A99EC;
  LODWORD(v54) = (BYTE2(v52) ^ 0xFD84E2A4) - 1706891406 + *&v95[4 * (BYTE2(v52) ^ 0x34)];
  v101 = v415 ^ 0xB6;
  v411 = BYTE1(v88) ^ 0x50;
  v102 = *&v96[4 * (HIBYTE(v88) ^ 0xD2)];
  v103 = ((((v88 ^ 0xBFAB50FA) >> 16) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (((v88 ^ 0xBFAB50FA) >> 16) ^ 0x7B)]) ^ *&v97[4 * (v82 ^ 0x4E ^ v50 ^ 0x68 ^ 0x5F)] ^ (-1974868763 * v102 - ((345229770 * v102 + 1568365204) & 0x490A7B00) - 750589238);
  HIDWORD(v414) = v429 ^ 0x25;
  v104 = (-1974868763 * *&v96[4 * v101] - ((345229770 * *&v96[4 * v101] + 1568365204) & 0xBD121AB6) - 1924744539) ^ *&v99[4 * (v416 ^ 0x25)];
  v430 = v104 - ((2 * v104) & 0x490A7B00);
  LODWORD(v52) = *&v99[4 * BYTE1(v52)] ^ (v54 - ((2 * v54) & 0xBD121AB6) + 1586040155);
  v105 = (((v82 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 1706891406 + *&v95[4 * (((v82 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v417 = v52 - ((2 * v52) & 0x490A7B00);
  v409 = v103 - ((2 * v103) & 0xBD121AB6);
  v407 = BYTE1(v82) ^ 0x2D;
  LODWORD(v52) = (v105 - ((2 * v105) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v82 ^ 0xA4)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v82) ^ 0x40)] + 784182602);
  LODWORD(v408) = v52 - ((2 * v52) & 0xBD121AB6);
  v453 = (v426 ^ 0xFD84E217) - 1706891406 + *&v95[4 * (v426 ^ 0x87)];
  v404 = BYTE1(v72) ^ 0x36;
  v427 = v72 ^ *(v29 - 152);
  v106 = *&v96[4 * (HIBYTE(v427) ^ 0x39)];
  LODWORD(v52) = (((v72 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 1706891406 + *&v95[4 * (((v72 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  LODWORD(v54) = (((-345229770 * v106 - 1568365205) | 0x42EDE549) - 1974868763 * v106 - 1924744538) ^ *&v99[4 * ((v427 ^ 0xDA26) >> 8)];
  v107 = (v450 ^ 0xFD84E284) - 1706891406 + *&v95[4 * (v450 ^ 0x14)];
  LODWORD(v52) = (v52 - ((2 * v52) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v72 ^ 0x7D)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v72) ^ 0x5D)] + 784182602);
  v399 = *(v29 - 148) ^ 0xAF58D76C;
  v108 = (BYTE2(v399) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (BYTE2(v399) ^ 0x7B)];
  v451 = v54 - ((2 * v54) & 0x490A7B00);
  LODWORD(v54) = (v108 - ((2 * v108) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v438 ^ 0xD4)];
  HIDWORD(v401) = v54 - ((2 * v54) & 0xBD121AB6);
  LODWORD(v54) = *&v99[4 * (v463 ^ 0xE5)];
  v464 = (((v427 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (((v427 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  LODWORD(v54) = (v107 - ((2 * v107) & 0xBD121AB6) + 1586040155) ^ v54 ^ (-1974868763 * *&v96[4 * (v471 ^ 0xF0)] + 784182602);
  LODWORD(v401) = v52 - ((2 * v52) & 0xBD121AB6);
  HIDWORD(v437) = v468 ^ 0xC3;
  v472 = v54 - ((2 * v54) & 0x490A7B00);
  v402 = v60 ^ 0xD1;
  LODWORD(v54) = (v506 ^ 0xFD84E219) - 1706891406 + *&v95[4 * (v506 ^ 0x89)];
  LODWORD(v52) = (v54 - ((2 * v54) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * (v497 ^ 0x93)];
  v469 = v52 - ((2 * v52) & 0x490A7B00);
  LODWORD(v52) = *&v96[4 * (HIBYTE(v460) ^ 0xDE)];
  v109 = *(v29 - 140);
  v110 = (((v109 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (((v109 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  LODWORD(v54) = (v110 - ((2 * v110) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * ((v109 ^ 0x30D) >> 8)];
  LODWORD(v52) = ((BYTE2(v460) ^ 0xFD84E243) - 1706891406 + *&v95[4 * (BYTE2(v460) ^ 0xD3)]) ^ *&v99[4 * (BYTE1(v460) ^ 0xDB)] ^ (-1974868763 * v52 - ((345229770 * v52 + 1568365204) & 0xBD121AB6) - 1924744539);
  v396 = BYTE1(v60) ^ 0x9D;
  v507 = (((v60 ^ 0x37B09DC8) >> 16) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (((v60 ^ 0x37B09DC8) >> 16) ^ 0x7B)];
  HIDWORD(v400) = v54 - ((2 * v54) & 0x490A7B00);
  v398 = v460 ^ 0x6A;
  v461 = v52 - ((2 * v52) & 0x490A7B00);
  LODWORD(v52) = (-1974868763 * *&v96[4 * (v439 ^ 0xAC)] + 784182602) ^ ((v434 ^ 0xFD84E2A8) - 1706891406 + *&v95[4 * (v434 ^ 0x38)]);
  LODWORD(v54) = (v52 - ((2 * v52) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * (v441 ^ 0xD9)];
  LODWORD(v52) = (BYTE2(v447) ^ 0xFD84E256) - 1706891406 + *&v95[4 * (BYTE2(v447) ^ 0xC6)];
  v111 = v52 - ((2 * v52) & 0x490A7B00);
  LODWORD(v52) = *&v96[4 * ((v457 ^ ~v455) >> 24)];
  v112 = *(v29 - 128) ^ 0xDDA7A6D4;
  v113 = (-1974868763 * v52 - ((345229770 * v52 + 1568365204) & 0xBD121AB6) - 1924744539) ^ *&v99[4 * BYTE1(v112)];
  v445 = v447 ^ 0x8F ^ v36 ^ 0xF9;
  v114 = (v111 - 1534771840) ^ *&v97[4 * (v466 ^ 9 ^ v487 ^ 0xDC ^ 0x67)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v447) ^ 0x3E)] + 784182602);
  v456 = v113 - ((2 * v113) & 0x490A7B00);
  v458 = v54 - ((2 * v54) & 0x490A7B00);
  v392 = BYTE1(v466) ^ 0x9E;
  LODWORD(v54) = *&v96[4 * (HIBYTE(v466) ^ 0xCD)];
  LODWORD(v54) = *&v97[4 * (v466 ^ 0xC9)] ^ (-1974868763 * v54 - ((345229770 * v54 + 1568365204) & 0x490A7B00) - 750589238);
  v440 = v54 - ((2 * v54) & 0xBD121AB6);
  v498 = (BYTE2(v112) ^ 0xFD84E2A5) - 1706891406 + *&v95[4 * (BYTE2(v112) ^ 0x35)];
  v391 = BYTE1(v447) ^ 0x4F;
  v435 = v114 - ((2 * v114) & 0xBD121AB6);
  v486 = (BYTE2(v466) ^ 0xFD84E2FB) - 1706891406 + *&v95[4 * (BYTE2(v466) ^ 0x6B)];
  LODWORD(v54) = (BYTE2(v483) ^ 0xFD84E271) - 1706891406 + *&v95[4 * (BYTE2(v483) ^ 0xE1)];
  LODWORD(v54) = (v54 - ((2 * v54) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * (BYTE1(v483) ^ 0x28)];
  v442 = v483 ^ 0xAE;
  v115 = *&v96[4 * (HIBYTE(v487) ^ 0x22)];
  v116 = (-1974868763 * v115 - ((345229770 * v115 + 1568365204) & 0xBD121AB6) - 1924744539) ^ *&v99[4 * ((v487 ^ 0x4AFA) >> 8)];
  v394 = v483 ^ 0xB4 ^ v88 ^ 0xE4;
  v473 = v54 - ((2 * v54) & 0x490A7B00);
  v448 = v116 - ((2 * v116) & 0x490A7B00);
  v488 = (((v487 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 1706891406 + *&v95[4 * (((v487 ^ 0xBF864AFA) >> 16) ^ 0x35)];
  v389 = v501 ^ 0x67;
  v491 = (v490 ^ 0xFD84E291) - 1706891406 + *&v95[4 * (v490 ^ 1)];
  v117 = *(v29 - 144);
  LODWORD(v52) = *&v96[4 * (HIBYTE(v117) ^ 0x82)];
  LODWORD(v54) = (-1974868763 * v52 - ((345229770 * v52 + 1568365204) & 0xBD121AB6) - 1924744539) ^ *&v99[4 * (BYTE1(v117) ^ 5)] ^ ((BYTE2(v492) ^ 0xFD84E2FE) - 1706891406 + *&v95[4 * (BYTE2(v492) ^ 0x6E)]);
  v493 = v54 - ((2 * v54) & 0x490A7B00);
  v118 = (((v477 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 1706891406 + *&v95[4 * (((v477 ^ 0x23AAC875) >> 16) ^ 0x27)];
  LODWORD(v54) = (v118 - ((2 * v118) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * ((v477 ^ 0xC875) >> 8)];
  HIDWORD(v381) = v480 ^ 0x68D34E2A;
  v119 = *&v96[4 * (HIBYTE(v480) ^ 0x27)];
  v120 = (-1974868763 * v119 - ((345229770 * v119 + 1568365204) & 0x490A7B00) - 750589238) ^ *&v97[4 * (v480 ^ 0x5A)];
  v481 = v495 ^ 0x86 ^ v466 ^ 9 ^ 5;
  v388 = BYTE1(v495) ^ 0x82;
  v121 = ((v495 ^ 0xC1698200) >> 16);
  LODWORD(v50) = *&v95[4 * (v121 ^ 0x7B)];
  v502 = v54 - 1534771839 + (~(2 * v54) | 0xB6F584FF);
  v122 = (-1974868763 * *&v96[4 * (HIBYTE(v495) ^ 0x60)] + 784182602) ^ *&v97[4 * (v495 ^ 0x72)] ^ ((v121 ^ 0xFD84E2EB) - 1706891406 + v50 - ((2 * ((v121 ^ 0xFD84E2EB) - 1706891406 + v50)) & 0x490A7B00) - 1534771840);
  v123 = *&v96[4 * (v500 ^ 0x21)];
  LODWORD(v38) = *&v97[4 * (v504 ^ 0x12)] ^ ((v405 ^ 0xFD84E2A2) - 1706891406 + *&v95[4 * (v405 ^ 0x32)]) ^ (-1974868763 * v123 - ((345229770 * v123 + 1568365204) & 0x490A7B00) - 750589238);
  v386 = v122 - ((2 * v122) & 0xBD121AB6);
  v385 = v38 - ((2 * v38) & 0xBD121AB6);
  v383 = v120 - ((2 * v120) & 0xBD121AB6);
  v505 = (BYTE6(v381) ^ 0xFD84E2EB) - 1706891406 + *&v95[4 * (BYTE6(v381) ^ 0x7B)];
  LODWORD(v38) = (BYTE2(v516) ^ 0xFD84E2A2) - 1706891406 + *&v95[4 * (BYTE2(v516) ^ 0x32)];
  LODWORD(v50) = (v515 ^ 0xFD84E216) - 1706891406 + *&v95[4 * (v515 ^ 0x86)];
  v512 = v522 ^ 0x6E;
  LODWORD(v52) = (v50 - ((2 * v50) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v509 ^ 0x15)];
  LODWORD(v54) = (v521 ^ 0xFD84E2B1) - 1706891406 + *&v95[4 * (v521 ^ 0x21)];
  LODWORD(v38) = (v38 - ((2 * v38) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v516 ^ 0x54)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v516) ^ 0xEA)] + 784182602);
  LODWORD(v381) = v38 - ((2 * v38) & 0xBD121AB6);
  HIDWORD(a2) = BYTE1(v509) ^ 0xCC;
  LODWORD(v380) = BYTE1(v516) ^ 0x83;
  HIDWORD(v380) = v52 - ((2 * v52) & 0xBD121AB6);
  LODWORD(v382) = v525 ^ 0x81;
  LODWORD(v52) = (v54 - ((2 * v54) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * (BYTE1(*(v29 - 136)) ^ 0x56)] ^ (-1974868763 * *&v96[4 * (HIBYTE(*(v29 - 136)) ^ 0x6D)] + 784182602);
  HIDWORD(v382) = v52 - ((2 * v52) & 0x490A7B00);
  v467 = (v528 ^ 0xFD84E2DC) - 1706891406 + *&v95[4 * (v528 ^ 0x4C)];
  LODWORD(v52) = (v544 ^ 0xFD84E246) - 1706891406 + *&v95[4 * (v544 ^ 0xD6)];
  LODWORD(v51) = v52 - ((2 * v52) & 0xBD121AB6);
  LODWORD(v34) = *(v29 - 124);
  LODWORD(v52) = (-1974868763 * *&v96[4 * ((v34 >> 24) ^ 0x41)] + 784182602) ^ ((v536 ^ 0xFD84E273) - 1706891406 + *&v95[4 * (v536 ^ 0xE3)]);
  LODWORD(v55) = (v52 - ((2 * v52) & 0xBD121AB6) + 1586040155) ^ *&v99[4 * (BYTE1(v34) ^ 0x6F)];
  v124 = BYTE2(*(v29 - 152));
  v125 = (v124 ^ 0xFD84E2B8) - 1706891406 + *&v95[4 * (v124 ^ 0x28)];
  v126 = *&v96[4 * (HIBYTE(v60) ^ 0x96)];
  LODWORD(v54) = (v125 - ((2 * v125) & 0x490A7B00) - 1534771840) ^ *&v97[4 * (v537 ^ 0xCE)];
  v127 = *&v96[4 * (HIBYTE(v109) ^ 0xE6)];
  v128 = *&v96[4 * (v539 ^ 0x32)];
  v129 = *&v96[4 * v389];
  LODWORD(v59) = *(v29 - 240);
  LODWORD(v34) = *&v96[4 * (HIBYTE(v483) ^ 0xD7)];
  v130 = *&v96[4 * (HIBYTE(v477) ^ 0x82)];
  LODWORD(v38) = *&v96[4 * (HIBYTE(v509) ^ 0x5B)];
  v131 = *&v96[4 * ((v59 >> 24) ^ 0x18)];
  v132 = *&v96[4 * (HIBYTE(v525) ^ 0x17)];
  v133 = *&v96[4 * (*(v29 - 248) ^ 7)];
  v134 = *&v96[4 * (HIBYTE(v537) ^ 0x2E)];
  v534 = -1974868763 * *&v96[4 * (HIBYTE(*(v29 - 132)) ^ 0x48)] + 784182602;
  *(v29 - 152) = -1974868763 * *&v96[4 * (HIBYTE(*(v29 - 148)) ^ 0xE)] + 784182602;
  v529 = -1974868763 * v126 + 784182602;
  *(v29 - 148) = -1974868763 * v127 + 784182602;
  v135 = -1974868763 * v128 + 784182602;
  v484 = -1974868763 * v129 + 784182602;
  v540 = -1974868763 * v34 + 784182602;
  v478 = -1974868763 * v38 + 784182602;
  LODWORD(v406) = -1974868763 * v132 + 784182602;
  HIDWORD(v410) = -1974868763 * v134 + 784182602;
  LODWORD(v52) = (-1974868763 * v131 - ((345229770 * v131 + 1568365204) & 0x490A7B00) - 750589238) ^ *&v97[4 * (v59 ^ 0xBC)];
  v523 = *&v99[4 * v424];
  v519 = *&v99[4 * (*(v29 - 168) ^ 0xD0)];
  v136 = *&v99[4 * (*(v29 - 232) ^ 0xB0)] ^ (-1974868763 * v133 + 784182602);
  HIDWORD(v423) = *&v99[4 * v411];
  LODWORD(v410) = *&v99[4 * v407];
  *(v29 - 168) = *&v99[4 * BYTE1(v399)];
  v526 = *&v99[4 * v404];
  v517 = *&v99[4 * v396];
  v496 = *&v99[4 * v392];
  v137 = (v51 + 1586040155) ^ v136;
  LODWORD(v397) = *&v99[4 * v391];
  HIDWORD(v395) = *&v99[4 * (v531 ^ 0x72)];
  HIDWORD(v390) = *&v99[4 * v388];
  LODWORD(v393) = *&v99[4 * (v412 ^ 0x7D)];
  v138 = *&v99[4 * BYTE5(v381)];
  HIDWORD(v406) = *&v99[4 * v512];
  HIDWORD(v403) = *&v99[4 * v380];
  HIDWORD(v393) = *&v99[4 * HIDWORD(a2)];
  LODWORD(v413) = *&v99[4 * (BYTE1(v537) ^ 0x74)];
  LODWORD(v400) = *&v99[4 * (BYTE1(v59) ^ 0xF4)];
  v513 = v422 + 1586040155;
  v510 = v420 + 1586040155;
  HIDWORD(v418) = v409 + 1586040155;
  HIDWORD(v408) = v408 + 1586040155;
  LODWORD(v423) = HIDWORD(v401) + 1586040155;
  v532 = v401 + 1586040155;
  LODWORD(v390) = v440 + 1586040155;
  LODWORD(v401) = v435 + 1586040155;
  LODWORD(v387) = v386 + 1586040155;
  HIDWORD(v387) = v385 + 1586040155;
  v139 = v383 + 1586040155;
  HIDWORD(v433) = v52 - ((2 * v52) & 0xBD121AB6) + 1586040155;
  LODWORD(v384) = *&v97[4 * HIDWORD(v414)];
  v140 = *&v97[4 * (*(v29 - 256) ^ 0xBF)];
  LODWORD(v51) = *&v97[4 * (v542 ^ 0xE)];
  HIDWORD(v414) = *&v97[4 * (v427 ^ 0x3D)];
  LODWORD(v428) = (BYTE2(v59) ^ 0xFD84E264) - 1706891406 + *&v95[4 * (BYTE2(v59) ^ 0xF4)];
  HIDWORD(v437) = *&v97[4 * HIDWORD(v437)];
  LODWORD(v50) = *&v97[4 * v402];
  LODWORD(v99) = *(v29 - 172) ^ 0xF2;
  LODWORD(v95) = *&v97[4 * (*(v29 - 164) ^ 0xC9)];
  *(v29 - 172) = *&v97[4 * (*(v29 - 140) ^ 0x7D)];
  *(v29 - 164) = *&v97[4 * v398];
  LODWORD(v403) = *&v97[4 * v445];
  v141 = *&v97[4 * (*(v29 - 128) ^ 0x1C)];
  HIDWORD(v397) = *&v97[4 * (v475 ^ 0x97)];
  v142 = *&v97[4 * v442];
  v476 = *&v97[4 * v394];
  LODWORD(v395) = *&v97[4 * (*(v29 - 144) ^ 0x33)];
  v482 = *&v97[4 * v481];
  v443 = *&v97[4 * v382];
  HIDWORD(v384) = *&v97[4 * (*(v29 - 136) ^ 0xB)];
  v446 = *&v97[4 * (*(v29 - 124) ^ 0x45)];
  *(v29 - 144) = *&v97[4 * v99];
  LODWORD(v97) = v432 - 1534771840;
  v143 = v430 - 1534771840;
  v144 = v417 - 1534771840;
  HIDWORD(v428) = v451 - 1534771840;
  LODWORD(v418) = v472 - 1534771840;
  LODWORD(v433) = v461 - 1534771840;
  v145 = v493 - 1534771840;
  v462 = v55 - ((2 * v55) & 0x490A7B00) - 1534771840;
  v146 = v137 - ((2 * v137) & 0x490A7B00) - 1534771840;
  v147 = v139 ^ v138 ^ v505 ^ 0xC38F08C7;
  LODWORD(v38) = v95 ^ v135 ^ 0xADE18B96 ^ (v469 - 1534771840);
  LODWORD(v55) = *(v29 - 156);
  v148 = *(&off_C1600 + v55 - 341) - 12;
  v149 = *(&off_C1600 + v55 - 281) - 12;
  v150 = *(&off_C1600 + (v55 ^ 0x118));
  v151 = (((v149[*(v29 - 111) ^ 0xD5] - 1) ^ 0xED) << 16) | ((*(v150 + (*(v29 - 112) ^ 1)) ^ 0x99999999) << 24);
  LODWORD(v59) = ((v148[*(v29 - 102) ^ 0x49] ^ 0x82) << 8) & 0xFF00FFFF | (((v149[*(v29 - 103) ^ 0xB3] - 1) ^ 0x59) << 16);
  v152 = (((v149[*(v29 - 99) ^ 0xDLL] - 1) ^ 0xA9) << 16) | ((*(v150 + (*(v29 - 100) ^ 0xCALL)) ^ 0xB) << 24);
  LODWORD(v95) = ((v148[*(v29 - 106) ^ 0xD5] ^ 0xA1) << 8) | ((*(v150 + (*(v29 - 108) ^ 0xC2)) ^ 0x53) << 24);
  v153 = *(v29 - 107) ^ 0x45;
  *(v29 - 240) = v149;
  *(v29 - 232) = v148;
  LODWORD(v95) = v95 & 0xFF00FFFF | (((v149[v153] - 1) ^ 0x16) << 16);
  v154 = v152 | ((v148[*(v29 - 98) ^ 0xC6] ^ 0xDF) << 8);
  LODWORD(v153) = v151 | ((v148[*(v29 - 110) ^ 0xE7] ^ 0x3B) << 8);
  v155 = *(&off_C1600 + (v55 ^ 0x150)) - 12;
  v156 = v154 & 0xFFFFFF00 | (53 * v155[*(v29 - 97) ^ 0xCBLL] + 112) ^ 0x79;
  LODWORD(v153) = v153 & 0xFFFFFF00 | (53 * v155[*(v29 - 109) ^ 0x8ALL] + 112) ^ 0xC9;
  LODWORD(v95) = v95 & 0xFFFFFF00 | (53 * v155[*(v29 - 105) ^ 0xB9] + 112) ^ 0x3C;
  v157 = *(v29 - 101) ^ 6;
  *(v29 - 256) = v155;
  LOBYTE(v157) = v155[v157];
  v158 = *(v29 - 104) ^ 0x8ALL;
  *(v29 - 248) = v150;
  LODWORD(v59) = v59 & 0xFFFFFF00 | (53 * v157 + 112) ^ 0x87 | ((*(v150 + v158) ^ 0x74) << 24);
  *(v29 - 136) = v153 ^ 0x37373737;
  *(v29 - 132) = v156 ^ 0x37373737;
  *(v29 - 128) = v95 ^ 0x37373737;
  *(v29 - 140) = v59 ^ 0x37373737;
  v543 = (v456 - 1534771840) ^ v141 ^ v498;
  v541 = (v473 - 1534771840) ^ v142 ^ v540;
  v538 = v143 ^ v140 ^ v453;
  v535 = v144 ^ v51 ^ v534;
  v533 = v526 ^ v532;
  v530 = v517 ^ v50 ^ v507 ^ v529;
  v527 = v97 ^ v384;
  v524 = v513 ^ v523;
  v520 = v510 ^ v519;
  *(v29 - 124) = (((*(v29 - 160) ^ 0x87C54695) + 1235071405) ^ ((*(v29 - 160) ^ 0x6ADBB5C1) - 1534901511) ^ ((*(v29 - 160) ^ 0x66A6D98F) - 1459736905)) - 1025964431;
  LODWORD(v155) = HIDWORD(v413) ^ *(v29 - 180);
  LODWORD(v52) = *(v29 - 220) ^ v155;
  v518 = v52 ^ v414 ^ 0x15F1020B;
  v514 = v155 ^ 0xB530938F;
  v511 = v52 ^ 0xB9519DD8;
  v508 = *(v29 - 176) ^ HIDWORD(v413) ^ 0xD960783;
  v503 = v482 ^ v502 ^ (-1974868763 * v130 + 784182602);
  HIDWORD(v499) = v393 ^ HIDWORD(v387);
  LODWORD(v499) = v403 ^ (v458 - 1534771840);
  HIDWORD(v494) = v496 ^ (v440 + 1586040155) ^ v486;
  LODWORD(v494) = v401 ^ v397;
  HIDWORD(v489) = HIDWORD(v397) ^ HIDWORD(v395) ^ v484 ^ v491;
  LODWORD(v489) = v476 ^ v488 ^ (v448 - 1534771840);
  HIDWORD(v485) = v395 ^ v145;
  LODWORD(v485) = HIDWORD(v418) ^ HIDWORD(v423);
  HIDWORD(v479) = v410 ^ (v408 + 1586040155);
  LODWORD(v479) = HIDWORD(v393) ^ (HIDWORD(v380) + 1586040155) ^ v478;
  HIDWORD(v474) = HIDWORD(v384) ^ (HIDWORD(v382) - 1534771840);
  LODWORD(v474) = HIDWORD(v406) ^ v443 ^ v406 ^ v467;
  LODWORD(v150) = *(v29 - 120);
  HIDWORD(v470) = HIDWORD(v403) ^ (v381 + 1586040155);
  LODWORD(v470) = HIDWORD(v437) ^ v418;
  HIDWORD(v465) = HIDWORD(v414) ^ (v451 - 1534771840) ^ v464;
  LODWORD(v465) = *(v29 - 168) ^ *(v29 - 152) ^ (HIDWORD(v401) + 1586040155);
  HIDWORD(v459) = v446 ^ v462;
  LODWORD(v459) = v400 ^ v428 ^ HIDWORD(v433);
  HIDWORD(v454) = *(v29 - 144) ^ v146;
  LODWORD(v454) = v413 ^ (v54 - ((2 * v54) & 0xBD121AB6) + 1586040155) ^ HIDWORD(v410);
  HIDWORD(v449) = *(v29 - 172) ^ (HIDWORD(v400) - 1534771840) ^ *(v29 - 148);
  LODWORD(v449) = *(v29 - 164) ^ v433;
  *(v29 - 220) = v38;
  v159 = *(v29 - 116);
  LODWORD(v444) = v437 - ((2 * v437) & 0xF0A4818) + 126166028;
  HIDWORD(v444) = 46032142 - v38 - v147;
  HIDWORD(a27) = HIDWORD(v444) ^ v147;
  *(v29 - 120) = v150;
  *(v29 - 144) = *(v29 - 124) < 0x8B9E454u;
  v160 = (*(v29 - 192) + v150);
  LOBYTE(v149) = v160[5];
  *(v29 - 156) = v159 ^ 0x72;
  *(v29 - 180) = 0;
  *(v29 - 176) = v159 + 532;
  v161 = *(v29 - 248);
  v162 = *(v29 - 240);
  v163 = *(v29 - 232);
  v164 = *(v29 - 256);
  LODWORD(v59) = (((*(v162 + (((v159 ^ 0x72) + 95) ^ (v159 + 20) ^ v149)) - 1) ^ 0x74) << 16) | ((*(v161 + (v160[4] ^ 2)) ^ 0x43) << 24) | ((*(v163 + (v160[6] ^ 0xE2)) ^ 0xFD) << 8);
  LOBYTE(v149) = *(v164 + (v160[7] ^ 0xBFLL));
  LOBYTE(v149) = (-123 * v149 + 69 * (-80 - 16 * v149)) ^ 0xFA;
  v165 = v59 & 0xFFFFFF00 | v149;
  v166 = ((53 * *(v164 + (v160[15] ^ 0x3CLL)) + 112) ^ 0x68 | ((*(v163 + (v160[14] ^ 8)) ^ 0xB9) << 8)) & 0xFF00FFFF | ((*(v161 + (v160[12] ^ 0xBDLL)) ^ 0x6B) << 24) | (((*(v162 + (v160[13] ^ 0xCALL)) - 1) ^ 0xFD) << 16);
  v167 = (53 * *(v164 + (v160[3] ^ 0x19)) + 112) ^ 0x38 | ((*(v161 + (*v160 ^ 0x50)) ^ 0x76) << 24) | (((*(v162 + (v160[1] ^ 0x1ELL)) - 1) ^ 0x68) << 16) | ((*(v163 + (v160[2] ^ 6)) ^ 0xC5) << 8);
  v168 = ((*(v161 + v160[8]) ^ 0x48) << 24) | (((*(v162 + (v160[9] ^ 0xB0)) - 1) ^ 0x86) << 16) | ((*(v163 + (v160[10] ^ 0x42)) ^ 0x38) << 8) | (53 * *(v164 + (v160[11] ^ 0x60)) + 112) ^ 0xDA;
  if ((v149 & 2) != 0)
  {
    v169 = -2;
  }

  else
  {
    v169 = 2;
  }

  *(v29 - 168) = v165;
  v170 = v169 + v165;
  *(v29 - 164) = v166;
  v171 = v518 ^ v166;
  v172 = v514 ^ v170;
  v173 = (v514 ^ v170) >> 24;
  *(v29 - 160) = v168;
  BYTE2(v170) = BYTE2(v511) ^ BYTE2(v168);
  *(v29 - 172) = v167;
  v174 = v508 ^ v167;
  v175 = *(&off_C1600 + v159 - 117) - 4;
  v176 = *&v175[4 * ((v511 ^ v168) >> 8)];
  HIDWORD(v178) = v176 ^ 0x1EAD;
  LODWORD(v178) = v176 ^ 0x9D008000;
  v177 = v178 >> 14;
  v179 = *(&off_C1600 + (v159 ^ 0x1A6)) - 4;
  v180 = *&v179[4 * v173];
  v181 = *&v175[4 * BYTE1(v174)];
  v182 = HIBYTE(v174);
  HIDWORD(v178) = v181 ^ 0x1EAD;
  LODWORD(v178) = v181 ^ 0x9D008000;
  *(v29 - 116) = v159;
  v183 = *(&off_C1600 + (v159 ^ 0x128)) - 8;
  v184 = (-21582785 * *&v183[4 * (v511 ^ v168)] + 1520068107) ^ (v180 - 1447359227);
  v185 = (-21582785 * *&v183[4 * v172] + 1520068107) ^ v177;
  v186 = *(&off_C1600 + v159 - 241) - 8;
  v187 = *&v186[4 * BYTE2(v174)];
  v188 = (*&v179[4 * ((v511 ^ v168) >> 24)] - 1447359227) ^ (v178 >> 14);
  v189 = *&v186[4 * BYTE2(v172)];
  v190 = *&v175[4 * BYTE1(v172)];
  HIDWORD(v178) = v190 ^ 0x1EAD;
  LODWORD(v178) = v190 ^ 0x9D008000;
  v191 = (v188 + 126166028 - ((2 * v188) & 0xF0A4818)) ^ v189 ^ (-21582785 * *&v183[4 * v171] + 1520068107);
  v192 = (*&v179[4 * HIBYTE(v171)] - 1447359227) ^ (v178 >> 14);
  v193 = *&v186[4 * BYTE2(v171)];
  v194 = *&v175[4 * BYTE1(v171)];
  HIDWORD(v178) = v194 ^ 0x1EAD;
  LODWORD(v178) = v194 ^ 0x9D008000;
  v195 = v192 ^ (-21582785 * *&v183[4 * v174] + 1520068107);
  v196 = *&v186[4 * BYTE2(v170)];
  v197 = HIDWORD(a27) ^ (v191 + HIDWORD(v444) - 2 * (v191 & HIDWORD(v444)));
  v198 = HIDWORD(v390) ^ v387 ^ v193 ^ (*&v179[4 * v182] - 1447359227) ^ 0x8E1E9161 ^ (v185 + 126166028 - ((2 * v185) & 0xF0A4818));
  v199 = v503 ^ v187 ^ (v178 >> 14) ^ 0x7A8BED94 ^ (v184 + 126166028 - ((2 * v184) & 0xF0A4818));
  v200 = HIDWORD(v499) ^ v196 ^ 0x342D1067 ^ (v195 + 126166028 - ((2 * v195) & 0xF0A4818));
  v201 = *&v175[4 * ((v197 ^ 0xAB13) >> 8)];
  HIDWORD(v178) = v201 ^ 0x1EAD;
  LODWORD(v178) = v201 ^ 0x9D008000;
  v202 = (v178 >> 14) ^ (*&v179[4 * HIBYTE(v198)] - 1447359227);
  v203 = *&v179[4 * HIBYTE(v199)];
  v204 = (2 * v203 + 58071562) & 0xF0A4818;
  v205 = v203 - 1321193199;
  v206 = *&v175[4 * BYTE1(v200)];
  HIDWORD(v178) = v206 ^ 0x1EAD;
  LODWORD(v178) = v206 ^ 0x9D008000;
  v207 = v178 >> 14;
  v208 = v205 - v204;
  v209 = *&v179[4 * ((v197 ^ 0xC04AB13u) >> 24)];
  v210 = (-21582785 * *&v183[4 * v198] + 1520068107) ^ (*&v179[4 * HIBYTE(v200)] - 1447359227);
  v211 = *&v175[4 * BYTE1(v198)];
  HIDWORD(v178) = v211 ^ 0x1EAD;
  LODWORD(v178) = v211 ^ 0x9D008000;
  v212 = v178 >> 14;
  v213 = *&v175[4 * BYTE1(v199)];
  HIDWORD(v178) = v213 ^ 0x1EAD;
  LODWORD(v178) = v213 ^ 0x9D008000;
  v214 = *&v186[4 * BYTE2(v198)];
  v215 = *&v186[4 * BYTE2(v199)];
  v216 = -21582785 * *&v183[4 * (v197 ^ 0x33)] + 1520068107;
  v217 = *&v186[4 * ((v197 ^ 0xC04AB13u) >> 16)];
  v218 = v543 ^ *&v186[4 * BYTE2(v200)] ^ (-21582785 * *&v183[4 * v199] + 1520068107) ^ (v202 + 126166028 - ((2 * v202) & 0xF0A4818));
  v219 = v499 ^ v217 ^ (v178 >> 14) ^ 0xD9D684A ^ (v210 + 126166028 - ((2 * v210) & 0xF0A4818));
  v220 = HIDWORD(v494) ^ v214 ^ v208 ^ v207 ^ 0x87DD46DC ^ v216;
  v221 = v494 ^ v215 ^ (-21582785 * *&v183[4 * v200] + 1520068107) ^ v212 ^ 0x96521C3F ^ (v209 - 1321193199 - ((2 * v209 + 58071562) & 0xF0A4818));
  v222 = *&v183[4 * ((BYTE4(v494) ^ v214 ^ v208 ^ v207) ^ 0xDC ^ v216)];
  v223 = *&v175[4 * ((v218 ^ 0xB36B) >> 8)];
  HIDWORD(v178) = v223 ^ 0x1EAD;
  LODWORD(v178) = v223 ^ 0x9D008000;
  v224 = v178 >> 14;
  v225 = *&v175[4 * BYTE1(v219)];
  HIDWORD(v178) = v225 ^ 0x1EAD;
  LODWORD(v178) = v225 ^ 0x9D008000;
  v226 = *&v175[4 * BYTE1(v220)];
  v227 = (*&v179[4 * HIBYTE(v220)] - 1447359227) ^ (v178 >> 14);
  HIDWORD(v178) = v226 ^ 0x1EAD;
  LODWORD(v178) = v226 ^ 0x9D008000;
  v228 = (-21582785 * *&v183[4 * v219] + 1520068107) ^ v224;
  v229 = v227 ^ (-21582785 * *&v183[4 * v221] + 1520068107);
  v230 = (*&v179[4 * HIBYTE(v219)] - 1447359227) ^ (v178 >> 14);
  v231 = *&v175[4 * BYTE1(v221)];
  HIDWORD(v178) = v231 ^ 0x1EAD;
  LODWORD(v178) = v231 ^ 0x9D008000;
  v232 = (v178 >> 14) ^ (-21582785 * v222 + 1520068107);
  v233 = v232 + 126166028 - ((2 * v232) & 0xF0A4818);
  v234 = v230 ^ (-21582785 * *&v183[4 * (v218 ^ 0x6B)] + 1520068107);
  v235 = v229 + 126166029 + ~((2 * v229) & 0xF0A4818);
  v236 = *&v179[4 * (HIBYTE(v218) ^ 0xEE)] - 1447359227;
  v237 = v541 ^ *&v186[4 * ((v218 ^ 0x2F7BB36B) >> 16)] ^ v235;
  v238 = HIDWORD(v489) ^ *&v186[4 * BYTE2(v221)] ^ 0xF045F586 ^ (v234 + 126166028 - ((2 * v234) & 0xF0A4818));
  v239 = v489 ^ *&v186[4 * BYTE2(v220)] ^ (*&v179[4 * HIBYTE(v221)] - 1447359227) ^ 0xD8A932B2 ^ (v228 + 126166028 - ((2 * v228) & 0xF0A4818));
  BYTE2(v202) = BYTE2(v237) ^ 0x6F;
  v240 = HIDWORD(v485) ^ *&v186[4 * BYTE2(v219)] ^ v236 ^ 0xDBC82169 ^ v233;
  v241 = *&v186[4 * BYTE2(v238)];
  v242 = *&v175[4 * ((v237 ^ 0x9E59) >> 8)];
  v243 = *&v175[4 * BYTE1(v240)];
  HIDWORD(v178) = v242 ^ 0x1EAD;
  LODWORD(v178) = v242 ^ 0x9D008000;
  v244 = v178 >> 14;
  HIDWORD(v178) = v243 ^ 0x1EAD;
  LODWORD(v178) = v243 ^ 0x9D008000;
  v245 = *&v175[4 * BYTE1(v238)];
  v246 = (*&v179[4 * ((v237 ^ 0xD16F9E59) >> 24)] - 1447359227) ^ (-21582785 * *&v183[4 * v239] + 1520068107) ^ (v245 >> 14);
  v247 = (*&v179[4 * HIBYTE(v238)] - 1447359227) ^ (-21582785 * *&v183[4 * v240] + 1520068107) ^ v244;
  v248 = *&v186[4 * BYTE2(v239)];
  v249 = (v178 >> 14) ^ (*&v179[4 * HIBYTE(v239)] - 1447359227) ^ (-21582785 * *&v183[4 * v238] + 1520068107);
  v250 = *&v183[4 * (v237 ^ 0x79)];
  v251 = *&v175[4 * BYTE1(v239)];
  HIDWORD(v178) = v251 ^ 0x1EAD;
  LODWORD(v178) = v251 ^ 0x9D008000;
  v252 = v538 ^ v248 ^ (v247 + 126166028 - ((2 * v247) & 0xF0A4818));
  v253 = v252 ^ 0xE0349DAE;
  v254 = v485 ^ *&v186[4 * BYTE2(v202)] ^ 0xF4361671 ^ (v249 + 126166028 - ((2 * v249) & 0xF0A4818));
  v255 = v535 ^ v241 ^ (*&v179[4 * HIBYTE(v240)] - 1447359227) ^ (v178 >> 14) ^ (-21582785 * v250 + 1646234135 - ((225269886 * v250 + 87346198) & 0xF0A4818));
  v256 = HIDWORD(v479) ^ *&v186[4 * BYTE2(v240)] ^ 0x7E1E5010 ^ ((v246 ^ (v245 << 18) ^ 0x7AB67402) + 126166028 - 2 * ((v246 ^ (v245 << 18) ^ 0x7AB67402) & 0x785241C ^ v246 & 0x10));
  v257 = (v252 ^ 0xE0349DAE) >> 24;
  v258 = (-21582785 * *&v183[4 * (v252 ^ 0x8E)] + 1520068107) ^ (*&v179[4 * HIBYTE(v254)] - 1447359227);
  v259 = v258 + 126166028 - ((2 * v258) & 0xF0A4818);
  v260 = *&v175[4 * BYTE1(v253)];
  HIDWORD(v178) = v260 ^ 0x1EAD;
  LODWORD(v178) = v260 ^ 0x9D008000;
  v261 = v178 >> 14;
  v262 = *&v175[4 * BYTE1(v256)];
  HIDWORD(v178) = v262 ^ 0x1EAD;
  LODWORD(v178) = v262 ^ 0x9D008000;
  v263 = v178 >> 14;
  v264 = *&v179[4 * v257] - 1321193199 - ((2 * *&v179[4 * v257] + 58071562) & 0xF0A4818);
  v265 = *&v175[4 * ((v255 ^ 0x500A) >> 8)];
  HIDWORD(v178) = v265 ^ 0x1EAD;
  LODWORD(v178) = v265 ^ 0x9D008000;
  v266 = v178 >> 14;
  v267 = *&v175[4 * BYTE1(v254)];
  HIDWORD(v178) = v267 ^ 0x1EAD;
  LODWORD(v178) = v267 ^ 0x9D008000;
  v268 = v261 ^ (-21582785 * *&v183[4 * v254] + 1520068107) ^ (*&v179[4 * HIBYTE(v256)] - 1447359227);
  v269 = (-21582785 * *&v183[4 * v256] + 1520068107) ^ (*&v179[4 * ((v255 ^ 0x6754500Au) >> 24)] - 1447359227) ^ (v178 >> 14);
  v270 = *&v186[4 * BYTE2(v253)];
  v271 = -21582785 * *&v183[4 * (v255 ^ 0x2A)] + 1520068107;
  v272 = v479 ^ *&v186[4 * BYTE2(v256)] ^ v266 ^ v259 ^ 0x541774FA;
  v273 = HIDWORD(v474) ^ *&v186[4 * ((v255 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v268 + 126166028 - ((2 * v268) & 0xF0A4818));
  v274 = v474 ^ *&v186[4 * BYTE2(v254)] ^ v264 ^ v271 ^ 0xADF93D39 ^ v263;
  v275 = HIDWORD(v470) ^ v270 ^ 0x8EB61C45 ^ (v269 + 126166028 - ((2 * v269) & 0xF0A4818));
  v276 = *&v175[4 * BYTE1(v273)];
  HIDWORD(v178) = v276 ^ 0x1EAD;
  LODWORD(v178) = v276 ^ 0x9D008000;
  v277 = (v178 >> 14) + 126166028 - ((2 * (v178 >> 14)) & 0xF0A4818);
  v278 = *&v183[4 * (v272 - ((2 * v272) & 0x40)) + 128];
  v279 = *&v175[4 * BYTE1(v275)];
  HIDWORD(v178) = v279 ^ 0x1EAD;
  LODWORD(v178) = v279 ^ 0x9D008000;
  v280 = (v178 >> 14) ^ (*&v179[4 * HIBYTE(v272)] - 1447359227);
  v281 = -21582785 * v278 + 1646234135 - ((225269886 * v278 + 87346198) & 0xF0A4818);
  v282 = *&v175[4 * BYTE1(v272)];
  HIDWORD(v178) = v282 ^ 0x1EAD;
  LODWORD(v178) = v282 ^ 0x9D008000;
  v283 = v178 >> 14;
  v284 = *&v175[4 * BYTE1(v274)];
  HIDWORD(v178) = v284 ^ 0x1EAD;
  LODWORD(v178) = v284 ^ 0x9D008000;
  v285 = v533 ^ *&v186[4 * BYTE2(v274)] ^ v283 ^ (*&v179[4 * HIBYTE(v275)] - 1447359227) ^ (-21582785 * *&v183[4 * v273] + 1646234135 - ((225269886 * *&v183[4 * v273] + 87346198) & 0xF0A4818));
  v286 = *&v179[4 * HIBYTE(v273)] - 1447359227;
  v287 = *&v186[4 * BYTE2(v273)];
  v288 = v470 ^ *&v186[4 * BYTE2(v272)] ^ (*&v179[4 * HIBYTE(v274)] - 1447359227) ^ v277 ^ (-21582785 * *&v183[4 * v275] + 1520068107) ^ 0x7C892C4A;
  v289 = HIDWORD(v465) ^ *&v186[4 * BYTE2(v275)] ^ v286 ^ (v178 >> 14) ^ 0x190B7FE4 ^ v281;
  v290 = v465 ^ v287 ^ (-21582785 * *&v183[4 * v274] + 1520068107) ^ 0xCFA132BA ^ (v280 + 126166028 - ((2 * v280) & 0xF0A4818));
  v291 = v285 ^ 0x402CF460;
  v292 = *&v175[4 * BYTE1(v288)];
  v293 = (v285 ^ 0x402CF460u) >> 24;
  HIDWORD(v178) = v292 ^ 0x1EAD;
  LODWORD(v178) = v292 ^ 0x9D008000;
  v294 = v178 >> 14;
  v295 = *&v175[4 * BYTE1(v290)];
  HIDWORD(v178) = v295 ^ 0x1EAD;
  LODWORD(v178) = v295 ^ 0x9D008000;
  v296 = *&v183[4 * (v285 ^ 0x40)];
  v297 = HIBYTE(v290);
  v298 = 1520068107 - 465829067 * v296 + 444246282 * v296 + 126166028 - 2 * ((1520068107 - 465829067 * v296 + 444246282 * v296) & 0x785240D ^ (1520068107 - 465829067 * v296) & 1);
  v299 = (-21582785 * *&v183[4 * v289] + 1520068107) ^ (*&v179[4 * v293] - 1447359227);
  v300 = *&v186[4 * BYTE2(v290)];
  v301 = v299 ^ (v178 >> 14);
  v302 = *&v175[4 * BYTE1(v289)];
  v303 = (*&v179[4 * HIBYTE(v289)] - 1447359227) ^ v294;
  HIDWORD(v178) = v302 ^ 0x1EAD;
  LODWORD(v178) = v302 ^ 0x9D008000;
  v304 = v178 >> 14;
  v305 = *&v186[4 * BYTE2(v291)];
  v306 = v303 ^ (-21582785 * *&v183[4 * v290] + 1520068107);
  v307 = (-21582785 * *&v183[4 * v288] + 1520068107) ^ (*&v179[4 * v297] - 1447359227);
  v308 = *&v175[4 * BYTE1(v291)];
  v309 = *&v179[4 * HIBYTE(v288)] - 1447359227;
  HIDWORD(v178) = v308 ^ 0x1EAD;
  LODWORD(v178) = v308 ^ 0x9D008000;
  v310 = HIDWORD(v459) ^ *&v186[4 * BYTE2(v288)] ^ 0x2655A6B2 ^ (v301 + 126166028 - ((2 * v301) & 0xF0A4818));
  v311 = v459 ^ *&v186[4 * BYTE2(v289)] ^ (v178 >> 14) ^ 0x354150DE ^ (v307 + 126166028 - ((2 * v307) & 0xF0A4818));
  v312 = HIDWORD(v454) ^ v300 ^ v304 ^ v309 ^ 0x6005D395 ^ v298;
  v313 = v454 ^ v305 ^ 0xD6EF510D ^ (v306 + 126166029 + ~((2 * v306) & 0xF0A4818));
  v314 = *&v175[4 * BYTE1(v312)];
  HIDWORD(v178) = v314 ^ 0x1EAD;
  LODWORD(v178) = v314 ^ 0x9D008000;
  v315 = *&v179[4 * HIBYTE(v310)];
  v316 = (v178 >> 14) + 126166028 - ((2 * (v178 >> 14)) & 0xF0A4818);
  v317 = (-21582785 * *&v183[4 * v310] + 1520068107) ^ (*&v179[4 * HIBYTE(v312)] - 1447359227);
  v318 = v315 - 1321193199 - ((2 * v315 + 58071562) & 0xF0A4818);
  v319 = *&v175[4 * BYTE1(v311)];
  HIDWORD(v178) = v319 ^ 0x1EAD;
  LODWORD(v178) = v319 ^ 0x9D008000;
  v320 = v178 >> 14;
  v321 = *&v175[4 * BYTE1(v310)];
  v322 = v317 + 126166028 - ((2 * v317) & 0xF0A4818);
  HIDWORD(v178) = v321 ^ 0x1EAD;
  LODWORD(v178) = v321 ^ 0x9D008000;
  v323 = v178 >> 14;
  v324 = *&v175[4 * BYTE1(v313)];
  HIDWORD(v178) = v324 ^ 0x1EAD;
  LODWORD(v178) = v324 ^ 0x9D008000;
  v325 = *&v186[4 * BYTE2(v310)];
  v326 = *&v186[4 * BYTE2(v311)] ^ *(v29 - 220) ^ (v178 >> 14) ^ v322;
  v327 = *&v186[4 * BYTE2(v313)];
  v328 = *&v179[4 * HIBYTE(v313)] - 1447359227;
  v329 = *&v179[4 * HIBYTE(v311)] - 1447359227;
  BYTE2(v313) = BYTE2(v326) ^ 0x1C;
  v330 = v530 ^ *&v186[4 * BYTE2(v312)] ^ v320 ^ v318 ^ (-21582785 * *&v183[4 * v313] + 1520068107);
  v331 = HIDWORD(v449) ^ v325 ^ v328 ^ (-21582785 * *&v183[4 * v311] + 1520068107) ^ 0xDE12593A ^ v316;
  v332 = v449 ^ v329 ^ v327 ^ v323 ^ 0x8D19C5A6 ^ (-21582785 * *&v183[4 * v312] + 1646234135 - ((225269886 * *&v183[4 * v312] + 87346198) & 0xF0A4818));
  v333 = *&v175[4 * ((v449 ^ v329 ^ v327 ^ v323 ^ 0xC5A6 ^ (-21441 * *&v183[4 * v312] - 30185 - ((22654 * *&v183[4 * v312] - 13290) & 0x4818))) >> 8)];
  HIDWORD(v178) = v333 ^ 0x1EAD;
  LODWORD(v178) = v333 ^ 0x9D008000;
  v334 = *&v183[4 * (v326 ^ 0x30)];
  v335 = (v178 >> 14) + 126166028 - ((2 * (v178 >> 14)) & 0xF0A4818);
  v336 = *&v175[4 * ((v326 ^ 0x5930) >> 8)];
  HIDWORD(v178) = v336 ^ 0x1EAD;
  LODWORD(v178) = v336 ^ 0x9D008000;
  v337 = (v178 >> 14) + 126166028 - ((2 * (v178 >> 14)) & 0xF0A4818);
  v338 = (*&v179[4 * (HIBYTE(v326) ^ 0x50)] - 1447359227) ^ (-21582785 * *&v183[4 * (v330 ^ 0xBD)] + 1520068107);
  v339 = *&v175[4 * ((v330 ^ 0x19BD) >> 8)];
  HIDWORD(v178) = v339 ^ 0x1EAD;
  LODWORD(v178) = v339 ^ 0x9D008000;
  v340 = v178 >> 14;
  v341 = *&v186[4 * ((v330 ^ 0xC3D419BD) >> 16)];
  v342 = *&v179[4 * (HIBYTE(v330) ^ 2)];
  LODWORD(v175) = *&v175[4 * BYTE1(v331)];
  HIDWORD(v178) = v175 ^ 0x1EAD;
  LODWORD(v178) = v175 ^ 0x9D008000;
  v343 = v527 ^ v341 ^ (*&v179[4 * HIBYTE(v331)] - 1447359227) ^ (-21582785 * *&v183[4 * v332] + 1520068107) ^ v337;
  LODWORD(v179) = (*&v179[4 * HIBYTE(v332)] - 1447359227) ^ v444 ^ v340 ^ *&v186[4 * BYTE2(v331)] ^ (-21582785 * v334 + 1520068107);
  v344 = v524 ^ *&v186[4 * BYTE2(v313)] ^ (-21582785 * *&v183[4 * v331] + 1520068107) ^ (v342 - 1447359227) ^ v335;
  v345 = v520 ^ *&v186[4 * BYTE2(v332)] ^ (v178 >> 14) ^ (v338 + 126166028 - ((2 * v338) & 0xF0A4818));
  v346 = v345 ^ 0x644667A6;
  v347 = v344 ^ 0x7EC2C88;
  LODWORD(v183) = v179 ^ 0xAD089B63;
  v348 = *(v29 - 116);
  v349 = *(&off_C1600 + v348 - 211);
  v350 = *(v349 + 4 * ((v345 ^ 0x644667A6u) >> 24));
  HIDWORD(v178) = v350 ^ 0x6C;
  LODWORD(v178) = v350 ^ 0xBE19DA80;
  v351 = *(&off_C1600 + (v348 ^ 0x191)) - 8;
  v352 = *(&off_C1600 + (v348 ^ 0x13C)) - 8;
  v353 = (v347 - 1273749621 - ((2 * v347) & 0x116)) ^ *&v352[4 * (v344 ^ 0xDB)] ^ (v178 >> 7);
  v354 = *&v351[4 * ((v345 ^ 0x644667A6u) >> 16)];
  *(v29 - 148) = ((2 * v354) & 0xBB708860 ^ 0x6ECFFF9F) + 1213527210 + (((v354 ^ 0x5B1CD28A) - 1528615562) ^ ((v354 ^ 0xCEECDB4) - 216976820) ^ ((v354 ^ 0xBD6EAF47) + 1116819641));
  v355 = (v343 ^ 0x78) - 1273749621 - ((2 * (v343 ^ 0x9A25D878)) & 0x116);
  *(v29 - 152) = v353 - 358829959 - ((2 * v353) & 0xD53960F2);
  v356 = *&v351[4 * BYTE2(v347)];
  v357 = *&v351[4 * ((v179 ^ 0xAD089B63) >> 16)];
  v358 = *&v351[4 * ((v343 ^ 0x9A25D878) >> 16)];
  v359 = *(&off_C1600 + v348 - 192) - 4;
  v360 = ((v345 ^ 0xA6) - 1273749621 - ((2 * (v345 ^ 0x644667A6)) & 0x116)) ^ (BYTE1(v347) + 1606606746 - ((v347 >> 7) & 0x134)) ^ *&v352[4 * (v345 ^ 0xF5)] ^ *&v359[4 * (BYTE1(v347) ^ 0xF5)];
  LODWORD(v351) = v360 - 358829959 - ((2 * v360) & 0xD53960F2);
  v361 = *(v349 + 4 * ((v343 ^ 0x9A25D878) >> 24));
  HIDWORD(v178) = v361 ^ 0x6C;
  LODWORD(v178) = v361 ^ 0xBE19DA80;
  v362 = (v178 >> 7) - 358829959 - ((2 * (v178 >> 7)) & 0xD53960F2);
  v363 = *(v349 + 4 * ((v179 >> 24) ^ 0xBD));
  HIDWORD(v178) = v363 ^ 0x6C;
  LODWORD(v178) = v363 ^ 0xBE19DA80;
  v364 = v178 >> 7;
  v365 = *&v352[4 * (v343 ^ 0x2B)];
  v366 = *&v352[4 * (v179 ^ 0x30)];
  v367 = *&v359[4 * (((v179 ^ 0x9B63) >> 8) ^ 0xF5)];
  v368 = *&v359[4 * (BYTE1(v346) ^ 0xF5)];
  v369 = *&v359[4 * (((v343 ^ 0xD878) >> 8) ^ 0xF5)];
  v370 = *(v349 + 4 * HIBYTE(v347));
  HIDWORD(v178) = v370 ^ 0x6C;
  LODWORD(v178) = v370 ^ 0xBE19DA80;
  LODWORD(v175) = *(v29 - 140) ^ *(v29 - 208) ^ v358 ^ v364 ^ v351;
  v371 = *(v29 - 136) ^ *(v29 - 216) ^ (BYTE1(v183) + 1606606746 - ((v183 >> 7) & 0x134)) ^ v355 ^ v365 ^ v367 ^ (v178 >> 7) ^ *(v29 - 148);
  LODWORD(v349) = *(v29 - 132) ^ *(v29 - 212) ^ (((v343 ^ 0xD878) >> 8) + 1606606746 - (((v343 ^ 0x9A25D878) >> 7) & 0x134)) ^ v357 ^ v369 ^ *(v29 - 152);
  LODWORD(v179) = *(v29 - 128) ^ *(v29 - 204) ^ ((v179 ^ 0x63) - 1273749621 - 2 * ((v179 ^ 0xAD089B63) & 0x9F ^ v179 & 0x14)) ^ (BYTE1(v346) + 1606606746 - ((v346 >> 7) & 0x134)) ^ v356 ^ v366 ^ v368 ^ v362;
  v372 = (*(v29 - 136) ^ *(v29 - 216) ^ (BYTE1(v183) - 102 - ((v183 >> 7) & 0x34)) ^ v355 ^ v365 ^ v367 ^ (v178 >> 7) ^ *(v29 - 148)) ^ 0xDFLL;
  v373 = *(&off_C1600 + (v348 ^ 0x18C)) - 4;
  v160[3] = v373[v372] ^ 0x8E;
  v374 = *(&off_C1600 + v348 - 115) - 8;
  v160[4] = (v374[(v179 >> 24) ^ 0x2CLL] - 104) ^ 0x78;
  *v160 = (v374[HIBYTE(v371) ^ 0x57] - 104) ^ 0xC8;
  v375 = *(&off_C1600 + v348 - 235) - 8;
  v160[13] = (v375[BYTE2(v349) ^ 0x5CLL] - 118) ^ 0xC7;
  v160[11] = v373[v175 ^ 0x46] ^ 0xCA;
  v376 = *(&off_C1600 + v348 - 198) - 4;
  v160[14] = ((BYTE1(v349) ^ 0xEE) - ((2 * (BYTE1(v349) ^ 0xEE)) & 0xBB) - 35) ^ 0x75 ^ v376[BYTE1(v349)];
  v160[2] = ((BYTE1(v371) ^ 3) + (~(2 * (BYTE1(v371) ^ 3)) | 0x45) - 34) ^ 0x8B ^ v376[BYTE1(v371) ^ 0xE6];
  v160[10] = ((BYTE1(v175) ^ 0xAB) - ((2 * (BYTE1(v175) ^ 0xAB)) & 0xBB) - 35) ^ 0x6D ^ v376[BYTE1(v175) ^ 0x84];
  v160[15] = v373[v349 ^ 0x11] ^ 0x7D;
  v160[5] = (v375[BYTE2(v179) ^ 0x44] - 118) ^ 0xE2;
  v160[8] = (v374[(v175 >> 24) ^ 0x26] - 104) ^ 0xA2;
  v160[7] = v373[v179 ^ 0x3DLL] ^ 0x77;
  v160[12] = (v374[BYTE3(v349) ^ 0x44] - 104) ^ 0x23;
  v160[1] = (v375[BYTE2(v371) ^ 0xA3] - 118) ^ 0x17;
  LOBYTE(v364) = (BYTE1(v179) - ((v179 >> 7) & 0xBA) - 35) ^ 0xD0 ^ v376[BYTE1(v179) ^ 0x58];
  v377 = *(v29 - 124);
  LODWORD(v376) = *(v29 - 120);
  v160[6] = v364;
  v160[9] = (v375[BYTE2(v175) ^ 0xF8] - 118) ^ 0x90;
  v378 = v376 + 146400356 < v377;
  if (*(v29 - 144) != (v376 + 146400356) < 0x8B9E454)
  {
    v378 = *(v29 - 144);
  }

  HIDWORD(v401) = HIDWORD(v380) + 1586040155;
  LODWORD(v408) = v381 + 1586040155;
  return (*(*(v29 - 200) + 8 * ((127 * v378) ^ v348)))(v356, v348, 1606606746, v369, v366, 108, v160, 3021217675, a2, v380, v381, v382, v384, v387, v390, v393, v395, v397, v400, v401, v403, v406, v408, v410, v413, v414, v418, v423, v428, v433, v437, a25, a26, a27, v444, v449, v454, v459, v465, v470, v474, v479, v485, v489, v494, v499);
}

uint64_t sub_1DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 104) = v17 - ((v20 - 128) ^ 0x83B08A16) * v19 + 1350;
  *(v20 - 112) = &a17;
  *(v20 - 128) = &a15;
  v21 = (*(v18 + 8 * (v17 ^ 0xA06)))(v20 - 128);
  return (*(v18 + 8 * (((*(v20 - 120) <= ((v17 - 17) | 0x81u) + 1941546159) * (v17 - 844)) ^ v17)))(v21);
}

uint64_t sub_1DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = *(v12 - 228 + v7 + 72);
  v14 = (v13 >> ((v9 - 67) ^ (a7 - 8))) ^ 3;
  v15 = ((2 * v7) & 0x6EFF7AF8) + (v7 ^ 0xB77FBD7D) + v8;
  *(a2 + v15) = v14 - ((2 * v14) & 0x72) + 57;
  *(a2 + v15 + 1) = (BYTE2(v13) ^ 0xF3) - ((2 * (BYTE2(v13) ^ 0xF3)) & 0x72) + 57;
  *(a2 + v15 + 2) = (BYTE1(v13) ^ 0x6B) + ~(2 * ((BYTE1(v13) ^ 0x6B) & 0x3D ^ BYTE1(v13) & 4)) + 58;
  *(a2 + v15 + 3) = v13 ^ 0x73;
  return (*(v11 + 8 * (((v7 + 4 < *(v12 - 136)) * v10) ^ v9)))();
}

uint64_t sub_1DE9C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  *(v26 + v25) = a25;
  v28 = ((a1 - 287) | 0x1Bu) - 30 == 64 - v25;
  return (*(v27 + 8 * ((4 * v28) | (16 * v28) | a1)))();
}

uint64_t sub_1DEF0@<X0>(unint64_t a1@<X1>, _DWORD *a2@<X2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = (a2[1] ^ v11) + (v14 ^ HIDWORD(a1)) + v17 * (*(*(a11 + 8) + 4) ^ v11);
  *a2 = (v18 + v12 - ((((v16 + 492) | 8) ^ v13) & (2 * v18))) ^ a3;
  return (*(v15 + 8 * (((a5 == 2) * a4) ^ v16)))();
}

uint64_t sub_1DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  if ((a16 - 486764036) < 0xFB859D96 != v16 > 0x47A6269)
  {
    v19 = (a16 - 486764036) < 0xFB859D96;
  }

  else
  {
    v19 = v18 - 1857 + v16 - 75129464 < a16 - 486764036;
  }

  return (*(v17 + 8 * ((52 * v19) ^ v18)))();
}

uint64_t sub_1DFCC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  v10 = *(v8 + 48 * v7 + 36);
  v12 = v10 + a3 < a6 && v10 != a4 + (v6 ^ 0x2A2) - 975;
  return (*(v9 + 8 * ((1616 * v12) ^ v6)))();
}

uint64_t sub_1E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  (*(v18 + 8 * (v16 + 1512)))(a12 + a13, 0x100004077774924);
  v19 = (*(v18 + 8 * SHIDWORD(a11)))();
  *v17 = v19;
  v17[1] = 1812433253 * (v19 ^ (v19 >> 30)) + 1;
  return (*(v18 + 8 * ((22 * (((v16 + 678) | 0xA6u) - 1079 > 1)) ^ ((v16 + 678) | 0xA6))))(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (v8 <= v7 - a3)
  {
    v10 = v7 - a3;
  }

  else
  {
    v10 = v8;
  }

  return (*(v9 + 8 * ((((a7 - 1037) ^ 0x2EC) * ((v10 + 1) > 0x23)) ^ a7)))();
}

uint64_t sub_1E2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, int8x16_t a10@<Q4>, int8x16_t a11@<Q6>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = (a9 - 169537544) & 0xA1AEFFD;
  v24 = (a4 + v21);
  v25 = vaddq_s8(vaddq_s8(v24[1], a11), vmvnq_s8(vandq_s8(vaddq_s8(v24[1], v24[1]), a10)));
  *&STACK[0x2B0] = vaddq_s8(vaddq_s8(*v24, a11), vmvnq_s8(vandq_s8(vaddq_s8(*v24, *v24), a10)));
  *&STACK[0x2C0] = v25;
  LODWORD(v24) = v23 != 2229;
  return (*(v22 + 8 * (((2 * v24) | (8 * v24)) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (v9 + 1005) | 1;
  v11 = 4 * a3 - 3838759932;
  v12 = ((((v10 - 1616) ^ 0xE86EFD9B ^ *(*(v3 + 8) + v11)) + 395379310) ^ ((*(*(v3 + 8) + v11) ^ 0xB397E125) + 1281892059) ^ (((((v10 - 1616) | 0x890) - 1028230189) ^ *(*(v3 + 8) + v11)) + 1028227988)) + v6;
  v13 = (((*(*(v4 + 8) + v11) ^ 0xAED53F06) + 1361756410) ^ ((*(*(v4 + 8) + v11) ^ 0x6E3727EE) - 1849108462) ^ ((*(*(v4 + 8) + v11) ^ 0x59AD7833) - 1504540723)) + v6;
  v14 = v12 < v7;
  v15 = v12 > v13;
  if (v14 != v13 < v7)
  {
    v15 = v14;
  }

  return (*(v5 + 8 * ((!v15 | (2 * !v15)) ^ v10)))(a1, v8);
}

uint64_t sub_1E57C@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = -v4;
  }

  v5 = v4 - 1;
  *(*(v1 + 8) + 4 * v5) = *(*(a1 + 8) + 4 * v5);
  return (*(v2 + 8 * ((23 * (v5 == 613 * (v3 ^ 0x38Cu) - 1226)) ^ v3)))();
}

uint64_t sub_1E5CC@<X0>(int a1@<W8>, int8x16_t a2@<Q2>, int8x16_t a3@<Q3>)
{
  v8 = (v6 + v3);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a3)), a2);
  *v4 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a3)), a2);
  v4[1] = v9;
  return (*(v5 + 8 * (v7 + a1 + 991)))();
}

uint64_t sub_1E770@<X0>(uint64_t a1@<X0>, int a2@<W3>, unint64_t a3@<X8>)
{
  v9 = ((a2 ^ 7) + v6) & 0xF;
  v10 = v3 - *(v8 - 120) + (a2 + 78) - v6 + v9 - 1651;
  v14 = a3 < 0x10 || (v5 - *(v8 - 120) - v6 + v9 + 1) < 0x10 || (v4 - *(v8 - 120) - v6 + v9 + 6) < 0x10 || v10 < 0x10;
  return (*(v7 + 8 * ((95 * v14) ^ a2)))(a1, v10);
}

uint64_t sub_1E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = (v13 + 2146969018) & 0x8007DDB7;
  v15 = (((a12 ^ 0x2EE5600B) - 786784267) ^ ((a12 ^ 0x58C5FA58) - 1489369688) ^ ((((v14 ^ 0x5F6) - 401461044) ^ a12) + 401460721)) + 1239350064;
  v16 = v15 < 0xABAC52D4;
  v17 = v15 > 0xABAC52D4;
  if (v16)
  {
    v17 = v16;
  }

  return (*(v12 + 8 * ((94 * v17) ^ v14)))(3893506252, 401460721, 1239350064, 1414769963);
}

void sub_1E980(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10)
{
  v11 = 1388665877 * ((&a9 - 2 * (&a9 & 0x3942BD18) + 960675096) ^ 0xB4EFDFF4);
  a9 = 62 - v11;
  a10 = v11 + a1 + 1666;
  (*(v10 + 8 * (a1 + 1791)))(&a9);
  JUMPOUT(0x1E9E8);
}

uint64_t sub_1EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  (*(a4 + 8 * (a6 ^ (a6 - 2242))))(a25 + a27, 0x100004077774924);
  v42 = (*(a40 + 8 * (v40 + 1640542840)))();
  *v41 = v42;
  v43 = 1812433253 * ((v42 + 1898711020 - ((2 * v42) & 0xE2580FD8)) ^ ((v42 >> 30) | 0x712C07EC)) + 1;
  v41[1] = v43;
  return (*(a40 + 17040))(v43, 1812433253, 1898711020, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1EB6C@<X0>(int a1@<W8>)
{
  *(v2 + v1) = v4;
  v5 = v1 + (a1 - 1216) == 105;
  return (*(v3 + 8 * (v5 | (4 * v5) | a1)))();
}

uint64_t sub_1EC14@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 16) = 1640887145;
  return result;
}

uint64_t sub_1EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = 1388665877 * ((~((v18 - 152) | 0x6A6862F4) + ((v18 - 152) & 0x6A6862F4)) ^ 0x183AFFE7);
  *(v18 - 144) = v18 - 252;
  *(v18 - 152) = v19 + v16 + 316;
  *(v18 - 148) = (a16 + ((v16 + 66) | 0x185) + 611614650) ^ v19;
  v20 = (*(v17 + 8 * (v16 ^ 0x93F)))(v18 - 152);
  v21 = *(v18 - 184);
  *(v18 - 252 + (v21 & 0x3F)) = -71;
  return (*(v17 + 8 * ((407 * ((v21 & 0x3Fu) > 0x37)) ^ v16)))(v20);
}

uint64_t sub_1EDCC()
{
  v2 = *(v1 + 19224);

  return v2(v0);
}

uint64_t sub_1EDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v25 = v18[4];
  v21 = v18[2];
  v22 = *v18;
  a18 = v20 + 185 + 1556366573 * ((&a15 & 0xB94296E8 | ~(&a15 | 0xB94296E8)) ^ 0x22594AFD);
  a15 = v22;
  a17 = a12;
  (*(v19 + 8 * (v20 ^ 0x994)))(&a15);
  a18 = v20 + 185 + 1556366573 * (&a15 ^ 0x64E423EA);
  a17 = a12;
  a15 = v21;
  (*(v19 + 8 * (v20 ^ 0x994)))(&a15);
  HIDWORD(a17) = v20 - 1037613739 * (((&a15 | 0x9EB46FA7) - &a15 + (&a15 & 0x614B9058)) ^ 0x4FB642D8) + 346;
  a15 = a12;
  a16 = v25;
  v23 = (*(v19 + 8 * (v20 + 2218)))(&a15);
  return (*(v19 + 8 * (((a17 == -1640847268) * (v20 + 906)) ^ v20)))(v23);
}

uint64_t sub_1EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v13 = ((v11 ^ 0xEFB5845) - 183243216) ^ v11 ^ ((v11 ^ 0xBE8FDDDB) + 1164405682) ^ ((v11 ^ 0x4B9F777C) - 1334329065) ^ ((v11 ^ 0xFFFCBBB3 ^ (v12 - 422320872) & 0x192C19D7) + 68422942);
  *a10 = (HIBYTE(v13) ^ 4) - ((v13 >> 23) & 0x72) + 57;
  a10[1] = (BYTE2(v13) ^ 0x17) - ((2 * (BYTE2(v13) ^ 0x17)) & 0x72) + 57;
  a10[2] = (BYTE1(v13) ^ 0x49) + ~(2 * ((BYTE1(v13) ^ 0x49) & 0x3D ^ BYTE1(v13) & 4)) + 58;
  a10[3] = ((v11 ^ 0x45) + 48) ^ v11 ^ ((v11 ^ 0xDB) - 78) ^ ((v11 ^ 0x7C) + 23) ^ ((v11 ^ 0xB3 ^ (v12 + 24) & 0xD7) + 30) ^ 0xAC;
  v14 = v10 - ((2 * v10) & 0xF6599021412D7662) + 0x7B2CC810A096BB31;
  a10[4] = (HIBYTE(v14) ^ 0x7B) - ((2 * (HIBYTE(v14) ^ 0x7B)) & 0x72) + 57;
  a10[5] = (BYTE6(v14) ^ 0x2C) - ((2 * (BYTE6(v14) ^ 0x2C)) & 0x72) + 57;
  a10[6] = (BYTE5(v14) ^ 0xC8) - 2 * ((BYTE5(v14) ^ 0xC8) & 0xBB ^ BYTE5(v14) & 2) + 57;
  a10[7] = (BYTE4(v14) ^ 0x10) - 2 * ((BYTE4(v14) ^ 0x10) & 0x3F ^ BYTE4(v14) & 6) + 57;
  a10[8] = (((v10 - ((2 * v10) & 0x412D7662) - 1600734415) >> 24) ^ 0xA0) - 2 * ((((v10 - ((2 * v10) & 0x412D7662) - 1600734415) >> 24) ^ 0xA0) & 0x3F ^ ((v10 - ((2 * v10) & 0x412D7662) - 1600734415) >> 24) & 6) + 57;
  a10[9] = (BYTE2(v14) ^ 0x96) - ((2 * (BYTE2(v14) ^ 0x96)) & 0x72) + 57;
  a10[10] = (BYTE1(v14) ^ 0xBB) - 2 * ((BYTE1(v14) ^ 0xBB) & 0x3D ^ BYTE1(v14) & 4) + 57;
  a10[11] = (v10 - ((2 * v10) & 0x62) + 49) ^ 8;
  return sub_392A4();
}

uint64_t sub_1F188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (v10 + 4 * (a4 + v8));
  *v11 = (v5 + 1060691226) & 0xC0C726DF ^ (v7 + 1471) ^ __ROR4__(*(v11 - 8) ^ *(v11 - 3) ^ *(v11 - 14) ^ *(v11 - 16), 31);
  return (*(v6 + 8 * ((1034 * (a4 + 1 == v9 + 80)) ^ v5)))(v4);
}

uint64_t sub_1F210@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v6 + ((a1 + 616) | 9u) - 1326;
  *(v8 + v9) = *(v4 + (v9 & 0xF)) ^ *(a2 + v9) ^ *(v3 + (v9 & 0xF)) ^ *(v2 + (v9 & 0xF)) ^ ((v9 & 0xF) * v5);
  return (*(v7 + 8 * ((121 * (v9 == 0)) ^ (a1 + 326))))();
}

void sub_1F33C(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((2 * v2) & 0x329EC1B6) + (v3 ^ 0x994F629A);
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_1F378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a15 = v16 + 210068311 * ((&a13 & 0xBF560B6A | ~(&a13 | 0xBF560B6A)) ^ 0xD27FCB31) + 1739;
  a13 = &a10;
  v18 = (*(v15 + 8 * (v16 ^ 0x8F6)))(&a13);
  return (*(v15 + 8 * ((2046 * (a14 == v17 + ((2 * v16) ^ 0x70) - 1006)) ^ v16)))(v18);
}

void sub_1F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = &STACK[0x2B0] + v15;
  *v18 = v14;
  v18[1] = v16;
  *(&STACK[0x2B0] + v15 + a13 - 29) = v13;
  v18[3] = v17;
  JUMPOUT(0x13B08);
}

uint64_t sub_1F5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = v16 - 3;
  v21 = (v20 ^ 0xA92960AA) & (2 * ((v17 + ((v18 + 1305101021) & 0xB235BA5E) - 85) & v20)) ^ (v17 + ((v18 + 1305101021) & 0xB235BA5E) - 85) & v20;
  v22 = ((2 * (v20 ^ 0x2921F0EA)) ^ 0xD61B7384) & (v20 ^ 0x2921F0EA) ^ (2 * (v20 ^ 0x2921F0EA)) & 0xEB0DB9C2;
  v23 = v22 ^ 0x29048842;
  v24 = (v22 ^ 0x2005A182) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xAC36E708) & v23 ^ (4 * v23) & 0xEB0DB9C0;
  v26 = (v25 ^ 0xA804A102) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x430918C2)) ^ 0xB0DB9C20) & (v25 ^ 0x430918C2) ^ (16 * (v25 ^ 0x430918C2)) & 0xEB0DB9C0;
  v28 = v26 ^ 0xEB0DB9C2 ^ (v27 ^ 0xA00998C2) & (v26 << 8);
  v29 = (v28 << 16) & 0x6B0D0000 ^ v28 ^ ((v28 << 16) ^ 0x39C20000) & (((v27 ^ 0x4B0421C2) << 8) & 0x6B0D0000 ^ 0x62040000 ^ (((v27 ^ 0x4B0421C2) << 8) ^ 0xDB90000) & (v27 ^ 0x4B0421C2));
  v30 = 843532609 * ((((2 * (v19 - 144)) | 0x293F641C) - (v19 - 144) + 1801473522) ^ 0x8423C550);
  *(v19 - 144) = a15;
  *(v19 - 132) = v30 + v18 - 221;
  *(v19 - 128) = v30 ^ (v16 - 3) ^ (2 * v29) ^ 0xACE3B54F;
  v31 = (*(v15 + 8 * (v18 + 1546)))(v19 - 144);
  return (*(v15 + 8 * ((61 * (*(v19 - 136) != 1700203916)) ^ v18)))(v31);
}

void sub_1F7C0(uint64_t a1)
{
  v1 = *(a1 + 24) - 1556366573 * ((-2 - ((a1 | 0x7CD22232) + (~a1 | 0x832DDDCD))) ^ 0xE7C9FE27);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = *(v32 - 132);
  if (v33 == 1)
  {
    v38 = *(v32 - 164);
    v37 = *(v32 - 160);
    *(v32 - 172) = ((v37 << (a7 ^ (a7 + 122) ^ 0x99)) - 16 * v37 - 8) ^ 0xC1;
    *(v32 - 171) = (v37 >> 5) ^ 0x39;
    *(v32 - 170) = (v37 >> 13) ^ 0x39;
    *(v32 - 169) = (v37 >> 21) ^ 0x39;
    *(v32 - 168) = ((__PAIR64__(v38, v37) >> 29) + (~(2 * (__PAIR64__(v38, v37) >> 29)) | 0xB9) + 36) ^ 0x1A;
    *(v32 - 167) = (v38 >> 5) ^ 0x39;
    *(v32 - 166) = (v38 >> 13) ^ 0x39;
  }

  else
  {
    if (v33 != 2)
    {
      return sub_1F9EC(a5, a7, -948179660, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v35 = *(v32 - 164);
    v36 = *(v32 - 160);
    *(v32 - 172) = 7 * (a7 ^ (a7 - 18)) + (v35 >> 21) - ((v35 >> 20) & 0x72) - 97;
    *(v32 - 171) = (v35 >> 13) - ((v35 >> 12) & 0x72) + 57;
    *(v32 - 170) = (v35 >> 5) - ((v35 >> 4) & 0x72) + 57;
    *(v32 - 169) = (__PAIR64__(v35, v36) >> 29) - ((2 * (__PAIR64__(v35, v36) >> 29)) & 0x72) + 57;
    *(v32 - 168) = (v36 >> 21) - ((v36 >> 20) & 0x72) + 57;
    *(v32 - 167) = (v36 >> 13) - ((v36 >> 12) & 0x72) + 57;
    *(v32 - 166) = (v36 >> 5) - ((v36 >> 4) & 0x72) + 57;
  }

  return sub_1F9CC();
}

uint64_t sub_1FA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = LOBYTE(STACK[0x310]);
  if (v16 == 2)
  {
    return (*(v14 + 8 * ((25 * (LODWORD(STACK[0x30C]) == ((v15 + 248648454) & 0xF12DEDFF) - 293)) ^ (v15 + 1677))))(a14);
  }

  if (v16 != 1)
  {
    JUMPOUT(0x1FADCLL);
  }

  return (*(v14 + 8 * (((LODWORD(STACK[0x30C]) == 0) * ((v15 ^ 0x10A) - 229)) ^ (v15 + 246))))();
}

uint64_t sub_1FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  if (v68 == 8 || v68 == 5)
  {
    LOBYTE(STACK[0x53F]) = LOBYTE(STACK[0x50F]) ^ 0x39;
    LOBYTE(STACK[0x53E]) = LOBYTE(STACK[0x50E]) ^ 0x39;
    LOBYTE(STACK[0x53D]) = LOBYTE(STACK[0x50D]) ^ 0x39;
    LOBYTE(STACK[0x53C]) = LOBYTE(STACK[0x50C]) ^ 0x39;
    LOBYTE(STACK[0x53B]) = LOBYTE(STACK[0x50B]) ^ 0x39;
    LOBYTE(STACK[0x53A]) = LOBYTE(STACK[0x50A]) ^ 0x39;
    LOBYTE(STACK[0x539]) = LOBYTE(STACK[0x509]) ^ 0x39;
    LOBYTE(STACK[0x538]) = LOBYTE(STACK[0x508]) ^ 0x39;
    LOBYTE(STACK[0x537]) = LOBYTE(STACK[0x507]) ^ 0x39;
    LOBYTE(STACK[0x536]) = LOBYTE(STACK[0x506]) ^ 0x39;
    LOBYTE(STACK[0x535]) = LOBYTE(STACK[0x505]) ^ 0x39;
    LOBYTE(STACK[0x534]) = LOBYTE(STACK[0x504]) ^ 0x39;
    LOBYTE(STACK[0x533]) = LOBYTE(STACK[0x503]) ^ 0x39;
    LOBYTE(STACK[0x532]) = LOBYTE(STACK[0x502]) ^ 0x39;
    LOBYTE(STACK[0x531]) = LOBYTE(STACK[0x501]) ^ 0x39;
    LOBYTE(STACK[0x530]) = LOBYTE(STACK[0x500]) ^ 0x39;
  }

  v70 = (*(v69 + 8 * (a63 ^ 0x8E4)))(LODWORD(STACK[0x344]), v68, a20 ^ 0x27E7C9C6u, a68 ^ 0x54A35B36u, &STACK[0x530], a66, LODWORD(STACK[0x26C]), &STACK[0x520]);
  v71 = (v70 ^ 0xF7F3FDFB) + 1070489328 + ((((a63 - 164) | 0x47) - 270009585) & (2 * v70));
  v72 = (*(v69 + 8 * (a63 ^ 0x877)))(*a28, a66, LODWORD(STACK[0x26C]));
  return (*(v69 + 8 * ((54 * (v71 != 935484651)) ^ (a63 + 404))))(v72);
}

uint64_t sub_1FFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  if (v72 == 268435459)
  {
    v79 = v71 >= ((v70 + 188) | 0x97u) - 660;
    return (*(v75 + 8 * ((2 * v79) | (v79 << 7) | (v70 + 1584))))();
  }

  else if (v72)
  {
    v77 = 1564307779 * ((((v76 - 192) | 0xC8EA1984) - (v76 - 192) + ((v76 - 192) & 0x3715E678)) ^ 0x5FE7D597);
    *(v76 - 192) = v70 - v77 + 284;
    *(v76 - 188) = (v72 + v74 - ((2 * v72) & 0x3C6550B8)) ^ v77;
    *(v76 - 184) = &STACK[0x360];
    v78 = (*(v75 + 8 * (v70 ^ 0x81E)))(v76 - 192);
    LODWORD(STACK[0x394]) = v71;
    LODWORD(STACK[0x464]) = v72;
    return (*(v75 + 8 * (((LODWORD(STACK[0x360]) == v74) * (((a63 - 114) | 0x201) ^ 0x17)) ^ (a63 - 223))))(v78);
  }

  else
  {
    v80 = (v70 + 820) | 0x81;
    v81 = v70 - 49;
    v82 = v70;
    (*(v75 + 8 * (v70 ^ 0x877)))(*a28, v73, a60);
    LODWORD(STACK[0x26C]) = 0;
    v83 = *(a29 + 52);
    v84 = STACK[0x3D8];
    v85 = 1380333833 * ((((v76 - 192) | 0x128CB0B5) - (v76 - 192) + ((v76 - 192) & 0xED734F48)) ^ 0xACDE1B3F);
    *(v76 - 160) = &STACK[0x520];
    *(v76 - 168) = a30;
    *(v76 - 176) = (v82 - 293) ^ v85;
    *(v76 - 172) = v85 + 552919321 * v83 - 608707342;
    *(v76 - 192) = ((a70 ^ 0x669FFBF7) - 401940 + ((2 * a70) & 0xCD3FF7EE)) ^ v85;
    *(v76 - 188) = v85 + 552919321 * (((a20 & 0x7FFFFFFF ^ 0x89E2C429) - 821148532) ^ ((a20 & 0x7FFFFFFF ^ 0x28E7B936) + 1846229397) ^ (((v80 + 115519456) ^ a20 & 0x7FFFFFFF) + 1074672764)) - 1140526730;
    *(v76 - 184) = v84;
    v86 = (*(v75 + 8 * (v82 | 0x818)))(v76 - 192);
    v87 = *(v76 - 152);
    LODWORD(STACK[0x360]) = v87;
    return (*(v75 + 8 * ((157 * (v87 == -1640847268)) ^ v81)))(v86);
  }
}

uint64_t sub_2028C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = (v4 + 4 * v3);
  v8 = v3 + 1;
  *v7 = *(v6 + 4 * (*(v4 + 4 * v8) & 1)) ^ v7[397] ^ ((*(v4 + 4 * v8) & ((a2 + 484) ^ a1) | v2 & 0x80000000) >> 1);
  return (*(v5 + 8 * (((4 * (v8 == 227)) | (8 * (v8 == 227))) ^ a2)))();
}

uint64_t sub_20324(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v5 - 77;
  v7 = v4 - 39654974;
  v8 = v7 < -1227448640;
  v9 = a3 - 39654974 < v7;
  if (a3 - 39654974 < -1227448640 != v8)
  {
    v9 = v8;
  }

  return (*(v3 + 8 * (((14 * ((v6 - 1720293741) & 0x668999B9 ^ 0x8CF) - 1167) * v9) ^ v6)))(a1, 1941547122);
}

uint64_t sub_203B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, unsigned int a32)
{
  v39 = LOBYTE(STACK[0x310]);
  if (v39 == 2)
  {
    v43 = LODWORD(STACK[0x308]);
    v44 = &STACK[0x2B0] + v34 + 107308588;
    v45 = ((a32 ^ 0x72 ^ *v44) << 24) | ((v44[1] ^ v35) << 16) | ((v44[2] ^ v35) << 8);
    *v37 = (v45 | v44[3] ^ v35) + v33 - 2 * ((v45 | v44[3] ^ v35) & 0x1E32A85F ^ (v44[3] ^ v35) & 3);
    v46 = *(v32 + 8 * (((2 * ((v34 + 107308592) > 0x3F)) | (4 * ((v34 + 107308592) > 0x3F))) ^ a32));
    return v46(v46, v43, 650511660, v36 + 16, 4294705152, 938541056, a32, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else if (v39 == 1)
  {
    v40 = &STACK[0x2B0] + v34 + 107308588;
    v41 = *v40 ^ v35;
    LODWORD(v40) = ((v40[2] ^ v35) << 16) | ((v40[3] ^ v35) << 24) | v41 & 0xFFFF00FF | ((a31 ^ v40[1]) << 8);
    *v37 = v40 + v33 - 2 * (v40 & 0x1E32A85E ^ v41 & 2);
    return (*(v32 + 8 * ((((v34 + 107308592) < 0x40) | (2 * ((v34 + 107308592) < 0x40))) ^ (v38 + 2046))))(1745092608, 2147221504, 3911096112, 107308588, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else
  {
    return sub_37A9C(LODWORD(STACK[0x2F8]));
  }
}

uint64_t sub_20400(int8x16_t *a1, int8x16_t a2, double a3, double a4, int8x16_t a5, uint64_t a6, int a7)
{
  v11 = (v9 + v8);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a5)), a2);
  *a1 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a5)), a2);
  a1[1] = v12;
  return (*(v10 + 8 * (((((v7 - 330) ^ 2) == 64) * a7) ^ v7)))();
}

uint64_t sub_20524(int8x16_t a1, int32x4_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *&v137[56] = a41;
  *&v137[48] = a40;
  *&v137[40] = a39;
  *&v137[32] = a38;
  *&v137[24] = a37;
  *&v137[16] = a36;
  *&v137[8] = a35;
  *v137 = a34;
  v136 = *(v47 + 8 * v43);
  v52 = *(v51 - 180);
  v53 = *(v51 - 176);
  v55 = *(v51 - 172);
  v54 = *(v51 - 168);
  v56 = *(v51 - 156);
  if (v56 == 2)
  {
    v138 = vld4q_s8(v42);
    v84 = veorq_s8(v138.val[0], a3);
    v85 = vmovl_high_u8(v84);
    v86 = vmovl_u8(*v84.i8);
    v87 = veorq_s8(v138.val[1], a3);
    _Q21 = vmovl_high_u8(v87);
    _Q20 = vmovl_u8(*v87.i8);
    v90 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v91 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v92 = veorq_s8(v138.val[2], a3);
    v93 = vmovl_u8(*v92.i8);
    v94 = vmovl_high_u8(v92);
    v138.val[0] = veorq_s8(v138.val[3], a3);
    v138.val[1] = vmovl_u8(*v138.val[0].i8);
    v138.val[2] = vmovl_u16(*v138.val[1].i8);
    v138.val[1] = vmovl_high_u16(v138.val[1]);
    v138.val[0] = vmovl_high_u8(v138.val[0]);
    v138.val[3] = vmovl_u16(*v138.val[0].i8);
    v138.val[0] = vmovl_high_u16(v138.val[0]);
    v95 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v94, 8uLL)), vshlq_n_s32(vmovl_high_u16(v85), 0x18uLL)), v138.val[0]);
    v96 = vorrq_s8(vorrq_s8(vorrq_s8(v91, vshll_n_u16(*v94.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v85.i8), 0x18uLL)), v138.val[3]);
    v97 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v93, 8uLL)), vshlq_n_s32(vmovl_high_u16(v86), 0x18uLL)), v138.val[1]);
    v98 = vorrq_s8(vorrq_s8(vorrq_s8(v90, vshll_n_u16(*v93.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v86.i8), 0x18uLL)), v138.val[2]);
    v138.val[0] = veorq_s8(vandq_s8(v95, a1), (*v138.val & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v138.val[3] = veorq_s8(vandq_s8(v96, a1), (*&v138.val[3] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v138.val[1] = veorq_s8(vandq_s8(v97, a1), (*&v138.val[1] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v138.val[2] = veorq_s8(vandq_s8(v98, a1), (*&v138.val[2] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v138.val[0] = vaddq_s32(vsubq_s32(v95, vaddq_s32(v138.val[0], v138.val[0])), a2);
    v138.val[3] = vaddq_s32(vsubq_s32(v96, vaddq_s32(v138.val[3], v138.val[3])), a2);
    v138.val[1] = vaddq_s32(vsubq_s32(v97, vaddq_s32(v138.val[1], v138.val[1])), a2);
    v138.val[2] = vaddq_s32(vsubq_s32(v98, vaddq_s32(v138.val[2], v138.val[2])), a2);
    *v45 = v138.val[2].i32[0];
    *&v137[4] = vextq_s8(v138.val[2], v138.val[1], 4uLL);
    *&v137[20] = vextq_s8(v138.val[1], v138.val[3], 4uLL);
    *&v137[36] = vextq_s8(v138.val[3], v138.val[0], 4uLL);
    *&v137[52] = vextq_s8(v138.val[0], v138.val[0], 4uLL).u64[0];
    *&v137[60] = v138.val[0].i32[3];
    v45[v50 + 1648703043] = v48 ^ __ROR4__(v45[v50 + 1648703035] ^ v45[v50 + 1648703029] ^ v45[v50 + 1648703027] ^ v45[a25 + 1648703043], 31);
    return (*(v47 + 8 * ((111 * (v44 != 1648702980)) ^ a26)))(v52, a5, a6, a7, a8, a9, a10, v53, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v136, a25, a26, a27, a28, a29, a30, a31, a32, a33, *v137, *&v137[8], *&v137[16], *&v137[24], *&v137[32], *&v137[40], *&v137[48], *&v137[56]);
  }

  else if (v56 == 1)
  {
    v139 = vld4q_s8(v42);
    v57 = 3 * (a9 ^ (a9 + 31));
    v58 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v139.val[0], a3)));
    v59 = veorq_s8(v139.val[2], a3);
    _Q25 = vmovl_u8(*v59.i8);
    _Q24 = vmovl_high_u8(v59);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v139.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v139.val[3], a3))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v139.val[1], a3)), 8uLL), v58));
    v68 = veorq_s8(vandq_s8(v139.val[2], vdupq_n_s32(0x1E32A85Eu)), (*&v58 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v45 = vaddq_s32(vsubq_s32(v139.val[2], vaddq_s32(v68, v68)), a2).u32[0];
    v69 = (v53 & 0x92A28E98 ^ 0x90008490 ^ (v53 ^ v49) & (v54 ^ 0x9151E5D2) | v55 & ((v57 + 1338) ^ 0x4F10B7B5) ^ (v53 ^ 0x4CE3D962) & (v55 ^ v46) ^ 0x3102208) + (v52 ^ v46) + *(*(&off_C1600 + (v57 & 0x1B24F017)) + a27 + v50 - 1) + (v45[(*(*(&off_C1600 + (v57 ^ 0xD8)) + a27 + v50 - 12) - 76)] ^ v48);
    v70 = (v69 ^ 0x34D65607) & (2 * (v69 & 0xB6D756A6)) ^ v69 & 0xB6D756A6;
    v71 = ((2 * (v69 ^ 0x1C78D24F)) ^ 0x555F09D2) & (v69 ^ 0x1C78D24F) ^ (2 * (v69 ^ 0x1C78D24F)) & 0xAAAF84E8;
    v72 = v71 ^ 0xAAA08429;
    v73 = (v71 ^ 0xF0080) & (4 * v70) ^ v70;
    v74 = ((4 * v72) ^ 0xAABE13A4) & v72 ^ (4 * v72) & 0xAAAF84E8;
    v75 = (v74 ^ 0xAAAE00A0) & (16 * v73) ^ v73;
    v76 = ((16 * (v74 ^ 0x18449)) ^ 0xAAF84E90) & (v74 ^ 0x18449) ^ (16 * (v74 ^ 0x18449)) & 0xAAAF84E0;
    v77 = v75 ^ 0xAAAF84E9 ^ (v76 ^ 0xAAA80400) & (v75 << 8);
    v78 = (v77 << 16) & 0x2AAF0000 ^ v77 ^ ((v77 << 16) ^ 0x4E90000) & (((v76 ^ 0x78069) << 8) & 0x2AAF0000 ^ 0x2B0000 ^ (((v76 ^ 0x78069) << 8) ^ 0x2F840000) & (v76 ^ 0x78069));
    v79 = *(&off_C1600 + (v57 + 79)) - 12;
    v80 = v79[a27 + v50];
    LOBYTE(v72) = (v80 + 26) ^ (((v80 + 26) ^ 0xAD) + 2) ^ (((v80 + 26) ^ 0xBD) + 18) ^ (((v80 + 26) ^ 0xBC) + 17) ^ (57 - v80);
    v81 = (((v53 ^ 0x5D8C6A65) - 1569483365) ^ ((v53 ^ 0x8B39D1D7) + 1959145001) ^ ((v53 ^ 0xD546D0F8) + 716779272)) + 527338864 + (((v69 ^ (2 * v78) ^ 0xE2DA5F74) << ((v72 ^ 0xFC) & 0x17 ^ 7) << (v72 & 8)) | ((v69 ^ (2 * v78) ^ 0xE2DA5F74) >> (v41 - v80)));
    v82 = *(v47 + 8 * ((1534 * (a27 + 1 == v44)) ^ v57));
    return v82(v82, v79, 2474254887, 23, a27 + 1, 2036916052, v81 ^ ((v81 ^ 0x531AB372) - 1214353748) ^ ((v81 ^ 0x2EDCF8F) - 429321641) ^ ((v81 ^ 0x3D72A124) - 638157570) ^ ((v81 ^ 0x77FEFFFF) - 1820712409) ^ 0x1888496Cu, v53, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v136, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    v99 = *(v51 - 176);
    v100 = (((v52 ^ 0xDE99410A) + 560381686) ^ ((v52 ^ 0x825423D7) + 2108415017) ^ ((v52 ^ 0x5F3E0997) - 1597901207)) + (((*(v51 - 180) ^ 0xD591D8FC) + 711862020) ^ ((*(v51 - 180) ^ 0x7FA63BB7) - 2141600695) ^ ((*(v51 - 180) ^ 0xA9C48801) + 1446737919)) + 1622196674;
    v101 = (2 * (v100 & 0xA73614D2)) & (v100 ^ 0x226DC678) ^ v100 & 0xA73614D2 ^ ((2 * (v100 & 0xA73614D2)) & 0x44800A0 | 0x30000);
    v102 = (2 * (v100 ^ 0x226DC678)) & 0x855BD2AA ^ 0x854852AA ^ ((2 * (v100 ^ 0x226DC678)) ^ 0xAB7A554) & (v100 ^ 0x226DC678);
    v103 = (4 * v101) & 0x855BD2A8 ^ v101 ^ ((4 * v101) ^ 0xC0000) & v102;
    v104 = (4 * v102) & 0x855BD2A8 ^ 0x80109002 ^ ((4 * v102) ^ 0x156F4AA8) & v102;
    v105 = (16 * v103) & 0x855BD2A0 ^ v103 ^ ((16 * v103) ^ 0xB00000) & v104;
    v106 = (16 * v104) & 0x855BD2A0 ^ 0x8042D00A ^ ((16 * v104) ^ 0x55BD2AA0) & v104;
    v107 = v105 ^ (v105 << 8) & 0x855BD200 ^ ((v105 << 8) ^ 0x1B000000) & v106 ^ 0x8440D2AA;
    v108 = v100 ^ (2 * ((v107 << 16) & 0x55B0000 ^ v107 ^ ((v107 << 16) ^ 0x52AA0000) & ((v106 << 8) & 0x55B0000 ^ 0x4090000 ^ ((v106 << 8) ^ 0x5BD20000) & v106)));
    v109 = (((v53 ^ 0x5A5469E9) - 1515481577) ^ ((v53 ^ 0x5BB737B) - 96170875) ^ ((v53 ^ 0x5C1C71D8) - 1545368024)) + (((*(v51 - 176) ^ 0x5ADD8B61) - 1524468577) ^ ((*(v51 - 176) ^ 0xF5608F08) + 178221304) ^ ((*(v51 - 176) ^ 0xAC4E6F23) + 1404145885)) + 1414549356;
    v110 = (2 * (v109 & 0xB3968728)) & (v109 ^ 0x1BB2B6E4) ^ v109 & 0xB3968728 ^ ((2 * (v109 & 0xB3968728)) & 0x20240040 | 0x2008);
    v111 = (2 * (v109 ^ 0x1BB2B6E4)) & 0xA82431CC ^ 0xA8241044 ^ ((2 * (v109 ^ 0x1BB2B6E4)) ^ 0x50486398) & (v109 ^ 0x1BB2B6E4);
    v112 = (4 * v110) & 0xA82431C8 ^ v110 ^ ((4 * v110) ^ 0x8020) & v111;
    v113 = (4 * v111) & 0xA82431CC ^ 0x82430CC ^ ((4 * v111) ^ 0xA090C730) & v111;
    v114 = v112 ^ 0xA8241144 ^ (16 * v112) & 0xA82431C0 ^ ((16 * v112) ^ 0x20080) & v113;
    v115 = (16 * v113) & 0xA82431C0 ^ 0x2824210C ^ ((16 * v113) ^ 0x82431CC0) & v113;
    v116 = (v114 << 8) & 0xA8243100 ^ v114 ^ ((v114 << 8) ^ 0x2431CC00) & v115;
    *(v51 - 180) = v108 ^ 0xAE66DACC;
    *(v51 - 176) = v109 ^ (2 * ((v116 << 16) & 0x28240000 ^ v116 ^ ((v116 << 16) ^ 0x31CC0000) & ((v115 << 8) & 0x28240000 ^ 0x8040000 ^ ((v115 << 8) ^ 0x24310000) & v115))) ^ 0xE0658FFA;
    v117 = (((v55 ^ 0x90FDEEC0) + 1862406464) ^ ((v55 ^ 0x9C25C0BC) + 1675247428) ^ ((v55 ^ 0xF2B4536) - 254494006)) + (((*(v51 - 172) ^ 0xE60E6EB7) + 435261769) ^ ((*(v51 - 172) ^ 0x1ED579B9) - 517306809) ^ ((*(v51 - 172) ^ 0xFB287C44) + 81232828)) + 1925713918;
    v118 = (v117 ^ 0x509EB446) & (2 * (v117 & 0x951EC696)) ^ v117 & 0x951EC696;
    v119 = ((2 * (v117 ^ 0x52973142)) ^ 0x8F13EFA8) & (v117 ^ 0x52973142) ^ (2 * (v117 ^ 0x52973142)) & 0xC789F7D4;
    v120 = v119 ^ 0x40881054;
    v121 = (v119 ^ 0x84012680) & (4 * v118) ^ v118;
    v122 = ((4 * v120) ^ 0x1E27DF50) & v120 ^ (4 * v120) & 0xC789F7D4;
    v123 = (v122 ^ 0x601D740) & (16 * v121) ^ v121;
    v124 = ((16 * (v122 ^ 0xC1882084)) ^ 0x789F7D40) & (v122 ^ 0xC1882084) ^ (16 * (v122 ^ 0xC1882084)) & 0xC789F7D0;
    v125 = v123 ^ 0xC789F7D4 ^ (v124 ^ 0x40897500) & (v123 << 8);
    v126 = v117 ^ (2 * ((v125 << 16) & 0x47890000 ^ v125 ^ ((v125 << 16) ^ 0x77D40000) & (((v124 ^ 0x87008294) << 8) & 0x47890000 ^ 0x46080000 ^ (((v124 ^ 0x87008294) << 8) ^ 0x9F70000) & (v124 ^ 0x87008294))));
    v127 = (((v54 ^ 0xEB836637) + 343710153) ^ ((v54 ^ 0xBBD72F02) + 1143525630) ^ ((v54 ^ 0x53A7227F) - 1403462271)) + (((*(v51 - 168) ^ 0x8D7C511C) + 1921232612) ^ ((*(v51 - 168) ^ 0x1F057A8B) - 520452747) ^ ((*(v51 - 168) ^ 0x918A40DD) + 1853210403)) + 346589322;
    v128 = (v127 ^ 0xE2BF4D22) & (2 * (v127 & 0xF33E4E0A)) ^ v127 & 0xF33E4E0A;
    v129 = ((2 * (v127 ^ 0x82CB5926)) ^ 0xE3EA2E58) & (v127 ^ 0x82CB5926) ^ (2 * (v127 ^ 0x82CB5926)) & 0x71F5172C;
    v130 = v129 ^ 0x10151124;
    v131 = (v129 ^ 0x41E00008) & (4 * v128) ^ v128;
    v132 = ((4 * v130) ^ 0xC7D45CB0) & v130 ^ (4 * v130) & 0x71F5172C;
    v133 = (v132 ^ 0x41D41420) & (16 * v131) ^ v131;
    v134 = ((16 * (v132 ^ 0x3021030C)) ^ 0x1F5172C0) & (v132 ^ 0x3021030C) ^ (16 * (v132 ^ 0x3021030C)) & 0x71F51720;
    v135 = v133 ^ 0x71F5172C ^ (v134 ^ 0x11511200) & (v133 << 8);
    *(v51 - 172) = v126 ^ 0x96FE4274;
    *(v51 - 168) = v127 ^ (2 * ((v135 << 16) & 0x71F50000 ^ v135 ^ ((v135 << 16) ^ 0x172C0000) & (((v134 ^ 0x60A4052C) << 8) & 0x71F50000 ^ (((v134 ^ 0x60A4052C) << 8) ^ 0x75170000) & (v134 ^ 0x60A4052C) ^ 0xE00000))) ^ 0x316F0B18;
    return v136(1200160768, 673447936, 2820944320, 2820935748, 32800, a9, v99, 2974, a12, a13, a14, a15, a16);
  }
}

void sub_20C2C()
{
  v3 = (((v0 ^ 0x93A3E59F) + 1817975393) ^ ((v0 ^ 0xFA33BA3A) + 97273286) ^ ((v0 ^ 0x6A6334EF) - 1784886511)) + 1885782200 + (((v1 ^ 0xC143516) + 1383208018 + (*(v2 - 164) ^ 0xA179BA9D)) ^ ((*(v2 - 164) ^ 0xDB714EE5) + 613331227) ^ ((*(v2 - 164) ^ 0x79FB9F32) - 2046533426));
  *(v2 - 164) = v3 ^ ((v3 ^ 0xD54B9FE0) + 1120635452) ^ ((v3 ^ 0x7531A6A4) - 491670656) ^ ((v3 ^ 0x97FA3CBF) + 8005989) ^ ((v3 ^ 0x5FFFEFDF) - 931137019) ^ 0x6B8C816E;
  JUMPOUT(0x20D74);
}

uint64_t sub_215CC@<X0>(int a1@<W8>)
{
  v9 = (v3 - 2);
  v10 = v2 + 2;
  *v9 = (v10 ^ v5) * (v10 + 17);
  *(v9 - 1) = (v10 + v6) * (v10 ^ 0xBB);
  return (*(v8 + 8 * (((v4 == 2) * v7) ^ a1)))();
}

uint64_t sub_216AC@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ (v3 + 875914729) & 0xCBCA994A ^ 0xFFFFFFFFFFFFFEFFLL) + v1;
  *(a1 - 7 + v6) = vadd_s8(vsub_s8(*(v4 - 7 + v6), vand_s8(vadd_s8(*(v4 - 7 + v6), *(v4 - 7 + v6)), 0x7272727272727272)), 0x3939393939393939);
  return (*(v5 + 8 * ((695 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_217F8(__n128 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v10 = (a4 + 4 * v8);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((a6 + v8 != v7) * a7) ^ a3)))();
}

uint64_t sub_21820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, unsigned int a16)
{
  v19 = 1388665877 * ((((&a13 ^ 0x48811849) & 0xEDB31C5D) + (&a13 ^ 0xB77AA634) - ((&a13 ^ 0xB77AA634) & 0xEDB31C5D)) ^ 0xD764D885);
  a14 = a11;
  a13 = v19 ^ (a9 - ((2 * a9) & 0x17822594) - 1950281014);
  a16 = v19 + 1757;
  v20 = (*(v17 + 19064))(&a13);
  return (*(v17 + 8 * ((1534 * (a15 == v18)) ^ v16)))(v20);
}

uint64_t sub_218E8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 + a2) | 0x500) - 1130)) ^ (v4 + a2 + 558))))();
}

uint64_t sub_219B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v18 = ((393 * (v12 ^ 0x490)) ^ 0xFFFFFB64) + v16;
  *(v17 - 144) = v12 + 896639297 * ((~((v17 - 144) | 0x4E10769C) + ((v17 - 144) & 0x4E10769C)) ^ 0xA5441F1B) + 132;
  *(v17 - 120) = &a11;
  *(v17 - 112) = &a11;
  *(v17 - 136) = v13;
  *(v17 - 128) = v14;
  (*(v15 + 8 * (v12 ^ 0xDAD)))(v17 - 144);
  v19 = 843532609 * ((((v17 - 144) | 0xBCC50496) - (v17 - 144) + ((v17 - 144) & 0x433AFB68)) ^ 0xAC7973C8);
  *(v17 - 144) = v11;
  *(v17 - 132) = v19 + v12 - 598;
  *(v17 - 128) = v19 ^ v18 ^ (((51 * (v12 ^ 0x488)) ^ 0xC3311B02 ^ v18) + 18700101) ^ ((v18 ^ 0xCF81D890) + 229478840) ^ ((v18 ^ 0x4C9C0FD4) - 1901050124) ^ ((v18 ^ 0x7DFF7FFF) - 1076676903) ^ 0xD707393B;
  v20 = (*(v15 + 8 * (v12 ^ 0xDB7)))(v17 - 144);
  return (*(v15 + 8 * (v12 ^ (8 * (*(v17 - 136) == 1700203916)))))(v20);
}

uint64_t sub_21B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, int a16, uint64_t *a17, unsigned int a18)
{
  v22 = 843532609 * ((&a13 & 0xABF28DA6 | ~(&a13 | 0xABF28DA6)) ^ 0x44B10507);
  a17 = &a9;
  a18 = v22 - 1295632373;
  a16 = (v20 + 1421511897) ^ v22;
  a14 = a10;
  a13 = v22 + 1238942874;
  v23 = (*(v19 + 8 * (v20 ^ 0xB26)))(&a13);
  return (*(v19 + 8 * ((1298 * (a15 == (v21 ^ (v18 + 692)))) | v20)))(v23);
}

uint64_t sub_21C50(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_21C78()
{
  v8.i64[0] = 0x7272727272727272;
  v8.i64[1] = 0x7272727272727272;
  v9.i64[0] = 0x3939393939393939;
  v9.i64[1] = 0x3939393939393939;
  v10 = vaddq_s8(vsubq_s8(v4[1], vandq_s8(vaddq_s8(v4[1], v4[1]), v8)), v9);
  v11 = (v6 - 220 + v1);
  *v11 = vaddq_s8(vsubq_s8(*v4, vandq_s8(vaddq_s8(*v4, *v4), v8)), v9);
  v11[1] = v10;
  return (*(v5 + 8 * ((101 * ((v3 & 0x60) - v2 == -1365)) ^ (v7 + v0 + 1097))))();
}

void sub_21CFC(uint64_t a1)
{
  v1 = *(a1 + 8) - 210068311 * (a1 ^ 0x92D63FA4);
  v2 = *(&off_C1600 + v1 - 302) - 8;
  v3 = *a1;
  (*&v2[8 * (v1 ^ 0x8FE)])(*(&off_C1600 + (v1 ^ 0x1D4)) - 4, sub_226BC);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_21E04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x72) + 57;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((1203 * v4) ^ 0x3A4u)))(0);
}

uint64_t sub_21ECC(void *a1)
{
  if (a1[5])
  {
    v3 = (a1[1] | a1[6]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((v1 - 1090) | 0x201) ^ (v1 - 614))) ^ v1)))();
}

uint64_t sub_21F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = (((v28 ^ 0xDD6F0C4F) + 579924913) ^ ((v28 ^ 0x6DC5A48C) - 1841669260) ^ ((v28 ^ 0x2E98009F) - 781713567)) + (((LODWORD(STACK[0x4B4]) ^ 0x368ADA81) - 915069569) ^ ((LODWORD(STACK[0x4B4]) ^ 0x541FC9B9) - 1411369401) ^ (((v30 - 56116704) ^ LODWORD(STACK[0x4B4])) + 56116380)) + 1013272760;
  *(a28 + 52) = ((v31 % 0x2710) ^ 0xEAB3BFCD) + 2145189564 + ((2 * (v31 % 0x2710)) & 0x7F9A);
  v32 = STACK[0x4BC];
  STACK[0x228] -= 1616;
  LODWORD(STACK[0x3A0]) = v32;
  return (*(v29 + 8 * ((1159 * (v32 == -1640847268)) ^ (v30 - 194))))();
}

uint64_t sub_220C0()
{
  v3 = (*(v2 + 8 * (v0 + 1655)))();
  LODWORD(STACK[0x4B8]) = v1;
  return (*(v2 + 8 * (((((4 * v0) ^ 0xB84) + ((v0 - 364) ^ 0xFFFFFFFB)) * (v1 == -1640847268)) ^ v0)))(v3);
}

uint64_t sub_226BC()
{
  v0 = *(&off_C1600 + ((-35 * ((qword_C86F8 + dword_C8728) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 + dword_C8728) ^ 0xD2))] ^ 0xEE]) - 195);
  v1 = *(&off_C1600 + (byte_A8FE0[byte_A4980[(-35 * (*v0 ^ qword_C86F8 ^ 0xD2))] ^ 0x1C] ^ (-35 * (*v0 ^ qword_C86F8 ^ 0xD2))) + 24);
  v2 = 1865875933 * (&v4[*v0 + *(v1 - 4)] ^ 0x1E71746347E125D2);
  *v0 = v2;
  *(v1 - 4) = v2;
  LOBYTE(v2) = -35 * ((v2 - *v0) ^ 0xD2);
  v5 = *(&off_C1600 + (byte_9C654[(byte_A8DE8[v2 - 8] ^ 0xF1) - 4] ^ v2) - 50);
  v6 = 210068311 * ((&v5 & 0x3D852AD3 | ~(&v5 | 0x3D852AD3)) ^ 0x50ACEA88) + 567;
  LOBYTE(v0) = -35 * ((*(v1 - 4) - *v0) ^ 0xD2);
  return (*(*(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8728) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((qword_C86F8 - dword_C8728) ^ 0xD2))] ^ 0x1C]) + 102) + (v0 ^ byte_A8FE0[byte_A4980[v0] ^ 0xB2]) + 2344))(&v5);
}

uint64_t sub_228DC(_DWORD *a1)
{
  v1 = *a1 + 1556366573 * ((-2 - ((a1 | 0x6495CE28) + (~a1 | 0x9B6A31D7))) ^ 0xFF8E123D) + 2013066567;
  v3 = **(&off_C1600 + v1);
  v4 = v1 - 50899313 * ((&v3 & 0x74BA5A9C | ~(&v3 | 0x74BA5A9C)) ^ 0xA18E8F19) + 235;
  return (*(*(&off_C1600 + v1 + 112) + v1 + 2403))(&v3);
}

void sub_229E4(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 959689982 || *(*a1 + 4) == 959689982;
  v1 = *(a1 + 8) ^ (143681137 * (a1 ^ 0x613AB748));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22AB8@<X0>(uint64_t a1@<X8>)
{
  v9 = v1 - 1 + (*(*(v7 + 8) + 4 * v2) ^ v4);
  *(*(a1 + 8) + 4 * v2) = v9 + ((v3 + 746) ^ (v4 + 1147)) - (v6 & (2 * v9));
  return (*(v5 + 8 * ((1431 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_22B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, char a16, int *a17, unsigned int a18, uint64_t a19)
{
  a19 = a12;
  a17 = &a14;
  a18 = (v19 + 123) ^ (143681137 * ((((2 * &a16) | 0x4264320C) - &a16 - 556931334) ^ 0x4008AE4E));
  v21 = (*(v20 + 8 * (v19 ^ 0xFD1)))(&a16);
  return (*(v20 + 8 * ((380 * (a14 == (((v19 + 536893925) | 0x952C8628) ^ 0x9E32A85C ^ ((v19 - 1341391007) | 0x520E0AC)))) ^ v19)))(v21);
}

uint64_t sub_22DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 120) = v17;
  *(v19 - 136) = a16;
  *(v19 - 128) = v18 - 143681137 * ((((v19 - 136) | 0x28CD4A3) + (~(v19 - 136) | 0xFD732B5C)) ^ 0x63B663EA) - 1011;
  v20 = (*(v16 + 8 * (v18 + 150)))(v19 - 136);
  return (*(v16 + 8 * ((19 * (a12 >= 1)) ^ (v18 - 976))))(v20);
}

uint64_t sub_22EBC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((*(v3 + v5) << (v2 + 113)) & 0x72) + 57;
  return (*(v4 + 8 * ((94 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_22EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = *(v19 + 32);
  v25 = 1037613739 * ((2 * (&a12 & 0x3B19FF40) - &a12 + 1155924155) ^ 0x95E42DC4);
  a17 = *(v19 + 24);
  a16 = v23 - v25 - 1776825352;
  a13 = (a11 - ((2 * a11) & 0x478DDD4) + 37514986) ^ v25;
  a14 = v24;
  a15 = a9;
  a12 = a9;
  a19 = (((v22 ^ 0xE8242315) + 400284907) ^ ((v22 ^ 0x3826BDDA) - 942063066) ^ (((206 * (v23 ^ 0x812) - 649796108) ^ v22) + 649795078)) - v25 + 926663981;
  v26 = (*(v21 + 8 * (v23 + 371)))(&a12);
  return (*(v21 + 8 * ((54 * (a18 != v20)) ^ v23)))(v26);
}

uint64_t sub_23038()
{
  v3 = *(v0 + 96);
  if (v3 == 1)
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 68);
    *(v0 + 56) = (8 * (v6 - ((2 * v6) & 0xF7)) - 40) ^ ((v2 ^ 0x4E) - 41);
    *(v0 + 57) = v1 ^ (v6 >> 5);
    *(v0 + 58) = v1 ^ (v6 >> 13);
    *(v0 + 59) = v1 ^ (v6 >> 21);
    *(v0 + 60) = ((__PAIR64__(v7, v6) >> 29) - ((2 * (__PAIR64__(v7, v6) >> 29)) & 0xA) - 123) ^ 0xBC;
    *(v0 + 61) = v1 ^ (v7 >> 5);
    *(v0 + 62) = v1 ^ (v7 >> 13);
    return sub_23178(v2 ^ 0x94Eu);
  }

  else
  {
    if (v3 != 2)
    {
      JUMPOUT(0x23180);
    }

    v4 = *(v0 + 64);
    v5 = *(v0 + 68);
    *(v0 + 56) = (v4 >> 21) - ((v4 >> 20) & 0x72) + 57;
    *(v0 + 57) = v2 - 58 + (v4 >> 13) - ((v4 >> 12) & 0x72) + 47;
    *(v0 + 58) = (v4 >> 5) - ((v4 >> 4) & 0x72) + 57;
    *(v0 + 59) = (__PAIR64__(v4, v5) >> 29) - ((2 * (__PAIR64__(v4, v5) >> 29)) & 0x72) + 57;
    *(v0 + 60) = (v5 >> 21) - ((v5 >> 20) & 0x72) + 57;
    *(v0 + 61) = (v5 >> 13) - ((v5 >> 12) & 0x72) + 57;
    *(v0 + 62) = (v5 >> 5) - ((v5 >> 4) & 0x72) + 57;
    return sub_23178(v2 + 1734);
  }
}

uint64_t sub_23178@<X0>(int a1@<W8>)
{
  *(v3 + 63) = v1;
  STACK[0x430] = *(v4 + 8 * ((a1 ^ v2) - 291));
  return sub_3055C();
}

uint64_t sub_23240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v28 = ((((v27 - 144) | 0xB8DF3900) - ((v27 - 144) & 0xB8DF3900)) ^ 0xD9E58E48) * v23;
  *(v27 - 144) = (v26 - 270) ^ v28;
  *(v27 - 136) = &a23;
  *(v27 - 128) = v28 ^ 0x6B92BD3A;
  v29 = (*(v24 + 8 * (v26 ^ 0xE2Au)))(v27 - 144);
  return (*(v24 + 8 * ((((v26 - 136) ^ 0x697) * (v25 != 0)) ^ (v26 - 93))))(v29);
}

uint64_t sub_232E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(a12 + 16) = -v18;
  v23 = 143681137 * ((((v22 - 136) | 0x4A14336B) - (v22 - 136) + ((v22 - 136) & 0xB5EBCC90)) ^ 0x2B2E8423);
  *(v22 - 120) = v23 ^ 0x6B91BD3A;
  *(v22 - 136) = (v21 - 85) ^ v23;
  *(v22 - 128) = v20;
  (*(v19 + 8 * (v21 ^ 0xF63)))(v22 - 136);
  v24 = 210068311 * (((v22 - 136) & 0xA42E7594 | ~((v22 - 136) | 0xA42E7594)) ^ 0xC907B5CF);
  *(v22 - 136) = ((32 * a15) ^ 0x6B7F5FFF) + (((v21 + 80) | 0x101) ^ 0x9DEBA8AF) + ((a15 << (((v21 - 62) | 0x81) ^ 0xBB)) & 0xD6FEBFC0) + v24;
  *(v22 - 132) = (v21 + 360) ^ v24;
  *(v22 - 128) = v20;
  (*(v19 + 8 * (v21 ^ 0xF6D)))(v22 - 136);
  *(v22 - 120) = a17;
  *(v22 - 128) = v21 - 143681137 * ((v22 + 2098161707 - 2 * ((v22 - 136) & 0x7D0F68B3)) ^ 0x1C35DFFB) - 432;
  *(v22 - 136) = &a18;
  (*(v19 + 8 * (v21 ^ 0xF29)))(v22 - 136);
  *(v22 - 112) = v21 - 1785193651 * (((v22 - 136) & 0x888FE597 | ~((v22 - 136) | 0x888FE597)) ^ 0xF4C0907E) + 543;
  *(v22 - 120) = v20;
  *(v22 - 136) = a17;
  v25 = (*(v19 + 8 * (v21 + 731)))(v22 - 136);
  return (*(v19 + 8 * ((*(v22 - 128) <= 0x73B9A872u) | v21)))(v25);
}

uint64_t sub_234F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v10 - 132);
  if (v11 == 2)
  {
    return (*(v9 + 8 * ((484 * (*(v10 - 136) != a5 + a7 - 1142)) ^ (a5 + a7 + 1))))(a1, a9, 3346787620);
  }

  if (v11 != 1)
  {
    return sub_235DC(a9, a2, 3346787620);
  }

  if (*(v10 - 136) == ((a7 + a5) ^ 0x476))
  {
    v12 = a7 + a5 + 1;
  }

  else
  {
    v12 = a7 + a5;
  }

  return (*(v9 + 8 * v12))(a9, a2, 3346787620);
}

uint64_t sub_235DC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(v6 + (v3 ^ (a1 + 75)) - v2) = ((v2 + v4) ^ v5) * (v2 + v4 + 17);
  *(v6 - v2 + 90) = ((v2 + v4) ^ 0xBB) * (v2 + v4 + 18);
  return (*(v8 + 8 * (((v2 == 90) * v7) ^ a2)))(0);
}

uint64_t sub_23664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  a17 = (v18 + 378) ^ (((-1927771205 - (&a17 | 0x8D188BBB) + (&a17 | 0x72E77444)) ^ 0x582C5E3E) * v19);
  a18 = a13;
  v21 = (*(v20 + 8 * (v18 + 2235)))(&a17);
  return sub_236D4(v21);
}

uint64_t sub_236D4()
{
  v7 = (v0 - 37) ^ (((((2 * &v7) | 0xB294A902) - &v7 + 649440127) ^ 0xF3817EFB) * v1);
  v8 = v6;
  (*(v3 + 8 * (v0 ^ 0xB1C)))(&v7);
  return v2 ^ v4;
}

uint64_t sub_23798@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36)
{
  v40 = *(&a24 + (a1 >> (v37 - 9)) + 18);
  v41 = ((2 * a1) & 0xFB5FFDB8) + (a1 ^ 0x7DAFFEDF) + v36;
  *(v38 + v41) = v40 ^ 0x73;
  *(v38 + v41 + 1) = (BYTE1(v40) ^ 0x6B) - ((2 * (BYTE1(v40) ^ 0x6B)) & 0x72) + 57;
  *(v38 + v41 + 2) = (BYTE2(v40) ^ 0xF3) - ((2 * (BYTE2(v40) ^ 0xF3)) & 0x72) + 57;
  *(v38 + v41 + 3) = (HIBYTE(v40) ^ 3) - 2 * ((HIBYTE(v40) ^ 3) & 0x3D ^ HIBYTE(v40) & 4) + 57;
  return (*(v39 + 8 * ((7 * (a1 + 4 < a36)) ^ v37)))();
}

uint64_t sub_238BC(int a1, int a2)
{
  HIDWORD(v9) = *(v2 + 4 * (v7 + v5 - 8)) ^ *(v2 + 4 * (v7 + v5 - 3)) ^ *(v2 + 4 * (v7 + v5 - 14)) ^ *(v2 + 4 * ((((v3 - 1627) | 0x40) ^ (v7 - 331)) + v5)) ^ v6;
  LODWORD(v9) = *(v2 + 4 * (v7 + v5 - 8)) ^ *(v2 + 4 * (v7 + v5 - 3)) ^ *(v2 + 4 * (v7 + v5 - 14)) ^ *(v2 + 4 * ((((v3 - 1627) | 0x40) ^ (v7 - 331)) + v5));
  *(v2 + 4 * (v4 + v7)) = (v9 >> 31) ^ a1;
  return (*(v8 + 8 * ((((v4 + 1 + v7) > 0x4F) * a2) ^ v3)))();
}

void sub_23938(_DWORD *a1)
{
  v2 = *(*a1 + 4) - 959689982;
  if (v2 < 0)
  {
    v2 = 959689982 - *(*a1 + 4);
  }

  v1 = a1[6] - 1564307779 * ((-2 - ((a1 | 0x70B5BE73) + (~a1 | 0x8F4A418C))) ^ 0x18478D9F);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_23A5C@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = (v16 + 4 * v9);
  v19 = (((*v18 ^ v8) + HIDWORD(v10)) & ((v15 + 238) ^ v17)) + HIDWORD(v14) + v13 * (*(*(a8 + 8) + 4 * v9) ^ v8);
  *(v18 - 1) = v19 + v8 - (a1 & (2 * v19));
  return (*(v12 + 8 * (((v9 + 1 == a2) * v11) ^ v15)))();
}

uint64_t sub_23AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, int a19, unsigned int a20)
{
  v25 = 1388665877 * (((&a17 ^ 0xDC65A330) - 148145018 - 2 * ((&a17 ^ 0xDC65A330) & 0xF72B7C86)) ^ 0xA6E3BD5A);
  a17 = (v23 - 1950280435 - ((2 * v23) & 0x17822594) - 579) ^ v25;
  a18 = a15;
  a20 = v25 + 1757;
  (*(v24 + 19064))(&a17);
  v26 = 1388665877 * ((-1102445193 - (&a17 | 0xBE4A0577) + (&a17 | 0x41B5FA88)) ^ 0xCC189864);
  a18 = a15;
  a20 = v26 + 1757;
  a17 = v26 ^ (HIDWORD(v22) - ((2 * HIDWORD(v22)) & 0x17822594) - 1950281014);
  (*(v24 + 19064))(&a17);
  v27 = 1388665877 * ((((2 * &a17) | 0xC5A51F32) - &a17 + 489517159) ^ 0x6F7FED75);
  a17 = v27 ^ (v22 - ((2 * v22) & 0x17822594) - 1950281014);
  a18 = a15;
  a20 = v27 + 1757;
  (*(v24 + 19064))(&a17);
  v28 = 1388665877 * (((&a17 | 0xEBC08902) - &a17 + (&a17 & 0x143F76F8)) ^ 0x666DEBEE);
  a20 = v28 + 1757;
  a18 = a15;
  a17 = v28 ^ (v21 - ((2 * v21) & 0x17822594) - 1950281014);
  (*(v24 + 19064))(&a17);
  v29 = 1388665877 * (((&a17 | 0xE37D3E77) - (&a17 & 0xE37D3E77)) ^ 0x6ED05C9B);
  a18 = a15;
  a17 = v29 ^ (v20 - ((2 * v20) & 0x17822594) - 1950281014);
  a20 = v29 + 1757;
  v30 = (*(v24 + 19064))(&a17);
  return (*(v24 + 8 * ((216 * (a19 != -1640847268)) ^ 0x7Cu)))(v30);
}

uint64_t sub_23D8C(uint64_t a1)
{
  v1 = 210068311 * (a1 ^ 0x92D63FA4);
  v2 = *(a1 + 8) + v1;
  LOBYTE(v1) = (*(a1 + 28) ^ v1) - 492929520 < 0xFFFFFEFF;
  return (*(*(&off_C1600 + (v2 ^ 0x269)) + (((2 * ((v1 ^ (v2 - 1)) & 1)) & 0xFB | (4 * ((v1 ^ (v2 - 1)) & 1))) ^ v2) - 1))();
}

uint64_t sub_23E7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = *(v19 + 4 * (v18 - 1));
  *(v19 + 4 * v18) = *(a18 + 4 * v21) + v21 + ((1664525 * (v23 ^ (v23 >> 30))) ^ *(v19 + 4 * v18));
  v24 = 1504884919 * ((((v22 - 152) | 0x6D8991FE222E921ALL) - ((v22 - 152) & 0x6D8991FE222E921ALL)) ^ 0x41D9CB44D9ED2501);
  *(v22 - 120) = ((a1 ^ 0x636) + 1254558304) ^ v24;
  *(v22 - 116) = 1 - v24;
  v25 = v22 - 160;
  *(v25 + 16) = v18 + 1 - v24;
  *(v25 + 24) = v24 + 623;
  *(v22 - 124) = v24 + (a1 ^ 0x636) + 55969080;
  *(v22 - 152) = (a1 ^ 0x636) + 1254558306 + v24;
  *(v22 - 148) = v24 ^ ((a1 ^ 0x636) + 1254558306) ^ 0x5C;
  v26 = (*(v20 + 8 * (a1 ^ 0xC34)))(v22 - 152);
  return (*(v20 + 8 * *(v22 - 128)))(v26);
}

void sub_23E88(int a1@<W8>)
{
  if (a1 == 526048919)
  {
    v2 = -1640847268;
  }

  else
  {
    v2 = 1640887172;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_23FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  v64 = v62 < a60;
  if (v64 == v61 + 1919311963 < ((v60 - 1853751262) & 0x6E7DFFB2) + 813098880)
  {
    v64 = v61 + 1919311963 < v62;
  }

  return (*(v63 + 8 * ((3869 * v64) ^ v60)))();
}

uint64_t sub_2408C@<X0>(unint64_t a1@<X1>, unint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v6 = a1 < a2;
  if (v6 == (v4 + 1) > 0xFFFFFFFFE0B89D4ALL)
  {
    v6 = a4 + v4 + 175 < a1;
  }

  return (*(v5 + 8 * (((((7 * (a3 ^ 0x74F) - 407) | 0x2A) - 96) * v6) ^ a3)))();
}

uint64_t sub_24114(uint64_t result)
{
  v2 = *v1;
  *result = 0;
  *(result + 8) = 0x1D69D0011D69D001;
  *(result + 16) = 0xE63D059060081934;
  *(result + 24) = -1640847268;
  *v2 = result;
  *(v1 + 8) = -1640847268;
  return result;
}

uint64_t sub_24150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13)
{
  v16 = a13 < a12;
  if (v16 == v13 > 0x2CA99F65)
  {
    v16 = v14 - 1060 + v13 - 749313918 < a13;
  }

  return (*(v15 + 8 * ((117 * !v16) ^ v14)))();
}

uint64_t sub_241B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t (*a17)(__n128, __n128, __n128, __n128), int a18, int a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, int32x4_t a25, int32x4_t a26, int32x4_t a27, int32x4_t a28)
{
  a16 = a12 + 268516697;
  v35 = (v33 - 220);
  v36.n128_u64[0] = 0x3939393939393939;
  v36.n128_u64[1] = 0x3939393939393939;
  v37 = vdupq_n_s32(0x1E32A85Fu);
  a20 = v32 - 16;
  v38 = vdupq_n_s32(0x9E32A85C);
  a19 = -66284419;
  a15 = (a5 - 463995224) & 0x96E9C3D1;
  v39.n128_u64[0] = 0x7272727272727272;
  v39.n128_u64[1] = 0x7272727272727272;
  a17 = *(v30 + 8 * (v34 + v28 + 79));
  a21 = 320;
  v41 = *(v33 - 140);
  v40 = *(v33 - 136);
  v42 = *(v33 - 124);
  if (v42 == 2)
  {
    v103 = vld4q_s8(v35);
    v68 = veorq_s8(v103.val[0], v36);
    v69 = vmovl_high_u8(v68);
    v70 = vmovl_u8(*v68.i8);
    v71 = veorq_s8(v103.val[1], v36);
    _Q21 = vmovl_high_u8(v71);
    _Q20 = vmovl_u8(*v71.i8);
    v74 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v75 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v76 = veorq_s8(v103.val[2], v36);
    v77 = vmovl_u8(*v76.i8);
    v78 = vmovl_high_u8(v76);
    v103.val[0] = veorq_s8(v103.val[3], v36);
    v103.val[1] = vmovl_u8(*v103.val[0].i8);
    v103.val[2] = vmovl_u16(*v103.val[1].i8);
    v103.val[1] = vmovl_high_u16(v103.val[1]);
    v103.val[0] = vmovl_high_u8(v103.val[0]);
    v103.val[3] = vmovl_u16(*v103.val[0].i8);
    v103.val[0] = vmovl_high_u16(v103.val[0]);
    v79 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v78, 8uLL)), vshlq_n_s32(vmovl_high_u16(v69), 0x18uLL)), v103.val[0]);
    v80 = vorrq_s8(vorrq_s8(vorrq_s8(v75, vshll_n_u16(*v78.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v69.i8), 0x18uLL)), v103.val[3]);
    v81 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v77, 8uLL)), vshlq_n_s32(vmovl_high_u16(v70), 0x18uLL)), v103.val[1]);
    v82 = vorrq_s8(vorrq_s8(vorrq_s8(v74, vshll_n_u16(*v77.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v70.i8), 0x18uLL)), v103.val[2]);
    v103.val[0] = veorq_s8(vandq_s8(v79, v37), (*v103.val & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v103.val[3] = veorq_s8(vandq_s8(v80, v37), (*&v103.val[3] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v103.val[1] = veorq_s8(vandq_s8(v81, v37), (*&v103.val[1] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    v103.val[2] = veorq_s8(vandq_s8(v82, v37), (*&v103.val[2] & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
    a25 = vaddq_s32(vsubq_s32(v82, vaddq_s32(v103.val[2], v103.val[2])), v38);
    a26 = vaddq_s32(vsubq_s32(v81, vaddq_s32(v103.val[1], v103.val[1])), v38);
    a27 = vaddq_s32(vsubq_s32(v80, vaddq_s32(v103.val[3], v103.val[3])), v38);
    a28 = vaddq_s32(vsubq_s32(v79, vaddq_s32(v103.val[0], v103.val[0])), v38);
    *(&a25 + v31 + 918084544) = v29 ^ __ROR4__(*(&a20 + v31 + 918084544) ^ *(&a23 + v31 + 918084544) ^ *(&a15 + v31 + 918084544) ^ *(&a25 + v31 + 918084528), 31);
    return (*(v30 + 8 * ((353 * (v32 == 918084481)) ^ 0x4B3u)))(a20);
  }

  else if (v42 == 1)
  {
    v104 = vld4q_s8(v35);
    v43 = veorq_s8(v104.val[0], v36);
    v44 = vmovl_high_u8(v43);
    v45 = vmovl_high_u16(v44);
    v46 = vmovl_u16(*v44.i8);
    v47 = vmovl_u8(*v43.i8);
    v48 = vmovl_high_u16(v47);
    v49 = vmovl_u16(*v47.i8);
    v50 = veorq_s8(v104.val[1], v36);
    v51 = vmovl_u8(*v50.i8);
    v52 = vmovl_high_u8(v50);
    v53 = veorq_s8(v104.val[2], v36);
    _Q25 = vmovl_u8(*v53.i8);
    _Q24 = vmovl_high_u8(v53);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v104.val[0] = veorq_s8(v104.val[3], v36);
    v104.val[1] = vmovl_u8(*v104.val[0].i8);
    v104.val[2] = vmovl_u16(*v104.val[1].i8);
    v104.val[0] = vmovl_high_u8(v104.val[0]);
    v104.val[3] = vmovl_u16(*v104.val[0].i8);
    v104.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v104.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v52, 8uLL), v45));
    v104.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v104.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v52.i8, 8uLL), v46));
    v104.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v104.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v51, 8uLL), v48));
    v104.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v104.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v51.i8, 8uLL), v49));
    v62 = vdupq_n_s32(0x1E32A85Eu);
    v63 = veorq_s8(vandq_s8(v104.val[0], v62), (*&v45 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v64 = veorq_s8(vandq_s8(v104.val[3], v62), (*&v46 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v65 = veorq_s8(vandq_s8(v104.val[1], v62), (*&v48 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    v66 = veorq_s8(vandq_s8(v104.val[2], v62), (*&v49 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    a25 = vaddq_s32(vsubq_s32(v104.val[2], vaddq_s32(v66, v66)), v38);
    a26 = vaddq_s32(vsubq_s32(v104.val[1], vaddq_s32(v65, v65)), v38);
    a27 = vaddq_s32(vsubq_s32(v104.val[3], vaddq_s32(v64, v64)), v38);
    a28 = vaddq_s32(vsubq_s32(v104.val[0], vaddq_s32(v63, v63)), v38);
    return (*(v30 + 8 * ((8 * (a20 + 1 != v32)) | (16 * (a20 + 1 != v32)) | (v34 + a5 + 185))))(918084544);
  }

  else
  {
    v83 = (((*(v33 - 148) ^ 0x5D56E8F) - 97873551) ^ ((*(v33 - 148) ^ 0x3204AF4B) - 839167819) ^ ((*(v33 - 148) ^ 0x3422AA8E) - 874687118)) + (((*(v33 - 148) ^ 0x682C92D4) - 1747751636) ^ ((*(v33 - 148) ^ 0x253E396F) - 624834927) ^ ((*(v33 - 148) ^ 0x4EE1C0F1) - 1323417841)) + 465495133;
    v84 = (((*(v33 - 144) ^ 0x47358AF9) - 1194691321) ^ ((*(v33 - 144) ^ 0xD48BF035) + 729026507) ^ ((*(v33 - 144) ^ 0x904D1186) + 1873997434)) + (((*(v33 - 144) ^ 0x61E2F495) - 1642263701) ^ ((*(v33 - 144) ^ 0xF932C545) + 114113211) ^ ((*(v33 - 144) ^ 0x9B235A9A) + 1692181862)) + 434937383;
    v85 = (v84 ^ 0xC9F93568) & (2 * (v84 & 0xEDFA386D)) ^ v84 & 0xEDFA386D;
    v86 = ((2 * (v84 ^ 0xD17D557A)) ^ 0x790EDA2E) & (v84 ^ 0xD17D557A) ^ (2 * (v84 ^ 0xD17D557A)) & 0x3C876D16;
    v87 = v86 ^ 0x4812511;
    v88 = (v86 ^ 0x38004004) & (4 * v85) ^ v85;
    v89 = ((4 * v87) ^ 0xF21DB45C) & v87 ^ (4 * v87) & 0x3C876D14;
    v90 = (v89 ^ 0x30052410) & (16 * v88) ^ v88;
    v91 = ((16 * (v89 ^ 0xC824903)) ^ 0xC876D170) & (v89 ^ 0xC824903) ^ (16 * (v89 ^ 0xC824903)) & 0x3C876D10;
    v92 = v90 ^ 0x3C876D17 ^ (v91 ^ 0x8064100) & (v90 << 8);
    *(v33 - 148) = v83 ^ ((v83 ^ 0x19624239) - 179982320) ^ ((v83 ^ 0xEEF28378) + 47542607) ^ ((v83 ^ 0x1FF7B357) - 204455582) ^ ((v83 ^ 0xFBBF7FDF) + 395873770) ^ 0x102B6683;
    *(v33 - 144) = v84 ^ (2 * ((v92 << 16) & 0x3C870000 ^ v92 ^ ((v92 << 16) ^ 0x6D170000) & (((v91 ^ 0x34812C07) << 8) & 0x3C870000 ^ 0x38820000 ^ (((v91 ^ 0x34812C07) << 8) ^ 0x76D0000) & (v91 ^ 0x34812C07)))) ^ 0xCF098909;
    v93 = (((v41 ^ 0x1E9C9360) - 513577824) ^ ((v41 ^ 0x13F3879) - 20920441) ^ ((v41 ^ 0x1C50C053) - 475054163)) + (((*(v33 - 140) ^ 0x307313D9) - 812848089) ^ ((*(v33 - 140) ^ 0x1124165D) - 287577693) ^ ((*(v33 - 140) ^ 0x22A46ECE) - 581201614)) + 2044121275;
    v94 = (((v40 ^ 0xD4F48CCE) + 722170674) ^ ((v40 ^ 0x46D8F61B) - 1188623899) ^ ((v40 ^ 0x91DF119F) + 1847651937)) + (((*(v33 - 136) ^ 0xBD5C051E) + 1118042850) ^ ((*(v33 - 136) ^ 0x3A7161E2) - 980509154) ^ ((*(v33 - 136) ^ 0x84DE0FB6) + 2065821770)) + 1116024835;
    v95 = (v94 ^ 0xC0512649) & (2 * (v94 & 0xC561A691)) ^ v94 & 0xC561A691;
    v96 = ((2 * (v94 ^ 0x48D22A4B)) ^ 0x1B6719B4) & (v94 ^ 0x48D22A4B) ^ (2 * (v94 ^ 0x48D22A4B)) & 0x8DB38CDA;
    v97 = v96 ^ 0x8490844A;
    v98 = (v96 ^ 0x9030880) & (4 * v95) ^ v95;
    v99 = ((4 * v97) ^ 0x36CE3368) & v97 ^ (4 * v97) & 0x8DB38CD8;
    v100 = (v99 ^ 0x4820040) & (16 * v98) ^ v98;
    v101 = ((16 * (v99 ^ 0x89318C92)) ^ 0xDB38CDA0) & (v99 ^ 0x89318C92) ^ (16 * (v99 ^ 0x89318C92)) & 0x8DB38CD0;
    v102 = v100 ^ 0x8DB38CDA ^ (v101 ^ 0x89308C00) & (v100 << 8);
    *(v33 - 140) = v93 ^ ((v93 ^ 0x4990F24F) - 947849320) ^ ((v93 ^ 0x30701F2B) - 1100997900) ^ ((v93 ^ 0x77B0E89E) - 106894009) ^ ((v93 ^ 0x7FBFFFDD) - 240125434) ^ 0x721C916D;
    *(v33 - 136) = v94 ^ (2 * ((v102 << 16) & 0xDB30000 ^ v102 ^ ((v102 << 16) ^ 0xCDA0000) & (((v101 ^ 0x483005A) << 8) & 0xDB30000 ^ 0xC330000 ^ (((v101 ^ 0x483005A) << 8) ^ 0x338C0000) & (v101 ^ 0x483005A)))) ^ 0xC4D1D46F;
    a21 -= 320;
    return a17(v36, v37, v38, v39);
  }
}

void sub_2518C()
{
  v0 = *(&off_C1600 + ((-35 * (dword_C86D0 ^ 0xD2 ^ qword_C86F8)) ^ byte_9C850[byte_A90E0[(-35 * (dword_C86D0 ^ 0xD2 ^ qword_C86F8))] ^ 0xCF]) - 7);
  v1 = *(v0 - 4);
  v2 = *(&off_C1600 + ((-35 * ((qword_C86F8 - v1) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 - v1) ^ 0xD2))] ^ 0xF1]) - 138);
  v3 = (*(v2 - 4) + v1) ^ &v9;
  v4 = 1865875933 * v3 - 0x391B123DE35E87B6;
  v5 = 1865875933 * (v3 ^ 0x1E71746347E125D2);
  *(v0 - 4) = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = -35 * ((v5 - *(v0 - 4)) ^ 0xD2);
  **(&off_C1600 + (byte_A8FE0[byte_A4980[v5] ^ 0xEE] ^ v5) - 144) = -1640847268;
  v6 = *(&off_C1600 + ((-35 * (dword_C86D0 ^ 0xD2 ^ qword_C86F8)) ^ byte_A8FE0[byte_A4980[(-35 * (dword_C86D0 ^ 0xD2 ^ qword_C86F8))] ^ 0x43]) + 47) - 8;
  v7 = (*&v6[8 * ((-35 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xD2)) ^ byte_A8FE0[byte_A4980[(-35 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xD2))] ^ 0xEE]) + 16928])(512, 0x100004077774924);
  v8 = -35 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xD2);
  *(*(&off_C1600 + (byte_9C85C[(byte_A90E8[v8 - 8] ^ 0x55) - 12] ^ v8) + 49) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25444(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = v6 - a2 + ((a6 + 977812309) ^ 0x3A4839A8) - 1303;
  if (v7 > v9)
  {
    v9 = v7;
  }

  return (*(v8 + 8 * ((((v9 + 1) < 0x24) * (((a6 + 977812309) & 0xC5B7CBDF) - 2182)) ^ a6)))();
}

void sub_256CC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a5 = a1;
  a3 = v6;
  a4 = v7 - 143681137 * (((&a3 | 0xF7396899) - (&a3 & 0xF7396899)) ^ 0x9603DFD1) + 337;
  (*(v5 + 8 * (v7 + 1498)))(&a3);
  sub_2ECE0();
}

uint64_t sub_2584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43)
{
  if (a43 == 2)
  {
    v54 = (v43 + v47 + 260140218);
    v55 = ((*v54 ^ v48) << 24) | ((v54[1] ^ v48) << 16) | ((v54[2] ^ v48) << 8);
    LODWORD(v54) = (v55 | v54[3] ^ v48) + v44 - 2 * ((v55 | v54[3] ^ v48) & 0x1E32A85F ^ (v54[3] ^ v48) & 3);
    v56 = (a8 + 77) & 0xB23F1526 ^ a8 ^ 0xD91F8A90;
    v57 = a7 & 0x18 ^ 6 ^ v56 & 0x6A05018;
    v58 = ((4 * v56) ^ 0x9D2185BC) & v56 ^ (4 * v56) & a7;
    v59 = v58 ^ 0x24602043;
    v60 = (v58 ^ 0x2805523) & (16 * v57) ^ v57;
    v61 = ((16 * v59) ^ 0x6E0756F0) & v59 ^ (16 * v59) & (a7 - 12);
    v62 = v60 ^ (a7 + 3) ^ (v61 ^ 0x2600540F) & (v60 << 8);
    v45[(((2 * ((v62 << 16) & 0x26E00000 ^ v62 ^ ((v62 << 16) ^ 0x756F0000) & (((v61 ^ 0xE0210F) << 8) & 0x26E00000 ^ 0x6800000 ^ (((v61 ^ 0xE0210F) << 8) ^ 0x60750000) & (v61 ^ 0xE0210F)))) ^ 0xF816CBAu) >> 2) ^ 0x3D5F9E66] = v54;
    return (*(v46 + 8 * ((1796 * ((v47 + 260140222) < 0x40)) ^ (v50 + 659))))(v49 + 16);
  }

  else
  {
    if (a43 != 1)
    {
      JUMPOUT(0xECF4);
    }

    v51 = (v43 + v47 + 260140218);
    v52 = *v51 ^ v48;
    LODWORD(v51) = (((v51[2] ^ v48) << 16) | ((v51[3] ^ v48) << 24)) + ((v51[1] ^ v48) << (((v50 - 40) | 0xD1) ^ 0xDB)) + v52;
    *v45 = v51 + v44 - 2 * (v51 & 0x1E32A85E ^ v52 & 2);
    return (*(v46 + 8 * ((31 * ((v47 + 260140222) > 0x3F)) ^ (v50 + 162))))((v50 - 40) | 0xD1u, 65035054, 0, 0, 260140218, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_25C20@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W7>, int a4@<W8>)
{
  v15 = (*(a2 + 4 * a4) ^ v4) + (v6 ^ HIDWORD(a1));
  v16 = v15 - ((v15 << ((((v14 + 119) | 0x28) ^ a3) + ((v14 - 8) | 0x22u))) & v8) + v10;
  *(a2 + 4 * v7) = v16 ^ v11;
  *(a2 + 4 * a4) = HIDWORD(v16) ^ v12;
  return (*(v9 + 8 * (v14 ^ ((v5 + 1 == a4) * v13))))();
}

uint64_t sub_25C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v71 - 184) = (v68 + 329) ^ (210068311 * ((~(v71 - 192) & 0x113DD7A0 | (v71 - 192) & 0xEEC2285F) ^ 0x83EBE804));
  *(v71 - 176) = (87 * ((~(v71 + 64) & 0xA0 | (v71 + 64) & 0x5F) ^ 4)) ^ 0x53;
  *(v71 - 168) = &STACK[0x344];
  *(v71 - 192) = &a68;
  v72 = (*(v70 + 8 * (v68 + 2169)))(v71 - 192);
  v73 = *(v71 - 180);
  LODWORD(STACK[0x360]) = v73;
  return (*(v70 + 8 * ((861 * (v73 == ((v69 + (v68 ^ 0xE5) + 322 + 1340) ^ (832 * (v68 ^ 0xE5))))) ^ v68)))(v72);
}

uint64_t sub_25D74(int8x16_t a1, int8x16_t a2)
{
  v8 = v3 - 16;
  *(v4 + v8) = vaddq_s8(vsubq_s8(*(v5 + v8), vandq_s8(vaddq_s8(*(v5 + v8), *(v5 + v8)), a1)), a2);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ v2)))();
}

uint64_t sub_25E1C@<X0>(char a1@<W8>, uint64_t a2)
{
  v6 = (a2 + (v3 & 0x3F));
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((a1 & 0x30) == 16) * (v2 - 703)) ^ v2)))();
}

uint64_t sub_25F54()
{
  if (v2)
  {
    v3 = v0 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  return (*(v1 + 8 * ((v4 | (4 * v4)) ^ 0x5C3u)))();
}

uint64_t sub_25F90@<X0>(int a1@<W8>)
{
  result = (*(v3 + 8 * (a1 ^ 0xC68)))(*v4);
  *v2 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 316771507;
  return result;
}

uint64_t sub_26024@<X0>(int a1@<W2>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x410]) = a3;
  LODWORD(STACK[0x438]) = v6;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x2A4]) = v5;
  LODWORD(STACK[0x374]) = v3;
  LODWORD(STACK[0x27C]) = a2 + 80;
  v7 = (((v3 ^ 0x7852082F) - 2018641967) ^ ((v3 ^ 0x8E9E952E) + 1902209746) ^ ((v3 ^ 0xF53FF64B) + 180357557)) + 492483170 + (((*(STACK[0x4D0] + 88) ^ 0xEB0BF128) + 351538904) ^ (v4 - 396845819 + (*(STACK[0x4D0] + 88) ^ 0x17A76045)) ^ ((*(STACK[0x4D0] + 88) ^ 0xFF5FFA27) + 10487257));
  *(STACK[0x4D0] + 88) = v7 ^ ((v7 ^ 0xB944F213) + 1405670947) ^ ((v7 ^ 0xC8A97D34) + 572872966) ^ ((v7 ^ 0x1B65B912) - 236348124) ^ ((v7 ^ 0x7FFBEDFB) - 1787311669) ^ 0x1680B084;
  return sub_26180();
}

uint64_t sub_26180@<X0>(int a1@<W8>)
{
  v3 = (((a1 ^ 0x98BC2C41) + 1732498367) ^ ((a1 ^ 0xE5FF7425) + 436243419) ^ ((a1 ^ 0x7EB0332E) - 2125476654)) + (((*(v2 + 72) ^ 0x34CFDD86) - 886037894) ^ ((*(v2 + 72) ^ 0x52F853D8) - 1392006104) ^ ((*(v2 + 72) ^ 0x65C4E514) - 1707402516)) + 1954966991;
  v4 = (v3 ^ 0x4A504294) & (2 * (v3 & 0x936068C5)) ^ v3 & 0x936068C5;
  v5 = ((2 * (v3 ^ 0x6E50C31C)) ^ 0xFA6157B2) & (v3 ^ 0x6E50C31C) ^ (2 * (v3 ^ 0x6E50C31C)) & 0xFD30ABD8;
  v6 = v5 ^ 0x510A849;
  v7 = (v5 ^ 0xD8000310) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xF4C2AF64) & v6 ^ (4 * v6) & 0xFD30ABD8;
  v9 = (v8 ^ 0xF400AB40) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x9300099)) ^ 0xD30ABD90) & (v8 ^ 0x9300099) ^ (16 * (v8 ^ 0x9300099)) & 0xFD30ABD0;
  v11 = v9 ^ 0xFD30ABD9 ^ (v10 ^ 0xD100A900) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0x7D300000 ^ v11 ^ ((v11 << 16) ^ 0x2BD90000) & (((v10 ^ 0x2C300249) << 8) & 0x7D300000 ^ 0x4D100000 ^ (((v10 ^ 0x2C300249) << 8) ^ 0x30AB0000) & (v10 ^ 0x2C300249)))) ^ 0x38D2543D;
  v13 = (((v1 ^ 0xB3DBC15) - 188595221) ^ ((v1 ^ 0x7DDFE72E) - 2111825710) ^ ((v1 ^ 0x75113071) - 1964060785)) + (((*(v2 + 76) ^ 0xDD6DF19C) + 579997284) ^ ((*(v2 + 76) ^ 0x9AC2912D) + 1698524883) ^ ((*(v2 + 76) ^ 0x445C0BFB) - 1146883067)) + 1865969988;
  v14 = ((2 * (v13 & 0x98AE6550)) & 0x100280 | v13 & 0x98AE6550) ^ (2 * (v13 & 0x98AE6550)) & (v13 ^ 0x9E3F4787);
  v15 = ((2 * (v13 ^ 0x9E3F4787)) ^ 0xD2245AE) & (v13 ^ 0x9E3F4787) ^ (2 * (v13 ^ 0x9E3F4787)) & 0x69122D6;
  v16 = v15 ^ 0x2912251;
  v17 = (v15 ^ 0x4000091) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x1A448B5C) & v16 ^ (4 * v16) & 0x69122D4;
  v19 = (v18 ^ 0x2000240) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x4912083)) ^ 0x69122D70) & (v18 ^ 0x4912083) ^ (16 * (v18 ^ 0x4912083)) & 0x69122D0;
  v21 = v19 ^ 0x69122D7 ^ (v20 ^ 0x102000) & (v19 << 8);
  *(v2 + 72) = v12;
  *(v2 + 76) = v13 ^ (2 * ((v21 << 16) & 0x6910000 ^ v21 ^ ((v21 << 16) ^ 0x22D70000) & (((v20 ^ 0x6810287) << 8) & 0x6910000 ^ 0x6910000 ^ (((v20 ^ 0x6810287) << 8) ^ 0x11220000) & (v20 ^ 0x6810287)))) ^ 0x935D4BB4;
  v22 = STACK[0x4D0];
  v23 = (((LODWORD(STACK[0x424]) ^ 0x401B3599) - 1075525017) ^ ((LODWORD(STACK[0x424]) ^ 0x7DB63544) - 2109093188) ^ ((LODWORD(STACK[0x424]) ^ 0x3E5E6B97) - 1046375319)) + 849923620 + (((*(STACK[0x4D0] + 80) ^ 0xFFF048F1) + 1029903) ^ ((*(STACK[0x4D0] + 80) ^ 0xCCAAFFCA) + 861208630) ^ ((*(STACK[0x4D0] + 80) ^ 0x30A9DC71) - 816438385));
  v24 = (((LODWORD(STACK[0x2A4]) ^ 0x9DB94EDF) + 1648800033) ^ ((LODWORD(STACK[0x2A4]) ^ 0x89B75D6B) + 1984471701) ^ ((LODWORD(STACK[0x2A4]) ^ 0x17FD78FE) - 402487550)) + 418371363 + (((*(STACK[0x4D0] + 84) ^ 0x8C522EDA) + 1940771110) ^ ((*(STACK[0x4D0] + 84) ^ 0xD940C86B) + 650065813) ^ ((*(STACK[0x4D0] + 84) ^ 0x56E18DFB) - 1457622523));
  v25 = (v24 ^ 0xEEE6FE68) & (2 * (v24 & 0xEEF6FF71)) ^ v24 & 0xEEF6FF71;
  v26 = ((2 * (v24 ^ 0xA7678C6A)) ^ 0x9322E636) & (v24 ^ 0xA7678C6A) ^ (2 * (v24 ^ 0xA7678C6A)) & 0x4991731A;
  v27 = v26 ^ 0x48911109;
  v28 = (v26 ^ 0x1006200) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ 0x2645CC6C) & v27 ^ (4 * v27) & 0x49917318;
  v30 = (v29 ^ 0x14000) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ 0x49903313)) ^ 0x991731B0) & (v29 ^ 0x49903313) ^ (16 * (v29 ^ 0x49903313)) & 0x49917310;
  v32 = v30 ^ 0x4991731B ^ (v31 ^ 0x9113100) & (v30 << 8);
  *(v22 + 80) = v23 ^ ((v23 ^ 0xFD0BA301) + 674605935) ^ ((v23 ^ 0xA61B3948) + 1931817256) ^ ((v23 ^ 0x8E6E9226) + 1532009034) ^ ((v23 ^ 0xFFBFFFFF) + 713160593) ^ 0x29329CDA;
  *(v22 + 84) = v24 ^ (2 * ((v32 << 16) & 0x49910000 ^ v32 ^ ((v32 << 16) ^ 0x731B0000) & (((v31 ^ 0x4080420B) << 8) & 0x49910000 ^ 0x48800000 ^ (((v31 ^ 0x4080420B) << 8) ^ 0x11730000) & (v31 ^ 0x4080420B)))) ^ 0xFC05720D;
  STACK[0x228] -= 320;
  return (STACK[0x430])();
}

uint64_t sub_26B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18)
{
  v24 = 1388665877 * ((((2 * &a13) | 0x70BE7E66) - &a13 + 1201717453) ^ 0x35F25DDF);
  a15 = a10;
  a17 = v24 + v23 + 1141;
  a13 = (v20 - (((v23 + 228) ^ 0x178226D8) & (2 * v20)) - 1950281014) ^ v24;
  (*(v22 + 8 * (v23 ^ 0xB27)))(&a13);
  v25 = 1388665877 * ((&a13 + 804926155 - 2 * (&a13 & 0x2FFA32CB)) ^ 0xA2575027);
  a18 = v18;
  a15 = a10;
  a13 = (v19 ^ 0x35BFEFF5) + ((2 * v19) & 0x6B7FDFEA) - v25 - 833136224;
  a14 = v23 - v25 - 420;
  v26 = (*(v22 + 8 * (v23 ^ 0xB43)))(&a13);
  return (*(v22 + 8 * (((2 * (a16 == v21)) | (4 * (a16 == v21))) ^ v23)))(v26);
}

uint64_t sub_26C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  if (a15 < 0xC7E17596 != (v16 - 941525546) < 0xC7E17596)
  {
    v17 = (v16 - 941525546) < 0xC7E17596;
  }

  else
  {
    v17 = v16 - 941525546 > a15;
  }

  return (*(v15 + 8 * ((v17 * (((a5 + a7 - 98) | 0x41) - 1058)) ^ (a5 + a7 - 984))))();
}

uint64_t sub_26CEC(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x9E32A85C;
}

uint64_t sub_26D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  v14 = a11 < 0x5741E76E;
  if (v14 == v11 > 0xA8BE1891)
  {
    v14 = v11 + 1463936878 < a11;
  }

  return (*(v13 + 8 * ((v14 * ((v12 - 1238) ^ 0xA)) ^ v12)))();
}

void sub_26E08()
{
  if (v0 == 2016162716)
  {
    v2 = -1640847268;
  }

  else
  {
    v2 = 1640887172;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_26F68()
{
  v0.n128_u64[0] = 0x3939393939393939;
  v0.n128_u64[1] = 0x3939393939393939;
  return sub_26F80(204, v0);
}

uint64_t sub_26F80(int a1, int8x16_t a2)
{
  v10 = ~v6 + v4;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = v2 + v10;
  *(v13 - 15) = veorq_s8(v11, a2);
  *(v13 - 31) = veorq_s8(v12, a2);
  return (*(v9 + 8 * (((((v7 + 1215) ^ v8) + v6 == v5) * a1) ^ (v7 + 447))))();
}

uint64_t sub_26FD4@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v44 = a41 < -1921856660;
  v45 = (a2 ^ 0xCF623D8D) + *(v42 + v41 * a1 + 36);
  v46 = v44 ^ (v45 < -1921856660);
  v47 = v45 < a41;
  if (!v46)
  {
    v44 = v47;
  }

  return (*(v43 + 8 * ((1636 * v44) | a2)))();
}

uint64_t sub_2704C()
{
  v6 = *(v9 + 16);
  v7 = 143681137 * (((v5 - 144) & 0x48677C1B | ~((v5 - 144) | 0x48677C1B)) ^ 0xD6A234AC);
  *(v5 - 144) = (v0 + 196) ^ v7;
  *(v5 - 128) = v7 ^ 0x6B91BD3A;
  *(v5 - 136) = v11;
  (*(v3 + 8 * (v0 + 952)))(v5 - 144);
  *(v5 - 112) = v2;
  *(v5 - 104) = v10;
  *(v5 - 136) = v1;
  *(v5 - 128) = v11;
  *(v5 - 144) = v0 - ((((v5 - 144) | 0x252A2586) - ((v5 - 144) & 0x252A2586)) ^ 0x359652D8) * v4 - 667;
  *(v5 - 120) = v10;
  (*(v3 + 8 * (v0 + 1018)))(v5 - 144);
  *(v5 - 136) = v0 - 143681137 * ((786265506 - ((v5 - 144) | 0x2EDD75A2) + ((v5 - 144) | 0xD1228A5D)) ^ 0xB0183D15) - 151;
  *(v5 - 144) = v6;
  *(v5 - 128) = v10;
  return (*(v3 + 8 * (v0 + 1010)))(v5 - 144);
}

uint64_t sub_271E0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1 - 1713;
  v16 = a1 - 541;
  *(v14 - 136) = a1 + 896639297 * ((2144390856 - (v13 | 0x7FD0CEC8) + a4) ^ 0x9484A74F) - 934;
  *(v14 - 128) = a6;
  *(v14 - 120) = a11;
  *(v14 - 112) = v11;
  *(v14 - 104) = v11;
  v17 = (*(v12 + 8 * (a1 + 129)))(v14 - 136);
  return (*(v12 + 8 * (((((a8 >> 1) & a5) == ((v15 | 0x22) ^ 0x22E)) * (v15 ^ 0x241)) | v16)))(v17);
}

void sub_27250(uint64_t a1)
{
  v1 = 210068311 * ((((2 * a1) | 0xD989730) - a1 + 2033431656) ^ 0x141A743C);
  v2 = *(a1 + 4) ^ v1;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_27310()
{
  v4 = v3 - 948887720;
  v5 = v4 < ((v1 - 581) ^ 0x2BBu) - 815617415;
  v6 = v2 - 815615431 < v4;
  if (v2 > 0x309D4DC6 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v0 + 8 * ((252 * v7) ^ (v1 - 581))))();
}

uint64_t sub_2738C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q5>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = (v26 + 17879022) & 0xFEEF2FF1;
  v29 = (v27 + 908);
  v30 = vld1q_dup_f32(v29);
  v31.i64[0] = 0x8000000080000000;
  v31.i64[1] = 0x8000000080000000;
  v32.i64[0] = 0x100000001;
  v32.i64[1] = 0x100000001;
  a3.i64[0] = *(a26 + 4);
  a3.i32[2] = *(a26 + 12);
  v33 = vextq_s8(v30, a3, 0xCuLL);
  v34 = a3;
  v34.i32[3] = *(v27 + 4 * (80 * (v28 ^ 0x7E3) - 9));
  v35 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v34, vnegq_f32(v32)), vandq_s8(v33, v31)), 1uLL), *(a26 - 908));
  v33.i32[0] = *(a2 + 4 * (*(a26 + 4) & 1));
  v33.i32[1] = *(a2 + 4 * (*(a26 + 8) & 1));
  v33.i32[2] = *(a2 + 4 * (*(a26 + 12) & 1));
  v33.i32[3] = *(a2 + 4 * (v34.i8[12] & 1));
  *a26 = veorq_s8(vaddq_s32(vsubq_s32(v35, vandq_s8(vaddq_s32(v35, v35), vdupq_n_s32(0xEF6AC34A))), vdupq_n_s32(0x77B561A5u)), v33);
  return (*(a1 + 8 * (v28 ^ 0xFE0)))();
}

uint64_t sub_274F8(uint64_t a1)
{
  v1 = (896639297 * (((a1 ^ 0xB97472D1) - 491364205 - 2 * ((a1 ^ 0xB97472D1) & 0xE2B66093)) ^ 0x4F69843A)) ^ *(a1 + 4) ^ 0x563;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 959690144;
  v3 = v2 - 959690144 < 0;
  v5 = 959690144 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_C1600 + v1 - 23) + ((107 * (v5 > v1 - 162)) ^ v1) - 1))();
}

void sub_275C4(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (843532609 * ((a1 & 0xB3BC010F | ~(a1 | 0xB3BC010F)) ^ 0x5CFF89AE));
  v4 = *(a1 + 8);
  v3[1] = (896639297 * ((((v3 | 0x3D73B7BC) ^ 0xFFFFFFFE) - (~v3 | 0xC28C4843)) ^ 0xD627DE3B)) ^ (v1 - 465);
  v2 = *(&off_C1600 + (v1 ^ 0x719)) - 8;
  (*&v2[8 * v1 + 3392])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_27734()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_27874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 1388665877 * ((2 * ((v14 - 168) & 0x2EDCA6E0) - (v14 - 168) + 1361271071) ^ 0xDC8E3BF3);
  *(v14 - 168) = v15 + v13 + 306;
  *(v14 - 164) = v15 ^ a12;
  *(v14 - 160) = a5;
  v16 = (*(v12 + 8 * (v13 ^ 0x929)))(v14 - 168);
  v17 = STACK[0x2F4];
  *(&STACK[0x2B0] + (v17 & 0x3F)) = -71;
  return (*(v12 + 8 * ((((v17 & 0x3Fu) > 0x37) * ((v13 + 1851) ^ 0x3A7)) ^ v13)))(v16);
}

uint64_t sub_27960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v4 + a2;
  v10 = *(v7 + v9 - 15);
  v11 = *(v7 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((((v3 + 1288) ^ v5) + v4 == v2) * v6) ^ (v3 + 393))))();
}

uint64_t sub_279B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 144) = v20 + 509 + 896639297 * ((((v21 - 144) ^ 0xC9EAF6AF | 0xDE8ED80A) - ((v21 - 144) ^ 0xC9EAF6AF) + (((v21 - 144) ^ 0xC9EAF6AF) & 0x217127F5)) ^ 0x3CFB8DD);
  *(v21 - 120) = &a18;
  *(v21 - 112) = &a18;
  *(v21 - 136) = a13;
  *(v21 - 128) = a14;
  (*(v18 + 8 * (v20 + 1572)))(v21 - 144);
  *(v21 - 144) = v20 + 509 + 896639297 * ((2 * ((v21 - 144) & 0x30483CF8) - (v21 - 144) - 810040576) ^ 0xDB1C5578);
  *(v21 - 120) = &a18;
  *(v21 - 112) = &a18;
  *(v21 - 136) = a13;
  *(v21 - 128) = a14;
  (*(v18 + 8 * ((v20 + 280) ^ 0xD0C)))(v21 - 144);
  v22 = 843532609 * ((((v21 - 144) | 0x47B22AC3) - ((v21 - 144) & 0x47B22AC3)) ^ 0x570E5D9D);
  *(v21 - 144) = a15;
  *(v21 - 132) = v22 + v20 + 280 - 501;
  *(v21 - 128) = (v19 - 1392453367 - ((2 * v19 - 2074570164) & 0xD5A91FC6)) ^ v22;
  v23 = (*(v18 + 8 * ((v20 + 280) ^ 0xD16)))(v21 - 144);
  return (*(v18 + 8 * ((113 * (*(v21 - 136) == ((v20 + 262900325) & 0xF05473C1 ^ (v20 + 1700202931)))) ^ (v20 + 280))))(v23);
}

uint64_t sub_27B68()
{
  v4 = ((194 * (v3 ^ 0x580)) ^ 0x3CF1910B) + v0;
  v5 = ((v2 - 485033361) < 0x4CC95A63) ^ (v4 < ((2 * v3) ^ 0x372u) + 1288262125);
  v6 = v2 - 485033361 > v4;
  if (v5)
  {
    v6 = (v2 - 485033361) < 0x4CC95A63;
  }

  return (*(v1 + 8 * ((11 * !v6) ^ v3)))();
}

uint64_t sub_27C30(uint64_t a1, unint64_t a2, int a3)
{
  v6 = a2 < v3;
  if (v6 == (v4 + 1) > 0xFFFFFFFF275A4C6BLL)
  {
    LOBYTE(v6) = ((a3 + 233) ^ (v3 - 156)) + v4 < a2;
  }

  return (*(v5 + 8 * ((22 * (((a3 - 47) ^ v6) & 1)) ^ a3)))((a3 - 47) | 0xA2u);
}

uint64_t sub_27CA4()
{
  v3 = 1564307779 * ((((v2 - 192) | 0x66F05FC) - (v2 - 192) + ((v2 - 192) & 0xF990FA00)) ^ 0x9162C9EF);
  *(v2 - 160) = v0 - v3 + 1598;
  *(v2 - 192) = 0;
  *(v2 - 184) = v3 ^ 0x1DFF02A0;
  *(v2 - 168) = &STACK[0x2B8];
  *(v2 - 176) = &STACK[0x3F8];
  v4 = (*(v1 + 8 * (v0 + 2107)))(v2 - 192);
  return (*(v1 + 8 * (((*(v2 - 180) == -1640847268) * (v0 - 263)) ^ v0)))(v4);
}

uint64_t sub_27DB0(_DWORD *a1)
{
  v1 = *a1 - 1037613739 * ((2 * (a1 & 0xDDCA92DA) - a1 + 573926693) ^ 0xF337405A);
  v2 = *(*(&off_C1600 + (v1 - 1955)) + 86);
  v3 = (a1[1] ^ (1037613739 * ((2 * (a1 & 0xDDCA92DA) - a1 + 573926693) ^ 0xF337405A))) - 1785050302;
  if (v3 < 0x9D8BDE23 != v2 > 0x627421DC)
  {
    v4 = v2 > 0x627421DC;
  }

  else
  {
    v4 = v2 - 1651778013 > v3;
  }

  return (*(*(&off_C1600 + (v1 - 1845)) + (v4 ^ v1) - 1))();
}

uint64_t sub_27E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 128) = &a15;
  *(v20 - 120) = &a17;
  *(v20 - 112) = v18 - 1556366573 * ((v20 - 128) ^ 0x64E423EA) + 362;
  v21 = (*(v17 + 8 * (v18 + 484)))(v20 - 128);
  return (*(v17 + 8 * (((((v18 - 1829) | 0x18) ^ 0xF46) * (v19 == 1)) ^ v18)))(v21);
}

void sub_28078()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 24) - 1564307779 * ((213036865 - (v0 | 0xCB2AF41) + (v0 | 0xF34D50BE)) ^ 0x64409CAD);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_283DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3, char a4)
{
  v8 = (v5 + 1940231883) & 0x8C5A6C95;
  v9 = (*(v7 + 8 * (v5 + 1039)))(**(a2 + 8 * ((v5 - 489) ^ 0x3AC)), a1, (v8 + v4 + *(v6 + 8)));
  *(v6 + 31) = (&a4 ^ 0xBA) * (&a4 + 17);
  *(v6 + ((v8 + 945536730) & 0xC7A43ABE ^ 0x200)) = (&a4 ^ 0xBB) * (&a4 + 18);
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_2842C@<X0>(int a1@<W8>)
{
  v4 = 1564307779 * ((2 * ((v3 - 168) & 0x547BEDAA7277C840) - (v3 - 168) - 0x547BEDAA7277C841) ^ 0x8E47E62F1A85FBACLL);
  v5 = v3 - 184;
  *(v5 + 56) = 1310341027 - v4;
  *(v5 + 40) = v1 - v4;
  *(v3 - 164) = ((a1 - 1493705902) ^ 0x78) - v4;
  *(v3 - 160) = ((a1 - 1493705902) ^ 0x3E) - v4;
  *(v3 - 152) = (a1 - 2124585800) ^ v4;
  *(v3 - 168) = a1 - 1493705902 + v4;
  *(v3 - 136) = v4;
  v6 = (*(v2 + 8 * (a1 + 2375)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 156)))(v6);
}

uint64_t sub_28508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x210];
  v7 = STACK[0x324];
  v8 = STACK[0x2F8];
  LODWORD(STACK[0x2F4]) = 1;
  STACK[0x330] = v6;
  LODWORD(STACK[0x348]) = v7;
  STACK[0x398] = v8;
  LODWORD(STACK[0x414]) = -157870417;
  return sub_2856C(2654120028, a2, a3, a4, a5, v5);
}

uint64_t sub_2856C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = (v62 - 1392517227) & 0x53001F76;
  STACK[0x228] = v65 + ((v66 - 577591779) & 0x226D54FD) - 33;
  if (a9)
  {
    v67 = v63 == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v67;
  return (*(v64 + 8 * ((v68 * (((v66 - 1334) | 0x104) - 309)) ^ v66)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_28710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  if (a16 == v18 + ((v16 - 600893095) & 0x23D0EDFE) - 1725 - 505)
  {
    a12 = 1;
  }

  return (*(v17 + 8 * ((13 * a12) ^ (v16 - 11))))();
}

uint64_t sub_28768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v30 = 4 * (v27 - v28 + v25);
  v31 = -1174920269 * ((*(*a20 + (*a21 & 0xFFFFFFFFDA541AD4)) ^ (a24 + v30)) & 0x7FFFFFFF);
  v32 = (v31 >> ((v26 ^ 0x36) - 92)) ^ v31;
  v33 = -1174920269 * v32;
  v34 = 4 * ((-1174920269 * v32) >> 24);
  *(a25 + v30) = *(a24 + v30) ^ (v26 - 855) & 0x97FC0A85 ^ 0xC7EDB814 ^ (v29 - (v26 - 855) >= ~(v26 - 855)) ^ (*(a25 + v30) - 940722156 - ((2 * *(a25 + v30)) & 0x8FDB7028)) ^ *(*(&off_C1600 + v26 - 756) + v34 - 12) ^ *(*(&off_C1600 + v26 - 733) + v34) ^ *(*(&off_C1600 + v26 - 803) + HIBYTE(v33) + 2) ^ (598933504 * v32) ^ v33 ^ (-471850983 * HIBYTE(v33));
  return sub_2888C();
}

uint64_t sub_288D0(_DWORD *a1)
{
  v1 = 843532609 * (((a1 | 0x6131F84) - (a1 & 0x6131F84)) ^ 0x16AF68DA);
  v2 = a1[3] - v1;
  v3 = v1 ^ a1[4] ^ 0xEAD48FE3;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = *(*a1 + 4);
  v6 = v4 - 959689982;
  v5 = v4 - 959689982 < 0;
  v7 = 959689982 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_C1600 + (v2 ^ 0x2B6)) + ((1466 * ((v3 >> 5) < v7)) ^ v2) - 1))();
}

uint64_t sub_289B0(uint64_t a1)
{
  v7 = *(v6 - 252 + v1 + 72);
  v8 = ((((v3 + 1605693838) & 0xC14355D) - 1311126034) ^ v1) + ((2 * v1) & 0x7BDBFDF8) + v2;
  *(a1 + v8) = v7 ^ 0x73;
  *(a1 + v8 + 1) = (BYTE1(v7) ^ 0x6B) - ((2 * (BYTE1(v7) ^ 0x6B)) & 0x72) + 57;
  *(a1 + v8 + 2) = (BYTE2(v7) ^ 0xF3) - ((2 * (BYTE2(v7) ^ 0xF3)) & 0x72) + 57;
  *(a1 + v8 + 3) = (HIBYTE(v7) ^ 3) - 2 * ((HIBYTE(v7) ^ 3) & 0x3D ^ HIBYTE(v7) & 4) + 57;
  return (*(v5 + 8 * (((v1 + 4 >= *(v6 - 160)) * v4) ^ v3)))();
}

uint64_t sub_28A8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X7>, int a6@<W8>)
{
  v15 = v7;
  HIDWORD(v16) = a1 ^ (v12 + v6 + 182 - 1404);
  LODWORD(v16) = a1;
  v17 = (v7 ^ 0xE2D64811) & (a4 ^ v10) ^ a4 & 0x1EDADCA4;
  v18 = (v16 >> 27) + (a3 ^ v12) + (*(v14 + 4 * (a5 + v11)) ^ v9) + (v17 & 0xE304CAB6 ^ 0xE3044A12 ^ (v17 ^ 0xE3F76B5B) & (a2 ^ 0xE0F7A1FC) | a4 & 0xE8011FC0 ^ (a6 + 2222) ^ (v7 ^ 0xEBF2748A) & (a4 ^ v12)) - 1762527464;
  return (*(v8 + 8 * ((3319 * (a5 + 1 == v13 + 60)) ^ v6)))(v18 ^ ((v18 ^ 0xE2A25165) + 445355175) ^ ((v18 ^ 0xFFB9BD04) + 126908616) ^ ((v18 ^ 0xE5B329A2) + 496692322) ^ ((v18 ^ 0xFF7EFFFF) + 123157053) ^ 0x4255176, a1, a4, a4, v15);
}

uint64_t sub_28C18()
{
  v6 = v0 + ((v1 + 122) | v3) - 438;
  if (v2)
  {
    v7 = v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v4 + 8 * ((v8 * (v1 ^ 0x242)) ^ v1)))();
}

void sub_28C50(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (843532609 * ((a1 + 963887202 - 2 * (a1 & 0x3973C062)) ^ 0x29CFB73C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_28D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 959689982;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v5 = *(a1 + 96) + 800;
  v6 = 210068311 * ((&v8 & 0x37C9317D | ~(&v8 | 0x37C9317D)) ^ 0x5AE0F126);
  v8 = *(a2 + 8) + (*(a2 + 4) - v4);
  v9 = 738 - v6;
  v10 = v5;
  v12 = (v4 + 81294678) ^ v6;
  (*(a3 + 19008))(&v8);
  return v11 ^ 0xF9D8AA1A;
}

uint64_t sub_28D98(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  HIDWORD(v15) = a1 ^ v12;
  LODWORD(v15) = a1;
  v16 = (v15 >> 27) + (a7 ^ v12 ^ v9 ^ v8) + ((((v7 + 71) ^ a6 ^ 0xD579DC6F) + 713434967) ^ ((a6 ^ 0x78BD3A3A) - 2025667130) ^ ((a6 ^ 0xAE3789D9) + 1372091943)) + 1613321993 + (((*(v14 + 4 * (a4 + v11)) ^ 0xF6CE2B8D) + 154260595) ^ ((*(v14 + 4 * (a4 + v11)) ^ 0xCA6A63B7) + 898997321) ^ ((*(v14 + 4 * (a4 + v11)) ^ 0xA296E066) + 1567170458));
  v17 = (v16 ^ 0x228488BD) & (2 * (v16 & 0xB0D6A83E)) ^ v16 & 0xB0D6A83E;
  v18 = ((2 * (v16 ^ 0x2A488BD)) ^ 0x64E44106) & (v16 ^ 0x2A488BD) ^ (2 * (v16 ^ 0x2A488BD)) & 0xB2722082;
  v19 = v18 ^ 0x92122081;
  v20 = (v18 ^ 0x600000) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xC9C8820C) & v19 ^ (4 * v19) & 0xB2722080;
  v22 = v20 ^ 0xB2722083 ^ (v21 ^ 0x80400000) & (16 * v20);
  v23 = (16 * (v21 ^ 0x32322083)) & 0xB2722080 ^ 0x90502083 ^ ((16 * (v21 ^ 0x32322083)) ^ 0x27220830) & (v21 ^ 0x32322083);
  v24 = (v22 << 8) & 0xB2722000 ^ v22 ^ ((v22 << 8) ^ 0x72208300) & v23;
  return (*(v10 + 8 * ((185 * (a4 + 1 == v13 + 40)) ^ v7)))(v16 ^ (2 * ((v24 << 16) & 0x32720000 ^ v24 ^ ((v24 << 16) ^ 0x20830000) & ((v23 << 8) & 0xB2720000 ^ 0x520000 ^ ((v23 << 8) ^ 0x72200000) & v23))) ^ 0xF3858272);
}

uint64_t sub_2900C(_OWORD *a1)
{
  v7 = *v4;
  *(a1 - 1) = *(v4 - 1);
  *a1 = v7;
  return (*(v6 + 8 * (((v1 + v5 != 0) * v3) ^ v2)))(a1 + 2);
}

uint64_t sub_2906C@<X0>(uint64_t a1@<X8>)
{
  v7 = v1;
  v8 = v3;
  v6 = (v2 & 0xD4CB3F7) - 143681137 * ((((&v5 | 0x24B9F22A) ^ 0xFFFFFFFE) - (~&v5 | 0xDB460DD5)) ^ 0xBA7CBA9D) + 1414;
  v5 = v3;
  return (*(a1 + 8 * ((v2 & 0xD4CB3F7u) + 1889)))(&v5);
}

void ha0dkchaters6()
{
  v0 = *(&off_C1600 + ((-35 * (dword_C8980 ^ 0xD2 ^ qword_C86F8)) ^ byte_A02E0[byte_9CA50[(-35 * (dword_C8980 ^ 0xD2 ^ qword_C86F8))] ^ 0x4D]) - 33);
  v1 = -35 * ((qword_C86F8 + *v0) ^ 0xD2);
  v2 = *(&off_C1600 + (byte_A8FEC[(byte_A4984[v1 - 4] ^ 0x43) - 12] ^ v1) - 31);
  v3 = 1865875933 * (&v5[*v0 + *(v2 - 4)] ^ 0x1E71746347E125D2);
  *v0 = v3;
  *(v2 - 4) = v3;
  v6[0] = (1380333833 * (((v6 | 0xC9DAF00A) - (v6 & 0xC9DAF00A)) ^ 0x77885B80)) ^ 0x48449A90;
  LOBYTE(v2) = -35 * (*v0 ^ 0xD2 ^ *(v2 - 4));
  v4 = *(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8980) ^ 0xD2)) ^ byte_A01E0[byte_9C950[(-35 * ((qword_C86F8 - dword_C8980) ^ 0xD2))] ^ 0xFA]) - 47) - 8;
  (*&v4[8 * (byte_9C654[(byte_A8DE8[v2 - 8] ^ 0x67) - 4] ^ v2) + 17568])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_29404@<X0>(uint64_t a1@<X8>)
{
  v6 = ((v4 - 2128453237) & 0x7EDD9ED6) - 211;
  *(v1 - 7 + (v6 ^ v3) + v2) = vadd_s8(vsub_s8(*(a1 - 7 + (v6 ^ v3) + v2), vand_s8(vadd_s8(*(a1 - 7 + (v6 ^ v3) + v2), *(a1 - 7 + (v6 ^ v3) + v2)), 0x7272727272727272)), 0x3939393939393939);
  return (*(v5 + 8 * ((198 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_294B4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((117 * (v4 - 959689982 != ((v3 - 316) ^ 0x744) - 1226)) ^ (v3 - 807))))();
}

uint64_t sub_2951C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (v19 + 4 * v11);
  v21 = HIDWORD(v15) + v14 * (*(v10 + 4 * v11) ^ v8) + (*v20 ^ v8) + HIDWORD(v9) + v18 * (*(v16 + 4 * v11) ^ v8);
  *(v20 - 1) = v21 + v8 - ((v21 << (v17 - 91)) & a2);
  return (*(v13 + 8 * (((v11 + 1 == a8) * v12) ^ v17)))();
}

uint64_t sub_295DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v4 + 1275308877 + (a3 ^ 0x9EE);
  v7 = v6 < 0xAC0BC5E1;
  v8 = v6 > (v5 ^ 0x61CD57A3) + (a3 ^ 0xE82u) - 1408516131;
  if ((v5 ^ 0x61CD57A3u) > 0x53F43A1E != v7)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * (v8 ^ a3)))();
}

uint64_t sub_296B0()
{
  v5 = v1 + 1270;
  v6 = *v2 + v0 - 68635094 >= ((v5 - 2208) | 0x100u) - 321;
  return (*(v4 + 8 * ((2 * ((v6 | *(v3 + 20)) & 1)) & 0xF7 | (8 * ((v6 | *(v3 + 20)) & 1)) | v5)))();
}

uint64_t sub_29708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((2073432970 - ((v20 - 144) | 0x7B96138A) + ((v20 - 144) | 0x8469EC75)) ^ 0x94D59B2B) * v18;
  *(v20 - 144) = a15;
  *(v20 - 132) = v21 + v15 + 487;
  *(v20 - 128) = (v17 - 1392453367 - ((((v15 + 235) ^ 0x8458930D) + 2 * v17) & 0xD5A91FC6)) ^ v21;
  v22 = (*(v16 + 8 * (v15 ^ 0x972)))(v20 - 144);
  return (*(v16 + 8 * ((220 * (((v15 - 21) ^ (*(v20 - 136) == v19)) & 1)) ^ v15)))(v22);
}

uint64_t sub_29804@<X0>(_DWORD *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v7 = *(*a3 + (v5 - 1611143473)) ^ 0x39;
  v8 = ((*(*a3 + (v5 - 1611143476)) ^ 0x39) << 24) | ((*(*a3 + (v5 - 1611143475)) ^ 0x39) << 16) | ((*(*a3 + ((a2 + 16) ^ 0x9FF7E7A6) + v5) ^ ((a2 ^ 0x91) + 112)) << 8) | v7;
  return (*(v3 + 8 * ((55 * (((v8 + v4 - 2 * (v8 & 0x1E32A85F ^ v7 & 3)) & 0xFFFFFF ^ 0x32A85C) - (v6 + *a1) != -120518971)) ^ a2)))();
}

uint64_t sub_298D0@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, uint64_t a6, int a7, char *a8, unsigned int a9)
{
  v14 = (v10 ^ 0x8B7AE893) + 1;
  v15 = ((((2 * &a5) | 0x71D248FE) - &a5 + 1192680321) ^ 0x432A9364) * a1;
  a8 = &a3;
  a7 = v9 - v15;
  a5 = v13 - v15 + 168;
  a9 = (((2 * v14) & 0x7BD7EDF2) + (v14 ^ 0x3DEBF6F9) + ((v13 - 397) ^ 0xF355FFD9)) ^ v15;
  a6 = v11;
  v16 = (*(v12 + 8 * (v13 ^ 0x88B)))(&a5);
  v18 = v14 != ((5 * (v13 ^ 0x1C4)) ^ 0x253) && *(v11 + 24) == -1640847268;
  return (*(v12 + 8 * ((v18 | (4 * v18)) ^ v13)))(v16);
}

uint64_t sub_29A90()
{
  v4 = v1 & 0xC83DA315 ^ 0xA4112493 ^ (v1 ^ 0xEC3D8384) & (2 * (v1 & 0xC83DA315));
  v5 = (v1 ^ 0x6C2C8786) << (((v0 + 89) | 4) - 67);
  v6 = v5 & 0xA4112492 ^ 0xA4112491 ^ (v5 ^ 0x48224926) & (v1 ^ 0x6C2C8786);
  v7 = (4 * v4) & 0xA4112490 ^ v4 ^ v6 & ((4 * v4) ^ 0x9044924C);
  v8 = (4 * v6) & 0xA4112490 ^ 0x24112493 ^ ((4 * v6) ^ 0x9044924C) & v6;
  v9 = v7 ^ (16 * v7) & 0xA4112490 ^ ((16 * v7) ^ 0x41124930) & v8 ^ 0x80100010;
  v10 = (16 * v8) & 0xA4112490 ^ 0xA4012483 ^ ((16 * v8) ^ 0x41124930) & v8;
  v11 = (v9 << 8) & 0xA4112400 ^ v9 ^ ((v9 << 8) ^ 0x11249300) & v10;
  v12 = (v11 << 16) & 0x24110000 ^ v11 ^ ((v11 << 16) ^ 0x24930000) & ((v10 << 8) & 0x24110000 ^ 0x24110000 ^ ((v10 << 8) ^ 0x11240000) & v10);
  v13 = 1564307779 * ((((v3 - 192) | 0xBDBE803A) - (v3 - 192) + ((v3 - 192) & 0x42417FC0)) ^ 0x2AB34C29);
  *(v3 - 184) = &STACK[0x360];
  *(v3 - 192) = v0 - v13 + 377;
  *(v3 - 188) = v13 ^ v1 ^ (2 * v12) ^ 0x560F426F;
  (*(v2 + 8 * (v0 ^ 0x9BD)))(v3 - 192);
  return sub_428D4();
}

uint64_t sub_29C70()
{
  v6 = *(v3 + 48 * v5 + 36);
  v8 = (v6 + v2) < 0x80000003 && v6 != ((((v0 - 1807704729) & 0x6BBF6AFE) - v1 - 2150) ^ 0x2859FC8);
  return (*(v4 + 8 * ((v0 + 525) | (4 * v8))))();
}

uint64_t sub_29D74()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_29DBC@<X0>(uint64_t a1@<X8>)
{
  v9 = *(a1 + 8);
  v10 = (*(v9 + 4 * v1) ^ v4) + HIDWORD(v5);
  *(v9 + 4 * v1) = v10 + v6 - (v8 & (2 * v10));
  return (*(v7 + 8 * ((248 * (v1 + 1 != v3)) ^ v2)))();
}

uint64_t sub_29DF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  v36 = (a34 - 312336739) ^ 0x3C9DA69A;
  v37 = ((a34 - 312336739) ^ 0x2DBDA290) & (2 * ((a34 - 312336739) & 0xA9B922A5)) ^ (a34 - 312336739) & 0xA9B922A5;
  v38 = v36 << (*(v35 - 176) ^ 0x3C);
  v39 = (v38 ^ 0x2A49087E) & v36 ^ v38 & ((a2 - 1036) ^ 0x9524851F);
  v40 = v39 ^ 0x95248401;
  v41 = (v39 ^ 0x1000003D) & (4 * v37) ^ v37;
  v42 = ((4 * v40) ^ 0x549210FC) & v40 ^ (4 * v40) & 0x9524843C;
  v43 = (v42 ^ 0x14000030) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x81248403)) ^ 0x524843F0) & (v42 ^ 0x81248403) ^ (16 * (v42 ^ 0x81248403)) & 0x95248430;
  v45 = v43 ^ 0x9524843F ^ (v44 ^ 0x10000000) & (v43 << 8);
  v46 = (a34 - 312336739) ^ (2 * ((v45 << 16) & 0x15240000 ^ v45 ^ ((v45 << 16) ^ 0x43F0000) & (((v44 ^ 0x8524840F) << 8) & 0x15240000 ^ 0x11200000 ^ (((v44 ^ 0x8524840F) << 8) ^ 0x24840000) & (v44 ^ 0x8524840F))));
  v47 = (a2 - 556) | 0x3C;
  *(v35 - 176) = v47;
  v48 = (v47 - 814) & v46;
  v50 = v46 == -1950864677 || v48 != 11;
  v51 = *(v34 + 8 * ((v50 * (((a2 - 1308) | 0x14A) - 339)) | (a2 - 1036)));
  *(v35 - 180) = -42899;
  return v51();
}

uint64_t sub_2A00C@<X0>(uint64_t a1@<X1>, int a2@<W4>, unsigned int a3@<W8>)
{
  v8 = *(v7 - 220 + a3 + 72);
  v9 = (((a2 + v3 - 111) ^ 0x7747B78F) & (2 * a3)) + (a3 ^ 0x79FCFB6D) + v5;
  *(a1 + v9) = (HIBYTE(v8) ^ 3) - ((2 * (HIBYTE(v8) ^ 3)) & 0x72) + 57;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0xF3) - ((2 * (BYTE2(v8) ^ 0xF3)) & 0x72) + 57;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0x6B) + ~(2 * ((BYTE1(v8) ^ 0x6B) & 0x3D ^ BYTE1(v8) & 4)) + 58;
  *(a1 + v9 + 3) = v8 ^ 0x73;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v4) ^ v3)))();
}

void sub_2A1DC(uint64_t a1)
{
  v1 = 1388665877 * ((~a1 & 0xB95F3E3B | a1 & 0x46A0C1C4) ^ 0x34F25CD7);
  if (*(a1 + 16))
  {
    v2 = (*(a1 + 32) ^ v1) == 493473793;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2A2AC(__n128 a1)
{
  a1.n128_u16[0] = 14649;
  a1.n128_u8[2] = 57;
  a1.n128_u8[3] = 57;
  a1.n128_u8[4] = 57;
  a1.n128_u8[5] = 57;
  a1.n128_u8[6] = 57;
  a1.n128_u8[7] = 57;
  return sub_2A2CC(a1);
}

uint64_t sub_2A2CC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v9 = (v6 + v2 + a1);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v2 + v5 - 1496 == v4) * v7) ^ v3)))();
}

uint64_t sub_2A2FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v42 - 168) = 2008375717;
  *(v42 - 164) = -289549958;
  v43 = 843532609 * ((~((v42 - 152) | 0x2368EDD433658482) + ((v42 - 152) & 0x2368EDD433658482)) ^ 0x4107261EDC260C23);
  STACK[0x5D0] = *v41 + v43;
  *(v42 - 152) = 623681534 - v43 + v40;
  *(v42 - 148) = v43;
  *(v42 - 120) = ((v40 - 1089545305) ^ 0xC) + v43;
  STACK[0x5C0] = v43;
  *(v42 - 140) = v40 - 1089545305 + v43;
  *(v42 - 136) = (v40 - 1089545369) ^ v43;
  v44 = (*(a3 + 8 * (v40 ^ (a4 - 2145))))(v42 - 152);
  return (*(a40 + 8 * *(v42 - 144)))(v44);
}

void sub_2A400(uint64_t a1)
{
  v1 = 1380333833 * ((((2 * a1) | 0x7F163360) - a1 + 1081402960) ^ 0x1D9B23A);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_2A4BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + a2 - 16);
  *(v2 + v3 + v6 - 32) = *(v2 + a2 - 32);
  *(v2 + v3 + v6 - 16) = v7;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((v4 + 1301) ^ 0x3D6)) | (v4 + 220))))();
}

void sub_2A50C(_DWORD *a1)
{
  v1 = *a1 - 896639297 * ((-2 - ((a1 | 0xEECAF7B5) + (~a1 | 0x1135084A))) ^ 0x59E9E32);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_2A698(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v7 - 1;
  *(*(v9 - 120) + v10) = *(v3 + v10) ^ *(v6 + (v10 & 0xF)) ^ *((v10 & 0xF) + v5 + 5) ^ (89 * (v10 & 0xF)) ^ 0x39 ^ *(v4 + ((a3 - 195665527) & 0xBA99FDF ^ 0x7DDLL) + (v10 & 0xF));
  return (*(v8 + 8 * ((a3 + 216) | (16 * (v10 == 0)))))();
}

uint64_t sub_2A75C()
{
  v5 = *(v1 + 4 * (v3 - 1));
  *(v1 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v3)) - v3;
  v6 = 1504884919 * ((~((v4 - 192) | 0xFF5B07B89B2BFBD4) + ((v4 - 192) & 0xFF5B07B89B2BFBD4)) ^ 0x2CF4A2FD9F17B330);
  v7 = v6 ^ (v0 + 1110661969);
  *(v4 - 192) = v0 + 1110661969 + v6;
  *(v4 - 188) = v7 ^ 0x74;
  *(v4 - 156) = 1 - v6;
  *(v4 - 184) = v3 + 1 - v6;
  *(v4 - 176) = v6 + 623;
  *(v4 - 164) = v6 + v0 + 55969614;
  *(v4 - 160) = v7 ^ 0x5B;
  v8 = (*(v2 + 8 * (v0 + 2068)))(v4 - 192);
  return (*(v2 + 8 * *(v4 - 168)))(v8);
}

uint64_t sub_2A878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 136) = a13;
  *(v21 - 128) = a14;
  *(v21 - 120) = &a18;
  *(v21 - 112) = &a18;
  *(v21 - 144) = v18 + 126 + 896639297 * ((~((v21 - 144) | 0x9F97DB95) + ((v21 - 144) & 0x9F97DB95)) ^ 0x74C3B212);
  (*(v19 + 8 * (v18 + 1189)))(v21 - 144);
  *(v21 - 144) = v18 + 126 + 896639297 * ((2 * ((v21 - 144) & 0x14A89D10) - (v21 - 144) + 1800889066) ^ 0x7FFCF492);
  *(v21 - 120) = &a18;
  *(v21 - 112) = &a18;
  *(v21 - 136) = a13;
  *(v21 - 128) = a14;
  (*(v19 + 8 * (v18 ^ 0xDA7)))(v21 - 144);
  *(v21 - 144) = v18 + 126 + 896639297 * ((((v21 - 144) | 0x5D5124BB) - (v21 - 144) + ((v21 - 144) & 0xA2AEDB40)) ^ 0x49FAB2C3);
  *(v21 - 120) = &a18;
  *(v21 - 112) = &a18;
  *(v21 - 136) = a13;
  *(v21 - 128) = a14;
  (*(v19 + 8 * (v18 ^ 0xDA7)))(v21 - 144);
  v22 = 2 * v20 - 2074570164;
  v23 = v20 - 1392453367;
  v24 = 843532609 * ((v21 + 2103148186 - 2 * ((v21 - 144) & 0x7D5B7F2A)) ^ 0x6DE70874);
  *(v21 - 144) = a15;
  *(v21 - 132) = v18 - 604 + v24;
  *(v21 - 128) = (v23 + v18 + 586 - (((v18 + 586) ^ 0xD5A91925) & v22) - 1763) ^ v24;
  (*(v19 + 8 * (v18 ^ 0xDBD)))(v21 - 144);
  v25 = *(v21 - 136) != 1700203916;
  v26 = 843532609 * ((((2 * (v21 - 144)) | 0x829666CE) - (v21 - 144) + 1052036249) ^ 0xD1F74439);
  *(v21 - 144) = a15;
  *(v21 - 132) = v18 - 604 + v26;
  *(v21 - 128) = (~((v22 - 2) & 0xD5A91FC6) + v23) ^ v26;
  v27 = (*(v19 + 8 * (v18 ^ 0xDBD)))(v21 - 144);
  return (*(v19 + 8 * ((50 * v25) ^ v18)))(v27);
}

uint64_t sub_2AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = ((v74 - 192) ^ 0x64E423EA) * v72;
  *(v74 - 184) = &a71;
  *(v74 - 188) = v75 ^ 0x26A8;
  *(v74 - 176) = v71 - v75 - 806;
  v76 = (*(v73 + 8 * (v71 ^ 0xFD2)))(v74 - 192);
  return (*(v73 + 8 * (v71 + 62 * ((a68 >> 3) & 1))))(v76);
}

uint64_t sub_2ABF4(__n128 a1)
{
  v6 = (v4 + v2);
  v6[73] = a1;
  v6[74] = a1;
  return (*(v5 + 8 * (((v2 == 224) * v1) ^ v3)))();
}

uint64_t sub_2AC6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v13 = *(v10 + 48 * v9 + 36);
  v15 = v13 + a3 < a6 && v13 != ((v12 + v8 + 1653 + 463) & a8 ^ 0xE67FDB08);
  return (*(v11 + 8 * ((44 * v15) ^ v8)))();
}

uint64_t sub_2AD30@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = ((v10 + 246) ^ a4) + v9;
  *(a1 + v13) = *(a5 + v13) ^ *(v8 + (v13 & 0xF)) ^ *((v13 & 0xF) + v7 + 5) ^ *((v13 & 0xF) + a7 + 1) ^ ((v13 & 0xF) * a6) ^ v12;
  return (*(v11 + 8 * ((((((v10 + 246) ^ a2) * a3 - 268) ^ v10) * (v13 == 0)) ^ (v10 + 848))))();
}

uint64_t sub_2ADC0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = ((30 * (v2 ^ 0xCE)) ^ 0x25) + *(v1 + v5) - ((2 * *(v1 + v5)) & 0x72);
  return (*(v4 + 8 * ((61 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_2AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21, unsigned int a22)
{
  v23 = 1037613739 * (((&a19 | 0xF6CD8C6C) - (&a19 & 0xF6CD8C6C)) ^ 0x27CFA113);
  a22 = 1110261205 - v23;
  LODWORD(a19) = v23 + 1984;
  HIDWORD(a19) = v23 ^ 0x7F19319;
  a20 = v23 + 1261189660;
  (*(v22 + 18736))(&a19);
  a19 = &a15;
  a21 = 210068311 * ((&a19 & 0xE066603C | ~(&a19 | 0xE066603C)) ^ 0x8D4FA067) + 2202;
  v24 = (*(v22 + 18888))(&a19);
  return (*(v22 + 8 * ((1753 * (a20 == -1640847268)) ^ 0x1F9u)))(v24);
}

void sub_2B188(char a1@<W8>)
{
  v4 = v6[3] ^ 0x39;
  v5 = ((v6[1] ^ 0x39) << (a1 + 55)) + ((*v6 ^ 0x39) << 24) + ((v6[2] ^ 0x39) << 8) + v4;
  **(v1 + 8) = v5 + v2 - 2 * (v5 & 0x1E32A85F ^ v4 & 3);
  *v1 = *(v3 + 24);
}

uint64_t sub_2B240()
{
  v5 = v2 < v0;
  if (v5 == (v1 + 1) > 0xFFFFFFFF083DAE6BLL)
  {
    v5 = v0 + v1 + (v3 ^ 0x7A5u) + 375 * (v3 ^ 0x327u) - 2277 < v2;
  }

  return (*(v4 + 8 * (v3 ^ (16 * v5))))();
}

uint64_t sub_2B2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W8>)
{
  if ((a4 & 2) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  LODWORD(STACK[0x278]) = v7;
  LODWORD(STACK[0x394]) = 0;
  LODWORD(STACK[0x464]) = 0;
  return (*(v6 + 8 * (((LODWORD(STACK[0x360]) == -1640847268) * (((v5 - 114) | 0x201) ^ 0x17)) ^ (v5 - 223))))(a1, a2, a3, 1640887173);
}

uint64_t sub_2B324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  if ((a4 & 0x20) != 0)
  {
    v61 = 5;
  }

  else
  {
    v61 = 2;
  }

  LODWORD(STACK[0x3A4]) = v61;
  if (v58 > 899972610)
  {
    if (v58 == 899972611 || v58 == 2128228914)
    {
      goto LABEL_12;
    }

    v62 = 1360245951;
  }

  else
  {
    if (v58 == -925089264 || v58 == 248319237)
    {
      goto LABEL_12;
    }

    v62 = 300914745;
  }

  if (v58 != v62)
  {
    JUMPOUT(0x2B2F8);
  }

LABEL_12:
  *(v59 + 32) = xmmword_A9200;
  return (*(v60 + 8 * ((((a58 ^ 0x10E) - 69) * ((a4 >> 5) & 1)) ^ (a58 + 1885))))(a1, a2, a3, 1640887173, 3883332711);
}

uint64_t sub_2B64C@<X0>(unsigned int a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v12 = a1 < v10;
  v13 = *(a5 + v7);
  v14 = v7 + 1;
  *(a6 + a7) = (((v8 + 33) | a3) ^ a4) + v13 - (a2 & (2 * v13));
  if (v12 == v14 > v9)
  {
    v12 = v14 + v10 < a1;
  }

  return (*(v11 + 8 * ((7 * v12) ^ v8)))();
}

uint64_t sub_2B6EC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 1206);
  **(a1 + 16) = v6 + v5 + v7 - 326;
  return (*(v3 + 8 * (((*(a3 + 24) != ((a2 - 1508) ^ (v4 + 32))) * (((a2 - 1508) | 0x148) ^ 0x14E)) ^ v7)))();
}

uint64_t sub_2B748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v75 - 192) = -2013067203 - 1556366573 * ((((2 * (v75 - 192)) | 0xEFFA2234) - (v75 - 192) + 134409958) ^ 0x931932F0) + v74;
  (*(v73 + 8 * (v74 + 1685)))(v75 - 192);
  *(v75 - 184) = (v74 - 103) ^ (210068311 * (((~(v75 - 192) | 0x94CD097E) + ((v75 - 192) | 0x6B32F681)) ^ 0xF9E4C924));
  *(v75 - 192) = &a68;
  *(v75 - 176) = (87 * (((~(v75 + 64) | 0x7E) + ((v75 + 64) | 0x81)) ^ 0x24)) ^ 0x54;
  *(v75 - 168) = &STACK[0x344];
  v76 = (*(v73 + 8 * (v74 + 1737)))(v75 - 192);
  LODWORD(STACK[0x360]) = *(v75 - 180);
  LODWORD(STACK[0x394]) = v69 + v70 - 323;
  LODWORD(STACK[0x464]) = v71;
  return (*(v73 + 8 * (((LODWORD(STACK[0x360]) == v72) * (((v70 - 114) | 0x201) ^ 0x17)) ^ (v70 - 223))))(v76);
}

uint64_t sub_2B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 104) = v20 - ((2 * ((v21 - 128) & 0x7E2BA118) - (v21 - 128) - 2116788508) ^ 0x264D4F2) * v18 + 2112;
  *(v21 - 112) = &a17;
  *(v21 - 128) = a14;
  v22 = (*(v17 + 8 * (v20 + 2300)))(v21 - 128);
  return (*(v17 + 8 * (((*(v21 - 120) <= (v19 + 1)) * (((v20 - 51) | 0x348) - 676)) ^ v20)))(v22);
}

void sub_2B9F0(uint64_t a1)
{
  v1 = 1380333833 * ((((2 * a1) | 0x622B87EA) - a1 + 1323973643) ^ 0xF47687F);
  if (*(a1 + 48) | *(a1 + 24))
  {
    v2 = *(a1 + 44) + v1 == 394355736;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = STACK[0x3F8];
  v63 = STACK[0x2B8];
  LODWORD(STACK[0x2F4]) = 1;
  STACK[0x330] = v62;
  LODWORD(a56) = v63;
  LODWORD(STACK[0x348]) = v63;
  STACK[0x398] = v61;
  LODWORD(STACK[0x414]) = -2113764002;
  return sub_2856C(2654120028, a2, a3, a4, a5, a6, a7, a8, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_2BC38@<X0>(int a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v6 = (a1 - 14);
  v7.n128_u64[0] = (v3 + 13) & 0xF;
  v7.n128_u64[1] = (v3 + 12) & 0xF;
  v8.n128_u64[0] = (v3 + 11) & 0xF;
  v8.n128_u64[1] = (v3 + v6 + 96) & 0xF;
  v9.n128_u64[0] = (v3 + 9) & 0xF;
  v9.n128_u64[1] = v4 & 0xF ^ 0xCLL;
  v12.val[0].i64[0] = (v3 + 7) & 0xF;
  v12.val[0].i64[1] = (v3 + 6) & 0xF;
  v12.val[1].i64[0] = (v3 + 5) & 0xF;
  v12.val[1].i64[1] = (v3 + 4) & 0xF;
  v12.val[2].i64[0] = (v3 + 3) & 0xF;
  v12.val[2].i64[1] = (v3 + 2) & 0xF;
  v12.val[3].i64[0] = (v3 + 1) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF;
  v10.n128_u64[0] = 0x7575757575757575;
  v10.n128_u64[1] = 0x7575757575757575;
  return sub_2BD24(v6, a2 - 15, (v3 + 14) & 0xF, (2 * v6) ^ 0x746u, *(v5 - 192) - 15, (2 * v6) ^ 0xF44, a3, v7, v8, v9, xmmword_A9260, vqtbl4q_s8(v12, xmmword_A9260), v10);
}

uint64_t sub_2BD24(int a1, uint64_t a2, uint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = ~v18 + v16;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v23.i64[1] = a9;
  v24 = vrev64q_s8(vmulq_s8(v23, a10));
  *(a12 + v20) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v21 - 15), *(a2 + v20)), veorq_s8(*(v14 + v21 - 15), *(v13 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v19 + 8 * (((2 * (a13 + v18 != v17)) | (16 * (a13 + v18 != v17))) ^ a1)))();
}

uint64_t sub_2C28C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1731));

  return v3(v1);
}

uint64_t sub_2C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = (*(a3 + 8 * (v40 + 1432)))(3);
  v43 = *(v41 + 8 * (v40 - 814));
  *v43 = v42;
  (*(a40 + 8 * (v40 + 1486)))();
  v44 = (*(a40 + 8 * (v40 + 1432)))(66);
  v45 = *(v41 + 8 * (v40 & 0x82BD3C27));
  *v45 = v44;
  (*(a40 + 8 * (v40 ^ 0xA32)))();
  v46 = (*(a40 + 8 * (v40 ^ 0xAE8)))(2);
  v47 = *(v41 + 8 * (v40 - 915));
  *(v47 - 4) = v46;
  *v46 = 7196;
  **v45 = 0;
  **(v41 + 8 * (v40 - 867)) = 0;
  v48 = *(v47 - 4);
  v49 = *v45;
  v50 = *v43;
  v49[64] = 1;
  **(v41 + 8 * (v40 ^ 0x37C)) = 51;
  v49[9] = -15;
  v48[1] = 79;
  **(v41 + 8 * (v40 - 798)) = 80;
  **(v41 + 8 * (v40 - 866)) = -77;
  *v48 = -22;
  v49[11] = 73;
  *v50 = 68;
  v49[20] = -44;
  **(v41 + 8 * (v40 ^ 0x399)) = -121;
  v49[36] = -11;
  v49[45] = -113;
  v49[49] = 25;
  *(v50 + 1) = 6695;
  **(v41 + 8 * (v40 ^ 0x392)) = -122;
  **(v41 + 8 * (v40 ^ 0x33A)) = 88;
  v49[26] = -34;
  v49[60] = -5;
  **(v41 + 8 * (v40 ^ 0x3A6)) = 96;
  **(v41 + 8 * (v40 - 778)) = 80;
  **(v41 + 8 * (v40 ^ 0x33B)) = 17;
  **(v41 + 8 * (v40 - 839)) = 119;
  v49[52] = 47;
  v49[50] = 102;
  v49[59] = -59;
  v49[22] = -36;
  v49[29] = 59;
  v49[27] = 34;
  v49[40] = -80;
  v49[13] = 23;
  **(v41 + 8 * (v40 & 0x4AD9A0AB)) = 99;
  v49[53] = 3;
  **(v41 + 8 * (v40 ^ 0x33F)) = -109;
  v49[39] = 54;
  v49[57] = 73;
  **(v41 + 8 * (v40 - 811)) = 83;
  v49[63] = -72;
  v49[37] = -52;
  v51 = *v45;
  *(v51 + 65) = -85;
  *(v51 + 5) = -14;
  *(v51 + 54) = 32;
  *(v51 + 8) = 16909;
  *(v51 + 28) = -39;
  *(v51 + 47) = -4065;
  *(v51 + 21) = 15;
  *(v51 + 41) = -29527;
  *(v51 + 38) = -121;
  *(v51 + 31) = 8824;
  *(v51 + 10) = -98;
  *(v51 + 25) = 69;
  *(v51 + 7) = 27031;
  *(v51 + 23) = -86;
  *(v51 + 14) = -90;
  *(v51 + 62) = -105;
  *(v51 + 35) = 52;
  *(v51 + 33) = 15089;
  *(v51 + 55) = -30385;
  *(v51 + 46) = -17;
  *(v51 + 4) = -92;
  *(v51 + 15) = 72;
  *(v51 + 51) = -15;
  *(v51 + 12) = -15;
  *(v51 + 30) = 36;
  *(v51 + 58) = 113;
  *(v51 + 61) = 73;
  *(v51 + 9) = -9761;
  *(v51 + 43) = 19744;
  *(v51 + 6) = 45;
  *(v51 + 24) = -72;
  return sub_23868(21);
}

uint64_t sub_2DCAC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v60 = (a1 + 186) | 0x40;
  STACK[0x508] = 0x9224CD2A5E81E825;
  STACK[0x500] = 0x799AE8FC321CBB59;
  v61 = STACK[0x3A4];
  LODWORD(STACK[0x278]) = STACK[0x3A4];
  v62 = 843532609 * ((2 * ((v59 - 192) & 0x696E0C50) - (v59 - 192) + 378663851) ^ 0x62D84F5);
  *(v59 - 176) = (v61 - ((2 * v61) & 0x128CEE6A) + 155612981) ^ v62;
  *(v59 - 172) = v62 + v60 + 706;
  *(v59 - 144) = &STACK[0x26C];
  *(v59 - 136) = v62 + a18 + 864492003;
  *(v59 - 192) = &a58;
  *(v59 - 184) = a19;
  *(v59 - 168) = &STACK[0x500];
  *(v59 - 160) = &STACK[0x510];
  v63 = (*(v58 + 8 * (v60 ^ 0x8D2)))(v59 - 192);
  v64 = *(v59 - 152);
  LODWORD(STACK[0x360]) = v64;
  return (*(v58 + 8 * ((8 * (v64 == -1640847268)) | ((v64 == -1640847268) << 9) | (v60 - 93))))(v63);
}

void sub_2DD3C()
{
  *(v0 - 128) = *(v0 - 168) ^ *(v0 - 156) ^ 0xCE59219F;
  *(v0 - 132) = *(v0 - 164) ^ 0x1978C64A;
  *(v0 - 136) = *(v0 - 172) ^ 0x8AA361C;
  *(v0 - 140) = *(v0 - 160) ^ 0xDCB3F494;
  JUMPOUT(0x1C34CLL);
}

void lCUad()
{
  v0 = *(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8720) ^ 0xD2)) ^ byte_9C850[byte_A90E0[(-35 * ((qword_C86F8 - dword_C8720) ^ 0xD2))] ^ 0xCF]) + 141);
  v1 = *(&off_C1600 + (byte_A01E0[byte_9C950[(-35 * ((qword_C86F8 + *v0) ^ 0xD2))] ^ 0x3C] ^ (-35 * ((qword_C86F8 + *v0) ^ 0xD2))) - 18);
  v2 = &v4[*(v1 - 4) ^ *v0];
  *v0 = 1865875933 * (v2 - 0x1E71746347E125D2);
  *(v1 - 4) = 1865875933 * (v2 ^ 0x1E71746347E125D2);
  v5[0] = (1380333833 * ((((v5 | 0x6964A598) ^ 0xFFFFFFFE) - (~v5 | 0x969B5A67)) ^ 0x28C9F1ED)) ^ 0x48449A90;
  LOBYTE(v1) = -35 * (*v0 ^ 0xD2 ^ *(v1 - 4));
  v3 = *(&off_C1600 + ((-35 * (dword_C8720 ^ 0xD2 ^ qword_C86F8)) ^ byte_A02E0[byte_9CA50[(-35 * (dword_C8720 ^ 0xD2 ^ qword_C86F8))] ^ 0x4D]) - 73) - 8;
  (*&v3[8 * (v1 ^ byte_A01E0[byte_9C950[v1] ^ 0xFA]) + 17464])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_2E0E0(_DWORD *a1)
{
  v1 = *a1 + 1504884919 * ((a1 - 2 * (a1 & 0xA5D42817) - 1512822761) ^ 0x5E179F0C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2E19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, _DWORD *a58)
{
  *a58 = v58 - 1;
  v63 = &a58[6 * (v58 - 178585806 + v59 + 1465) + 2];
  return (*(v61 + 8 * ((184 * (*(v60 + (*v63 + a7) * a3 + 36) != v62)) ^ v59)))(a1, v63[1]);
}

uint64_t sub_2E270(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 24;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_2E290@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v7 = ((v5 - 1065515418) & 0x3F827FB4) - 1969 + v4;
  v8 = *(a1 + v7 - 15);
  v9 = *(a1 + v7 - 31);
  v10 = a2 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), a3)), a4);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), a3)), a4);
  return (*(v6 + 8 * ((1989 * ((v4 & 0xFFFFFFE0) == 32)) ^ v5)))();
}

void sub_2E318(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 959689982 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 959689982;
  }

  else
  {
    v2 = 959689982 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 32) - 1380333833 * (((a1 ^ 0xBB97D2CD | 0xE409CFBC) - ((a1 ^ 0xBB97D2CD) & 0xE409CFBC)) ^ 0xE1CCB6FB);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_2E448@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 493473794;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 57)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 185)
  {
    v12 = -1640847268;
    v13 = *(v2 + 8);
    v14 = (*(v2 + 24) + v3);
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 84)
    {
      v15 = -432208493;
    }

    else
    {
      v15 = -432208494;
    }

    *(result + 16) = 1611143476;
    *(result + 20) = v15;
    *(result + 24) = -1640847268;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0xF35)))();
    v12 = 1640887173;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_2E51C()
{
  v6 = (v3 + v0 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * (((((v2 ^ 0x585) & v1) != 16) * (((v2 ^ 0xD8) - 1067) ^ 0x19A)) ^ v2 ^ 0xD8)))();
}

uint64_t sub_2E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, char *a19, unsigned int a20)
{
  v23 = 843532609 * ((&a15 & 0x3B6673C1 | ~(&a15 | 0x3B6673C1)) ^ 0xD425FB60);
  a19 = &a13;
  a16 = a12;
  a15 = v23 + 2126055496;
  a18 = (v21 + 1421512264) ^ v23;
  a20 = v23 - 1295632376;
  v24 = (*(v20 + 8 * (v21 + 2133)))(&a15);
  return (*(v20 + 8 * ((2004 * (a17 == ((v21 - 207080730) & 0xC57CDFA ^ (v22 + 575) ^ (v21 - 838383932) & 0x31F8BB5F))) ^ v21)))(v24);
}

void sub_2E670(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (143681137 * ((-2 - ((a1 | 0xE33F7651) + (~a1 | 0x1CC089AE))) ^ 0x7DFA3EE6));
  __asm { BRAA            X9, X17 }
}

void sub_2E7F0(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X2, X17 }
}

uint64_t sub_2EB48(uint64_t a1, uint64_t a2, int a3)
{
  if (v3 <= 0x10 && ((1 << v3) & 0x10185) != 0)
  {
    return sub_2EBB0(a1, a2, a3);
  }

  else
  {
    return sub_2EB70(a1, a2, a3);
  }
}

uint64_t sub_2EC80@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a4 = v8 - 143681137 * (((&a3 | 0xEEA87FBD) - (&a3 & 0xEEA87FBD)) ^ 0x8F92C8F5) + 1307;
  a3 = v7;
  a5 = a1;
  a6 = v7;
  v9 = (*(v6 + 8 * (v8 ^ 0xB16)))(&a3);
  return sub_2ECE0(v9);
}

uint64_t sub_2ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, int a16, char *a17, unsigned int a18)
{
  v21 = 843532609 * ((2 * (&a13 & 0x5E4EBD70) - &a13 - 1582218609) ^ 0xB10D35D1);
  a17 = &a10;
  a18 = v21 - 1295632376;
  a14 = a11;
  a13 = v21 - 1878565521;
  a16 = v21 ^ 0x54BA8F41;
  v22 = (*(v18 + 19056))(&a13);
  return (*(v18 + 8 * ((1579 * (a15 == ((v20 - 1944) ^ v19))) ^ 0x10Cu)))(v22);
}

void sub_2EEB0(uint64_t a1)
{
  v1 = 210068311 * ((((2 * a1) | 0x294F86F0) - a1 - 346538872) ^ 0x8671FCDC);
  v2 = *(a1 + 8) ^ v1;
  v3 = (*(a1 + 16) ^ v1);
  v4 = *(&off_C1600 + (v2 ^ 0x2BB)) - 8;
  (*&v4[8 * v2 + 14520])(*(&off_C1600 + v2 - 530) - 12, sub_67BC);
  v5 = **(&off_C1600 + v2 - 533);
  v7 = v2 + 210068311 * (&v6 ^ 0x92D63FA4) - 119;
  v6 = v5;
  (*&v4[8 * (v2 ^ 0xB43)])(&v6);
  __asm { BRAA            X9, X17 }
}

void sub_2EFE4(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (143681137 * ((2 * (a1 & 0x9ABC134) - a1 - 162251061) ^ 0x976E8983));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *a1;
  v5 = *(a1 + 8);
  v10[0] = 0x3933B4FE00000082;
  v10[1] = &v12;
  v9[0] = 0x3933B4FE00000082;
  v9[1] = &v11;
  v6 = v2[1];
  v17 = v5;
  v18 = v10;
  LODWORD(v13) = v1 - 843532609 * (&v13 ^ 0x10BC775E) - 667;
  v14 = v2;
  v15 = v4;
  v16 = v6;
  v7 = *(&off_C1600 + v1 - 1238) - 8;
  (*&v7[8 * (v1 ^ 0xC3A)])(&v13);
  v8 = *v2;
  LODWORD(v14) = v1 - 143681137 * ((((&v13 | 0xCE1F49DA) ^ 0xFFFFFFFE) - (~&v13 | 0x31E0B625)) ^ 0x50DA016D) - 151;
  v15 = v8;
  v13 = v9;
  (*&v7[8 * (v1 ^ 0xC32)])(&v13);
  v14 = v3;
  LODWORD(v13) = (50899313 * ((((2 * &v13) | 0x91D50F56) - &v13 + 924153941) ^ 0xE221ADD1)) ^ (v1 + 428);
  (*&v7[8 * v1 + 8312])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_2F218(unsigned int *a1)
{
  v7 = v5 + v2;
  v8 = v7 + ((v6 + 1052663803) ^ (v1 - 1));
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v2) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  JUMPOUT(0x13978);
}

uint64_t sub_2F258@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = a1 + 373;
  STACK[0x498] -= 32;
  *(a65 + 335) = (v66 + 16) ^ *(a7 + 335) ^ 0xE1 ^ *(*(&off_C1600 + (v66 ^ 0x4B5)) + 15) ^ *(*(&off_C1600 + v66 - 971) + 17) ^ *(*(&off_C1600 + (v66 ^ 0x476)) + 14);
  return (*(v65 + 8 * v66))();
}

uint64_t sub_2F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, _DWORD *a13)
{
  v17 = 1380333833 * ((((v16 - 136) | 0x2FD4597F) - (v16 - 136) + ((v16 - 136) & 0xD02BA680)) ^ 0x9186F2F5);
  v18 = (*a13 ^ 0x994F60DB) * *(*(a10 + 32) + 16);
  *(v16 - 104) = v17 + v13 - 210;
  *(v16 - 136) = ((v18 ^ 0xDE87BAFD) + 2147278272 + ((v18 << (((v13 + 103) | 6) ^ 0x87)) & 0xBD0F75FA)) ^ v17;
  *(v16 - 120) = v17 + 959689982;
  *(v16 - 128) = &a12;
  *(v16 - 112) = a11;
  v19 = (*(v14 + 8 * (v13 ^ 0xB87)))(v16 - 136);
  return (*(v14 + 8 * ((112 * (v15 == 1)) ^ v13)))(v19);
}

uint64_t sub_2F47C(uint64_t result)
{
  v1 = 1504884919 * ((2 * ((result ^ 0x34B6CEACC1E215EELL) & 0x47A3041EA831A1A3) - (result ^ 0x34B6CEACC1E215EELL) - 0x47A3041EA831A1A4) ^ 0xA0BA6FF76DEFFCA9);
  v2 = *(result + 24) ^ (1504884919 * ((2 * ((result ^ 0xC1E215EE) & 0xA831A1A3) - (result ^ 0xC1E215EE) + 1473142364) ^ 0x6DEFFCA9));
  v3 = *(result + 16) ^ v1;
  v4 = *result ^ v1;
  v5 = v3 >= v4;
  v6 = v3 < v4;
  v7 = !v5;
  if ((*(result + 28) + 1504884919 * ((2 * ((result ^ 0xC1E215EE) & 0xA831A1A3) - (result ^ 0xC1E215EE) + 1473142364) ^ 0x6DEFFCA9)))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    v2 = *(result + 8) + 1504884919 * ((2 * ((result ^ 0xC1E215EE) & 0xA831A1A3) - (result ^ 0xC1E215EE) + 1473142364) ^ 0x6DEFFCA9);
  }

  *(result + 32) = v2 ^ (*(result + 36) - 1504884919 * ((2 * ((result ^ 0xC1E215EE) & 0xA831A1A3) - (result ^ 0xC1E215EE) + 1473142364) ^ 0x6DEFFCA9));
  return result;
}

uint64_t sub_2F590(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_2F5A8(_DWORD *a1)
{
  v1 = *a1 - 896639297 * ((~a1 & 0xDD0726AA | a1 & 0x22F8D955) ^ 0xC9ACB0D2);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2F6B0@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W8>)
{
  v15 = (v5 + 16);
  v16 = v8 + 1 - ((v7 + 2) & v9);
  v13[12] = ((a5 - 37) ^ v10 ^ HIBYTE(v16)) - 2 * (((a5 - 37) ^ v10 ^ HIBYTE(v16)) & 0xBB ^ HIBYTE(v16) & 2) + 57;
  v13[13] = (BYTE2(v16) ^ 0xFD) - (v11 & (2 * (BYTE2(v16) ^ 0xFD))) + 57;
  v13[14] = (v12 ^ BYTE1(v16)) + (a1 | ~(2 * (v12 ^ BYTE1(v16)))) + 58;
  v13[15] = v16 ^ a2;
  *(v15 - 15) ^= *v13 ^ a3;
  *(v15 - 14) ^= v13[1] ^ a3;
  *(v15 - 13) ^= v13[2] ^ a3;
  *(v15 - 12) ^= v13[3] ^ a3;
  *(v15 - 11) ^= v13[4] ^ a3;
  *(v15 - 10) ^= v13[5] ^ a3;
  *(v15 - 9) ^= v13[6] ^ a3;
  *(v15 - 8) ^= v13[7] ^ a3;
  *(v15 - 7) ^= v13[8] ^ a3;
  *(v15 - 6) ^= v13[9] ^ a3;
  *(v15 - 5) ^= v13[10] ^ a3;
  *(v15 - 4) ^= v13[11] ^ a3;
  *(v15 - 3) ^= v13[12] ^ a3;
  *(v15 - 2) ^= v13[13] ^ a3;
  *(v15 - 1) ^= v13[14] ^ a3;
  *v15 ^= v13[15] ^ a3;
  return (*(v14 + 8 * ((((v6 + 16) < 0x140) * a4) ^ (a5 + 584))))();
}

uint64_t sub_2F6F8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  a6 = (v7 + v11 - 210) ^ (((((&a6 | 0xF3EE5D7E) ^ 0xFFFFFFFE) - (~&a6 | 0xC11A281)) ^ 0x26DA88FB) * v10);
  a7 = a1;
  v12 = (*(v9 + 8 * (v7 + v11 + 1647)))(&a6);
  return (*(v9 + 8 * (((a4 != 0) * ((v11 ^ (v8 + 189)) - 742)) | (v11 + v7))))(v12);
}

void sub_2FB24(uint64_t a1)
{
  v1 = *(a1 + 20) + 1037613739 * (a1 ^ 0xD1022D7F);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2FC44@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x2B0] + a1 + 72);
  v6 = (((v2 - 246) ^ 0xFE7BFDE7) & (2 * a1)) + (a1 ^ 0xFF3DFEFF) + v1;
  *(v3 + v6) = v5 ^ 0x73;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0x6B) - ((2 * (BYTE1(v5) ^ 0x6B)) & 0x72) + 57;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0xF3) - ((2 * (BYTE2(v5) ^ 0xF3)) & 0x72) + 57;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 3) - 2 * ((HIBYTE(v5) ^ 3) & 0x3D ^ HIBYTE(v5) & 4) + 57;
  return (*(v4 + 8 * (((16 * (a1 + 4 >= LODWORD(STACK[0x30C]))) | (32 * (a1 + 4 >= LODWORD(STACK[0x30C])))) ^ v2)))();
}

void sub_2FD70(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v7 - 143681137 * ((((&a3 | 0xF537C43E) ^ 0xFFFFFFFE) - (~&a3 | 0xAC83BC1)) ^ 0x6BF28C89) + 741;
  a5 = v5;
  (*(a1 + 8 * (v7 ^ 0x8B6)))(&a3);
  *(v6 + 4) = v7 - *(v6 + 4) + 1919379479;
  JUMPOUT(0x290D8);
}

void sub_2FDF4()
{
  v4 = *(v1 + 8);
  **(v1 + 16) = v0;
  *v4 = v3;
  *v1 = *(v2 + 24);
}

uint64_t sub_2FE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(v7 - 148) = (a6 - 1434992875) & 0x55883F6F;
  *(v7 - 112) = veorq_s8(*v8, xmmword_A9270);
  if (*(v7 - 120))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = *(v6 + 8 * ((51 * v11) ^ a6));
  *(v7 - 152) = -42900;
  return v12(a1, a2);
}

void sub_2FEF0(uint64_t a1)
{
  v1 = ((*a1 ^ (50899313 * (a1 ^ 0x2ACB2A7A))) - 1800) | 0x160;
  v2 = *(*(a1 + 8) + 4) + v1;
  v4 = v2 - 959690339;
  v3 = v2 - 959690339 < 0;
  v5 = 959690339 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  __asm { BRAA            X6, X17 }
}

uint64_t sub_3017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19)
{
  v26 = &a19 + 6 * v21;
  v26[2] = v25;
  v26[3] = v23;
  *(v26 + 2) = a14;
  v26[6] = a17;
  a19 = v19 + 1;
  return (*(v22 + 8 * (((v20 + a3 < a6) ^ (a9 - 103 - v24)) & 1 | (16 * (((v20 + a3 < a6) ^ (a9 - 103 - v24)) & 1)) | a9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_30220(uint64_t a1)
{
  v1 = *(a1 + 4) + 1388665877 * ((((2 * a1) | 0xD6B7D582) - a1 + 346297663) ^ 0x66F6882D);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_3034C@<X0>(unsigned int a1@<W8>)
{
  v5 = 101 * (v1 ^ 0x15B);
  *v2 = v5 ^ (a1 >> 5) ^ 0x4F194BB;
  v10 = v8;
  v9 = (v5 + 37) ^ ((&v9 ^ 0x2ACB2A7A) * v4);
  (*(v3 + 8 * (v5 ^ 0x8A6)))(&v9);
  v9 = (v5 + 37) ^ (((((&v9 | 0x1FC862B4) ^ 0xFFFFFFFE) - (~&v9 | 0xE0379D4B)) ^ 0xCAFCB731) * v4);
  v10 = v7;
  (*(v3 + 8 * ((v5 + 1316) ^ 0xE42)))(&v9);
  return 0;
}

uint64_t sub_30464@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2 < 0x1F4762B5;
  v5 = a2 + 1;
  if (v4 == v5 > 0xFFFFFFFFE0B89D4ALL)
  {
    v4 = v5 + 524772021 < v2;
  }

  return (*(v3 + 8 * ((((a1 ^ 0x6A9) - 838) * v4) ^ a1)))();
}

uint64_t sub_3055C()
{
  STACK[0x4D0] = v1;
  STACK[0x4D8] = v0;
  v6 = STACK[0x228];
  v7 = (&STACK[0x540] + STACK[0x228]);
  STACK[0x4E0] = v7;
  STACK[0x228] = v6 + 320;
  v8 = *(v1 + 72);
  LODWORD(STACK[0x410]) = v8;
  LODWORD(STACK[0x438]) = *(v1 + 76);
  LODWORD(STACK[0x424]) = *(v1 + 80);
  LODWORD(STACK[0x2A4]) = *(v1 + 84);
  v9 = *(v1 + 96);
  if (v9 == 2)
  {
    LODWORD(STACK[0x374]) = *(v1 + 88);
    return sub_3DC90();
  }

  else if (v9 == 1)
  {
    v10 = *(v0 + ((v5 + 1924) ^ (v2 - 2232)) + 744821262) ^ v4;
    v11 = ((*(v0 + (v2 + 744821264)) ^ v4) << 16) | ((*(v0 + (v2 + 744821265)) ^ v4) << 24) | v10 | ((*(v0 + (v2 + 744821263)) ^ v4) << 8);
    *v7 = v11 - 1640847268 - 2 * (v11 & 0x1E32A85E ^ v10 & 2);
    return (*(v3 + 8 * ((474 * ((v2 + 744821266) < 0x40)) ^ (v5 + 953))))(744821262);
  }

  else
  {
    return sub_26180(v8);
  }
}

uint64_t sub_30768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v25 - 144) = v24 + 896639297 * ((-1577565449 - ((v25 - 144) | 0xA1F842F7) + ((v25 - 144) | 0x5E07BD08)) ^ 0x4AAC2B70) - 817;
  *(v25 - 136) = v22;
  *(v25 - 128) = v23;
  *(v25 - 120) = &a18;
  *(v25 - 112) = &a18;
  (*(v18 + 8 * (v24 + 246)))(v25 - 144);
  v26 = ((213 * (v24 ^ 0x840)) ^ 0xFFFFF957) + v19;
  v27 = ((2 * (v26 & (v21 + 1))) & 0x1010 | v26 & (v21 + 1)) ^ (2 * (v26 & (v21 + 1))) & (v26 ^ 0xD90E55B9);
  v28 = ((v24 + 1385036663) & 0xAD71FFF4 ^ 0x36443A96 ^ (2 * (v26 ^ 0xD90E55B9))) & (v26 ^ 0xD90E55B9) ^ (2 * (v26 ^ 0xD90E55B9)) & 0x1B221C90;
  v29 = v28 ^ 0x9220491;
  v30 = (v28 ^ 0x10000811) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x6C887244) & v29 ^ (4 * v29) & 0x1B221C90;
  v32 = (v31 ^ 0x8001010) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x13220C91)) ^ 0xB221C910) & (v31 ^ 0x13220C91) ^ (16 * (v31 ^ 0x13220C91)) & 0x1B221C90;
  v34 = v32 ^ 0x1B221C91 ^ (v33 ^ 0x12200800) & (v32 << 8);
  v35 = (v34 << 16) & 0x1B220000 ^ v34 ^ ((v34 << 16) ^ 0x1C910000) & (((v33 ^ 0x9021481) << 8) & 0x1B220000 ^ 0x19220000 ^ (((v33 ^ 0x9021481) << 8) ^ 0x221C0000) & (v33 ^ 0x9021481));
  v36 = (((((v25 - 144) | 0xE3CB47FA) ^ 0xFFFFFFFE) - (~(v25 - 144) | 0x1C34B805)) ^ 0xC88CF5B) * v20;
  *(v25 - 144) = a15;
  *(v25 - 132) = v36 + v24 - 1547;
  *(v25 - 128) = v36 ^ v26 ^ (2 * v35) ^ 0x2EBCFFE9;
  v37 = (*(v18 + 8 * (v24 ^ 0x16C)))(v25 - 144);
  return (*(v18 + 8 * (((*(v25 - 136) != 1700203916) | (4 * (*(v25 - 136) != 1700203916))) ^ v24)))(v37);
}

uint64_t sub_309DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(a40) = v62;
  v64 = (*(v61 + 8 * (v60 + 1723)))(v63 + 16, 0);
  v65 = *(v63 + 16);
  *(v63 + 4) = *(v63 + 24);
  *(v63 + 8) = v65;
  *(v63 + 12) = (*(v61 + 8 * (v60 ^ 0xB8B)))(v64);
  v66 = (*(v61 + 8 * (v60 + 1655)))();
  *v63 = v66;
  return sub_30A44(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_30A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v66 = *(v61 + 4 * (v63 - 1));
  *(v61 + 4 * v63) = *(v64 + 4 * v59) + v59 + ((1664525 * (v66 ^ (v66 >> 30))) ^ *(v61 + 4 * v63));
  v67 = 1504884919 * ((0xCFBC738B6DF12B4CLL - (a59 | 0xCFBC738B6DF12B4CLL) + a58) ^ 0xA4F52BAE6C85B22ELL);
  *(v65 - 156) = 1 - v67;
  *(v65 - 184) = v63 + 1 - v67;
  *(v65 - 176) = v67 + 623;
  *(v65 - 164) = v67 + v60 + 55969614;
  *(v65 - 160) = v67 ^ (v60 - 1592805263) ^ 9;
  *(v65 - 192) = v60 - 1592805263 + v67;
  *(v65 - 188) = (v60 - 1592805250) ^ v67;
  v68 = (*(v62 + 8 * (v60 + 2068)))(v65 - 192);
  return (*(v62 + 8 * *(v65 - 168)))(v68);
}

uint64_t sub_30B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(a28 + 52) += (v30 - 185) ^ 0x145;
  LODWORD(STACK[0x278]) = *(a28 + 360);
  STACK[0x228] -= 2432;
  LODWORD(STACK[0x360]) = -1640847268;
  return (*(v29 + 8 * (((v28 == -1640847268) * (((v30 - 636267519) & 0x25ECAF8F) - 79)) ^ (v30 + 154))))();
}

uint64_t sub_30D18()
{
  v7 = *(v1 + v3 + 16);
  v8 = (v5 + v0);
  *v8 = *(v1 + v3);
  v8[1] = v7;
  return (*(v6 + 8 * ((734 * (((v4 - 671) ^ 0x1C4) == (v2 & 0xFFFFFFFFFFFFFFE0))) ^ v4)))();
}

uint64_t sub_30D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, int a19, char a20, int a21, int a22, uint64_t a23, char *a24, int *a25, int a26, char *a27, char *a28)
{
  a14 = 1773297654;
  v30 = *(a2 + 4);
  v31 = *(a2 + 8);
  v32 = 1556366573 * (&a21 ^ 0x64E423EA);
  a27 = &a15;
  a28 = &a17;
  a26 = v29 - v32 + 103;
  a25 = &a14;
  a23 = v31;
  a24 = &a20;
  a21 = -145834977 - v32 + 90 * (v29 ^ 0x11B) + v30;
  v34 = (*(v28 + 8 * (v29 + 2014)))(&a21);
  return (*(v28 + 8 * ((55 * (a22 == -1640847268)) ^ v29)))(v34, a2);
}

void sub_30E40(uint64_t a1)
{
  v1 = *(a1 + 8) + 50899313 * ((((2 * a1) | 0x2240E61C) - a1 - 287339278) ^ 0x3BEB5974);
  v2 = *(&off_C1600 + v1 - 123) - 8;
  v3 = *a1;
  (*&v2[8 * v1 + 16904])(*(&off_C1600 + (v1 ^ 0x16B)) - 4, sub_226BC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_3124C@<X0>(unsigned int a1@<W0>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, int a54, int a55, int a56, uint64_t a57, int a58, unsigned int a59)
{
  v75 = v65;
  v76 = v64;
  v73 = v67;
  v74 = v66;
  if (v60 == 32)
  {
    LODWORD(a37) = 0;
    v72 = *(&off_C1600 + a56);
    v69 = 19;
    goto LABEL_7;
  }

  if (v60 == 20)
  {
    LODWORD(a37) = 0;
    v72 = *(&off_C1600 + a54) - 12;
    v69 = 15;
LABEL_7:
    LODWORD(a41) = v69;
    LODWORD(a39) = 1;
    v68 = a33;
    goto LABEL_9;
  }

  v68 = a33;
  if (v60 == 16)
  {
    LODWORD(a37) = 0;
    v72 = *(&off_C1600 + a52);
    LODWORD(a41) = 18;
    LODWORD(a39) = 1;
  }

  else
  {
    v72 = 0;
    LODWORD(a39) = 0;
    LODWORD(a41) = 0;
    LODWORD(a37) = 1;
  }

LABEL_9:
  LODWORD(a40) = a2 + 359;
  v70 = 1380333833 * ((v63 - 192) ^ 0xBE52AB8A);
  *(v63 - 168) = v59 + 1168;
  *(v63 - 160) = &STACK[0x540] + v68;
  *(v63 - 176) = a3 + 528;
  *(v63 - 144) = 0;
  *(v63 - 136) = 0;
  *(v63 - 128) = &STACK[0x364];
  *(v63 - 192) = a3 + 800;
  *(v63 - 148) = ((2 * v61) & 0xAF13EBB2) - v70 + (v61 ^ 0x5789F484 ^ ((a2 - 247) | 0x110)) - 1074303425;
  *(v63 - 184) = a2 - v70 + 1519;
  (*(v62 + 8 * (a2 + 2115)))(v63 - 192);
  return (*(v62 + 8 * ((1704 * (*(v63 - 152) == -1640847268)) ^ a40)))(a1, 516, 4288126212, 1640887173, a59, 49614557, 3608, 260, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v72, a39, a40, a41, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), a50);
}

uint64_t sub_31424@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  LODWORD(a26) = v35;
  v41 = 843532609 * ((0x97F028591B1198DELL - (v38 | 0x97F028591B1198DELL) + a24) ^ 0xF59FE393F452107FLL);
  *(v40 - 160) = v37;
  *(v40 - 156) = 1961937446;
  v55 = *(v39 + 8 * (a3 ^ (a2 + 57)));
  v42 = a1 + a3;
  v54 = *(v39 + 8 * (a1 + a3 - 590));
  v43 = *v54;
  *(v40 - 152) = 623681534 - v41 + a3;
  *(v40 - 148) = v41;
  STACK[0x5D0] = v43 + v41;
  v44 = (a3 - 490103593) ^ v41;
  STACK[0x5C0] = v41;
  v45 = a3 - 490103631 + v41;
  *(v40 - 140) = v45;
  *(v40 - 136) = v44;
  *(v40 - 120) = v45 - 37;
  (*(v36 + 8 * (v42 + 1652)))(v40 - 152);
  return (*(a35 + 8 * *(v40 - 144)))(a35, v46, v47, v48, v49, v50, v51, v52, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v54, v55, a29, a30);
}

uint64_t sub_3142C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v11.val[0].i64[0] = (v5 - v7 - 1) & 0xF;
  v11.val[0].i64[1] = (v5 - v7 + 14) & 0xF;
  v11.val[1].i64[0] = (v5 - v7 + 13) & 0xF;
  v11.val[1].i64[1] = (v5 - v7 + ((((a1 - 117) | 0x31) + 75) | 0x4C) - 64) & 0xF;
  v11.val[2].i64[0] = (v5 - v7 + 11) & 0xF;
  v11.val[2].i64[1] = (v5 - v7 + 10) & 0xF;
  v11.val[3].i64[0] = (v5 - v7 + 9) & 0xF;
  v11.val[3].i64[1] = (v5 - v7) & 0xF ^ 8;
  *(v9 + -8 - v7 + v5) = veor_s8(veor_s8(veor_s8(*(v4 + v11.val[0].i64[0] - 7), *(a2 + -8 - v7 + v5)), veor_s8(*(v3 + v11.val[0].i64[0] - 7), *(v2 + v11.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v11, xmmword_A91E0), 0x7575757575757575)));
  return (*(v8 + 8 * ((76 * (((((a1 - 373) | 0x131u) ^ 0x3ADLL) & v6) - 8 != v7)) ^ ((a1 - 373) | 0x131))))(xmmword_A91E0);
}

uint64_t sub_3163C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, unint64_t a19, int a20, int a21, int a22, int a23)
{
  v29 = (v23 - 825) | 0x403;
  *a16 = a1;
  LODWORD(STACK[0x23C]) = a21;
  STACK[0x240] = a19;
  LODWORD(STACK[0x248]) = a23 - v24 + 1409796786;
  STACK[0x250] = a9 + (v24 - 1773297654);
  v30 = v23;
  v31 = (*(v25 + 48 * v28 + 8))(a7);
  return (*(v26 + 8 * ((1353 * (v31 + v27 - ((2 * v31) & 0x3C6550B8) == (v29 ^ (v27 + 1187)))) ^ v30)))();
}

uint64_t sub_31714(int a1, double a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37)
{
  v42 = (a9 + (v39 + v37));
  v43 = *v42;
  v44 = v42[1];
  v45 = (&a37 + v39);
  *v45 = vaddq_s8(vsubq_s8(v43, vandq_s8(vaddq_s8(v43, v43), a6)), a7);
  v45[1] = vaddq_s8(vsubq_s8(v44, vandq_s8(vaddq_s8(v44, v44), a6)), a7);
  return (*(v41 + 8 * (((((v38 - 286) ^ v40) + v39 == 64) * a1) ^ v38)))();
}

uint64_t sub_317DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v56 = ((v53 & 0xC6CC4B02) << ((v52 + 83) & 0x45 ^ 0x45)) & (v53 ^ 0xF68863B1) ^ v53 & 0xC6CC4B02;
  v57 = ((((v52 + 653658801) & 0xD909F3E7) + 1805146146) ^ (2 * (v53 ^ 0x730067B1))) & (v53 ^ 0x730067B1) ^ (2 * (v53 ^ 0x730067B1)) & 0xB5CC2CB2;
  v58 = v57 ^ 0x94442491;
  v59 = (v57 ^ 0xA1040881) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0xD730B2CC) & v58 ^ (4 * v58) & 0xB5CC2CB0;
  v61 = (v60 ^ 0x95002090) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x20CC0C33)) ^ 0x5CC2CB30) & (v60 ^ 0x20CC0C33) ^ (16 * (v60 ^ 0x20CC0C33)) & 0xB5CC2CB0;
  v63 = v61 ^ 0xB5CC2CB3 ^ (v62 ^ 0x14C00800) & (v61 << 8);
  return (*(v55 + 8 * ((1431 * ((v54 ^ (4 * v53) ^ (8 * ((v63 << 16) & 0x15CC0000 ^ v63 ^ ((v63 << 16) ^ 0xCB30000) & (((v62 ^ 0xA10C2483) << 8) & 0x15CC0000 ^ 0x11C00000 ^ (((v62 ^ 0xA10C2483) << 8) ^ 0xC2C0000) & (v62 ^ 0xA10C2483))))) == -1857009264)) ^ v52)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_31994(__n128 a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v10 = (a6 + 4 * v7);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((v8 + v7 - 437 == a5) * a7) ^ a4)))();
}

uint64_t sub_31A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = 1388665877 * ((~(v72 - 192) & 0x4073C288 | (v72 - 192) & 0xBF8C3D77) ^ 0xCDDEA064);
  *(v72 - 168) = STACK[0x3D8];
  *(v72 - 160) = a16;
  *(v72 - 140) = (v69 ^ 0x7585C77E) - v73 + (a60 & 4) - 50294;
  *(v72 - 144) = 21 * ((~(v72 + 64) & 0x88 | (v72 + 64) & 0x77) ^ 0x64) + 43;
  *(v72 - 176) = a30;
  *(v72 - 192) = &STACK[0x28C];
  *(v72 - 136) = a31;
  *(v72 - 152) = v68 - v73 - 1058;
  *(v72 - 148) = (((2 * a68) & 0xB83AAD68) - 337380000 + ((((v68 + 801011646) & 0xD04187DF ^ 0x5C1D4B28) + (v68 ^ 0x20C)) ^ a68)) ^ v73;
  v74 = (*(v71 + 8 * (v68 + 1170)))(v72 - 192);
  v75 = *(v72 - 184);
  LODWORD(STACK[0x360]) = v75;
  return (*(v71 + 8 * ((438 * (v75 == v70)) ^ v68)))(v74);
}

uint64_t sub_31D10@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *a28 = 1;
  v37 = *v35;
  v38 = 1504884919 * ((~((v36 - 152) | 0x4CE0F52802DA3DC4) + ((v36 - 152) & 0x4CE0F52802DA3DC4)) ^ 0x9F4F506D06E67520);
  v39 = v38 ^ (a3 - 1718729577);
  *(v36 - 124) = v38 + a3 - 1584571152;
  *(v36 - 120) = v39 ^ 9;
  *(v36 - 116) = 1 - v38;
  STACK[0x5B8] = v38 + 5119;
  *(v36 - 152) = a3 - 1718729577 + v38;
  *(v36 - 148) = v39 ^ 0x5D;
  STACK[0x5B0] = v37 - v38;
  v40 = (*(a1 + 8 * (a3 ^ (a2 - 2216))))(v36 - 152);
  return (*(a35 + 8 * *(v36 - 128)))(v40);
}

uint64_t sub_31D18@<X0>(unint64_t a1@<X3>, uint64_t a2@<X7>, unint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10, uint64_t a11, _BYTE *a12, uint64_t a13, _BYTE *a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, uint64_t a18, uint64_t a19, _BYTE *a20, uint64_t a21, _BYTE *a22, uint64_t a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  *a8 = v58;
  *a15 = BYTE3(v58);
  a8[1] = BYTE6(v59);
  a7[1] = BYTE4(v58) ^ 0x30;
  a12[20] = a3;
  *a16 = BYTE5(v59);
  a12[64] = BYTE2(v58);
  a12[50] = BYTE3(a2);
  *a17 = BYTE1(v58);
  *a9 = a2;
  a12[26] = BYTE6(a2);
  *a25 = BYTE4(a2);
  a7[2] = v55 >> ((a30 + 40) & 0x7B ^ 0x31u);
  a12[45] = BYTE5(a2);
  *a26 = HIBYTE(a2);
  a12[11] = BYTE2(v55);
  *a27 = BYTE1(a3);
  *a7 = HIBYTE(v59);
  *a10 = BYTE2(a3);
  a12[52] = BYTE4(a3);
  *a14 = BYTE3(a3);
  v60 = *(a5 + 526 + (((a1 >> 33) & 0x80 | (a3 >> 41) & 0x7F) ^ 0x1D));
  a12[9] = BYTE6(a3);
  *a20 = (((v60 >> 4) | (16 * v60)) ^ 0xB ^ (((v60 >> 4) | (16 * v60)) >> 1) & 0x55) + 95;
  LOBYTE(v60) = *(a6 + (((a3 >> 51) & 0xE0 | (a1 >> 59)) ^ 0xF3));
  a12[39] = v57 ^ 0x53;
  *a24 = (v60 ^ 0xBC) + 74;
  LOBYTE(v60) = *(a6 + (((v57 >> 3) & 0xE0 | (v57 >> 11)) ^ 0xEF));
  v61 = (v56 >> 38) ^ 0xB0;
  a12[49] = BYTE5(v57) ^ 0xBB;
  a12[63] = BYTE3(v57) ^ 0xC1;
  a12[13] = BYTE6(v57) ^ 0x15;
  *a22 = BYTE2(v57) ^ 0x1D;
  v62 = v61 & 0xFC | (v56 >> 46) & 3;
  *a28 = (v60 ^ 0xBC) + 74;
  a12[36] = BYTE4(v57) ^ 0xF2;
  a12[60] = BYTE1(v56) ^ 0x54;
  a12[27] = BYTE2(v56) ^ 0x11;
  a12[40] = (v57 ^ 0x4F15BBF2C11DE053) >> (v55 & 0x38) >> (v55 & 0x38 ^ 0x38);
  a12[53] = BYTE3(v56) ^ 5;
  a12[59] = v56 ^ 0x4C;
  a12[22] = BYTE4(v56) ^ 0x2D;
  a12[37] = -35 * ((((v61 & 0xFC | (v56 >> 46) & 3) ^ 0x86) - ((2 * v61) & 0xD0) + (*(a11 + (v62 ^ 0x97)) ^ 0xB2) + ((2 * *(a11 + (v62 ^ 0x97))) & 0x64) + 79) ^ 0x85);
  v63 = *(a5 + 526 + (((v56 >> 41) & 0x80 | (v56 >> 49) & 0x7F) ^ 0x56));
  a12[29] = HIBYTE(v56) ^ 0x30;
  a12[57] = (((v63 >> 4) | (16 * v63)) ^ 0xB) + ((((v63 >> 4) | (16 * v63)) >> 1) & 0x55) - 2 * ((((v63 >> 4) | (16 * v63)) >> 1) & 0x55 & (((v63 >> 4) | (16 * v63)) ^ 0xB)) + 95;
  **a18 = HIDWORD(a13) + 1;
  v65 = *a18;
  v66 = *(*a18 + 15) | (*(*a18 + 32) << 8) | (*(*a18 + 7) << 16) | (*(*a18 + 34) << 24) | (*(*a18 + 61) << 40);
  v67 = *(&off_C1600 + (a30 ^ 0x2DD));
  v68 = *(v67 + 6 + (((((69 * *(*a18 + 55)) - ((69 * *(*a18 + 55)) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * *(*a18 + 55))) ^ 0xD5)) - 18;
  v69 = ((v68 ^ 0x57) >> 2) | ((v68 ^ 0x57u) << 6);
  v70 = ((*(*a18 + 51) << 56) | (*(*a18 + 56) << 48)) ^ 0x652D76FB97CB0B98 ^ (((0xFFFFFFFF00000000 * v69) ^ (v66 - (v66 & 0xFFFFFF00FFFFFFFFLL | (v69 << 32))) ^ ((v69 << 32) - ((v69 << 33) & 0x17400000000) - 0x23B97D4526DB0730) ^ 0xDC4682BAD924F8D0) + v66);
  v74 = ((v65[4] >> 4) | (16 * v65[4])) ^ 0x5CLL;
  LOBYTE(v66) = (*(v67 + 6 + ((69 * *(*a18 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v71 = ((v66 >> 2) | (v66 << 6)) << 32;
  v72 = *(*a18 + 8) << 24;
  v73 = *(*a18 + 33) << 16;
  v75 = ((((v73 & 0x100000 ^ 0x781BBCDE1D9DE12 ^ ((((((*(v67 + 537 + v74) >> 5) | (8 * *(v67 + 537 + v74))) << 8) ^ 0xB1C7A0AB957A29B0) & (*(*a18 + 19) ^ 0xF1CFFAEFFDFAFFF4) | *(*a18 + 19) & 0x4F) ^ 0xCD26C7B655957EB6) & (v73 ^ 0xFDEFFFFFFFFFFFFFLL)) & ~v72 | v72 & 0xDE000000) ^ 0x92B5FF71F161211) & ~v71 | v71 & 0xD800000000) ^ ((v65[38] << 40) | (v65[43] << 48));
  return sub_32524(0xFFFFFF0000000000 * v65[12], 0xDA0000000000, v70, ((v75 & 0x4AF54021979D7FCDLL ^ (v65[46] << 56) & 0x4A00000000000000 ^ 0xBD8EBFDE6862A132) & ((v65[46] << 56) & 0xB500000000000000 ^ 0x99CF0AF05A20E132 ^ v75 & 0xB50ABFDE68628032) | (v75 & 0x4AF54021979D7FCDLL ^ (v65[46] << 56) & 0x4A00000000000000) & 0x42304001859D1ECDLL) ^ 0xEBC589F77600FB37, ((*(*a18 + 17) << 32) | (*(*a18 + 16) << 40) | (*(*a18 + 30) << 48)) ^ __ROR8__(((*(*a18 + 21) << 51) | (*(*a18 + 35) << 43) | (*(*a18 + 6) << 35) | __ROR8__(*(*a18 + 54), 5)) ^ 0x2D9685FDC006DD71, 35) ^ (*(*a18 + 42) << 56) ^ 0x3DE59BE3F43C28CBLL, v67 + 798, a37, a55, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_32628(_DWORD *a1)
{
  v2 = *a1 ^ (1380333833 * (a1 ^ 0xBE52AB8A));
  result = (*(*(&off_C1600 + (v2 - 1212455429)) + (v2 - 1212453193) - 1))(*(&off_C1600 + (v2 - 1212455409)), sub_2518C);
  v4 = **(&off_C1600 + (v2 ^ 0x48449AFE));
  if (result)
  {
    v4 = 1640887010;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_326DC(uint64_t a1)
{
  v2 = 843532609 * (((a1 | 0xA33FA57C) - (a1 & 0xA33FA57C)) ^ 0xB383D222);
  v3 = *(a1 + 20) ^ v2;
  v4 = *a1 - v2;
  v5 = *(a1 + 32) - v2;
  v6 = *(a1 + 8);
  v7 = 1785193651 * ((255890276 - (v9 | 0xF409364) + (v9 | 0xF0BF6C9B)) ^ 0x730FE68D);
  v12 = *(a1 + 24);
  v13 = ((((v5 ^ 0xF473D9E5) + 193734171) ^ ((v5 ^ 0x6385F1E8) - 1669722600) ^ ((v5 ^ 0x25301004) - 623906820)) - 1217585628) ^ v7;
  v11 = (v4 ^ ((v4 ^ 0x795409DE) - 548078254) ^ ((v4 ^ 0xF5EC8E0E) + 1408006786) ^ ((v4 ^ 0x2BB8727D) - 1917286669) ^ ((v4 ^ 0xFEFFFEDD) + 1493109331) ^ 0x7E18C2B6) - v7;
  v10 = v6;
  v9[0] = v3 - v7 - 1421512189;
  result = (*(*(&off_C1600 + (v3 ^ 0x54BA8FCA)) + (v3 ^ 0x54BA8624) - 1))(v9);
  *(a1 + 16) = v9[1];
  return result;
}

void sub_3290C(uint64_t a1)
{
  v1 = *(a1 + 12) - 210068311 * (a1 ^ 0x92D63FA4);
  v2 = *(&off_C1600 + (v1 ^ 0x811)) - 8;
  v3 = *&v2[8 * ((46 * ((*&v2[8 * (v1 ^ 0x1D8)])(32, 0x101004023FF3BD5) != 0)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_329A0()
{
  v5 = v3 - v4;
  v11 = v8;
  v10 = v1 + ((&v10 & 0x82917CFE | ~(&v10 | 0x82917CFE)) ^ 0x57A5A97B) * v2 + v3 + 1090;
  (*(v0 + 8 * (v3 + v1 + 1826)))(&v10);
  v11 = v8;
  v10 = (v3 + v1) ^ (((&v10 & 0x2BB461CD | ~(&v10 | 0x2BB461CD)) ^ 0xFE80B448) * v2);
  (*(v0 + 8 * (v3 + v1 + 1857)))(&v10);
  v11 = v7;
  v10 = (v5 - 509) ^ ((((&v10 | 0xF91B369A) - &v10 + (&v10 & 0x6E4C960)) ^ 0xD3D01CE0) * v2);
  (*(v0 + 8 * (v5 + 1348)))(&v10);
  return v9 ^ 0x9E32A85C;
}

uint64_t sub_32B74@<X0>(int a1@<W8>)
{
  v6 = (v4 + v1 + 16);
  v7 = v2[1];
  *(v6 - 1) = *v2;
  *v6 = v7;
  return (*(v5 + 8 * (((((((v3 - 232) | 0x80) - 649) & a1) != 32) * (((v3 - 232) | 0x80) - 305)) ^ ((v3 - 232) | 0x80))))(v4 + v1 + 48);
}

uint64_t sub_32BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = *(v39 + 1428);
  STACK[0x228] = a39 + 256;
  STACK[0x468] = v39 + 1432;
  if (v41 <= 0x20 && ((1 << v41) & 0x100110000) != 0)
  {
    return (*(v40 + 8 * ((1121 * (*(a9 + 476) == ((a5 + 359) ^ 0x2AA))) ^ (a5 + 359))))();
  }

  STACK[0x228] -= 256;
  return (STACK[0x418])(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_32DD8@<X0>(int a1@<W8>)
{
  v3 = *v8;
  v4 = v8[1];
  v5 = (v2 - 184);
  memset((v2 - 184), 57, 16);
  v6 = 1037613739 * ((((v2 - 168) | 0x3EBBD82F) + (~(v2 - 168) | 0xC14427D0)) ^ 0xEFB9F551);
  v5[7] = v3;
  v5[3] = v5;
  v5[4] = v4;
  v5[5] = &v9;
  *(v2 - 168) = v6 + 819985984;
  *(v2 - 136) = (a1 + 1612) ^ v6;
  result = (*(v1 + 8 * (a1 + 2380)))(v2 - 168);
  *(v8 + 4) = *(v2 - 132);
  return result;
}

uint64_t sub_32EF8(uint64_t a1, uint64_t a2)
{
  *(a2 + v6 - 1) = (v7 ^ (v5 + 1)) * (v5 + 18);
  v2 = *(v9 + 8 * (((v6 == 1) * v8) ^ (v4 + 548)));
  return v2(v2);
}

void a8f26637447()
{
  v0 = *(&off_C1600 + ((-35 * (dword_C8978 ^ 0xD2 ^ qword_C86F8)) ^ byte_A8FE0[byte_A4980[(-35 * (dword_C8978 ^ 0xD2 ^ qword_C86F8))] ^ 0xEE]) - 222);
  v1 = *(&off_C1600 + ((-35 * ((qword_C86F8 + *v0) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 + *v0) ^ 0xD2))] ^ 0xB3]) - 44);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = (1865875933 * v2) ^ 0x1E71746347E125D2;
  *(v1 - 4) = 1865875933 * (v2 ^ 0x1E71746347E125D2);
  v5[0] = (1380333833 * (v5 ^ 0xBE52AB8A)) ^ 0x48449A90;
  LOBYTE(v1) = -35 * (*v0 ^ 0xD2 ^ *(v1 - 4));
  v3 = *(&off_C1600 + ((-35 * ((qword_C86F8 - dword_C8978) ^ 0xD2)) ^ byte_9C650[byte_A8DE0[(-35 * ((qword_C86F8 - dword_C8978) ^ 0xD2))] ^ 0xF1]) - 60) - 8;
  (*&v3[8 * (byte_9C750[byte_A8EE0[v1] ^ 0xFC] ^ v1) + 18008])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_331CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 959689982;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v5 = *(a1 + 96) + 528;
  v6 = 210068311 * (&v11 ^ 0x92D63FA4);
  v11 = *(a2 + 8) + (*(a2 + 4) - v4);
  v12 = 738 - v6;
  v15 = (v4 + 81294678) ^ v6;
  v13 = v5;
  (*(a3 + 19008))(&v11);
  v9 = v14;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v4);
  return v9 ^ 0xF9D8AA1A;
}

uint64_t sub_332FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, unsigned int a14, char *a15, char *a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 1785193651 * ((((&a14 | 0xF84DFEFA) ^ 0xFFFFFFFE) - (~&a14 | 0x7B20105)) ^ 0x84028B13);
  a15 = &a13;
  a16 = &a10;
  a14 = 126794179 - v23;
  a19 = v22 - v23 + 840;
  a18 = v19;
  v24 = (*(v20 + 8 * (v22 + 1284)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == v21) * (((v22 - 772) | 2) + ((v22 + 222) ^ 0xFFFFFAD1))) ^ v22)))(v24);
}

uint64_t sub_333B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  v19 = (v17 - 769264447) & 0x2DDA0B3F;
  a15 = (v19 + 1212454771) ^ (((((2 * &a15) | 0xD69DB556) - &a15 + 347153749) ^ 0x551C7121) * v18);
  v20 = (*(v16 + 8 * (v19 + 1572)))(&a15);
  return (*(v16 + 8 * (((a16 == -1640847268) * ((v19 + 735986817) & 0x5421BB7D ^ 0x859)) ^ v19)))(v20);
}

uint64_t sub_334B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = STACK[0x298];
  v8 = STACK[0x2F8];
  STACK[0x418] = *(v6 + 8 * (a6 - 280));
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v6 + 8 * ((v10 * (((a6 - 251) | 0x822) + (((a6 - 251) | 0x822) ^ 0xE18) - 3784)) ^ ((a6 - 251) | 0x822))))(a1, 516, 4288126212);
}

void sub_335A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 24) + 896639297 * (((a1 | 0xE975A684) - (a1 | 0x168A597B) + 378165627) ^ 0xFDDE30FC);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_336D8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v8 = (v2 - 257) | 0x601;
  *(v7 - 108) = v8 - 1447 - 896639297 * ((v7 - 120) ^ 0x14AB9678);
  *(v7 - 120) = a1;
  (*(v5 + 8 * (v8 + 655)))(v7 - 120);
  v9 = *(v7 - 112);
  *(v7 - 120) = v4;
  *(v7 - 108) = v8 - 1447 - 896639297 * ((((v7 - 120) | 0x28B7584D) - ((v7 - 120) & 0x28B7584D)) ^ 0x3C1CCE35);
  (*(v5 + 8 * (v8 ^ 0xF91)))(v7 - 120);
  v10 = (-1788877869 * (*(v7 - 112) + v9) + *(v7 - 112) * v9 + 2136596457) * v6;
  HIDWORD(a2) = (v10 ^ 0x79B3B7FE) - 1082131200 + ((v10 << (((v8 + 107) | 0xC1) + 52)) & 0xF3676FFC);
  *(v7 - 120) = v4;
  *(v7 - 112) = v8 - ((2 * ((v7 - 120) & 0x146EFAB8) - (v7 - 120) + 1804666179) ^ 0xAABB20B) * v3 - 471;
  *(v7 - 104) = &a2;
  v11 = (*(v5 + 8 * (v8 ^ 0xFF2)))(v7 - 120);
  return sub_383C8(v11);
}

uint64_t sub_336E8(uint64_t a1)
{
  v3 = (*(v1 + 19488))();
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

  (*(v1 + 18744))(a1);
  return v5;
}

uint64_t sub_33768@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v11 = HIDWORD(v8) + HIDWORD(v6) + (*(v10 + 4 * a5) ^ v5);
  *(v10 + 4 * a3) = v11 + v5 - (a2 & (2 * v11));
  *(v10 + 4 * a5) = v5 + v9 - 877 + (v11 >> (-16 * (v9 ^ 0xDDu))) - 2 * (v11 >> (-16 * (v9 ^ 0xDDu))) - 370;
  return (*(v7 + 8 * (v9 ^ (42 * (a1 + 1 != a4)))))();
}

uint64_t sub_33834@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 57;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_33868(uint64_t a1)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(v7 + v8) ^ *(v1 + (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 2) ^ ((v8 & 0xF) * ((v4 ^ 0xBB) - 121)) ^ *(v3 + (v8 & 0xF)) ^ 0x39;
  return (*(v6 + 8 * ((249 * (v8 == 0)) ^ v4)))();
}

uint64_t sub_33AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * ((v11 - 1061796044) & 0x3F49BFF7 ^ 0x402)) ^ v11)))();
}

uint64_t sub_33B54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v19 = (a7 + v12) & v13;
  v20 = (*(v18 + 4 * v17) ^ v8) + v10 + a4 * (*(*(v11 + 8) + a2) ^ v8);
  *(v18 + 4 * v17) = v20 + ((v19 + v14) & v15 ^ (v8 + 1101)) - (v9 & (2 * v20));
  return (*(v7 + 8 * (v19 ^ ((a5 == 0) * v16))))();
}

uint64_t sub_33B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, unsigned int a15, char *a16, char *a17, uint64_t a18, uint64_t a19, int a20)
{
  v24 = 1785193651 * (((&a15 | 0x9C35C4AF) + (~&a15 | 0x63CA3B50)) ^ 0x1F854EB8);
  a19 = v21;
  a16 = &a11;
  a17 = &a13;
  a20 = v23 - v24 + 1708;
  a15 = 129495167 - v24;
  v25 = (*(v22 + 8 * (v23 ^ 0x9A8)))(&a15);
  return (*(v22 + 8 * (((*(v21 + 24) != ((v23 + 727) ^ (v20 + 904))) * ((v23 - 9) ^ 0xCC)) ^ v23)))(v25);
}

uint64_t sub_33C98@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34, int a35, int a36, unint64_t a37, unint64_t a38, unint64_t a39, unint64_t a40, unint64_t a41, uint64_t a42, unint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54, int a55, int a56)
{
  v60 = 1388665877 * ((((v59 - 192) | 0xE1EB0E70) - (v59 - 192) + ((v59 - 192) & 0x1E14F188)) ^ 0x6C466C9C);
  *(v59 - 184) = v57;
  *(v59 - 192) = v60 + v56 + 6;
  *(v59 - 188) = ((a1 ^ 0xFEFFADEF) + 1040047930 + ((2 * a1) & 0xFDFF5BDE)) ^ v60;
  v61 = (*(v58 + 8 * (v56 ^ 0x875)))(v59 - 192);
  v62 = STACK[0x23C];
  if (SLODWORD(STACK[0x23C]) > -342569639)
  {
    if (v62 > 1327583480)
    {
      v64 = a56;
      switch(v62)
      {
        case 1327583481:
          v66 = STACK[0x368];
          v65 = (a56 - 308) | 0x12C;
          STACK[0x3E8] = STACK[0x368];
          v63 = a39;
          STACK[0x3B0] = a39;
          v67 = 20;
          LODWORD(STACK[0x3BC]) = 20;
          LODWORD(STACK[0x23C]) = -2092445756;
          goto LABEL_30;
        case 1407306480:
          v65 = a56 - 8;
          v66 = STACK[0x368];
          STACK[0x3E8] = STACK[0x368];
          v63 = a43;
          STACK[0x3B0] = a43;
          v67 = 20;
          LODWORD(STACK[0x3BC]) = 20;
          LODWORD(STACK[0x23C]) = -2012722757;
          goto LABEL_30;
        case 2122798541:
          v65 = a56 - 8;
          v66 = STACK[0x368];
          STACK[0x3E8] = STACK[0x368];
          v63 = a37;
          STACK[0x3B0] = a37;
          v67 = 20;
          LODWORD(STACK[0x3BC]) = 20;
          LODWORD(STACK[0x23C]) = -1297230696;
          goto LABEL_30;
      }

      goto LABEL_29;
    }

    v64 = a56;
    v68 = a54;
    switch(v62)
    {
      case -342569638:
        v69 = a56 - 323;
        v70 = a56 - 252;
        break;
      case 452645422:
        v69 = (a56 - 324) | 1;
        v70 = a56 - 246;
        break;
      case 532368421:
        v66 = STACK[0x368];
        STACK[0x3E8] = STACK[0x368];
        v63 = a41;
        STACK[0x3B0] = a41;
        v67 = 20;
        LODWORD(STACK[0x3BC]) = 20;
        LODWORD(STACK[0x23C]) = 1407306480;
        v65 = a34;
        goto LABEL_30;
      default:
LABEL_29:
        v65 = v64 - 8;
        v66 = STACK[0x3E8];
        v63 = STACK[0x3B0];
        v67 = STACK[0x3BC];
        goto LABEL_30;
    }

LABEL_27:
    v71 = STACK[0x368];
    STACK[0x208] = *(v58 + 8 * v70);
    STACK[0x328] = v71;
    STACK[0x3D0] = v68;
    v72 = *(v71 + 68) & (v69 + 62);
    *(v71 + v72) = -71;
    return (*(v58 + 8 * ((2147 * (v72 > 0x37)) ^ v69)))(v61);
  }

  v63 = *(&off_C1600 + v56 - 275) - 8;
  if (v62 > -1217507698)
  {
    v64 = a56;
    v68 = a54;
    if (v62 == -1217507697)
    {
      v65 = a56 - 8;
      v66 = STACK[0x368];
      STACK[0x3E8] = STACK[0x368];
      STACK[0x3B0] = v63;
      v67 = 14;
      LODWORD(STACK[0x3BC]) = 14;
      LODWORD(STACK[0x23C]) = -342569638;
      goto LABEL_30;
    }

    if (v62 != -1137784698)
    {
      if (v62 == -422292637)
      {
        v65 = a56 - 8;
        v66 = STACK[0x368];
        STACK[0x3E8] = STACK[0x368];
        STACK[0x3B0] = v63;
        v67 = 14;
        LODWORD(STACK[0x3BC]) = 14;
        LODWORD(STACK[0x23C]) = 452645422;
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v69 = a56 - 323;
    v70 = a56 - 272;
    goto LABEL_27;
  }

  v64 = a56;
  if (v62 == -2092445756)
  {
    v65 = a36 & 0x8245517F;
    v66 = STACK[0x368];
    STACK[0x3E8] = STACK[0x368];
    v63 = a40;
    STACK[0x3B0] = a40;
    v67 = 20;
    LODWORD(STACK[0x3BC]) = 20;
    LODWORD(STACK[0x23C]) = -1217507697;
    goto LABEL_30;
  }

  if (v62 == -2012722757)
  {
    v65 = a56 ^ 0x78;
    v66 = STACK[0x368];
    STACK[0x3E8] = STACK[0x368];
    STACK[0x3B0] = v63;
    v67 = 14;
    LODWORD(STACK[0x3BC]) = 14;
    LODWORD(STACK[0x23C]) = -1137784698;
    goto LABEL_30;
  }

  if (v62 != -1297230696)
  {
    goto LABEL_29;
  }

  v65 = a56 ^ 0x78;
  v66 = STACK[0x368];
  STACK[0x3E8] = STACK[0x368];
  v63 = a38;
  STACK[0x3B0] = a38;
  v67 = 20;
  LODWORD(STACK[0x3BC]) = 20;
  LODWORD(STACK[0x23C]) = -422292637;
LABEL_30:
  STACK[0x4C0] = v66;
  LODWORD(STACK[0x4CC]) = v67;
  STACK[0x270] = v63;
  return (*(v58 + 8 * ((92 * ((((v65 + 168) ^ ((*(v66 + 68) & 0x3Fu) + v67 > 0x3F)) & 1) == 0)) ^ v65)))(v61);
}

uint64_t sub_341C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2 - 1;
  STACK[0x478] = v7;
  *(a1 + v7) = ((v2 + 1) ^ v3) * (v2 + 18);
  return (*(v6 + 8 * (((STACK[0x478] == 0) * v4) ^ (v5 + 248))))();
}

uint64_t sub_341C8()
{
  v8 = v4 - 272;
  v9 = (v3 + v6 - 16);
  v15.val[1].i64[0] = (v3 + 13) & 0xF;
  v15.val[1].i64[1] = (v3 + 12) & 0xF;
  v15.val[2].i64[0] = (v3 + v8 - 1) & 0xF;
  v15.val[2].i64[1] = (v3 + 10) & 0xF;
  v15.val[3].i64[0] = (v3 + 9) & 0xF;
  v15.val[3].i64[1] = v3 & 0xF ^ 8;
  v16.val[0].i64[0] = (v3 + 7) & 0xF;
  v16.val[0].i64[1] = (v3 + 6) & 0xF;
  v16.val[1].i64[0] = (v3 + 5) & 0xF;
  v16.val[1].i64[1] = (v3 + 4) & 0xF;
  v16.val[2].i64[0] = (v3 + 3) & 0xF;
  v16.val[2].i64[1] = (v3 + 2) & 0xF;
  v16.val[3].i64[0] = (v3 + 1) & 0xF;
  v16.val[3].i64[1] = v3 & 0xF;
  v10 = *(v7 - 200);
  v11.i64[0] = 0x6161616161616161;
  v11.i64[1] = 0x6161616161616161;
  v12.i64[0] = 0x3939393939393939;
  v12.i64[1] = 0x3939393939393939;
  v15.val[0].i64[0] = v5 & 0xF;
  v15.val[0].i64[1] = (v3 + 14) & 0xF;
  v13.i64[0] = vqtbl4q_s8(v15, xmmword_A9260).u64[0];
  v13.i64[1] = vqtbl4q_s8(v16, xmmword_A9260).u64[0];
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v9, *(v2 + v15.val[0].i64[0] - 15)), veorq_s8(*(v15.val[0].i64[0] + v0 - 12), *(v15.val[0].i64[0] + v1 - 10))));
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v16.val[0], v16.val[0], 8uLL), v12), vmulq_s8(v13, v11)));
  *v9 = vextq_s8(v16.val[0], v16.val[0], 8uLL);
  return (*(v10 + 8 * ((105 * ((v3 & 0x10) != 16)) ^ v8)))(166 * (v8 ^ 0x1A5u), v3 + v6 - 32, (v3 & 0x10) - 16);
}

uint64_t sub_343C8@<X0>(int a1@<W8>)
{
  if ((a1 - 413236868) > 0x10 || ((1 << (a1 + 124)) & 0x10185) == 0)
  {
    return sub_34440();
  }

  v6 = (*(v2 + 48 * v1 + 40) & 1) == 0;
  return (*(v3 + 8 * (((v6 ^ (v4 - 123)) & 1 | (32 * ((v6 ^ (v4 - 123)) & 1))) ^ (v4 - 404390894))))();
}

uint64_t sub_34490@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 == v5 - 1226) * v6) ^ v3)))();
}

uint64_t sub_3459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  STACK[0x228] -= 432;
  v56 = STACK[0x35C];
  if (LODWORD(STACK[0x35C]) == -1797553106)
  {
    return (*(v54 + 8 * (((a43 + 785) * (v55 == -1640847268)) ^ (a6 + 226))))();
  }

  if (v56 == -1797553105)
  {
    return sub_3456C(-1640847268, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
  }

  if (v56 == -1797553108)
  {
    *(a37 + 1560) = *STACK[0x300];
    *(a37 + 1552) = *STACK[0x258];
    v58 = STACK[0x378];
    *(*STACK[0x378] + 488) = *(a36 + 8);
    *(*v58 + 480) = *a36;
    JUMPOUT(0x346D0);
  }

  LODWORD(a49) = STACK[0x404];
  return sub_4785C(2654120028, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, STACK[0x230], a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_347B8(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_347F4@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a3 + v3 - 16);
  v8.i64[0] = 0x3939393939393939;
  v8.i64[1] = 0x3939393939393939;
  v9 = veorq_s8(*v7, v8);
  v6[-1] = veorq_s8(v7[-1], v8);
  *v6 = v9;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v4 + a2 + 2094) ^ 0x93F)) ^ (v4 + a2))))();
}

uint64_t sub_34874@<X0>(int a1@<W1>, unsigned int a2@<W7>, unsigned int a3@<W8>)
{
  v15 = (v12 + 4 * v6);
  v16 = HIDWORD(v3) + v10 * (((a2 - 83) | v11) ^ (a3 + 204) ^ *(v5 + 4 * v6)) + (*v15 ^ a3) + HIDWORD(v9) + v8 * (*(v14 + 4 * v6) ^ a3);
  *(v15 - 1) = v16 + a3 - (a1 & (2 * v16));
  return (*(v7 + 8 * (((v6 + 1 != v4) * v13) ^ a2)))();
}

uint64_t sub_350D8(uint64_t result)
{
  v1 = 1504884919 * ((2 * (result & 0x442FFADC6ACD7726) - result + 0x3BD00523953288D9) ^ 0x17805F996EF13FC2);
  v2 = *(result + 8) + v1;
  v3 = *(result + 16) - v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if ((*(result + 36) + 1504884919 * ((2 * (result & 0x6ACD7726) - result - 1791850279) ^ 0x6EF13FC2)))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = *result - 1504884919 * ((2 * (result & 0x6ACD7726) - result - 1791850279) ^ 0x6EF13FC2);
  }

  else
  {
    v8 = *(result + 32) ^ (1504884919 * ((2 * (result & 0x6ACD7726) - result - 1791850279) ^ 0x6EF13FC2));
  }

  *(result + 24) = *(result + 4) ^ (1504884919 * ((2 * (result & 0x6ACD7726) - result - 1791850279) ^ 0x6EF13FC2)) ^ v8;
  return result;
}

uint64_t sub_35174()
{
  *(v7 - 128) = v4 & 0xF;
  v14.val[1].i64[0] = (v4 + 13) & 0xF;
  v14.val[1].i64[1] = (v4 + 12) & 0xF;
  v14.val[2].i64[0] = (v4 + 11) & 0xF;
  v14.val[2].i64[1] = (v4 + 10) & 0xF;
  v14.val[3].i64[0] = (v4 + 9) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF ^ 0xBLL;
  v15.val[0].i64[0] = (v4 + 7) & 0xF;
  v15.val[0].i64[1] = (v4 + 6) & 0xF;
  v15.val[1].i64[0] = (v4 + 5) & 0xF;
  v15.val[1].i64[1] = (v4 + 4) & 0xF;
  v15.val[2].i64[0] = (v4 + 3) & 0xF;
  v15.val[2].i64[1] = (v4 + 2) & 0xF;
  v8 = *(v7 - 160);
  v15.val[3].i64[0] = (v4 + 1) & 0xF;
  v15.val[3].i64[1] = *(v7 - 128);
  v9.i64[0] = 0x5959595959595959;
  v9.i64[1] = 0x5959595959595959;
  v10.i64[0] = 0x3939393939393939;
  v10.i64[1] = 0x3939393939393939;
  v11 = ((v6 - 666381099) & 0x27B82EFF ^ 0xFFFFFFFFFFFFF933) + v4;
  v14.val[0].i64[0] = v11 & 0xF;
  v14.val[0].i64[1] = (v4 + 14) & 0xF;
  v12.i64[0] = vqtbl4q_s8(v14, xmmword_A9260).u64[0];
  v12.i64[1] = vqtbl4q_s8(v15, xmmword_A9260).u64[0];
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v0 - 15 + v11), *(v3 + v14.val[0].i64[0] - 15)), veorq_s8(*(v14.val[0].i64[0] + v2 - 10), *(v14.val[0].i64[0] + v1 - 13))));
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15.val[0], v15.val[0], 8uLL), v10), vmulq_s8(v12, v9)));
  *(*(v7 - 120) - 15 + v11) = vextq_s8(v15.val[0], v15.val[0], 8uLL);
  return (*(v8 + 8 * ((2723 * ((v4 & 0x10) == 16)) ^ v6)))();
}

uint64_t sub_35340@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + v4);
  v6 = v4 - 1;
  *(a2 + v6) = v5;
  return (*(v2 + 8 * ((2011 * (v6 == (a1 + 471) - 1439)) ^ a1)))();
}

void sub_35888(uint64_t a1)
{
  v2 = *(&off_C1600 + ((-35 * (dword_C8938 ^ 0xD2 ^ qword_C86F8)) ^ byte_A02E0[byte_9CA50[(-35 * (dword_C8938 ^ 0xD2 ^ qword_C86F8))] ^ 0x4D]) - 99);
  v3 = *(&off_C1600 + (byte_9C750[byte_A8EE0[(-35 * (*v2 ^ qword_C86F8 ^ 0xD2))] ^ 0xE2] ^ (-35 * (*v2 ^ qword_C86F8 ^ 0xD2))) - 83);
  v4 = *v2 - &v8 + *(v3 - 4);
  v5 = 1865875933 * v4 - 0x391B123DE35E87B6;
  v6 = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  *v2 = v5;
  *(v3 - 4) = v6;
  LODWORD(v3) = *v2;
  v7 = *(&off_C1600 + ((-35 * (dword_C8938 ^ 0xD2 ^ qword_C86F8)) ^ byte_A8FE0[byte_A4980[(-35 * (dword_C8938 ^ 0xD2 ^ qword_C86F8))] ^ 0x1C]) + 102) - 8;
  (*&v7[8 * (byte_A02EC[(byte_9CA58[(-35 * ((v6 + v3) ^ 0xD2)) - 8] ^ 0x4D) - 12] ^ (-35 * ((v6 + v3) ^ 0xD2))) + 17304])(*(&off_C1600 + (byte_9C85C[(byte_A90E8[(-35 * (v3 ^ 0xD2 ^ v6)) - 8] ^ 0xCF) - 12] ^ (-35 * (v3 ^ 0xD2 ^ v6))) + 59) - 4, sub_226BC);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_35A74(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_35A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = (1380333833 * (((&a15 | 0x3013DC66) - &a15 + (&a15 & 0xCFEC2398)) ^ 0x8E4177EC)) ^ 0x48449A90;
  v17 = (*(v16 + 18952))(&a15);
  return (*(v16 + 8 * ((3105 * (a16 == -1640847268)) ^ 0x41B)))(v17);
}

uint64_t sub_35B50@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned int a55)
{
  v62 = (((v55 | 0xE46E3931) - v55 + (v55 & 0x1B91C6C8)) ^ 0x7363F522) * v59;
  *(v61 - 160) = v57 - v62 + 1861;
  *(v61 - 184) = a1 ^ v62;
  *(v61 - 176) = &STACK[0x210];
  *(v61 - 168) = &STACK[0x324];
  *(v61 - 192) = 0;
  v63 = (*(v60 + 8 * (v57 ^ 0x946)))(v61 - 192);
  v64 = *(v61 - 180);
  STACK[0x248] = v56;
  return (*(v60 + 8 * (((v64 == v58) * ((v57 ^ 0x14F) - 221)) ^ v57)))(v63, 50, 3202207610, 1640887173, 3883332711, a55, 3253694761, 2186844313, 0);
}

uint64_t sub_35C40()
{
  v5 = (((v2 - 1211) | 0x485u) ^ 0xFFFFFFFFFFFFF96ALL) + v3;
  *(v0 + v5) = *(v1 + v5) ^ 0x39;
  return (*(v4 + 8 * ((27 * (v5 == 0)) ^ v2)))();
}

void sub_35C84(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((1276357114 - (a1 ^ 0xD6E3A3E3 | 0x4C13A9FA) + (a1 ^ 0xD6E3A3E3 | 0xB3EC5605)) ^ 0xE8A2970A);
  if (*(*(a1 + 24) + 4) - 959689982 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 959689982;
  }

  else
  {
    v2 = 959689982 - *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 16) + 4) - 959689982 >= 0)
  {
    v3 = *(*(a1 + 16) + 4) - 959689982;
  }

  else
  {
    v3 = 959689982 - *(*(a1 + 16) + 4);
  }

  v6 = *(a1 + 24);
  v7 = v1 - 896639297 * (((&v6 ^ 0x4F7E9DFA) & 0x54511165 | ~(&v6 ^ 0x4F7E9DFA | 0x54511165)) ^ 0xF07BE518) - 8;
  v4 = *(&off_C1600 + v1 - 119) - 8;
  (*&v4[8 * (v1 ^ 0x832)])(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_35E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v28 = (v24 - 798178267) & 0x2F933BBE;
  *(v27 - 144) = v28 - 843532609 * ((((v27 - 144) | 0xEA96E24A) - ((v27 - 144) & 0xEA96E24A)) ^ 0xFA2A9514) - 238;
  *(v27 - 136) = a13;
  *(v27 - 128) = &a24;
  *(v27 - 120) = &a18;
  *(v27 - 112) = a14;
  *(v27 - 104) = &a18;
  v29 = (*(v25 + 8 * (v28 + 1447)))(v27 - 144);
  return (*(v25 + 8 * ((992 * ((((v26 - 1037285081) < 0x7FFFFFFF) ^ (v28 - 108) ^ 3) & 1)) ^ (v28 - 446))))(v29);
}

uint64_t sub_35EEC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + ((v3 - 1088835569) & 0x40E64EE4) - 1605;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((8 * (v5 == 0)) | (16 * (v5 == 0))) ^ (v3 - 935))))();
}

uint64_t sub_35FA0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v9 = (&STACK[0x2B0] + v6 + a2);
  v10 = vaddq_s8(vsubq_s8(*(a1 + v6 + 16), vandq_s8(vaddq_s8(*(a1 + v6 + 16), *(a1 + v6 + 16)), a3)), a4);
  *v9 = vaddq_s8(vsubq_s8(*(a1 + v6), vandq_s8(vaddq_s8(*(a1 + v6), *(a1 + v6)), a3)), a4);
  v9[1] = v10;
  return (*(v8 + 8 * ((1705 * ((v7 ^ 0x6F4) + v6 == v4)) ^ v5)))();
}

void sub_3611C(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) + 1967990427;
  v3 = *(*a1 + 4) + 1967990427;
  v4 = (v2 < 780196761) ^ (v3 < 780196761);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 780196761;
  }

  v1 = *(a1 + 24) + 1785193651 * ((a1 + 302034051 - 2 * (a1 & 0x1200AC83)) ^ 0x91B02695);
  __asm { BRAA            X14, X17 }
}

void sub_36264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  a16 = 0;
  a17 = a12;
  a19 = v22 - (((&a15 | 0xA83DC57A) - &a15 + (&a15 & 0x57C23A80)) ^ 0xC9077232) * v20 + v19 + 410;
  (*(v21 + 8 * (v19 ^ (v23 + 3382))))(&a15);
  JUMPOUT(0x329A4);
}

void sub_369D8(uint64_t a1)
{
  v1 = *(a1 + 16) + 1564307779 * ((-345993363 - (a1 | 0xEB608F6D) + (a1 | 0x149F7092)) ^ 0x8392BC81);
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 959689982 < 0)
  {
    v4 = 959689982 - v3;
  }

  else
  {
    v4 = v3 - 959689982;
  }

  v7 = v1 - 896639297 * ((-1320871300 - (&v6 ^ 0x81102555 | 0xB1451A7C) + (&v6 ^ 0x81102555 | 0x4EBAE583)) ^ 0xDB0156AE) - 719;
  v6 = v2;
  v5 = *(&off_C1600 + v1 - 830) - 8;
  (*&v5[8 * (v1 ^ 0xAF9)])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_36B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 112) = v22 - a15 * v19 + 773;
  *(v23 - 120) = v18;
  *(v23 - 136) = &a18;
  v24 = (*(v20 + 8 * (v22 ^ 0xCC1)))(v23 - 136);
  return (*(v20 + 8 * ((56 * (*(v23 - 128) > ((v22 - 992) ^ (v21 + 340)))) ^ v22)))(v24);
}

uint64_t sub_3710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 112) = v20 - ((((v22 - 136) | 0xA3EFA3EC) - ((v22 - 136) & 0xA3EFA3EC)) ^ 0x205F29FA) * v18 + 206;
  *(v22 - 136) = &a17;
  *(v22 - 120) = v21;
  v23 = (*(v19 + 8 * (v20 ^ 0xE9E)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 128) > v17) * ((v20 - 14) ^ 0x80E)) ^ v20)))(v23);
}

uint64_t sub_371B0@<X0>(int a1@<W8>, int a2@<W3>)
{
  LODWORD(STACK[0x410]) = a1;
  LODWORD(STACK[0x424]) = a2;
  LODWORD(STACK[0x438]) = v3;
  LODWORD(STACK[0x2A4]) = v2;
  LODWORD(STACK[0x27C]) = 744821326;
  return sub_26180(a1);
}

uint64_t sub_372F0(uint64_t a1)
{
  v5 = *(v3 + 348);
  v6 = *(a1 + 8) - v1 + 1758228985;
  if (v5 > 0x4C07542E != v6 < 0xB3F8ABD1)
  {
    v7 = v5 > 0x4C07542E;
  }

  else
  {
    v7 = v5 - 1275548719 > v6;
  }

  return (*(v2 + 8 * ((!v7 * (((v4 - 7) | 0x240) - 1917)) ^ v4)))();
}

uint64_t sub_373F0@<X0>(int a1@<W8>)
{
  v12 = v3 - 3634738069;
  v14 = ((**v2 - (*v1 ^ v5)) ^ v6) + (((a1 ^ (v11 + 2141)) + v4) & (2 * (**v2 - (*v1 ^ v5)))) + v7 != v10 || v12 == 0;
  return (*(v9 + 8 * ((v14 * v8) ^ a1)))();
}

uint64_t sub_37468(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v64 = *(v61 + v60 * a3 + 36);
  v65 = v64 - 1001911870 < a59;
  if (a59 < a8 != v64 - 1001911870 < ((v59 - 1306609331) & 0x4DE146B2 ^ (a8 + 882)))
  {
    v65 = a59 < a8;
  }

  v66 = !v65;
  if (v64 == v63 + ((v59 + 929) ^ 0x802) - 49)
  {
    v66 = 1;
  }

  return (*(v62 + 8 * ((15 * v66) ^ (v59 + 929))))();
}

uint64_t sub_374FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v25 = v18 ^ 0x4E1;
  *(v24 - 136) = 210068311 * a11 + 158011236;
  *(v24 - 132) = (v25 + 245) ^ (210068311 * a11);
  *(v24 - 128) = v17;
  (*(v20 + 8 * (v25 + 554)))(v24 - 136);
  *(v24 - 136) = v22;
  *(v24 - 120) = a17;
  *(v24 - 128) = v25 - 143681137 * ((v23 + 2103494664 - 2 * (v23 & 0x7D60C808)) ^ 0x1C5A7F40) - 547;
  (*(v20 + 8 * (v25 + 614)))(v24 - 136);
  *(v24 - 112) = v25 - ((~(v23 | 0x30BBC61E) + (v23 & 0x30BBC61E)) ^ 0x4CF4B3F7) * v19 + 428;
  *(v24 - 136) = a17;
  *(v24 - 120) = a16;
  v26 = (*(v20 + 8 * (v25 ^ 0xFB8)))(v24 - 136);
  return (*(v20 + 8 * (((*(v24 - 128) > v21) * ((v25 ^ 0x379) - 1150)) ^ v25)))(v26);
}

uint64_t sub_37A9C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(void))
{
  v35 = (((v31 ^ 0x4AC22718) - 1254237976) ^ ((v31 ^ 0x5D7065C8) - 1567647176) ^ ((v31 ^ 0x1441299A) - 339814810)) + (((a1 ^ 0x511A3A55) - 1360673365) ^ ((a1 ^ 0x6E2B1D) - 7219997) ^ ((a1 ^ 0x52877A02) - 1384610306)) + 232410586;
  v36 = (((v32 ^ 0x1AB403D2) - 448005074) ^ ((v32 ^ 0x44CAD6FB) - 1154143995) ^ ((v32 ^ 0x5D8DBE63) - 1569570403)) + (((v33 ^ 0xCC2A3C8C) + 869647220) ^ ((v33 ^ 0xE4345688) + 466332024) ^ ((v33 ^ 0x2BED014E) - 736952654)) + 1354342987;
  LODWORD(STACK[0x2F8]) = v35 ^ ((v35 ^ 0x27301C54) - 583232274) ^ ((v35 ^ 0x12F03D48) - 386091534) ^ ((v35 ^ 0xDF8C2DA7) + 629187871) ^ ((v35 ^ 0xEFBF7BFD) + 364114757) ^ 0x6001C0C;
  LODWORD(STACK[0x2FC]) = v36 ^ ((v36 ^ 0x70D31FE2) - 939643989) ^ ((v36 ^ 0x383A3821) - 1894314902) ^ ((v36 ^ 0xF7C6138A) + 1089152963) ^ ((v36 ^ 0xF7FDFFFE) + 1087425463) ^ 0x4B21A0FD;
  v37 = (((v30 ^ 0x1AC2C352) - 448971602) ^ ((v30 ^ 0x93840DA7) + 1820062297) ^ ((v30 ^ 0x8AB5A5BF) + 1967807041)) + (((v34 ^ 0x873C4DD) - 141804765) ^ ((v34 ^ 0xD2D1D268) + 758001048) ^ ((v34 ^ 0xD9517DFF) + 648970753)) + 733169357;
  v38 = (((v29 ^ 0x3C92E265) - 1016259173) ^ ((v29 ^ 0x9DAE117F) + 1649536641) ^ ((v29 ^ 0xA2CF9850) + 1563453360)) + (((LODWORD(STACK[0x304]) ^ 0xCEC82968) + 825743000) ^ ((LODWORD(STACK[0x304]) ^ 0xBC1D6978) + 1138923144) ^ ((LODWORD(STACK[0x304]) ^ 0x71262B5A) - 1898326874)) + 1330360387;
  LODWORD(STACK[0x300]) = v37 ^ ((v37 ^ 0x56055AF3) - 1976117962) ^ ((v37 ^ 0x9762962B) + 1263606254) ^ ((v37 ^ 0x1D04C716) - 1053341487) ^ ((v37 ^ 0xFFAF7BF7) + 597488690) ^ 0x203F1B73;
  LODWORD(STACK[0x304]) = v38 ^ ((v38 ^ 0x383475CA) - 2135993445) ^ ((v38 ^ 0xF04D5C68) + 1222015545) ^ ((v38 ^ 0xB0A20F7A) + 137963819) ^ ((v38 ^ 0x3FBFFF77) - 2027628248) ^ 0x4497B2E5;
  return a29();
}

uint64_t sub_37FE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x360]) = a4 + 46;
  LODWORD(STACK[0x394]) = v5;
  LODWORD(STACK[0x464]) = v7;
  return (*(v9 + 8 * (((LODWORD(STACK[0x360]) == v8) * (((v6 - 114) | 0x201) ^ 0x17)) ^ (v6 - 223))))();
}

uint64_t sub_37FF0@<X0>(uint64_t a1@<X8>)
{
  v4 = 843532609 * ((&v6 + 758633351 - 2 * (&v6 & 0x2D37D387)) ^ 0x3D8BA4D9);
  v7 = a1;
  v6 = (v2 ^ ((v2 ^ 0xAD393348) + 1572914423) ^ ((v2 ^ 0x790B874B) - 1980600074) ^ ((v2 ^ 0x34C843B9) - 1003375608) ^ 0x3BB3D197 ^ (((v3 + 276203684) & 0xEF89775B ^ 0x1F050C15) + (v2 ^ 0xEFFCFFFB))) - v4;
  v8 = (v3 + 831) ^ v4;
  return (*(v1 + 8 * ((v3 - 187) ^ 0xAD4)))(&v6);
}

uint64_t sub_38414@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x2B0] + a2 + 72);
  v6 = ((a2 << (((v3 - 7) | 1) ^ 0x1E)) & 0xCFFFFBD8) + (a2 ^ 0x67FFFDEE) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 3) - ((2 * (HIBYTE(v5) ^ 3)) & 0x72) + 57;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0xF3) - ((2 * (BYTE2(v5) ^ 0xF3)) & 0x72) + 57;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x6B) + ~(2 * ((BYTE1(v5) ^ 0x6B) & 0x3D ^ BYTE1(v5) & 4)) + 58;
  *(a1 + v6 + 3) = v5 ^ 0x73;
  return (*(v4 + 8 * ((1709 * (a2 + 4 < LODWORD(STACK[0x30C]))) ^ v3)))();
}

uint64_t sub_38584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v49 = (*(v47 + 8 * (v48 + 2058)))(&a47, 0);
  (*(a40 + 8 * (v48 ^ 0x83A)))(v49);
  v50 = (*(a40 + 8 * (v48 + 1990)))();
  LODWORD(a34) = a35 + 1;
  return sub_38660(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_38660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v52 = *(v50 + 4 * (v48 - 1));
  *(v50 + 4 * v48) = (*(&a45 + v47) ^ 0x4FA6F160) + v47 + ((1664525 * (v52 ^ (v52 >> 30))) ^ *(v50 + 4 * v48));
  *(v51 - 116) = ((v49 + 2012851192) ^ 0x61) + a39;
  *(v51 - 144) = ((v49 + 2012851192) ^ 0x12) - a39;
  *(v51 - 140) = (v49 + 59381493) ^ a39;
  STACK[0x5B8] = a36;
  STACK[0x5A8] = (v48 + 1) ^ a39;
  *(v51 - 128) = (v49 + 2012851192) ^ a39;
  *(v51 - 124) = -a39;
  v53 = (*(v46 + 8 * (v45 + v49 + 1700)))(v51 - 152);
  return (*(a40 + 8 * *(v51 - 120)))(v53);
}

uint64_t sub_38738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + (v3 + 454) - 858;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((4 * (v5 == 0)) | (8 * (v5 == 0))) ^ v3)))();
}

uint64_t sub_38768@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int *a21)
{
  v23 = a2 ^ 0x93;
  v24 = (*(v22 + 8 * (a2 + 1989)))(*a21, a1, LODWORD(STACK[0x358]));
  return (*(v22 + 8 * ((814 * (LODWORD(STACK[0x3A0]) == v21 + ((v23 - 505) | 0x140) - 324)) ^ v23)))(v24);
}

uint64_t sub_38818@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v11 = (a5 + 1489534608) & 0xA7377A0F;
  v12 = v9 + (v11 ^ 0x5A0F95E4) < a9 + 101174076;
  if ((a9 + 101174076) < 0x5A0F95EE != v9 > 0xA5F06A11)
  {
    v12 = (a9 + 101174076) < 0x5A0F95EE;
  }

  return (*(v10 + 8 * ((139 * !v12) ^ a5)))(2783996433, 1510970852, v11, a1, a2, a3, a4);
}

void sub_38950()
{
  v3 = *(v0 + 48);
  **v0 = v2;
  *v3 = v4;
  *(v0 + 40) = v1;
}

void sub_389A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v22 = 1564307779 * ((v21 - 144) ^ 0x970DCC13);
  *(v21 - 120) = v20;
  *(v21 - 136) = a10;
  *(v21 - 128) = v22 + v19 - 399;
  *(v21 - 124) = v22 + a18 - 1407344821 + ((v19 - 1237) | 0x85);
  (*(v18 + 8 * (v19 + 884)))(v21 - 144);
  JUMPOUT(0x16EDCLL);
}

uint64_t sub_38E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, int a28, char a29, __int16 a30, char a31, __int16 a32, char a33)
{
  v37 = 1556366573 * ((v36 - 152) ^ 0x64E423EA);
  *(v36 - 128) = &a33;
  *(v36 - 152) = a7 - v37 + v35 - 442 - 145834980;
  *(v36 - 120) = v35 - v37 - 597;
  *(v36 - 144) = a16;
  *(v36 - 136) = &a31;
  *(v36 - 112) = &a29;
  *(v36 - 104) = &a26;
  v38 = (*(v33 + 8 * (v35 ^ 0xB22)))(v36 - 152);
  return (*(v33 + 8 * ((3069 * (*(v36 - 148) == (((v35 - 464) | 0x12) ^ (v34 + 491)))) ^ v35)))(v38);
}

uint64_t sub_38F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19, int a20, int a21, char *a22, unsigned int a23)
{
  v25 = 843532609 * (((&a18 | 0xF7353915) - (&a18 & 0xF7353915)) ^ 0xE7894E4B);
  a22 = &a14;
  a18 = v25 + 244697393;
  a23 = v25 - 1295632376;
  a21 = (a12 + 1421512349) ^ v25;
  a19 = a16;
  v26 = (*(v23 + 8 * (a12 + 2218)))(&a18);
  return (*(v23 + 8 * ((1870 * (a20 == (((a12 ^ 0x64) + 387) ^ (v24 + 451)))) ^ a12)))(v26);
}

uint64_t sub_3908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 112) = v17 + 1 - 1556366573 * ((2 * ((v20 - 128) & 0x3629DA48) - (v20 - 128) - 908712521) ^ 0xAD32065D) + 1404;
  *(v20 - 128) = &a17;
  *(v20 - 120) = &a15;
  v21 = (*(v18 + 8 * ((v17 + 1) ^ 0xA1E)))(v20 - 128);
  return (*(v18 + 8 * (((v19 == v17 - 850) * (((v17 + 1) ^ 0xA3) + 1898)) ^ (v17 + 1))))(v21);
}

uint64_t sub_39144@<X0>(int a1@<W2>, char a2@<W5>, uint64_t a3@<X8>)
{
  v10 = *(a3 + v3 + 72);
  v11 = ((2 * v3) & 0x6EFBD7D8) + (v3 ^ 0x377DEBED) + a1;
  *(v5 + v11) = (HIBYTE(v10) ^ 3) - (((HIBYTE(v10) ^ 3) << ((3 * v6) ^ 0x45)) & a2) + 57;
  *(v5 + v11 + 1) = (BYTE2(v10) ^ 0xF3) - (a2 & (2 * (BYTE2(v10) ^ 0xF3))) + 57;
  *(v5 + v11 + 2) = (BYTE1(v10) ^ v7) + ~(2 * ((BYTE1(v10) ^ v7) & 0x3D ^ BYTE1(v10) & 4)) + 58;
  *(v5 + v11 + 3) = v10 ^ 0x73;
  return (*(v8 + 8 * (((v3 + 4 >= *(a3 + 92)) * v9) ^ v4)))();
}

uint64_t sub_3921C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v11 = 28 * (v8 ^ 0x3AD);
  v12 = ((&a4 & 0x936E9F06 | ~(&a4 | 0x936E9F06)) ^ 0x9752D7E2) * a1;
  a5 = v9;
  a7 = 0;
  a6 = -1258285224 - v12;
  a8 = v12 ^ 0x3141F6F8;
  a4 = v11 - v12 + 407;
  v13 = (*(v10 + 8 * (v11 + 2164)))(&a4);
  return sub_392A4(v13);
}

uint64_t sub_393D8()
{
  v5 = *(*(v4 + 32) + v0) - *(v3 + v0);
  v6 = (v5 ^ 0x5F3F77FF) - 287653980 + ((v5 << ((v1 - 55) ^ 0x1E)) & 0xBE7EEFFE);
  v8 = v0 == 15 || v6 != 1310341027;
  return (*(v2 + 8 * (((4 * v8) | (32 * v8)) ^ v1)))();
}

uint64_t sub_3944C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, unsigned int a27, uint64_t a28)
{
  v31 = v28 + 416;
  v35 = (((v31 - 946368076) & 0x38686FB7 ^ 0xFFFFFB65) & a3) + (((v31 + 349) | 0x231) ^ 0x6A7);
  v36 = v31;
  v32 = 896639297 * ((2 * (&a25 & 0x4B240DE0) - &a25 - 1260654050) ^ 0xA0706466);
  a28 = v29;
  a27 = ((v35 ^ 0xFEDD7FFF) + 1072627071 + ((2 * v35) & 0xFDBAFFE0)) ^ v32;
  a25 = (((a3 - a14 + 1611143476) ^ 0x1FE9577E) - 4260400 + ((2 * (a3 - a14 + 1611143476)) & 0x3FD2AEFC)) ^ v32;
  a26 = (v31 - 131) ^ v32;
  v33 = (*(v30 + 8 * (v31 ^ 0xABC)))(&a25);
  return (*(v30 + 8 * ((105 * (*(v29 + 24) != -1640847268)) ^ v36)))(v33);
}

uint64_t sub_3971C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, char *a16, int a17, uint64_t a18)
{
  a17 = (a1 - 126) ^ (((&a14 - 2122187868 - 2 * (&a14 & 0x8181FBA4)) ^ 0x913D8CFA) * v18);
  a18 = a11;
  a15 = &a9;
  a16 = &a6;
  v20 = (*(v19 + 8 * (a1 + 973)))(&a14);
  return sub_39784(v20);
}

uint64_t sub_39784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16, int a17, char a18, uint64_t a19, unsigned int a20, char *a21, unsigned int a22, _BYTE *a23)
{
  a22 = (v23 + 1484) ^ (143681137 * ((((&a20 | 0x37EE5BE4) ^ 0xFFFFFFFE) - (~&a20 | 0xC811A41B)) ^ 0xA92B1353));
  a21 = &a18;
  a23 = a16;
  (*(v24 + 8 * (v23 ^ 0x820)))(&a20);
  a20 = v23 + ((&a20 + 1574874719 - 2 * (&a20 & 0x5DDEAE5F)) ^ 0x77158425) * v25 + 1282;
  a21 = a16;
  v27 = (*(v24 + 8 * (v23 ^ 0x81E)))(&a20);
  return (*(v24 + 8 * ((2007 * (a22 == (v23 ^ 0xA7 ^ (v26 + 329)))) ^ v23)))(v27);
}

uint64_t sub_398B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (((a15 - v24) | (v24 - a15)) > ((v24 + 858) ^ 0xFFFFFCA5))
  {
    v27 = 0x80000000;
  }

  else
  {
    v27 = 0x7FFFFFFF;
  }

  *v25 = v27;
  v28 = (*(v26 + 8 * (v24 ^ 0x927)))(a24);
  return sub_39934(v28, 2147482788, 22, 27);
}

uint64_t sub_39934(uint64_t a1, int a2, int a3, int a4)
{
  v10 = (v7 + 4 * v4);
  v11 = v4 + 2;
  v12 = v10[1];
  v13 = v5 & 0x80000000;
  v14 = *(v7 + 4 * v11);
  v15 = v14 & 0x7FFFFFFE | v12 & (((v6 - 506) | a3) ^ (a2 + 1234));
  v16 = v10[397] ^ ((v12 & 0x7FFFFFFE | v13) >> 1) ^ *(v9 + 4 * (v12 & 1));
  v17 = v10[398] ^ (v15 >> 1) ^ *(v9 + 4 * (v14 & 1));
  *v10 = v16;
  v10[1] = v17;
  return (*(v8 + 8 * (((v11 == 226) * a4) ^ (v6 + 877))))();
}

uint64_t sub_399BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 112) = v21 - (((((v22 - 136) | 0x3E370EA0) ^ 0xFFFFFFFE) - (~(v22 - 136) | 0xC1C8F15F)) ^ 0x42787B49) * v18 + 1700;
  *(v22 - 136) = &a17;
  *(v22 - 120) = v17;
  v23 = (*(v19 + 8 * (v21 + 1888)))(v22 - 136);
  return (*(v19 + 8 * (((*(v22 - 128) - 1941547123 < ((v21 + v20) & 0xAA8F4FFB ^ 0xFC174EBE)) * (((v21 + v20) ^ (v20 + 198)) + 1439)) ^ v21)))(v23);
}

uint64_t sub_39AD0(__n128 a1, __n128 a2)
{
  a1.n128_u32[0] = 7471218;
  a1.n128_u16[2] = 114;
  a1.n128_u16[3] = 114;
  a2.n128_u32[0] = 3735609;
  a2.n128_u16[2] = 57;
  a2.n128_u16[3] = 57;
  return sub_39B04(1186, a1, a2);
}

uint64_t sub_39B04@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x8_t a3@<D0>, int16x4_t a4@<D1>, uint8x8_t a5@<D2>)
{
  a5.i32[0] = *(v5 + v10 - v7);
  v13 = vmovl_u8(a5).u64[0];
  *(a2 + v10 - v7) = vuzp1_s8(vadd_s16(vsub_s16(v13, vand_s8(vadd_s16(v13, v13), a3)), a4), a3).u32[0];
  return (*(v12 + 8 * (((v7 + 4 == (v8 & v9 ^ v11)) * a1) ^ v6)))();
}

uint64_t sub_39C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  HIDWORD(a27) = a4;
  *v33 = 1678841146;
  return (*(v34 + 8 * ((1649 * (((((v32 + 365) ^ 0x352) + 244427831) ^ (v32 - 81)) != 244428506)) ^ (v32 + 365))))(a1, a2, a3, a4, a5, a6, a7, 4050538790, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, &STACK[0x238], &a32, 0, 0, a27, 0x69B25FF618A17E98);
}

uint64_t sub_39F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 210068311 * ((2 * (&a17 & 0x1BC68BD8) - &a17 - 465996768) ^ 0x76EF4B84) + 2202;
  a17 = &a15;
  v21 = (*(v19 + 18888))(&a17);
  return (*(v19 + 8 * (((a18 == -1640847268) * ((v20 ^ 0x415377ED) - 1095986716)) ^ v20)))(v21);
}

uint64_t sub_3A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a5 = 0;
  *a6 = 0;
  a17 = (1380333833 * ((&a17 & 0x41AA07A6 | ~(&a17 | 0x41AA07A6)) ^ 0x753D3)) ^ 0x48449A90;
  v20 = (*(v18 + 18952))(&a17);
  return (*(v18 + 8 * ((1996 * (a18 == v19)) ^ 0x243u)))(v20);
}

uint64_t sub_3A0B4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = *(v36 + 4 * (v35 - 1));
  *(v36 + 4 * v35) = ((1566083941 * (v38 ^ (v38 >> 30))) ^ *(v36 + 4 * v35)) - v35;
  STACK[0x5A8] = (v35 + 1) ^ a30;
  STACK[0x5B8] = a30 ^ 0x26F;
  *(v37 - 144) = ((a1 + 134052631) ^ 0x29) - a30;
  *(v37 - 140) = (a1 + 59381493) ^ a30;
  *(v37 - 116) = a30 + a1 + 134052631 + 45;
  *(v37 - 128) = (a1 + 134052631) ^ a30;
  *(v37 - 124) = -a30;
  v39 = (*(v34 + 8 * (v33 + a1 + 1700)))(v37 - 152);
  return (*(a33 + 8 * *(v37 - 120)))(v39);
}

uint64_t sub_3A174(int a1, int8x16_t a2, int8x16_t a3)
{
  v8 = (v4 - 32);
  v9 = (v6 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a2)), a3);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a2)), a3);
  *v8 = v10;
  return (*(v7 + 8 * (((v5 == 32) * a1) | v3)))();
}

uint64_t sub_3A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  v36 = &a31 + v33;
  *v36 = v35;
  *(v36 + 1) = v35;
  return (*(v34 + 8 * ((3226 * (((2 * v31) ^ 0xCD4u) - 1108 == (v32 & 0x30))) ^ v31)))();
}

uint64_t sub_3A6D4()
{
  v6 = 1388665877 * ((2 * ((v5 - 144) & 0x1B9DF900) - (v5 - 144) - 463337729) ^ 0x69CF6413);
  *(v5 - 112) = v4 - v6 + 1420;
  *(v5 - 120) = v2;
  *(v5 - 136) = v3;
  *(v5 - 144) = v6 + v0 + ((v4 + 1265) ^ 0x271D87C3);
  v7 = (*(v1 + 8 * (v4 ^ 0xB60)))(v5 - 144);
  return sub_3A758(v7);
}

uint64_t sub_3A758()
{
  result = v3;
  *v2 = v1;
  *(v3 + 40) = -1640847268;
  return result;
}

uint64_t sub_3A7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  v19 = 1504884919 * ((2 * ((&a12 ^ 0x4403BDBF) & 0x385360A1) - (&a12 ^ 0x4403BDBF) - 944988322) ^ 0x786C95FA);
  a12 = v17 - v19 - 279;
  a13 = v16;
  a15 = &a10;
  a16 = v19 ^ 0x3141F6FC;
  a14 = -1247490424 - v19;
  v20 = (*(v18 + 8 * (v17 ^ 0xA4A)))(&a12);
  return (*(v18 + 8 * (((*(v16 + 24) == -1640847268) * (v17 ^ 0x63A)) ^ v17)))(v20);
}

uint64_t sub_3A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W8>)
{
  if ((a7 - 413236868) <= 0x10 && ((1 << (a7 + 124)) & 0x10185) != 0)
  {
    return sub_3A92C(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return sub_3A8EC();
  }
}

uint64_t sub_3A9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, unsigned int a31)
{
  *v36 = v33 + 1;
  v37 = ((v32 ^ (v32 >> 11)) << 7) & 0x9D2C5680 ^ v32 ^ (v32 >> 11);
  *(*a30 + a31) ^= (v37 << 15) & 0xEFC60000 ^ v37 ^ (((v37 << 15) & 0xEFC60000 ^ v37) >> 18);
  return (*(v31 + 8 * ((v35 - 1640541089) ^ 0x499 ^ (47 * (a31 + v35 - 1640541089 + (v34 & ~((((v35 - 1640541089) ^ (v35 - 1640535972) ^ v33) & v33) >> (__clz((v35 - 1640541089) ^ (v35 - 1640535972) ^ v33 | 1) ^ 0x1F))) - ((v35 - 1640541089) << ((((v35 + 85) & 0xAF) - 5) ^ 0xA3)) + 4 > 0x1FF)))))();
}

uint64_t sub_3AAB8(uint64_t a1, uint64_t a2, int a3)
{
  v12 = v7 >= 0x10;
  v10 = (((a3 ^ 0x426u) + 506) ^ 0x1F1) & (v6 + 15);
  v11 = 1 - v9;
  v12 = v12 && (1 - v9 + v5 - v6 + v10) >= 0x10;
  v13 = v12 && (v11 + v4 - v6 + v10) >= 0x10;
  v14 = v11 + v3 - v6 + v10;
  v16 = !v13 || v14 < ((175 * (a3 ^ 0x426u)) ^ 0x2ACuLL);
  return (*(v8 + 8 * ((111 * v16) ^ a3)))();
}

void sub_3AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *v38 = (((a22 - v35) | (v35 - a22)) >> ((v35 + v37) ^ (v37 + 27))) | 0x80000000;
  (*(v36 + 8 * (v35 ^ 0x927)))(a35);
  JUMPOUT(0x19220);
}

uint64_t sub_3ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v34 = v26 ^ 0x2F5;
  *(v33 - 120) = v32;
  *(v33 - 112) = v29;
  *(v33 - 144) = v26 - ((2 * ((v33 - 144) & 0x2499EFF0) - (v33 - 144) + 1533415437) ^ 0x4BDA6753) * v27 + 389;
  *(v33 - 104) = v32;
  *(v33 - 136) = v30;
  *(v33 - 128) = &a26;
  v35 = (*(v28 + 8 * (v26 ^ 0x81A)))(v33 - 144);
  return (*(v28 + 8 * ((992 * ((((v31 - 1037285081) < 0x7FFFFFFF) ^ (v34 - 108) ^ 3) & 1)) ^ (v34 - 446))))(v35);
}

uint64_t sub_3AD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v68 = (*(v66 + 8 * (v62 ^ 0xBC4)))(LODWORD(STACK[0x2B0]), a2, STACK[0x308]);
  if (v68)
  {
    if (v68 == 268435459)
    {
      LODWORD(STACK[0x3A0]) = 1640887140;
      return (*(v66 + 8 * (((((a62 + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (a62 + 5))))();
    }

    else
    {
      v78 = ((-870672098 - ((v67 - 192) | 0xCC1A991E) + ((v67 - 192) | 0x33E566E1)) ^ 0xA4E8AAF2) * v65;
      *(v67 - 192) = a62 - v78 + 284;
      *(v67 - 188) = (v68 + v64 - ((2 * v68) & 0x3C6550B8)) ^ v78;
      *(v67 - 184) = &STACK[0x3A0];
      v79 = (*(v66 + 8 * (a62 ^ 0x81E)))(v67 - 192);
      return (*(v66 + 8 * (((((a62 + 464203434) & 0xE454D17F) - 327) * (STACK[0x290] == 0)) ^ (a62 + 5))))(v79);
    }
  }

  else
  {
    v80 = STACK[0x3E0];
    STACK[0x488] = &STACK[0x540] + v63;
    LODWORD(STACK[0x2CC]) = 1496004241;
    STACK[0x228] = a38 + (a62 ^ 0x538u) - 1228;
    STACK[0x388] = 0;
    LODWORD(STACK[0x34C]) = 411634585;
    *(v67 - 192) = a62 - ((-1424570456 - ((v67 - 192) | 0xAB16C7A8) + ((v67 - 192) | 0x54E93857)) ^ 0xC3E4F444) * v65 + 1986157952;
    (*(v66 + 8 * (a62 | 0x810)))(v67 - 192);
    v70 = (*(v66 + 8 * (a62 ^ 0x806)))(336, 0x100004077774924);
    return (*(v66 + 8 * (((2 * (v70 == 0)) | (8 * (v70 == 0))) ^ (a62 + 450))))(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, v80, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
  }
}

void sub_3AD60(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v27 = 210068311 * (((v26 - 144) & 0x930EC72C | ~((v26 - 144) | 0x930EC72C)) ^ 0xFE270777);
  *(v26 - 136) = v24 - v27 + 218;
  *(v26 - 128) = &a24;
  *(v26 - 116) = (v25 - 1003075379 + v24 + 9) ^ v27;
  *(v26 - 144) = a1;
  JUMPOUT(0x16A84);
}

void sub_3B6E0(char *a1@<X8>)
{
  v2 = &STACK[0x1800] + v1;
  *v2 = *a1;
  *(v2 + 1) = *(a1 + 1);
  *(v2 + 9) = *(a1 + 9);
  *(v2 + 13) = *(a1 + 13);
  v2[15] = a1[15];
  v4 = *a1;
  v3 = *(a1 + 1);
  *(v2 + 2) = v4;
  *(v2 + 3) = v3;
  JUMPOUT(0x9618);
}

uint64_t sub_3B720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = *(v42 + 4 * (v41 - 1));
  *(v42 + 4 * v41) = ((1566083941 * (v45 ^ (v45 >> 30))) ^ *(v42 + 4 * v41)) - v41;
  v46 = 1504884919 * ((((v44 - 152) | 0xF87A1B9B9B24B03) - ((v44 - 152) & 0xF87A1B9B9B24B03)) ^ 0x23D7FB034271FC18);
  STACK[0x5B8] = v46 ^ 0x26F;
  *(v44 - 116) = ((v40 - 396877319) ^ 0x51) + v46;
  STACK[0x5A8] = (v41 + 1) ^ v46;
  *(v44 - 144) = v40 - 396877319 - v46 + 13;
  *(v44 - 140) = (v40 + 59381493) ^ v46;
  *(v44 - 128) = (v40 - 396877319) ^ v46;
  *(v44 - 124) = -1504884919 * ((((v44 - 152) | 0xB9B24B03) - ((v44 - 152) & 0xB9B24B03)) ^ 0x4271FC18);
  v47 = (*(a5 + 8 * (v40 ^ v43)))(v44 - 152);
  return (*(a40 + 8 * *(v44 - 120)))(v47);
}

uint64_t sub_3B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v37 - 144) = v32 - ((v37 - 144) ^ 0x10BC775E) * v34 + 389;
  *(v37 - 136) = a13;
  *(v37 - 128) = &a32;
  *(v37 - 120) = &a18;
  *(v37 - 112) = a14;
  *(v37 - 104) = &a18;
  v38 = (*(v33 + 8 * (v32 ^ 0x81A)))(v37 - 144);
  return (*(v33 + 8 * ((992 * ((((v36 + v35) < 0x7FFFFFFF) ^ ((v32 ^ 0xF5) - 108) ^ 3) & 1)) ^ ((v32 ^ 0x2F5) - 446))))(v38);
}

uint64_t sub_3BACC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = v5 - 1;
  *(a2 + v6) = (a1 ^ (v3 + 53) ^ 0xC8) + *(v4 + v6) - ((2 * *(v4 + v6)) & 0x72);
  return (*(v2 + 8 * ((492 * (v6 == 0)) ^ a1)))(0);
}

uint64_t sub_3BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, int a21, int a22, char *a23, int a24)
{
  v26 = 843532609 * (((&a19 | 0x43FBB05E) - (&a19 & 0x43FBB05E)) ^ 0x5347C700);
  a23 = &a16;
  a22 = v26 ^ 0x54BA8F41;
  a20 = a15;
  a19 = v26 + 1238942874;
  a24 = v26 + v24 - ((2 * v24) & 2) - 1295632375;
  v27 = (*(v25 + 19056))(&a19);
  return (*(v25 + 8 * ((2006 * (a21 == -1640847268)) ^ 0x15Eu)))(v27);
}

uint64_t sub_3BD00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 != 0) * ((v3 + 809) ^ 0x5D1)) ^ (v3 - 544))))();
}

uint64_t sub_3BD34@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W7>, int a4@<W8>)
{
  HIDWORD(v13) = a1 ^ v9;
  LODWORD(v13) = a1;
  v14 = (v13 >> 27) + (v4 ^ (v9 + a4 + 386 - 1031)) + (((a3 ^ v5) + v9 - ((2 * (a3 ^ v5)) & 0x7E6D694)) ^ v6) + 778239157 + (*(v8 + 4 * (a2 + v12)) ^ v11);
  return (*(v10 + 8 * (((a2 + 1 != v7 + 64) | (2 * (a2 + 1 != v7 + 64))) ^ a4)))(v14 ^ ((v14 ^ 0xCBF346F6) + 1342997463) ^ ((v14 ^ 0x2802DAA6) - 1275256953) ^ ((v14 ^ 0xF80E5A70) + 1676779345) ^ ((v14 ^ 0x7FFFFCFF) - 469747232) ^ 0x67F35195);
}

uint64_t sub_3BE44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71 - 1516753524 + a71;
  v74 = a2 + ((v71 - 318) ^ 0xF6C1837F);
  v75 = (v74 < 0xF4A936C) ^ (v73 < 0xF4A936C);
  v76 = v73 < v74;
  if (v75)
  {
    v76 = v74 < 0xF4A936C;
  }

  return (*(v72 + 8 * ((21 * v76) ^ v71)))();
}

uint64_t sub_3BF24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = (((a4 ^ 0x71874390) - 1904690064) ^ ((a4 ^ 0xE94B20C) + v11) ^ ((a4 ^ 0xE65C9147) + v12)) + v9;
  v21 = (((a5 ^ v17) + a8) ^ ((a5 ^ v15) + v16) ^ (v19 - 585 + v14 + ((((v19 - 619) | 0x22) + v13) ^ a5))) + v9;
  v22 = (v20 < v10) ^ (v21 < v10);
  v23 = v20 < v21;
  if (v22)
  {
    v23 = v21 < v10;
  }

  return (*(v8 + 8 * ((v23 * v18) ^ v19)))();
}

uint64_t sub_3C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  v63 = (v60 - 1071999907);
  v64 = *a30;
  if ((*a30 & 3) != (((v60 + 6469083) | 0x21808320u) ^ 0xFFFFFFFF9E37535ELL) + v63 || (v65 = *(v62 + 8 * (v60 ^ 0x3FE5720Au)), *v65))
  {
    JUMPOUT(0x60A8);
  }

  *v65 = v64;
  **(v62 + 8 * (v60 - 1072001588)) = 255;
  *v64 |= ~v64[*v64 & 0x3ELL] << 16;
  v64[4] |= ~v64[v64[4] & 0x3ELL] << 16;
  v66 = (v60 - 1372547808) & 0x11E9F8FD;
  v64[8] |= (v64[v64[8] & 0x3ELL] ^ (v66 - 198)) << 16;
  v64[12] |= ~v64[v64[12] & 0x3ELL] << 16;
  v64[16] |= ~v64[v64[16] & 0x3ELL] << 16;
  v64[20] |= ~v64[v64[20] & 0x3ELL] << 16;
  v64[24] |= ~v64[v64[24] & 0x3ELL] << 16;
  v64[28] |= ~v64[v64[28] & 0x3ELL] << 16;
  v64[32] |= ~v64[v64[32] & 0x3ELL] << 16;
  v64[36] |= ~v64[v64[36] & 0x3ELL] << 16;
  v64[40] |= ~v64[v64[40] & 0x3ELL] << 16;
  v64[44] |= ~v64[v64[44] & 0x3ELL] << 16;
  v64[48] |= ~v64[v64[48] & 0x3ELL] << 16;
  v64[52] |= ~v64[v64[52] & 0x3ELL] << 16;
  v64[56] |= ~v64[v64[56] & 0x3ELL] << 16;
  v64[60] |= ~v64[v64[60] & 0x3ELL] << 16;
  v67 = (*(v61 + 8 * (v63 ^ 0xE89)))(&a60, 0, 1024);
  return (*(a40 + 8 * (v66 ^ (32 * (((v66 + 64) ^ 1 ^ (v66 - 35)) & 1)))))(v67);
}