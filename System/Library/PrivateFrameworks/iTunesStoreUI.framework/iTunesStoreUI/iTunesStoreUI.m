void sub_1C21B1E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C21B1FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SUAllowsLandscapePhone()
{
  v0 = SUAllowsLandscapePhone_sValue;
  if (SUAllowsLandscapePhone_sValue == 255)
  {
    v0 = MGGetBoolAnswer();
    if (v0)
    {
      v0 = MGGetBoolAnswer();
    }

    SUAllowsLandscapePhone_sValue = v0;
  }

  return v0 != 0;
}

uint64_t sub_1C21B253C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1C21B2584()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C21B25DC(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x1E69E99E0];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
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
              v23 = v35;
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

uint64_t sub_1C21B283C(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
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
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC50])
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

uint64_t sub_1C21B29D0(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x1E69E99E0];
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
  if (MEMORY[0x1EEE9AC50])
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

uint64_t sub_1C21B2BC4(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC50])
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

uint64_t sub_1C21B2D44(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39A38 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C2349510[byte_1C23445D0[(65 * (dword_1EBF39A38 ^ 0x7B ^ qword_1EBF39C20))] ^ 0x2E]) - 83);
  v2 = *(v1 - 4);
  v3 = *(&off_1F41B25C0 + (*(off_1F41B2A10 + (*(off_1F41B2BA0 + (65 * ((qword_1EBF39C20 + v2) ^ 0x7B)) - 8) ^ 0x5Eu) - 8) ^ (65 * ((qword_1EBF39C20 + v2) ^ 0x7B))) - 171);
  v4 = *v3 - v2 - &v6;
  *(v1 - 4) = 410816321 * v4 + 0x265DD2AD758AD77BLL;
  *v3 = 410816321 * (v4 ^ 0x265DD2AD758AD77BLL);
  v7 = a1;
  v8 = (1785193651 * ((&v7 & 0x30051FFC | ~(&v7 | 0x30051FFC)) ^ 0xDC260C23)) ^ 0x515;
  LOBYTE(v3) = 65 * ((*v3 + *(v1 - 4)) ^ 0x7B);
  return (*(*(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39A38) ^ 0x7B)) ^ byte_1C2349510[byte_1C23445D0[(65 * ((qword_1EBF39C20 + dword_1EBF39A38) ^ 0x7B))] ^ 0x44]) - 102) + (*(off_1F41B2628 + (*(off_1F41B2940 + v3) ^ 0x40u) - 4) ^ v3) + 2226))(&v7);
}

uint64_t VLxCLgDpiF(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39CB0 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C2349810[byte_1C23448D0[(65 * (dword_1EBF39CB0 ^ 0x7B ^ qword_1EBF39C20))] ^ 0x40]) + 2);
  v2 = *(v1 - 4);
  v3 = off_1F41B2770 - 8;
  v4 = off_1F41B2A78 - 4;
  v5 = *(&off_1F41B25C0 + (*(off_1F41B2A78 + (*(off_1F41B2770 + (65 * ((qword_1EBF39C20 + v2) ^ 0x7B)) - 8) ^ 0xB1u) - 4) ^ (65 * ((qword_1EBF39C20 + v2) ^ 0x7B))) - 132);
  v6 = (*v5 - v2) ^ &v9;
  *(v1 - 4) = 410816321 * (v6 - 0x265DD2AD758AD77BLL);
  *v5 = 410816321 * (v6 ^ 0x265DD2AD758AD77BLL);
  v7 = 1504884919 * ((2 * (v10 & 0x3CB2C280) - v10 + 1129135485) ^ 0xB88E8A66);
  v10[0] = v7 + 1497;
  v10[2] = a1 - ((2 * a1) & 0xAF384972) + 1469850809 + v7;
  LOBYTE(v5) = 65 * ((*v5 - *(v1 - 4)) ^ 0x7B);
  (*(*(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39CB0) ^ 0x7B)) ^ byte_1C2349710[byte_1C23447D0[(65 * ((qword_1EBF39C20 - dword_1EBF39CB0) ^ 0x7B))] ^ 0x32]) - 132) + (v5 ^ v4[v3[v5] ^ 0x2E]) + 2261))(v10);
  return v10[1] ^ 0xC7049F28;
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F41B25C0 + (*(off_1F41B2628 + (*(off_1F41B2940 + (65 * ((qword_1EBF39C20 - dword_1EBF39C98) ^ 0x7B))) ^ 0x68u) - 4) ^ (65 * ((qword_1EBF39C20 - dword_1EBF39C98) ^ 0x7B))) + 8);
  v5 = *(v4 - 4);
  v6 = *(&off_1F41B25C0 + (*(off_1F41B2830 + (*(off_1F41B2968 + (65 * ((qword_1EBF39C20 + v5) ^ 0x7B)) - 8) ^ 0x32u) - 4) ^ (65 * ((qword_1EBF39C20 + v5) ^ 0x7B))) - 168);
  v7 = 410816321 * (&v9[v5 + *v6] ^ 0x265DD2AD758AD77BLL);
  *(v4 - 4) = v7;
  *v6 = v7;
  v15 = (896639297 * (((&v10 ^ 0x52004020 | 0x2D33BB5B) + (&v10 ^ 0xD201841 | 0xD2CC44A4)) ^ 0x4B8BCE18)) ^ 0x594;
  v10 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a3;
  LOBYTE(v6) = 65 * ((*v6 - *(v4 - 4)) ^ 0x7B);
  (*(*(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39C98) ^ 0x7B)) ^ byte_1C2349810[byte_1C23448D0[(65 * ((qword_1EBF39C20 - dword_1EBF39C98) ^ 0x7B))] ^ 0x40]) - 129) + (*(off_1F41B2780 + (*(off_1F41B2B28 + v6 - 12) ^ 0x7Eu) - 4) ^ v6) + 2241))(&v10);
  return v11 ^ 0xC7049F28;
}

uint64_t sub_1C21B3688(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39C00) ^ 0x7B)) ^ byte_1C233D8D0[byte_1C2349610[(65 * ((qword_1EBF39C20 + dword_1EBF39C00) ^ 0x7B))] ^ 0xB9]) - 87);
  v2 = off_1F41B2BA0 - 8;
  v3 = off_1F41B2A10 - 8;
  v4 = *(&off_1F41B25C0 + (*(off_1F41B2A10 + (*(off_1F41B2BA0 + (65 * ((qword_1EBF39C20 - *v1) ^ 0x7B)) - 8) ^ 0xB9u) - 8) ^ (65 * ((qword_1EBF39C20 - *v1) ^ 0x7B))) - 135);
  v5 = &v7[*v1 + *v4];
  *v1 = (410816321 * v5) ^ 0x265DD2AD758AD77BLL;
  *v4 = 410816321 * (v5 ^ 0x265DD2AD758AD77BLL);
  v8 = 1785193651 * (((&v8 | 0x226AC05F) - (&v8 & 0x226AC05F)) ^ 0x31B62C7F) + 1132;
  v9 = a1;
  LODWORD(v4) = 410816321 * ((*v4 + *v1) ^ 0x758AD77B);
  return (*(*(&off_1F41B25C0 + ((65 * (dword_1EBF39C00 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C2349510[byte_1C23445D0[(65 * (dword_1EBF39C00 ^ 0x7B ^ qword_1EBF39C20))] ^ 0x19]) - 141) + (v4 ^ v3[v2[v4] ^ 0xB9]) + 2296))(&v8);
}

uint64_t sub_1C21B3878(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39A48 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C233D8D0[byte_1C2349610[(65 * (dword_1EBF39A48 ^ 0x7B ^ qword_1EBF39C20))] ^ 0xB9]) - 117);
  v2 = 65 * ((qword_1EBF39C20 - *v1) ^ 0x7B);
  v3 = *(&off_1F41B25C0 + (*(off_1F41B2830 + (*(off_1F41B2968 + v2 - 8) ^ 0x32u) - 4) ^ v2) - 168);
  v4 = &v6[*v3 ^ *v1];
  *v1 = 410816321 * (v4 - 0x265DD2AD758AD77BLL);
  *v3 = 410816321 * (v4 ^ 0x265DD2AD758AD77BLL);
  v8 = a1;
  v7[0] = 1564307779 * (((v7 | 0x29807551) - v7 + (v7 & 0xD67F8AA8)) ^ 0xBE8DB942) + 997;
  LOBYTE(v1) = 65 * ((*v3 - *v1) ^ 0x7B);
  (*(*(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39A48) ^ 0x7B)) ^ byte_1C2349710[byte_1C23447D0[(65 * ((qword_1EBF39C20 - dword_1EBF39A48) ^ 0x7B))] ^ 0x32]) - 132) + (*(off_1F41B2A10 + ~*(off_1F41B2BA0 + v1 - 8) - 8) ^ v1) + 2325))(v7);
  return v7[1];
}

uint64_t sub_1C21B3C30@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = ((v9 - 1317) ^ 0x5AC4EA22) + a8;
  v11 = a1 - 1463117988 < v10;
  if (v10 < 0xA8CA975C != a1 > 0x573568A3)
  {
    v11 = v10 < 0xA8CA975C;
  }

  return (*(v8 + 8 * ((217 * !v11) ^ v9)))();
}

void sub_1C21B3D00(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((a1 + 132736164 - 2 * (a1 & 0x7E964A4)) ^ 0x953F5B00);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21B3DB0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0xD4) + 106;
  return (*(v4 + 8 * ((3756 * (v5 == ((v2 + 67) ^ 0x69ALL))) ^ v2)))();
}

uint64_t sub_1C21B3DF8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v23 = v18 < v20;
  v24 = *(v22 + v16);
  v25 = v16 + 1;
  *(&a16 + a1) = v24 - ((2 * v24) & 0xD4) + 106;
  if (v23 == v25 > v19)
  {
    v23 = v25 + v20 < v18;
  }

  return (*(v21 + 8 * ((v23 * (v17 - 872)) ^ v17)))();
}

uint64_t sub_1C21B3EA0()
{
  *(v2 - 104) = v1 + 210068311 * ((((v2 - 120) | 0x3CD143A7) + (~(v2 - 120) | 0xC32EBC58)) ^ 0xAE077C02) + 990;
  *(v2 - 120) = &v5;
  *(v2 - 112) = v4;
  return (*(v0 + 8 * (v1 ^ 0xBDC)))(v2 - 120);
}

uint64_t sub_1C21B4008@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v41 = (*(v40 + 8 * (a2 + 1581)))(LODWORD(STACK[0x4C4]), a1, a37);
  v42 = STACK[0x2D8];
  v43 = STACK[0x2D0];
  if (v41)
  {
    if (v41 == 268435459)
    {
      LODWORD(STACK[0x4BC]) = 956023824;
      return (*(v42 + 8 * ((((STACK[0x2D0] - 1155996107) ^ 0xBB18EBBF ^ (STACK[0x2D0] - 1155996107) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (STACK[0x2D0] - 554))))();
    }

    else
    {
      v46 = STACK[0x2D0];
      v47 = STACK[0x2D0] - 706;
      v48 = 50899313 * ((((v39 - 192) | 0x466D6FD9) + (~(v39 - 192) | 0xB9929026)) ^ 0x6CA645A2);
      *(v39 - 192) = &STACK[0x4BC];
      *(v39 - 184) = v47 ^ v48;
      *(v39 - 180) = (v41 - 955998424 - ((2 * v41) & 0x8E093E50)) ^ v48;
      v49 = (*(v42 + 8 * (v46 ^ 0xAC9)))(v39 - 192);
      return (*(STACK[0x2D8] + 8 * ((((v46 - 1155996107) ^ 0xBB18EBBF ^ (v46 - 1155996107) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (v46 - 554))))(v49);
    }
  }

  else
  {
    STACK[0x3F0] = &STACK[0x570] + v38;
    LODWORD(STACK[0x4D8]) = 2058343157;
    STACK[0x430] = v37 - 192;
    STACK[0x380] = 0;
    LODWORD(STACK[0x4DC]) = 1308994801;
    *(v39 - 192) = v43 - 1380333833 * ((2 * ((v39 - 192) & 0x40974B08) - (v39 - 192) + 1063826677) ^ 0x813A1F7F) + 68671051;
    (*(v42 + 8 * (v43 ^ 0xAD3)))(v39 - 192);
    v45 = (*(STACK[0x2D8] + 8 * (v43 ^ 0xAE4)))(336, 0x100004077774924) != 0;
    return (*(STACK[0x2D8] + 8 * ((14 * v45) ^ (v43 + 1136))))();
  }
}

uint64_t sub_1C21B428C@<X0>(int a1@<W8>)
{
  v8 = v5 + v2;
  v9 = v5 - 1;
  *(*v6 + (v1 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == v3) * v4) ^ a1)))();
}

uint64_t sub_1C21B42DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v27 = ((((2 * ((v26 - 120) ^ 0x14B8DB5E)) | 0x13A8B496) - ((v26 - 120) ^ 0x14B8DB5E) - 164911691) ^ 0x37A7AB6F) * v23;
  *(v26 - 120) = &a20;
  *(v26 - 112) = v27 + ((v25 + 2044317496) ^ v20) + ((2 * v20) & 0xF3B39FFE) - 1209025378;
  *(v26 - 108) = v25 - v27 + 1615;
  (*(v22 + 8 * (v25 ^ 0x95D)))(v26 - 120);
  *(v26 - 120) = (v25 + 883) ^ (((((v26 - 120) ^ 0x307335A4 | 0x6E538E86) - ((v26 - 120) ^ 0x307335A4) + (((v26 - 120) ^ 0x307335A4) & 0x91AC7178)) ^ 0x74EB9158) * v23);
  *(v26 - 112) = v21;
  *(v26 - 104) = &a18;
  v28 = (*(v22 + 8 * ((v25 + 33) ^ 0x97A)))(v26 - 120);
  v29 = *(v26 - 116) <= ((v25 - 194) | 0x180u) + 645 + v24;
  return (*(v22 + 8 * ((2 * v29) | (4 * v29) | (v25 + 33))))(v28);
}

uint64_t sub_1C21B45EC@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v10 = (STACK[0x3C8] + 31);
  v11 = -1996841414 - ((0x10u >> ((a2 - 97) ^ 0x12)) & 0x1F53C72);
  a10[12] = (HIBYTE(v11) ^ 0x88) - 2 * ((HIBYTE(v11) ^ 0x88) & 0x6B ^ HIBYTE(v11) & 1) + 106;
  a10[13] = (BYTE2(v11) ^ 0xFA) - 2 * ((BYTE2(v11) ^ 0xFA) & 0xEE ^ BYTE2(v11) & 4) + 106;
  a10[14] = (BYTE1(v11) ^ 0x9E) - ((2 * (BYTE1(v11) ^ 0x9E)) & 0xD4) + 106;
  a10[15] = v11 ^ 0x53;
  *(v10 - 15) ^= *a10 ^ 0x6A;
  *(v10 - 14) ^= a10[1] ^ 0x6A;
  *(v10 - 13) ^= a10[2] ^ 0x6A;
  *(v10 - 12) ^= a10[3] ^ 0x6A;
  *(v10 - 11) ^= a10[4] ^ 0x6A;
  *(v10 - 10) ^= a10[5] ^ 0x6A;
  *(v10 - 9) ^= a10[6] ^ 0x6A;
  *(v10 - 8) ^= a10[7] ^ 0x6A;
  *(v10 - 7) ^= a10[8] ^ 0x6A;
  *(v10 - 6) ^= a10[9] ^ 0x6A;
  *(v10 - 5) ^= a10[10] ^ 0x6A;
  *(v10 - 4) ^= a10[11] ^ 0x6A;
  *(v10 - 3) ^= a10[12] ^ 0x6A;
  *(v10 - 2) ^= a10[13] ^ 0x6A;
  *(v10 - 1) ^= a10[14] ^ 0x6A;
  *v10 ^= a10[15] ^ 0x6A;
  return (*(a1 + 8 * (a2 + 102)))(4294967198);
}

void sub_1C21B4804(uint64_t a1)
{
  v1 = *(a1 + 16) - 50899313 * ((-2 - ((a1 | 0x86D05815) + (~a1 | 0x792FA7EA))) ^ 0x53E48D90);
  __asm { BRAA            X10, X17 }
}

void sub_1C21B48BC(int a1@<W8>)
{
  if (a1 == 880010268)
  {
    v2 = -955998424;
  }

  else
  {
    v2 = 956024048;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_1C21B49A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, uint64_t a20, char a21)
{
  a19 = ((v23 + 157) ^ 0x54B07ADD) + v21;
  *(v24 - 104) = v23 + 210068311 * ((v24 + 1817424999 - 2 * ((v24 - 120) & 0x6C53B4DF)) ^ 0xFE858B7B) + 1445;
  *(v24 - 120) = a17;
  *(v24 - 112) = &a21;
  (*(v22 + 8 * (v23 ^ 0x99B)))(v24 - 120);
  *(v24 - 120) = (v23 + 850) ^ (50899313 * ((v24 - 368653877 - 2 * ((v24 - 120) & 0xEA06CA43)) ^ 0xC0CDE039));
  *(v24 - 112) = a17;
  *(v24 - 104) = &a18;
  v25 = (*(v22 + 8 * (v23 ^ 0x97A)))(v24 - 120);
  return (*(v22 + 8 * (((*(v24 - 116) <= 0xEAB5317u) * ((v23 ^ 0x4E2) - 1028)) ^ v23)))(v25);
}

void sub_1C21B4B1C(uint64_t a1)
{
  v1 = 1388665877 * ((~a1 & 0xB95F3E3B | a1 & 0x46A0C1C4) ^ 0x34F25CD7);
  if (*(a1 + 16))
  {
    v2 = (*(a1 + 32) ^ v1) == 458379036;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21B4BEC@<X0>(int a1@<W8>)
{
  if ((a1 - 1063529613) <= 0x12 && ((1 << (a1 + 115)) & 0x50121) != 0)
  {
    return (*(v2 + 8 * ((27 * ((((*(v4 + 48 * v1 + 40) & 1) == 0) ^ (((v3 - 37) ^ 0xAD) + 88)) & 1)) ^ (v5 - 377968623))))();
  }

  else
  {
    return (*(v2 + 8 * ((490 * ((*(v4 + 48 * v1 + 40) & 8) == -377967699 - v3)) ^ (v5 - 377968224))))(4294925278);
  }
}

uint64_t sub_1C21B4D94(uint64_t a1, int a2)
{
  v6 = a2 + 212;
  v7 = v4 + (v6 ^ (v3 + 1867));
  v8 = v7 + v5 - 1072826198;
  v9 = v7 + ((v6 + 747) ^ 0x136) + 236166790 > v8;
  if (v7 > 0xF1EC5A64 != v8 < 0xE13A59B)
  {
    v9 = v7 > 0xF1EC5A64;
  }

  return (*(v2 + 8 * ((119 * !v9) ^ v6)))();
}

uint64_t sub_1C21B4DCC@<X0>(char a1@<W0>, char a2@<W2>, int a3@<W8>)
{
  v6 = a3 ^ 0xC0;
  v8 = v3 == 199 || v4 == ((((v6 ^ a1) * a2) ^ 0xDD) + v6 - 92);
  return (*(v5 + 8 * ((63 * v8) ^ v6)))();
}

uint64_t sub_1C21B4E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int32x4_t a23, int8x16_t a24, int8x16_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v44 = v37 ^ v41;
  if (((a22 - v37) | (v37 - a22)) <= v40 + (v37 ^ v41) - 624)
  {
    v45 = 0x80000000;
  }

  else
  {
    v45 = -2147483647;
  }

  *v43 = v45 + v38;
  (*(v39 + 8 * (v37 ^ 0x97D)))(a32);
  v46 = vld1q_dup_f32(v43);
  v47 = (v44 - 762493302);
  v48.i64[0] = 0x8000000080000000;
  v48.i64[1] = 0x8000000080000000;
  v49.i64[0] = *(v43 + 4);
  v49.i32[2] = *(v43 + 4 * (v47 ^ 0x35D));
  v50 = vextq_s8(v46, v49, 0xCuLL);
  v51 = v49;
  v51.i32[3] = *(v43 + 16);
  v52 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v51, a25), vandq_s8(v50, v48)), 1uLL), *(v43 + 1588));
  v50.i32[0] = *(v42 + 4 * (*(v43 + 4) & 1));
  v50.i32[1] = *(v42 + 4 * (*(v43 + 8) & 1));
  v50.i32[2] = *(v42 + 4 * (*(v43 + 4 * (v47 ^ 0x35D)) & 1));
  v50.i32[3] = *(v42 + 4 * (v51.i8[12] & 1));
  *v43 = veorq_s8(vaddq_s32(vsubq_s32(v52, vandq_s8(vaddq_s32(v52, v52), a24)), a23), v50);
  return (*(a37 + 8 * (v47 ^ 0xC2)))(771209889);
}

uint64_t sub_1C21B4F80()
{
  *(v7 - 136) = (v2 + 708) ^ ((((v0 | 0x5720959A) - (v0 & 0x5720959A)) ^ 0x7DEBBFE0) * v3);
  *(v7 - 128) = v6;
  *(v7 - 120) = v4;
  v8 = (*(v1 + 8 * (v2 ^ 0x8E4)))(v7 - 136);
  return (*(v1 + 8 * ((227 * (*(v7 - 132) <= (v2 ^ 0x1D5 ^ v5 ^ ((v2 - 245) | 0x114u)))) ^ v2)))(v8);
}

uint64_t sub_1C21B5018@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + v3) = v4;
  v6 = v3 + 1 == ((a3 - 1034) ^ a1);
  return (*(v5 + 8 * ((8 * v6) | (v6 << 6) | a3)))();
}

uint64_t sub_1C21B5048()
{
  v1 = (STACK[0x2D0] - 874) | 0x100;
  v2 = STACK[0x3A0];
  STACK[0x348] = *(v0 + 8 * (STACK[0x2D0] - 812));
  v3 = STACK[0x298];
  STACK[0x540] = v2;
  LODWORD(STACK[0x54C]) = 1357394763;
  STACK[0x410] = v3;
  return (*(v0 + 8 * ((108 * (v1 + 726 + (*(v2 + 68) & 0x3Fu) + 1357394763 - 1357395797 < v1 - 328)) ^ v1)))();
}

uint64_t sub_1C21B506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  *(v24 - 120) = (v20 + 693) ^ (((v24 - 120) ^ 0x2ACB2A7A) * v22);
  *(v24 - 112) = &a20;
  *(v24 - 104) = &a18;
  v25 = (*(v21 + 8 * (v20 ^ 0x817)))(v24 - 120);
  return (*(v21 + 8 * ((2387 * (*(v24 - 116) > v23 + (v20 ^ 0x142u) + 835)) ^ v20)))(v25);
}

uint64_t sub_1C21B5194@<X0>(int a1@<W8>)
{
  v6 = *(v1 + v2 - 1 - 31);
  v7 = v4 + v2 - 1;
  *(v7 - 15) = *(v1 + v2 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((2154 * (((v3 + a1 + 1959) ^ 0x84ALL) == (v2 & 0xFFFFFFE0))) ^ (v3 + a1))))();
}

uint64_t sub_1C21B51F4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 + (v5 - a2 - 1509) - 256;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((14 * (v7 == 0)) ^ (v2 + v5 + 120))))();
}

void sub_1C21B9424()
{
  v4 = STACK[0x3A0];
  v5 = 1388665877 * (((v1 | 0xD6937893) - (v1 & 0xD6937893)) ^ 0x5B3E1A7F);
  *(v2 - 180) = v0 - 562358921 + v5 + 51;
  *(v2 - 176) = v5 - 325162679;
  *(v2 - 192) = v4;
  (*(v3 + 8 * (v0 ^ 0x997)))(v2 - 192);
  STACK[0x348] = *(STACK[0x2D8] + 8 * v0);
  JUMPOUT(0x1C21E7CBCLL);
}

uint64_t sub_1C21B950C@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == (v2 + 1) > 0xFFFFFFFF319A3625)
  {
    v5 = ((((a1 - 1568608109) & 0x5D7F0FFFu) + 1143) ^ (a2 + 1460)) + v2 < v3;
  }

  return (*(v4 + 8 * ((42 * !v5) ^ a1)))();
}

uint64_t sub_1C21B95C8@<X0>(uint64_t a1@<X8>)
{
  v4 = 143681137 * ((2 * (&v6 & 0x64713FE8) - &v6 + 462340113) ^ 0x7AB47759);
  v6 = (v3 - 31) ^ v4;
  v8 = ((v3 + 326) ^ 0x237C556) - (v1 + v4 + ((860273710 - 2 * v1) & 0x5128D0CC));
  v7 = v2;
  return (*(a1 + 8 * (v3 ^ 0x857)))(&v6);
}

void sub_1C21B9668(unsigned int *a1, uint64_t a2, int a3)
{
  v10 = a3 - v5 + 33;
  *(a1 + v4 + 4) = v8;
  v11 = v7 + v3;
  v12 = v7 + v3 + (v10 ^ 0x20);
  *a1 = v12;
  v13 = a1 + 1;
  *(v13 + (v9 + v3)) = v6;
  *(v13 + v3) = 47;
  *(v13 + v11) = 61;
  *(v13 + v12) = 0;
  JUMPOUT(0x1C21FFA10);
}

uint64_t sub_1C21BB5D8@<X0>(char a1@<W2>, int8x16_t *a2@<X3>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, uint64_t a6)
{
  v8 = (a6 + a3);
  v9 = vaddq_s8(vsubq_s8(a2[1], vandq_s8(vaddq_s8(a2[1], a2[1]), a4)), a5);
  v8[-1] = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), a4)), a5);
  *v8 = v9;
  return (*(v7 + 8 * ((((a1 & 0x60) == 32) * ((395 * (v6 ^ 0x217)) ^ 0x7B0)) ^ v6)))();
}

uint64_t sub_1C21BBA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a14 + 2096111406 > a17;
  if (a17 < a16 != a14 + 2096111406 < ((a5 + 619) ^ 0x7CF01C7Fu))
  {
    v23 = a14 + 2096111406 < ((a5 + 619) ^ 0x7CF01C7Fu);
  }

  return (*(v22 + 8 * ((v23 * ((a5 + 1679) ^ 0x68B)) ^ (a5 + 2212))))(a1, a2, 43, a22);
}

uint64_t sub_1C21BBB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v5 + v6);
  return (*(a3 + 8 * (((v6 != 0) * (((v4 - 640) | 0x200) - 520)) ^ (v4 - 501))))();
}

uint64_t sub_1C21BBBB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, char a21)
{
  v25 = 1556366573 * ((2 * ((v24 - 152) & 0x5A249E28) - (v24 - 152) - 1512349232) ^ 0xC13F423A);
  *(v24 - 128) = &a21;
  *(v24 - 120) = v21 - v25 + 473;
  *(v24 - 152) = a2 - v25 - 119244892;
  *(v24 - 144) = a13;
  *(v24 - 136) = &a16;
  *(v24 - 112) = &a14;
  *(v24 - 104) = &a18;
  v26 = (*(v22 + 8 * (v21 + 1326)))(v24 - 152);
  return (*(v22 + 8 * (((*(v24 - 148) == -955998424) * (v23 + ((((2 * v21) ^ 0x806) + 152611450) | 0xE06000A1) - 628)) ^ v21)))(v26);
}

uint64_t sub_1C21BBFE4()
{
  v4 = (v2 + 1725332640) & 0x857D;
  v13 = v9;
  v12 = (v2 + 1470) ^ (143681137 * (((v10 | 0xCC8BA646) - v10 + (v10 & 0x337459B8)) ^ 0xADB1110E));
  v11 = &v8;
  (*(v1 + 8 * (v2 + 1563)))(v10);
  v11 = v9;
  v10[1] = v2 - 1037613739 * (((v10 | 0xAFC81649) - v10 + (v10 & 0x5037E9B0)) ^ 0x7ECA3B36) + 823;
  (*(v1 + 8 * (v2 ^ 0xA51u)))(v10);
  v5 = v8;
  v10[0] = (v2 + 1232) ^ (((v10 & 0x25F631BD | ~(v10 | 0x25F631BD)) ^ 0xF0C2E438) * v3);
  v11 = v9;
  (*(v1 + 8 * (v2 + 1631)))(v10);
  v10[0] = (v4 + 690) ^ ((v10 ^ 0x2ACB2A7A) * v3);
  v11 = v7;
  (*(v1 + 8 * (v4 + 1089)))(v10);
  return v5 ^ v0;
}

uint64_t sub_1C21BC2E4@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x37C]) = v5;
  LODWORD(STACK[0x374]) = v3;
  LODWORD(STACK[0x3EC]) = v2;
  LODWORD(STACK[0x42C]) = v7 + 80;
  v8 = STACK[0x550];
  v9 = (((v2 ^ 0x70BA780B) - 1891268619) ^ ((v2 ^ 0x899CD9EE) + 1986209298) ^ ((v2 ^ 0xC75C58BE) + 950249282)) - 1087410680 + (((a1 ^ 0x231) + 383941857 + (*(STACK[0x550] + 88) ^ 0xE91D7FAD)) ^ ((*(STACK[0x550] + 88) ^ 0x9BA1F0BF) + 1683885889) ^ ((*(STACK[0x550] + 88) ^ 0x4CC67649) - 1288074825));
  *(STACK[0x550] + 88) = v9 ^ ((v9 ^ 0x9BF7C171) + 640763357) ^ ((v9 ^ 0x1328BFC2) - 1360118928) ^ ((v9 ^ 0xB519BE5E) + 148847348) ^ ((v9 ^ (v6 + 1227)) - 1036435693) ^ 0x7C438209;
  LODWORD(STACK[0x464]) = a2;
  LODWORD(STACK[0x3B4]) = v4;
  v10 = (((a2 ^ 0x1FC91EDF) - 533274335) ^ ((a2 ^ 0x108866AE) - 277374638) ^ ((a2 ^ 0x313B812A) - 825983274)) + (((*(v8 + 72) ^ 0xDE0CAFA1) + 569593951) ^ ((*(v8 + 72) ^ 0xA4628F54) + 1537044652) ^ ((*(v8 + 72) ^ 0x4414D9AE) - 1142217134)) - 1940680246;
  v11 = (v10 ^ 0xE60976EC) & (2 * (v10 & 0xF0A260EC)) ^ v10 & 0xF0A260EC;
  v12 = ((2 * (v10 ^ 0x460D3764)) ^ 0x6D5EAF10) & (v10 ^ 0x460D3764) ^ (2 * (v10 ^ 0x460D3764)) & 0xB6AF5788;
  v13 = v12 ^ 0x92A15088;
  v14 = (v12 ^ 0x40A0700) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xDABD5E20) & v13 ^ (4 * v13) & 0xB6AF5788;
  v16 = v14 ^ 0xB6AF5788 ^ (v15 ^ 0x92AD5600) & (16 * v14);
  v17 = (16 * (v15 ^ 0x24020188)) & 0xB6AF5780 ^ 0x940A0708 ^ ((16 * (v15 ^ 0x24020188)) ^ 0x6AF57880) & (v15 ^ 0x24020188);
  v18 = (v16 << 8) & 0xB6AF5700 ^ v16 ^ ((v16 << 8) ^ 0xAF578800) & v17;
  v19 = v10 ^ (2 * ((v18 << 16) & 0x36AF0000 ^ v18 ^ ((v18 << 16) ^ 0x57880000) & ((v17 << 8) & 0x36AF0000 ^ 0x10A80000 ^ ((v17 << 8) ^ 0x2F570000) & v17)));
  v20 = (((v4 ^ 0xBEF173FA) + 1091472390) ^ ((v4 ^ 0x2B0C464F) - 722224719) ^ ((v4 ^ 0xAB87CCEE) + 1417163538)) + (((*(v8 + 76) ^ 0x2E594A26) - 777603622) ^ ((*(v8 + 76) ^ 0x83DACE2A) + 2082812374) ^ ((*(v8 + 76) ^ 0x93F97D57) + 1812365993)) - 1157644090;
  v21 = (v20 ^ 0xA1F43DE0) & (2 * (v20 & 0xC1F631F0)) ^ v20 & 0xC1F631F0;
  v22 = ((2 * (v20 ^ 0xA13C5DE0)) ^ 0xC194D820) & (v20 ^ 0xA13C5DE0) ^ (2 * (v20 ^ 0xA13C5DE0)) & 0x60CA6C10;
  v23 = v22 ^ 0x204A2410;
  v24 = (v22 ^ 0x804800) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0x8329B040) & v23 ^ (4 * v23) & 0x60CA6C10;
  v26 = v24 ^ 0x60CA6C10 ^ (v25 ^ 0x82000) & (16 * v24);
  v27 = (16 * (v25 ^ 0x60C24C10)) & 0x60CA6C10 ^ 0x60482C10 ^ ((16 * (v25 ^ 0x60C24C10)) ^ 0xCA6C100) & (v25 ^ 0x60C24C10);
  v28 = (v26 << 8) & 0x60CA6C00 ^ v26 ^ ((v26 << 8) ^ 0xCA6C1000) & v27;
  *(v8 + 72) = v19 ^ 0xC29836A7;
  *(v8 + 76) = v20 ^ (2 * ((v28 << 16) & 0x60CA0000 ^ v28 ^ ((v28 << 16) ^ 0x6C100000) & ((v27 << 8) & 0x60CA0000 ^ 0x20820000 ^ ((v27 << 8) ^ 0xCA6C0000) & v27))) ^ 0x7E88108B;
  v29 = STACK[0x550];
  v30 = (((LODWORD(STACK[0x37C]) ^ 0x8E2B11E1) + 1909779999) ^ ((LODWORD(STACK[0x37C]) ^ 0xEE06B182) + 301551230) ^ ((LODWORD(STACK[0x37C]) ^ 0x5E575938) - 1582782776)) - 1450038697 + (((*(STACK[0x550] + 80) ^ 0xB23FD0F8) + 1304440584) ^ ((*(STACK[0x550] + 80) ^ 0xAD8652ED) + 1383705875) ^ ((*(STACK[0x550] + 80) ^ 0x21C37B4E) - 566459214));
  v31 = (v30 ^ 0x8B53C01E) & (2 * (v30 & 0xD363C85F)) ^ v30 & 0xD363C85F;
  v32 = ((2 * (v30 ^ 0x8953C008)) ^ 0xB46010AE) & (v30 ^ 0x8953C008) ^ (2 * (v30 ^ 0x8953C008)) & 0x5A300856;
  v33 = v32 ^ 0x4A100851;
  v34 = (v32 ^ 0x10000805) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x68C0215C) & v33 ^ (4 * v33) & 0x5A300854;
  v36 = v34 ^ 0x5A300857 ^ (v35 ^ 0x48000050) & (16 * v34);
  v37 = (16 * (v35 ^ 0x12300803)) & 0x5A300850 ^ 0x58300807 ^ ((16 * (v35 ^ 0x12300803)) ^ 0xA3008570) & (v35 ^ 0x12300803);
  v38 = (v36 << 8) & 0x5A300800 ^ v36 ^ ((v36 << 8) ^ 0x30085700) & v37;
  v39 = v30 ^ (2 * ((v38 << 16) & 0x5A300000 ^ v38 ^ ((v38 << 16) ^ 0x8570000) & ((v37 << 8) & 0x5A300000 ^ 0x4A300000 ^ ((v37 << 8) ^ 0x30080000) & v37)));
  v40 = (((LODWORD(STACK[0x374]) ^ 0x1207E1E1) - 302506465) ^ ((LODWORD(STACK[0x374]) ^ 0x88C65CE2) + 2000266014) ^ ((LODWORD(STACK[0x374]) ^ 0xA4BB4458) + 1531231144)) - 756166094 + (((*(STACK[0x550] + 84) ^ 0xE6D093D9) + 422538279) ^ ((*(STACK[0x550] + 84) ^ 0xF4F02D1D) + 185586403) ^ ((*(STACK[0x550] + 84) ^ 0x2C5A479F) - 744114079));
  *(v29 + 80) = v39 ^ 0x695921AA;
  *(v29 + 84) = v40 ^ ((v40 ^ 0xE9690A55) + 1130441431) ^ ((v40 ^ 0xA2AE8A48) + 145140428) ^ ((v40 ^ 0x62C7A0DE) - 925925282) ^ ((v40 ^ 0x7CF7FFBF) - 687874243) ^ 0x6B8D2627;
  STACK[0x430] -= 320;
  return (STACK[0x4B0])();
}

uint64_t sub_1C21BCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v18 = STACK[0x2D0] - 876;
  v19 = STACK[0x3A0];
  STACK[0x358] = *(v17 + 8 * (STACK[0x2D0] - 824));
  STACK[0x2F0] = v19;
  STACK[0x468] = a17;
  v20 = *(v19 + 68);
  *(v19 + (v20 & 0x3F)) = -22;
  return (*(v17 + 8 * ((1284 * ((v20 & 0x3Fu) > 0x37)) ^ v18)))(a1, 544);
}

uint64_t sub_1C21BCC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = *(v18 + 8 * (v13 - 2234));
  v21 = *v15;
  v22 = a2 - 4 + a8;
  *(*v15 + v22) = 106;
  *(v21 + v22 + 1) = (v19 ^ 1) - 2 * ((v19 ^ 1) & 0xEE) + 106;
  *(v21 + v22 + 2) = (v17 ^ 0x87) - (v14 & (2 * (v17 ^ 0x87))) + 106;
  *(v21 + v22 + 3) = v16 ^ 0x61;
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1C21BCCB0@<X0>(int a1@<W5>, int a2@<W8>)
{
  if ((a2 - 1063529613) <= 0x12 && ((1 << (a2 + 115)) & 0x50121) != 0)
  {
    return (*(v4 + 8 * ((1002 * ((((a1 - 197) ^ 0xFEAF0ED6) & *(v3 + 48 * v5 + 40)) == ((12 * ((a1 + 58) ^ 0xFEAF0F9C)) ^ 0x378))) ^ (v2 - 22080154))))();
  }

  else
  {
    return (*(v4 + 8 * ((3949 * ((((v2 - 22080832) ^ 0x32D) & *(v3 + 48 * v5 + 40)) == 0)) ^ (v2 - 22080016))))(4294925278);
  }
}

uint64_t sub_1C21BCD90()
{
  v5 = (v1 + v3 - 12);
  v6.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v6.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  v7 = veorq_s8(*(v1 + v0 - 16), v6);
  v5[-1] = veorq_s8(*(v1 + v0 - 32), v6);
  *v5 = v7;
  return (*(v4 + 8 * ((1203 * (((v2 + 1080834198) & 0xBF93C7D6) - 14 - (v1 & 0xFFFFFFE0) == 600)) ^ (((v2 + 1080834198) & 0xBF93C7D6) - 361))))();
}

uint64_t sub_1C21BCE64@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v12 = (((v11 + 2138187638) & 0x808DD5EF) - 1667559590) ^ v8;
  v13 = v12 == -1;
  v14 = ((((&a3 | 0x663E13BA) ^ 0xFFFFFFFE) - (~&a3 | 0x99C1EC45)) ^ 0x48C3C13A) * v7;
  a3 = &a2;
  a4 = v9;
  a5 = a1 - v14;
  a6 = (v11 - 600) ^ v14;
  a7 = v14 + ((v12 + 1) ^ (v11 + 1836030645)) + ((2 * (v12 + 1)) & 0xDADF3D7C) - 1091239968;
  v15 = (*(v10 + 8 * (v11 + 1392)))(&a3);
  return (*(v10 + 8 * (((2 * ((*(v9 + 24) == -955998424) & ~v13)) | (4 * ((*(v9 + 24) == -955998424) & ~v13))) ^ v11)))(v15);
}

uint64_t sub_1C21BD068@<X0>(int a1@<W1>, unint64_t a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = (v20 + 4 * v15);
  v22 = HIDWORD(a2) + (*v21 ^ a3) + HIDWORD(v16) + v14 * (*(*(a12 + 8) + 4 * v15) ^ (a3 + ((v19 - 1929608186) & v12) - 1607));
  *(v21 - 1) = v22 + a3 - (a1 & (2 * v22));
  return (*(v18 + 8 * (((v15 + 1 == v13) * v17) ^ (v19 + 120))))();
}

uint64_t sub_1C21BD0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v18 = v15 - 1;
  v19 = 2 * (v17 - 144);
  *(v17 - 144) = v11 - 1504884919 * (((v19 | 0x80ECF24) - (v17 - 144) + 2079889518) ^ 0x7FC4D089) - 49;
  *(v17 - 120) = &a11;
  *(v17 - 112) = v13;
  *(v17 - 136) = &a11;
  *(v17 - 128) = v12;
  (*(v14 + 8 * (v11 ^ 0xA17)))(v17 - 144);
  v20 = ((v18 & 0xF9561190) << (((v11 - 4) & 0xFD) - 123)) & (v18 ^ 0xF05709C8) ^ v18 & 0xF9561190;
  v21 = ((2 * (v18 ^ 0x20DF2AE8)) ^ 0xB31276F0) & (v18 ^ 0x20DF2AE8) ^ (2 * (v18 ^ 0x20DF2AE8)) & v16;
  v22 = v21 ^ 0x48890908;
  v23 = (v21 ^ 0x81010348) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x6624EDE0) & v22 ^ (4 * v22) & v16;
  v25 = (v24 ^ 0x40002970) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x99891218)) ^ 0x9893B780) & (v24 ^ 0x99891218) ^ (16 * (v24 ^ 0x99891218)) & (v16 - 8);
  v27 = v25 ^ v16 ^ (v26 ^ 0x98813300) & (v25 << 8);
  v28 = (v15 - 1) ^ (2 * ((v27 << 16) & 0x59890000 ^ v27 ^ ((v27 << 16) ^ 0x3B780000) & (((v26 ^ 0x41080878) << 8) & 0x59890000 ^ 0x50800000 ^ (((v26 ^ 0x41080878) << 8) ^ 0x93B0000) & (v26 ^ 0x41080878)))) ^ 0xCFEF792E;
  v29 = 1564307779 * (((v19 | 0x49C1A612) - (v17 - 144) + 1528769783) ^ 0x33ED1F1A);
  *(v17 - 144) = v29 + v11 - 716;
  *(v17 - 128) = v28 + v29;
  *(v17 - 136) = a10;
  v30 = (*(v14 + 8 * (v11 + 1542)))(v17 - 144);
  return (*(v14 + 8 * ((7 * (*(v17 - 140) != 1396564973)) ^ v11)))(v30);
}

uint64_t sub_1C21BD38C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (v2 + v5) & v6;
  v10 = (v9 ^ v3) + a2;
  *(v7 + v10) = *(a1 + v10);
  return (*(v8 + 8 * ((v10 != (v9 ^ v4) - 58) | (2 * (v10 != (v9 ^ v4) - 58)) | (v9 + 1470))))();
}

uint64_t sub_1C21BD3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v27 = 263 * (v22 ^ 0x493);
  v28 = ((((v26 - 120) | 0xF87F14DD) - ((v26 - 120) & 0xF87F14DD)) ^ 0xD2B43EA7) * v24;
  *(v26 - 120) = &a18;
  *(v26 - 112) = v28 + (v20 ^ 0xBBCB9C9D) + 1979576320 + ((v20 << (7 * (v22 ^ 0x93) - 34)) & 0x7797393A);
  *(v26 - 108) = v22 - v28 + 640;
  (*(v21 + 8 * (v22 ^ 0xD0C)))(v26 - 120);
  *(v26 - 112) = a17;
  *(v26 - 104) = &a20;
  *(v26 - 120) = (v27 - 233) ^ (((v26 - 120 + v23 - 2 * ((v26 - 120) & v23)) ^ 0x664898BD) * v24);
  v29 = (*(v21 + 8 * (v27 ^ 0xCB1)))(v26 - 120);
  return (*(v21 + 8 * (((*(v26 - 116) > v25) * (((v27 + 446385884) & 0xE564AEAF) - 683)) ^ v27)))(v29);
}

uint64_t sub_1C21BD5B0(uint64_t a1)
{
  v8 = v4 + 32;
  v9 = (((v3 + 1742) - 1954) ^ v8) + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * (((v5 == v8) * v6) ^ (v3 + 777))))();
}

uint64_t sub_1C21BD5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = v6 - 623;
  v11 = a5 + 5;
  if (v7)
  {
    v11 = a6;
  }

  LODWORD(STACK[0x450]) = v8;
  return (*(v9 + 8 * (((v11 == a6) * (v10 + 507)) ^ (v10 - 1))))();
}

uint64_t sub_1C21BD60C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 896639297 * ((((2 * a1) | 0xAB36FC72) - a1 - 1436253753) ^ 0x4130E841);
  v3 = *(a1 + 44) ^ v2;
  v4 = *a1;
  v5 = *(a1 + 32);
  v6 = (((*(a1 + 24) + v2) ^ 0x839B2274) + 2086985100) ^ (((*(a1 + 24) + v2) ^ 0x61DC5843) - 1641830467) ^ (((*(a1 + 24) + v2) ^ 0x6D7EE226) - 1837031974);
  v3 -= 1421512454;
  v7 = 1037613739 * ((152322405 - (&v9 | 0x9144165) + (&v9 | 0xF6EBBE9A)) ^ 0x27E993E5);
  v14 = *(a1 + 16);
  v10 = v4;
  v12 = v7 ^ (v3 + 1556);
  v11 = v5;
  v9 = v7 - 504759805 + v6;
  result = (*(*(&off_1F41B25C0 + v3) + v3 + 2430))(&v9);
  *(a1 + 40) = v13;
  return result;
}

uint64_t sub_1C21BD7A8(uint64_t a1)
{
  v1 = 50899313 * ((a1 - 1090466040 - 2 * (a1 & 0xBF00CF08)) ^ 0x95CBE572);
  v2 = *a1 - v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) ^ v1;
  v5 = v4 + *(v3 + 68) - 328754443;
  *(v3 + 68) = v5;
  v4 -= 752874543;
  v6 = v4 < 0xE6B870DC;
  v7 = v5 - 424120100 < v4;
  if (v6 != v5 > 0x19478F23)
  {
    v7 = v6;
  }

  return (*(*(&off_1F41B25C0 + v2 - 1802) + ((16 * v7) | (32 * v7) | v2) - 1))();
}

uint64_t sub_1C21BD874(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 75 * (v4 ^ 0x3F6);
  *v6 = a1;
  *v5 = v11 ^ (a4 + 161) ^ v8;
  v9 = (v8 + 97) ^ 0x191;
  v14 = (v8 + 1802) ^ (50899313 * ((((&v14 | 0x8CEF83A4) ^ 0xFFFFFFFE) - (~&v14 | 0x73107C5B)) ^ 0x59DB5621));
  v15 = v12;
  (*(v7 + 8 * ((v8 + 97) ^ 0x838)))(&v14);
  v14 = (v9 + 1816) ^ (50899313 * (((&v14 | 0xEBBF6A7) - (&v14 & 0xEBBF6A7)) ^ 0x2470DCDD));
  v15 = v13;
  (*(v7 + 8 * (v9 ^ 0x9A9)))(&v14);
  return 0;
}

uint64_t sub_1C21BD9C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_1C21BDA6C(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (843532609 * ((a1 + 963887202 - 2 * (a1 & 0x3973C062)) ^ 0x29CFB73C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C21BDB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  if (a11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11 != -855725886;
  }

  return (*(v12 + 8 * ((17 * v13) ^ 0x6C4)))();
}

uint64_t sub_1C21BDC10@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 ^ 0x7D6) - 509)) ^ (v3 + 320))))();
}

uint64_t sub_1C21BDC44(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = (((a4 ^ 0x244) - 225) ^ (v7 - 209)) - a2;
  if (v8 > v10)
  {
    v10 = v8;
  }

  return (*(v9 + 8 * ((v10 > (a4 ^ 0x527 ^ a7)) | (8 * (v10 > (a4 ^ 0x527 ^ a7))) | a4 ^ 0x244u)))();
}

void sub_1C21BDD24(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 1380333833 * ((2 * ((a1 ^ 0x97D979C6) & 0x97178E0E) - (a1 ^ 0x97D979C6) + 1760063985) ^ 0x4163A3BD);
  v2 = 1388665877 * ((&v5 - 2145392099 - 2 * (&v5 & 0x801FEA1D)) ^ 0xDB288F1);
  v6 = v1 + v2 - 562358890;
  v7 = v2 - 325162679;
  v5 = v4;
  v3 = *(&off_1F41B25C0 + v1 + 21) - 8;
  (*&v3[8 * (v1 ^ 0x9A3)])(&v5);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1C21BDF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22)
{
  v27 = 1556366573 * (&a18 ^ 0x64E423EA);
  LODWORD(a21) = 2330 - v27;
  a20 = a15;
  a19 = ((v24 ^ 0xFFFEFF9F) + 872129648 + ((2 * v24) & 0xFFFDFF3E)) ^ v27;
  (*(v26 + 19584))(&a18);
  v28 = 896639297 * ((-1747393503 - (&a18 | 0x97D8E421) + (&a18 | 0x68271BDE)) ^ 0x7C8C8DA6);
  a18 = (v23 ^ 0x77FBF99D) + ((2 * v23) & 0xEFF7F33A) - 1679820809 + v28;
  a19 = v28 + 1690;
  a20 = v22;
  a21 = a15;
  (*(v26 + 19648))(&a18);
  v29 = 896639297 * ((2 * (&a18 & 0x346F9078) - &a18 - 879726720) ^ 0xDF3BF9F8);
  a18 = (a11 ^ 0x7BDBF5D7) + ((2 * a11) & 0xF7B7EBAE) - 1744831555 + v29;
  a19 = v29 + 1690;
  a20 = v25;
  a21 = a15;
  v30 = (*(v26 + 19648))(&a18);
  return (*(v26 + 8 * ((2518 * (a22 == -955998424)) ^ 0x120u)))(v30);
}

uint64_t sub_1C21BE258(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v14 = (v13 + v9);
  v15 = vaddq_s8(vsubq_s8(v14[1], vandq_s8(vaddq_s8(v14[1], v14[1]), a4)), a1);
  *v11 = vaddq_s8(vsubq_s8(*v14, vandq_s8(vaddq_s8(*v14, *v14), a4)), a1);
  v11[1] = v15;
  return (*(v12 + 8 * (a9 + v10 + 233)))();
}

uint64_t sub_1C21BE354(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a6.i64[0] = *(v13 + 4);
  a6.i32[2] = *(v13 + 12);
  v14 = vextq_s8(a1, a6, 0xCuLL);
  v15 = a6;
  v15.i32[3] = *(v13 + 16);
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a3), vandq_s8(v14, a2)), 1uLL), *(v13 - 908));
  v14.i32[0] = *(v9 + 4 * (*(v13 + 4) & 1));
  v14.i32[1] = *(v9 + 4 * (*(v13 + 8) & 1));
  v14.i32[2] = *(v9 + 4 * (*(v13 + 12) & v12));
  v14.i32[3] = *(v9 + 4 * (v15.i8[12] & 1));
  *v13 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a4)), a5), v14);
  return (*(a9 + 8 * ((15 * (v11 != 4)) ^ v10)))();
}

uint64_t sub_1C21BE398()
{
  STACK[0x2D0] = v0;
  *(v3 - 168) = 101 - 65 * ((((v3 + 64) | 0x91) - ((v3 + 64) & 0x91)) ^ 0xCF);
  *(v3 - 192) = &STACK[0x5B6D72DB965A84BC];
  *(v3 - 176) = &STACK[0x1EF61A919C9B7723];
  *(v3 - 180) = (v2 - 1599) ^ (843532609 * ((((v3 - 192) | 0xBF5B0D91) - ((v3 - 192) & 0xBF5B0D91)) ^ 0xAFE77ACF));
  v4 = *(v1 + 8 * (v2 + 580));
  STACK[0x2D8] = v1;
  v5 = v4(v3 - 192);
  v6 = STACK[0x2D8];
  v7 = *(v3 - 184);
  LODWORD(STACK[0x2E8]) = v7;
  return (*(v6 + 8 * (((v7 == -955998424) * ((7 * ((v2 + 1452787437) & 0xA96835CF ^ 0x4C8)) ^ 0x3E0)) | v2)))(v5);
}

uint64_t sub_1C21BE4A0()
{
  v3 = 50899313 * ((((v1 - 192) | 0x94F49AD4) - (v1 - 192) + ((v1 - 192) & 0x6B0B6528)) ^ 0xBE3FB0AE);
  *(v1 - 192) = &STACK[0x508];
  *(v1 - 176) = 0;
  *(v1 - 168) = &STACK[0x4D4];
  *(v1 - 160) = v0 - v3 + 89;
  *(v1 - 156) = 808406678 - v3;
  v4 = (*(v2 + 8 * (v0 ^ 0xAA2)))(v1 - 192);
  return (*(STACK[0x2D8] + 8 * (((*(v1 - 184) == -955998424) * ((v0 - 1212528184) & 0x4845B3BB ^ (2 * v0) ^ 0x6EE ^ 0xB0)) ^ v0)))(v4);
}

uint64_t sub_1C21BE580()
{
  v4 = (v0 - 509) | 0x201;
  v5 = v4 - 919;
  (*(v1 + 8 * (v4 + 606)))(*STACK[0x238], STACK[0x388], LODWORD(STACK[0x2FC]));
  v6 = STACK[0x2D8];
  v7 = LODWORD(STACK[0x2E8]);
  v8 = 896639297 * ((2 * (v2 & 0x7F0AB8A5A0730290) - v2 + 0xF5475A5F8CFD6DLL) ^ 0x308ECC7D4B276B15);
  *(v3 - 152) = (v5 - 2030745554) ^ v8;
  *(v3 - 184) = v7 ^ v8;
  *(v3 - 160) = 956024050 - v8;
  *(v3 - 168) = v5 - 1085087330 + v8;
  *(v3 - 164) = v8 ^ (v5 - 1085087330) ^ 0x13;
  *(v3 - 176) = ((v5 - 1085087330) ^ 0x67) + v8;
  *(v3 - 172) = v8;
  v9 = (*(v6 + 8 * (v5 ^ 0xA29)))(v3 - 192);
  return (*(STACK[0x2D8] + 8 * *(v3 - 192)))(v9, 0, 0);
}

uint64_t sub_1C21BE6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, int a37, char a38)
{
  if (a38 == 2)
  {
    return (*(v38 + 8 * (((a37 != 0) * (a6 - 190326880)) ^ (a6 - 190325647))))(4104640541, a9, 4104640541);
  }

  if (a38 == 1)
  {
    return (*(v38 + 8 * ((100 * (a37 != 0)) ^ (a6 - 190325078))))(4104640541, a2, 4104640541);
  }

  a36 = (&a20 ^ 0xBA) * (&a20 + 17);
  a35 = (&a20 ^ 0xBB) * (&a20 + 18);
  return (*(v38 + 5328))(&a20 + 18, a2, 4104640541, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1C21BE90C(uint64_t a1, uint64_t a2)
{
  v4 = 268 * (v2 ^ 0x185);
  v5 = (*(v3 + 8 * (v2 ^ 0x8E0u)))(*STACK[0x238], a2, LODWORD(STACK[0x324]));
  return (*(STACK[0x2D8] + 8 * (((((v4 + 282) | 0x41) - 792) * (LODWORD(STACK[0x4BC]) != -955998424)) ^ v4)))(v5, STACK[0x228]);
}

uint64_t sub_1C21BE98C()
{
  v7 = 143681137 * ((v6 - 144) ^ 0x613AB748);
  *(v6 - 136) = v5 - v7 + 1447;
  *(v6 - 132) = (v5 + v0 - 882505563) ^ v7;
  *v3 = v2;
  v3[2] = v4;
  (*(v1 + 8 * (v5 ^ 0x8FCu)))(v6 - 144);
  result = v11;
  *v10 = v9;
  *(v11 + 12) = -955998424;
  return result;
}

uint64_t sub_1C21BEA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = a16 - 1472192017;
  if (a16 - 1472192017 < 0)
  {
    v18 = 1472192017 - a16;
  }

  return (*(v16 + 8 * ((1664 * (((v18 ^ 0xD7BFDE1F) + (((7 * (v17 ^ 0x1A7)) ^ 0xAF7FBD95) & (2 * v18)) + 675289590 + ((7 * (v17 ^ 0x1A7) - 869648817) & 0x33D5CFEF)) >= 0)) ^ (7 * (v17 ^ 0x1A7)))))();
}

uint64_t sub_1C21BEAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v24 = 50899313 * ((2046097354 - ((v23 - 168) | 0x79F4F7CA) + ((v23 - 168) | 0x860B0835)) ^ 0xACC0224F);
  *(v23 - 160) = a2;
  *(v23 - 168) = v24 + v22 + 1819;
  *(v23 - 164) = v24 ^ a21;
  v25 = (*(v21 + 8 * (v22 + 2334)))(v23 - 168);
  v26 = STACK[0x308] & (((v22 + 2016) | 0x24) - 2031);
  *(&STACK[0x2C4] + v26) = -22;
  return (*(v21 + 8 * (((v26 > 0x37) * (((v22 - 34) | 0x14) + 449)) ^ v22)))(v25);
}

uint64_t sub_1C21BEC4C()
{
  v5 = (((v1 - 144) ^ 0xB31CCEEFA33E510BLL | 0xC76785F1C9BB7D9BLL) - ((v1 - 144) ^ 0xB31CCEEFA33E510BLL) + (((v1 - 144) ^ 0xB31CCEEFA33E510BLL) & 0x38987A0E36448260)) ^ 0x4400C0397E2EBAE8;
  *(v1 - 152) = 1972592813;
  *(v1 - 148) = -325332878;
  v2 = *off_1F41B2A70;
  *(v1 - 112) = -896639297 * v5;
  *(v1 - 136) = v2 ^ (896639297 * v5);
  *(v1 - 128) = 896639297 * v5 - 1189552405;
  *(v1 - 124) = 896639297 * v5;
  *(v1 - 104) = (896639297 * v5) ^ 0x86F54BA0;
  *(v1 - 120) = 896639297 * v5 - 1189552625;
  *(v1 - 116) = (896639297 * v5) ^ 0xB918DE8F;
  v3 = (*(v0 + 19160))(v1 - 144);
  return (*(v0 + 8 * *(v1 - 144)))(v3);
}

uint64_t sub_1C21BF01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char *a19, char *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v34 = (v26 - 964) | 0x800;
  v35 = 1556366573 * ((((v33 - 144) | 0xB4FC0997) + (~(v33 - 144) | 0x4B03F668)) ^ 0xD0182A7C);
  *v31 = &a17;
  *(v33 - 120) = v26 - v35 + 678;
  *(v33 - 116) = ((v34 ^ 0xFF36C217) + v27) ^ v35;
  v31[2] = v30;
  (*(v28 + 8 * (v26 + 1329)))(v33 - 144);
  a19 = &a26;
  a20 = &a22;
  *(v33 - 144) = v34 - 1504884919 * ((((v33 - 144) | 0x3DCE180B) - ((v33 - 144) & 0x3DCE180B)) ^ 0xC60DAF10) - 911;
  v31[1] = &a19;
  v31[2] = v29;
  (*(v28 + 8 * (v34 + 199)))(v33 - 144);
  *(v33 - 120) = v34 + 1388665877 * ((-2019720044 - ((v33 - 144) | 0x879D8494) + ((v33 - 144) | 0x78627B6B)) ^ 0xF5CF1987) - 1864;
  *v31 = &a17;
  v31[1] = &a15;
  v31[4] = a11;
  v31[5] = v29;
  v31[2] = &a19;
  v36 = (*(v28 + 8 * (v34 ^ 0x1B3)))(v33 - 144);
  return (*(v28 + 8 * (((((v34 - 2058942149) & 0x7AB8EF7F) - 363) * (v32 == 0)) ^ v34)))(v36);
}

uint64_t sub_1C21BF1BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 1646662347;
  v4 = *(a1 + 12) - 1739693805;
  v5 = v3 < 0xB3A0B02F;
  v6 = v3 > v4;
  if (v5 != v4 < 0xB3A0B02F)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((139 * !v6) ^ v2)))();
}

uint64_t sub_1C21BF298@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = (v14 - 105) | 0x28;
  v22 = (v19 + 4 * v12);
  v23 = HIDWORD(v16) + (*v22 ^ v11) + HIDWORD(v13) + v17 * (*(*(a11 + 8) + 4 * v12) ^ v11);
  *(v22 - 1) = v11 + ((v21 + 1420438867) & v18) + v23 - (a1 & (2 * v23)) - 124;
  return (*(v15 + 8 * (((v12 + 1 != a2) * v20) ^ v21)))();
}

uint64_t sub_1C21BF36C()
{
  v14 = 0;
  v11 = v3;
  v12 = v9;
  v13 = (v1 + v6) ^ (((&v11 - 1665673790 - 2 * (&v11 & 0x9CB7D5C2)) ^ 0x4DB5F8BD) * v5);
  (*(v2 + 8 * (v1 ^ v0)))(&v11);
  v12 = v9;
  HIDWORD(v11) = v6 - (((&v11 | 0xD4E9828E) - &v11 + (&v11 & 0x2B167D70)) ^ 0x5EBAFF1) * v5 + v1 + 972;
  (*(v2 + 8 * (v1 ^ 0x815D6D9D)))(&v11);
  v12 = v9;
  LODWORD(v11) = (v6 + v1 + 1381) ^ (50899313 * ((&v11 & 0x49BBDB32 | ~(&v11 | 0x49BBDB32)) ^ 0x9C8F0EB7));
  (*(v2 + 8 * (v6 + v1 + 1780)))(&v11);
  v12 = v8;
  LODWORD(v11) = (v1 - v4 + 998) ^ (50899313 * (&v11 ^ 0x2ACB2A7A));
  (*(v2 + 8 * (v1 - v4 + 1397)))(&v11);
  return v10 ^ 0xC7049F28;
}

void sub_1C21BF468(char a1@<W8>)
{
  v4 = v6[3] ^ 0x6A;
  v5 = ((v6[1] ^ 0x6A) << (a1 ^ 0x33)) + ((*v6 ^ 0x6A) << 24) + ((v6[2] ^ 0x6A) << 8) + v4;
  **(v1 + 8) = v5 + v2 - 2 * (v5 & 0x47049F2F ^ v4 & 7);
  *v1 = *(v3 + 24);
}

uint64_t sub_1C21BF514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, unsigned int a29, unsigned int a30)
{
  v32 = v31 + 962509176 > a30;
  if (a30 < a29 != v31 + 962509176 < (80 * a28 + 962507752))
  {
    v32 = v31 + 962509176 < (80 * a28 + 962507752);
  }

  return (*(v30 + 8 * ((a8 + 1512) | (8 * v32))))();
}

uint64_t sub_1C21BF5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = *(v14 - 128);
  v17 = ((a13 - 573365143) ^ 0xEF7D7991) & (2 * ((v16 ^ 0xCF7C7F12) & (a13 - 573365143))) ^ (v16 ^ 0xCF7C7F12) & (a13 - 573365143);
  v18 = ((2 * ((a13 - 573365143) ^ 0xE38548D1)) ^ 0x59F262E8) & ((a13 - 573365143) ^ 0xE38548D1) ^ (2 * ((a13 - 573365143) ^ 0xE38548D1)) & 0x2CF93174;
  v19 = v18 ^ 0x24091114;
  v20 = (v18 ^ 0x8F83020) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xB3E4C5D0) & v19 ^ (4 * v19) & 0x2CF93174;
  v22 = (v21 ^ 0x20E00154) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0xC193024)) ^ 0xCF931740) & (v21 ^ 0xC193024) ^ (16 * (v21 ^ 0xC193024)) & 0x2CF93170;
  v24 = v22 ^ 0x2CF93174 ^ (v23 ^ 0xC911134) & (v22 << 8);
  v25 = (a13 - 573365143) ^ (2 * ((v24 << 16) & 0x2CF90000 ^ v24 ^ ((v24 << 16) ^ 0x31740000) & (((v23 ^ 0x20682034) << 8) & 0x2CF90000 ^ 0x4C80000 ^ (((v23 ^ 0x20682034) << 8) ^ 0x79310000) & (v23 ^ 0x20682034))));
  v27 = v25 != -697427123 && ((v16 ^ (v13 - 850) ^ 0x229) & v25) == 13;
  v28 = *(v15 + 8 * ((27 * v27) ^ v13));
  *(v14 - 132) = -42899;
  return v28();
}

uint64_t sub_1C21BF800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, unint64_t a31, uint64_t a32, _DWORD *a33)
{
  *a33 = v35 + 1;
  v39 = a15 & 0x6E42EFC3 ^ (((((v36 - 762494164) ^ v37) - v35) & ~(v35 ^ (v36 - 762494164)) | v35 & ~(a15 & 0x6E42EFC3 ^ (v36 - 762494164))) >= 0) ^ v34 ^ (v34 >> 11) ^ ((v34 ^ (v34 >> 11)) << (((((a15 & 0xC3) - 44) & 0xFE) + 119) ^ 0x4C)) & v38;
  *(*a30 + a31) = ((v39 << 15) & 0xEFC60000 ^ v39 ^ *(*a30 + a31) ^ (((v39 << 15) & 0xEFC60000 ^ v39) >> 18)) + v36 - 762494164;
  return (*(v33 + 8 * (a15 & 0x6E42EFC3 ^ 0x285 | (35 * (a31 < 0x1FC)))))();
}

uint64_t sub_1C21BF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40)
{
  *(v42 - 136) = 1 - a36;
  *(v42 - 132) = a38 ^ a36;
  *(v42 - 120) = a36 ^ 0x48449A90;
  *(v42 - 144) = a37;
  *(v42 - 112) = (v41 + 1) - a36;
  *(v42 - 128) = (a38 ^ 8) + a36;
  *(v42 - 124) = a36 + a38 - 90;
  v43 = (*(v40 + 19136))(v42 - 144);
  return (*(a40 + 8 * *(v42 - 104)))(v43);
}

uint64_t sub_1C21BF9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, char *a16, int a17, uint64_t a18, unsigned int a19)
{
  v23 = 1380333833 * ((((2 * &a14) | 0xE1B4B890) - &a14 + 254124984) ^ 0x4E88F7C2);
  a14 = (v21 - 2013067335) ^ v23;
  a15 = v23 ^ 0xDC234FC1;
  a19 = v23 + 1603508753;
  a18 = a10;
  a16 = &a12;
  v24 = (*(v20 + 8 * (v21 ^ 0xA64)))(&a14);
  return (*(v20 + 8 * ((43 * (a17 == v19 + v22 - 1337)) ^ v21)))(v24);
}

uint64_t sub_1C21BFAB4@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v6 = v3 + v4 + v2;
  STACK[0x3D0] = v6;
  *(a1 + v6) = (&STACK[0x3D0] + (a2 ^ 0x67) + 12) * (&STACK[0x3D0] ^ 0xBA);
  return (*(v5 + 8 * ((2620 * (v6 == 0)) ^ a2)))();
}

uint64_t sub_1C21BFB04(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(v12 + 8 * (v13 - 2223));
  v16 = *v9;
  *(*v9 + (a8 + 1534365540)) = (((a1 + 4) >> 24) ^ 0x88) - 2 * ((((a1 + 4) >> 24) ^ 0x88) & 0x6B ^ ((a1 + 4) >> 24) & 1) + 106;
  *(v16 + (a8 + 1534365541)) = (((a1 + 4) >> 16) ^ v14) - 2 * ((((a1 + 4) >> 16) ^ v14) & 0xEE ^ ((a1 + 4) >> 16) & 4) + 106;
  *(v16 + (a8 + 1534365542)) = (v11 ^ ((a1 + 4) >> 8)) - (v8 & (2 * (v11 ^ ((a1 + 4) >> 8)))) + 106;
  *(v16 + (a8 + 1534365543)) = (a1 + 4) ^ v10;
  return v15();
}

uint64_t sub_1C21BFB18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = v11 - 1;
  *(a1 + v15) = *(v13 + v15) ^ *(v7 + (v15 & 0xF)) ^ *((v15 & 0xF) + v8 + 2) ^ ((v15 & 0xF) * a7) ^ *(v9 + (v15 & 0xF)) ^ v12;
  return (*(v14 + 8 * (((v15 == 0) * (((v10 - 266) | 0x254) ^ a2)) ^ v10)))();
}

uint64_t sub_1C21BFC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 112) = (v30 - 53) ^ (((((v32 - 144) | 0x476A9A8) - ((v32 - 144) & 0x476A9A8)) ^ 0x17AA4588) * v28);
  *(v32 - 104) = a14;
  *(v32 - 128) = &a22;
  *(v32 - 120) = &a28;
  *(v32 - 144) = &a22;
  *(v32 - 136) = a13;
  (*(v29 + 8 * (v30 + 79)))(v32 - 144);
  return (*(v29 + 8 * (((v31 - 111799921 >= ((v30 - 1230727478) & 0x495B66A3 ^ 0x7FFFF95Cu)) * ((v30 - 181301050) & 0xACE675F ^ 0x2BC)) ^ (v30 - 1877))))();
}

uint64_t sub_1C21BFCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = v19 + 210068311 * ((((2 * &a15) | 0xB000CCBE) - &a15 - 1476421215) ^ 0xCAD659FB) + 146;
  v20 = (*(v18 + 8 * (v19 ^ 0xA65u)))(&a15);
  return (*(v18 + 8 * (((a16 == v17) * (v19 + v19 - 378 + 823)) ^ v19)))(v20);
}

uint64_t sub_1C21BFE28(int a1, int a2, unsigned int a3)
{
  *(v9 + (v3 + 1)) = *(v4 + v8);
  v11 = a2 + v8 + 179 < v6;
  if (v6 < v7 != v8 + 1 > a3)
  {
    v11 = v6 < v7;
  }

  return (*(v10 + 8 * ((!v11 * ((v5 ^ a1) - 776)) ^ v5)))();
}

uint64_t sub_1C21BFE34(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 1556366573 * ((a1 & 0x53288928 | ~(a1 | 0x53288928)) ^ 0xC833553D);
  v3 = a1[1] - v2;
  v4 = a1[10] ^ v2;
  v9 = v3 - 1380333833 * (((&v9 | 0x576F35BA) - &v9 + (&v9 & 0xA890CA44)) ^ 0xE93D9E30) + 542045597;
  v5 = *(&off_1F41B25C0 + (v3 + 473373723)) - 8;
  result = (*&v5[8 * (v3 ^ 0xE3C8ED81)])(&v9);
  if (v4 > 1687932042)
  {
    if (v4 == 1973144714)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1687932043)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((15 * (((v3 + 83) ^ ((*&v5[8 * (v3 + 473376118)])((*(*(&off_1F41B25C0 + (v3 + 473373698)) + 6 * v7 + 1) - 1308994801), 0x100004077774924) == 0)) & 1)) ^ (v3 + 473375699))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1687932039)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1687932042)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[2] = 956023956;
  return result;
}

uint64_t sub_1C21C00D4@<X0>(int a1@<W8>)
{
  v6 = *(v3 + 8);
  v7 = *(v6 + 4 * v5 - 4) ^ 0xEF3021DA;
  *(v6 + 4 * (v5 + a1)) = ((v7 >> (32 - (v1 ^ 6))) & 0x15FA8AE8 | ~(v7 >> (32 - (v1 ^ 6))) & 0xEA057517) ^ 0x53554CD;
  return (*(v4 + 8 * ((11 * (v5 < 2)) ^ v2)))(87381197, 368741096);
}

uint64_t sub_1C21C0660@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 458379037;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 106)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 234)
  {
    v12 = -955998424;
    v13 = *(v2 + 8);
    v14 = (*(v2 + 24) + v3);
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 113)
    {
      v15 = -1418263074;
    }

    else
    {
      v15 = -1418263073;
    }

    *(result + 16) = 1366990188;
    *(result + 20) = v15;
    *(result + 24) = -955998424;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 + 817)))();
    v12 = 956024049;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1C21C0840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v42 = v40 ^ (a6 + 56);
  v43 = 50899313 * ((((v41 - 160) | 0x27FC3B99) - (v41 - 160) + ((v41 - 160) & 0xD803C460)) ^ 0xD3711E3);
  *(v41 - 160) = v43 + v40 + 1789;
  *(v41 - 156) = (a15 + v40 + 963 - 980241394) ^ v43;
  *(v41 - 152) = &a30;
  v44 = (*(v39 + 8 * (v40 ^ 0x900)))(v41 - 160);
  v45 = a39 & (v42 + 22081699);
  *(&a30 + v45) = -22;
  return (*(v39 + 8 * ((2280 * (v45 > 0x37)) ^ v40)))(v44);
}

uint64_t sub_1C21C0BE8@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = v3;
  v6 = (v2 + 913) ^ (1504884919 * ((&v5 + 1926493083 - 2 * (&v5 & 0x72D3F39B)) ^ 0x89104480));
  v5 = v3;
  return (*(v1 + 8 * (v2 ^ 0x8A3u)))(&v5);
}

uint64_t sub_1C21C0C50@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) + ((a1 + 89) ^ 0x7AD81A36);
  v5 = v2 + 2060982397 < ((a1 + 89) ^ 0x5297F4C5);
  v6 = v5 ^ (v4 < 1385690766);
  v7 = v2 + 2060982397 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v3 + 8 * ((963 * !v5) ^ a1)))();
}

uint64_t sub_1C21C0DF0(uint64_t result)
{
  v1 = 1388665877 * ((2 * (result & 0x1095009731B7C101) - result - 0x1095009731B7C102) ^ 0xDA106F2743E55C12);
  v2 = *(result + 28) ^ v1;
  v3 = *(result + 20) - v1;
  v4 = *(result + 32) - v1;
  v5 = *(result + 8) ^ v1;
  v6 = *(result + 24) - v1;
  v7 = *(result + 40) + v1;
  v8 = v5 >= v4;
  v9 = v5 != v4;
  v10 = v8;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v2 = v3;
  }

  *(result + 16) = v2 ^ v7;
  return result;
}

uint64_t sub_1C21C0E94(_DWORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1037613739 * (((a1 | 0xB3B49CD6) - (a1 & 0xB3B49CD6)) ^ 0x62B6B1A9);
  v2 = *(*(&off_1F41B25C0 + (v1 + 1197042493)) - 4);
  v4 = v1 + 1197042469 + 1785193651 * ((1038614717 - (&v4 | 0x3DE800BD) + (&v4 | 0xC217FF42)) ^ 0xD1CB1362) + 1073;
  v5 = v2;
  return (*(*(&off_1F41B25C0 + (v1 + 1197042469)) + (v1 ^ 0xB8A69C81) - 1))(&v4);
}

uint64_t sub_1C21C0FA8(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  v52 = vld1q_dup_f32(v51);
  v53.i64[0] = 0x8000000080000000;
  v53.i64[1] = 0x8000000080000000;
  v54.i64[0] = 0x100000001;
  v54.i64[1] = 0x100000001;
  a6.i64[0] = *(v51 + 4);
  a6.i32[2] = *(v51 + 12);
  v55 = vextq_s8(v52, a6, 0xCuLL);
  v56 = a6;
  v56.i32[3] = *(v51 + 16);
  v57 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v56, vnegq_f32(v54)), vandq_s8(v55, v53)), 1uLL), *(v51 + 1588));
  v55.i32[0] = *(&a51 + (*(v51 + 4) & 1));
  v55.i32[1] = *(&a51 + (*(v51 + 8) & 1));
  v55.i32[2] = *(&a51 + (*(v51 + 12) & 1));
  v55.i32[3] = *(&a51 + (v56.i8[12] & 1));
  *v51 = veorq_s8(vaddq_s32(vsubq_s32(v57, vandq_s8(vaddq_s32(v57, v57), vdupq_n_s32(0xAEF274FE))), vdupq_n_s32(0xD7793A7F)), v55);
  return (*(a9 + 7416))();
}

uint64_t sub_1C21C1020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(a4 + v8) - ((v4 + 98) & (2 * *(a4 + v8))) + 106;
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ (v4 - 208))))();
}

void sub_1C21C128C()
{
  (*(v2 + 8 * (((v0 - 800) | 0x200) + 1839)))(*v3, *v1, *(v1 + 8) + ((((v0 - 800) | 0x200) - 119) ^ 0xE4ADB125));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  JUMPOUT(0x1C21C12CCLL);
}

uint64_t sub_1C21C12E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x210] = v8;
  *(v9 + 1424) = 0;
  v14 = (v7 - 11) | 0x200;
  memset((v9 + 1432), 106, 104);
  *(v10 + 96) = v9;
  STACK[0x3F8] = v10 + 96;
  STACK[0x270] = v9;
  *(v9 + 476) = v12;
  v15 = STACK[0x4F0];
  STACK[0x3E0] = *(v13 + 8 * v7);
  STACK[0x248] = v10;
  STACK[0x288] = v10;
  v16 = STACK[0x430];
  v17 = (&STACK[0x570] + STACK[0x430]);
  STACK[0x3B8] = v17;
  STACK[0x430] = (v14 ^ 0x3BCLL) + v16;
  LODWORD(STACK[0x2B0]) = v11;
  LODWORD(STACK[0x4C0]) = v11;
  STACK[0x4A0] = v15;
  LODWORD(STACK[0x494]) = 1063529601;
  LODWORD(STACK[0x454]) = 1308994801;
  STACK[0x470] = 0;
  LODWORD(STACK[0x2F8]) = 323530483;
  LODWORD(STACK[0x450]) = 1326566546;
  *v17 = 975275501;
  LODWORD(STACK[0x2A8]) = -1771859184;
  LODWORD(STACK[0x298]) = -452845373;
  LODWORD(STACK[0x2A0]) = -1691509893;
  v19 = *v17 != 975275501 || LODWORD(STACK[0x450]) != 1326566545;
  return (*(v13 + 8 * ((v19 * ((((v14 ^ 0x2B5) + 109) ^ 0x254) + 822)) ^ v14 ^ 0x2B5)))(a1, a2, a3, a4, a5, a6, a7, 1326566545);
}

uint64_t sub_1C21C14BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 144) = &a11;
  *(v18 - 136) = v15;
  *(v18 - 128) = &a11;
  *(v18 - 120) = &a13;
  *(v18 - 112) = (v13 + 1406) ^ (1785193651 * ((((2 * (v18 - 144)) | 0xBEEEFFF0) - (v18 - 144) + 545816584) ^ 0xCCAB93D8));
  *(v18 - 104) = v14;
  v19 = (*(v16 + 8 * (v13 ^ 0xA06)))(v18 - 144);
  return (*(v16 + 8 * ((247 * (v17 - 111799922 >= ((v13 - 386) | 0x182u) + 2147482749)) ^ (v13 - 518))))(v19);
}

uint64_t sub_1C21C1578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  *(v33 - 128) = v30 + 50899313 * ((2 * ((v33 - 144) & 0x443C7FB0) - (v33 - 144) + 1002668111) ^ 0x1108AA35) - 954;
  *(v33 - 144) = v32;
  *(v33 - 136) = v31;
  (*(v29 + 8 * (v30 + 625)))(v33 - 144);
  v34 = a29;
  *(v33 - 104) = &a28;
  *(v33 - 112) = (v30 + 461) ^ (1785193651 * ((2 * ((v33 - 144) & 0x7E704DF0) - (v33 - 144) - 2121289208) ^ 0x92535E28));
  *(v33 - 128) = &a20;
  *(v33 - 120) = &a20;
  *(v33 - 144) = v34;
  *(v33 - 136) = v32;
  (*(v29 + 8 * (v30 + 593)))(v33 - 144);
  *(v33 - 112) = (v30 + 461) ^ (1785193651 * ((((v33 - 144) | 0x6C553DED) - (v33 - 144) + ((v33 - 144) & 0x93AAC210)) ^ 0x7F89D1CD));
  *(v33 - 104) = &a28;
  *(v33 - 128) = &a20;
  *(v33 - 120) = a14;
  *(v33 - 144) = &a20;
  *(v33 - 136) = v32;
  (*(v29 + 8 * (v30 + 593)))(v33 - 144);
  *(v33 - 128) = (v30 - 875955931) ^ (1785193651 * (((((v33 - 144) | 0x18BB79F6) ^ 0xFFFFFFFE) - (~(v33 - 144) | 0xE7448609)) ^ 0xF4986A29));
  *(v33 - 144) = &a20;
  *(v33 - 136) = a15;
  (*(v29 + 8 * (v30 + 635)))(v33 - 144);
  *(v33 - 144) = &a22;
  *(v33 - 136) = &a20;
  *(v33 - 128) = v30 + 50899313 * ((v33 - 144) ^ 0x2ACB2A7A) - 954;
  (*(v29 + 8 * (v30 ^ 0xE97)))(v33 - 144);
  *(v33 - 128) = v30 + 210068311 * ((-1580680180 - ((v33 - 144) | 0xA1C8BC0C) + ((v33 - 144) | 0x5E3743F3)) ^ 0xCCE17C57) - 166;
  *(v33 - 144) = &a20;
  *(v33 - 136) = &a22;
  v35 = (*(v29 + 8 * (v30 + 576)))(v33 - 144);
  return (*(v29 + 8 * (((((v30 - 1267) | 0x35) + ((v30 - 1310) | 0x60) - 1240) * (a19 == 0)) | (v30 - 399))))(v35);
}

void sub_1C21C17F8(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1C21C1980()
{
  v5 = *(v8 + 8);
  v6 = 896639297 * ((-25653850 - ((v4 - 144) | 0xFE788DA6) + ((v4 - 144) | 0x1877259)) ^ 0x152CE421);
  *(v4 - 136) = v10;
  *(v4 - 144) = v6 ^ 0x72FF1247;
  *(v4 - 140) = (v0 + 1472) ^ v6;
  (*(v3 + 8 * (v0 + 2006)))(v4 - 144);
  *(v4 - 112) = (v0 + 1924) ^ (1785193651 * ((-1937230823 - ((v4 - 144) | 0x8C883419) + ((v4 - 144) | 0x7377CBE6)) ^ 0x60AB27C6));
  *(v4 - 144) = v9;
  *(v4 - 136) = v2;
  *(v4 - 104) = v1;
  *(v4 - 128) = v9;
  *(v4 - 120) = v10;
  (*(v3 + 8 * (v0 + 2056)))(v4 - 144);
  *(v4 - 128) = v0 + 210068311 * (((v4 - 144) & 0x1850FF5B | ~((v4 - 144) | 0x1850FF5B)) ^ 0x75793F00) + 1297;
  *(v4 - 144) = v9;
  *(v4 - 136) = v5;
  return (*(v3 + 8 * (v0 ^ 0x80F)))(v4 - 144);
}

uint64_t sub_1C21C1B04(int8x16_t *a1, int8x16_t a2, double a3, double a4, int8x16_t a5)
{
  v10 = (v9 + v5);
  v11 = vaddq_s8(vsubq_s8(v10[1], vandq_s8(vaddq_s8(v10[1], v10[1]), a5)), a2);
  *a1 = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a5)), a2);
  a1[1] = v11;
  return (*(v8 + 8 * ((835 * (((v6 - 195) ^ v7) == 64)) ^ v6)))();
}

uint64_t sub_1C21C1B6C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x430] = STACK[0x210];
  STACK[0x488] = a1;
  return (*(v2 + 8 * (((((STACK[0x500] == 0) ^ (21 * ((v1 - 13) ^ 0x91) + 1)) & 1) * (441 * ((v1 - 1037) ^ 0x3B9) - 777)) ^ (v1 - 1037))))();
}

uint64_t sub_1C21C1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v28 = v24 + 2043;
  *(v27 - 144) = &a22;
  *(v27 - 136) = a13;
  *(v27 - 104) = a14;
  *(v27 - 128) = &a22;
  *(v27 - 120) = &a24;
  *(v27 - 112) = (v24 + 1990) ^ (1785193651 * ((((v27 - 144) | 0xCA637154) - (v27 - 144) + ((v27 - 144) & 0x359C8EA8)) ^ 0xD9BF9D74));
  v29 = (*(v26 + 8 * (v24 ^ 0x8BE)))(v27 - 144);
  return (*(v26 + 8 * (((v25 - 111799921 >= ((v28 - 1230727478) & 0x495B66A3 ^ 0x7FFFF95Cu)) * ((v28 - 181301050) & 0xACE675F ^ 0x2BC)) ^ (v28 - 1877))))(v29);
}

uint64_t sub_1C21C1CD8@<X0>(int a1@<W8>)
{
  v8 = ((2 * (v5 & 0x29C90C60) - v5 + 1446441883) ^ 0x7CFDD9E1) * v1;
  *(v6 - 176) = 0;
  *(v6 - 168) = &STACK[0x3DC];
  *(v6 - 160) = v3 - v8 + 725;
  *(v6 - 156) = a1 - v8;
  *(v6 - 192) = &STACK[0x500];
  (*(v7 + 8 * (v3 + 2266)))(v6 - 192);
  v9 = STACK[0x2D8];
  v10 = *(v6 - 184);
  STACK[0x3A8] = v2;
  return (*(v9 + 8 * (((v10 == v4 + 147 * (v3 ^ 0xB4) - 882) * ((v3 + 356326153) & 0xEAC2E7FF ^ 0x80)) ^ v3)))(1976938495, 1384429306, 111, STACK[0x2D0], 956024049, 3338968872, 2968400750, 104);
}

uint64_t sub_1C21C1DE0@<X0>(int a1@<W1>, uint64_t a2@<X3>, unsigned int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q3>)
{
  v8 = (a2 + a3);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a5)), a4);
  *v6 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a5)), a4);
  v6[1] = v9;
  return (*(v7 + 8 * (a1 + v5 + 1039)))();
}

uint64_t sub_1C21C1E44@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, unint64_t *)@<X6>, char a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = (a1 + v11);
  *v15 = a3;
  v15[1] = v9;
  v15[2] = v10;
  *(v11 + a9 + a1 - 25) = v12;
  v16 = 50899313 * ((v14 - 1623001586 - 2 * ((v14 - 168) & 0x9F42F6B6)) ^ 0xB589DCCC);
  *(v14 - 168) = v16 + a9 + 1833;
  *(v14 - 164) = v16 ^ 0x1398650F;
  *(v14 - 160) = a1;
  v18 = (*(v13 + 8 * (a9 + 2348)))(v14 - 168);
  return a2(v18, &STACK[0x2C4]);
}

uint64_t sub_1C21C1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a21 + v33 + 72);
  v38 = ((2 * v33) & 0xF6EF3ED8) + (v33 ^ 0x7B779F6C) + v34;
  *(a2 + v38) = ((v37 >> ((v35 - a5) ^ (a7 + 24))) ^ 0x3E) - 2 * (((v37 >> ((v35 - a5) ^ (a7 + 24))) ^ 0x3E) & 0x6B ^ (v37 >> ((v35 - a5) ^ (a7 + 24))) & 1) + 106;
  *(a2 + v38 + 1) = (BYTE2(v37) ^ 0x7A) - 2 * ((BYTE2(v37) ^ 0x7A) & 0xEE ^ BYTE2(v37) & 4) + 106;
  *(a2 + v38 + 2) = (BYTE1(v37) ^ 0xF9) - ((2 * (BYTE1(v37) ^ 0xF9)) & 0xD4) + 106;
  *(a2 + v38 + 3) = v37 ^ 0x31;
  return (*(v36 + 8 * (((2 * (v33 + 4 < a33)) | (16 * (v33 + 4 < a33))) ^ v35)))();
}

uint64_t sub_1C21C2038@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = 25 * (a2 ^ 0x40F);
  if (((v5 + 200) | a1) == 0x385)
  {
    v7 = 0;
  }

  else
  {
    v6 = (*v2 ^ 0x6A) - (*v3 ^ 0x6A);
    v7 = v6 - 1674042087 - ((2 * v6) & 0x38704A32) == -1674042087;
  }

  v8 = !v7;
  return (*(v4 + 8 * ((62 * v8) ^ v5)))();
}

uint64_t sub_1C21C2100(uint64_t a1)
{
  v3 = STACK[0x388];
  v4 = (LODWORD(STACK[0x2FC]) ^ ((v2 + 8) + 0x5F7F6FB534B6E866)) - 0x5F7F6FB534B6EF70 + ((LODWORD(STACK[0x2FC]) << v2) & 0x696DDEDE) + 1;
  STACK[0x3D0] = v4;
  return (*(v1 + 8 * (v2 | (4 * (v4 == 0)))))(a1, v3);
}

void sub_1C21C26C0(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) - 2003753422;
  v3 = *(*(a1 + 8) + 4) - 2003753422;
  v4 = (v2 < 1615922243) ^ (v3 < 1615922243);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < 1615922243;
  }

  else
  {
    v6 = v5;
  }

  v1 = *a1 ^ (50899313 * ((a1 - 1691385696 - 2 * (a1 & 0x9B2F80A0)) ^ 0xB1E4AADA));
  __asm { BRAA            X14, X17 }
}

void sub_1C21C2788()
{
  if (v0 == 1578640067)
  {
    v2 = -955998424;
  }

  else
  {
    v2 = 956024048;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_1C21C2830(uint64_t a1, ...)
{
  va_start(va, a1);
  v5 = ((v4 ^ 0x150 ^ (v4 - 1120440941)) + v1) & 0xFFFFF000;
  v6 = (*(v3 + 8 * (v4 | 0x922)))(**(v2 + 8 * (v4 - 134)), va, (((v5 ^ 0x757DF9B3) + 711376168) ^ ((v5 ^ 0x41F7E528) + 518824381) ^ ((v5 ^ 0x348A1C9B) + 1804687376)) - 1595622549, 1) == 0;
  return (*(v3 + 8 * ((2 * v6) | (4 * v6) | v4)))();
}

void sub_1C21C298C(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = 1388665877 * ((-2 - ((a1 | 0xF3824F06) + (~a1 | 0xC7DB0F9))) ^ 0x81D0D215);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 16) ^ v1;
  v11 = 0x57BFDE1100000040;
  v12 = &v19;
  v9 = 0x57BFDE1100000082;
  v10 = &v20;
  v15 = 0x57BFDE1100000001;
  v16 = &v8;
  v17 = 0x57BFDE1100000082;
  v18 = &v21;
  v13 = 0x57BFDE1100000082;
  v14 = &v22;
  if (v3 | v4)
  {
    v6 = v5 == 1376218763;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21C2E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W8>)
{
  v11 = v6 + 32;
  v12 = (v11 ^ a2 ^ v8 ^ (v7 + 366)) + v5;
  v13 = *(v4 + v12 - 15);
  v14 = *(v4 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v9 == v11) * a3) ^ (a4 + v8 + 1031))))();
}

uint64_t sub_1C21C2E34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34, uint64_t a35, uint64_t a36, int a37, uint64_t a38)
{
  v42 = __ROR8__((((a3 >> ((v38 + 78) ^ 0xDCu)) ^ 0x6983FFD6E8901F4CLL) & ((a3 << 27) ^ 0x75DD86818FFFFFFFLL) | (a3 << 27) & 0x967C002910000000) ^ 0x5B07ABD63F28DDAELL, 27);
  v43 = a6 ^ a35;
  v44 = v42 ^ v39 ^ 0xEBA2FF2859FD2712;
  v45 = v43 ^ v41;
  v46 = (v44 & 0x3A5392317273E0A1 ^ (v42 ^ v40 ^ 0x69CC5624BAF37966) & (v42 ^ v39 ^ 0xC95D8B6F45E03064) ^ 0xDDACEFFEEFEEFFDFLL) - (v42 ^ v40 ^ 0x7160B052D49D8EB1 ^ v44);
  v47 = (v42 ^ v40 ^ 0x8EF14E09D884028ELL) & (v43 ^ 0x489CA75524037553);
  v48 = v43 & 0xDD6E8A1C10049B49;
  v49 = (v43 ^ v41) & 0xB0C2D34A9D0153E6 ^ (v43 ^ v41 ^ 0x2A06C6B7DA91B8B7) & (v43 ^ 0x7A18BE046FDD94ALL) ^ v42 ^ v40 ^ 0xCE92E1E910B78411;
  v50 = v42 & 0x49EB5C78E6EB24DALL ^ v43 ^ v41 ^ (v42 ^ 0x26DB40ED6B97CF56) & (v39 ^ 0x5992680537632417);
  v51 = v49 ^ v43;
  v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
  v53 = v44 ^ v48 ^ v47;
  v54 = (v45 ^ 0xD5F93948256E4748) & (v39 ^ 0x8D98CB4E9ACE6E66);
  v55 = v45 & 0x621E00CCB4B99154 ^ 0x4018004824280140 ^ v54;
  v56 = v53 ^ v49;
  v57 = v53 ^ v49 ^ 0x6BF0C9F74941C25CLL;
  v58 = v51 & 1;
  if ((v58 & v54) - 0x4E793E3C56366B24 - 2 * (v58 & v54) != 0xB186C1C3A9C994DCLL)
  {
    v58 = -v58;
  }

  v59 = (v58 + v55) ^ v52;
  v60 = v50 ^ v39 ^ v46;
  v61 = v59 ^ 0x9955B5F09A39722BLL ^ (8 * (v59 ^ 0x9955B5F09A39722BLL));
  *(&v62 + 1) = v59 ^ 0x9955B5F09A39722BLL;
  *&v62 = v59;
  v63 = (v62 >> 39) & 0xDC732AEA79FFFFFFLL ^ v61 & 0xB1E0157C790D9D1CLL ^ (v61 ^ 0xA078A8300D000A5) & (((v59 ^ 0x9955B5F09A39722BLL) >> 61) ^ 0x4E1FEA8386F262E3) ^ (v61 & 0xE5D450DAD15DAFD6 ^ 0xE61C950D47C66D18 ^ (v61 ^ 0xC5904018C000A352) & (((v59 ^ 0x9955B5F09A39722BLL) >> 61) ^ 0xE5D450DAD15DAFD6)) & (((v59 ^ 0x9955B5F09A39722BLL) << 25) ^ 0x56CC23AD53DFFFDFLL);
  v64 = v50 ^ (v50 >> 1) ^ ((v50 >> 6) | (v50 << 63)) ^ ((v63 ^ 0x6C2019E840359937) + ((v50 << 58) ^ 0x9800000000000000) - 2 * ((v63 ^ 0x6C2019E840359937) & ((v50 << 58) ^ 0x9800000000000000)));
  v65 = v53 ^ 0xF040BFC04432D311 ^ (v53 >> 7);
  v66 = (v60 >> 17) ^ (v60 >> 10) ^ v60 ^ 0x8A0459A33140E2A8 ^ ((v60 ^ 0x8A0459A33140E2A8) << 47) ^ ((v60 ^ 0x8A0459A33140E2A8) << 54);
  *(&v62 + 1) = (v65 >> 3) ^ (v53 >> 44);
  *&v62 = (v65 << 61) ^ ((v53 ^ 0xF040BFC04432D311) << 20);
  v67 = ((v53 ^ 0xF040BFC04432D311) << 57) ^ ((v53 ^ 0xF040BFC04432D311) << 23) ^ (v62 >> 61);
  *(&v62 + 1) = v57;
  *&v62 = v56;
  v68 = v57 ^ __ROR8__(v57, 19) ^ (v62 >> 28) ^ v67;
  v69 = v66 ^ 0x6B182D2C0448177DLL ^ v67;
  v70 = v69 ^ 0xEAB41F6AAFB52612;
  v71 = (v69 ^ 0xBCFCA461DC251A0BLL) & (v68 ^ 0xC34A6B24737C7357);
  v72 = (v64 ^ 0x191C9282ED08BABCLL) & (v66 ^ 0x9730B0A7CC71DEA0);
  v73 = (v63 ^ 0x6C2019E840359937) & (~(2 * (v68 ^ 0xC34A6B24737C7357)) + (v68 ^ 0xC34A6B24737C7357));
  v74 = v63 & 0x7821F52B93999762 ^ v68 ^ 0xC34A6B24737C7357 ^ (v64 ^ 0x9EC29856816ED221) & (v63 ^ 0x93DFE617BFCA66C8);
  v75 = v68 & 0xA9B744F48C6FC3E6;
  v76 = (__ROR8__(__ROR8__(v66 ^ 0x6B182D2C0448177DLL, 62) ^ 0x7E43A8C0B01B93BDLL, 2) ^ 0x54F4637AA6E03B65) & (v69 ^ 0xEAB41F6AAFB52612) ^ v69 & 0xA81AA212703A5351 ^ v64;
  v77 = v64 & 0xA0A9492CCD1ABAF9;
  v78 = ((v74 & 0xE0096EE0D8B2C64DLL ^ 0x8782336223446638) & (v74 & 0x1FF6911F274D39B2 ^ 0xE7CF7FE5FCF6E67FLL) | v74 & 0x1874801D04091982) ^ 0x154052835BD9B3F6;
  if ((v73 & 0x100000000 & v69) != 0)
  {
    v79 = -(v73 & 0x100000000);
  }

  else
  {
    v79 = v73 & 0x100000000;
  }

  v80 = (v79 + v70) ^ v73 & 0xFFFFFFFEFFFFFFFFLL;
  v81 = v63 ^ v77 ^ v72 ^ 0xB9AC5D5E827D5ED7 ^ v78;
  v82 = v78 ^ (v80 - ((2 * v80) & 0x5870BC1D02BA71CLL) - 0x7D3C7A1F17EA2C72);
  v83 = v82 ^ 0xAC7C0FF4012565E3;
  v84 = (v76 ^ 0x21B618E09B988769) >> 1;
  v85 = ((v75 ^ v66 ^ 0xB69BB9AF0107271FLL ^ v71) - ((2 * (v75 ^ v66 ^ 0xB69BB9AF0107271FLL ^ v71)) & 0xEAE7E26431F659F4) - 0xA8C0ECDE704D306) ^ 0xB90F3BD6F774BB1FLL ^ v76;
  v86 = v81 ^ __ROR8__(v81, 61);
  v87 = (v82 & 0x8000) == 0;
  v88 = 0x8000;
  if (!v87)
  {
    v88 = -32768;
  }

  v89 = v88 + v83;
  v90 = (v88 + v83) ^ 0x8000;
  v91 = v86 ^ (v81 << 25) ^ (v81 >> 39);
  v92 = v85 ^ __ROR8__(v85, 10) ^ (v85 << 47) ^ (v85 >> 17);
  v93 = v80 ^ 0x9A383CF881807545 ^ ((v80 ^ 0x9A383CF881807545) >> 7) ^ (((v80 ^ 0x9A383CF881807545) >> 41) | ((v80 ^ 0x9A383CF881807545) << 57)) ^ ((v80 ^ 0x9A383CF881807545) << (v84 & 0x17) << (v84 & 0x17 ^ 0x17));
  *(&v94 + 1) = v76 ^ 0x21B618E09B988769;
  *&v94 = v76;
  v95 = v84 ^ (v94 >> 6) ^ ((v76 ^ 0x21B618E09B988769) & 0x9B6535C14F352826 ^ (~v76 << 63) | (v76 ^ 0x21B618E09B988769) & 0x649ACA3EB0CAD7D9) ^ v91;
  v96 = v83 ^ v93 ^ (v83 >> 19) ^ (v89 >> 28) ^ (v90 << 36) ^ (v90 << 45);
  v97 = v93 ^ v92;
  v98 = v97 - ((2 * v97) & 0x4BCF7563A6B4D67ELL);
  v99 = v95 ^ 0x86D863826E621DLL ^ v93 & ~v92;
  v100 = v96 ^ (v95 ^ 0x86D863826E621DLL) & ~v91;
  v101 = v91 & ~v96 ^ v97;
  v102 = v100 + v91 - 2 * (v96 & v91);
  v103 = (v65 >> 3) & 1;
  v104 = (v65 & 8) == 0;
  v105 = v100 ^ 0x6E04C15915AB860ALL ^ v101;
  v106 = v105 >> 19;
  *(&v94 + 1) = (v105 >> 19) & v105 & 0x1A36E0206AEDLL ^ (v105 >> 28) ^ (((v105 >> 19) | v105) & 0xD8807A36E0206AEDLL | (v105 >> 19) & 0x5C91FDF9512 ^ v105 & 0x277F85C91FDF9512);
  *&v94 = (v105 << 36) ^ (v105 << 45) ^ *(&v94 + 1);
  v107 = v102 ^ (v95 ^ 0xFF79279C7D919DE2) & v92;
  v108 = v99 ^ v92 ^ v96 & ((v98 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ 0x7370AC685030CB36;
  v109 = v101 ^ 0x26974B18501E2B14;
  v110 = (v107 >> 39) ^ (v107 >> 61) ^ (8 * (v107 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v107 ^ 0x3278F838FE43D2BCLL) - (((v107 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v107 ^ 0x3278F838FE43D2BCLL))));
  v111 = v110 ^ 0x64F1F1;
  v112 = v109 ^ (v109 >> 41) ^ (v109 >> 7) ^ (v109 << 23) ^ (v109 << 57);
  v113 = v99 ^ 0x7955EAEC4D48B80CLL ^ (v99 << 63) ^ __ROR8__(v99 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v99 ^ 0x7955EAEC4D48B80CuLL) >> v104 >> v103);
  v114 = v110 ^ 0x64F1F1 ^ v113;
  v115 = (v108 >> 17) ^ __ROR8__(v108, 10) ^ __ROR8__(__ROR8__(v108, 14) & 0xFFFC000000000007 ^ __ROR8__(v108, 61), 3);
  v116 = v115 ^ v112;
  *&v94 = __ROR8__(__ROR8__(v112, 7) ^ __ROR8__(__ROR8__(v94 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v117 = v112 & ~v115 ^ v114;
  v118 = v94 ^ 0xBBDB0FB7A00B9120 ^ (v110 ^ 0xFFFFFFFFFF9B0E0ELL) & v113;
  v119 = v110 ^ (((v114 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v114 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v115 ^ 0x425764BB58132BD4 ^ v118;
  v120 = (v94 ^ 0x4424F0485FF46EDFLL) & v111 ^ v115 ^ v112;
  v121 = v118 ^ 0x97F6A7E5F6E8F58ALL ^ v120;
  v122 = (v120 ^ -v120 ^ (0x70C7A8D3F3643DFDLL - (v120 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v123 = v115 ^ 0x44C9D571A5C4A51CLL ^ v117 ^ (v94 ^ 0xBBDB0FB7A00B9120) & ~v116;
  v124 = v117 ^ 0xD3DA1E3360BF843ALL ^ ((v117 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v117 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v126 = __ROR8__(__ROR8__(v119, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v119 ^ (8 * v119) ^ ((v119 >> 61) | (v119 << 25)), 23) ^ 0x735302FC48340548, 41);
  v127 = (v122 >> 7) ^ (v122 >> 41) ^ (v122 << 23) ^ (v122 << 57);
  v128 = v127 ^ v122;
  v129 = v121 ^ (v121 >> 28) ^ (v121 >> 19) ^ (v121 << 36) ^ (v121 << 45) ^ v127 ^ v122;
  v130 = v124 & 0xFFFFFFF7FFFFFFFFLL ^ (v117 << 63) ^ (v124 & 0x800000000 | ((v117 ^ 0xD3DA1E3360BF843ALL) << (v106 & 0x12) << (v106 & 0x12 ^ 0x3A))) ^ v126;
  if (v127 == v122)
  {
    v131 = 0;
  }

  else
  {
    v131 = v123 << 47;
  }

  v132 = v126 ^ 0x7E241A02A439A981;
  v125 = (v123 ^ (v123 >> 10) | (v123 << 54)) ^ (v123 << 54) & v123;
  v133 = (v131 ^ v125 | (v123 << 47)) ^ (v125 & (v123 << 47) & 0xFFFF800000000000 | (v123 >> 17));
  v134 = v130 ^ 0x7E241A02A439A981;
  v135 = v133 & (v130 ^ 0x81DBE5FD5BC6567ELL);
  v136 = v133 ^ v128 ^ v132 & ~v129;
  v137 = (~(2 * v132) + v132) & (v130 ^ 0x7E241A02A439A981) ^ v129;
  v138 = v136 ^ v137;
  v139 = v136 ^ v137 ^ 0x93C23431B76D41FLL;
  *(&v140 + 1) = v139;
  *&v140 = v136 ^ v137;
  v141 = v132 ^ 0x6005BE354A5BB0B2 ^ v137;
  v142 = v128 & ~v133 ^ v134;
  v143 = v129 & ~(v133 ^ v128) ^ v133 ^ v142;
  v144 = (v140 >> 62) ^ (4 * (v139 >> 28)) ^ 0x406FF36C296024B3;
  v145 = ((v141 ^ v135) << (v128 & 3) << (v128 & 3 ^ 3)) ^ v141 ^ v135 ^ (((v141 ^ v135) >> 39) ^ ((v141 ^ v135) >> 61) | ((v141 ^ v135) << 25));
  *(&v140 + 1) = v139;
  *&v140 = v138;
  v146 = ((v140 >> 19) ^ __ROR8__(v144, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v147 = v142 ^ 0x6DC4FB0BD4FFFF44 ^ ((v142 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v142 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v142 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v142 << 63));
  v148 = v136 ^ 0x2DB5B6AF87F64351 ^ ((v136 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v136 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v136 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v136 ^ 0x2DB5B6AF87F64351) >> 41);
  v149 = v145 ^ v147;
  v150 = __ROR8__(v143 ^ 0xF374A001D380BDC2, 17) ^ ((v143 ^ 0xF374A001D380BDC2) >> 10) ^ (((v143 ^ 0xF374A001D380BDC2) << 54) | (v143 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v143 ^ 0xF374A001D380BDC2) << 54) & (v143 ^ 0xF374A001D380BDC2) | v143 & 0x20);
  v151 = v148 ^ (v139 << 36) ^ (((2 * v146) & 0xFFFFFFFF18D20D4ALL) + (v146 ^ 0xFFFFFFFF8C6906A5));
  v152 = v151 ^ v147 & ~v145;
  v153 = ~(2 * (v150 ^ v148)) + (v150 ^ v148);
  v154 = v145 & ~v151 ^ v150 ^ v148;
  v155 = v148 & ~v150 ^ v149;
  v156 = v150 & ~v149;
  v157 = v155 ^ v150 ^ v151 & v153;
  *(&v140 + 1) = (v154 ^ -v154 ^ (v152 - (v154 ^ v152))) + v152;
  *&v140 = *(&v140 + 1) ^ 0x69309AC4CAE2F93;
  return (*(a38 + 8 * (v38 ^ (106 * (a34 > 2 * (a37 & 1) + (a37 ^ 1u))))))(*(&v140 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v140 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v140 >> 28), a1, a2, (8 * (v145 ^ v156 ^ 0x62030E578F798D5ALL ^ v152)) ^ ((v145 ^ v156 ^ 0x62030E578F798D5ALL ^ v152) >> 39) ^ (((v145 ^ v156 ^ 0x62030E578F798D5ALL ^ v152) >> 61) | v145 ^ v156 ^ 0x62030E578F798D5ALL ^ v152), a38, v157 ^ __ROR8__(v157 ^ 0x4F15BBF2C11DE053, 10) ^ ((v157 ^ 0x4F15BBF2C11DE053) << 47) ^ ((v157 ^ 0x4F15BBF2C11DE053) >> 17), a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1C21C3D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *v49 = 0;
  v51 = ((v47 - 762494164) ^ ((((v46 ^ 1u) >> 11) ^ v46) << 7)) & v50 ^ ((v46 ^ 1u) >> 11) ^ v46;
  v52 = (v51 << 15) & 0xEFC60000 ^ v51 ^ (((v51 << 15) & 0xEFC60000 ^ v51) >> 18);
  v53 = &a46 + (a27 - 1);
  v54 = 1982188483 * ((v53 ^ *(*v48 + (*a36 & 0x7E7F91C0))) & 0x7FFFFFFF);
  v55 = 1982188483 * (v54 ^ HIWORD(v54));
  v56 = (v52 - ((2 * v52) & 0x36) + 27) ^ *(off_1F41B28C0 + (v55 >> 24) - 4) ^ *(off_1F41B2A38 + (v55 >> 24) - 6) ^ *(off_1F41B2910 + (v55 >> 24) - 8) ^ v55 ^ (-55 * BYTE3(v55));
  *v53 = v56 ^ 0x1B;
  return (*(a3 + 8 * ((30 * (a27 != (v56 != 27))) ^ 0x600)))();
}

uint64_t sub_1C21C3F3C(uint64_t a1, uint64_t a2)
{
  v5 = (STACK[0x2D0] - 306) | 0x8C;
  v6 = v3[1];
  v7 = v3[398] ^ v4 ^ ((v3[2] & 0x7FFFFFFE | v6 & ((v5 - 562) ^ (v2 + 1036))) >> 1) ^ *(&STACK[0x568] + (v3[2] & 1));
  *v3 = v3[397] ^ v4 ^ ((v6 & 0x7FFFFFFE | *v3 & 0x80000000) >> 1) ^ *(&STACK[0x568] + (v6 & 1));
  v3[1] = v7;
  return (*(a2 + 8 * (v5 ^ 0x1DD)))();
}

uint64_t sub_1C21C3F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v72 = 1380333833 * ((~(v69 | 0xF253CB03) + (v69 & 0xF253CB03)) ^ 0xB3FE9F76);
  *(v70 - 176) = &STACK[0x458];
  *(v70 - 160) = &STACK[0x514];
  *(v70 - 192) = a65;
  *(v70 - 184) = v72 + (v67 ^ (v68 + 1807) ^ 0xFF2EF7D9) + ((2 * v67) & 0xFE5DFF62) + 1020996064;
  *(v70 - 180) = v72 ^ a67 ^ a64 ^ 0x3774360D;
  *(v70 - 168) = v68 - v72 + 1921;
  v74 = (*(v71 + 8 * (v68 + 2159)))(v70 - 192);
  v75 = STACK[0x2D8];
  v76 = *(v70 - 152);
  LODWORD(STACK[0x2E8]) = v76;
  return (*(v75 + 8 * (((v76 == -955998424) * (((v68 + 439) | 0x62) - 328)) ^ v68)))(v74, a2);
}

uint64_t sub_1C21C40C8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x2A4] + a2 + 72);
  v7 = ((2 * a2) & 0xDFFDFA38) + (a2 ^ 0xEFFEFD1F);
  *(a1 + v7 + (((v3 - 1387) | 4) ^ v2)) = v6 ^ 0x31;
  v8 = v2 + v7;
  *(a1 + (v8 + 27)) = (BYTE1(v6) ^ 0xF9) + ~(2 * ((BYTE1(v6) ^ 0xF9) & 0xEE ^ BYTE1(v6) & 4)) + 107;
  *(a1 + (v8 + 28)) = (BYTE2(v6) ^ 0x7A) - 2 * ((BYTE2(v6) ^ 0x7A) & 0x6B ^ BYTE2(v6) & 1) + 106;
  *(a1 + (v8 + 29)) = (HIBYTE(v6) ^ 0x3E) + (~(2 * (HIBYTE(v6) ^ 0x3E)) | 0x2B) + 107;
  return (*(v5 + 8 * (((a2 + 4 < LODWORD(STACK[0x300])) * v4) ^ v3)))();
}

uint64_t sub_1C21C41BC(uint64_t a1)
{
  v1 = 143681137 * (((a1 | 0xE40E86FF) - (a1 & 0xE40E86FF)) ^ 0x853431B7);
  v2 = *(a1 + 4) ^ v1;
  v3 = *(a1 + 8) + v1;
  v4 = *(*(a1 + 24) + 4);
  v6 = v4 - 1472192017;
  v5 = v4 - 1472192017 < 0;
  v7 = 1472192017 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F41B25C0 + (v2 ^ 0x513)) + ((((v3 - 82176047) < (4 * v7)) * ((v2 - 1848952368) & 0x6E34C367 ^ 0x217)) ^ v2) - 1))();
}

uint64_t sub_1C21C428C@<X0>(unsigned __int8 a1@<W8>, double a2@<D0>)
{
  *(v5 - 1) = a2;
  *v5 = a2;
  return (*(v6 + 8 * ((((a1 ^ (v4 == 0)) & 1) * v3) ^ v2)))();
}

uint64_t sub_1C21C4A28@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - (((v2 + 102) ^ 0xC3) & (2 * *(v1 + v5))) + 106;
  return (*(v4 + 8 * (((v5 == 0) | (2 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_1C21C4A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, char a55)
{
  STACK[0x4B0] = *(v57 + 8 * v55);
  STACK[0x550] = v56;
  STACK[0x558] = v56;
  v58 = STACK[0x430];
  v59 = (&STACK[0x570] + STACK[0x430]);
  STACK[0x560] = v59;
  STACK[0x430] = v58 + 320;
  LODWORD(STACK[0x464]) = *(v56 + 18);
  LODWORD(STACK[0x3B4]) = *(v56 + 19);
  LODWORD(STACK[0x37C]) = *(v56 + 20);
  LODWORD(STACK[0x374]) = *(v56 + 21);
  v60 = v56[96];
  if (v60 == 2)
  {
    LODWORD(STACK[0x3EC]) = *(v56 + 22);
    return sub_1C21B3F90();
  }

  else
  {
    if (v60 != 1)
    {
      JUMPOUT(0x1C21BC450);
    }

    v61 = *v56 ^ 0x6A;
    v62 = ((v56[2] ^ 0x6A) << a55) + ((v56[3] ^ 0x6A) << 24) + (v61 | ((v56[1] ^ 0x6A) << 8));
    *v59 = v62 + a6 - 2 * (v62 & 0x47049F2B ^ v61 & 3);
    return (*(v57 + 8 * ((a5 + 698) ^ 0x43)))();
  }
}

void sub_1C21C4A98(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (143681137 * ((-2 - ((a1 | 0xE33F7651) + (~a1 | 0x1CC089AE))) ^ 0x7DFA3EE6));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21C4C38(uint64_t result)
{
  v1 = 1380333833 * (((result | 0x8C5C1DC41FE09A20) - result + (result & 0x73A3E23BE01F65DFLL)) ^ 0x87B96CE8A1B231AALL);
  v2 = *(result + 32);
  v3 = v2 + v1;
  v4 = *(result + 16) - v1;
  v5 = *(result + 8) + v1;
  v6 = *(result + 20) - v1;
  v7 = *(result + 12) ^ v1;
  v8 = v2 == *result;
  v9 = v3 > *result + v1;
  if ((v5 & 1) == 0)
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v4;
  }

  *(result + 40) = v10 ^ v6;
  return result;
}

void sub_1C21C4CDC(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) - 1388665877 * ((a1 & 0xF983F256 | ~(a1 | 0xF983F256)) ^ 0x8BD16F45);
  v2 = *(a1 + 16);
  v3 = *a1;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = 0x57BFDE1100000082;
  v9[1] = &v10;
  v8[0] = 0x57BFDE1100000082;
  v8[1] = &v11;
  v6 = v2[1];
  v17 = v2;
  v16 = (1785193651 * ((&v12 + 394127766 - 2 * (&v12 & 0x177DE996)) ^ 0x4A105B6)) ^ (v1 + 1924);
  v14 = v9;
  v15 = v3;
  v12 = v6;
  v13 = v4;
  v7 = *(&off_1F41B25C0 + v1 - 321) - 8;
  (*&v7[8 * (v1 ^ 0x8F8)])(&v12);
  v12 = *v2;
  v13 = v8;
  LODWORD(v14) = v1 + 210068311 * ((2 * (&v12 & 0x5EF78338) - &v12 - 1593279292) ^ 0x33DE4360) + 1297;
  (*&v7[8 * v1 + 16312])(&v12);
  v13 = v5;
  LODWORD(v12) = (1556366573 * ((((2 * &v12) | 0xB640FC88) - &v12 - 1528856132) ^ 0x3FC45DAE)) ^ (v1 + 1140);
  (*&v7[8 * (v1 ^ 0x8DF)])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21C4F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = 50899313 * ((v17 - 128) ^ 0x2ACB2A7A);
  *(v17 - 112) = v18 + ((a3 << 6) & 0xB7DEBE00) + 79 * (a11 ^ 0x124) + ((a3 << ((a11 + 115) ^ 0x9F)) ^ 0x5BEF5F17) - 38535661;
  *(v17 - 120) = &a16;
  *(v17 - 128) = a11 - v18 + 516;
  v19 = (*(v16 + 8 * (a11 ^ 0x8BC)))(v17 - 128);
  return (*(v16 + 8 * ((1731 * ((*(a9 + 4) - 1472192018) < 0x7FFFFFFF)) ^ a11)))(v19);
}

void pggRSNuJfiTW0g(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21C518C()
{
  v4 = v0 + 1831;
  v5 = (*(v1 + 8 * (v0 + 2192)))(*v3);
  return (*(v1 + 8 * ((*v2 != 0) | v4)))(v5);
}

void sub_1C21C51C0(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v7 - 239871400) & 0xE4C1F3F;
  a3 = (v9 + 1541) ^ (1388665877 * ((2 * (&a3 & 0x131AE608) - &a3 - 320529933) ^ 0x61487B1F));
  a6 = v8;
  a4 = a1;
  (*(v6 + 8 * (v9 + 2167)))(&a3);
  JUMPOUT(0x1C21C523CLL);
}

uint64_t sub_1C21C52AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, int a3@<W8>)
{
  v4 = LODWORD(STACK[0x314])++;
  *STACK[0x278] = v4 + 968439489;
  v5 = *STACK[0x280];
  v6 = ((v3 + 0x7F7BD9731FF919F4 - 2 * ((v3 - 192) & 0x7F7BD9731FF91AB4)) ^ 0x4A01493C92547858) * a2;
  *(v3 - 184) = v6 + a3 + 55969056;
  *(v3 - 160) = v6 + a3 + 1239859740 + 44;
  *(v3 - 168) = v6;
  *(v3 - 192) = ((a3 + 1239859740) ^ 0x60) - v6;
  *(v3 - 188) = (a3 + 1239859740) ^ v6;
  *(v3 - 176) = 5119 - v6;
  *(v3 - 152) = v6 + v5;
  v7 = (*(a1 + 8 * (a3 ^ 0xAD4)))(v3 - 192);
  return (*(STACK[0x2D8] + 8 * *(v3 - 164)))(v7);
}

uint64_t sub_1C21C5390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v46 = 50899313 * ((-201420430 - ((v44 - 192) | 0xF3FE9172) + ((v44 - 192) | 0xC016E8D)) ^ 0x26CA44F7);
  *(v44 - 168) = 0;
  *(v44 - 160) = 0;
  *(v44 - 192) = v43;
  *(v44 - 136) = a42;
  *(v44 - 144) = &STACK[0x4D8];
  *(v44 - 176) = a15;
  *(v44 - 180) = 2058343157 - v46;
  *(v44 - 152) = v42 - v46 + 1730;
  v47 = (*(v45 + 8 * (v42 ^ 0x9E0)))(v44 - 192);
  v48 = STACK[0x2D8];
  v49 = *(v44 - 184);
  LODWORD(STACK[0x53C]) = v49;
  return (*(v48 + 8 * (((v49 == 42 * (v42 ^ 0x64) - 955999306) * ((63 * (v42 ^ 0x7F)) ^ 0xBB0)) ^ v42)))(v47);
}

uint64_t sub_1C21C548C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 616);
  **(a1 + 8) = v5 + v6 + (v7 ^ 0x81);
  return (*(v4 + 8 * ((1783 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_1C21C5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v15 = 50899313 * ((v14 - 168) ^ 0x2ACB2A7A);
  *(v14 - 160) = a5;
  *(v14 - 168) = v15 + v13 + 1846;
  *(v14 - 164) = v15 ^ a12;
  v16 = (*(v12 + 8 * (v13 ^ 0x947)))(v14 - 168);
  v17 = STACK[0x2E8] & (2 * (((v13 + 246) | 0x4D0) ^ 0x5C6) + 25);
  *(&STACK[0x2A4] + v17) = -22;
  return (*(v12 + 8 * ((2382 * (v17 > 0x37)) ^ v13)))(v16);
}

uint64_t sub_1C21C5600@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) - ((v3 + 42) & (2 * *(v1 + v5))) + 106;
  return (*(v4 + 8 * ((1617 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1C21C5640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x238];
  (*(v72 + 8 * (v70 + 1578)))(*STACK[0x238], a70, 2048);
  v74 = *(STACK[0x2D8] + 8 * ((120 * (((v70 + 98) ^ ((*(STACK[0x2D8] + 8 * (v70 + 1654)))(*v73, &STACK[0x368], v71 + LODWORD(STACK[0x364]) + (v70 ^ 0x4Fu) - 882, 1) == 0)) & 1)) ^ v70));
  return v74();
}

uint64_t sub_1C21C56F0@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23)
{
  v30 = v23 < v26;
  v31 = *(a1 + a2);
  v32 = a2 + 1;
  *(&a23 + v24) = v31 + (~(2 * v31) | 0x2B) + 107;
  if (v30 == v32 > ((v29 + 498359533) & 0xE24B9DED ^ (v27 + 72)))
  {
    v30 = v32 + v26 < v23;
  }

  return (*(v28 + 8 * ((!v30 * v25) ^ v29)))();
}

uint64_t sub_1C21C5A14(uint64_t a1)
{
  v5 = *(v3 + 340);
  v6 = *(a1 + 12) - v1 + 647243332;
  if (v5 > 0xA901287D != v6 < 0x56FED782)
  {
    v7 = v5 > 0xA901287D;
  }

  else
  {
    v7 = v5 + ((332 * (v4 ^ 0x4CF)) ^ 0xFA) + 1459540220 > v6;
  }

  return (*(v2 + 8 * ((7 * v7) ^ v4)))();
}

uint64_t sub_1C21C5ADC()
{
  v8 = v0 + 8;
  *(v3 + v8) = vadd_s8(vsub_s8(*(v4 + v8), vand_s8(vadd_s8(*(v4 + v8), *(v4 + v8)), v6)), v7);
  return (*(v5 + 8 * (((v2 != v8) * (((v1 + 246) | 0x100) ^ 0x3B2)) ^ v1)))();
}

uint64_t sub_1C21C5AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v26 - 112) = v20;
  *(v26 - 104) = &a20;
  *(v26 - 120) = (v25 + 883) ^ (((v26 - 120) ^ v24) * v22);
  v27 = (*(v21 + 8 * (v25 + 2251)))(v26 - 120);
  return (*(v21 + 8 * ((964 * (*(v26 - 116) > (v25 ^ 0x2F ^ (v23 + 1251)))) ^ v25)))(v27);
}

uint64_t sub_1C21C5C1C()
{
  v4 = (v3 + 1516591708) & 0xA59AA6FF;
  v5 = v2 > (v4 ^ 0xC54E4F47);
  if (v5 == v0 + 1660016662 < (((v4 - 2098144980) & 0x7D0F2577) + 984723684))
  {
    v5 = v0 + 1660016662 < v2 - 1162758617;
  }

  return (*(v1 + 8 * ((43 * v5) ^ v4)))();
}

uint64_t sub_1C21C5CC8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = (v28 - 819) | 0x318;
  v31 = STACK[0x388];
  v32 = 1785193651 * ((-2 - ((~(v29 - 192) | 0x249E498D) + ((v29 - 192) | 0xDB61B672))) ^ 0x3742A5AD);
  *(v29 - 192) = (LODWORD(STACK[0x2FC]) - ((2 * LODWORD(STACK[0x2FC])) & 0xD69E71E0) + 1800354032) ^ v32;
  *(v29 - 144) = v32 + (a1 ^ 0xDF5FF7D7) + (a1 << (((v28 - 51) | 0x18) - 23)) + 2129352956;
  *(v29 - 136) = &STACK[0x338];
  v33 = STACK[0x260];
  *(v29 - 184) = a27;
  *(v29 - 176) = v33;
  *(v29 - 128) = -77 * ((-2 - ((~(v29 + 64) | 0x8D) + ((v29 + 64) | 0x72))) ^ 0xAD) + 16;
  *(v29 - 168) = (v30 - 477) ^ v32;
  *(v29 - 160) = STACK[0x268];
  *(v29 - 152) = v31;
  v34 = (*(v27 + 8 * (v30 + 1689)))(v29 - 192);
  v35 = STACK[0x2D8];
  v36 = *(v29 - 140);
  LODWORD(STACK[0x2E8]) = v36;
  return (*(v35 + 8 * ((58 * (((((v28 - 51) | 0x18) - 23) ^ (v36 == -955998424)) & 1)) ^ v30)))(v34);
}

void sub_1C21C5E4C()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39A50) ^ 0x7B)) ^ byte_1C2349510[byte_1C23445D0[(65 * ((qword_1EBF39C20 + dword_1EBF39A50) ^ 0x7B))] ^ 0xB1]) - 123);
  v1 = *(v0 - 4);
  v2 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - v1) ^ 0x7B)) ^ byte_1C2340930[byte_1C233D7D0[(65 * ((qword_1EBF39C20 - v1) ^ 0x7B))] ^ 0x94]) - 144);
  v3 = &v9[v1 + *v2];
  v4 = 410816321 * v3 + 0x265DD2AD758AD77BLL;
  v5 = 410816321 * (v3 ^ 0x265DD2AD758AD77BLL);
  *(v0 - 4) = v4;
  *v2 = v5;
  LOBYTE(v5) = 65 * ((v5 - *(v0 - 4)) ^ 0x7B);
  **(&off_1F41B25C0 + (*(off_1F41B2A10 + ~*(off_1F41B2BA0 + v5 - 8) - 8) ^ v5) - 34) = -955998424;
  LOBYTE(v5) = 65 * ((*v2 + *(v0 - 4)) ^ 0x7B);
  v6 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39A50) ^ 0x7B)) ^ byte_1C233D8D0[byte_1C2349610[(65 * ((qword_1EBF39C20 - dword_1EBF39A50) ^ 0x7B))] ^ 0x5E]) - 135) - 8;
  v7 = (*&v6[8 * (*(off_1F41B2780 + (*(off_1F41B2B28 + v5 - 12) ^ 0x94u) - 4) ^ v5) + 18296])(512, 0x100004077774924);
  v8 = 65 * (*(v0 - 4) ^ 0x7B ^ *v2);
  *(*(&off_1F41B25C0 + (*(off_1F41B2A78 + (*(off_1F41B2770 + v8 - 8) ^ 0x44u) - 4) ^ v8) - 25) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21C61B0()
{
  v10 = v4 > 0xF;
  v8 = (v3 - 1) & 0xF;
  v9 = -v7 - v3 + 1;
  v10 = v10 && (v9 + v1 + v8) > 0xF;
  v11 = v10 && v9 + v2 + v8 >= ((v5 - 922) | 0x240u) - 709;
  v12 = v9 + v0 + v8;
  v14 = v11 && v12 > 0xF;
  return (*(v6 + 8 * ((100 * v14) ^ v5)))();
}

uint64_t sub_1C21C6270(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = a4 + v6 + ((a2 - 463031921) & 0x1B994FF7u) - 2135661949 > v4 + 969557009;
  if ((v4 + 969557009) < 0x80B468A6 != (a4 + v6) > 0x7F4B9759)
  {
    v8 = (a4 + v6) > 0x7F4B9759;
  }

  return (*(v5 + 8 * ((v8 * v7) ^ a2)))();
}

uint64_t sub_1C21C6A34(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_1C21C6A9C()
{
  v4 = 2 * (v0 ^ 0xB8E);
  v5 = LODWORD(STACK[0x2F8]) - v2;
  v7 = v1 != 975275501 && v5 == ((v4 + 1894287044) & 0x8F1773DF) - 985464540;
  return (*(v3 + 8 * ((v7 * (((v4 + 1025557944) & 0xC2DF377F) - 761)) ^ v4)))();
}

uint64_t sub_1C21C6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23)
{
  v28 = (a21 ^ a5) + a22;
  v26 = a17 < 0x2968E8F7;
  if (v26 == v28 > 0xD6971708)
  {
    v26 = v28 + 694741239 < a17;
  }

  return (*(v24 + 8 * ((v26 * (((3 * (v25 ^ 0xAAD)) ^ 0xFFFFF8BD) + (v25 ^ 0x89E))) ^ v25 ^ 0xE7E)))(a1, a2, a3, ((a5 + (v25 ^ 0xE7E) - 1700) ^ v23) + a23, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C21C6FE8(uint64_t a1, char a2, int a3, int8x16_t a4, int8x8_t a5, int8x8_t a6)
{
  v13 = v10 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + a2 - 12) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(a1 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a1 + v13), *(v8 + v15.val[0].i64[0] - 7)), veor_s8(*(v15.val[0].i64[0] + v6 - 4), *(v15.val[0].i64[0] + v7 - 2)))), a6), vmul_s8(*&vqtbl4q_s8(v15, a4), a5)));
  return (*(v12 + 8 * ((31 * (v11 == v13)) ^ a3)))();
}

uint64_t sub_1C21C707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, char a34)
{
  HIDWORD(a11) = v35;
  *(a2 + v34) = a34;
  return (*(v36 + 8 * (((v34 == 63) * (((a16 - 865054) & 0xD2EDE) + 750)) ^ a16)))(a1, a2, a3, a4, a5, a6, 3246720676, a8, a9, a10, a11);
}

uint64_t sub_1C21C7210()
{
  v7 = STACK[0x2F8];
  v8 = STACK[0x4A0];
  v9 = STACK[0x4C0];
  v10 = &v5[6 * v1];
  v10[2] = v4;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v5 = v0 + 1;
  LODWORD(STACK[0x450]) = v3;
  v11 = v2 + 1 + v3 + (((v2 - 89) | 0x312) ^ 0x95F0502F);
  v13 = v11 > 1694638248 || v11 < SLODWORD(STACK[0x298]);
  return (*(v6 + 8 * ((1048 * v13) ^ v2)))();
}

uint64_t sub_1C21C72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  if (a16 < a15 != a13 - 1486055697 < (a6 - 1676382693))
  {
    v26 = a13 - 1486055697 < (a6 - 1676382693);
  }

  else
  {
    v26 = a13 - 1486055697 > a16;
  }

  return (*(v25 + 8 * ((25 * v26) ^ (a6 - 190325518))))(&a25, a2, 2220106406, 2265187709, 4104640541);
}

uint64_t sub_1C21C7348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, char *a17, int a18, uint64_t a19, unsigned int a20)
{
  v22 = 1380333833 * (((&a15 | 0xC394F04) - (&a15 & 0xC394F04)) ^ 0xB26BE48E);
  a20 = v22 + 1603508753;
  a17 = &a12;
  a19 = a11;
  a15 = (v21 - 2013067932) ^ v22;
  a16 = v22 ^ 0x3AB75828;
  v23 = (*(v20 + 8 * (v21 + 1039)))(&a15);
  return (*(v20 + 8 * (((a18 == -955998424) * (((v21 - 364) | 0x2A1) ^ (v21 + 1867104375) & 0xE1D ^ 0x1DE)) ^ v21)))(v23);
}

uint64_t sub_1C21C747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = (1388665877 * (&a15 ^ 0x8DAD62EC)) ^ 0xDFABAF92;
  v18 = (*(v17 + 19728))(&a15);
  return (*(v17 + 8 * ((434 * (a15 == ((v16 - 775) ^ 0x309))) ^ 0x69Du)))(v18);
}

uint64_t sub_1C21C75F8@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W8>)
{
  v6 = a1 + ((a3 + v5 + 1013) ^ 0xA96B7003);
  v7 = v4 - 467110342 < v6;
  if (v4 - 467110342 < (a3 + v5 + a2) != v6 < a2 + 1098)
  {
    v7 = v6 < a2 + 1098;
  }

  return (*(v3 + 8 * ((14 * !v7) ^ (a3 + v5 + 1197))))();
}

uint64_t sub_1C21C7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v68 + 1401476093) & 0xAC772BFF;
  *(v71 - 192) = -1197043362 - 1037613739 * (v69 ^ 0xD1022D7F) + v68 + 604;
  (*(v72 + 8 * (v68 ^ 0x8D3)))(v71 - 192);
  LODWORD(STACK[0x21C]) = LODWORD(STACK[0x21C]) + v73 - 344;
  v74 = 843532609 * ((-590836897 - (v69 | 0xDCC88B5F) + (v69 | 0x233774A0)) ^ 0x338B03FE);
  *(v71 - 180) = (v68 - 24) ^ v74;
  *(v71 - 168) = 102 - v74;
  *(v71 - 192) = a68;
  *(v71 - 176) = a67;
  v75 = (*(STACK[0x2D8] + 8 * (v68 + 2155)))(v71 - 192);
  v76 = STACK[0x2D8];
  v77 = *(v71 - 184);
  LODWORD(STACK[0x2E8]) = v77;
  LODWORD(STACK[0x220]) = 268435459;
  return (*(v76 + 8 * (((v77 == -955998424) * (v73 + 191 + (v73 ^ 0x22B) + 593)) ^ v73)))(v75, v70);
}

uint64_t sub_1C21C77E4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, unsigned int a4@<W8>)
{
  v11 = v8 < v7;
  v12 = *(v9 + v4);
  v13 = v4 + 1;
  *(a2 + a4) = v12 - (a3 & (2 * v12)) + 106;
  if (v11 == v13 > 3 * (v5 ^ a1) + v6)
  {
    v11 = v13 + v7 < v8;
  }

  return (*(v10 + 8 * (v5 ^ (4 * v11))))();
}

uint64_t sub_1C21C7894@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a60 + 360) = v64;
  v72 = (*(v71 + 8 * ((a2 - 450) ^ 0xADA)))(v68, 2, &STACK[0x2E4], v69, (v65 - 1308994801), a1, &STACK[0x398], &STACK[0x324]);
  if (v72 == 268435459)
  {
    LODWORD(STACK[0x4BC]) = 956023824;
    return (*(STACK[0x2D8] + 8 * ((((STACK[0x2D0] - 1155996107) ^ 0xBB18EBBF ^ (STACK[0x2D0] - 1155996107) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (STACK[0x2D0] - 554))))(v72, STACK[0x398], v73, v74);
  }

  else
  {
    v75 = STACK[0x2D0];
    if (v72)
    {
      v78 = 50899313 * (((v66 | 0x508ADED1) - v66 + (v66 & 0xAF752128)) ^ 0x7A41F4AB);
      *(v70 - 192) = &STACK[0x4BC];
      *(v70 - 184) = (v75 - 706) ^ v78;
      *(v70 - 180) = (v72 - 955998424 - ((2 * v72) & 0x8E093E50)) ^ v78;
      v79 = STACK[0x2D8];
      v80 = v75;
      v81 = (*(STACK[0x2D8] + 8 * a45))(v70 - 192);
      return (*(v79 + 8 * ((((v80 - 1155996107) ^ 0xBB18EBBF ^ (v80 - 1155996107) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (v80 - 554))))(v81);
    }

    else
    {
      v76 = (v75 + 270) | 0x122;
      v87 = STACK[0x398];
      LODWORD(a52) = STACK[0x324];
      v88 = STACK[0x430];
      v77 = STACK[0x2D8];
      LODWORD(STACK[0x40C]) = 750382856;
      v82 = &STACK[0x570] + v88;
      STACK[0x430] = v88 + 1712;
      *v82 = 0x6370646600;
      v82[8] = v67;
      v83 = &STACK[0x570] + v88 + 9;
      STACK[0x210] = v88 + 1712;
      STACK[0x2A0] = STACK[0x4E0];
      STACK[0x248] = v83;
      v84 = ((v76 - 130) | 0x82) == 1442;
      v85 = *(v77 + 8 * ((v67 & ~((v76 - 560) ^ v84) | (16 * (v67 & ~((v76 - 560) ^ v84)))) ^ (v76 - 852)));
      STACK[0x2B0] = *(&off_1F41B25C0 + v76 - 1333) - 4;
      STACK[0x2A8] = *(&off_1F41B25C0 + ((v76 - 852) ^ 0x21B));
      return v85(v72, a64, v73, v74, 956024049, 3338968872, 2968400750, v83, &STACK[0x43C], &STACK[0x4EC], &STACK[0x2E0], &STACK[0x4C4], a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a64 + 2176, a64 + 2304, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v87, &STACK[0x570] + v88 + 128, a52, &STACK[0x570] + v88, a54, a55);
    }
  }
}

uint64_t sub_1C21C7BA0@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0xD4D4D4D4D4D4D4D4;
  v5.i64[1] = 0xD4D4D4D4D4D4D4D4;
  v6.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v6.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  v7 = vaddq_s8(vsubq_s8(*(v1 + v4 - 12), vandq_s8(vaddq_s8(*(v1 + v4 - 12), *(v1 + v4 - 12)), v5)), v6);
  *(v1 + a1 - 32) = vaddq_s8(vsubq_s8(*(v1 + v4 - 28), vandq_s8(vaddq_s8(*(v1 + v4 - 28), *(v1 + v4 - 28)), v5)), v6);
  *(v1 + a1 - 16) = v7;
  return (*(v3 + 8 * ((((v1 & 0xE0) == 32) * ((v2 - 1490) ^ 0x738)) | (v2 - 1431))))();
}

uint64_t sub_1C21C7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x430] -= 1616;
  LODWORD(STACK[0x4BC]) = 956023839;
  return (*(v5 + 8 * ((((a5 - 1155996107) ^ 0xBB18EBBF ^ (a5 - 1155996107) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (a5 - 554))))();
}

uint64_t sub_1C21C7CFC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v9 = v6 + 32;
  v10 = (v9 ^ 0xFFFFFFFFFFFFFE81 ^ (v5 + 13)) + v4;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = vaddq_s8(vaddq_s8(v11, a4), vmvnq_s8(vandq_s8(vaddq_s8(v11, v11), a3)));
  *(v13 - 31) = vaddq_s8(vaddq_s8(v12, a4), vmvnq_s8(vandq_s8(vaddq_s8(v12, v12), a3)));
  return (*(v8 + 8 * ((997 * (v7 == v9)) ^ v5)))();
}

uint64_t sub_1C21C7EA0(uint64_t a1)
{
  v8 = a1 - 1;
  *(v6 + v8) = *(v1 + v8) ^ *(v4 + (v8 & 0xF)) ^ *((v8 & 0xF) + v3 + 5) ^ (89 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 2) ^ 0x6A;
  return (*(v7 + 8 * ((92 * (v8 != (v2 + 404) - 2019)) ^ (v2 + 222))))();
}

uint64_t sub_1C21C7F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v7 + 52) = *(v7 + 52) + ((v6 - 1545397514) & 0x5C1CE9FE) - 2151;
  LODWORD(STACK[0x394]) = *(v7 + 360);
  STACK[0x430] -= 2432;
  LODWORD(STACK[0x2E8]) = a6;
  return (*(v8 + 8 * (((STACK[0x458] == 0) * (15 * (v6 ^ 0x364) + 1041)) ^ v6)))();
}

uint64_t sub_1C21C7F90()
{
  v5 = v1 + 1512;
  v6 = (v1 + 1512) ^ 0x691;
  v7 = (v1 - 137) ^ 0x158;
  v9 = (*v2 - v0 - 333181397) > 0xFFFFFFBE || (*(v3 + 20) & 1) == v7;
  return (*(v4 + 8 * ((v9 * (v6 - 325)) ^ v5)))();
}

uint64_t sub_1C21C7FF0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int32x4_t a8@<Q2>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned int a30, int a31, uint64_t a32, int a33, char a34)
{
  if (a34 == 2)
  {
    v67 = vld4q_s8(v35);
    v52 = veorq_s8(v67.val[1], a6);
    _Q21 = vmovl_high_u8(v52);
    _Q20 = vmovl_u8(*v52.i8);
    v55 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v56 = vmovl_u8(*&veorq_s8(v67.val[2], a6)).u64[0];
    v67.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v67.val[3], a6)));
    v57 = vorrq_s8(vorrq_s8(vorrq_s8(v55, vshll_n_u16(v56, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v67.val[0], a6))), 0x18uLL)), v67.val[2]);
    v67.val[2] = veorq_s8(vandq_s8(v57, a7), (*&v67.val[2] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v34 = vaddq_s32(vsubq_s32(v57, vaddq_s32(v67.val[2], v67.val[2])), a8).u32[0];
    v58 = &v34[v39 + 1988469637];
    *v58 = v38 ^ __ROR4__(*(v58 - 8) ^ *(v58 - 3) ^ *(v58 - 14) ^ *(v58 - 16), 31);
    return (*(v37 + 8 * (HIDWORD(a17) ^ (4 * (v36 + 1988469504 == v40 + 64)))))(a18);
  }

  else
  {
    if (a34 == 1)
    {
      v68 = vld4q_s8(v35);
      v41 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v68.val[0], a6)));
      v42 = veorq_s8(v68.val[2], a6);
      _Q25 = vmovl_u8(*v42.i8);
      _Q24 = vmovl_high_u8(v42);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v68.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v68.val[3], a6))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v68.val[1], a6)), 8uLL), v41));
      v51 = veorq_s8(vandq_s8(v68.val[2], vdupq_n_s32(0x47049F2Bu)), (*&v41 & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
      *v34 = vaddq_s32(vsubq_s32(v68.val[2], vaddq_s32(v51, v51)), a8).u32[0];
      JUMPOUT(0x1C21C81A4);
    }

    v60 = (((a31 ^ 0xA2E7FB8) - 170819512) ^ ((a31 ^ 0xEF4E219) - 250929689) ^ ((a31 ^ 0x3AA064FA) - 983590138)) + (((a31 ^ 0x7252E2EC) - 1918034668) ^ ((a31 ^ 0x1CF39AF1) - 485726961) ^ ((a31 ^ 0x50DB8146) - 1356562758)) - 787001185;
    v61 = (v60 ^ 0xABDE0B47) & (2 * (v60 & 0xABDEA217)) ^ v60 & 0xABDEA217;
    v62 = ((2 * (v60 ^ 0xAC7E4B43)) ^ 0xF41D2A8) & (v60 ^ 0xAC7E4B43) ^ (2 * (v60 ^ 0xAC7E4B43)) & 0x7A0E954;
    v63 = v62 ^ 0xA02954;
    v64 = (v62 ^ 0x7008000) & (4 * v61) ^ v61;
    v65 = ((4 * v63) ^ 0x1E83A550) & v63 ^ (4 * v63) & 0x7A0E954;
    v66 = *(v37 + 8 * (a2 + a5 - 1090));
    return v66(263847936, (((v65 ^ 0x680A150) & (16 * v64) ^ v64 ^ 0x7A0E954 ^ (((16 * (v65 ^ 0x1204804)) ^ 0x7A0E9540) & (v65 ^ 0x1204804) ^ (16 * (v65 ^ 0x1204804)) & 0x7A0E950 ^ 0x2008100) & (((v65 ^ 0x680A150) & (16 * v64) ^ v64) << 8)) << 16) ^ 0x69540000u, a1, 127926272, a2, a30, a3, a4, a9, a10, a11, a12, a13, a14, a15, v66, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1C21C8ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, char *a22, int a23, uint64_t a24, unsigned int a25)
{
  v28 = 1380333833 * ((&a20 + 821175157 - 2 * (&a20 & 0x30F22375)) ^ 0x8EA088FF);
  a22 = &a15;
  a24 = a16;
  a20 = (v25 - 2013068067) ^ v28;
  a21 = v28 ^ 0x51DB2872;
  a25 = v28 + 2 * (a12 & 1) + (a12 ^ ((v25 ^ 0x550) + 489) ^ 0xDF9FBDE1) + 2146687647;
  v29 = (*(v27 + 8 * (v25 + 904)))(&a20);
  return (*(v27 + 8 * ((663 * (a23 == v26)) ^ v25)))(v29);
}

uint64_t sub_1C21C8FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v20 - 120) = v17 + 1380333833 * (((v15 | 0x3AA88A34) - (v15 & 0x3AA88A34)) ^ 0x84FA21BE) - 107;
  *(v20 - 136) = v19;
  *(v20 - 128) = a15;
  v21 = (*(v18 + 8 * (v17 ^ 0x8C9)))(v20 - 136);
  return (*(v18 + 8 * (((v16 == ((v17 - 372) | 0x82) - 162) * ((v17 - 242) ^ 0x67F)) ^ v17)))(v21);
}

uint64_t sub_1C21C9050@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, unsigned int a5@<W8>)
{
  v14 = (*(a2 + 4 * v5) ^ a5) + (v7 ^ HIDWORD(v10));
  v15 = v14 - (a3 & (2 * v14)) + a4;
  *(a2 + 4 * v8) = v15 ^ v9;
  *(a2 + 4 * v5) = (v15 >> (((v13 - 25) | a1) + 35)) ^ v12;
  return (*(v11 + 8 * (v13 ^ ((4 * (v6 + 1 != v5)) | (8 * (v6 + 1 != v5))))))();
}

uint64_t sub_1C21C9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = a13 < 0x8AF4C98F;
  if (v16 == v13 > 0x750B3670)
  {
    LOBYTE(v16) = v13 - 1963669105 < a13;
  }

  return (*(v15 + 8 * (((16 * (((v14 + 110) ^ v16) & 1)) & 0xDF | (32 * (((v14 + 110) ^ v16) & 1))) ^ v14)))();
}

uint64_t sub_1C21C9204(uint64_t a1, uint64_t a2, int a3)
{
  v8 = ((a3 | v4) + 75) | 0x12;
  v9 = v3;
  *(v7 - 112) = v13;
  *(v7 - 104) = v8 + 808 - 1504884919 * ((((v7 - 120) ^ 0x415DB7B0 | 0x7F4B3278) - (((v7 - 120) ^ 0x415DB7B0) & 0x7F4B3278)) ^ 0xC5D532D3);
  (*(v6 + 8 * (v8 + 1647)))(v7 - 120);
  v10 = *(v7 - 120);
  *(v7 - 112) = v5;
  *(v7 - 104) = v8 + 808 - 1504884919 * ((-1938708088 - ((v7 - 120) | 0x8C71A988) + ((v7 - 120) | 0x738E5677)) ^ 0x884DE16C);
  (*(v6 + 8 * (v8 + 1647)))(v7 - 120);
  v11 = (-1045754923 * (*(v7 - 120) + v10) + *(v7 - 120) * v10 - 115736775) * v9;
  v14[1] = (v11 ^ 0x5FBFFF7D) + 223 * (v8 ^ 0x314) + ((2 * v11) & 0xBF7FFEFA) - 134226953;
  *(v7 - 104) = v8 + 210068311 * (((v7 - 120) & 0xADF9EC21 | ~((v7 - 120) | 0xADF9EC21)) ^ 0xC0D02C7A) + 886;
  *(v7 - 120) = v14;
  *(v7 - 112) = v5;
  return (*(v6 + 8 * (v8 + 1628)))(v7 - 120);
}

uint64_t sub_1C21C9324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, void *a7)
{
  *a7 = a1;
  *a6 = (v8 + (v7 ^ 0x120) - 479) ^ v13;
  v11 = (v7 ^ 0x120) + 302;
  v17 = v15;
  v16 = ((v7 ^ 0x120) + 1548) ^ ((((&v16 | 0xCF7E0BCD) - &v16 + (&v16 & 0x3081F430)) ^ 0xE5B521B7) * v9);
  (*(v10 + 8 * (((v7 ^ 0x120) + 699) ^ 0xDE0)))(&v16);
  v16 = (v11 + 1246) ^ (((&v16 + 381578834 - 2 * (&v16 & 0x16BE6E52)) ^ 0x3C754428) * v9);
  v17 = v14;
  (*(v10 + 8 * (v11 + 1645)))(&v16);
  return v8 ^ 0xC7049F28;
}

uint64_t sub_1C21C953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, int a12)
{
  v14 = (((a12 ^ 0x746D2583) - 1953310083) ^ ((a12 ^ 0x8A96FA4E) + 1969817010) ^ ((a12 ^ 0x39FF40E5) - 973030813 + ((18 * (v12 ^ 0x471) - 264) | 0x4A0))) + 603585221;
  v15 = v14 < 0x5CF55B9D;
  v16 = v14 > a11 + 1559583645;
  if (a11 > 0xA30AA462 != v15)
  {
    v16 = v15;
  }

  return (*(v13 + 8 * ((29 * !v16) ^ v12)))();
}

uint64_t sub_1C21C96F0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v8 = *(result + 40);
  v7 = *(result + 48);
  v9 = *(result + 16);
  *a2 = v4;
  *v9 = v3;
  *v8 = v6;
  *v7 = v2 + v5;
  *(result + 4) = -955998424;
  return result;
}

uint64_t sub_1C21C9718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, _BYTE *a12, char a13, __int16 a14, char a15, uint64_t a16, char a17, int a18, int a19, unsigned int a20, char *a21, char *a22, _BYTE *a23, _BYTE *a24)
{
  LODWORD(a22) = (v24 + 1284) ^ (143681137 * (&a19 ^ 0x613AB748));
  a23 = a12;
  a21 = &a13;
  (*(v26 + 8 * (v24 ^ 0xAE3u)))(&a19);
  a24 = a12;
  LODWORD(a23) = (v25 + 674) ^ (843532609 * ((2 * (&a19 & 0x88886E8) - &a19 - 143165161) ^ 0xE7CB0E49));
  a21 = &a11;
  a22 = &a17;
  (*(v26 + 8 * (v25 + 2250)))(&a19);
  a21 = &a15;
  a23 = a12;
  LODWORD(a22) = (v25 + 2040) ^ (143681137 * (((&a19 | 0xBE47E8CF) - (&a19 & 0xBE47E8CF)) ^ 0xDF7D5F87));
  (*(v26 + 8 * (v25 ^ 0x9D7)))(&a19);
  a20 = v25 - 1037613739 * ((((2 * &a19) | 0xA324C6E8) - &a19 - 1368548212) ^ 0x80904E0B) + 1393;
  a21 = a12;
  v27 = (*(v26 + 8 * (v25 ^ 0x9AB)))(&a19);
  return (*(v26 + 8 * (((a19 == -955998424) * ((v25 ^ 0x1A3) + 657)) ^ v25)))(v27);
}

uint64_t sub_1C21C97E4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = STACK[0x270];
  v6 = STACK[0x508];
  STACK[0x478] = *(v4 + 8 * (v3 - 857));
  STACK[0x430] = STACK[0x210] + 112;
  STACK[0x4F0] = v6;
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v4 + 8 * ((v8 * (((50 * ((v3 - 85) ^ 0x30D)) ^ 0xFFFFFFD7) + ((v3 - 85) ^ a3))) ^ (v3 - 85))))();
}

uint64_t sub_1C21C9820(uint64_t a1)
{
  v5 = (v3 + 1562) - 1818 + v2;
  v6 = *(v1 + v5 - 15);
  v7 = *(v1 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((233 * ((v2 & 0xFFFFFFE0) != 32)) ^ (v3 + 849))))();
}

void sub_1C21C9878(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = 1785193651 * (((a1 | 0xE1E68334) - a1 + (a1 & 0x1E197CCB)) ^ 0xF23A6F14);
  v2 = *(a1 + 24) ^ v1;
  v3 = *(a1 + 48) - v1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = ((*a1 ^ v1 ^ 0x8C66F7A) - 147222394) ^ ((*a1 ^ v1 ^ 0x9734CC94) + 1758147436) ^ ((*a1 ^ v1 ^ 0xF4BD9B1E) + 188900578);
  v7 = 1504884919 * ((((2 * v9) | 0x9619ABF0) - v9 - 1259132408) ^ 0xB0CF62E3);
  v12 = *(a1 + 16);
  v13 = v5;
  v9[0] = (v3 ^ ((v3 ^ 0x8856E484) + 702696361) ^ ((v3 ^ 0xE96A8568) + 1222519365) ^ ((v3 ^ 0x4188C340) - 532910995) ^ ((v3 ^ 0x7EFFF27F) - 548709036) ^ 0xEDE6C7DA) + v7;
  v9[1] = v2 + v7 - 1776823596;
  v14 = v7 + 899201337 * v6 + 525656818;
  v10 = v4;
  v11 = v5;
  v8 = *(&off_1F41B25C0 + (v2 & 0x4AC8ECBF)) - 8;
  (*&v8[8 * (v2 ^ 0x89C)])(v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21C9DB8()
{
  v3 = LODWORD(STACK[0x2F8]) + ((v1 - 1577188636) & 0x5E01FB7B ^ 0x57957E93);
  v4 = (v0 + 483950757 < ((3 * (v1 ^ 0x309)) ^ 0x6ADE251Du)) ^ (v3 < 0x6ADE2D96);
  v5 = v3 < v0 + 483950757;
  if (v4)
  {
    v5 = v0 + 483950757 < ((3 * (v1 ^ 0x309)) ^ 0x6ADE251Du);
  }

  return (*(v2 + 8 * ((57 * !v5) ^ v1)))();
}

uint64_t sub_1C21C9F30(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = 1380333833 * (((a1 | 0x97F9D17D) - a1 + (a1 & 0x68062E82)) ^ 0x29AB7AF7);
  v3 = *a1 ^ v2;
  v4 = *(a1 + 4) ^ v2;
  v5 = *(a1 + 8);
  v6 = (v4 ^ 0xF09CDAB7) & (2 * (v4 & 0xF51C9084)) ^ v4 & 0xF51C9084;
  v7 = ((2 * (v4 ^ 0x58A4DBB7)) ^ 0x5B709666) & (v4 ^ 0x58A4DBB7) ^ (2 * (v4 ^ 0x58A4DBB7)) & 0xADB84B32;
  v8 = v7 ^ 0xA4884911;
  v9 = (v7 ^ 0x8300220) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xB6E12CCC) & v8 ^ (4 * v8) & 0xADB84B30;
  v11 = (v10 ^ 0xA4A00800) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x9184333)) ^ 0xDB84B330) & (v10 ^ 0x9184333) ^ (16 * (v10 ^ 0x9184333)) & 0xADB84B30;
  v13 = v11 ^ 0xADB84B33 ^ (v12 ^ 0x89800300) & (v11 << 8);
  v14 = *(a1 + 32) - v2 - 567959773;
  v15 = 1388665877 * (&v17 ^ 0x8DAD62EC);
  v20 = *(a1 + 24);
  v17 = v5;
  v18 = v15 ^ v14;
  v21 = v3 + v15 + 2013067422;
  v22 = (v4 ^ (2 * ((v13 << 16) & 0x2DB80000 ^ v13 ^ ((v13 << 16) ^ 0x4B330000) & (((v12 ^ 0x24384803) << 8) & 0x2DB80000 ^ 0x5B00000 ^ (((v12 ^ 0x24384803) << 8) ^ 0x384B0000) & (v12 ^ 0x24384803)))) ^ 0xCA58D14A) - v15;
  result = (*(*(&off_1F41B25C0 + (v3 ^ 0x88030AEF)) + (v3 ^ 0x88030362) - 1))(&v17);
  *(a1 + 16) = v19;
  return result;
}

uint64_t sub_1C21CA1F0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2;
  v7 = a1;
  v8 = v2;
  v6 = (v3 + 1044) ^ (1504884919 * ((2 * (&v5 & 0x7BB084C0) - &v5 + 72317757) ^ 0xFF8CCC26));
  return (*(v1 + 8 * (v3 + 2274)))(&v5);
}

uint64_t sub_1C21CA25C(_DWORD *a1)
{
  v1 = 143681137 * (a1 ^ 0x613AB748);
  v2 = *a1 - v1;
  v3 = *(*(&off_1F41B25C0 + (v2 - 1600)) + 84);
  v4 = a1[4] - v1 - 2105323585;
  if (v4 < 0xE3E9ABAD != v3 > 0x1C165452)
  {
    v5 = v3 > 0x1C165452;
  }

  else
  {
    v5 = v3 - 471225427 > v4;
  }

  return (*(*(&off_1F41B25C0 + (v2 - 1601)) + ((v5 * (v2 - 1423)) ^ v2) - 1))();
}

void sub_1C21CA35C(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *(a1 + 32) != 0;
  v1 = *(a1 + 24) + 1380333833 * ((2 * (a1 & 0xA48BC383) - a1 + 1534344316) ^ 0xE52697F6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C21CA498@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v4 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v3 + (v8 & 0xF)) ^ (117 * (v8 & 0xF)) ^ *(v2 + (v8 & 0xF));
  return (*(v6 + 8 * (((v8 == 0) * (((a1 - 642) | 0x480) - 1075)) ^ (a1 + 332))))();
}

uint64_t sub_1C21CA4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void))
{
  v29 = (((v27 ^ 0x9B748A6C) + 1686861204) ^ ((v27 ^ 0x3FAAEAFF) - 1068165887) ^ ((v27 ^ 0x9AA499C8) + 1700488760)) - 1252769909 + (((LODWORD(STACK[0x2EC]) ^ 0x208AEB1) - 34123441) ^ ((LODWORD(STACK[0x2EC]) ^ 0xBF78AAC1) + 1082611007) ^ ((LODWORD(STACK[0x2EC]) ^ 0x830AFD2B) + 2096431829));
  v30 = (v29 ^ 0x8739238A) & (2 * (v29 & 0xC7A1B32B)) ^ v29 & 0xC7A1B32B;
  v31 = ((2 * (v29 ^ 0x67B678A)) ^ 0x83B5A942) & (v29 ^ 0x67B678A) ^ (2 * (v29 ^ 0x67B678A)) & 0xC1DAD4A0;
  v32 = v31 ^ 0x404A54A1;
  v33 = (v31 ^ 0x1808000) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0x76B5284) & v32 ^ (4 * v32) & 0xC1DAD4A0;
  v35 = (v34 ^ 0x14A5080) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0xC0908421)) ^ 0x1DAD4A10) & (v34 ^ 0xC0908421) ^ (16 * (v34 ^ 0xC0908421)) & 0xC1DAD4A0;
  v37 = v35 ^ 0xC1DAD4A1 ^ (v36 ^ 0x1884000) & (v35 << 8);
  v38 = (((v28 ^ 0x73E698E6) - 1944492262) ^ ((v28 ^ 0xAB33AFF8) + 1422675976) ^ ((v28 ^ 0xE6AFCE45) + 424686011)) + (((LODWORD(STACK[0x2F0]) ^ 0xA4E85859) + 1528276903) ^ ((LODWORD(STACK[0x2F0]) ^ 0xEFCBF69F) + 271845729) ^ ((LODWORD(STACK[0x2F0]) ^ 0x7559579D) - 1968789405)) - 220018762;
  LODWORD(STACK[0x2EC]) = v29 ^ (2 * ((v37 << 16) & 0x41DA0000 ^ v37 ^ ((v37 << 16) ^ 0x54A10000) & (((v36 ^ 0xC05294A1) << 8) & 0x41DA0000 ^ 0x10A0000 ^ (((v36 ^ 0xC05294A1) << 8) ^ 0x5AD40000) & (v36 ^ 0xC05294A1)))) ^ 0xFB6EE332;
  LODWORD(STACK[0x2F0]) = v38 ^ ((v38 ^ 0x64BCDBED) - 290459373) ^ ((v38 ^ 0x3801DDED) - 1307379949) ^ ((v38 ^ 0x47AE2CFA) - 843250170) ^ ((v38 ^ 0x6EFFFFFA) - 454241018) ^ 0x4B962C5B;
  v39 = (((v26 ^ 0xB08226CB) + 1333647669) ^ ((v26 ^ 0xBB3F2A20) + 1153488352) ^ ((v26 ^ 0x35C7F5B0) - 902297008)) - 584530461 + (((LODWORD(STACK[0x2F4]) ^ 0x47117CA1) - 1192328353) ^ ((LODWORD(STACK[0x2F4]) ^ 0x651C6F) - 6626415) ^ ((LODWORD(STACK[0x2F4]) ^ 0x790E9995) - 2030999957));
  v40 = (v39 ^ 0xDFEC0A93) & (2 * (v39 & 0x9FCD2CD3)) ^ v39 & 0x9FCD2CD3;
  v41 = ((2 * (v39 ^ 0xD7E65A37)) ^ 0x9056EDC8) & (v39 ^ 0xD7E65A37) ^ (2 * (v39 ^ 0xD7E65A37)) & 0x482B76E4;
  v42 = v41 ^ 0x48291224;
  v43 = (v41 ^ 0x64C0) & (4 * v40) ^ v40;
  v44 = ((4 * v42) ^ 0x20ADDB90) & v42 ^ (4 * v42) & 0x482B76E4;
  v45 = (v44 ^ 0x295280) & (16 * v43) ^ v43;
  v46 = ((16 * (v44 ^ 0x48022464)) ^ 0x82B76E40) & (v44 ^ 0x48022464) ^ (16 * (v44 ^ 0x48022464)) & 0x482B76E0;
  v47 = v45 ^ 0x482B76E4 ^ (v46 ^ 0x236600) & (v45 << 8);
  v48 = v39 ^ (2 * ((v47 << 16) & 0x482B0000 ^ v47 ^ ((v47 << 16) ^ 0x76E40000) & (((v46 ^ 0x480810A4) << 8) & 0x482B0000 ^ 0x40090000 ^ (((v46 ^ 0x480810A4) << 8) ^ 0x2B760000) & (v46 ^ 0x480810A4))));
  v49 = (((v25 ^ 0xDFBBDA12) + 541337070) ^ ((v25 ^ 0x27E32E02) - 669199874) ^ ((v25 ^ 0xC6220D4B) + 970846901)) - 1573802530 + (((LODWORD(STACK[0x2F8]) ^ 0xE58E80EF) + 443645713) ^ ((LODWORD(STACK[0x2F8]) ^ 0x96EFE106) + 1762664186) ^ ((LODWORD(STACK[0x2F8]) ^ 0x4D1B98B2) - 1293654194));
  v50 = (v49 ^ 0xDAD750D7) & (2 * (v49 & 0xDAC444D8)) ^ v49 & 0xDAC444D8;
  v51 = ((2 * (v49 ^ 0xEBDFD1D7)) ^ 0x62372A1E) & (v49 ^ 0xEBDFD1D7) ^ (2 * (v49 ^ 0xEBDFD1D7)) & 0x311B950E;
  v52 = v51 ^ 0x11089501;
  v53 = (v51 ^ 0x20130000) & (4 * v50) ^ v50;
  v54 = ((4 * v52) ^ 0xC46E543C) & v52 ^ (4 * v52) & 0x311B950C;
  v55 = (v54 ^ 0xA1400) & (16 * v53) ^ v53;
  v56 = ((16 * (v54 ^ 0x31118103)) ^ 0x11B950F0) & (v54 ^ 0x31118103) ^ (16 * (v54 ^ 0x31118103)) & 0x311B9500;
  v57 = v55 ^ 0x311B950F ^ (v56 ^ 0x11191000) & (v55 << 8);
  LODWORD(STACK[0x2F4]) = v48 ^ 0xB1A13840;
  LODWORD(STACK[0x2F8]) = v49 ^ (2 * ((v57 << 16) & 0x311B0000 ^ v57 ^ ((v57 << 16) ^ 0x150F0000) & (((v56 ^ 0x2002850F) << 8) & 0x311B0000 ^ 0x200A0000 ^ (((v56 ^ 0x2002850F) << 8) ^ 0x1B950000) & (v56 ^ 0x2002850F)))) ^ 0xA49F979D;
  return a25();
}

uint64_t sub_1C21CAC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = (v12 - 509) | 0x50;
  v14 = (((a11 ^ 0xB35040A8) + 1286586200) ^ ((a11 ^ 0x4B3ECBE9) - 1262406633) ^ (151 * (v13 ^ 0x4DB) + (a11 ^ 0x3F6A1469) - 1063918310)) + 1320183227;
  v15 = v14 < 0x87ABC693;
  v16 = v14 > 0x87ABC693;
  if (v15)
  {
    v16 = v15;
  }

  return (*(v11 + 8 * ((11 * v16) ^ v13)))(3231048986, 3008381096, 1286586200, 1320183227, 2018785644);
}

uint64_t sub_1C21CAD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *a6 = 0;
  *a7 = 0;
  a20 = (1388665877 * (((&a19 | 0x67D11E71) - &a19 + (&a19 & 0x982EE188)) ^ 0xEA7C7C9D)) ^ 0xDFABAF92;
  v21 = (*(v20 + 19728))(&a19);
  return (*(v20 + 8 * ((1624 * (a19 == -955998424)) | 0xA7u)))(v21);
}

uint64_t sub_1C21CAE04@<X0>(uint64_t a1@<X8>)
{
  v9 = v1 - 1 + (*(*(v7 + 8) + 4 * v2) ^ v4);
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((1725 * (v2 + 1 == v8)) ^ (v3 - 627))))();
}

uint64_t sub_1C21CAF20@<X0>(int a1@<W0>, uint64_t a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a1 ^ 0x13Bu;
  v24 = (v23 + 4294966908) & a2;
  v25 = 577 * (a1 ^ 0xBAu) + 827509182;
  v26 = v11;
  v27 = v13;
  v28 = *(v16 + v24 + v21);
  v29 = (*(v18 + 4 * (*(v14 + v24 + v21) - 63)) ^ v19) + (v12 ^ v17) + *(v15 + 4 * (v24 + v21)) + (((v13 ^ v26) + v17 - (a3 & (2 * (v13 ^ v26)))) ^ v10);
  v30 = (v28 + 82) ^ 0x7B;
  v31 = (2 * ((v28 + 82) & 0x66 ^ 0x1D)) & 0xC ^ (v28 + 82) & 0x66 ^ 0x1D ^ ((2 * ((v28 + 82) & 0x66 ^ 0x1D)) ^ 0x3A) & v30;
  v32 = ((2 * v30) ^ 0x3A) & v30 ^ (2 * v30) & 0x1C;
  v33 = v29 ^ ((v29 ^ v25) - 1976211270) ^ ((v29 ^ 0xFC8E3FDA) + 1206491428) ^ ((v29 ^ 0xD2BB5743) + 1776087483) ^ ((v29 ^ 0x5BFFFFDF) - 526886617) ^ 0x44985906;
  v34 = (((v27 ^ 0x8185D833) + 2121934797) ^ ((v27 ^ 0x4480C7E) - 71830654) ^ ((v27 ^ 0xBBB72D16) + 1145623274)) + 1778995855 + ((v33 << (((v28 + 82) ^ (2 * (v31 ^ v32 & 0x88 ^ ((4 * v31) ^ 0xC) & (v32 ^ 0x19) ^ (((4 * v32) ^ 0xE8) & (v32 ^ 0x19) ^ v32 & 0x88) & 0xD0))) & 0x1F ^ 0x1C)) | (v33 >> (v22 - v28)));
  v35 = (v34 ^ 0xC271B6CB) & (2 * (v34 & 0xD471A6CC)) ^ v34 & 0xD471A6CC;
  v36 = ((2 * (v34 ^ 0x4A70F643)) ^ 0x3C02A11E) & (v34 ^ 0x4A70F643) ^ (2 * (v34 ^ 0x4A70F643)) & 0x9E01508E;
  v37 = v36 ^ 0x82015081;
  v38 = (v36 ^ 0x10000000) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x7805423C) & v37 ^ (4 * v37) & 0x9E01508C;
  v40 = v38 ^ 0x9E01508F ^ (v39 ^ 0x18014000) & (16 * v38);
  v41 = (v40 << 8) & 0x9E015000 ^ v40 ^ ((v40 << 8) ^ 0x1508F00) & ((16 * (v39 ^ 0x86001083)) & 0x9E015080 ^ 0x1E00500F ^ ((16 * (v39 ^ 0x86001083)) ^ 0xE01508F0) & (v39 ^ 0x86001083));
  v42 = *(v20 + 8 * ((121 * ((++v24 + v21) > 0x2F)) ^ v23));
  return v42(121, v23, v24, v25, v42, (v41 << 16) & 0x1E010000, (v41 << 16) ^ 0x508F0000, 2488419594, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1C21CB2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, unsigned int a17)
{
  v18 = a14 - 83303748 > a17;
  if (a17 < 0xFB08E27C != (a14 - 83303748) < 0xFB08E27C)
  {
    v18 = (a14 - 83303748) < 0xFB08E27C;
  }

  return (*(v17 + 8 * ((v18 * (((a5 + a7 + 2010610583) & 0x882883EF) - 879)) ^ (a5 + a7 + 1106))))();
}

uint64_t sub_1C21CB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = (v9 ^ 0xEF3021DA) + v11;
  *(v14 + 4 * v15) = v16 + v9 - ((((v13 ^ a8) - 1197) ^ v10) & (2 * v16));
  return (*(v8 + 8 * (((HIDWORD(v16) == 0) * v12) ^ v13)))();
}

uint64_t sub_1C21CB790@<X0>(int a1@<W8>)
{
  v4 = (v1 ^ (2 * (a1 ^ 0x3BD)) ^ 0x8070AE9C) & (2 * (v1 & 0xA84021EF)) ^ v1 & 0xA84021EF;
  v5 = ((2 * (v1 ^ 0x9070AEB6)) ^ 0x70611EB2) & (v1 ^ 0x9070AEB6) ^ (2 * (v1 ^ 0x9070AEB6)) & 0x38308F58;
  v6 = (v5 ^ 0x28100E11) & (4 * v4) ^ v4;
  v7 = ((4 * (v5 ^ 0x8108149)) ^ 0xE0C23D64) & (v5 ^ 0x8108149) ^ (4 * (v5 ^ 0x8108149)) & 0x38308F58;
  v8 = (v7 ^ 0x20000D49) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x18308219)) ^ 0x8308F590) & (v7 ^ 0x18308219) ^ (16 * (v7 ^ 0x18308219)) & 0x38308F50;
  v10 = v8 ^ 0x38308F59 ^ (v9 ^ 0x8549) & (v8 << 8);
  return (*(v3 + 8 * ((1133 * ((v2 ^ (4 * v1) ^ (8 * ((v10 << 16) & 0x18300000 ^ v10 ^ ((v10 << 16) ^ 0xF590000) & (((v9 ^ 0x38300A49) << 8) & 0x18300000 ^ 0x8300000 ^ (((v9 ^ 0x38300A49) << 8) ^ 0x108F0000) & (v9 ^ 0x38300A49))))) == 537197940)) ^ a1)))();
}

uint64_t sub_1C21CB92C@<X0>(uint64_t a1@<X0>, int a2@<W7>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((2195 * (v7 == (v5 ^ (a2 + 200) ^ 0x287))) ^ (v3 + v5 + 148))))();
}

uint64_t sub_1C21CBA90@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D2>)
{
  v5 = (v3 - 650) ^ 0x104;
  a2.i32[0] = *(v2 - 3 + v5 - 16);
  v6 = vmovl_u8(a2).u64[0];
  *(a1 - 3 + v5 - 16) = vuzp1_s8(vadd_s16(vsub_s16(v6, vand_s8(vadd_s16(v6, v6), 0xD400D400D400D4)), 0x6A006A006A006ALL), 0xD400D400D400D4).u32[0];
  return (*(v4 + 8 * (v3 ^ 0x701)))();
}

uint64_t sub_1C21CBBA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v9 = *(*(v3 + 8) + 4 * v8);
  *(*(a1 + 16) + v5 + a3 + ((a2 + 1756687901) & 0x974B0FDC)) = (v9 ^ v7) - ((2 * (v9 ^ v7)) & 0xD4) + 106;
  return (*(v4 + 8 * ((v5 - 1 == ((122 * (a2 ^ 0x4D1)) ^ v6)) ^ a2)))();
}

uint64_t sub_1C21CBBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, __int16 a18, char a19, int a20, unsigned int a21, int a22, uint64_t a23, char *a24, int *a25, int a26, char *a27, char *a28)
{
  a20 = 323530483;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1556366573 * (((v30 | 0x9473A263) - v30 + (v30 & 0x6B8C5D98)) ^ 0xF0978189);
  a26 = v28 - v33 + 1439;
  a25 = &a20;
  a27 = &a17;
  a28 = &a14;
  a21 = v31 - v33 + ((v28 - 1011700070) & 0x3C4D51E3 ^ 0xF8E476A6);
  a23 = v32;
  a24 = &a19;
  v35 = (*(v29 + 8 * (v28 ^ 0x9FC)))(&a21);
  return (*(v29 + 8 * ((2290 * (a22 == -955998424)) ^ v28)))(v35, a2);
}

void sub_1C21CBD70(uint64_t a1)
{
  v1 = *(a1 + 4) - 896639297 * ((~a1 & 0x8557618 | a1 & 0xF7AA89E7) ^ 0x1CFEE060);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21CC150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  LODWORD(STACK[0x2E4]) = 2;
  STACK[0x398] = 0;
  LODWORD(STACK[0x324]) = 0;
  LODWORD(STACK[0x4C4]) = 0;
  return (*(v35 + 8 * ((((v34 & 2) != a8 - 1332) * (a8 ^ 0x536)) ^ a8)))(a1, a2, a3, a4, a5, a2 + 2048, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1C21CC19C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int8x16_t a7@<Q2>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int8x16_t a34, int8x16_t a35)
{
  v42 = v36 + a2;
  *a7.i8 = veor_s8(veor_s8(*(v38 + (a4 + a1)), *(v39 + v42)), v41);
  return (*(v40 + 8 * (((v35 == v42) * a3) ^ v37)))(vorrq_s8(vqtbl1q_s8(a7, a35), a5), vorrq_s8(vqtbl1q_s8(a7, a34), a6));
}

uint64_t sub_1C21CC1B0()
{
  v3 = (*(v2 + 8 * (v0 + 1547)))();
  v4 = STACK[0x2D8];
  STACK[0x430] -= 16;
  return (*(v4 + 8 * (((((v0 - 817) | 0x30) ^ 0x62E) * (v1 == -955998424)) ^ (v0 - 769))))(v3);
}

uint64_t sub_1C21CC244()
{
  v7 = ((2 * (v0 & 0x3B9C90B0) - v0 - 1000116402) ^ 0xEEA84534) * v4;
  *(v6 - 136) = v5;
  *(v6 - 128) = v7 + ((v3 + 767) ^ v1 ^ 0xBFDD8D5F) + ((2 * v1) & 0x7FBB1DFA) + 1911291296;
  *(v6 - 124) = v3 - v7 + 1651;
  v8 = (*(v2 + 8 * (v3 ^ 0x939)))(v6 - 136);
  return sub_1C21CC2D4(v8);
}

uint64_t sub_1C21CC2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 136) = (v17 + 152) ^ (((2 * (v16 & 0x512516A0) - v16 + 786098526) ^ 0x411C324) * v19);
  *(v20 - 128) = a16;
  *(v20 - 120) = a15;
  v21 = (*(v18 + 8 * (v17 ^ 0xA30)))(v20 - 136);
  return (*(v18 + 8 * ((1637 * (*(v20 - 132) > ((8 * v17) ^ 0xEAB4CB1) + ((v17 + 1573012052) & 0xA23DBB7F))) ^ v17)))(v21);
}

uint64_t sub_1C21CC390@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = v3 < v2;
  v6 = a2 + 1;
  if (v5 == v6 > 0xFFFFFFFFC66C4B71)
  {
    v5 = v6 + v2 < v3;
  }

  return (*(v4 + 8 * (((((a1 - 2076) | 0x234) ^ 0x24E) * v5) ^ a1)))();
}

uint64_t sub_1C21CC3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v45 = *(&a29 + v41 + 72);
  v46 = ((v41 << ((a6 + v43 - 95) ^ (a6 + 1))) & 0x9FADA6F8) + (v41 ^ 0x4FD6D37E) + v42;
  *(a1 + v46) = v45 ^ 0x31;
  *(a1 + v46 + 1) = (BYTE1(v45) ^ 0xF9) + ~(2 * ((BYTE1(v45) ^ 0xF9) & 0xEE ^ BYTE1(v45) & 4)) + 107;
  *(a1 + v46 + 2) = (BYTE2(v45) ^ 0x7A) - 2 * ((BYTE2(v45) ^ 0x7A) & 0x6B ^ BYTE2(v45) & 1) + 106;
  *(a1 + v46 + 3) = (HIBYTE(v45) ^ 0x3E) + (~(2 * (HIBYTE(v45) ^ 0x3E)) | 0x2B) + 107;
  return (*(v44 + 8 * ((254 * (v41 + 4 >= a41)) ^ v43)))();
}

uint64_t sub_1C21CC534(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + a2 - 16);
  *(v2 + v4 + v6 - 32) = *(v2 + a2 - 32);
  *(v2 + v4 + v6 - 16) = v7;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) != 32) * ((v3 + 418) ^ 0x7EB)) ^ (v3 - 405))))();
}

void sub_1C21CC800(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1785193651 * ((2 * (a1 & 0x5065E1F0) - a1 - 1348854257) ^ 0xBC46F22F));
  v2 = *a1;
  v3 = *(&off_1F41B25C0 + (v1 ^ 0x52E)) - 8;
  (*&v3[8 * (v1 ^ 0xC7B)])(*(&off_1F41B25C0 + v1 - 1142), sub_1C21D5590);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C21CC8D4()
{
  *(v2 - 104) = v1 + 210068311 * ((854113016 - ((v2 - 120) | 0x32E8BAF8) + ((v2 - 120) | 0xCD174507)) ^ 0x5FC17AA3) + 643;
  *(v2 - 120) = &v5;
  *(v2 - 112) = v4;
  return (*(v0 + 8 * (v1 ^ 0xD79)))(v2 - 120);
}

void sub_1C21CC9C8(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v3 ^ 0xDE604056) & (2 * v2)) - 282058278;
  *(v1 + 4) = a1 + 1;
}

void sub_1C21CCA04(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = 843532609 * ((~a1 & 0xAA04CF45 | a1 & 0x55FB30BA) ^ 0xBAB8B81B);
  v2 = *(a1 + 12) ^ v1;
  v3 = (*(a1 + 24) + v1);
  v4 = *(&off_1F41B25C0 + (v2 ^ 0x17F)) - 8;
  (*&v4[8 * v2 + 16720])(*(&off_1F41B25C0 + v2 - 254) - 12, sub_1C21EA6D8);
  v5 = *(*(&off_1F41B25C0 + v2 - 241) - 4);
  v7 = (1785193651 * ((&v6 & 0xC758EFF7 | ~(&v6 | 0xC758EFF7)) ^ 0x2B7BFC28)) ^ (v2 + 977);
  v6 = v5;
  (*&v4[8 * (v2 | 0x82B)])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C21CCCB4()
{
  v6 = 50899313 * (((v2 | 0xE4FE07DA) - v2 + (v2 & 0x1B01F820)) ^ 0xCE352DA0);
  *(v4 - 184) = v3;
  *(v4 - 192) = v6 + v1 + 979;
  *(v4 - 188) = (v0 - 1028640300) ^ v6;
  v7 = (*(v5 + 8 * (v1 + 1494)))(v4 - 192);
  return (STACK[0x348])(v7);
}

uint64_t sub_1C21CCD44()
{
  v4 = v2 - 898894479;
  v5 = v4 < 0x2BD2515F;
  v6 = (((v1 - 564) | 0x234) ^ 0x2BD25723) + v3 < v4;
  if (v5 != v3 > ((v1 + 1343377230) & 0xAFEDAEFF ^ 0xD42DAA6A))
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((57 * !v6) ^ (v1 - 287))))();
}

uint64_t sub_1C21CCDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  *v10 = v8 - 1;
  v13 = &v10[6 * (v8 - 975275502)];
  v14 = v13[2];
  LODWORD(STACK[0x4C0]) = v13[3];
  STACK[0x4A0] = *(v13 + 2);
  LODWORD(STACK[0x2F8]) = v13[6];
  v15 = *(v11 + 48 * (a7 + v14 + ((v9 + 645270295) & 0xD989F5DA) - 464) + 36);
  LODWORD(STACK[0x450]) = v15;
  return (*(v12 + 8 * ((504 * (((v9 - 37) ^ (v15 == a8)) & 1)) ^ v9)))();
}

uint64_t sub_1C21CCE9C()
{
  v7 = v6 + v3;
  v8 = ((v4 ^ 0x156) - 403) & (v3 + 15);
  v9 = v2 - v3 + v8 + 1;
  v10 = v2 + ((29 * (v4 ^ 0xEDu)) ^ 0x2D4) + v8;
  v11 = v8 + v0 + 4;
  v12 = v8 + v1 + 6;
  v14 = v10 > v6 && v9 < v7;
  if (v11 > v6 && v11 - v3 < v7)
  {
    v14 = 1;
  }

  v17 = v12 > v6 && v12 - v3 < v7 || v14;
  return (*(v5 + 8 * ((498 * v17) ^ v4)))();
}

void sub_1C21CCF3C()
{
  v4 = *(v1 + 8);
  **(v1 + 16) = v0;
  *v4 = v3;
  *v1 = *(v2 + 24);
}

uint64_t sub_1C21CCF88(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = (*(a1 + 16) ^ (1785193651 * ((a1 & 0xD13AB0A2 | ~(a1 | 0xD13AB0A2)) ^ 0x3D19A37D))) + 875954147;
  v6 = v3 + 1380333833 * ((827633969 - (&v5 | 0x3154B131) + (&v5 | 0xCEAB4ECE)) ^ 0x70F9E544) + 610;
  v5 = v2;
  v7 = v1;
  return (*(*(&off_1F41B25C0 + v3) + v3 + 2381))(&v5);
}

void sub_1C21CD094(uint64_t a1)
{
  v1 = *(a1 + 40) + 50899313 * ((~a1 & 0x45659270 | a1 & 0xBA9A6D8F) ^ 0x6FAEB80A);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C21CD4D8(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 16) - 23573 * (((result | 0xD863) - (result & 0xD863)) ^ 0xBA8F);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x14B;
  v3 = v2 ^ 0x4B;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -39315285;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xD1B752D2593FDA5ALL;
    *(v1 + 80) = 0x2E48AD2DA6C025A5;
    *(v1 + 92) = v4;
  }

  *(result + 8) = 1872411978;
  return result;
}

void jfkdDAjba3jd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(&off_1F41B25C0 + (*(off_1F41B2A10 + (*(off_1F41B2BA0 + (65 * ((qword_1EBF39C20 + dword_1EBF39CA0) ^ 0x7B)) - 8) ^ 0x5Eu) - 8) ^ (65 * ((qword_1EBF39C20 + dword_1EBF39CA0) ^ 0x7B))) - 187);
  v7 = *(v6 - 4);
  v8 = *(&off_1F41B25C0 + ((65 * (v7 ^ qword_1EBF39C20 ^ 0x7B)) ^ *(off_1F41B2A10 + (*(off_1F41B2BA0 + (65 * (v7 ^ qword_1EBF39C20 ^ 0x7B)) - 8) ^ 0xB9u) - 8)) - 135);
  v9 = (*v8 ^ v7) - &v11;
  *(v6 - 4) = 410816321 * v9 + 0x265DD2AD758AD77BLL;
  *v8 = 410816321 * (v9 ^ 0x265DD2AD758AD77BLL);
  *a5 = 0;
  *a6 = 0;
  v12[1] = (1388665877 * (v12 ^ 0x8DAD62EC)) ^ 0xDFABAF92;
  LOBYTE(v8) = 65 * ((*v8 - *(v6 - 4)) ^ 0x7B);
  v10 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39CA0 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C233D8D0[~byte_1C2349610[(65 * (dword_1EBF39CA0 ^ 0x7B ^ qword_1EBF39C20))]]) - 120) - 8;
  (*&v10[8 * (*(off_1F41B27A8 + (*(off_1F41B2710 + v8 - 12) ^ 0xF3u) - 12) ^ v8) + 18152])(v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21CD7D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, unint64_t a3@<X5>, unint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9, _BYTE *a10, _BYTE *a11, _BYTE *a12, _BYTE *a13, uint64_t a14, uint64_t a15, _BYTE *a16, _BYTE *a17, uint64_t a18, _BYTE *a19, uint64_t a20, _BYTE *a21, uint64_t a22, _BYTE *a23, uint64_t a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  *a9 = a1;
  *a10 = BYTE3(a1);
  a9[1] = BYTE6(v42);
  a8[1] = BYTE4(a1) ^ 0x30;
  a16[20] = v43;
  *a11 = BYTE5(v42);
  a16[64] = BYTE2(a1);
  a16[50] = BYTE3(v40);
  *a17 = BYTE1(a1);
  *a12 = v40;
  a16[26] = BYTE6(v40);
  *a21 = BYTE4(v40);
  a8[2] = a2 >> (((a31 + 10) | 0x30u) + 76);
  a16[45] = BYTE5(v40);
  *a25 = HIBYTE(v40);
  a16[11] = BYTE2(a2);
  *a26 = BYTE1(v43);
  *a8 = HIBYTE(v42);
  *a19 = BYTE2(v43);
  a16[52] = BYTE4(v43);
  *a23 = BYTE3(v43);
  v44 = *(a6 + 526 + (((v41 >> 33) & 0x80 | (v43 >> 41) & 0x7F) ^ 0x1D));
  a16[9] = BYTE6(v43);
  *a13 = (((v44 >> 4) | (16 * v44)) ^ 0xB ^ (((v44 >> 4) | (16 * v44)) >> 1) & 0x55) + 95;
  v45 = (*(a7 + (((v43 >> 51) & 0xE0 | (v41 >> 59)) ^ 0xF3)) ^ 0xBC) + 74;
  a16[39] = a3 ^ 0x53;
  *a28 = v45;
  v46 = *(a7 + (((a3 >> 3) & 0xE0 | (a3 >> 11)) ^ 0xEF));
  a16[49] = BYTE5(a3) ^ 0xBB;
  a16[63] = BYTE3(a3) ^ 0xC1;
  a16[13] = BYTE6(a3) ^ 0x15;
  *a27 = BYTE2(a3) ^ 0x1D;
  v47 = ((a4 >> 38) ^ 0xB0) & 0xFC | (a4 >> 46) & 3;
  *a29 = (v46 ^ 0xBC) + 74;
  a16[36] = BYTE4(a3) ^ 0xF2;
  a16[60] = BYTE1(a4) ^ 0x54;
  a16[27] = BYTE2(a4) ^ 0x11;
  a16[40] = (a3 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38);
  a16[53] = BYTE3(a4) ^ 5;
  a16[59] = a4 ^ 0x4C;
  a16[22] = BYTE4(a4) ^ 0x2D;
  a16[37] = -35 * ((((((a4 >> 38) ^ 0xB0) & 0xFC | (a4 >> 46) & 3) ^ 0x86) - ((2 * ((a4 >> 38) ^ 0xB0)) & 0xD0) + (*(a14 + (v47 ^ 0x97)) ^ 0xB2) + ((2 * *(a14 + (v47 ^ 0x97))) & 0x64) + 79) ^ 0x85);
  v48 = *(a6 + 526 + (((a4 >> 41) & 0x80 | (a4 >> 49) & 0x7F) ^ 0x56));
  a16[29] = HIBYTE(a4) ^ 0x30;
  a16[57] = (((v48 >> 4) | (16 * v48)) ^ 0xB) + ((((v48 >> 4) | (16 * v48)) >> 1) & 0x55) - 2 * ((((v48 >> 4) | (16 * v48)) >> 1) & 0x55 & (((v48 >> 4) | (16 * v48)) ^ 0xB)) + 95;
  **a18 = HIDWORD(a15) + 1;
  v50 = *a18;
  v51 = ((*(*a18 + 17) << 32) | (*(*a18 + 16) << 40) | (*(*a18 + 30) << 48)) ^ __ROR8__(((*(*a18 + 21) << 51) | (*(*a18 + 35) << 43) | (*(*a18 + 6) << 35) | __ROR8__(*(*a18 + 54), 5)) ^ 0xF560C2C67CCD1710, 35) ^ (*(*a18 + 42) << 56);
  v52 = *(*a18 + 15) | (*(*a18 + 32) << 8) | (*(*a18 + 7) << 16) | (*(*a18 + 34) << 24) | (*(*a18 + 61) << 40);
  v53 = v51 ^ 0x8DA64BF691AD12DELL;
  v54 = *(&off_1F41B25C0 + (a31 ^ 0x5DC));
  v55 = (*(v54 + 2 + (((((69 * v50[55]) - ((69 * v50[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v50[55])) ^ 0xD5)) - 18) ^ 0x57;
  v56 = (v55 >> 2) | (v55 << 6);
  v57 = ((*(*a18 + 51) << 56) | (*(*a18 + 56) << 48)) ^ 0xA0380CB75921C655 ^ (((0xFFFFFFFF00000000 * v56) ^ (v52 - (v52 & 0xFFFFFF00FFFFFFFFLL | (v56 << 32))) ^ ((v56 << 32) - ((v56 << 33) & 0xAE00000000) + 0x1B0FD1578608B854) ^ 0x1B0FD1578608B854) + v52);
  v60 = ((v50[4] >> 4) | (16 * v50[4])) ^ 0x5CLL;
  LOBYTE(v52) = (*(v54 + 2 + ((69 * *(*a18 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v58 = ((v52 >> 2) | (v52 << 6)) << 32;
  v59 = *(*a18 + 8) << 24;
  v61 = (((((v50[33] << 16) & 0xE50000 ^ 0x8CC0EAB1809A04DELL ^ ((((((*(v54 + 533 + v60) >> 5) | (8 * *(v54 + 533 + v60))) << 8) ^ 0x9836EFC90462729ELL) & (*(*a18 + 19) ^ 0x9FBFEFCB86E3FFBELL) | *(*a18 + 19) & 0x61) ^ 0x552E38CE0178D3F7) & ((v50[33] << 16) ^ 0xFFBFFFFF97FBFFFFLL)) & ~v59 | v59 & 0x7A000000) ^ 0x150F206FBE9F3AELL) & ~v58 | v58 & 0x4F00000000) ^ ((v50[38] << 40) | (v50[43] << 48));
  return (*(a36 + 8 * ((a31 - 246) | 0x230)))(0xFFFFFF0000000000 * v50[12], 87, v53, v57, ((v61 & 0x4AF54021979D7FCDLL ^ (v50[46] << 56) & 0x4A00000000000000 ^ 0xB74EBFDE6866A0F6) & ((v50[46] << 56) & 0xB500000000000000 ^ 0xF6CC3AE2000EA1EDLL ^ v61 & 0xB50ABFDE68628032) | (v61 & 0x4AF54021979D7FCDLL ^ (v50[46] << 56) & 0x4A00000000000000) & 0x831400197915E00) ^ 0xF6C4F5727E6F37FDLL, 250, a40, STACK[0x528], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1C21CE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44)
{
  v44 = (a6 - 1392) | 0x108;
  v45 = a6 + 342;
  v47 = (*(a3 + 8 * (a6 + 342)))(3);
  v48 = *(&off_1F41B25C0 + (a6 ^ 0x809u));
  *v48 = v47;
  v49 = v48;
  (*(a40 + 8 * (a6 + 273)))();
  v50 = (*(a40 + 8 * v45))(66);
  v51 = *(&off_1F41B25C0 + a6 - 2137);
  *v51 = v50;
  (*(a40 + 8 * (a6 + 273)))();
  v52 = (*(a40 + 8 * (a6 ^ 0x1D6u)))(2);
  v53 = *(&off_1F41B25C0 + a6 - 2021);
  *(v53 - 4) = v52;
  *v52 = 7196;
  **v51 = 0;
  v75 = *(&off_1F41B25C0 + a6 - 2079);
  *v75 = 0;
  v54 = *(v53 - 4);
  v55 = *v51;
  v56 = v49;
  v57 = *v49;
  v55[64] = 1;
  v58 = *(&off_1F41B25C0 + a6 - 2032);
  *v58 = 51;
  v55[9] = -15;
  v54[1] = 79;
  v59 = *(&off_1F41B25C0 + (a6 ^ 0x830u));
  *v59 = 80;
  v71 = *(&off_1F41B25C0 + a6 - 1956);
  *v71 = -77;
  *v54 = -22;
  v55[11] = 73;
  *v57 = 68;
  v55[20] = -44;
  v74 = *(&off_1F41B25C0 + a6 - 2100);
  *v74 = -121;
  v55[36] = -11;
  v55[45] = -113;
  v55[49] = 25;
  *(v57 + 1) = 6695;
  v69 = *(&off_1F41B25C0 + (a6 ^ 0x8E2u));
  *v69 = -122;
  v60 = *(&off_1F41B25C0 + (a6 ^ 0x8C4u));
  *v60 = 88;
  v55[26] = -34;
  v55[60] = -5;
  v61 = *(&off_1F41B25C0 + a6 - 1973);
  *v61 = 96;
  v62 = *(&off_1F41B25C0 + a6 - 1990);
  *v62 = 80;
  v73 = *(&off_1F41B25C0 + a6 - 2094);
  *v73 = 17;
  v70 = *(&off_1F41B25C0 + a6 - 1987);
  *v70 = 119;
  v55[52] = 47;
  v55[50] = 102;
  v55[59] = -59;
  v55[22] = -36;
  v55[29] = 59;
  v55[27] = 34;
  v55[40] = -80;
  v55[13] = 23;
  v68 = *(&off_1F41B25C0 + (a6 ^ 0x847u));
  *v68 = 99;
  v55[53] = 3;
  v72 = *(&off_1F41B25C0 + (a6 ^ 0x819u));
  *v72 = -109;
  v55[39] = 54;
  v55[57] = 73;
  v63 = *(&off_1F41B25C0 + a6 - 2052);
  *v63 = 83;
  v55[37] = -52;
  v55[63] = -72;
  v64 = *v51;
  v64[65] = -85;
  v64[5] = -14;
  v64[54] = 32;
  v64[58] = 113;
  *(v64 + 8) = 16909;
  v64[28] = -39;
  *(v64 + 47) = -4065;
  v64[21] = 15;
  *(v64 + 41) = -29527;
  v64[38] = -121;
  *(v64 + 31) = 8824;
  v64[10] = -98;
  v64[25] = 69;
  *(v64 + 7) = 27031;
  v64[23] = -86;
  v64[14] = -90;
  v64[62] = -105;
  *(v64 + 33) = 15089;
  *(v64 + 55) = -30385;
  v64[46] = -17;
  v64[4] = -92;
  v64[30] = 36;
  v64[35] = 52;
  v64[15] = 72;
  v64[51] = -15;
  v64[12] = -15;
  v64[61] = 73;
  *(v64 + 9) = -9761;
  *(v64 + 43) = 19744;
  v64[6] = 45;
  v64[24] = -72;
  if (a44 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = a44;
  }

  v65 = *v51;
  HIDWORD(a19) = **v51;
  v76 = *(&off_1F41B25C0 + (a6 ^ 0x8C0u));
  return (*(a40 + 272 * (v44 ^ 0x3FA)))(34 * (v44 ^ 0x3FAu), v66, STACK[0x528], ((((v65[22] << 32) | (v65[60] << 8) | (v65[27] << 16) | v65[59] | (v65[53] << 24) | (v65[37] << 40) | (((*(v76 - 3 + (((v65[57] >> 3) | (32 * v65[57])) ^ 0xF3)) ^ 0xBC) + 74) << 48)) ^ 0x4B48C30A332ECF7CLL) & ~(v65[29] << 56) | (v65[29] << 56) & 0xB400000000000000) ^ 0xBDB9EB9BE61E1B0, a40, 0, 3038461849, 1256506361, a9, v76 - 8, v76 - 3, *v56, *(v53 - 4), v60, v61, v62, v63, v76 + 258, a19, v65, v58, v51, v68, a24, v69, a26, v70, a28, v71, v59, v72, v73, v74, v75);
}

uint64_t sub_1C21CF2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = (v21 + 202) ^ (((~((v22 - 136) | 0xF676A2F6) + ((v22 - 136) & 0xF676A2F6)) ^ 0x23427773) * v17);
  *(v22 - 128) = &a17;
  *(v22 - 120) = v20;
  v23 = (*(v19 + 8 * (v21 ^ 0xAE2)))(v22 - 136);
  return (*(v19 + 8 * ((1910 * (*(v22 - 132) <= ((((v21 + 128424703) & 0xF85867F1) - 603) ^ (v18 + 1018)))) ^ v21)))(v23);
}

void sub_1C21CF45C(uint64_t a1)
{
  v1 = *(a1 + 16) - 1380333833 * ((a1 - 903107047 - 2 * (a1 & 0xCA2BAE19)) ^ 0x74790593);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1C21CF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, int a14, unsigned int a15)
{
  a15 = v17 + 210068311 * (((&a13 | 0x641B388F) - (&a13 & 0x641B388F)) ^ 0xF6CD072B) - 589;
  a13 = &a12;
  v18 = (*(v15 + 8 * (v17 + 900)))(&a13);
  return (*(v15 + 8 * (((a14 == v16) * ((v17 ^ 0x31) + 1991)) ^ v17)))(v18);
}

uint64_t sub_1C21CF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (((LODWORD(STACK[0x534]) ^ 0x518879E) - 85493662) ^ ((LODWORD(STACK[0x534]) ^ 0x74FB1966) - 1962613094) ^ ((LODWORD(STACK[0x534]) ^ 0xB6E701D0) + 1226374704)) - 1911996848 + (((v66 ^ 0x97107E8F) + 1760526705) ^ ((v66 ^ 0x7E7466CF) - 2121557711) ^ (((((a5 - 626) | 0x81) + 778077671) ^ v66) - 778078056));
  *(a66 + 52) = ((v68 % 0x2710) ^ 0xF73DCFFF) + 2 * ((v68 % 0x2710) & 0xFFF) + 1340227519;
  v69 = STACK[0x53C];
  STACK[0x430] -= 1616;
  LODWORD(STACK[0x4BC]) = v69;
  return (*(v67 + 8 * ((206 * (v69 != a6)) ^ (a5 - 547))))();
}

void sub_1C21CF77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *v36 = (v34 ^ v35) + 1384989484 + (((a23 - v34) | (v34 - a23)) >> 31);
  (*(a4 + 8 * (v34 + 2429)))(a34);
  JUMPOUT(0x1C21CF7ECLL);
}

uint64_t sub_1C21CF8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  v11 = (((a8 ^ 0xEF642E08) + (a5 ^ 0x4D9) + 278647169) ^ ((a8 ^ 0x9AAB4CA3) + 1700049757) ^ (((6 * (a5 ^ 0x4D9) - 1694547801) ^ a8) + 1694547087)) + v9;
  v12 = (((a6 ^ 0x29C9A1B5) - 701079989) ^ ((a6 ^ 0x6D9D8F43) - 1839042371) ^ ((a6 ^ 0xAB640F2C) + 1419505876)) + v9;
  v13 = (v12 < v10) ^ (v11 < v10);
  v14 = v11 < v12;
  if (v13)
  {
    v14 = v12 < v10;
  }

  return (*(v8 + 8 * ((103 * v14) ^ a5)))();
}

uint64_t sub_1C21CF9EC()
{
  STACK[0x210] = v1 - 112;
  STACK[0x430] = v1 - 112;
  return v0();
}

uint64_t sub_1C21CFA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = a13 - 975635691 + ((v15 - 941) | 0x12);
  v17 = v13 + 1148646548 < v16;
  if (v13 > 0xBB890B6B != v16 < 0x4476F494)
  {
    v17 = v16 < 0x4476F494;
  }

  return (*(v14 + 8 * ((28 * v17) ^ v15)))();
}

uint64_t sub_1C21CFA78(uint64_t a1, char a2)
{
  v14.val[1].i64[0] = (v6 + 13) & 0xF;
  v14.val[1].i64[1] = (v6 + 12) & 0xF;
  v14.val[2].i64[0] = (v6 + 11) & 0xF;
  v14.val[2].i64[1] = (v6 + 10) & 0xF;
  v14.val[3].i64[0] = (v6 + 9) & 0xF;
  v14.val[3].i64[1] = a2 & 0xF ^ 7;
  v15.val[0].i64[0] = (v6 + 7) & 0xF;
  v15.val[0].i64[1] = (v6 + 6) & 0xF;
  v15.val[1].i64[0] = (v6 + 5) & 0xF;
  v15.val[1].i64[1] = (v6 + 4) & 0xF;
  v15.val[2].i64[0] = (v6 + 3) & 0xF;
  v15.val[2].i64[1] = (v6 + 2) & 0xF;
  v15.val[3].i64[0] = (v6 + 1) & 0xF;
  v15.val[3].i64[1] = v6 & 0xF;
  v10 = vqtbl4q_s8(v15, xmmword_1C2349910).u64[0];
  v11.i64[0] = 0x5959595959595959;
  v11.i64[1] = 0x5959595959595959;
  v12.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v12.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  v14.val[0].i64[0] = (v6 - 17) & 0xF;
  v14.val[0].i64[1] = (v6 + 14) & 0xF;
  v15.val[3].i64[0] = vqtbl4q_s8(v14, xmmword_1C2349910).u64[0];
  v15.val[3].i64[1] = v10;
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v2 + v6 - 16), *(v4 + v14.val[0].i64[0] - 15)), veorq_s8(*(v14.val[0].i64[0] + v3 - 10), *(v14.val[0].i64[0] + v5 - 13))));
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15.val[0], v15.val[0], 8uLL), v12), vmulq_s8(v15.val[3], v11)));
  *(v8 + v6 - 16) = vextq_s8(v15.val[0], v15.val[0], 8uLL);
  return (*(v9 + 8 * ((((a2 & 0x10) == 16) * (((v7 + 242) | 0x2E8) + 1245)) ^ v7)))();
}

uint64_t sub_1C21CFC80()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v1 + v5) ^ 0x6A;
  return (*(v4 + 8 * (((v5 == 0) * ((v3 + 1629) ^ 0x863)) ^ v3)))();
}

uint64_t sub_1C21CFCDC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = (v4 & v6 ^ v7) + v5;
  *(v2 + v10) = *(a2 + v10) - (v8 & (2 * *(a2 + v10))) + 106;
  return (*(v9 + 8 * (((v10 != 0) * a1) ^ v3)))();
}

void sub_1C21CFD14()
{
  v1 = (4 * *(v0 - 164)) ^ 0x624;
  v2 = *(v0 - 172);
  *(v0 - 124) = *(v0 - 176) ^ 0xCE5920C4;
  *(v0 - 128) = v2 ^ 0x1978C64A;
  *(v0 - 132) = (v1 + 145372408) ^ *(v0 - 180);
  *(v0 - 136) = *(v0 - 168) ^ 0xDCB3F494;
  JUMPOUT(0x1C21B7B5CLL);
}

uint64_t sub_1C21CFD78@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W7>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int32x4_t a11@<Q7>)
{
  a7.i64[0] = *(v12 + 4);
  a7.i32[2] = *(v12 + 12);
  v14 = vextq_s8(a6, a7, 0xCuLL);
  v15 = a7;
  v15.i32[3] = *(v12 + 16);
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a9), vandq_s8(v14, a8)), 1uLL), *(v12 - 908));
  v14.i32[0] = *(v13 + 4 * (*(v12 + 4) & 1));
  v14.i32[1] = *(v13 + 4 * (*(v12 + 8) & 1));
  v14.i32[2] = *(v13 + 4 * (*(v12 + 12) & (v11 - a3 + 1)));
  v14.i32[3] = *(v13 + 4 * (v15.i8[12] & 1));
  *v12 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a10)), a11), v14);
  return (*(a1 + 8 * (((a5 == 4) * a4) ^ (a2 + v11 + 804))))();
}

void sub_1C21CFD84(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) - 210068311 * ((a1 - 1792951857 - 2 * (a1 & 0x9521B9CF)) ^ 0x7F7866B);
  v2 = *(a1 + 8);
  v4 = v1 - 50899313 * (((&v4 | 0x7C161BB5) - &v4 + (&v4 & 0x83E9E448)) ^ 0x56DD31CF) + 239;
  v5 = v2;
  v3 = *(&off_1F41B25C0 + v1 - 921) - 8;
  (*&v3[8 * v1 + 11272])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21CFEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v18 - 120) = &a13;
  *(v18 - 112) = &a15;
  *(v18 - 128) = (v17 + 843) ^ (((((v18 - 128) | 0x9AC1971E) - (v18 - 128) + ((v18 - 128) & 0x653E68E0)) ^ 0xB00ABD64) * v16);
  v19 = (*(v15 + 8 * (v17 + 2211)))(v18 - 128);
  return (*(v15 + 8 * (((*(v18 - 124) > 0xEAB5317u) * ((v17 ^ 0x319) - 161)) ^ v17)))(v19);
}

uint64_t sub_1C21CFF58@<X0>(int a1@<W8>)
{
  v11 = (a1 + 2102042859) & 0x82B55EBF;
  v12 = (v7 ^ (v1 + 541) ^ v11) * (**(v5 + 8) ^ (v1 + (v11 ^ v8) - 760)) + (*(v9 + 4 * v3) ^ v1);
  *(v9 + 4 * v3) = v12 + v1 - (v4 & (2 * v12));
  return (*(v6 + 8 * (((v2 != 1) * v10) ^ v11)))();
}

uint64_t sub_1C21D0028@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0x10CFDE25) + v2;
  *(*(a1 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((2034 * (v8 > (v1 + v3 + 324 - 927))) ^ (v3 + 404))))();
}

uint64_t sub_1C21D0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(a12 + 16) = -v18;
  v23 = 896639297 * ((-1721675421 - ((v22 - 136) | 0x99615163) + ((v22 - 136) | 0x669EAE9C)) ^ 0x723538E4);
  *(v22 - 128) = v20;
  *(v22 - 136) = v23 ^ 0x72FF1247;
  *(v22 - 132) = (v21 + 1552) ^ v23;
  (*(v19 + 8 * (v21 + 2086)))(v22 - 136);
  v24 = 50899313 * ((2 * ((v22 - 136) & 0x4702E990) - (v22 - 136) - 1191373208) ^ 0x92363C12);
  *(v22 - 136) = v20;
  *(v22 - 128) = v24 + ((a14 << (43 * (v21 ^ 0x33) - 47)) & 0x7393FB40) + ((a14 << ((37 * (v21 ^ 0x2B)) ^ 6)) ^ 0xB9C9FDBF) + 2013236958;
  *(v22 - 124) = v21 - v24 + 1514;
  (*(v19 + 8 * (v21 + 2158)))(v22 - 136);
  *(v22 - 120) = v21 + 210068311 * ((615137595 - ((v22 - 136) | 0x24AA413B) + ((v22 - 136) | 0xDB55BEC4)) ^ 0x49838160) + 1377;
  *(v22 - 136) = a17;
  *(v22 - 128) = &a18;
  (*(v19 + 8 * (v21 ^ 0x85F)))(v22 - 136);
  *(v22 - 128) = a17;
  *(v22 - 120) = v20;
  *(v22 - 136) = (v21 + 782) ^ (50899313 * ((2 * ((v22 - 136) & 0x68A5B668) - (v22 - 136) - 1755690608) ^ 0xBD9163EA));
  v25 = (*(v19 + 8 * (v21 + 2150)))(v22 - 136);
  return (*(v19 + 8 * (((32 * (*(v22 - 132) > 0xEAB5317u)) | ((*(v22 - 132) > 0xEAB5317u) << 6)) ^ v21)))(v25);
}

uint64_t sub_1C21D0410@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v2 + v8) - (v5 & (2 * *(v2 + v8))) + 106;
  return (*(v1 + 8 * (((((v8 == 0) ^ v6) & 1) * v7) ^ v3)))(0);
}

void sub_1C21D044C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v16 - 112) = ((a1 & 0xD8116F77) - 53) ^ (((((v16 - 144) | 0x96772157) - (v16 - 144) + ((v16 - 144) & 0x6988DEA8)) ^ 0x85ABCD77) * v15);
  *(v16 - 104) = a7;
  *(v16 - 128) = &a15;
  *(v16 - 120) = &a11;
  *(v16 - 144) = &a15;
  JUMPOUT(0x1C21BFCCCLL);
}

uint64_t sub_1C21D04B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((v6 ^ (v2 + 224)) + v3 >= 0x7FFFFFFF)
  {
    v7 = -v5;
  }

  else
  {
    v7 = v4;
  }

  *(a2 + 4) = v7;
  *(result + 28) = 1414338822;
  return result;
}

uint64_t sub_1C21D04F4@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0xB8Eu) - 2301 + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((1447 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 - 406))))();
}

void sub_1C21D0550(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (143681137 * ((((2 * a1) | 0x4BC1B692) - a1 - 635493193) ^ 0x44DA6C01));
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 1472192017 < 0)
  {
    v3 = 1472192017 - v2;
  }

  else
  {
    v3 = v2 - 1472192017;
  }

  v5[1] = *(a1 + 8);
  v6 = v1 - 1504884919 * (((v5 | 0xF16C9DF) + (~v5 | 0xF0E93620)) ^ 0xF4D57EC5) + 1145;
  v4 = *(&off_1F41B25C0 + (v1 ^ 0x1FD)) - 8;
  (*&v4[8 * v1 + 15872])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21D069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(uint64_t, unint64_t *, uint64_t))
{
  v35 = (((v33 ^ 0xD20042B2) + 771734862) ^ ((v33 ^ 0x85C79121) + 2050518751) ^ ((v33 ^ 0x69BD2AC8) - 1774004936)) - 628202947 + (((LODWORD(STACK[0x31C]) ^ 0x84618FB8) + 2073981000) ^ ((LODWORD(STACK[0x31C]) ^ 0xEF89F0F) - 251174671) ^ (((7 * (v34 ^ 0x1BB) - 1260131888) ^ LODWORD(STACK[0x31C])) + 1260131860));
  LODWORD(STACK[0x31C]) = v35 ^ ((v35 ^ 0x22A6421) - 1605503910) ^ ((v35 ^ 0x8CFA7CEE) + 782101655) ^ ((v35 ^ 0xEDB788B7) + 1339037904) ^ ((v35 ^ 0x3EFFFFFF) - 1667731576) ^ 0x63E296DC;
  v36 = (((v32 ^ 0x3A400526) - 977274150) ^ ((v32 ^ 0x990B2E90) + 1727320432) ^ ((v32 ^ 0x9D31D2ED) + 1657679123)) + (((LODWORD(STACK[0x30C]) ^ 0xDE74194D) + 562816691) ^ ((LODWORD(STACK[0x30C]) ^ 0xEF410B23) + 280949981) ^ ((LODWORD(STACK[0x30C]) ^ 0xF4FEB35) - 256895797)) - 183672725;
  v37 = (((v30 ^ 0x8AFECBB) - 145747131) ^ ((v30 ^ 0x8B1527A0) + 1961547872) ^ ((v30 ^ 0xBDC03240) + 1111477696)) + (((LODWORD(STACK[0x310]) ^ 0x9940923D) + 1723821507) ^ ((LODWORD(STACK[0x310]) ^ 0xAA28DAA3) + 1440163165) ^ ((LODWORD(STACK[0x310]) ^ 0xD12B1C5) - 219328965)) - 731177101;
  LODWORD(STACK[0x30C]) = v36 ^ ((v36 ^ 0x61E3EA68) - 435455965) ^ ((v36 ^ 0xF192CCAC) + 1987731175) ^ ((v36 ^ 0x1599B48E) - 1838078267) ^ ((v36 ^ 0xFDFFFFFF) + 2048355766) ^ 0x466D94EE;
  LODWORD(STACK[0x310]) = v37 ^ ((v37 ^ 0x6B445DB8) - 1009873157) ^ ((v37 ^ 0x3C78852C) - 1796057489) ^ ((v37 ^ 0x3FB6AE56) - 1757643499) ^ ((v37 ^ 0x3FFF5A7F) - 1753904834) ^ 0x690FD5E6;
  v38 = (((v31 ^ 0xC557F2A7) + 984091993) ^ ((v31 ^ 0xC8BCEF61) + 927142047) ^ ((v31 ^ 0x3391E49D) - 865199261)) + (((LODWORD(STACK[0x314]) ^ 0x1785E28E) - 394650254) ^ ((LODWORD(STACK[0x314]) ^ 0xA7F66176) + 1477025418) ^ ((LODWORD(STACK[0x314]) ^ 0x8E097AA3) + 1911981405)) - 217387918;
  v39 = (((v29 ^ 0x5641289E) - 1447110814) ^ ((v29 ^ 0xE5E3871) - 241055857) ^ ((v29 ^ 0x6665E9B4) - 1717954996)) + (((LODWORD(STACK[0x318]) ^ 0x742A25A6) - 1948919206) ^ ((LODWORD(STACK[0x318]) ^ 0x6C93D66A) - 1821628010) ^ ((LODWORD(STACK[0x318]) ^ 0x26C30A97) - 650316439)) - 148817993;
  LODWORD(STACK[0x314]) = v38 ^ ((v38 ^ 0x30FCF8D3) - 1189609839) ^ ((v38 ^ 0xDD052AFA) + 1424895162) ^ ((v38 ^ 0x6C1294AA) - 436628758) ^ ((v38 ^ 0xF7FFBF3F) + 2115287421) ^ 0x486E00E7;
  LODWORD(STACK[0x318]) = v39 ^ ((v39 ^ 0xE1914E46) + 1682306233) ^ ((v39 ^ 0x48A2013F) - 847856702) ^ ((v39 ^ 0x2CEFC58F) - 1455718542) ^ ((v39 ^ 0xFFF7CFF7) + 2049144074) ^ 0x4451BC5A;
  return a29(2663015131, &STACK[0x2C4], 212);
}

uint64_t sub_1C21D0CCC()
{
  v5 = (v1 - 32);
  v6 = (v2 - 32);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * (((v0 != 32) * (v3 + 970)) ^ (v3 + 494))))();
}

void sub_1C21D0DE4(_DWORD *a1)
{
  v1 = 50899313 * ((a1 & 0xD474591B | ~(a1 | 0xD474591B)) ^ 0x1408C9E);
  v2 = *a1 + v1;
  __asm { BRAA            X13, X17 }
}

void sub_1C21D0EF0(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1472192017;
  if (v2 < 0)
  {
    v2 = 1472192017 - *(*(a1 + 24) + 4);
  }

  v1 = *a1 ^ (1785193651 * (a1 ^ 0x13DCEC20));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1C21D100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(*(a13 + 96) + 504) = v39 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v42 = 1388665877 * ((((v41 - 160) | 0xD74E2CBB) + (~(v41 - 160) | 0x28B1D344)) ^ 0x5AE34E56);
  *(v41 - 148) = v42 - 562358852;
  *(v41 - 144) = v42 - 325162679;
  *(v41 - 160) = &a30;
  v43 = (*(v40 + 19496))(v41 - 160);
  return (*(v40 + 8 * ((45 * (a15 - 1308994866 + (a39 & 0x3Fu) < 0xFFFFFFC0)) ^ 0x21F)))(v43, 22081637);
}

uint64_t sub_1C21D1158(int8x16_t a1, int8x16_t a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * v6) ^ (v2 + 155))))();
}

uint64_t sub_1C21D1168@<X0>(_DWORD *a1@<X5>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = v21 ^ 0xAE1;
  v23 = (a1[1] ^ a2) + (v14 ^ HIDWORD(v15)) + v20 * (*(*(a11 + 8) + 4) ^ a2);
  *a1 = (v23 + v13 - ((v23 << ((v22 ^ v17) + 63)) & v11)) ^ v18;
  return (*(v16 + 8 * (((v12 == 2) * v19) ^ v22)))();
}

uint64_t sub_1C21D125C()
{
  v5.i64[0] = 0xD4D4D4D4D4D4D4D4;
  v5.i64[1] = 0xD4D4D4D4D4D4D4D4;
  v6.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v6.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  *((v3 + 650) + v2 + 223) = vaddq_s8(vsubq_s8(*((v3 + 650) + v0 - 925), vandq_s8(vaddq_s8(*((v3 + 650) + v0 - 925), *((v3 + 650) + v0 - 925)), v5)), v6);
  return (*(v4 + 8 * ((v1 - 737) | 0xA)))();
}

uint64_t sub_1C21D12C0@<X0>(uint64_t a1@<X8>)
{
  v8 = (**(v7 + 8) ^ v3) + (**(v4 + 8) ^ v3);
  **(a1 + 8) = v8 + v3 - ((v8 << (-21 * (v2 ^ 0x5A))) & v6);
  return (*(v5 + 8 * ((2563 * (v1 == 1)) ^ v2)))();
}

uint64_t sub_1C21D149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39, uint64_t a40)
{
  v43 = (*(a4 + 8 * (v40 ^ 0xC93)))(a39 + 4, 0);
  v44 = a39[4] + 663375984 - ((v40 + 1326750659) & (2 * a39[4]));
  a39[1] = a39[6] + 663375984 - ((2 * a39[6]) & 0x4F14A0E0);
  a39[2] = v44;
  v45 = (*(a40 + 8 * (v40 + 1143)))(v43);
  a39[3] = v45 + 663375984 - ((2 * v45) & 0x4F14A0E0);
  v46 = (*(a40 + 8 * (v40 ^ 0xC89)))();
  *a39 = v46 + 663375984 - ((2 * v46) & 0x4F14A0E0);
  v47 = 1380333833 * ((2 * ((v42 - 144) & 0x42390819B2A794D8) - (v42 - 144) + 0x3DC6F7E64D586B27) ^ 0x362386CAF30AC0ADLL);
  v48 = (1664525 * (*v41 ^ (*v41 >> 30))) ^ v41[1];
  v41[1] = (((*a39 ^ 0x5806297D) - 1476798845) ^ ((*a39 ^ 0xC3C1A08B) + 1010720629) ^ ((*a39 ^ 0xBC4DD986) + 1135748730)) + 231932075 + (((v48 ^ 0x29B97DDB) + 806236704) ^ ((v48 ^ 0x6384B4EF) + 2050226988) ^ ((v48 ^ 0x4A3DC934) + 1401587441));
  *(v42 - 112) = 2 - v47;
  v49 = v47 + v40 + 1877956572;
  *(v42 - 128) = v49 - 227;
  *(v42 - 124) = v49 - 123;
  *(v42 - 136) = 1 - v47;
  *(v42 - 132) = (v40 + 1877956572) ^ v47;
  *(v42 - 144) = 623 - v47;
  *(v42 - 120) = (v40 + 1212454259) ^ v47;
  v50 = (*(a40 + 8 * (v40 + 1083)))(v42 - 144);
  return (*(a40 + 8 * *(v42 - 104)))(v50);
}

uint64_t sub_1C21D1820@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = -v4;
  }

  v5 = ((v3 + 271473392) & 0xEFD1A79D ^ 0xFFFFFFFFFFFFF972) + v4;
  *(*(v1 + 8) + 4 * v5) = *(*(a1 + 8) + 4 * v5);
  return (*(v2 + 8 * ((1999 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1C21D1878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = (*(v73 + 8 * (v70 + 1547)))();
  v75 = STACK[0x2D8];
  LODWORD(STACK[0x4BC]) = v71;
  return (*(v75 + 8 * (((v70 ^ 0x333) * v72) ^ (v70 - 732))))(v74, a70);
}

uint64_t sub_1C21D18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31)
{
  v35 = LOBYTE(STACK[0x324]);
  if (v35 == 2)
  {
    v39 = &STACK[0x2C4] + v33 + 1270209938;
    v40 = ((*v39 ^ 0x6A) << 24) | ((v39[1] ^ 0x6A) << 16) | ((v39[2] ^ 0x6A) << 8);
    *v31 = (v40 | v39[3] ^ 0x6A) + v34 - 2 * ((v40 | v39[3] ^ 0x6A) & 0x47049F2F ^ (v39[3] ^ 0x6A) & 7);
    v41 = *(v32 + 8 * ((107 * ((v33 + 1270209942) < 0x40)) ^ a31));
    return v41(v41, 2687136800, 1409286688, 4294966877, 3698082736, 2111921312, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else
  {
    if (v35 != 1)
    {
      JUMPOUT(0x1C21D07E0);
    }

    v36 = &STACK[0x2C4] + v33 + 1270209938;
    v37 = *v36 ^ 0x6A;
    LODWORD(v36) = ((v36[2] ^ 0x6A) << 16) | ((v36[3] ^ 0x6A) << 24) | v37 | ((v36[1] ^ (a8 + 78)) << 8);
    *v31 = v36 + v34 - 2 * (v36 & 0x47049F2B ^ v37 & 3);
    return (*(v32 + 8 * ((122 * ((v33 + 1270209942) > 0x3F)) ^ (a8 + 1056))))((a8 + 1066));
  }
}

uint64_t sub_1C21D18E8@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xB64));

  return v3(v1);
}

uint64_t sub_1C21D1A10@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (a2 + 179460350) & 0xF54DA7FF;
  *v7 = a1;
  *v8 = v2;
  v5 = (v4 - 350270992) & 0x14E0B0BF;
  v12 = v9;
  v11 = (v4 + 500) ^ (50899313 * ((2 * (&v11 & 0xE7C95E0) - &v11 + 1904437788) ^ 0x5B484066));
  (*(v3 + 8 * (v4 + 899)))(&v11);
  v11 = (v5 + 1860) ^ (50899313 * ((((&v11 | 0x8A3BAF78) ^ 0xFFFFFFFE) - (~&v11 | 0x75C45087)) ^ 0x5F0F7AFD));
  v12 = v10;
  (*(v3 + 8 * (v5 + 2259)))(&v11);
  return 0;
}

void sub_1C21D1BDC(_DWORD *a1)
{
  v1 = *a1 + 1504884919 * (a1 ^ 0xFBC3B71B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1C21D1D68@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>, int8x8_t a7@<D2>)
{
  v14 = a1 - 8;
  v16.val[0].i64[0] = (v11 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + (a4 ^ 0xAA)) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xF ^ 8;
  *(a2 - 8 + v11) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 - 8 + v11), *(v9 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 2), *(v16.val[0].i64[0] + v10 - 5)))), a7), vmul_s8(*&vqtbl4q_s8(v16, a5), a6)));
  return (*(v13 + 8 * (((v12 == v14) * v7) ^ a4)))();
}

uint64_t sub_1C21D1D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v37 = &a29 + v29;
  v38 = LOBYTE(STACK[0x304]);
  if (v38 == 2)
  {
    v42 = LODWORD(STACK[0x2FC]);
    v43 = &v37[v33 + 1138759008];
    v44 = ((*v43 ^ v35) << 24) | ((v37[(((a5 + 482) | 0x82u) ^ (v33 - 629)) + 1138759008] ^ v35) << 16) | ((v43[2] ^ v35) << 8);
    *v30 = (v44 | v43[3] ^ v35) + v31 - 2 * ((v44 | v43[3] ^ v35) & 0x47049F2F ^ (v43[3] ^ v35) & 7);
    return (*(v32 + 8 * ((1287 * ((v33 + 1138759012) < 0x40)) ^ (a5 + 644))))(v42, v34 + 16);
  }

  else if (v38 == 1)
  {
    v40 = &v37[v33 + 1138759008];
    v41 = *v40 ^ v35;
    LODWORD(v40) = ((v37[(v36 ^ (v33 - 55)) + 1138759008] ^ v35) << 16) | ((v40[3] ^ v35) << 24) | v41 | ((v40[1] ^ v35) << 8);
    *v30 = v40 + v31 - 2 * (v40 & 0x47049F2B ^ v41 & 3);
    return (*(v32 + 8 * ((2160 * ((v33 + 1138759012) < 0x40)) ^ (a5 + 165))))(67698688, 1138759008, 605618176, 2214666752, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    return sub_1C21CA4F8(a1, a2, a3, a4, a5, a6, a7, 2488419594, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, *(v32 + 8 * a9));
  }
}

uint64_t sub_1C21D2354@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 56) | *(a1 + 24))
  {
    v4 = *(a1 + 12) + a2 == ((v2 + 456) | 8) + 2058342458;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * (((2 * (((v2 + 72) ^ v5) & 1)) & 0xEF | (16 * (((v2 + 300269384) ^ v5) & 1))) ^ v2)))();
}

uint64_t sub_1C21D2594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, int a16, char *a17, char *a18, unsigned int a19, uint64_t a20)
{
  a20 = a11;
  a19 = (v22 + 322) ^ (843532609 * (((&a16 | 0x612E3D9C) - (&a16 & 0x612E3D9C)) ^ 0x71924AC2));
  a17 = &a13;
  a18 = &a10;
  v23 = (*(v21 + 8 * (v22 + 1898)))(&a16);
  return (*(v21 + 8 * (((a16 == v20) * (((v22 - 576) | 0xE6) + ((v22 - 437) | 0x103) + 1251)) ^ v22)))(v23);
}

uint64_t sub_1C21D2650()
{
  v6 = v2 < v3;
  if (v6 == v1 + 1 > (v4 ^ 0xFFFFFFFF6DAEC1EBLL))
  {
    v6 = v1 + v0 + v4 < v2;
  }

  return (*(v5 + 8 * ((247 * !v6) ^ (v4 - 1662))))(v4);
}

uint64_t sub_1C21D26B4@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  if ((a1 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = (a2 ^ 0xFFFFFD5F ^ (v2 - 2075) ^ 0x264) >= a1 - 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((53 * v5) ^ v2)))();
}

void sub_1C21D279C()
{
  v5 = STACK[0x3F0] + 128;
  STACK[0x3A0] = v5;
  v6 = 1388665877 * ((v2 + 1366046104 - 2 * (v2 & 0x516C3598)) ^ 0xDCC15774);
  *(v3 - 192) = v5;
  *(v3 - 180) = v6 + v0 - 562358921;
  *(v3 - 176) = v6 - 325162679;
  v7 = v0;
  (*(v4 + 8 * (v0 + 2368)))(v3 - 192);
  STACK[0x348] = *(STACK[0x2D8] + 8 * v7);
  STACK[0x2B0] = v1;
  JUMPOUT(0x1C21E7CBCLL);
}

uint64_t sub_1C21D2854()
{
  if (v2 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = -v2;
  }

  v6 = v1 + v0;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  return (*(v4 + 8 * ((((v3 ^ 0xDCB) - 2261) * (v5 > v7)) ^ v3)))();
}

uint64_t sub_1C21D288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  v21 = v17 + 243;
  *a15 = 64;
  *(v18 + 252) = 1472192017;
  *(v18 + 256) = v18 + 264;
  *(v18 + 520) = 0x57BFDE1100000040;
  *(v18 + 528) = v18 + 536;
  STACK[0x2A0] = v18 + 792;
  *(v18 + 792) = 0x57BFDE1100000040;
  *(v18 + 800) = v18 + 808;
  v22 = v19 - 192;
  STACK[0x2A8] = v18 + 1064;
  *(v18 + 1064) = 0x57BFDE1100000040;
  *(v18 + 1072) = v18 + 1080;
  STACK[0x2B0] = v18 + 1336;
  *(v18 + 1336) = 0x57BFDE1100000040;
  *(v18 + 1344) = v18 + 1352;
  v23 = STACK[0x380] + 4;
  v24 = v17 + 1199;
  v25 = 1556366573 * (((((v19 - 192) | 0xDE59D81E) ^ 0xFFFFFFFE) - (~(v19 - 192) | 0x21A627E1)) ^ 0x4542040B);
  *(v19 - 192) = a15;
  *(v19 - 176) = v23;
  *(v19 - 168) = v17 + 1199 - v25;
  *(v19 - 164) = ((((v15 ^ 0xF6E83304) + 152554748) ^ ((v15 ^ 0x2FC7E965) - 801630565) ^ ((v15 ^ 0x1E2B4549) - 506152265)) + v17 + 407034233 - 882) ^ v25;
  (*(v20 + 8 * (v17 ^ 0xBC6)))(v19 - 192);
  v26 = v15 ^ 0xC7049F28;
  v27 = v23 + v26;
  v28 = 1556366573 * ((2 * (v22 & 0x2F0C0CF8) - v22 - 789318909) ^ 0xB417D0E9);
  *(v19 - 192) = v18 + 520;
  *(v19 - 176) = v27;
  *(v19 - 168) = v17 + 1199 - v28;
  *(v19 - 164) = ((((v15 ^ 0x2C0C35AA) - 738997674) ^ ((v15 ^ 0x1B3EB6EE) - 457094894) ^ ((v15 ^ 0xF0361C6C) + 264889236)) + 407033990) ^ v28;
  v29 = v17 + 1850;
  (*(STACK[0x2D8] + 8 * v29))(v19 - 192);
  v30 = v27 + v26;
  v31 = 1556366573 * ((557670152 - (v22 | 0x213D5F08) + (v22 | 0xDEC2A0F7)) ^ 0xBA26831D);
  *(v19 - 192) = STACK[0x2A0];
  *(v19 - 176) = v30;
  *(v19 - 168) = v24 - v31;
  *(v19 - 164) = ((((v15 ^ 0xAC3B77BA) + 1405388870) ^ ((v15 ^ 0x8BC25998) + 1950197352) ^ ((v15 ^ 0xE0FDB10A) + 520244982)) + 407033990) ^ v31;
  (*(STACK[0x2D8] + 8 * v29))(v19 - 192);
  v32 = v30 + v26;
  v33 = 1556366573 * ((v19 + 192624219 - 2 * ((v19 - 192) & 0xB7B371B)) ^ 0x6F9F14F1);
  *(v19 - 168) = v24 - v33;
  *(v19 - 164) = ((((v15 ^ 0x23DEE123) - 601809187) ^ ((v15 ^ 0x539E76F1) - 1402894065) ^ ((v15 ^ 0xB74408FA) + 1220278022)) + 407033990) ^ v33;
  *(v19 - 192) = STACK[0x2A8];
  *(v19 - 176) = v32;
  (*(STACK[0x2D8] + 8 * v29))(v19 - 192);
  v34 = 1556366573 * ((2 * (v22 & 0x517C0010) - v22 + 780402670) ^ 0x4A67DC04);
  *(v19 - 168) = v24 - v34;
  *(v19 - 164) = ((((v15 ^ 0x8844690C) + 2008782580) ^ ((v15 ^ 0x4486C73F) - 1149683519) ^ ((v15 ^ 0xBC6311B) - 197538075)) + 407033990) ^ v34;
  *(v19 - 176) = v32 + v26;
  *(v19 - 192) = STACK[0x2B0];
  (*(STACK[0x2D8] + 8 * v29))(v19 - 192);
  v35 = STACK[0x2D8];
  v36 = STACK[0x380];
  STACK[0x4F8] = (v16 - 1308994801 + v21 + 49 - 931);
  return (*(v35 + 8 * ((30 * (v16 - 1308994801 + v21 + 49 != 931)) ^ (v21 + 49))))(v36);
}

uint64_t sub_1C21D2D60@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xC69));

  return v3(v1);
}

uint64_t sub_1C21D2DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void))
{
  v27 = (((v25 ^ 0xC5FDA9D3) + 973231661) ^ ((v25 ^ 0x6BFE6486) - 1811833990) ^ ((v25 ^ 0x9079340E) + 1871105010)) - 1420538225 + (((LODWORD(STACK[0x2FC]) ^ 0xE9AC5312) + 374582510) ^ ((LODWORD(STACK[0x2FC]) ^ 0xCC0BBB73) + 871646349) ^ (((v26 + 1488967453) & 0xA740273E ^ 0xE422EEE0) + (LODWORD(STACK[0x2FC]) ^ 0x1BDD113A)));
  LODWORD(STACK[0x2FC]) = v27 ^ ((v27 ^ 0x94DB68EB) + 1165675726) ^ ((v27 ^ 0xC201DAD) - 578700916) ^ ((v27 ^ 0xC94A9140) + 418067815) ^ ((v27 ^ 0x7FEFBFDF) - 1370612742) ^ 0x1024A282;
  return sub_1C21CA4F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1C21D2F18(uint64_t result)
{
  **result = 0;
  *(result + 12) = 936714729;
  return result;
}

uint64_t sub_1C21D2F94(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = 4 * a6 - 0x15EFF7848;
  v12 = (((*(*(v6 + 8) + v11) ^ 0x13FB22A4) - 335225508) ^ ((a4 ^ a2) + 809138599 + (*(*(v6 + 8) + v11) ^ 0xCFC5821F)) ^ ((*(*(v6 + 8) + v11) ^ 0x330E8161) - 856588641)) + v9;
  v13 = (((*(*(v7 + 8) + v11) ^ 0xE11A818D) + 518356595) ^ ((*(*(v7 + 8) + v11) ^ 0x112B5A13) - 288053779) ^ ((*(*(v7 + 8) + v11) ^ 0x1F01FA44) - 520223300)) + v9;
  v14 = v12 < v10;
  v15 = v12 > v13;
  if (v14 != v13 < v10)
  {
    v15 = v14;
  }

  return (*(v8 + 8 * ((7 * v15) ^ a4)))();
}

uint64_t sub_1C21D30A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = v19 + 1380333833 * ((((2 * ((v21 - 136) ^ 0x165D220B)) | 0xD7D0F70E) - ((v21 - 136) ^ 0x165D220B) - 1810398087) ^ 0xC3E7F206) - 732;
  *(v21 - 136) = &a17;
  *(v21 - 128) = v20;
  v22 = (*(v18 + 8 * (v19 ^ 0xD5A)))(v21 - 136);
  return (*(v18 + 8 * (((((v19 - 993045527) & 0x3B30AE77) - 799) * (v17 == 1)) ^ v19)))(v22);
}

uint64_t sub_1C21D31C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, int a26, char a27, uint64_t a28, int a29, char a30, __int16 a31, char a32)
{
  v36 = 1556366573 * ((v35 + 1822784425 - 2 * ((v35 - 160) & 0x6CA57C49)) ^ 0x8415FA3);
  *(v35 - 136) = &a30;
  *(v35 - 128) = v32 - v36 + 951;
  *(v35 - 152) = a4;
  *(v35 - 144) = &a32;
  *(v35 - 160) = a7 - v36 + ((v32 + 185) ^ 0xF8E47082 ^ ((v32 - 620) | 0x403));
  *(v35 - 120) = &a27;
  *(v35 - 112) = &a24;
  v37 = (*(v33 + 8 * (v32 + 1804)))(v35 - 160);
  return (*(v33 + 8 * ((1746 * (*(v35 - 156) == v34)) ^ v32)))(v37);
}

uint64_t sub_1C21D32B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t (*a20)(uint64_t, uint64_t, uint64_t), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  LOBYTE(STACK[0x2A8]) = a29;
  v33 = 50899313 * ((2 * ((v32 - 168) & 0x20E2F8F0) - (v32 - 168) - 551745777) ^ 0xF5D62D75);
  *(v32 - 160) = v30;
  *(v32 - 168) = v33 + (v29 ^ 0x5B1) + 1823;
  *(v32 - 164) = v33 ^ 0x1398650F;
  v34 = (*(v31 + 8 * (v29 ^ 0xCDF)))(v32 - 168);
  return a20(v34, 611, 43);
}

uint64_t sub_1C21D3774@<X0>(uint64_t a1@<X8>)
{
  v6 = *(a1 + v1 + 72);
  v7 = ((v4 & 0x56166F73 ^ 0xBEEB7C8A) & (2 * v1)) + (v1 ^ 0x5F75BFFE) - 1601552382;
  *(v3 + v7) = (HIBYTE(v6) ^ 0x3E) - 2 * ((HIBYTE(v6) ^ 0x3E) & 0x6B ^ HIBYTE(v6) & 1) + 106;
  *(v3 + v7 + 1) = (BYTE2(v6) ^ 0x7A) - 2 * ((BYTE2(v6) ^ 0x7A) & 0xEE ^ BYTE2(v6) & 4) + 106;
  *(v3 + v7 + 2) = (BYTE1(v6) ^ 0xF9) - ((2 * (BYTE1(v6) ^ 0xF9)) & 0xD4) + 106;
  *(v3 + v7 + 3) = v6 ^ 0x31;
  return (*(v5 + 8 * ((1544 * (v1 + 4 < *(a1 + 92))) | v2)))();
}

uint64_t sub_1C21D3998()
{
  v6 = (v3 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (v1 + 2141)) ^ v1)))();
}

void sub_1C21D3A18(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1504884919 * (((a1 | 0xE4FD304B) - a1 + (a1 & 0x1B02CFB4)) ^ 0x1F3E8750);
  v3[1] = (1388665877 * (((v3 | 0x9ECE303D) - v3 + (v3 & 0x6131CFC0)) ^ 0x136352D1)) ^ (v1 - 542398023);
  v2 = *(&off_1F41B25C0 + (v1 - 1438)) - 8;
  (*&v2[8 * (v1 + 969)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21D3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W8>)
{
  v8 = v4 - 1;
  STACK[0x3C0] = v8;
  *(a1 + v8) = ((a3 + 1) ^ v7) * (a3 + 18);
  return (*(a2 + 8 * (((STACK[0x3C0] == ((v3 + 694) ^ v6)) * v5) ^ v3)))();
}

uint64_t sub_1C21D3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v7 ^ 0x479;
  v11 = (v7 ^ 0x479) - 821 + v8 - 1618249250;
  v12 = (v11 < ((v10 - 864) | 0x108u) - 1294718988) ^ ((a7 + 1691254348) < 0xB2D42B3D);
  v13 = v11 < a7 + 1691254348;
  if (v12)
  {
    v13 = (a7 + 1691254348) < 0xB2D42B3D;
  }

  return (*(v9 + 8 * ((4 * !v13) | (8 * !v13) | v10)))();
}

void sub_1C21D3C64(_DWORD *a1)
{
  if (*(*a1 + 4) - 1472192017 >= 0)
  {
    v2 = *(*a1 + 4) - 1472192017;
  }

  else
  {
    v2 = 1472192017 - *(*a1 + 4);
  }

  v1 = a1[4] ^ (1504884919 * (((a1 | 0xC0CBCE73) - a1 + (a1 & 0x3F34318C)) ^ 0x3B087968));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1C21D3D60@<X0>(uint64_t a1@<X8>)
{
  v8 = (**(v7 + 8) ^ (v3 + 621 * (v2 ^ 0x38E) - 1242)) - (**(v6 + 8) ^ v3);
  **(a1 + 8) = v8 + v3 - (v5 & (2 * v8));
  return (*(v4 + 8 * ((2822 * (v1 == 1)) ^ v2)))();
}

uint64_t sub_1C21D3DEC(uint64_t a1)
{
  v4 = *(v2 + 56);
  *(v2 + 56) = (v1 ^ 0x373) + v4;
  return (*(v3 + 8 * ((1673 * ((v4 - 163537140) < 0xFFFFFFFA)) ^ (v1 - 766))))(a1, 0, 0);
}

uint64_t sub_1C21D410C(uint64_t a1)
{
  v1 = (*a1 ^ (1556366573 * ((-2 - ((a1 | 0x3FB827E6) + (~a1 | 0xC047D819))) ^ 0xA4A3FBF3))) + 47;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1472193584;
  v3 = v2 - 1472193584 < 0;
  v5 = 1472193584 - v2;
  if (v3)
  {
    v4 = v5;
  }

  v6 = v4 > 190 * (v1 ^ 0x617) - 1520;
  return (*(*(&off_1F41B25C0 + (v1 ^ 0x624)) + ((v6 | (v6 << 8)) ^ v1) - 1))();
}

uint64_t sub_1C21D4250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v24 = a21 < 0x6D2F2A0C;
  if (v24 == v21 > 0x92D0D5F3)
  {
    v24 = v21 + 1831807500 < a21;
  }

  return (*(v23 + 8 * ((v24 * (v22 - 1356)) ^ v22)))(1374);
}

uint64_t sub_1C21D42B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17, int a18, int a19, int a20, uint64_t a21, char *a22, int *a23, int a24, int *a25, uint64_t *a26)
{
  a18 = 323530483;
  v29 = 1556366573 * (((&a19 | 0x514AA13D) + (~&a19 | 0xAEB55EC2)) ^ 0x35AE82D6);
  a19 = -119245171 - v29 + a16 + 279;
  a21 = a14;
  a22 = &a17;
  a24 = v26 - v29 + 1139;
  a23 = &a18;
  a25 = &a16;
  a26 = &a14;
  v30 = (*(v28 + 8 * (v26 + 1992)))(&a19);
  return (*(v28 + 8 * ((90 * (a20 == (v26 ^ 0xA7) - 955998703)) ^ v26)))(v30, v27);
}

_DWORD *sub_1C21D43D0@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *result = 956023837;
  return result;
}

uint64_t sub_1C21D4428(_DWORD *a1)
{
  v1 = 143681137 * (((a1 | 0x6606FB03) - (a1 & 0x6606FB03)) ^ 0x73C4C4B);
  v2 = a1[2] + v1;
  v3 = a1[3] ^ v1;
  v4 = *(*a1 + 4);
  v6 = v4 - 1472192017;
  v5 = v4 - 1472192017 < 0;
  v7 = 1472192017 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F41B25C0 + (v2 ^ 0x71D)) + ((((v3 - 493713583) < (4 * v7)) * ((v2 - 1758107464) & 0x68CA97B9 ^ 0x7E5)) ^ v2) - 1))();
}

uint64_t sub_1C21D455C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v28 = HIDWORD(v25) + v26 * (*(*(a17 + 8) + 4) ^ (v17 + (v18 ^ v21) - 171)) + (v27[1] ^ v17) + HIDWORD(v19) + v20 * (*(*(a13 + 8) + 4) ^ v17);
  *v27 = v28 + v17 - (a2 & (2 * v28));
  return (*(v24 + 8 * (((v23 == 2) * v22) ^ v18)))();
}

uint64_t sub_1C21D45E4@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = (v10 + v11 + 877 - 883);
  *(a6 + v13) = *(a7 + v13) ^ *(a8 + (v13 & 0xF)) ^ *((v13 & 0xF) + v8 + 5) ^ *((v13 & 0xF) + v9 + 1) ^ ((v13 & 0xF) * a3) ^ a5;
  return (*(v12 + 8 * (((v13 == (v11 ^ a4)) * (((v11 + 877 + a1) & a2) + 206)) ^ (v11 + 2167))))();
}

uint64_t sub_1C21D4660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = STACK[0x300];
  LODWORD(STACK[0x300]) += 64;
  v7 = (((a5 - 880) | 0x14) ^ 0x7F8F71C5) + v6;
  v8 = LODWORD(STACK[0x54C]) + 782712412;
  v9 = v7 < ((a5 - 631) ^ 0x7F8F7168u);
  v10 = v7 > v8;
  if (v9 != v8 < 0x7F8F7193)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * ((489 * v10) ^ (a5 - 631))))();
}

uint64_t sub_1C21D466C@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v7 = v3 - 1;
  STACK[0x4F8] = v7;
  *(a1 + v7) = (a2 ^ v5) * (a2 + 17);
  return (*(v6 + 8 * ((30 * (STACK[0x4F8] != ((v2 - 49) ^ v4))) ^ v2)))();
}

void sub_1C21D46B4()
{
  v4 = STACK[0x3A0];
  v5 = 1388665877 * ((((2 * v1) | 0xA024B6E) - v1 + 2063522377) ^ 0x8AC475B);
  *(v2 - 180) = v0 - 562358921 + v5 + 14;
  *(v2 - 176) = v5 - 325162679;
  *(v2 - 192) = v4;
  (*(v3 + 8 * (v0 ^ 0x9B2)))(v2 - 192);
  JUMPOUT(0x1C21D4744);
}

uint64_t sub_1C21D4760(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *a32 = 968439489;
  v43 = *v41;
  v44 = 1388665877 * ((((v42 - 144) | 0xF725E69999E5D64ELL) - (v42 - 144) + ((v42 - 144) & 0x8DA1966661A29B0)) ^ 0xC25F76D61448B4A2);
  *(v42 - 128) = 5119 - v44;
  *(v42 - 104) = v44 + v43;
  *(v42 - 144) = ((v40 + 688008897) ^ 1) - v44;
  *(v42 - 140) = (v40 + 688008897) ^ v44;
  *(v42 - 136) = v44 + v40 - 706524226;
  *(v42 - 112) = ((v40 + 688008897) ^ 0x76) + v44;
  *(v42 - 120) = v44;
  v45 = (*(a3 + 8 * (v40 ^ (a4 - 1890))))(v42 - 144);
  return (*(a40 + 8 * *(v42 - 116)))(v45);
}

void sub_1C21D49B0(uint64_t a1)
{
  v2 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39A28 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C2340930[byte_1C233D7D0[(65 * (dword_1EBF39A28 ^ 0x7B ^ qword_1EBF39C20))] ^ 0x7E]) - 27);
  v3 = off_1F41B2770 - 8;
  v4 = off_1F41B2A78 - 4;
  v5 = *(&off_1F41B25C0 + (*(off_1F41B2A78 + (*(off_1F41B2770 + (65 * ((qword_1EBF39C20 - *v2) ^ 0x7B)) - 8) ^ 0xB1u) - 4) ^ (65 * ((qword_1EBF39C20 - *v2) ^ 0x7B))) - 132);
  v6 = *v2 - &v10 + *v5;
  v7 = (410816321 * v6) ^ 0x265DD2AD758AD77BLL;
  v8 = 410816321 * (v6 ^ 0x265DD2AD758AD77BLL);
  *v2 = v7;
  *v5 = v8;
  LODWORD(v5) = ((65 * (*v2 ^ 0x7B ^ v8)) ^ v4[v3[(65 * (*v2 ^ 0x7B ^ v8))] ^ 0x19]);
  v9 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39A28) ^ 0x7B)) ^ byte_1C23446D0[byte_1C2340A30[(65 * ((qword_1EBF39C20 + dword_1EBF39A28) ^ 0x7B))] ^ 0x9A]) - 114) - 8;
  (*&v9[8 * (v5 + 2214)])(*(&off_1F41B25C0 + v5 - 41), sub_1C21D5590);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21D5040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v19 + 210068311 * (((&a15 | 0xAE38A35C) - &a15 + (&a15 & 0x51C75CA0)) ^ 0x3CEE9CF8) - 507;
  a15 = &a12;
  v20 = (*(v17 + 8 * (v19 + 982)))(&a15);
  return (*(v17 + 8 * (((a16 == v18) * (((v19 - 1158) | 0x484) ^ 0x8FC)) ^ v19)))(v20);
}

uint64_t sub_1C21D50E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v71 = (*(v70 + 8 * (v64 + 1943)))(*v68, a2, a64 ^ 0x7654D7A8u, ((63 * (v64 ^ 0x229)) ^ 0xB8DFF330) + v68[13], &STACK[0x1860], v67, v66, &STACK[0x1850]);
  v73 = STACK[0x2D0];
  if (v71 == 268435459)
  {
    return (*(STACK[0x2D8] + 8 * ((100 * (LODWORD(STACK[0x21C]) < ((a63 - 251) ^ ((v73 - 881) | 0x158u)))) ^ (v73 + 1095))))(v71, v72);
  }

  v74 = STACK[0x2D8];
  if (v71)
  {
    LODWORD(STACK[0x220]) = v71;
    v75 = 50899313 * ((2 * (v65 & 0xC3BA588) - v65 - 205235593) ^ 0xD90F700D);
    *(v69 - 192) = &STACK[0x2E8];
    *(v69 - 184) = (v73 - 706) ^ v75;
    *(v69 - 180) = (v71 - 955998424 - (((v73 - 537) ^ 0x8E093F09) & (2 * v71))) ^ v75;
    (*(v74 + 8 * (v73 ^ 0xAC9)))(v69 - 192);
    JUMPOUT(0x1C21C7784);
  }

  v77 = (v73 - 623) | 0x230;
  v78 = v73 + 919;
  (*(v74 + 8 * (v73 ^ 0xA15)))(*STACK[0x238], v67, v66);
  v79 = v68[13];
  v80 = STACK[0x388];
  v81 = (v79 ^ 0x34DFFF08) & (2 * (v79 & 0xB8DFF042)) ^ v79 & 0xB8DFF042;
  v82 = (v77 ^ 0x9A3F9DAF ^ (2 * (v79 ^ 0x75C03F0C))) & (v79 ^ 0x75C03F0C) ^ (2 * (v79 ^ 0x75C03F0C)) & 0xCD1FCF4E;
  v83 = v82 ^ 0x45004142;
  v84 = (v82 ^ 0x801F8248) & (4 * v81) ^ v81;
  v85 = ((4 * v83) ^ 0x347F3D38) & v83 ^ (4 * v83) & 0xCD1FCF4C;
  v86 = (v85 ^ 0x41F0D00) & (16 * v84) ^ v84;
  v87 = ((16 * (v85 ^ 0xC900C246)) ^ 0xD1FCF4E0) & (v85 ^ 0xC900C246) ^ (16 * (v85 ^ 0xC900C246)) & 0xCD1FCF40;
  v88 = v86 ^ 0xCD1FCF4E ^ (v87 ^ 0xC11CC400) & (v86 << 8);
  v89 = v79 ^ (2 * ((v88 << 16) & 0x4D1F0000 ^ v88 ^ ((v88 << 16) ^ 0x4F4E0000) & (((v87 ^ 0xC030B0E) << 8) & 0x4D1F0000 ^ 0x40100000 ^ (((v87 ^ 0xC030B0E) << 8) ^ 0x1FCF0000) & (v87 ^ 0xC030B0E)))) ^ 0x5757CE15;
  v90 = 1380333833 * ((v69 - 1659583950 - 2 * ((v69 - 192) & 0x9D14C2F2)) ^ 0x23466978);
  *(v69 - 152) = (LODWORD(STACK[0x2FC]) ^ 0x3FFFDB7A) - v90 + ((2 * LODWORD(STACK[0x2FC])) & 0x7FFFB6F4) - 218169362;
  v91 = STACK[0x2D0] - v90 - 844;
  *(v69 - 184) = v80;
  *(v69 - 192) = v89 + v90;
  *(v69 - 188) = v91;
  *(v69 - 168) = STACK[0x258];
  *(v69 - 160) = &STACK[0x1850];
  *(v69 - 172) = v90 ^ a64 & 0x7FFFFFFF ^ 0x19FF7763;
  v92 = (*(STACK[0x2D8] + 8 * (STACK[0x2D0] + 1625)))(v69 - 192);
  v93 = STACK[0x2D8];
  v94 = *(v69 - 176);
  LODWORD(STACK[0x2E8]) = v94;
  return (*(v93 + 8 * ((4064 * (v94 == -955998424)) ^ v78)))(v92);
}

uint64_t sub_1C21D516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, int a33)
{
  v35 = *(v34 - 184);
  v36 = (v35 ^ 0x7AB7ED9C) + a33 - ((a31 << (((v35 - 102) & 0xAF) - 12)) & 0x64833734) != -1304323174;
  return (*(v33 + 8 * (((4 * v36) | (8 * v36)) ^ v35)))();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21D5288()
{
  v3 = v1 ^ 0xE26;
  v4 = (((v1 ^ 0xE26) - 2310) & v0) - ((2 * (((v1 ^ 0xE26) - 2310) & v0)) & 0x8D264D48) + (((v1 ^ 0x291) + 319) ^ 0xFFFFF916) + 1184048829 != 1184048804;
  return (*(v2 + 8 * (((4 * v4) | (8 * v4)) ^ v3)))();
}

uint64_t sub_1C21D52FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v6 + 4 * (v4 - 1));
  *(v6 + 4 * v4) = ((1566083941 * (v8 ^ (v8 >> 30))) ^ *(v6 + 4 * v4)) - v4;
  v9 = 1380333833 * ((v7 - 0x2E6C503A603E461BLL - 2 * ((v7 - 192) & 0xD193AFC59FC1BAA5)) ^ 0xDA76DEE92193112FLL);
  *(v7 - 192) = 623 - v9;
  *(v7 - 160) = v4 + 1 - v9;
  *(v7 - 176) = v9 + v5 - 2059420634 + 66;
  *(v7 - 172) = ((v5 - 2059420634) ^ 0x7B) + v9;
  *(v7 - 168) = (v5 + 1212454686) ^ v9;
  *(v7 - 184) = 1 - v9;
  *(v7 - 180) = (v5 - 2059420634) ^ v9;
  v10 = (*(a4 + 8 * (v5 + 1510)))(v7 - 192);
  return (*(STACK[0x2D8] + 8 * *(v7 - 152)))(v10);
}

uint64_t sub_1C21D5590()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39C28) ^ 0x7B)) ^ byte_1C2349710[byte_1C23447D0[(65 * ((qword_1EBF39C20 + dword_1EBF39C28) ^ 0x7B))] ^ 0x32]) - 151);
  v1 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + *v0) ^ 0x7B)) ^ byte_1C2340930[byte_1C233D7D0[(65 * ((qword_1EBF39C20 + *v0) ^ 0x7B))] ^ 0x94]) - 144);
  v2 = *v0 ^ &v6 ^ *v1;
  v3 = (410816321 * v2) ^ 0x265DD2AD758AD77BLL;
  v4 = 410816321 * (v2 ^ 0x265DD2AD758AD77BLL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v4) = 65 * ((v4 - *v0) ^ 0x7B);
  v8 = *(&off_1F41B25C0 + (*(off_1F41B27A8 + (*(off_1F41B2710 + v4 - 12) ^ 0x42u) - 12) ^ v4) - 36);
  v7 = 1564307779 * ((((2 * &v7) | 0x64CD100E) - &v7 + 1301903353) ^ 0x256B4414) + 997;
  LOBYTE(v0) = 65 * ((*v1 - *v0) ^ 0x7B);
  return (*(*(&off_1F41B25C0 + ((65 * (dword_1EBF39C28 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C233D8D0[byte_1C2349610[(65 * (dword_1EBF39C28 ^ 0x7B ^ qword_1EBF39C20))] ^ 0x71]) - 126) + (*(off_1F41B2628 + (*(off_1F41B2940 + v0) ^ 0x68u) - 4) ^ v0) + 2328))(&v7);
}

void sub_1C21D57D4(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0x5A3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21D5B68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int8x16_t a5, int8x8_t a6)
{
  v14 = a2 - 8;
  v15.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v15.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v15.val[1].i64[0] = (v10 + v14 + 13) & 0xF;
  v15.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v15.val[2].i64[0] = (v10 + v14 + a4 - 66) & 0xF;
  v15.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v15.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v15.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(v11 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(a3 - 8 + v10)), veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(v7 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v13 + 8 * (v12 ^ (4 * (a1 == v14)))))();
}

uint64_t sub_1C21D5B78@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int8x16_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37)
{
  *(&STACK[0x570] + v37) = veorq_s8(*a14, a37);
  STACK[0x518] += 32;
  STACK[0x528] = a1;
  STACK[0x520] = a1;
  return (*(v38 + 8 * ((((a6 - 938871529) & 0x37F60B7B ^ 0x5F2) * ((&STACK[0x570] + v37) == a1)) ^ a6)))(a1, a2, a3, 95, a4, a5);
}

uint64_t sub_1C21D5CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W8>)
{
  v8 = (v4 ^ (32 * a3) ^ v5) - v3;
  v9 = *(a2 + v8 - 15);
  v10 = *(a2 + v8 - 31);
  v11 = a1 + v8;
  v12.i64[0] = 0xD4D4D4D4D4D4D4D4;
  v12.i64[1] = 0xD4D4D4D4D4D4D4D4;
  v13.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v13.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  *(v11 - 15) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v12)), v13);
  *(v11 - 31) = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), v12)), v13);
  return (*(v7 + 8 * (((v3 == 96) * v6) ^ a3)))();
}

uint64_t sub_1C21D5D24(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  v32.i64[0] = 0xD4D4D4D4D4D4D4D4;
  v32.i64[1] = 0xD4D4D4D4D4D4D4D4;
  v33.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v33.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  v34 = vaddq_s8(vsubq_s8(*(a3 + 17), vandq_s8(vaddq_s8(*(a3 + 17), *(a3 + 17)), v32)), v33);
  *(&a29 + v30) = vaddq_s8(vsubq_s8(*(a3 + 1), vandq_s8(vaddq_s8(*(a3 + 1), *(a3 + 1)), v32)), v33);
  *(&a29 + v30 + 16) = v34;
  return (*(v31 + 8 * ((((a4 & 0x60) == 32) * ((v29 - a6 + 94) ^ 0x613)) ^ (a2 + v29 + 660))))();
}

uint64_t sub_1C21D5F98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  v33 = *(a19 + 24);
  memset(a2, 106, 16);
  v34 = 1037613739 * ((((v32 - 168) | 0x43A779C) - ((v32 - 168) & 0x43A779C)) ^ 0xD5385AE3);
  *(v32 - 152) = v33;
  *(v32 - 144) = &a29;
  *(v32 - 160) = &STACK[0x294];
  *(v32 - 168) = v34 + 1387291138;
  *(v32 - 136) = (v29 + 1564) ^ v34;
  *(v32 - 128) = &STACK[0x284];
  v35 = (*(v31 + 8 * (v29 + 2439)))(v32 - 168);
  return (*(v31 + 8 * (((*(v32 - 132) == v30 + ((v29 - 1397456565) & 0x534B7EA7) - 38) * (v29 ^ 0x911)) ^ v29)))(v35);
}

uint64_t sub_1C21D6088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a15 = 210068311 * (&a13 ^ 0x92D63FA4) + 923;
  a13 = &a11;
  v17 = (*(v16 + 19296))(&a13);
  return (*(v16 + 8 * ((32 * (a14 != v15)) ^ 0x34Bu)))(v17);
}

uint64_t sub_1C21D6128()
{
  v4 = STACK[0x4A0];
  v5 = 1556366573 * ((((v2 - 192) | 0x38635819) - ((v2 - 192) & 0x38635819)) ^ 0x5C877BF3);
  *(v2 - 160) = v1 - v5 + 1523;
  *(v2 - 192) = v0 - v5 - 119244892;
  *(v2 - 168) = &STACK[0x2F8];
  *(v2 - 144) = &STACK[0x470];
  *(v2 - 152) = &STACK[0x454];
  *(v2 - 184) = v4;
  *(v2 - 176) = &STACK[0x494];
  v6 = (*(v3 + 8 * (v1 + 2376)))(v2 - 192);
  return (*(STACK[0x2D8] + 8 * ((137 * (((v1 ^ (*(v2 - 188) == (v1 ^ 0xC7049F18))) & 1) == 0)) ^ v1)))(v6);
}

uint64_t sub_1C21D6260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = STACK[0x2D0] - 275;
  v79 = STACK[0x2D0] - 882;
  v80 = ((v79 + (v78 ^ 0x11A0) - v73) & ~(v73 ^ (v79 + (v78 ^ 0x11A0))) | a72 & v73) >> 31;
  v81 = STACK[0x248];
  v82 = v78 ^ 0x7FD;
  *v75 = v73 + 1;
  v83 = (v78 ^ 0x9D2C5480) & ((v72 ^ (v72 >> 11)) << 7) ^ v72 ^ (v72 >> 11);
  v84 = (v81 + ((v82 - 1434) ^ 0xFFFFFFF7) + v74);
  v85 = 1982188483 * ((*(*STACK[0x2B0] + (*STACK[0x2A8] & 0xFFFFFFFF95569230)) ^ v84) & 0x7FFFFFFF);
  v86 = 1982188483 * (v85 ^ HIWORD(v85));
  v87 = v86 >> (v82 ^ 0xBAu);
  LOBYTE(v80) = *(*(v76 + 8 * (v82 - 1288)) + v87 - 12) ^ v83 ^ v79 ^ ((v83 ^ v79 ^ ((v83 - v80) << 15) & 0xEFC60000) >> 18) ^ *(*(v76 + 8 * (v82 ^ 0x5D5)) + v87 - 7) ^ *(v87 + *(v76 + 8 * (v82 - 1387)) + 1) ^ v86;
  *v84 = (-101 * v87) ^ v80;
  return (*(v77 + 8 * ((3358 * (v74 == (v80 != (-101 * v87)))) ^ v82)))();
}

uint64_t sub_1C21D653C(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12)
{
  v19 = (v15 - 16) & 0xF;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v21.i64[1] = a10;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*a2, *(v14 + v19 - 15)), *(v19 + v13 - 10)), *(v12 + (a1 ^ a4) + v19 - 15)));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), vmulq_s8(v21, a11)), a12));
  *a2 = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * ((120 * (a3 != 16)) ^ v16)))();
}

uint64_t sub_1C21D6548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char *a28, char *a29, uint64_t a30, char a31)
{
  v39 = (v32 - 441) | 0x300;
  v40 = ((((v38 - 144) | 0xD7BA67BF) + (~(v38 - 144) | 0x28459840)) ^ 0xFD714DC4) * v34;
  *(v38 - 120) = v33 - v40 - 1983994149 + v39;
  *(v38 - 136) = v31;
  *(v38 - 128) = &a26;
  *(v38 - 144) = (v32 + 1695) ^ v40;
  (*(v36 + 8 * (v32 + 1923)))(v38 - 144);
  a28 = &a31;
  a29 = &a24;
  *(v38 - 144) = v39 + 437 - 1504884919 * (((((v38 - 144) | 0x1447EC9C) ^ 0xFFFFFFFE) - (~(v38 - 144) | 0xEBB81363)) ^ 0x107BA478);
  *(v38 - 136) = &a28;
  *(v38 - 128) = v35;
  (*(v36 + 8 * (v39 + 1547)))(v38 - 144);
  *(v38 - 136) = &a28;
  *(v38 - 128) = v35;
  *(v38 - 144) = (v39 + 1130) ^ (1785193651 * ((v38 - 144) ^ 0x13DCEC20));
  *(v38 - 120) = &a26;
  *(v38 - 112) = &a22;
  (*(v36 + 8 * (v39 ^ 0xA4A)))(v38 - 144);
  v41 = a29;
  *(v38 - 112) = (v39 + 1408) ^ (1785193651 * ((((2 * (v38 - 144)) | 0xD499A436) - (v38 - 144) + 364064229) ^ 0xF9903E3B));
  *(v38 - 104) = &a28;
  *(v38 - 144) = v41;
  *(v38 - 136) = v35;
  *(v38 - 128) = &a22;
  *(v38 - 120) = &a22;
  (*(v36 + 8 * (v39 + 1540)))(v38 - 144);
  *(v38 - 144) = v39 + 1461 + 896639297 * ((v38 - 144) ^ 0x14AB9678);
  *(v38 - 136) = &a22;
  *(v38 - 128) = &a28;
  *(v38 - 112) = a12;
  *(v38 - 104) = v35;
  *(v38 - 120) = &a22;
  (*(v36 + 8 * (v39 + 1616)))(v38 - 144);
  *(v38 - 144) = v39 + 437 - 1504884919 * ((2 * ((v38 - 144) & 0x3F44808) - (v38 - 144) + 2081142771) ^ 0x87C800E8);
  *(v38 - 136) = &a28;
  *(v38 - 128) = v37;
  (*(v36 + 8 * (v39 ^ 0xA0B)))(v38 - 144);
  *(v38 - 144) = (v39 + 1130) ^ (1785193651 * ((((v38 - 144) | 0x34134D33) - ((v38 - 144) & 0x34134D33)) ^ 0x27CFA113));
  *(v38 - 136) = &a28;
  *(v38 - 128) = v37;
  *(v38 - 120) = &a26;
  *(v38 - 112) = &a20;
  (*(v36 + 8 * (v39 ^ 0xA4A)))(v38 - 144);
  *(v38 - 144) = a29;
  *(v38 - 136) = v37;
  *(v38 - 104) = &a28;
  *(v38 - 112) = (v39 + 1408) ^ (1785193651 * ((((v38 - 144) | 0x9947ACF5) + (~(v38 - 144) | 0x66B8530A)) ^ 0x8A9B40D4));
  *(v38 - 128) = &a20;
  *(v38 - 120) = &a20;
  (*(v36 + 8 * (v39 + 1540)))(v38 - 144);
  *(v38 - 144) = v39 + 1461 + 896639297 * (((((v38 - 144) | 0xE0AABC60) ^ 0xFFFFFFFE) - (~(v38 - 144) | 0x1F55439F)) ^ 0xBFED5E7);
  *(v38 - 136) = &a20;
  *(v38 - 128) = &a28;
  *(v38 - 112) = a13;
  *(v38 - 104) = v37;
  *(v38 - 120) = &a20;
  (*(v36 + 8 * (v39 + 1616)))(v38 - 144);
  *(v38 - 128) = v39 + 1380333833 * ((((v38 - 144) | 0x4B50D8F2) - ((v38 - 144) & 0x4B50D8F2)) ^ 0xF5027378) - 598;
  *(v38 - 144) = &a22;
  *(v38 - 136) = &a20;
  (*(v36 + 8 * (v39 ^ 0xADC)))(v38 - 144);
  *(v38 - 128) = v39 - 1504884919 * ((((2 * (v38 - 144)) | 0xF48CBAAC) - (v38 - 144) + 96051882) ^ 0x185EA4D) + 703;
  *(v38 - 136) = &a20;
  v42 = (*(v36 + 8 * (v39 ^ 0xA06)))(v38 - 144);
  return (*(v36 + 8 * (((*(v38 - 144) >= (v39 + 1045754027)) * (v39 - 886)) ^ v39)))(v42);
}

uint64_t sub_1C21D65C4(uint64_t a1)
{
  v5 = v4 - 401;
  v6 = *(v3 + 352);
  v7 = (*(a1 + 8) ^ v1) - 528941463;
  if (v7 < 0x49E7E77D != v6 > ((v5 - 179049878) & 0xAAC15FDu) - 1239936219)
  {
    v8 = v6 > ((v5 - 179049878) & 0xAAC15FDu) - 1239936219;
  }

  else
  {
    v8 = v6 + 1239934845 > v7;
  }

  return (*(v2 + 8 * ((364 * v8) ^ v5)))();
}

uint64_t sub_1C21D679C(unint64_t a1)
{
  STACK[0x430] = v1 + (v2 ^ 0x22Cu) - 631;
  STACK[0x4A8] = a1;
  return (*(v4 + 8 * (v2 ^ 0x27F ^ (83 * (v3 > a1)))))();
}

uint64_t sub_1C21D6B64(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x2D0];
  STACK[0x2A0] = (*(a2 + 8 * (STACK[0x2D0] + 1572)))(STACK[0x200] + STACK[0x208], 0x100004077774924);
  *v2 = (*(STACK[0x2D8] + 8 * (v3 + 1570)))();
  return sub_1C21D6BD0();
}

void sub_1C21D6C0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x288] = STACK[0x278];
  STACK[0x3E0] = *(v4 + 8 * (a4 ^ 0x371));
  JUMPOUT(0x1C21C137CLL);
}

uint64_t sub_1C21D6CB4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = ((((((a3 - 471) | 0x490) - 1414005627) ^ v4 & 0x130F) << ((a3 + 64) ^ 0x22)) ^ 0x54400242) & (v4 ^ 0x1A42522E) ^ (((a3 - 471) | 0x490) - 1414005627) ^ v4 & 0x130F;
  v6 = (2 * (v4 ^ 0x2E)) & 0x20 ^ 0x21 ^ ((2 * (v4 ^ 0x2E)) ^ 0x42) & (v4 ^ 0x2E);
  LOBYTE(v5) = (4 * v5) & 0x20 ^ v5 ^ ((4 * v5) ^ 0x84) & v6;
  v7 = (v4 ^ (2 * (v5 ^ (16 * v5) & 0x20 ^ ((16 * v5) ^ 0x10) & ((4 * v6) & 0x20 ^ ((4 * v6) ^ 0x84) & v6 ^ 0xE1)))) & 0x7F;
  v9 = v7 != 77 && (v7 ^ 0x4Du) < 5;
  return (*(v3 + 8 * ((1487 * v9) ^ a3)))();
}

uint64_t sub_1C21D6DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

  return (*(a3 + 8 * ((v14 * v8) ^ v5)))();
}

uint64_t sub_1C21D6DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v23 - 128) = a11 * v20 + 835292318;
  *(v23 - 124) = v18 - a11 * v20 + 884;
  *(v23 - 136) = v21;
  (*(v19 + 8 * (v18 ^ 0xA38)))(v23 - 136);
  *(v23 - 120) = v18 + 210068311 * ((~(v17 | 0x93CC6195) + (v17 & 0x93CC6195)) ^ 0xFEE5A1CE) + 747;
  *(v23 - 136) = a17;
  *(v23 - 128) = v22;
  (*(v19 + 8 * (v18 ^ 0xAD1)))(v23 - 136);
  *(v23 - 128) = a17;
  *(v23 - 120) = v21;
  *(v23 - 136) = (v18 + 152) ^ (((~(v17 | 0x9FAFA334) + (v17 & 0x9FAFA334)) ^ 0x4A9B76B1) * v20);
  v24 = (*(v19 + 8 * (v18 ^ 0xA30)))(v23 - 136);
  return (*(v19 + 8 * (((*(v23 - 132) > 0xEAB5317u) * ((v18 - 556) ^ 0x713)) ^ v18)))(v24);
}

uint64_t sub_1C21D6F54(int a1)
{
  *(v6 + ~v3 + v1) = vadd_s8(vadd_s8(*(v5 + ~v3 + v1), v9), vmvn_s8(vand_s8(vadd_s8(*(v5 + ~v3 + v1), *(v5 + ~v3 + v1)), v8)));
  v10 = v3 + (129 * a1) - 637 != v2;
  return (*(v7 + 8 * (v10 | (8 * v10) | v4)))();
}

uint64_t sub_1C21D6FC0@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W6>, char a5@<W7>, uint64_t a6@<X8>)
{
  v10 = *(a6 + v6 + 72);
  v11 = (a4 & (2 * v6)) + (v6 ^ a3) + 839920257;
  *(v7 + v11) = v10 ^ 0x31;
  *(v7 + v11 + 1) = ((v10 >> ((a2 ^ a1) - 106)) ^ 0xF9) + (a5 ^ (2 * (((v10 >> ((a2 ^ a1) - 106)) ^ 0xF9) & 0xEE ^ (v10 >> ((a2 ^ a1) - 106)) & 4))) + 107;
  *(v7 + v11 + 2) = (BYTE2(v10) ^ 0x7A) - 2 * ((BYTE2(v10) ^ 0x7A) & 0x6B ^ BYTE2(v10) & 1) + 106;
  *(v7 + v11 + 3) = (HIBYTE(v10) ^ 0x3E) + (v8 | ~(2 * (HIBYTE(v10) ^ 0x3E))) + 107;
  return (*(v9 + 8 * ((56 * (v6 + 4 >= *(a6 + 92))) ^ a2)))();
}

uint64_t sub_1C21D71CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  *(v16 - 120) = v13 + 210068311 * ((((v16 - 136) ^ 0x4654551E) + 2017898578 - 2 * (((v16 - 136) ^ 0x4654551E) & 0x7846B052)) ^ 0xACC4DAE8) + 344;
  *(v16 - 136) = v14;
  *(v16 - 128) = v15;
  v17 = (*(v12 + 8 * (v13 + 1086)))(v16 - 136);
  return (*(v12 + 8 * (((a12 < 1) * (((v13 - 1069) | 0x413) ^ 0x70E)) ^ (v13 - 990))))(v17);
}

uint64_t sub_1C21D7314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = ((((2 * ((v43 - 144) ^ 0x106ABAF86204BEDCLL)) | 0x452F1C6AAF93FC94) - ((v43 - 144) ^ 0x106ABAF86204BEDCLL) - 0x22978E3557C9FE4ALL) ^ 0x286BFEA2166D6EELL) * v41;
  *(v43 - 112) = *v42 - v44;
  *(v43 - 128) = v40 + v44 - 544176767;
  *(v43 - 124) = v44;
  *(v43 - 136) = v44;
  *(v43 - 104) = (v40 + 1501728460) ^ v44;
  *(v43 - 120) = v40 + v44 - 544176766;
  *(v43 - 116) = (v40 - 544176794) ^ v44;
  v45 = (*(a3 + 8 * (a5 + v40 + 1772)))(v43 - 144);
  return (*(a40 + 8 * *(v43 - 144)))(v45);
}

uint64_t sub_1C21D7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34, unsigned int a35, int a36, int a37, char a38, __int16 a39, char a40)
{
  v40.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v40.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  v41 = vdupq_n_s32(0x47049F2Fu);
  v42 = vdupq_n_s32(0xC7049F28);
  v43 = (&a40 + a16);
  v45 = a34;
  v44 = a35;
  if (a38 != 2)
  {
    if (a38 == 1)
    {
      v87 = vld4q_s8(&a23);
      v46 = veorq_s8(v87.val[0], v40);
      v47 = vmovl_high_u8(v46);
      v48 = vmovl_high_u16(v47);
      v49 = vmovl_u16(*v47.i8);
      v50 = vmovl_u8(*v46.i8);
      v51 = vmovl_high_u16(v50);
      v52 = vmovl_u16(*v50.i8);
      v53 = veorq_s8(v87.val[1], v40);
      v54 = vmovl_u8(*v53.i8);
      v55 = vmovl_high_u8(v53);
      v56 = veorq_s8(v87.val[2], v40);
      _Q25 = vmovl_u8(*v56.i8);
      _Q24 = vmovl_high_u8(v56);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v87.val[0] = veorq_s8(v87.val[3], v40);
      v87.val[1] = vmovl_u8(*v87.val[0].i8);
      v87.val[2] = vmovl_u16(*v87.val[1].i8);
      v87.val[0] = vmovl_high_u8(v87.val[0]);
      v87.val[3] = vmovl_u16(*v87.val[0].i8);
      v87.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v87.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v55, 8uLL), v48));
      v87.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v87.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v55.i8, 8uLL), v49));
      v87.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v87.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v54, 8uLL), v51));
      v65 = vdupq_n_s32(0x47049F2Bu);
      v87.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v87.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v54.i8, 8uLL), v52));
      v66 = veorq_s8(vandq_s8(v87.val[0], v65), (*&v48 & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
      v67 = veorq_s8(vandq_s8(v87.val[3], v65), (*&v49 & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
      v68 = veorq_s8(vandq_s8(v87.val[1], v65), (*&v51 & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
      v69 = veorq_s8(vandq_s8(v87.val[2], v65), (*&v52 & __PAIR128__(0xFFFFFF03FFFFFF03, 0xFFFFFF03FFFFFF03)));
      *v43 = vaddq_s32(vsubq_s32(v87.val[2], vaddq_s32(v69, v69)), v42);
      v43[1] = vaddq_s32(vsubq_s32(v87.val[1], vaddq_s32(v68, v68)), v42);
      v43[2] = vaddq_s32(vsubq_s32(v87.val[3], vaddq_s32(v67, v67)), v42);
      v43[3] = vaddq_s32(vsubq_s32(v87.val[0], vaddq_s32(v66, v66)), v42);
      JUMPOUT(0x1C21EBDA4);
    }

    JUMPOUT(0x1C21EC5ACLL);
  }

  v86 = vld4q_s8(&a23);
  v70 = veorq_s8(v86.val[0], v40);
  v71 = vmovl_high_u8(v70);
  v72 = vmovl_u8(*v70.i8);
  v73 = veorq_s8(v86.val[1], v40);
  _Q21 = vmovl_high_u8(v73);
  _Q20 = vmovl_u8(*v73.i8);
  v76 = vshll_n_s16(*_Q20.i8, 0x10uLL);
  __asm { SHLL2           V20.4S, V20.8H, #0x10 }

  v77 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v78 = veorq_s8(v86.val[2], v40);
  v79 = vmovl_u8(*v78.i8);
  v80 = vmovl_high_u8(v78);
  v86.val[0] = veorq_s8(v86.val[3], v40);
  v86.val[1] = vmovl_u8(*v86.val[0].i8);
  v86.val[2] = vmovl_u16(*v86.val[1].i8);
  v86.val[1] = vmovl_high_u16(v86.val[1]);
  v86.val[0] = vmovl_high_u8(v86.val[0]);
  v86.val[3] = vmovl_u16(*v86.val[0].i8);
  v86.val[0] = vmovl_high_u16(v86.val[0]);
  v81 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v80, 8uLL)), vshlq_n_s32(vmovl_high_u16(v71), 0x18uLL)), v86.val[0]);
  v82 = vorrq_s8(vorrq_s8(vorrq_s8(v77, vshll_n_u16(*v80.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v71.i8), 0x18uLL)), v86.val[3]);
  v83 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v79, 8uLL)), vshlq_n_s32(vmovl_high_u16(v72), 0x18uLL)), v86.val[1]);
  v84 = vorrq_s8(vorrq_s8(vorrq_s8(v76, vshll_n_u16(*v79.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v72.i8), 0x18uLL)), v86.val[2]);
  v86.val[0] = veorq_s8(vandq_s8(v81, v41), (*v86.val & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
  v86.val[3] = veorq_s8(vandq_s8(v82, v41), (*&v86.val[3] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
  v86.val[1] = veorq_s8(vandq_s8(v83, v41), (*&v86.val[1] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
  v86.val[2] = veorq_s8(vandq_s8(v84, v41), (*&v86.val[2] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
  *v43 = vaddq_s32(vsubq_s32(v84, vaddq_s32(v86.val[2], v86.val[2])), v42);
  v43[1] = vaddq_s32(vsubq_s32(v83, vaddq_s32(v86.val[1], v86.val[1])), v42);
  v43[2] = vaddq_s32(vsubq_s32(v82, vaddq_s32(v86.val[3], v86.val[3])), v42);
  v43[3] = vaddq_s32(vsubq_s32(v81, vaddq_s32(v86.val[0], v86.val[0])), v42);
  return sub_1C21EC32C(&a23, 104, v44, v45, 4104640541, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1C21D7580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 4 * (v7 + v5 - v6);
  v12 = (STACK[0x2A0] + v11);
  v13 = *v12;
  LODWORD(v12) = ((*(*STACK[0x2B0] + (*STACK[0x2A8] & 0xFFFFFFFFF8ADE9A0)) ^ v12) & 0x7FFFFFFF) * ((v4 + 285) ^ 0x7625CF4C);
  LODWORD(v12) = v12 ^ (v12 >> 16);
  v14 = 1982188483 * v12;
  *(v8 + v11) ^= v13 ^ (v4 - 879) ^ (v10 - (v4 - 879) >= ~(v4 - 879)) ^ *(*(&off_1F41B25C0 + v4 - 696) + HIBYTE(v14) - 2) ^ *(*(&off_1F41B25C0 + SLODWORD(STACK[0x294])) + HIBYTE(v14) - 2) ^ *(*(&off_1F41B25C0 + v4 - 784) + HIBYTE(v14) + 4) ^ (-876412928 * v12) ^ v14 ^ (-471850983 * HIBYTE(v14)) ^ 2;
  return (*(a4 + 8 * (((v9 - 1 == ((v4 + 285) ^ 0x7FD) - 882) * (3 * ((v4 + 285) ^ 0x5A9) - 834)) ^ (v4 + 285))))();
}

void sub_1C21D79A8(int a1@<W8>)
{
  v7 = (a1 - 1073743101) & v1;
  v8 = *v3;
  v9 = *(v3 + 4) + v2;
  *(*v3 + v9) = (HIBYTE(v7) ^ 0xF9) - ((2 * (HIBYTE(v7) ^ 0xF9)) & 0xD4) + 106;
  *(v8 + v9 + 1) = (BYTE2(v7) ^ 0x40) - 2 * ((BYTE2(v7) ^ 0x40) & 0xEE ^ BYTE2(v7) & 4) + 106;
  *(v8 + v9 + 2) = (BYTE1(v7) ^ 0x42) - ((2 * (BYTE1(v7) ^ 0x42)) & 0xD4) + 106;
  *(v8 + v9 + 3) = v7 ^ 0x5C;
  v10 = *v3;
  LODWORD(v8) = (v5 ^ 0x8B5A454A) & (2 * (v5 & v6)) ^ v5 & v6;
  v11 = ((2 * (v5 ^ 0xAE7E074E)) ^ 0xFBCACC58) & (v5 ^ 0xAE7E074E) ^ (2 * (v5 ^ 0xAE7E074E)) & 0x7DE5662C;
  v12 = v11 ^ 0x4252224;
  v13 = (v11 ^ 0x58C0242C) & (4 * v8) ^ v8;
  LODWORD(v8) = ((4 * v12) ^ 0xF79598B0) & v12 ^ (4 * v12) & 0x7DE5662C;
  v14 = (v8 ^ 0x75850020) & (16 * v13) ^ v13;
  LODWORD(v8) = ((16 * (v8 ^ 0x860660C)) ^ 0xDE5662C0) & (v8 ^ 0x860660C) ^ (16 * (v8 ^ 0x860660C)) & 0x7DE56620;
  v15 = v14 ^ 0x7DE5662C ^ (v8 ^ 0x5C446200) & (v14 << 8);
  v16 = v5 ^ (2 * ((v15 << 16) & 0x7DE50000 ^ v15 ^ ((v15 << 16) ^ 0x662C0000) & (((v8 ^ 0x21A1042C) << 8) & 0x7DE50000 ^ 0x18810000 ^ (((v8 ^ 0x21A1042C) << 8) ^ 0x65660000) & (v8 ^ 0x21A1042C))));
  v17 = ((2 * (v2 + *(v3 + 4) + 4)) & 0xB7FDBEF4) + ((v2 + *(v3 + 4) + 4) ^ 0xDBFEDF7A) + 604053638;
  *(*v3 + v17) = (HIBYTE(v16) ^ 0xE0) - 2 * ((HIBYTE(v16) ^ 0xE0) & 0x6B ^ HIBYTE(v16) & 1) + 106;
  *(v10 + v17 + 1) = (BYTE2(v16) ^ 0x19) - 2 * ((BYTE2(v16) ^ 0x19) & 0xEE ^ BYTE2(v16) & 4) + 106;
  *(v10 + v17 + 2) = (BYTE1(v16) ^ 0xAD) - ((2 * (BYTE1(v16) ^ 0xAD)) & 0xD4) + 106;
  *(v10 + v17 + 3) = v16 ^ 0x50;
  *(v3 + 4) = v4;
}

uint64_t sub_1C21D7C54@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a1 - 403;
  *(v13 - 128) = v12;
  *(v13 - 120) = a6;
  *(v13 - 112) = v12;
  *(v13 - 104) = a11;
  *(v13 - 136) = a1 - 1504884919 * a4 - 484;
  v15 = (*(v11 + 8 * (a1 + 1120)))(v13 - 136);
  return (*(v11 + 8 * ((86 * (((a8 >> 1) & a5) != 0)) ^ v14)))(v15);
}

uint64_t sub_1C21D7D08@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 48 * v1 + 36);
  v6 = (v4 + 1774668370) < 0x80000003 && v4 != ((a1 - 1354316123) & 0x50B9395E ^ 0x1638B4F9);
  return (*(v3 + 8 * ((v6 * (23 * (a1 ^ 0x173) - 803)) ^ a1)))();
}

uint64_t sub_1C21D7D80@<X0>(int a1@<W8>)
{
  v5 = *(v3 + a1 * v2 + 36);
  LODWORD(STACK[0x450]) = v5;
  v6 = v5 + 1276890831;
  v8 = v6 > 455973728 || v6 < SLODWORD(STACK[0x2A0]);
  return (*(v4 + 8 * ((v8 * ((147 * (v1 ^ 0xBF)) ^ 9)) ^ v1)))();
}

uint64_t sub_1C21D7E2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = HIDWORD(v14) + HIDWORD(v12) + (*(v15 + 4 * a4) ^ v10);
  *(v15 + 4 * a10) = v16 + v10 - ((v16 << ((v11 + 32) ^ 0x9D)) & a2);
  *(v15 + 4 * a4) = (v16 >> (v11 - 92)) + v10 - ((2 * (v16 >> (v11 - 92))) & 4);
  return (*(v13 + 8 * (v11 ^ (1388 * (a1 + 1 == a3)))))();
}

uint64_t sub_1C21D7F28()
{
  v6 = (v3 + v0 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v1 & 0x30) == 16) * (v2 ^ 0x9D)) ^ v2)))();
}

uint64_t sub_1C21D7FCC@<X0>(uint64_t a1@<X8>)
{
  v7 = (v4 + a1 + v3);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((1644 * ((((v1 + 60) | 0x4Au) ^ 0x1CBLL) + a1 == v2)) ^ v1)))();
}

uint64_t sub_1C21D8010@<X0>(int a1@<W8>)
{
  *v1 = STACK[0x4C4];
  v1[85] = STACK[0x40C];
  v1[86] = STACK[0x43C];
  v1[87] = STACK[0x4EC];
  v1[88] = STACK[0x2E0];
  return (*(v2 + 8 * ((((a1 - 1155995610) ^ 0xBB18EBBF ^ (a1 - 1155995610) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (a1 - 57))))();
}

uint64_t sub_1C21D80D4@<X0>(uint64_t a1@<X8>)
{
  v7 = STACK[0x514];
  v8 = ((v2 + 2085959957) & 0x83AABFDB ^ 0x1E73317A) & (2 * LODWORD(STACK[0x514]));
  v9 = 896639297 * (((v3 ^ 0x5CEA1525) - 144323490 - 2 * ((v3 ^ 0x5CEA1525) & 0xF765CC5E)) ^ 0xBF244F03);
  *(v5 - 160) = a1;
  *(v5 - 184) = STACK[0x260];
  *(v5 - 176) = v4;
  *(v5 - 192) = STACK[0x268];
  *(v5 - 168) = v7 - v9 - v8 - 1892050927;
  *(v5 - 164) = (v1 - ((v1 << (((v2 + 18) & 0xF7) - 113)) & 4) + 515327566) ^ v9;
  *(v5 - 148) = (v2 + 1421510361) ^ v9;
  v10 = (*(v6 + 8 * ((v2 - 1810) ^ 0x88A)))(v5 - 192);
  v11 = STACK[0x2D8];
  v12 = *(v5 - 152);
  LODWORD(STACK[0x2E8]) = v12;
  return (*(v11 + 8 * ((15 * (v12 != -955998424)) ^ (v2 - 1810))))(v10, v4);
}

uint64_t sub_1C21D8298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *v44 = v44[623] + (~((v47 + 762494164 - v43) & ((v47 + 762494164) ^ (-2 - v46)) | v43 & ~(v47 + 762494164)) >> 31);
  v49 = 1380333833 * ((~((v48 - 144) | 0x94068E2C4095C08CLL) + ((v48 - 144) & 0x94068E2C4095C08CLL)) ^ 0x601C00FF013894F9);
  *(v48 - 112) = (v41 + 1) - v49;
  *(v48 - 136) = v42 - v49;
  *(v48 - 132) = v45 ^ v49;
  *(v48 - 128) = a37 + v49;
  *(v48 - 124) = ((v47 + 762493541) ^ v45 | 0x58) + v49;
  *(v48 - 120) = v49 ^ 0x48449A90;
  *(v48 - 144) = 3 - v49;
  v50 = (*(v40 + 8 * (a35 ^ 0x2D72BCD4)))(v48 - 144);
  return (*(a40 + 8 * *(v48 - 104)))(v50);
}

void sub_1C21D8350(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7)
{
  v8 = 1037613739 * (((&a3 | 0x284B0C27) + (~&a3 | 0xD7B4F3D8)) ^ 0xF9492159);
  a5 = -104286862 - v8;
  a6 = (a1 - 1435) ^ v8;
  a3 = 0;
  a7 = v8 + 744791710;
  (*(v7 + 8 * (a1 + 557)))(&a3);
  JUMPOUT(0x1C21FEB08);
}

uint64_t sub_1C21D8AB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v24 = v23 - 2108901352 > a22;
  if (a22 < 0x824CB7D8 != (v23 - 2108901352) < 0x824CB7D8)
  {
    v24 = (v23 - 2108901352) < 0x824CB7D8;
  }

  return (*(v22 + 8 * ((!v24 * (3 * a21 - 1369)) ^ (a2 + a6 + 1481))))();
}

uint64_t sub_1C21D8B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, int a18, char *a19, int a20, uint64_t a21, unsigned int a22)
{
  v26 = 1380333833 * ((2 * (&a17 & 0x3B70BB08) - &a17 - 997243659) ^ 0x7ADDEF7F);
  a22 = v26 + (((2 * v23) & 4 | v23) ^ (v22 + 529) ^ 0xFF93FD6B) + 1610587062;
  a17 = (v22 - 2013066828) ^ v26;
  a18 = v26 ^ 0x66F437EF;
  a19 = &a15;
  a21 = a14;
  v27 = (*(v25 + 8 * (v22 | 0x85F)))(&a17);
  return (*(v25 + 8 * (((a20 == v24) * ((v22 + 778) ^ 0x29D)) ^ v22)))(v27);
}

void sub_1C21D8C4C(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x464]) = a2;
  LODWORD(STACK[0x37C]) = a1;
  LODWORD(STACK[0x3B4]) = v2;
  LODWORD(STACK[0x374]) = v3;
  LODWORD(STACK[0x42C]) = v4 + 64;
  JUMPOUT(0x1C21BC448);
}

uint64_t sub_1C21D8C88()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA27)))(1576, 0x105004009637391);
  v3 = STACK[0x2D8];
  STACK[0x418] = v2;
  return (*(v3 + 8 * (((v2 != 0) * ((v0 - 63) ^ 0x5DC ^ (v0 - 1798491330) & 0x6B32CFBD)) ^ v0)))();
}

uint64_t sub_1C21D8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = ((-1320871300 - ((v22 - 136) ^ 0xBF709957 | 0xB1451A7C) + ((v22 - 136) ^ 0xBF709957 | 0x4EBAE583)) ^ 0xDB0156AE) * v17;
  *(v22 - 136) = &a17;
  *(v22 - 128) = v23 + v21 - 332 + (v18 ^ 0x39FFFC9F) + ((2 * v18) & 0x73FFF93E) - 137786653;
  *(v22 - 124) = v21 - v23 + 175;
  (*(v19 + 8 * (v21 ^ 0xFFDu)))(v22 - 136);
  *(v22 - 136) = (v21 - 557) ^ (((((v22 - 136) | 0xB1F8023E) - (v22 - 136) + ((v22 - 136) & 0x4E07FDC0)) ^ 0x9B332844) * v17);
  *(v22 - 128) = a16;
  *(v22 - 120) = v20;
  v24 = (*(v19 + 8 * (v21 + 811)))(v22 - 136);
  return (*(v19 + 8 * ((61 * (*(v22 - 132) > ((v21 - 332) ^ 0x66Bu) + 246108071)) ^ (v21 - 332))))(v24);
}

void sub_1C21D9104(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 1472192017 || *(*a1 + 4) == 1472192017;
  v1 = *(a1 + 8) - 1380333833 * (((a1 | 0x19827B1E) - (a1 & 0x19827B1E)) ^ 0xA7D0D094);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1C21D91FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v3 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v2 - 1080) | 0x318) - 803)) ^ (v2 + 24))))();
}

uint64_t sub_1C21D9380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v34 = v30 + 67;
  *(*(v32 + 96) + 1428) = 32;
  v35 = 1388665877 * ((((v33 - 128) | 0xCDD89088) - ((v33 - 128) & 0xCDD89088)) ^ 0x4075F264);
  *(v33 - 116) = v35 - 562359253 + v30 + 67;
  *(v33 - 112) = (v35 | 3) - 6 + ((((v30 + 595) | 0x4C) + 450) ^ 0xEC9E6CE4);
  *(v33 - 128) = &a21;
  v36 = (*(v31 + 8 * (v30 + 2103)))(v33 - 128);
  v37 = *v32 - 2124282221 + (a30 & 0x3Fu) > 0xFFFFFFBF;
  return (*(v31 + 8 * (((4 * v37) | (v37 << 6)) ^ v34)))(v36);
}

uint64_t sub_1C21D93D0(int a1, int8x16_t a2, int8x16_t a3)
{
  v8 = (v4 - 32);
  v9 = (v6 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a2)), a3);
  *v8 = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a2)), a3);
  v8[1] = v10;
  return (*(v7 + 8 * (((v5 == 32) * a1) ^ v3)))();
}

uint64_t sub_1C21D94F8@<X0>(int a1@<W8>)
{
  v6 = 1472192017 - v4;
  if (v5 > 1472192017 - v4)
  {
    v6 = v5;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v6)) = *(*(v2 + 8) + 4 * v6 - 4);
  return (*(v3 + 8 * (((v6 < 2) * (v1 - 1469)) | v1)))();
}

uint64_t sub_1C21D965C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1C21D9694@<X0>(unsigned int a1@<W4>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v15 = (a4 + 4 * v13);
  v16 = (*v15 ^ v5) + (v8 ^ HIDWORD(v9)) + a1 * (*(a2 + 4 * v13) ^ v5);
  *(v15 - 1) = (v16 + v6 - (v7 & (2 * v16))) ^ (((v14 + 292) | a3) + v10);
  return (*(v11 + 8 * (((v13 + 1 != a5) * v12) ^ v14)))();
}

void sub_1C21D9C20(uint64_t a1)
{
  v1 = *(a1 + 12) - 210068311 * (a1 ^ 0x92D63FA4);
  v2 = *(&off_1F41B25C0 + (v1 ^ 0x3A0)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 12248])(32, 0x101004023FF3BD5) == 0) * (v1 - 860)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21D9CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v26 - 120) = &a22;
  *(v26 - 112) = v24;
  *(v26 - 136) = &a22;
  *(v26 - 128) = a14;
  *(v26 - 144) = v25 - 90 - 1504884919 * ((1681173252 - ((v26 - 144) | 0x6434AB04) + ((v26 - 144) | 0x9BCB54FB)) ^ 0x6008E3E0);
  (*(v23 + 8 * (v25 ^ 0xA3E)))(v26 - 144);
  v27 = 2 * (v26 - 144);
  *(v26 - 144) = v25 - 90 - 1504884919 * (((v27 | 0xCE53E08E) - (v26 - 144) + 416681913) ^ 0x1CEA475C);
  *(v26 - 136) = &a22;
  *(v26 - 128) = a14;
  *(v26 - 120) = &a22;
  *(v26 - 112) = v24;
  (*(v23 + 8 * (v25 + 1514)))(v26 - 144);
  v28 = 1564307779 * (((v27 | 0xC8E3DA1E) - (v26 - 144) - 1685187855) ^ 0xF37C211C);
  *(v26 - 144) = v28 + v25 - 757;
  *(v26 - 128) = v22 + v28 - ((2 * v22 + 1923883804) & 0x6F763C9C) + (((v25 - 683) | 0x5B) ^ 0xB1112E87);
  *(v26 - 136) = a15;
  v29 = (*(v23 + 8 * (v25 + 1501)))(v26 - 144);
  return (*(v23 + 8 * ((((((v25 - 625) ^ (*(v26 - 140) == 1396564973)) & 1) == 0) | (4 * ((((v25 - 625) ^ (*(v26 - 140) == 1396564973)) & 1) == 0))) ^ v25)))(v29);
}

void sub_1C21D9F00()
{
  LODWORD(STACK[0x4BC]) = v0;
  STACK[0x430] = STACK[0x230];
  LODWORD(STACK[0x2E8]) = v0;
  JUMPOUT(0x1C21C7784);
}

void sub_1C21D9F30()
{
  v0 = MEMORY[0x1EEE9AC00]();
  if (*(v0 + 16))
  {
    v2 = *v0 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 24) - 1388665877 * ((~v0 & 0x1CDC1EF2 | v0 & 0xE323E10D) ^ 0x91717C1E);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21DA074@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, int a3@<W8>)
{
  v5 = a2[3];
  v6 = *a2;
  memset(a1, 106, 16);
  v7 = 1037613739 * ((((v4 - 168) | 0xF5EFD951) - (v4 - 168) + ((v4 - 168) & 0xA1026A8)) ^ 0x24EDF42E);
  *(v4 - 168) = v7 + 1387291138;
  *(v4 - 128) = v5;
  *(v4 - 136) = (a3 + 1587) ^ v7;
  *(v4 - 152) = v6;
  *(v4 - 144) = &v10;
  *(v4 - 160) = &v11;
  result = (*(v3 + 8 * (a3 + 2462)))(v4 - 168);
  *(a2 + 8) = *(v4 - 132);
  return result;
}

uint64_t sub_1C21DA288(uint64_t a1, int a2, int a3)
{
  v6 = v3 - a2;
  if (v4 > v3 - a2)
  {
    v6 = v4;
  }

  return (*(v5 + 8 * (((v6 + 1 < ((a3 - 1720294173) & 0x66899F7E ^ 0x527u) - 813) * ((a3 - 1720294173) & 0x66899F7E ^ 0x68F)) ^ (a3 - 1720294173) & 0x66899F7Eu)))();
}

uint64_t sub_1C21DA2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = v16 + 1380333833 * ((((v17 - 128) | 0x1FA1BFF9) + (~(v17 - 128) | 0xE05E4006)) ^ 0xA1F31472) + 59;
  *(v17 - 128) = &a13;
  *(v17 - 120) = v15;
  v18 = (*(v14 + 8 * (v16 + 2157)))(v17 - 128);
  v19 = v13 == ((v16 - 798177524) & 0x2F933C1E) + (v16 ^ 0xFFFFFB08);
  return (*(v14 + 8 * (((8 * v19) | (16 * v19)) ^ v16)))(v18);
}

uint64_t sub_1C21DA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, char *a20, char *a21, unsigned int a22, uint64_t a23)
{
  a20 = &a13;
  a21 = &a17;
  a22 = (v23 + 243) ^ (843532609 * (((&a19 ^ 0xAC012411 | 0x52BE1BCA) + (&a19 ^ 0x20E1180 | 0xAD41E435)) ^ 0xBEB342CE));
  a23 = a14;
  v25 = (*(v24 + 8 * (v23 + 1819)))(&a19);
  return (*(v24 + 8 * ((((v23 + 599) ^ 0x4AE) * (a11 < 0x3839AF14)) | v23)))(v25);
}

uint64_t sub_1C21DA508@<X0>(uint64_t a1@<X8>)
{
  v10 = (*(*(v8 + 8) + 4 * v2) ^ v5) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + v3 - (v7 & (2 * v10));
  return (*(v6 + 8 * (((8 * (v2 + 1 == v9)) | (16 * (v2 + 1 == v9))) ^ v4)))();
}

uint64_t sub_1C21DA594@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v5 = ((v4 - 1679926753) & 0x2421A6FF ^ 0x13ACDF0A) + v3;
  v6 = v2 - 1438781342;
  v7 = v6 < 0x13ACD976;
  v8 = v5 < v6;
  if (v3 > 0xEC532689 != v7)
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 + 1;
  }

  *(result + 4) = v9;
  return result;
}

uint64_t sub_1C21DA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15, uint64_t a16)
{
  v21 = 2 * ((v19 - 371721492) & 0x619749CF ^ 0xE197493A);
  a16 = v16;
  a14 = v21 - (((&a13 | 0xAA1D38A5) + (~&a13 | 0x55E2C75A)) ^ 0x38CB0700) * v20 + 1234;
  a13 = a11;
  v22 = (*(v18 + 8 * (v21 ^ 0xBE6)))(&a13);
  return (*(v18 + 8 * (((a15 == v17) * (((v21 - 519815799) | 0x930804) + 510180657)) ^ v21)))(v22);
}

uint64_t sub_1C21DA71C@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>)
{
  v12 = (v11 + 4 * v8);
  v13 = v8 + 1;
  v14 = *(v11 + 4 * v13);
  v15 = ((v14 & 0x7FFFFFFE | v7 & 0x80000000) >> (a3 + ((a7 + a1) & a6) - 110)) ^ v12[397];
  *v12 = (v15 + a5 - (a4 & (2 * v15))) ^ *(v10 + 4 * (v14 & 1));
  return (*(a2 + 8 * (((v13 == 227) * v9) ^ a7)))();
}

uint64_t sub_1C21DA790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19)
{
  v25 = &a19 + 6 * v21;
  v25[2] = v23;
  v25[3] = a2;
  *(v25 + 2) = a14;
  v25[6] = a18;
  a19 = v20 + 1;
  return (*(v22 + 8 * ((1048 * (a9 - v24 + ((a9 + 253) | 0x20u) + 1829775652 + v19 < a3)) | a9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1C21DA800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  *(v24 - 120) = &a20;
  *(v24 - 112) = &a18;
  *(v24 - 104) = v20 + 1380333833 * ((~((v24 - 120) | 0x480839FA) + ((v24 - 120) & 0x480839FA)) ^ 0x9A56D8F) - 91;
  v25 = (*(v21 + 8 * (v20 + 2007)))(v24 - 120);
  return (*(v21 + 8 * (((v22 == v23 - 198) * (v20 - 351)) ^ v20)))(v25);
}

uint64_t sub_1C21DAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, char *a15, int a16, uint64_t a17, unsigned int a18)
{
  v22 = v20 - 32;
  v23 = 1380333833 * ((&a13 & 0x3C46BFC6 | ~(&a13 | 0x3C46BFC6)) ^ 0x7DEBEBB3);
  a18 = v23 + 1603508753;
  a17 = a11;
  a15 = &a10;
  a13 = (v22 - 2013067142) ^ v23;
  a14 = v23 ^ 0x5627E0BE;
  v24 = (*(v19 + 8 * (v22 + 1829)))(&a13);
  return (*(v19 + 8 * (((a16 != v18) * ((v21 + v22 - 2540) ^ v21 ^ 0x7BE)) ^ v22)))(v24);
}

uint64_t sub_1C21DAC44()
{
  *v2 = v7 ^ v3;
  v9 = (v4 + 599) ^ (50899313 * ((((2 * &v9) | 0xA40B3B46) - &v9 + 771383901) ^ 0xF8CEB7D9));
  v10 = v8;
  (*(v1 + 8 * (v4 + 998)))(&v9);
  v10 = v6;
  v9 = ((v4 ^ 2) + 597) ^ (50899313 * ((2 * (&v9 & 0x76189C10) - &v9 - 1981324306) ^ 0xA32C4994));
  result = (*(v1 + 8 * ((v4 ^ 2) + 996)))(&v9);
  *(v0 + 8) = -955998424;
  return result;
}

uint64_t sub_1C21DADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = a12 + (v13 ^ 0x38A) - 1141854087;
  v16 = v12 + 982428071 < v15;
  if (v15 < 0x3A8EA9A7 != v12 > 0xC5715658)
  {
    v16 = v15 < 0x3A8EA9A7;
  }

  return (*(v14 + 8 * ((35 * v16) ^ v13)))();
}

uint64_t sub_1C21DAE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a21 + v33 + 72);
  v38 = ((2 * v33) & 0xDBAFFE38) + (v33 ^ 0xEDD7FF1F);
  *(a2 + ((v35 - 270667375) & 0xFF2FEB6A) + 588914559 + v38) = v37 ^ 0x31;
  v39 = v38 + v34;
  *(a2 + v39) = (BYTE1(v37) ^ 0xF9) + ~(2 * ((BYTE1(v37) ^ 0xF9) & 0xEE ^ BYTE1(v37) & 4)) + 107;
  *(a2 + v39 + 1) = (BYTE2(v37) ^ 0x7A) - 2 * ((BYTE2(v37) ^ 0x7A) & 0x6B ^ BYTE2(v37) & 1) + 106;
  *(a2 + v39 + 2) = (HIBYTE(v37) ^ 0x3E) + (~(2 * (HIBYTE(v37) ^ 0x3E)) | 0x2B) + 107;
  return (*(v36 + 8 * ((3251 * (v33 + 4 < a33)) ^ v35)))();
}

void sub_1C21DAF64(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v17 - 112) = (a1 + 1957) ^ (((2 * ((v17 - 144) & 0x119B3AE0) - (v17 - 144) + 1852097821) ^ 0x7DB8293D) * v15);
  *(v17 - 104) = a7;
  *(v17 - 128) = &a15;
  *(v17 - 120) = &a13;
  *(v17 - 144) = &a15;
  *(v17 - 136) = a6;
  (*(v16 + 8 * (a1 ^ 0x8DF)))(v17 - 144);
  JUMPOUT(0x1C21E984CLL);
}

uint64_t sub_1C21DAFDC@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x86Cu));

  return v3(v1);
}

uint64_t sub_1C21DB110@<X0>(int a1@<W8>)
{
  v9 = v6 - v1;
  *(v9 + 91) = ((v1 + v3) ^ v4) * (v1 + v3 + 17);
  *(v9 + 90) = (a1 ^ v2 ^ v5 ^ (v1 + v3)) * (v1 + v3 + 18);
  return (*(v8 + 8 * (((v1 == 90) * v7) ^ a1)))(0);
}

uint64_t sub_1C21DB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, _DWORD *a16)
{
  v20 = v16 - 109;
  v21 = (*a16 ^ 0xEF3021DA) * *(*(a11 + 8) + 16);
  v22 = 1504884919 * ((2034395117 - ((v18 - 128) | 0x794267ED) + ((v18 - 128) | 0x86BD9812)) ^ 0x7D7E2F09);
  *(v18 - 104) = 1472192017 - v22;
  *(v18 - 128) = a12;
  *(v18 - 120) = &a15;
  *(v18 - 112) = (v16 - 53) ^ v22;
  *(v18 - 108) = ((v16 - 345) ^ 0xD9EEFCCA) + v22 + (v21 ^ 0x2FFFCBFF) + ((2 * v21) & 0x5FFF97FE);
  v23 = (*(v17 + 8 * (v16 + 1868)))(v18 - 128);
  return (*(v17 + 8 * ((147 * (a3 == 1)) ^ v20)))(v23);
}

uint64_t sub_1C21DB3E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q6>)
{
  v10 = (a1 + v7 + a2);
  v11 = vaddq_s8(vsubq_s8(*(v8 + v7 + 16), vandq_s8(vaddq_s8(*(v8 + v7 + 16), *(v8 + v7 + 16)), a3)), a4);
  *v10 = vaddq_s8(vsubq_s8(*(v8 + v7), vandq_s8(vaddq_s8(*(v8 + v7), *(v8 + v7)), a3)), a4);
  v10[1] = v11;
  return (*(v9 + 8 * ((412 * ((v6 ^ 0x911) + v7 == v4)) ^ v5)))();
}

uint64_t sub_1C21DB444@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W6>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (a19 + 24 * v26);
  *v30 = v29;
  v30[1] = a3;
  *&v28[6 * v26 + 4] = a1;
  v30[4] = a24;
  *v28 = v25 + 1;
  return (*(v27 + 8 * ((39 * (v24 + 1774668370 < a4 + 327 + a2)) ^ a4)))();
}

uint64_t sub_1C21DB570()
{
  v11.val[1].i64[0] = (v3 + 13) & 0xF;
  v11.val[1].i64[1] = (v3 + 12) & 0xF;
  v11.val[2].i64[0] = (v3 + 11) & 0xF;
  v11.val[2].i64[1] = (v3 + 10) & 0xF;
  v11.val[3].i64[0] = (v3 + 9) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF ^ 8;
  v12.val[0].i64[0] = (v3 + 7) & 0xF;
  v12.val[0].i64[1] = (v3 + 6) & 0xF;
  v12.val[1].i64[0] = (v3 + 5) & 0xF;
  v12.val[1].i64[1] = (v3 + 4) & 0xF;
  v12.val[2].i64[0] = (v3 + 3) & 0xF;
  v12.val[2].i64[1] = (v3 + 2) & 0xF;
  v12.val[3].i64[0] = (v3 + 1) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v12, xmmword_1C2349910).u64[0];
  v8.i64[0] = 0x7373737373737373;
  v8.i64[1] = 0x7373737373737373;
  v9 = (v4 + 851) - 2204 + v3;
  v11.val[0].i64[0] = v9 & 0xF;
  v11.val[0].i64[1] = (v3 + 14) & 0xF;
  v12.val[1].i64[0] = vqtbl4q_s8(v11, xmmword_1C2349910).u64[0];
  v12.val[1].i64[1] = v7;
  v12.val[0] = vrev64q_s8(vmulq_s8(v12.val[1], v8));
  *(v5 - 15 + v9) = veorq_s8(veorq_s8(veorq_s8(*(v0 + v11.val[0].i64[0] - 15), *(v5 - 15 + v9)), veorq_s8(*(v1 + v11.val[0].i64[0] - 15), *(v11.val[0].i64[0] + v2 - 14))), vextq_s8(v12.val[0], v12.val[0], 8uLL));
  return (*(v6 + 8 * ((1254 * ((v3 & 0x10) == 16)) ^ (v4 - 741))))(v11.val[0].i64[1]);
}

uint64_t sub_1C21DB6BC(uint64_t a1, int a2)
{
  if (a2 + 675291631 < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3 - 11 - a2 - 1350584449;
  }

  return (*(v2 + 8 * (((v4 - 1472192018 >= 0) * (((v3 - 116) ^ 0xC32) - 1573)) ^ (v3 - 11))))(a1);
}

unsigned int **sub_1C21DB74C@<X0>(unsigned int **result@<X0>, int a2@<W8>)
{
  v3 = 1990224360 - (((a2 ^ 0xB0B003B5) + 1330641995) ^ ((a2 ^ 0xCBFA52DD) + 872787235) ^ ((a2 ^ 0xBC4ECEF0 ^ (88 * (v2 ^ 0x4B8))) + 1135686080));
  **result = v3 ^ ((v3 ^ 0x48A87CEE) - 1963840406) ^ ((v3 ^ 0x2A3021B7) - 395677391) ^ ((v3 ^ 0x60820F96) - 1562878190) ^ ((v3 ^ 0x3FBFFDB7) - 35279567) ^ 0xFAA13050;
  return result;
}

uint64_t sub_1C21DB83C@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 106;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_1C21DB870(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, unsigned int a27, unsigned int a28)
{
  v31 = ((((v28 - 1829) | 0x89A) ^ 0xFFFFF72A) & a4) + 16;
  v32 = 843532609 * (((&a25 | 0xC7D134E8) - (&a25 & 0xC7D134E8)) ^ 0xD76D43B6);
  a27 = v32 + ((2 * (a4 - a14 + 1366990188)) & 0xF7BF6BEC) + ((a4 - a14 + 1366990188) ^ 0x7BDFB5C7 ^ ((v28 - 1892) | 0x30)) - 982516112;
  a28 = (v31 ^ 0x5ACAF0BA) - v32 + ((2 * v31) & 0xB595E160) - 402804896;
  a26 = v29;
  a25 = v32 + v28 - 749;
  v35 = v28;
  v33 = (*(v30 + 8 * (v28 ^ 0xE21)))(&a25);
  return (*(v30 + 8 * ((3660 * (*(v29 + 24) == -955998424)) ^ v35)))(v33);
}

uint64_t sub_1C21DBF84@<X0>(int a1@<W3>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44)
{
  v47 = (*(v46 - 124) - 689) | 0x603;
  v48 = v44 + 16;
  v49 = a1 ^ 0x425E7458;
  v50 = a2 ^ v47 ^ 0xD76B5270;
  v51 = v45 ^ 0xADD39701;
  v52 = a3 ^ 0x41A20ECF;
  *(v46 - 120) = v47;
  *(v46 - 116) = v48;
  v53 = (v47 - 1773846564) & 0x69BABEF7;
  v54 = (v47 - 1875) | 0x401;
  v55 = (*(v46 - 144) + v48);
  v56 = v55[13];
  *(v46 - 132) = 0;
  *(v46 - 128) = v53;
  v57 = *(a14 + (v56 ^ (v53 - 39)));
  v58 = v55[9] ^ 0xD2;
  *(v46 - 124) = v54;
  v59 = ((v54 ^ 0x67 ^ v57) << 16) | (((*(a12 + (v55[12] ^ 0x80)) - 10) ^ 0x31) << 24) | ((*(a13 + (v55[14] ^ 5)) ^ (v55[14] - ((2 * v55[14]) & 0x24) - 110) ^ 0x99) << 8) | *(a15 + (v55[15] ^ 8)) ^ 0xE2;
  v60 = *(a15 + (v55[11] ^ 9)) ^ 0xE5 | ((*(a14 + v58) ^ 0x60) << 16) | ((*(a13 + (v55[10] ^ 0xA9)) ^ (v55[10] - ((2 * v55[10]) & 0x24) - 110) ^ 0xC2) << 8) | (((*(a12 + (v55[8] ^ 2)) - 10) ^ 0xE2) << 24);
  v61 = *(v46 - 168) ^ v51 ^ 0xDD02A63D ^ (((*(a13 + (v55[6] ^ 8)) ^ (v55[6] - ((2 * v55[6]) & 0x24) - 110) ^ 0x19) << 8) | (((*(a12 + (v55[4] ^ 0xC5)) - 10) ^ 0xFFFFFFFB) << 24) | *(a15 + (v55[7] ^ 0xFDLL)) ^ 0xE2 | ((*(a14 + (v55[5] ^ 0xF5)) ^ 0x42) << 16));
  LODWORD(v58) = *(v46 - 160) ^ v49 ^ 0x4D036472 ^ (*(a15 + (v55[3] ^ 0x75)) ^ 0x4F | (((*(a12 + (*v55 ^ 0xB0)) - 10) ^ 0x16) << 24) | ((*(a14 + (v55[1] ^ 0x93)) ^ 0x88) << 16) | ((*(a13 + (v55[2] ^ 0x1CLL)) ^ (v55[2] - ((2 * v55[2]) & 0x24) - 110) ^ 0x5D) << 8));
  v62 = *(v46 - 164) ^ v52 ^ 0x3F06EE66 ^ v59;
  v63 = *(v46 - 156) ^ v50 ^ 0x9BBC166D ^ v60;
  v64 = *(&off_1F41B25C0 + (v47 ^ 0x77A)) - 8;
  v65 = *&v64[4 * ((*(v46 - 168) ^ v51 ^ 0xA63D ^ (((*(a13 + (v55[6] ^ 8)) ^ (v55[6] - ((2 * v55[6]) & 0x24) - 110) ^ 0x19) << 8) | *(a15 + (v55[7] ^ 0xFDLL)) ^ 0xE2)) >> 8)];
  v66 = *(&off_1F41B25C0 + (v47 ^ 0x78D)) - 12;
  v67 = *(&off_1F41B25C0 + (v47 ^ 0x780)) - 4;
  v68 = *&v67[4 * HIBYTE(v62)] ^ v65;
  v69 = *&v66[4 * BYTE2(v58)];
  v70 = (v68 ^ 0xDBFDD77A) - 1963962805 - 2 * ((v68 ^ 0xDBFDD77A) & 0xAF04E4F ^ v68 & 4);
  v71 = *(&off_1F41B25C0 + (v47 ^ 0x785)) - 8;
  v72 = *&v71[4 * v63] - 190468687;
  v73 = *&v67[4 * HIBYTE(v63)] ^ 0xDBFDD77A ^ *&v64[4 * BYTE1(v58)];
  v74 = (*&v71[4 * v62] + 2140535804 - ((2 * *&v71[4 * v62] + 155933538) & 0x15E09C96)) ^ *&v66[4 * BYTE2(v61)];
  v75 = (v74 + 1057896359 - ((2 * v74) & 0x7E1C6F4E)) ^ *&v67[4 * BYTE3(v58)];
  LODWORD(v58) = *&v67[4 * HIBYTE(v61)] ^ *&v66[4 * BYTE2(v63)] ^ (*&v71[4 * v58] - 190468687);
  v76 = *&v64[4 * BYTE1(v63)] ^ *(v46 - 172) ^ (v75 - 453779235 - ((2 * v75) & 0xC9E7C1BA));
  v77 = *&v66[4 * BYTE2(v62)] ^ *(v46 - 180) ^ (*&v71[4 * v61] - 190468687) ^ (v73 - 1963962805 - ((2 * v73) & 0x15E09C96));
  v78 = *&v64[4 * BYTE1(v62)] ^ *(v46 - 176) ^ ((v58 ^ 0xB5FE79EC) - 453779235 - 2 * ((v58 ^ 0xB5FE79EC) & 0x64F3E0DF ^ v58 & 2));
  v79 = v78 ^ 0xBF80DD5E;
  v80 = (v76 ^ 0xD7674CCB) >> 24;
  v81 = *(v46 - 184) ^ v69 ^ v72 ^ 0x463DFBE7 ^ v70;
  v82 = *&v66[4 * ((v76 ^ 0xD7674CCB) >> 16)] ^ *&v67[4 * HIBYTE(v81)];
  v83 = *&v64[4 * ((v77 ^ 0xDD4) >> 8)] ^ (*&v71[4 * v81] - 644247922 - ((2 * *&v71[4 * v81] - 380937374) & 0xC9E7C1BA));
  v84 = *&v71[4 * (v78 ^ 0x48)];
  v85 = (v84 + 867427672 - ((2 * v84 + 1766546274) & 0x7E1C6F4E)) ^ *&v67[4 * ((v77 ^ 0x16B10DD4u) >> 24)];
  v86 = *&v64[4 * ((v76 ^ 0x4CCB) >> 8)];
  v87 = *&v71[4 * (v76 ^ 0xDD)];
  v88 = (v85 - 453779235 - ((2 * v85) & 0xC9E7C1BA)) ^ v86;
  v89 = (v87 - 644247922 - ((2 * v87 - 380937374) & 0xC9E7C1BA)) ^ *&v64[4 * BYTE1(v81)];
  v90 = *&v67[4 * v80] ^ (v83 + 1057896359 - ((2 * v83) & 0x7E1C6F4E));
  v91 = (v89 + 1057896359 - ((2 * v89) & 0x7E1C6F4E)) ^ *&v67[4 * HIBYTE(v79)];
  v92 = *&v66[4 * ((v77 ^ 0x16B10DD4u) >> 16)];
  v93 = *&v66[4 * BYTE2(v81)] ^ a44 ^ (v88 - 1963962805 - ((2 * v88) & 0x15E09C96));
  v94 = __ROR4__(__ROR4__(*&v66[4 * BYTE2(v79)] ^ 0xB9AB301 ^ (v90 - 1963962805 - ((2 * v90) & 0x15E09C96)), 5) ^ 0x50D2ECF9, 27);
  v95 = a42 ^ v94 ^ 0x6EDAF696;
  v96 = ((v82 ^ 0xB5FE79EC) - 453779235 - 2 * ((v82 ^ 0xB5FE79EC) & 0x64F3E0DF ^ v82 & 2)) ^ a43 ^ *&v64[4 * BYTE1(v79)] ^ (*&v71[4 * (v77 ^ 0xC2)] - 190468687);
  v97 = *(v46 - 188) ^ v92 ^ 0x2201ECBC ^ (v91 - 1963962805 - ((2 * v91) & 0x15E09C96));
  v98 = HIBYTE(v95);
  v99 = *&v71[4 * (v93 ^ 0x37)];
  v100 = (v99 + 2140535804 - ((2 * v99 + 155933538) & 0x15E09C96)) ^ *&v66[4 * (((a42 ^ v94) >> 16) ^ 0x45)];
  v101 = *&v64[4 * BYTE1(v95)] ^ *&v67[4 * ((v93 ^ 0xD62C0A37) >> 24)] ^ 0xDBFDD77A;
  v102 = (v100 - 453779235 - ((2 * v100) & 0xC9E7C1BA)) ^ *&v64[4 * BYTE1(v97)];
  v103 = *&v66[4 * BYTE2(v97)] ^ *&v64[4 * ((v93 ^ 0xA37) >> 8)] ^ 0x6E03AE96;
  v104 = *&v67[4 * ((v96 ^ 0xFC47C039) >> 24)];
  v105 = *&v66[4 * (BYTE2(v93) ^ 0xB3)] ^ (*&v71[4 * ((a42 ^ v94) ^ 0x96)] - 190468687) ^ *&v67[4 * HIBYTE(v97)];
  v106 = *&v67[4 * v98];
  v107 = *&v71[4 * v97] - 190468687;
  v108 = v103 + 1057896359 - ((2 * v103) & 0x7E1C6F4E);
  v109 = *&v71[4 * (v96 ^ 0x39)] - 190468687;
  v110 = *&v64[4 * (BYTE1(v96) ^ 0x87)];
  v111 = (v101 - 1963962805 - ((2 * v101) & 0x15E09C96)) ^ a37 ^ *&v66[4 * ((v96 ^ 0xFC47C039) >> 16)] ^ v107;
  v112 = a39 ^ v104 ^ 0x61C6B6CD ^ (v102 + 1057896359 - ((2 * v102) & 0x7E1C6F4E));
  v113 = v108 ^ a41 ^ v106 ^ v109;
  v114 = v110 ^ a40 ^ ((v105 ^ 0xB5FE79EC) - 453779235 - 2 * ((v105 ^ 0xB5FE79EC) & 0x64F3E0DF ^ v105 & 2));
  BYTE2(v109) = BYTE2(v114) ^ 0x65;
  v115 = (v114 ^ 0x7D650C28) >> 24;
  v116 = *&v71[4 * (v114 ^ 0x28)];
  v117 = *&v71[4 * (v113 ^ 0xDD)];
  v118 = (v116 + 867427672 - ((2 * v116 + 1766546274) & 0x7E1C6F4E)) ^ *&v67[4 * ((v111 ^ 0x7F82DAABu) >> 24)];
  v119 = (v118 - 453779235 - ((2 * v118) & 0xC9E7C1BA)) ^ *&v64[4 * (((v113 ^ 0x35DF) >> 8) ^ 0x79)];
  v120 = (v117 - 644247922 - ((2 * v117 - 380937374) & 0xC9E7C1BA)) ^ *&v64[4 * BYTE1(v112)];
  v121 = *&v66[4 * BYTE2(v112)];
  v122 = *&v64[4 * (BYTE1(v114) ^ 0x4B)] ^ *&v66[4 * (((v113 ^ 0x13FC35DF) >> 16) ^ 0x9B)] ^ 0x6E03AE96;
  v123 = *&v67[4 * (HIBYTE(v113) ^ 0xBD)] ^ *&v66[4 * BYTE2(v109)];
  v124 = *&v66[4 * ((v111 ^ 0x7F82DAABu) >> 16)] ^ (v120 - 1963962805 - ((2 * v120) & 0x15E09C96));
  v125 = *&v67[4 * HIBYTE(v112)];
  v126 = v123 ^ (*&v71[4 * v112] - 190468687);
  v127 = *&v67[4 * v115] ^ a36 ^ (v124 + 1057896359 - ((2 * v124) & 0x7E1C6F4E));
  v128 = (v126 ^ 0xB5FE79EC) - 453779235 - 2 * ((v126 ^ 0xB5FE79EC) & 0x64F3E0DF ^ v126 & 2);
  v129 = v121 ^ a35 ^ (v119 - 1963962805 - ((2 * v119) & 0x15E09C96));
  v130 = v127 ^ 0x66654B3E;
  v131 = (v122 + 1057896359 - ((2 * v122) & 0x7E1C6F4E)) ^ a34 ^ v125 ^ (*&v71[4 * (v111 ^ 0xBD)] - 190468687);
  LOBYTE(v126) = v131 ^ 0x1F;
  v132 = a38 ^ *&v64[4 * ((v111 ^ 0xDAAB) >> 8)] ^ 0xE82DABD ^ v128;
  BYTE2(v111) = BYTE2(v129) ^ 0x80;
  v133 = *&v71[4 * ((a38 ^ v64[4 * ((v111 ^ 0xDAAB) >> 8)]) ^ 0xBD ^ v128)];
  v134 = (v133 - 644247922 - ((2 * v133 - 380937374) & 0xC9E7C1BA)) ^ *&v64[4 * ((v131 ^ 0xE61F) >> 8)];
  v135 = (v127 ^ 0x66654B3Eu) >> 24;
  v136 = *&v67[4 * ((v131 ^ 0x880EE61F) >> 24)];
  v137 = *&v71[4 * (v127 ^ 0x28)];
  v138 = (v134 + 1057896359 - ((2 * v134) & 0x7E1C6F4E)) ^ *&v67[4 * v135];
  v139 = (v137 - 644247922 - ((2 * v137 - 380937374) & 0xC9E7C1BA)) ^ *&v64[4 * BYTE1(v132)];
  v140 = (v139 - 1963962805 - ((2 * v139) & 0x15E09C96)) ^ *&v66[4 * (BYTE2(v131) ^ 0x91)];
  v141 = v136 ^ 0x10808EBF ^ *&v64[4 * BYTE1(v130)];
  v142 = *&v66[4 * BYTE2(v132)] ^ 0x4A17A48F;
  v143 = (*&v71[4 * v126] + 2140535804 - ((2 * *&v71[4 * v126] + 155933538) & 0x15E09C96)) ^ *&v66[4 * BYTE2(v130)];
  LODWORD(v58) = (v143 + 1057896359 - ((2 * v143) & 0x7E1C6F4E)) ^ *&v67[4 * HIBYTE(v132)];
  v144 = v58 - 453779235 - ((2 * v58) & 0xC9E7C1BA);
  v145 = (*&v71[4 * (v129 ^ 0x48)] - 190468687) ^ a30 ^ (v142 + v141 - 2 * (v142 & v141));
  LODWORD(v58) = *&v67[4 * ((v129 ^ 0xA480DD5E) >> 24)] ^ a31 ^ (v140 + 1057896359 - ((2 * v140) & 0x7E1C6F4E));
  v146 = *&v64[4 * ((v129 ^ 0xDD5E) >> 8)] ^ a33 ^ v144;
  v147 = a32 ^ *&v66[4 * BYTE2(v111)] ^ 0x84654B28 ^ (v138 - 1963962805 - ((2 * v138) & 0x15E09C96));
  v148 = *&v71[4 * (v145 ^ 0x7E)];
  v149 = *&v71[4 * (v146 ^ 0xDD)];
  v150 = *&v66[4 * (BYTE2(v146) ^ 0x67)] ^ *&v67[4 * (HIBYTE(v145) ^ 0x30)] ^ (*&v71[4 * (v58 ^ 0x6E)] - 190468687);
  v151 = (v149 + 867427672 - ((2 * v149 + 1766546274) & 0x7E1C6F4E)) ^ *&v67[4 * HIBYTE(v147)];
  v152 = (v151 - 1963962805 - ((2 * v151) & 0x15E09C96)) ^ *&v66[4 * (((v58 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v153 = *&v66[4 * BYTE2(v147)] ^ (v148 + 2140535804 + ((380937372 - 2 * v148) | 0xEA1F6369) + 1);
  v154 = *&v66[4 * (BYTE2(v145) ^ 0xEE)] ^ (*&v71[4 * v147] - 190468687) ^ *&v67[4 * ((v58 ^ 0xD0C9FB6E) >> 24)];
  v155 = *&v64[4 * (BYTE1(v145) ^ 0xC3)];
  v156 = *&v64[4 * (BYTE1(v58) ^ 0xBC)];
  LODWORD(v58) = (v153 + 1057896359 - ((2 * v153) & 0x7E1C6F4E)) ^ *&v67[4 * (HIBYTE(v146) ^ 0x5F)];
  v157 = v58 - 453779235 - ((2 * v58) & 0xC9E7C1BA);
  LODWORD(v58) = (v150 ^ 0xB5FE79EC) - 453779235 - 2 * ((v150 ^ 0xB5FE79EC) & 0x64F3E0DF ^ v150 & 2);
  v158 = *&v64[4 * (BYTE1(v146) ^ 0x4C)] ^ a27 ^ ((v154 ^ 0xB5FE79EC) - 453779235 - 2 * ((v154 ^ 0xB5FE79EC) & 0x64F3E0DF ^ v154 & 2));
  LODWORD(v58) = v58 ^ a26 ^ *&v64[4 * BYTE1(v147)];
  v159 = v156 ^ a29 ^ v157;
  v160 = a28 ^ v155 ^ 0x9A674CDD ^ (v152 - 453779235 - ((2 * v152) & 0xC9E7C1BA));
  v161 = *&v71[4 * ((a28 ^ v155) ^ 0xDD ^ (v152 - 35 - ((2 * v152) & 0xBA)))];
  v162 = (v161 - 644247922 - ((2 * v161 - 380937374) & 0xC9E7C1BA)) ^ *&v64[4 * ((v159 ^ 0xDAAB) >> 8)];
  v163 = (v162 - 1963962805 - ((2 * v162) & 0x15E09C96)) ^ *&v66[4 * ((v58 ^ 0xBFC6B6DB) >> 16)];
  v164 = *&v67[4 * ((v58 ^ 0xBFC6B6DB) >> 24)] ^ 0xDBFDD77A ^ *&v64[4 * BYTE1(v160)] ^ (*&v71[4 * (v158 ^ 0xE)] - 190468687);
  v165 = *&v64[4 * (BYTE1(v158) ^ 0x2A)] ^ *&v67[4 * ((v159 ^ 0x2982DAABu) >> 24)] ^ 0xDBFDD77A;
  v166 = *&v64[4 * ((v58 ^ 0xB6DB) >> 8)] ^ 0xDBFDD77A ^ *&v67[4 * HIBYTE(v160)];
  v167 = (v164 - 1963962805 - ((2 * v164) & 0x15E09C96)) ^ a22 ^ *&v66[4 * ((v159 ^ 0x2982DAABu) >> 16)];
  v168 = a25 ^ *&v66[4 * BYTE2(v160)] ^ (*&v71[4 * (v58 ^ 0xCD)] - 190468687) ^ 0x2674CDD ^ (v165 - 1963962805 - ((2 * v165) & 0x15E09C96));
  LODWORD(v58) = a23 ^ *&v67[4 * (HIBYTE(v158) ^ 0xA6)] ^ 0xAF54BB9B ^ (v163 + 1057896359 - ((2 * v163) & 0x7E1C6F4E));
  v169 = a24 ^ *&v66[4 * (BYTE2(v158) ^ 0xB3)] ^ (*&v71[4 * ((v156 ^ a29 ^ v157) ^ 0xBD)] - 190468687) ^ 0x2BE67D3F ^ (v166 - 1963962805 - ((2 * v166) & 0x15E09C96));
  v170 = *&v71[4 * (v167 ^ 0x8A)];
  v171 = *&v71[4 * ((a23 ^ v67[4 * (HIBYTE(v158) ^ 0xA6)]) ^ 0x9B ^ (v163 - 89 - ((2 * v163) & 0x4E)))];
  v172 = (v171 + 2140535804 - ((2 * v171 + 155933538) & 0x15E09C96)) ^ *&v66[4 * BYTE2(v168)];
  v173 = *&v67[4 * ((v167 ^ 0x44E9778Au) >> 24)];
  v174 = (v172 - 453779235 - ((2 * v172) & 0xC9E7C1BA)) ^ *&v64[4 * BYTE1(v169)];
  v175 = *&v64[4 * ((v167 ^ 0x778A) >> 8)] ^ *&v67[4 * HIBYTE(v169)] ^ 0xDBFDD77A;
  v176 = *&v64[4 * BYTE1(v168)] ^ (*&v71[4 * (v169 ^ 0x16)] - 190468687) ^ *&v67[4 * BYTE3(v58)];
  v177 = *&v66[4 * (BYTE2(v167) ^ 0x76)];
  v178 = *&v67[4 * HIBYTE(v168)] ^ (v170 + 867427672 - ((2 * v170 + 1766546274) & 0x7E1C6F4E));
  v179 = (v178 - 1963962805 - ((2 * v178) & 0x15E09C96)) ^ *&v66[4 * BYTE2(v169)];
  v180 = v179 - 453779235 - ((2 * v179) & 0xC9E7C1BA);
  v181 = *&v66[4 * BYTE2(v58)] ^ a20 ^ (*&v71[4 * v168] - 190468687) ^ (v175 - 1963962805 - ((2 * v175) & 0x15E09C96));
  v182 = v173 ^ a19 ^ (v174 + 1057896359 - ((2 * v174) & 0x7E1C6F4E));
  LODWORD(v58) = a21 ^ *&v64[4 * BYTE1(v58)] ^ 0x26E67D29 ^ v180;
  LOBYTE(v180) = v182 ^ 0x58;
  v183 = a23 ^ a20 ^ v177 ^ 0xA254BB9B ^ ((v176 ^ 0xDBFDD77A) - 1963962805 - 2 * ((v176 ^ 0xDBFDD77A) & 0xAF04E4F ^ v176 & 4));
  v184 = *&v67[4 * BYTE3(v58)];
  v185 = *&v71[4 * (v181 ^ 0x49)];
  v186 = (*&v71[4 * v58] - 644247922 - ((2 * *&v71[4 * v58] - 380937374) & 0xC9E7C1BA)) ^ *&v64[4 * ((v182 ^ 0x2758) >> 8)];
  v187 = *&v67[4 * ((v182 ^ 0x4BE2758u) >> 24)];
  v188 = (v185 + 2140535804 - ((2 * v185 + 155933538) & 0x15E09C96)) ^ *&v66[4 * (BYTE2(v182) ^ 0x21)];
  v189 = (v188 + 1057896359 - ((2 * v188) & 0x7E1C6F4E)) ^ *&v67[4 * HIBYTE(v183)];
  v190 = (v186 - 1963962805 - ((2 * v186) & 0x15E09C96)) ^ *&v66[4 * BYTE2(v183)];
  LODWORD(v67) = *&v67[4 * (HIBYTE(v181) ^ 0xEF)];
  v191 = (*&v71[4 * v180] + 867427672 - ((2 * *&v71[4 * v180] + 1766546274) & 0x7E1C6F4E)) ^ v184;
  v192 = (v191 - 453779235 - ((2 * v191) & 0xC9E7C1BA)) ^ *&v64[4 * BYTE1(v183)];
  v193 = v187 ^ *&v64[4 * (BYTE1(v181) ^ 0xEB)] ^ 0xDBFDD77A ^ (*&v71[4 * v183] - 190468687);
  v194 = BYTE2(v181) ^ 3;
  v195 = *&v66[4 * BYTE2(v58)] ^ a16 ^ (v193 - 1963962805 - ((2 * v193) & 0x15E09C96));
  v196 = *&v64[4 * BYTE1(v58)] ^ a17 ^ (v189 - 453779235 - ((2 * v189) & 0xC9E7C1BA));
  LODWORD(v66) = *&v66[4 * v194] ^ a18 ^ (v192 - 1963962805 - ((2 * v192) & 0x15E09C96));
  LODWORD(v58) = a18 ^ a20 ^ v67 ^ (v190 + 1057896359 - ((2 * v190) & 0x7E1C6F4E));
  LODWORD(v71) = v58 ^ 0xBD9E3C06;
  v197 = *(v46 - 120);
  v198 = *(&off_1F41B25C0 + (v197 & 0xAD7D823));
  v199 = *(v198 + 4 * ((a18 ^ a20 ^ v67 ^ (v190 - 89 - ((2 * v190) & 0x4E))) ^ 7u));
  v200 = BYTE3(v58) ^ 0xD2;
  v201 = *(&off_1F41B25C0 + v197 - 2000) - 12;
  v202 = *&v201[4 * v200];
  LODWORD(v67) = 49868192 - 1212680160 * v202 - 1173243251 * v202 + 483861648 - 2 * ((49868192 - 1212680160 * v202 - 1173243251 * v202) & 0x1CD72492 ^ (-1173243251 * v202) & 2);
  v203 = *(&off_1F41B25C0 + (v197 ^ 0x7A9)) - 4;
  v204 = *&v203[4 * ((v196 ^ 0xFAB5) >> 8)];
  HIDWORD(v205) = v204 ^ 0x93A76A2;
  LODWORD(v205) = v204 ^ 0x40000000;
  v206 = (v205 >> 28) ^ (*(v198 + 4 * (v195 ^ 0x16u)) - 1602315067) ^ (1909043885 * *&v201[4 * ((v66 >> 24) ^ 0xDF)] + 49868192);
  v207 = *&v203[4 * ((v195 ^ 0xF016) >> 8)];
  v208 = v199 - ((2 * v199 + 16595338) & 0x39AE4920);
  HIDWORD(v205) = v207 ^ 0x93A76A2;
  LODWORD(v205) = v207 ^ 0x40000000;
  v209 = v205 >> 28;
  v210 = *&v203[4 * BYTE1(v71)];
  HIDWORD(v205) = v210 ^ 0x93A76A2;
  LODWORD(v205) = v210 ^ 0x40000000;
  v211 = *(&off_1F41B25C0 + (v197 ^ 0x7DC)) - 8;
  v212 = *&v211[4 * ((v196 ^ 0x422CFAB5) >> 16)];
  LODWORD(v66) = v66 ^ 0xB0693C07;
  v213 = *&v211[4 * ((v195 ^ 0xF6BCF016) >> 16)];
  v214 = (v205 >> 28) ^ (*(v198 + 4 * (v196 ^ 0xB5u)) - 1602315067);
  v215 = *&v201[4 * (HIBYTE(v196) ^ 0x2D)];
  v216 = *&v211[4 * BYTE2(v71)];
  LODWORD(v71) = *(v198 + 4 * v66);
  LODWORD(v203) = *&v203[4 * BYTE1(v66)];
  HIDWORD(v205) = v203 ^ 0x93A76A2;
  LODWORD(v205) = v203 ^ 0x40000000;
  LODWORD(v198) = a8 ^ v216 ^ (v206 + 483861648 - ((2 * v206) & 0x39AE4920));
  LODWORD(v203) = v212 ^ a10 ^ v209 ^ (v71 - 1602315067);
  LODWORD(v71) = (v208 - 1118453419) ^ a9 ^ v213 ^ (1909043885 * v215 + 49868192) ^ (v205 >> 28);
  v217 = a9 ^ a16 ^ *&v211[4 * (BYTE2(v66) ^ 0xF7)] ^ (1909043885 * *&v201[4 * (HIBYTE(v195) ^ 0x99)] + 49868192) ^ (v214 + 483861648 - ((2 * v214) & 0x39AE4920));
  v218 = (((v208 - 16043) ^ a9 ^ v213 ^ (-19795 * v215 - 4704) ^ (v205 >> 28)) >> 8) ^ 0x79;
  v219 = *(&off_1F41B25C0 + v197 - 2017);
  v55[10] = *(v219 + v218) ^ 0x98;
  v220 = *(&off_1F41B25C0 + v197 - 1967) - 4;
  LODWORD(v66) = v203 ^ v67;
  v55[13] = v220[BYTE2(v217) ^ 0xF0] ^ 0xBD;
  v221 = *(&off_1F41B25C0 + (v197 ^ 0x791)) - 12;
  v55[15] = (v221[v217 ^ 0x45] - 62) ^ 0x8F;
  v55[6] = *(v219 + (((v203 ^ v67) >> 8) ^ 0x1BLL)) ^ 0x64;
  v55[1] = v220[BYTE2(v198) ^ 0x3ELL] ^ 0xDB;
  v222 = *(&off_1F41B25C0 + (v197 ^ 0x7C8));
  v55[12] = *(v222 + (HIBYTE(v217) ^ 0x41)) ^ 1;
  v55[8] = *(v222 + ((v71 >> 24) ^ 0xB6)) ^ 0xC7;
  v55[3] = (v221[v198 ^ 0xDFLL] - 62) ^ 0x17;
  v55[14] = *(v219 + (BYTE1(v217) ^ 0x5ELL)) ^ 0x25;
  v55[11] = (v221[v71 ^ 0x54] - 62) ^ 0x67;
  v55[2] = *(v219 + (BYTE1(v198) ^ 0x13)) ^ 0x68;
  v223 = (v203 ^ v67) ^ 0xDELL;
  LODWORD(v203) = *(v46 - 116);
  v55[7] = (v221[v223] - 62) ^ 0x84;
  v55[5] = v220[BYTE2(v66) ^ 0x7ALL] ^ 0x1C;
  *v55 = *(v222 + (BYTE3(v198) ^ 0xB5)) ^ 0x27;
  v55[9] = v220[BYTE2(v71) ^ 0x6FLL] ^ 0x6E;
  v55[4] = *(v222 + ((v66 >> 24) ^ 0x49)) ^ 0x53;
  v224 = v203 + 2036015317 < a11;
  if (a11 < 0x795B20C5 != (v203 + 2036015317) < 0x795B20C5)
  {
    v224 = a11 < 0x795B20C5;
  }

  return (*(*(v46 - 152) + 8 * ((3815 * v224) ^ v197)))();
}

uint64_t sub_1C21DC5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v9 - 1;
  *(a2 + a9) = (&a9 ^ 0xBA) * (&a9 + 17);
  return (*(v11 + 8 * (((v9 == 1) * ((v10 ^ 0x13C) + 1328)) ^ (v10 - 722))))(a1);
}

uint64_t sub_1C21DC734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = v15 - 377;
  v21 = ((v20 - 1171985607) & 0x45DB17DA ^ 0xFFFFF92E) + v16;
  v22 = ((2 * (v21 & v18)) & ((v20 ^ 0x733) + 33561491) | v21 & v18) ^ (2 * (v21 & v18)) & (v21 ^ 0xFA47F178);
  v23 = ((2 * (v21 ^ 0xFA47F178)) ^ 0x623C1D0) & (v21 ^ 0xFA47F178) ^ (2 * (v21 ^ 0xFA47F178)) & 0x311E0E8;
  v24 = v23 ^ 0x1102028;
  v25 = (v23 ^ 0x200E0E8) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xC4783A0) & v24 ^ (4 * v24) & 0x311E0E8;
  v27 = (v26 ^ 0x180A0) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x3106048)) ^ 0x311E0E80) & (v26 ^ 0x3106048) ^ (16 * (v26 ^ 0x3106048)) & 0x311E0E0;
  v29 = v27 ^ 0x311E0E8 ^ (v28 ^ 0x1100000) & (v27 << 8);
  v30 = v21 ^ (2 * ((v29 << 16) & 0x3110000 ^ v29 ^ ((v29 << 16) ^ 0x60E80000) & (((v28 ^ 0x201E068) << 8) & 0x3110000 ^ 0x2110000 ^ (((v28 ^ 0x201E068) << 8) ^ 0x11E00000) & (v28 ^ 0x201E068)))) ^ 0x48CECE0E;
  v31 = 1564307779 * ((v19 - 144) ^ 0x970DCC13);
  *(v19 - 144) = v31 + v20 - 776;
  *(v19 - 136) = a15;
  *(v19 - 128) = v30 + v31;
  v32 = (*(v17 + 8 * (v20 ^ 0xA36)))(v19 - 144);
  return (*(v17 + 8 * ((126 * (*(v19 - 140) != 1396564973)) ^ v20)))(v32);
}

uint64_t sub_1C21DCE04()
{
  v10 = v4 >= 0x10;
  v8 = ((17 * ((v5 + 473) ^ 0x83Cu)) ^ 0x640) & (v3 + 15);
  v9 = -v6 - v3;
  v10 = v10 && (v9 + v1 + v8 + 1) >= 0x10;
  v11 = v10 && (v9 + v0 + v8 + 6) >= 0x10;
  v12 = v9 + v2 + v8 + 3;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * (((8 * v14) | (32 * v14)) ^ v5)))(v3);
}

uint64_t sub_1C21DCE88(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void sub_1C21DCED0(int a1@<W1>, uint64_t a2@<X8>)
{
  if ((v2 + v4 - 1) >= 0x7FFFFFFF)
  {
    v6 = ((a1 + 1099) | 0x106) - v5;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  JUMPOUT(0x1C21DCF00);
}

uint64_t sub_1C21DCF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = 1564307779 * ((((v19 - 144) | 0xDC3C9869) - (v19 - 144) + ((v19 - 144) & 0x23C36790)) ^ 0x4B31547A);
  *(v19 - 144) = v20 + v15 - 1238;
  *(v19 - 136) = a15;
  *(v19 - 128) = v16 - 1324274041 + v20 - 2 * ((v16 + 961941902) & 0x37BB1E4F ^ v16 & 1) + v15 - 1106 + 27;
  v21 = (*(v17 + 8 * (v15 + 1020)))(v19 - 144);
  return (*(v17 + 8 * (((*(v19 - 140) != v18) * (((v15 - 1140) | 0x22) ^ 0x165)) ^ v15)))(v21);
}

uint64_t sub_1C21DD2A0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = *(v16 + 8 * (v17 - 2217));
  v9 = *v13;
  v10 = a2 + 4 + a8;
  *(*v13 + v10) = (HIBYTE(a3) ^ 0x88) - 2 * ((HIBYTE(a3) ^ 0x88) & 0x6B ^ HIBYTE(a3) & 1) + 106;
  *(v9 + v10 + 1) = (BYTE2(a3) ^ v18) - 2 * ((BYTE2(a3) ^ v18) & 0xEE ^ BYTE2(a3) & 4) + 106;
  *(v9 + v10 + 2) = (v15 ^ BYTE1(a3)) - (v12 & (2 * (v15 ^ BYTE1(a3)))) + 106;
  *(v9 + v10 + 3) = a3 ^ v14;
  return v8();
}

uint64_t sub_1C21DD3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 ^ 0x2A3) + 371;
  v6 = v4 - (**(a2 + 8) == (v5 ^ 0x97));
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1472192017;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v7 = *(a1 + 96) + 800;
  v8 = *(a2 + 8) + (*(a2 + 4) - v6);
  v9 = 50899313 * (((&v11 | 0x5891D619) + (~&v11 | 0xA76E29E6)) ^ 0x725AFC62);
  v14 = v6 - v9 + ((v5 - 1082141625) & 0x1F5C6F3B ^ 0xA93485C5);
  v11 = (v5 + 577) ^ v9;
  v12 = v8;
  v13 = v7;
  (*(a3 + 8 * (v5 + 805)))(&v11);
  return (1950453523 * v15 - 1698248050);
}

uint64_t sub_1C21DD404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 896639297 * ((&a15 & 0x527022FA | ~(&a15 | 0x527022FA)) ^ 0xB9244B7D);
  a17 = v21;
  a18 = a11;
  a15 = (v19 ^ 0xB7FBF7F4) + ((2 * v19) & 0x6FF7EFE8) + 147 * (v22 ^ 0x577) + v23 + 1541404059;
  a16 = v23 + v22 + 298;
  v24 = (*(v20 + 8 * (v22 ^ 0xCE8)))(&a15);
  return (*(v20 + 8 * ((3389 * (a19 == -955998424)) ^ v22)))(v24);
}

uint64_t sub_1C21DD514(uint64_t a1, uint64_t a2, int a3)
{
  if ((v5 ^ 0x38FB60D7u) > 0xCF7774A7 != v4 - 552735244 < 22 * (a3 ^ 0x93Fu) + 814254298)
  {
    v6 = v4 - 552735244 < 22 * (a3 ^ 0x93Fu) + 814254298;
  }

  else
  {
    v6 = v4 - 552735244 > (v5 ^ 0x38FB60D7u) + 814254936;
  }

  return (*(v3 + 8 * ((!v6 | (4 * !v6)) ^ a3)))();
}

uint64_t sub_1C21DDC18(void *a1)
{
  if (a1[6])
  {
    v3 = (a1[4] | *a1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((((v1 ^ v4) & 1) * ((v1 + 405) ^ 0x383)) ^ v1)))();
}

void sub_1C21DDE88(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = 50899313 * ((-217660505 - ((v14 - 144) | 0xF306C3A7) + ((v14 - 144) | 0xCF93C58)) ^ 0x26321622);
  *(v14 - 120) = v10 - v15 - 1301871231 + a1 + 1084;
  *(v14 - 144) = (a1 + 1104) ^ v15;
  *(v13 + 8) = v12;
  *(v13 + 16) = &a10;
  (*(v11 + 8 * (a1 ^ 0xD34)))(v14 - 144);
  JUMPOUT(0x1C21BF09CLL);
}

uint64_t sub_1C21DE010()
{
  result = (*(v1 + 8 * (v3 + 361)))(*v4);
  *v2 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 163537135;
  return result;
}

uint64_t sub_1C21DE054@<X0>(int a1@<W2>, int a2@<W8>)
{
  v7 = *(v10 + 32);
  if ((a1 + a2 - 1) >= 0x7FFFFFFF)
  {
    v8 = -v3;
  }

  else
  {
    v8 = v2;
  }

  v11[1] = v8;
  *(v6 - 128) = v11;
  *(v6 - 120) = v7;
  *(v6 - 112) = v4 + 210068311 * ((v6 - 128) ^ 0x92D63FA4) - 349;
  return (*(v5 + 8 * (v4 ^ 0xE99)))(v6 - 128);
}

uint64_t sub_1C21DE150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v22 = v18 - 1462;
  v23 = v18 ^ 0xE2D;
  v24 = 1785193651 * (((&a14 | 0xA81C0F56) - (&a14 & 0xA81C0F56)) ^ 0xBBC0E376);
  a14 = &a11;
  a15 = &a13;
  a16 = v20;
  a17 = 408742887 - v24;
  a18 = v18 - 1462 - v24 - 666;
  v25 = (*(v21 + 8 * (v18 + 151)))(&a14);
  return (*(v21 + 8 * ((1039 * (*(v20 + 24) == v19 + v23 - 1780)) ^ v22)))(v25);
}

uint64_t sub_1C21DE304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v3 - 1;
  *(a1 + v8) = *(a2 + v8) ^ v5;
  return (*(v7 + 8 * ((((v4 ^ (v8 == 0)) & 1) * v6) ^ v2)))();
}

uint64_t sub_1C21DE334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  if (v24 <= 0x30)
  {
    v24 = 48;
  }

  else
  {
    v24 = v24;
  }

  return (*(v25 + 8 * ((1979 * (((229 * (a24 ^ 0x480u)) ^ (v27 - 182)) + v24 + 1 + v26 < 0x40)) ^ (229 * (a24 ^ 0x480)))))();
}

uint64_t sub_1C21DE6CC@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + v4);
  v6 = v4 - 1;
  *(a2 + v6) = v5;
  return (*(v2 + 8 * (a1 | (16 * (v6 == ((a1 - 1370266543) & 0x51AC9BD3) - 914)))))();
}

uint64_t sub_1C21DE798(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = *(v7 + 48 * v5 + 36);
  v11 = ((v4 - v8 - 156) ^ 0xBFF0739D) + v9 < a3 && v9 != ((3 * (v4 ^ 0x459)) ^ (a4 - 477));
  return (*(v6 + 8 * ((v11 | (8 * v11)) ^ v4)))();
}

void sub_1C21DE824(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = v8 - (**(a2 + 8) == (v9 ^ 0xD9));
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1472192017;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v11 = *(a1 + 96) + 528;
  v12 = *(a2 + 8) + (*(a2 + 4) - v10);
  v13 = 50899313 * (((&a5 | 0x306D267F) + (~&a5 | 0xCF92D980)) ^ 0x1AA60C04);
  a5 = v13 ^ 0x8D8;
  a8 = v10 - v13 - 1234645025;
  a6 = v12;
  a7 = v11;
  (*(a3 + 19936))(&a5);
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v10);
  JUMPOUT(0x1C21DE944);
}

uint64_t sub_1C21DEE18()
{
  v6 = v0 + v2 + (((v4 ^ 0x65656AD0) - 1701145296) ^ ((v4 ^ 0x8D9637A9) + 1919535191) ^ ((v4 ^ 0x2FF7C2D8 ^ (251 * (v5 ^ 0x27D) - 972941094) & 0x39FDE4BD) - 804766289)) + 1602493780;
  v7 = v3 - 1783862372;
  v8 = (v7 < 0xB0FEBAB8) ^ (v6 < 0xB0FEBAB8);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xB0FEBAB8;
  }

  return (*(v1 + 8 * ((187 * v9) ^ v5)))();
}

uint64_t sub_1C21DEEF8@<X0>(uint64_t a1@<X8>)
{
  v4 = 143681137 * ((2 * (&v6 & 0x41FFE500) - &v6 - 1107289346) ^ 0xDF3AADB6);
  v6 = (v3 - 968) ^ v4;
  v7 = v1;
  v8 = (v2 ^ ((v2 ^ 0x82585F4F) + 1282288686) ^ ((v2 ^ 0xC651D9BA) + 141011673) ^ ((v2 ^ 0x883DF587) + 1175160550) ^ 0x995DE4FB ^ ((((v3 - 638) | 0x406) ^ 0x33CB8B98) + (v2 ^ 0xFDFDFFEF))) - v4;
  return (*(a1 + 8 * (v3 ^ 0xC3C)))(&v6);
}

uint64_t sub_1C21DF20C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  *v12 = a1;
  *v11 = v10;
  a9 = ((a2 ^ 0x3CE) + 1628) ^ (50899313 * ((317782853 - (&a9 | 0x12F0FB45) + (&a9 | 0xED0F04BA)) ^ 0xC7C42EC0));
  a10 = a5;
  v14 = (*(v13 + 8 * (a2 ^ 0xB3B)))(&a9);
  return sub_1C21DF298(v14);
}

uint64_t sub_1C21DF298()
{
  v8 = v6;
  v7 = (v4 + 1250) ^ (((-1603197996 - (&v7 | 0xA07123D4) + (&v7 | 0x5F8EDC2B)) ^ 0x7545F651) * v2);
  (*(v1 + 8 * (v4 + 1649)))(&v7);
  return v3 ^ v0;
}

uint64_t sub_1C21DF37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char *a18, int a19, uint64_t a20, unsigned int a21)
{
  v25 = ((((2 * &a16) | 0x91DD2B2A) - &a16 - 1223595413) ^ 0xF6BC3E1F) * v23;
  a21 = v25 + 1603508753;
  a16 = (v24 - 2013066904) ^ v25;
  a17 = v25 ^ 0x2F9D6C54;
  a18 = &a14;
  a20 = a12;
  v26 = (*(v21 + 8 * (v24 + 2067)))(&a16);
  return (*(v21 + 8 * (((a19 == ((2 * v24) ^ 0x74E ^ (v22 - 1130))) * ((68 * (v24 ^ 0x17D)) ^ 0x7F8)) ^ v24)))(v26);
}

uint64_t sub_1C21DF44C()
{
  v4 = v2 - 1703521123;
  v5 = v4 < 0xCAE105DB;
  v6 = v3 - 891222565 < v4;
  if (v3 > 0x351EFA24 == v5)
  {
    LOBYTE(v5) = v6;
  }

  return (*(v0 + 8 * ((26 * ((v5 ^ (v1 + 1)) & 1)) ^ v1)))();
}

void sub_1C21DF668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v27 - 104) = a14;
  *(v27 - 128) = &a22;
  *(v27 - 120) = &a26;
  *(v27 - 112) = (v26 + 1957) ^ (1785193651 * ((((v27 - 144) | 0x85AC74C2) - (v27 - 144) + ((v27 - 144) & 0x7A538B38)) ^ 0x967098E2));
  *(v27 - 144) = &a22;
  *(v27 - 136) = a13;
  JUMPOUT(0x1C21C1CB4);
}

uint64_t sub_1C21DF6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, unsigned int a12, int a13, int a14)
{
  v18 = v14 - 463;
  v19 = v14 - 1091;
  v20 = 1037613739 * (((&a10 | 0xAB8F6BB4) - &a10 + (&a10 & 0x54709448)) ^ 0x7A8D46CB);
  a14 = v20 + 2 * v17 - 285933633 + (((v18 ^ 0x369) + 1030723475) ^ v17);
  a10 = &a9;
  a11 = v15;
  a12 = -104286862 - v20;
  a13 = v19 ^ v20;
  v21 = (*(v16 + 8 * (v18 ^ 0xD5C)))(&a10);
  return (*(v16 + 8 * ((3404 * (*(v15 + 24) == -955998424)) ^ v18)))(v21);
}

uint64_t sub_1C21DF900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21, unsigned int a22)
{
  v24 = 143681137 * (&a19 ^ 0x613AB748);
  LODWORD(a19) = v24 + 1660;
  a20 = v24 ^ 0x696EE914;
  a21 = v24 + 812298630;
  a22 = v24 + 1634098212;
  (*(v23 + 20016))(&a19);
  a21 = 210068311 * (((&a19 | 0x8D1E1B66) - &a19 + (&a19 & 0x72E1E498)) ^ 0x1FC824C2) + 923;
  a19 = &a15;
  v25 = (*(v23 + 19296))(&a19);
  return (*(v23 + 8 * ((975 * (a20 == -955998424)) ^ v22)))(v25);
}

uint64_t sub_1C21DFA4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X7>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = (a3 >> (((v15 - 69) | 0xC0u) + 94)) + HIDWORD(v12) + (*(v14 + 4 * v10) ^ a4);
  *(v14 + 4 * a10) = v16 + a4 - ((v16 << ((v15 - 76) ^ 0xFA)) & a2);
  *(v14 + 4 * v10) = HIDWORD(v16) + a4 - ((2 * HIDWORD(v16)) & 4);
  return (*(v13 + 8 * (v15 ^ (449 * (a1 + 1 == v11)))))();
}

uint64_t sub_1C21DFACC()
{
  v11 = &v7;
  v13 = v9;
  v12 = (v2 + 1455) ^ (143681137 * ((v10 & 0x32556BF7 | ~(v10 | 0x32556BF7)) ^ 0xAC902340));
  (*(v1 + 8 * (v2 + 1548)))(v10);
  v10[1] = v2 - 1037613739 * ((1695583703 - (v10 | 0x65108DD7) + (v10 | 0x9AEF7228)) ^ 0x4BED5F57) + 808;
  v11 = v9;
  (*(v1 + 8 * (v2 + 1568)))(v10);
  if (v10[0] == v0 + v3 - 339)
  {
    v5 = v7;
  }

  else
  {
    v5 = v10[0];
  }

  v11 = v9;
  v10[0] = (v2 + 1217) ^ ((((v10 | 0x63464680) - (v10 & 0x63464680)) ^ 0x498D6CFA) * v4);
  (*(v1 + 8 * (v2 + 1616)))(v10);
  v10[0] = (v3 + 1688) ^ (((v10 + 801127478 - 2 * (v10 & 0x2FC03C36)) ^ 0x50B164C) * v4);
  v11 = v8;
  (*(v1 + 8 * (v3 ^ 0x829)))(v10);
  return v5 ^ v0;
}

uint64_t sub_1C21DFDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v28 = 1556366573 * ((((2 * &a19) | 0x17379D3E) - &a19 - 194760351) ^ 0x6F7FED75);
  HIDWORD(a19) = ((v26 ^ 0x33FAB66F) + ((2 * v26) & 0x67F56CDE) - 4704) ^ v28;
  a20 = a15;
  LODWORD(a21) = 2330 - v28;
  (*(v27 + 19584))(&a19);
  LODWORD(a20) = 1868 - 210068311 * ((((&a19 | 0x3F4B5788) ^ 0xFFFFFFFE) - (~&a19 | 0xC0B4A877)) ^ 0x526297D3);
  a21 = v25;
  a19 = a15;
  (*(v27 + 19680))(&a19);
  v29 = 1556366573 * (((&a19 | 0x289C804) - &a19 + (&a19 & 0xFD7637F8)) ^ 0x666DEBEE);
  LODWORD(a21) = 2330 - v29;
  a20 = a15;
  HIDWORD(a19) = v29 ^ ((v24 ^ 0xB7FEF76F) + 2080091296 + ((2 * v24) & 0x6FFDEEDE));
  (*(v27 + 19584))(&a19);
  v30 = 896639297 * ((1372742318 - (&a19 | 0x51D262AE) + (&a19 | 0xAE2D9D51)) ^ 0xBA860B29);
  a20 = v22;
  a21 = a15;
  LODWORD(a19) = (v23 ^ 0xDBFFF9D6) + ((2 * v23) & 0xB7FFF3AC) + 937162686 + v30;
  HIDWORD(a19) = v30 + 1690;
  v31 = (*(v27 + 19648))(&a19);
  return (*(v27 + 8 * ((3238 * (a22 == -955998424)) ^ 0x5F7u)))(v31);
}

uint64_t sub_1C21E0038(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1C21E0094@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0xD4) + 106;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((750 * v4) ^ 0x546u)))(0);
}

uint64_t sub_1C21E00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, _BYTE *a16, int a17, unsigned int a18, char *a19, unsigned int a20, _BYTE *a21)
{
  a20 = (v22 + 1109) ^ (143681137 * (&a17 ^ 0x613AB748));
  a19 = &a15;
  a21 = a16;
  (*(v21 + 8 * (v22 ^ 0xDB2)))(&a17);
  a21 = a16;
  a19 = &a12;
  a20 = (v22 + 1109) ^ (143681137 * ((2 * (&a17 & 0x604E0C30) - &a17 + 531755981) ^ 0x7E8B4485));
  (*(v21 + 8 * (v22 ^ 0xDB2)))(&a17);
  a19 = a16;
  a18 = v22 - 1037613739 * (((&a17 | 0xE64562E6) - &a17 + (&a17 & 0x19BA9D18)) ^ 0x37474F99) + 462;
  v23 = (*(v21 + 8 * (v22 ^ 0xDCE)))(&a17);
  return (*(v21 + 8 * ((709 * (a17 == v22 - 955999580)) ^ v22)))(v23);
}

uint64_t sub_1C21E02F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x2C4] + a2 + 72);
  v6 = ((2 * a2) & 0xFEFBDFD0) + (a2 ^ 0x7F7DEFE9) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ (v3 - 97)) - 2 * ((HIBYTE(v5) ^ (v3 - 97)) & 0x6B ^ HIBYTE(v5) & 1) + 106;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x7A) - 2 * ((BYTE2(v5) ^ 0x7A) & 0xEE ^ BYTE2(v5) & 4) + 106;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0xF9) - ((2 * (BYTE1(v5) ^ 0xF9)) & 0xD4) + 106;
  *(a1 + v6 + 3) = v5 ^ 0x31;
  return (*(v4 + 8 * ((1951 * (a2 + 4 < LODWORD(STACK[0x320]))) ^ v3)))();
}

uint64_t sub_1C21E03EC(double a1, double a2, double a3, double a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (a11 + v11);
  v15 = vaddq_s8(vaddq_s8(v14[1], a7), vmvnq_s8(vandq_s8(vaddq_s8(v14[1], v14[1]), a5)));
  *&STACK[0x2A4] = vaddq_s8(vaddq_s8(*v14, a7), vmvnq_s8(vandq_s8(vaddq_s8(*v14, *v14), a5)));
  *&STACK[0x2B4] = v15;
  return (*(v13 + 8 * (v12 ^ 0x64)))(v11 + 64);
}

uint64_t sub_1C21E0470@<X0>(int a1@<W8>)
{
  v10 = v5 + v1;
  v11 = v2 < v3;
  *(*(v8 + 8) + 4 * v10) = *(*(v8 + 8) + 4 * (v10 + a1));
  if (v11 == v10 + v6 < v3)
  {
    v11 = v10 + v6 < v2;
  }

  return (*(v9 + 8 * ((v11 * v7) ^ v4)))();
}

uint64_t sub_1C21E0478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x8_t a5, int8x8_t a6)
{
  v12 = v7 + 8;
  *(a2 + (v12 ^ a4 ^ v10) + v6) = vadd_s8(vsub_s8(*(a1 + (v12 ^ a4 ^ v10) + v6), vand_s8(vadd_s8(*(a1 + (v12 ^ a4 ^ v10) + v6), *(a1 + (v12 ^ a4 ^ v10) + v6)), a5)), a6);
  return (*(v11 + 8 * (((a3 != v12) * v8) ^ v9)))();
}

uint64_t sub_1C21E0480@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) + 106;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_1C21E055C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((3 * (((v3 - 729) | 0x4B) ^ 0x1D0) - 1569) * (v4 == 1472192017)) ^ (v3 - 1136))))();
}

uint64_t sub_1C21E05F0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, char a4, __int16 a5, char a6, __int16 a7, char a8, int a9, int a10, char a11, uint64_t a12, _BYTE *a13, uint64_t a14, int a15, unsigned int a16, char *a17, char *a18, _BYTE *a19, _BYTE *a20)
{
  v22 = 19 * (a1 ^ 0x30D);
  LODWORD(a18) = (a1 + 1443) ^ (143681137 * ((2 * (&a15 & 0x74CE40B8) - &a15 + 187809601) ^ 0x6A0B0809));
  a19 = a13;
  a17 = &a11;
  (*(v21 + 8 * (a1 ^ 0xA00u)))(&a15);
  LODWORD(a19) = (v22 - 222) ^ (843532609 * (((&a15 | 0xDD3B9658) - &a15 + (&a15 & 0x22C469A0)) ^ 0xCD87E106));
  a20 = a13;
  a17 = &a4;
  a18 = &a8;
  (*(v21 + 8 * (v22 ^ 0xDCAu)))(&a15);
  LODWORD(a18) = (v22 + 1144) ^ (143681137 * (&a15 ^ 0x613AB748));
  a19 = a13;
  a17 = &a6;
  (*(v21 + 8 * (v22 + 1237)))(&a15);
  a16 = v22 - 1037613739 * ((((2 * &a15) | 0x99326E50) - &a15 - 1285109544) ^ 0x9D9B1A57) + 497;
  a17 = a13;
  v23 = (*(v21 + 8 * (v22 ^ 0xD2Bu)))(&a15);
  return (*(v21 + 8 * ((538 * (a15 == v20 + v22 - 833 - 288)) ^ v22)))(v23);
}

uint64_t sub_1C21E07B0@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X7>, int a4@<W8>)
{
  v13 = (*(a3 + 4 * v7) ^ v4) + (v6 ^ HIDWORD(v8));
  v14 = v13 + ((((a2 - 1097) | 0x281u) - 876) ^ 0xBC8DEC337354AD92) - ((2 * v13) & 0x2E6A95B5ELL);
  *(a3 + 4 * a1) = v14 ^ v10;
  *(a3 + 4 * v7) = HIDWORD(v14) ^ v11;
  return (*(v9 + 8 * (a2 ^ ((v5 + 1 != a4) * v12))))();
}

uint64_t sub_1C21E085C(__n128 a1)
{
  a1.n128_u16[0] = 27242;
  a1.n128_u8[2] = 106;
  a1.n128_u8[3] = 106;
  a1.n128_u8[4] = 106;
  a1.n128_u8[5] = 106;
  a1.n128_u8[6] = 106;
  a1.n128_u8[7] = 106;
  return sub_1C21E0878(3413, a1);
}

uint64_t sub_1C21E0878@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = (v6 + v3 + a2);
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((((v4 + 41) ^ v7) + v3 == v5) * a1) ^ v4)))();
}

uint64_t sub_1C21E0944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, _BYTE *a18, uint64_t a19, int a20, unsigned int a21, char *a22, char *a23, _BYTE *a24, _BYTE *a25)
{
  v27 = v25 & 0x22C7FF;
  a25 = a18;
  a22 = &a14;
  a23 = &a12;
  LODWORD(a24) = (v27 + 420) ^ (843532609 * (((&a20 | 0xAFFF1CA5) - &a20 + (&a20 & 0x5000E358)) ^ 0xBF436BFB));
  (*(v26 + 8 * (v27 + 1996)))(&a20);
  a24 = a18;
  a22 = &a16;
  LODWORD(a23) = (v27 + 1786) ^ (143681137 * (((&a20 | 0xF1A2EEA) - (&a20 & 0xF1A2EEA)) ^ 0x6E2099A2));
  (*(v26 + 8 * (v27 ^ 0x8E9u)))(&a20);
  a21 = v27 - 1037613739 * ((2 * (&a20 & 0x5D5E1310) - &a20 + 581037289) ^ 0xF3A3C196) + 1139;
  a22 = a18;
  v28 = (*(v26 + 8 * (v27 ^ 0x895u)))(&a20);
  return (*(v26 + 8 * (((a20 == -955998424) * ((v27 + 699) ^ 0x3B5)) ^ v27)))(v28);
}

uint64_t sub_1C21E0B00@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, unint64_t a18, int a19, int a20, uint64_t a21, int a22, int a23)
{
  *a16 = a2;
  LODWORD(STACK[0x29C]) = a20;
  STACK[0x2A0] = a18;
  LODWORD(STACK[0x2A8]) = ((v23 + 185) ^ 0x7E9DFA08) - v25 + a23;
  STACK[0x2B0] = a1 + ((v23 + 1112401523) & 0xBDB21FF3 ^ 0xECB759DE) + v25;
  v29 = v23;
  v30 = (*(v24 + 48 * v28 + 8))(a7);
  return (*(v26 + 8 * ((1479 * (v30 + v27 - ((2 * v30) & 0x8E093E50) == v27)) ^ v29)))();
}

uint64_t sub_1C21E0C48(uint64_t a1, uint64_t a2)
{
  v8 = *(v5 + v3 - 15);
  *(v5 + v4 + 1136) = *(v5 + v3 - 31);
  *(v5 + v4 + 1152) = v8;
  return (*(v2 + 8 * ((((v5 & 0x3FFFFFE0) == 32) * ((139 * (v7 ^ (v6 + 1881))) ^ 0x35B)) ^ (v7 - 362620874))))(a1, a2, (v5 & 0x3FFFFFE0) - 32);
}

uint64_t sub_1C21E0CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a5 & 0xFFFFFFF8;
  v19 = (a7 - 1020) ^ 0xFDFu;
  v20 = *(v17 + 8 * (((v18 == 8) * v19) ^ (a7 - 1379)));
  return v20(a1, a2, a3, v18, a5, v19, 8, v20, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1C21E0D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, int8x16_t a7@<Q0>, int8x8_t a8@<D1>)
{
  v13 = a1 - 8;
  v15.val[0].i64[0] = (v11 + v13 - 1) & a4;
  v15.val[0].i64[1] = (v11 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v13) & 0xFLL ^ 8;
  *(a2 + v13) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a2 + v13)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v10 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v12 + 8 * (((a6 != v13) * a5) ^ a3)))();
}

uint64_t sub_1C21E0E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = (v18 + 823) ^ (((((v22 - 136) | 0xBD600DE9) + (~(v22 - 136) | 0x429FF216)) ^ 0x97AB2792) * v19);
  *(v22 - 128) = &a17;
  *(v22 - 120) = v21;
  v23 = (*(v20 + 8 * (v18 + 2191)))(v22 - 136);
  return (*(v20 + 8 * (((*(v22 - 132) <= ((v18 + 1570638571) & 0xA261F4B9 ^ (v17 + 168))) * ((v18 + 17) ^ 0x103)) ^ v18)))(v23);
}

uint64_t sub_1C21E0F4C(int8x16_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = veorq_s8(*(v6 + a4 + 16), a1);
  v10 = (v7 + a4);
  v10[-1] = veorq_s8(*(v6 + a4), a1);
  *v10 = v9;
  return (*(v8 + 8 * (((v5 == a4) * a3) ^ v4)))();
}

uint64_t sub_1C21E0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, _BYTE *a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, char *a23, unsigned int a24, _BYTE *a25)
{
  a24 = (v25 + 1010) ^ (143681137 * (&a21 ^ 0x613AB748));
  a23 = &a18;
  a25 = a15;
  (*(v26 + 8 * (v25 ^ 0xDD1)))(&a21);
  a25 = a15;
  a24 = (v25 + 1010) ^ (143681137 * ((2 * (&a21 & 0x3F323E48) - &a21 + 1087226290) ^ 0x21F776FA));
  a23 = &a14;
  (*(v26 + 8 * (v25 ^ 0xDD1)))(&a21);
  a22 = v25 - 1037613739 * (((&a21 | 0x2919829F) - (&a21 & 0x2919829F)) ^ 0xF81BAFE0) + 363;
  a23 = a15;
  v27 = (*(v26 + 8 * (v25 + 1123)))(&a21);
  return (*(v26 + 8 * (((a21 != (((v25 + 25) | 0x208) ^ 0xC7049820)) * ((509 * (v25 ^ 0x4E4)) ^ 0x5E9)) ^ v25)))(v27);
}

uint64_t sub_1C21E1130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17, unsigned int a18)
{
  v20 = 143681137 * (((&a15 | 0x514F43FF) + (~&a15 | 0xAEB0BC00)) ^ 0x3075F4B6);
  LODWORD(a15) = v20 + 1660;
  a16 = v20 ^ 0x696EE914;
  a17 = v20 + 812298630;
  a18 = v20 + 1634098212;
  (*(v19 + 20016))(&a15);
  a15 = &a13;
  a17 = 210068311 * (&a15 ^ 0x92D63FA4) + 923;
  v21 = (*(v19 + 19296))(&a15);
  return (*(v19 + 8 * (((2 * (a16 == -955998424)) | (32 * (a16 == -955998424))) ^ v18)))(v21);
}

void sub_1C21E1264(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, _BYTE *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = 2 * (a2 ^ 0xFBA8C83DD6895494);
  v41 = ((a2 ^ 0xFBA8C83DD6895494) - (v40 & 0xE071E1FB4BF28440) + (((v36 + 622862494) | 0x85294C0u) ^ 0xF038F0FD888BFEF4)) ^ a3;
  v42 = v41 ^ 0x361137B77AA2F1C1;
  if (((a2 ^ 0xFBA8C83DD6895494) & 0x82EE1687ACCADB62) != 0)
  {
    v43 = a2 ^ 0xFBA8C83DD6895494;
  }

  else
  {
    v43 = v41 ^ 0x361137B77AA2F1C1;
  }

  v44 = v43 & (a3 ^ 0x39D638B520A44C1ELL);
  v45 = a1 ^ (a4 | (a36 << 32));
  v46 = v38 ^ v45 ^ 0x319352D94FDF7DD1;
  v47 = ((a2 ^ 0xFBA8C83DD6895494) + 0x6AD0305B1D3AF6E8 - (v40 & 0xD5A060B63A75EDD0)) ^ v39;
  v48 = v44 ^ v46 ^ 0x41B13EED9ADDBDCLL;
  if (v47 == 0x68040451F630332FLL)
  {
    v48 = v46 ^ 0x7BE4EC1126522423;
  }

  v49 = (v44 ^ v46 ^ 0x807BA9758BBEABDLL) + 2 * (v44 & (v46 ^ 0x807BA9758BBEABDLL)) - 2 * ((v48 ^ 0x73E356867EE9CE9ELL) & v44);
  v50 = v46 & 0xC7486B1162830A14;
  v51 = (v46 ^ 0xF7F84568A7441542) & (a3 ^ 0x161AC5BBDD8B9F5);
  v52 = v46 & 0x4971B3EE2BA17733 ^ (v46 ^ 0x807BA9758BBEABDLL) & (v45 ^ 0x95C7E142E4BADE22) ^ 0x5DC64478E3396EF5 ^ v47;
  v53 = v50 ^ v45 ^ 0x319352D94FDF7DD1 ^ v51 ^ v52;
  *(&v54 + 1) = v53 ^ 0x9D94AD3991697782;
  *&v54 = v53;
  v55 = v53 ^ 0x9D94AD3991697782 ^ __ROR8__(v53 ^ 0x9D94AD3991697782, 61) ^ (v54 >> 39);
  v56 = __ROR8__(__ROR8__(v55 ^ 0x938CEAA195801C64 ^ (v49 >> 6) ^ (v49 >> 1) ^ v49 ^ 0xC06BB3ECF95C445BLL ^ ((v49 ^ 0xC06BB3ECF95C445BLL) << 58) ^ ((v49 ^ 0xC06BB3ECF95C445BLL) << 63) ^ 0x8D75E575D626FE7CLL, 31) ^ 0xFED1365F4DB84391, 33);
  v57 = a3 ^ 0x4F0744BBF5DAB779 ^ ((v41 ^ 0xC9EEC848855D0E3ELL) & (v47 ^ 0x50B56594F7245060) | v42 & 0x38B161C50114634FLL);
  v58 = (-v49 ^ (v57 - (v49 ^ v57)) ^ 0xEE0D3988867E6EB8 ^ (v49 - ((2 * v49) & 0xDC1A73110CFCDD70) - 0x11F2C67779819148)) + v57;
  v59 = v58 ^ __ROR8__(v58, 17) ^ (v58 << 54) ^ (v58 >> 10);
  v60 = v45 & 0x670C5CA862BFB619 ^ v42 ^ 0x3CFB9D43BFF0DAE9 ^ (v47 ^ 0xF0F7A7066B707AC9) & (v45 ^ 0x2349AD5330E456EELL);
  *&v54 = __ROR8__(__ROR8__(v60, 48) ^ 0x6FEAAD0401AAA28DLL, 16);
  v61 = v54 ^ 0x4143EE11C9B315DBLL ^ ((v54 ^ 0x4143EE11C9B315DBLL) << 23) ^ (((v54 >> 41) ^ (v54 >> 7) ^ 0x47367515D72FAB3ALL) & (((v54 ^ 0x4143EE11C9B315DBLL) << 57) ^ 0xBBFFFFFFFFFFFFFFLL) | ((v54 ^ 0x4143EE11C9B315DBLL) << 57) & 0xB800000000000000);
  v62 = (v59 & 0xEDD53BCB3D4AEB1DLL | (v61 ^ 0xC626202FCC0845B2) & ~v59) ^ v56;
  v63 = v61 ^ 0xE7125C3E61770DCLL;
  v64 = v59 ^ 0x6B5C64826C4C8853 ^ v61 ^ 0xE7125C3E61770DCLL;
  v65 = v60 ^ v52;
  *(&v54 + 1) = v65 ^ 0xD5B5FF7F1D6DB37FLL;
  *&v54 = v65;
  v66 = v65 ^ 0xD5B5FF7F1D6DB37FLL ^ __ROR8__(v65 ^ 0xD5B5FF7F1D6DB37FLL, 28) ^ (v54 >> 19) ^ v63;
  *(&v54 + 1) = v64 & 0x6EA262F0FB67B5FLL ^ v59 ^ 0x6B5C64826C4C8853 ^ v62 ^ (v64 ^ 0xB121A55A84E6A9DFLL) & (v66 ^ 0x3CF446F224E3F4C2) ^ 0x7F469C41618264F4;
  *&v54 = v64 & 0x6EA262F0FB67B5FLL ^ v59 ^ 0x6B5C64826C4C8853 ^ v62 ^ (v64 ^ 0xB121A55A84E6A9DFLL) & (v66 ^ 0x3CF446F224E3F4C2);
  v67 = v54 >> 17;
  *&v54 = __ROR8__(*(&v54 + 1), 10);
  v68 = ((v67 ^ v54 ^ 0x73F9F6F7C71131C6) - ((2 * (v67 ^ v54 ^ 0x73F9F6F7C71131C6)) & 0xFDBBED05E8AC4318) - 0x122097D0BA9DE74) ^ *(&v54 + 1);
  v69 = v66 & 0x538DFC67B96AB88 ^ (v66 ^ 0xC5E19F22D4AA7062) & (v55 ^ 0xC128E8FB2B34A41CLL) ^ 0x22F718F6C16884F9 ^ v64;
  v70 = (v69 & 0xF2F0F93CF1701AFDLL ^ 0x4CABB5AC48585B17) & (v69 & 0xD0F06C30E8FE502 ^ 0xF6F6FBBEF3FD9FFFLL) | v69 & 0x10402430687A400;
  v71 = __ROR8__(v70 ^ 0x91CD4101641509E3, 7);
  *&v54 = __ROR8__(v70 ^ 0x91CD4101641509E3, 41);
  v72 = ((v71 ^ v54 ^ 0x526B2368BC8D5222) - 2 * ((v71 ^ v54 ^ 0x526B2368BC8D5222) & 0x265E11044F3E9579 ^ (v71 ^ v54) & 0x11) + 0x265E11044F3E9568) ^ v70 ^ 0x91CD4101641509E3;
  v73 = v55 & 0xE78622F7E2FE8016 ^ v66 ^ 0x98AD2F6AC8CB092FLL ^ (v56 ^ 0xE23B96ECFFC25FC9) & (v55 ^ 0x3BEFC8C2AF5DF06BLL);
  *(&v54 + 1) = v73 ^ v55 ^ 0x938CEAA195801C64;
  *&v54 = v73 ^ v55;
  v74 = v70 ^ v73 ^ ((v70 ^ v73 ^ 0x225FF68DE4FD1BAFLL) >> 19) ^ ((v70 ^ v73 ^ 0x225FF68DE4FD1BAFLL) >> 28) ^ ((v70 ^ v73 ^ 0x314337B75D5BDCAALL) << 36) ^ ((v70 ^ v73 ^ 0x314337B75D5BDCAALL) << 45) ^ 0x45CA362F1F800CEFLL;
  v75 = (v56 ^ 0xFA424BE4E2C32020) & (v59 ^ 0xEC78362CB9B7B6FLL) ^ v56 & 0xEC78362CB9B7B6FLL ^ __ROR8__((v54 >> 54) ^ 0x1B5DFABBB9A04A15, 10);
  LOBYTE(v51) = *(v37 + ((v75 >> 61) ^ 0x53));
  v76 = (v72 - ((2 * v72) & 0xBD373AECCA9E1168) - 0x216462899AB0F74CLL) ^ v74;
  v77 = (v51 ^ ((v51 ^ 0x3C) - ((2 * (v51 ^ 0x3C) + 2) & 0x60) - 79) ^ 0x73 ^ ((v51 ^ (57 - (v51 ^ 0xFA)) ^ ((v51 ^ 0x3C) - ((2 * (v51 ^ 0x3C) + 2) & 0x7A) - 66) ^ 0x81) + 1)) - 62;
  v78 = v77 ^ (v75 >> 39) ^ v75 ^ 0x9BE16AC656990F12 ^ (8 * (v75 ^ 0x9BE16AC656990F12)) ^ ((v75 ^ 0x9BE16AC656990F12) << 25);
  v79 = v68 ^ 0x147D2CDEEA4 ^ v72;
  v80 = (~(2 * v76) + v76) & (v78 ^ 0xFC6605A4FE74CC09) ^ v79;
  v81 = ((v80 ^ 0x26974B18501E2B14) >> 7) ^ ((v80 ^ 0x26974B18501E2B14) >> 41) ^ ((v80 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v80 ^ 0x26974B18501E2B14) - (((v80 ^ 0x26974B18501E2B14) << 58) & (2 * (v80 ^ 0x26974B18501E2B14))));
  v82 = ((v68 ^ 0x147D2CDEEA4) - 2 * ((v68 ^ 0x147D2CDEEA4) & 0x5E9B9D76654F08B6 ^ v68 & 2) - 0x216462899AB0F74CLL) ^ v74;
  if (!v77)
  {
    v82 = v76;
  }

  v83 = v82 & ~v79;
  v84 = v62 ^ (v62 << 58) ^ 0x672DF84F8929F4F8;
  v85 = (v62 >> 1) ^ 0x4396FC27C494FA7CLL;
  v86 = v85 & 0x100000000000;
  if ((v85 & 0x100000000000 & v84) != 0)
  {
    v86 = -v86;
  }

  v87 = ((v62 << 63) | 0xE2F6B6825AC56C3) ^ (v62 >> 6) ^ v85 & 0xFFFFEFFFFFFFFFFFLL ^ (v86 + v84);
  v88 = v78 ^ v87;
  v89 = v78 ^ v87 ^ (v68 ^ 0xFFFFFEB82D32115BLL) & v72;
  v90 = v68 ^ v83 ^ 0x7370AD2F82FD2592 ^ v89 ^ 0xF055D92DE5FC3D19;
  v91 = __ROR8__(v90, 10);
  v92 = (v90 ^ v91 ^ (v90 >> 17)) + (v90 << 47) - 2 * ((v90 ^ v91 ^ (v90 >> 17)) & (v90 << 47));
  v93 = v78 & 0xFE5D345CDB216EAALL ^ 0x2193058010122A2 ^ (v78 ^ 0x399FA5B018B33F6) & (v87 ^ 0xF26EE8D5C0A99FBALL);
  v94 = (v76 ^ -v76 ^ (v93 - (v76 ^ v93))) + v93;
  v95 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v78 ^ (((v88 ^ 0xFAA26D21A03C2E6) & (v68 ^ 0x147D2CDEEA4)) - ((2 * ((v88 ^ 0xFAA26D21A03C2E6) & (v68 ^ 0x147D2CDEEA4))) & 0x6A68B0B4BC5461AALL) + 0x3534585A5E2A30D5) ^ v94 ^ 0xFB2AA5C65E1D2E60, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v96 = v95 ^ 0x93DD7BE3C3310A2CLL ^ ((v95 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v95 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v95 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v95 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v97 = (((((2 * (0x34CDB152F4A04500 - ((v89 ^ 0x890033C1A8B48515) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v89 ^ 0x890033C1A8B48515) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v89 ^ 0x890033C1A8B48515) << 58) ^ ((v89 ^ 0x890033C1A8B48515) - ((((v89 ^ 0x890033C1A8B48515) << 58) & 0xF800000000000000 ^ (v89 ^ 0x890033C1A8B48515) & 0xF9BFE541A2368FBELL | (v89 ^ 0x890033C1A8B48515) & 0x6401ABE5DC97041) ^ ((v89 ^ 0x890033C1A8B48515) << 58) & 0x400000000000000))) + (v89 ^ 0x890033C1A8B48515)) ^ ((v89 ^ 0xF055D92DE5FC3D19) << 63) ^ __ROR8__(((v89 ^ 0x890033C1A8B48515) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v96, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v98 = v97 & 0xA8F512753D8F931ELL ^ ((v89 ^ 0x890033C1A8B48515) >> 1) & 0x28F512753D8F931ELL | (v97 ^ ((v89 ^ 0x890033C1A8B48515) >> 1)) & 0x570AED8AC2706CE1;
  v99 = v98 ^ v81 & ~v92;
  *(&v100 + 1) = v99;
  *&v100 = v99 ^ 0xD3DA1E3360BF843ALL;
  v101 = ((v100 >> 1) ^ v99 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v99 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v100 >> 1) ^ v99 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v99 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  v102 = v80 ^ 0x6E04C15915AB860ALL ^ v94 ^ __ROR8__(v80 ^ 0x6E04C15915AB860ALL ^ v94, 19) ^ ((v80 ^ 0x6E04C15915AB860ALL ^ v94) << 36) ^ ((v80 ^ 0x6E04C15915AB860ALL ^ v94) >> 28) ^ v81;
  v103 = ((v98 ^ v96) + (v98 | ~v96) + 1) ^ v102;
  v104 = v96 ^ v92 & ~v98 ^ 0x425764BB5877DA25 ^ v103;
  v105 = v104 ^ (v104 >> 61) ^ (v104 >> 39) ^ (8 * v104) ^ (v104 << 25);
  *(&v100 + 1) = v99;
  *&v100 = v99 ^ 0xD3DA1E3360BF843ALL;
  v106 = (v100 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v105 ^ v101, 3) ^ 0x55413C453664FDCDLL;
  v107 = v92 ^ v81;
  v108 = v96 & ~v102 ^ v92 ^ v81;
  v109 = v108 ^ 0xFD;
  v110 = v108 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v108 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v108 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v108 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v111 = v108 ^ 0x97F6A7E5F6E8F58ALL ^ v103 ^ __ROR8__(v108 ^ 0x97F6A7E5F6E8F58ALL ^ v103, 19) ^ ((v108 ^ 0x97F6A7E5F6E8F58ALL ^ v103) << 36) ^ ((v108 ^ 0x97F6A7E5F6E8F58ALL ^ v103) >> 28);
  *&v100 = __ROR8__(v106, 61);
  v112 = ((v111 | v110) ^ v110 & v111) & 0x2D23D578E308995FLL | (v111 ^ v110) & 0xD2DC2A871CF766A0;
  v113 = v102 & ~v107;
  v114 = (v100 ^ 0xAA09E229B327EE6ALL) & ~v105 ^ v112;
  v115 = v92 ^ 0x44C9D571A5C4A51CLL ^ v113 ^ v99 ^ ((v92 ^ 0x44C9D571A5C4A51CLL ^ v113 ^ v99) >> 10) ^ ((v92 ^ 0x44C9D571A5C4A51CLL ^ v113 ^ v99) << 47) ^ ((v92 ^ 0x44C9D571A5C4A51CLL ^ v113 ^ v99) << 54) ^ ((v92 ^ 0x44C9D571A5C4A51CLL ^ v113 ^ v99) >> 17);
  v116 = ((v114 ^ v105) + ((v100 ^ 0x55F61DD64CD81195) & v115) - 2 * ((v114 ^ v105) & (v100 ^ 0x55F61DD64CD81195) & v115)) ^ 0x6005BE354A5BB0B2;
  v117 = v116 >> (v59 & 0x3D) >> (v59 & 0x3D ^ 0x3D);
  v118 = (8 * v116) ^ (v116 >> 39) ^ ((v116 ^ (v116 << 25)) & 0xF21553F3FD140018 ^ v117 & 0x18 | (v116 ^ (v116 << 25)) & 0xDEAAC0C02EBFFE7 ^ v117 & 0xE7);
  v119 = v105 & ~v112 ^ v115 ^ v110;
  v120 = v119 ^ 0x2DB5B6AF87F64351 ^ ((v119 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v119 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v119 ^ 0x2DB5B6AF87F64351) >> 41) | ((v119 ^ 0x2DB5B6AF87F64351) << 57));
  v121 = v119 ^ 0x93C23431B76D41FLL ^ v114;
  v122 = (v121 ^ (v121 >> 28)) + (v121 >> 19) - 2 * ((v121 ^ (v121 >> 28)) & (v121 >> 19));
  v123 = v121 << 36;
  v124 = v122 ^ (v121 << 45);
  v125 = v112 & ~(v115 ^ v110);
  v126 = v124 ^ (v121 << 36);
  v127 = v100 ^ 0xAA09E229B327EE6ALL ^ v110 & ~v115;
  v128 = v126 ^ v120;
  v129 = v115 ^ 0xF374A001D380BDC2 ^ v125 ^ v127 ^ ((v115 ^ 0xF374A001D380BDC2 ^ v125 ^ v127) >> 10) ^ ((v115 ^ 0xF374A001D380BDC2 ^ v125 ^ v127) << 47) ^ ((v115 ^ 0xF374A001D380BDC2 ^ v125 ^ v127) << 54) ^ ((v115 ^ 0xF374A001D380BDC2 ^ v125 ^ v127) >> 17);
  v130 = v129 ^ v120;
  *(&v100 + 1) = v127;
  *&v100 = v127 ^ 0x6DC4FB0BD4FFFF44;
  v131 = v118 & ~(v126 ^ v120) ^ v129 ^ v120;
  v132 = (v100 >> 1) ^ v127 ^ 0x6DC4FB0BD4FFFF44 ^ ((v127 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v118;
  v133 = (v127 ^ 0x6DC4FB0BD4FFFF44) >> 6;
  v134 = v123 == v124;
  v135 = v132 + v133;
  if (!v134)
  {
    v133 = ~(v133 ^ v132);
  }

  v136 = v135 - 2 * (v133 & v132);
  v137 = v136 ^ (((~v129 | 0xFFFFFFFFEFFFFFFFLL) - (v129 & 0x4000000000)) ^ v129 & 0xFFFFFFBFEFFFFFFFLL) & v130;
  v138 = __ROR8__(((v128 << (v122 & 0x2B) << (v122 & 0x2B ^ 0x2B)) + (v128 >> 21)) ^ __ROR8__(v136 & ~v118, 21) ^ 0x6D12C2B6EED373A6, 43);
  v139 = v129 & ~v136 ^ v118 ^ v138;
  v140 = v131 ^ 0x5035F38BF1002A3ALL ^ v138;
  v141 = v140 ^ (v140 >> 19);
  v142 = v141 & 0xD99EEE0927173347 ^ (v140 << 45) & 0xD99EE00000000000 | v141 & 0x266111F6D8E8CCB8 ^ (v140 << 45) & 0x2661000000000000;
  v143 = v139 ^ 0xE013161F571CC4C5 ^ ((v139 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v139 ^ 0xE013161F571CC4C5));
  v144 = v140 << 36;
  v145 = ((v140 << 45) ^ (0xFFFFE00000000000 * v140) ^ (v142 + v141 - 2 * v142)) + v141;
  v146 = (v140 << 36) & 0x78E1346000000000;
  v147 = v145 ^ (v140 >> 28);
  v148 = v147 & 0x78E134634F73AA70 ^ v146 | v147 & 0x871ECB9CB08C558FLL ^ v144 & 0x871ECB9000000000;
  v149 = v148 + 0x6AD0305B1D3AF6E8 - 2 * (v148 & 0x6AD0305B1D3AF6EBLL ^ v147 & 3);
  a5[65] = v149 ^ 0xE8;
  v150 = *(a33 + ((69 * ((v149 ^ 0x6AD0305B1D3AF6E8uLL) >> (v147 & 8) >> (v147 & 8 ^ 8))) ^ 0x3DLL));
  v151 = v143 ^ (((v139 ^ 0xE013161F571CC4C5) >> 61) | (v139 << 25));
  LOBYTE(v146) = ((((v150 - 18) ^ 0x57) + v150 - 18 - 2 * ((v150 - 18) ^ 0x57)) ^ 0xFE) + v150 - 18;
  a5[54] = ((v143 ^ (((v139 ^ 0xE013161F571CC4C5) >> 61) | (v139 << 25))) >> 24) ^ 0x8A;
  a5[28] = BYTE2(v149) ^ 0x3A;
  a5[41] = (v146 >> 2) | (v146 << 6);
  a5[35] = BYTE1(v143);
  a5[21] = BYTE2(v143);
  a5[58] = (v149 ^ 0x6AD0305B1D3AF6E8uLL) >> (v109 & 0x20) >> (v109 & 0x20 ^ 0x20u);
  v152 = v126 ^ v129;
  if (v130 == -1)
  {
    v153 = 0;
  }

  else
  {
    v153 = v152;
  }

  a5[17] = BYTE4(v151) ^ 0x89;
  a5[5] = BYTE3(v149) ^ 0x1D;
  a5[47] = BYTE5(v149) ^ 0x30;
  v154 = v137 - ((2 * v137) & 0x5A47EBDAAC1EB792);
  a5[14] = HIBYTE(v149) ^ 0x6A;
  a5[48] = BYTE6(v149) ^ 0xD0;
  a5[16] = (v151 ^ 0x3EAE39898A000000) >> (v139 & 0x28) >> (v139 & 0x28 ^ 0x28);
  v155 = v154 + 0x2D23F5ED560F5BC9;
  v156 = v154 - 0x5BDA183C59819C5ELL;
  v157 = 0x88FE0E29AF90F827;
  if (v155 < 0x88FE0E29AF90F827)
  {
    v156 = v155;
    v157 = 0;
  }

  if (v156)
  {
    v158 = v155;
  }

  else
  {
    v158 = v157;
  }

  *(&v159 + 1) = v158;
  *&v159 = v155;
  a5[6] = v151;
  v160 = *(v37 + (BYTE6(v151) ^ 0xF9));
  v161 = (v159 >> 1) ^ v155 ^ (v158 << 58) ^ (v158 >> 6);
  a5[10] = BYTE1(v161);
  a5[18] = BYTE4(v161);
  v162 = v129 ^ v153 & v128 ^ 0x29E1AB0124FF49E7 ^ v137;
  *&v159 = __ROR8__(v162, 10);
  v163 = (v162 ^ v159 ^ (v162 << 47)) + (v162 >> 17) - 2 * ((v162 ^ v159 ^ (v162 << 47)) & (v162 >> 17));
  a5[25] = BYTE2(v161);
  a5[42] = HIBYTE(v151) ^ 0x3E;
  a5[12] = BYTE5(v161);
  a5[23] = BYTE6(v161);
  a5[44] = v161;
  a5[24] = BYTE3(v161);
  a5[30] = (v160 ^ 0xFA) - 119;
  a5[62] = HIBYTE(v161);
  a5[19] = (v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17));
  v164 = *(a35 + ((((v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17))) >> 8) ^ 0x27) + 279);
  a5[8] = ((v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17))) >> 24;
  a5[33] = ((v162 ^ v159) + (v162 >> 17) - 2 * ((v162 ^ v159) & (v162 >> 17))) >> 16;
  a5[4] = (v164 ^ BYTE1(v163) ^ 0x2D ^ ((BYTE1(v163) ^ 0x2D) + 72) ^ 0x41) + 15;
  v165 = *(a34 + (((v163 >> 28) & 0xF0 | (v163 >> 36) & 0xF) ^ 0x5C));
  v166 = v131 ^ __ROR8__(v131 ^ 0x4734313A1F2B2857, 41) ^ ((v131 ^ 0x4734313A1F2B2857) >> 7);
  a5[46] = HIBYTE(v163);
  a5[43] = BYTE6(v163);
  a5[38] = BYTE5(v163);
  a5[31] = ((v165 >> 5) | (8 * v165)) ^ 0xC1;
  LOBYTE(v163) = *(v37 + ((((((4 * v166) | (v166 >> 6)) ^ 0xA) >> 2) | ((((4 * v166) | (v166 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a5[55] = BYTE4(v166) ^ 0x3A;
  a5[34] = BYTE3(v166) ^ 0x1F;
  a5[32] = BYTE1(v166) ^ 0x28;
  v167 = v166 ^ ((v131 ^ 0x4734313A1F2B2857) << 57);
  a5[15] = (v163 ^ 0xFA) - 119;
  a5[7] = (v167 ^ 0x4734313A1F2B2857uLL) >> (v64 & 0x10 ^ 0x10) >> (v64 & 0x10);
  a5[61] = BYTE5(v166) ^ 0x31;
  a5[56] = (*(v37 + (BYTE6(v166) ^ 0x63)) ^ 0xFA) - 119;
  a5[51] = HIBYTE(v167) ^ 0x47;
  *a31 = a36 + 1;
  JUMPOUT(0x1C21E26D0);
}

uint64_t sub_1C21E2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20, int a21)
{
  v26 = 1556366573 * (((&a17 | 0xBF1F23C2) - (&a17 & 0xBF1F23C2)) ^ 0xDBFB0028);
  a18 = (((2 * v24) & 0xF7FF7DBE) + 939189552 + (v24 ^ 0xFBFFBEDF)) ^ v26;
  a19 = a14;
  LODWORD(a20) = 2330 - v26;
  (*(v25 + 19584))(&a17);
  v27 = 1556366573 * (((&a17 ^ 0x352CE236) - 148145018 - 2 * ((&a17 ^ 0x352CE236) & 0xF72B7C86)) ^ 0xA6E3BD5A);
  a18 = ((v23 ^ 0xFFFABF3F) + ((2 * v23) & 0xFFF57E7E) + 872408272) ^ v27;
  a19 = a14;
  LODWORD(a20) = 2330 - v27;
  (*(v25 + 19584))(&a17);
  v28 = 896639297 * ((836621856 - (&a17 | 0x31DDD620) + (&a17 | 0xCE2229DF)) ^ 0xDA89BFA7);
  a19 = v21;
  a20 = a14;
  a17 = (v22 ^ 0xD3DFF5D5) + ((2 * v22) & 0xA7BFEBAA) + 1073478591 + v28;
  a18 = v28 + 1690;
  v29 = (*(v25 + 19648))(&a17);
  return (*(v25 + 8 * ((845 * (a21 == -955998424)) ^ 0x49Au)))(v29);
}

void sub_1C21E2B24(uint64_t a1)
{
  v1 = (**(*(a1 + 16) + 8) & 2) == 43 * ((*a1 + 1504884919 * (a1 ^ 0xFBC3B71B)) ^ 0x52A) - 1333;
  v2 = (*a1 + 1504884919 * (a1 ^ 0xFBC3B71B)) ^ 0x1AD;
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1C21E2D50@<X0>(int a1@<W8>)
{
  v7 = v2 - 2;
  v8 = v1 + 2;
  *(v7 + 805) = (v8 ^ v4) * (v8 + 17);
  *(v7 + ((a1 + 547) | 0x100)) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v6 + 8 * (((v3 == 2) * v5) ^ (a1 + 789))))();
}

uint64_t sub_1C21E2E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  LODWORD(STACK[0x40C]) = 750382608;
  LODWORD(STACK[0x304]) = 128;
  v62 = 1388665877 * ((((v60 - 192) | 0xD6E19AA6) - (v60 - 192) + ((v60 - 192) & 0x291E6558)) ^ 0x5B4CF84A);
  *(v60 - 152) = a59 + 928;
  *(v60 - 144) = 0;
  *(v60 - 136) = a43;
  *(v60 - 128) = a59;
  *(v60 - 192) = a59 + 656;
  *(v60 - 184) = v62 + v59 - 122;
  *(v60 - 176) = v62 ^ 0x52076F0B;
  *(v60 - 168) = &STACK[0x304];
  *(v60 - 160) = 0;
  v63 = (*(v61 + 8 * (v59 ^ 0xA1D)))(v60 - 192);
  return (*(STACK[0x2D8] + 8 * ((1585 * (*(v60 - 180) == ((294 * ((v59 - 1356830319) & 0x50DF9BBF ^ 0x901)) ^ 0xC7049C5A))) ^ v59)))(v63);
}

uint64_t sub_1C21E3810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = (v5 ^ 0xEF3021DA) + v7 + a3 * (*(*(v8 + 8) + a2) ^ v5);
  *(v12 + 4 * v11) = v13 + v5 - ((v13 << (v10 - 40)) & (v6 + 366));
  return (*(v4 + 8 * (v10 ^ ((a4 == 0) * v9))))();
}

uint64_t sub_1C21E38C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, unsigned int a11, unsigned int a12)
{
  v17 = *(a1 + 24) - v15 + *(v12 + 16) - 744791710 + 8;
  v18 = 843532609 * (((&a9 | 0x76D6CBAC) - &a9 + (&a9 & 0x89293450)) ^ 0x666ABCF2);
  a9 = v18 + v16 + 711;
  a10 = v12;
  a11 = v18 + 1095742566;
  a12 = (((v16 - 404) | 0x8C0) ^ 0xF14E0A73) - v18 + v17;
  v19 = (*(v14 + 8 * (v16 ^ 0x8F5)))(&a9);
  return (*(v14 + 8 * ((1978 * (*(v12 + 24) == v13)) ^ v16)))(v19);
}

void sub_1C21E3BF0()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1C21E3C40);
}

uint64_t sub_1C21E3DCC(uint64_t a1, unint64_t a2)
{
  STACK[0x230] = v2;
  LODWORD(STACK[0x224]) = v3;
  STACK[0x228] = a2;
  STACK[0x330] = 0;
  v7 = 50899313 * ((v5 - 192) ^ 0x2ACB2A7A);
  *(v5 - 176) = 0;
  *(v5 - 168) = &STACK[0x364];
  *(v5 - 192) = &STACK[0x330];
  *(v5 - 160) = v4 - v7 - 807;
  *(v5 - 156) = 808406675 - v7;
  v8 = (*(v6 + 8 * (v4 ^ 0xF22u)))(v5 - 192);
  return (*(STACK[0x2D8] + 8 * (((((v4 + 57) & 0x1F ^ (*(v5 - 184) == -955998424)) & 1) * (((v4 - 1390) | 0x232) - 793)) ^ v4)))(v8);
}

uint64_t sub_1C21E42F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, char *a17, int a18, uint64_t a19)
{
  a19 = a11;
  a17 = &a15;
  a18 = (v21 + 1688) ^ (143681137 * ((&a16 - 1863392074 - 2 * (&a16 & 0x90EEE4B6)) ^ 0xF1D453FE));
  v22 = (*(v20 + 8 * (v21 + 1781)))(&a16);
  return (*(v20 + 8 * ((2676 * (a16 == v19 + ((v21 + 925517750) & 0xC8D5B6FE) + 7 * (v21 ^ 0x278) - 645)) ^ v21)))(v22);
}

uint64_t sub_1C21E43BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 210068311 * (&a17 ^ 0x92D63FA4) + 923;
  a17 = &a14;
  v21 = (*(v20 + 19296))(&a17);
  return (*(v20 + 8 * ((2911 * (a18 == ((v19 - 771) ^ 0x30D))) ^ 0x30Du)))(v21);
}

uint64_t sub_1C21E4488(uint64_t result)
{
  v1 = 1388665877 * ((~result & 0x2C12AC5009F703C3 | result & 0xD3ED53AFF608FC3CLL) ^ 0x19683C1F845A612FLL);
  v2 = *result + v1;
  v3 = *(result + 16) + v1;
  v4 = *(result + 40) - v1;
  v5 = *(result + 4) ^ v1;
  v6 = *(result + 24) - v1;
  v7 = *(result + 32) - v1;
  v8 = v3 >= v4;
  v9 = v3 < v4;
  v10 = !v8;
  if ((v6 & 1) == 0)
  {
    v9 = v10;
  }

  if (v9)
  {
    v2 = v5;
  }

  *(result + 28) = v2 ^ v7;
  return result;
}

uint64_t sub_1C21E451C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_1C21E4534(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (1504884919 * ((2 * (a1 & 0x5311737A) - a1 - 1393652603) ^ 0x572D3B9E));
  if (*(*(a1 + 24) + 4) - 1472192017 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1472192017;
  }

  else
  {
    v2 = 1472192017 - *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 16) + 4) - 1472192017 >= 0)
  {
    v3 = *(*(a1 + 16) + 4) - 1472192017;
  }

  else
  {
    v3 = 1472192017 - *(*(a1 + 16) + 4);
  }

  v7 = *(a1 + 24);
  v8 = v1 - 1504884919 * ((((2 * &v6) | 0xDB8F4106) - &v6 + 305684349) ^ 0x16041798) + 368;
  v4 = *(&off_1F41B25C0 + v1 - 1172) - 8;
  (*&v4[8 * v1 + 9656])(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

void sub_1C21E4688()
{
  v4 = v0[1] ^ v2;
  v5 = ((v4 & 0xCC055BF1) << ((v3 - 78) ^ 0x1B)) & (v4 ^ 0xA8841BE0) ^ v4 & 0xCC055BF1;
  v6 = ((2 * (v4 ^ 0xB8863A40)) ^ 0xE906C362) & (v4 ^ 0xB8863A40) ^ (2 * (v4 ^ 0xB8863A40)) & 0x748361B0;
  v7 = (v6 ^ 0x64824110) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x14812091)) ^ 0xD20D86C4) & (v6 ^ 0x14812091) ^ (4 * (v6 ^ 0x14812091)) & 0x748361B0;
  v9 = (v8 ^ 0x50010080) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x24826131)) ^ 0x48361B10) & (v8 ^ 0x24826131) ^ (16 * (v8 ^ 0x24826131)) & 0x748361B0;
  v11 = v9 ^ 0x748361B1 ^ (v10 ^ 0x40020100) & (v9 << 8);
  v12 = v4 ^ (2 * ((v11 << 16) & 0x74830000 ^ v11 ^ ((v11 << 16) ^ 0x61B10000) & (((v10 ^ 0x348160A1) << 8) & 0x74830000 ^ 0x74820000 ^ (((v10 ^ 0x348160A1) << 8) ^ 0x3610000) & (v10 ^ 0x348160A1))));
  *v13 = (HIBYTE(v12) ^ 0xE4) - 2 * ((HIBYTE(v12) ^ 0xE4) & 0x6B ^ HIBYTE(v12) & 1) + 106;
  v13[1] = (BYTE2(v12) ^ 1) - ((v12 >> 15) & 0xD4) + 106;
  v13[2] = (BYTE1(v12) ^ 0x98) - ((2 * (BYTE1(v12) ^ 0x98)) & 0xD4) + 106;
  v13[3] = v12 ^ 0xF9;
  *v0 = *(v1 + 24);
}

void sub_1C21E48D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v71 - 192) = v68 - 1037613739 * ((v71 - 192) ^ 0xD1022D7F) + 2141900836;
  (*(v72 + 8 * (v68 - 956021603)))(v71 - 192);
  *(v71 - 180) = (v68 - 956023726) ^ (843532609 * ((((v71 - 192) | 0x3C72A286) - ((v71 - 192) & 0x3C72A286)) ^ 0x2CCED5D8));
  *(v71 - 168) = (((v69 - v68) | (v68 - v69)) >> (((v68 + 1) & 0x7E) - 83)) - 65 * ((((v71 + 64) | 0x86) - ((v71 + 64) & 0x86)) ^ 0xD8) + 102;
  *(v71 - 176) = a67;
  *(v71 - 192) = a68;
  (*(STACK[0x2D8] + 8 * (v68 ^ (v70 + 2116))))(v71 - 192);
  JUMPOUT(0x1C21CCC20);
}

uint64_t sub_1C21E49D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>, __n128 a5@<Q1>, int8x16_t a6@<Q4>, uint64_t a7@<D5>, int8x16_t a8@<Q6>)
{
  v17 = a1 - 16;
  v18 = (v17 - 1) & 0xF;
  v19 = v14;
  v20.i64[0] = vqtbl4q_s8(*(&a5 - 1), a6).u64[0];
  v20.i64[1] = a7;
  v21 = vrev64q_s8(vmulq_s8(v20, a8));
  *(v16 + v17) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v18 - 15), *(a4 + v17)), veorq_s8(*(v11 + v18 - 15), *(v10 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v15 + 8 * (((a2 == 16) * a3) ^ v13)))();
}

uint64_t sub_1C21E4A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, int a21)
{
  a21 = ((289 * (v23 ^ 0x521)) ^ 0xE0C1E3D4) + v21;
  *(v24 - 104) = v23 + 210068311 * ((v24 + 1302672375 - 2 * ((v24 - 120) & 0x4DA5346F)) ^ 0xDF730BCB) + 362;
  *(v24 - 120) = a17;
  *(v24 - 112) = &a18;
  (*(v22 + 8 * (v23 + 1104)))(v24 - 120);
  *(v24 - 120) = (v23 - 233) ^ (50899313 * ((v24 + 1783549706 - 2 * ((v24 - 120) & 0x6A4ECF82)) ^ 0x4085E5F8));
  *(v24 - 112) = a17;
  *(v24 - 104) = &a20;
  v25 = (*(v22 + 8 * (v23 ^ 0xCB1)))(v24 - 120);
  return (*(v22 + 8 * (((*(v24 - 116) > 0xEAB5317u) * (((v23 - 630) | 2) ^ 0x2AB)) | v23)))(v25);
}

uint64_t sub_1C21E4BB8(int a1, int a2)
{
  v9 = *(v4 + 4 * (v7 + v5 - 3)) ^ *(v4 + 4 * (v7 + v5 - 14));
  HIDWORD(v10) = *(v4 + 4 * (v5 + ((v3 - 574) ^ (v7 + 400)))) ^ v9 ^ *(v4 + 4 * (v7 + v5 - 16)) ^ a2;
  LODWORD(v10) = *(v4 + 4 * (v5 + ((v3 - 574) ^ (v7 + 400)))) ^ v9 ^ *(v4 + 4 * (v7 + v5 - 16));
  *(v4 + 4 * (v2 + v7)) = (v10 >> 31) ^ a1;
  return (*(v8 + 8 * ((((v2 + 1 + v7) > 0x4F) * v6) ^ v3)))();
}

uint64_t sub_1C21E4C68@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v54 = STACK[0x418];
  v55 = STACK[0x420];
  v59 = &STACK[0x570] + STACK[0x210];
  v60 = STACK[0x420];
  if (STACK[0x418])
  {
    v56 = v55 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v56;
  LODWORD(STACK[0x2A8]) = v57;
  STACK[0x2B0] = v54 + 236;
  STACK[0x278] = v55 + 1168;
  STACK[0x298] = v55 + 1432;
  STACK[0x270] = v54 + 528;
  STACK[0x248] = v54 + 800;
  STACK[0x2A0] = v54;
  LODWORD(STACK[0x288]) = 572868004;
  STACK[0x280] = v55;
  return (*(v53 + 8 * ((118 * ((LODWORD(STACK[0x2A8]) ^ (((a4 - 20) & 0xDE) + 5)) & 1)) ^ (((a4 + 1986885100) & 0x89928FDE) - 404))))(1237, 82, 300, a1, a2, a3, 572868004, 1780626303, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v59, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v60, a53, v55 + 1448);
}

uint64_t sub_1C21E4D74(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = *(v7 + 1428);
  if (v10 <= 0x20 && ((1 << v10) & 0x100110000) != 0)
  {
    return (*(v9 + 8 * (((*(STACK[0x2A0] + 476) == 1) * (((a4 - 754) | 0x173) ^ 0x1A5)) ^ (a4 - 366))))();
  }

  v12 = (v6 & 0xEC960B02 ^ (v6 ^ 0x63C7DAE6) & (v8 ^ 0xC16CA21C) ^ 0x685549A0) & 0xA426 ^ 0x8D340A0;
  v13 = ((v12 >> 4) ^ 0x8D3408) & (v12 ^ 0x46B26C62) ^ 0xFFFEDBFF;
  if (((v13 | (v13 >> 2)) & 3) != 0)
  {
    v14 = a5 + 2;
  }

  else
  {
    v14 = a6;
  }

  v15 = STACK[0x298];
  if (LODWORD(STACK[0x288]) != 572868004)
  {
    if (LODWORD(STACK[0x288]) == 1780626303)
    {
      STACK[0x430] = STACK[0x210];
      STACK[0x488] = v15;
      JUMPOUT(0x1C21F8FECLL);
    }

    JUMPOUT(0x1C21E4D40);
  }

  return (*(v9 + 8 * ((((a4 ^ 0x4BA) - 1986) * (v14 == a6)) ^ (a4 - 375))))(1237, a2, 300);
}

uint64_t sub_1C21E4F24@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = (&a10 + 4 * v11 + 16);
  v14 = vdupq_n_s32(0xEF3021DA);
  v13[-1] = v14;
  *v13 = v14;
  return (*(v12 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) * (v10 + 1867)) ^ (v10 - 84))))();
}

uint64_t sub_1C21E4F78@<X0>(uint64_t a1@<X8>)
{
  v7 = 767 * (v6 ^ 0x6DB);
  v8 = (v7 + 83961802) & 0xFAFED7FF;
  v9 = v4 + v8 - 1479;
  *(*(a1 + 8) + 4 * (v4 + v1)) = (v7 + v3) ^ v5;
  *(a1 + 4) = v9;
  v10 = v9 + v1;
  if (v9 + v1 < 0)
  {
    v10 = -v10;
  }

  v11 = (v10 ^ 0x77BFFF15) + (((v8 + 287) ^ 0xEF7FF8CD) & (2 * v10)) - 2009071859 + ((v8 - 1207) | 0xCC);
  return (*(v2 + 8 * (((2 * (v11 >= 0)) | (16 * (v11 >= 0))) ^ (v8 + 287))))();
}

uint64_t sub_1C21E5484@<X0>(int a1@<W7>, int a2@<W8>)
{
  v7 = *(v5 + v2 * v3 + 36);
  v8 = a2 - 1254943442 + v7;
  v9 = v7 != a1 + a2 - 501 - 779;
  if (v8 <= -2075859265 || v8 >= v4)
  {
    v9 = 0;
  }

  return (*(v6 + 8 * (a2 | (8 * v9))))();
}

void sub_1C21E54DC(uint64_t a1)
{
  (*(v1 + 19464))();
  (*(v1 + 19432))(a1);
  JUMPOUT(0x1C21C2974);
}

void sub_1C21E5514(uint64_t a1@<X8>, unsigned int a2, uint64_t a3, int a4)
{
  v7 = v6 & 0x96B169FF;
  v8 = 210068311 * (&a2 ^ 0x92D63FA4);
  a3 = v5;
  a2 = (v4 ^ ((v4 ^ 0xEA276ED2) + 1283182395) ^ ((v4 ^ 0xB90E1C79) + 525516178) ^ ((v4 ^ 0x3555F343) - 1828105556) ^ 0xA158FC40 ^ (((v7 + 326) ^ 0x99837D33) + (v4 ^ 0x3FDFDFFF))) - v8;
  a4 = v8 + v7 + 495;
  (*(a1 + 8 * (v7 + 2013)))(&a2);
  JUMPOUT(0x1C21E55ECLL);
}

uint64_t sub_1C21E5704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * (v11 ^ 0x193)) ^ v11)))();
}

uint64_t sub_1C21E574C@<X0>(uint64_t a1@<X2>, int a2@<W4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v42 = v41[396] ^ (((((a3 - 34359281) & 0x2F7EFDDC) + 1384989484) & v41[623] | *v41 & 0x7FFFFFFEu) >> 1);
  v41[623] = (v42 + v40 - (a2 & (2 * v42))) ^ *(&a40 + (*v41 & 1));
  return (*(a1 + 8 * ((7 * (a36 < 0x270)) ^ a3)))();
}

uint64_t sub_1C21E5948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, int a16)
{
  v21 = v20 - 1268;
  v22 = *(v16 + 8) - v19;
  v23 = 1556366573 * (((&a13 | 0x6842DDDF) - &a13 + (&a13 & 0x97BD2220)) ^ 0xCA6FE35);
  a16 = v21 - v23 + 2101;
  a14 = ((((v22 ^ 0xF2638AF4) + 228357388) ^ ((v22 ^ 0x64983CBB) - 1687698619) ^ ((v22 ^ 0xC16792F6) + ((v21 + 1283) ^ 0x3E9868E2))) - 1953052472) ^ v23;
  a15 = a12;
  v24 = (*(v17 + 8 * (v21 + 2219)))(&a13);
  return (*(v17 + 8 * ((2145 * (a13 == v18)) ^ v21)))(v24);
}

uint64_t sub_1C21E5A50()
{
  v7 = v5 + v3;
  v8 = (((4 * v4) ^ 0x21C8) - 1337) & (v3 + 15);
  v9 = v8 - v3 + 1;
  v10 = v0 + v9;
  v11 = v8 + ((19 * (v4 ^ 0x975u)) ^ 0x64ELL);
  v12 = v0 + v11;
  v13 = v1 + v9;
  v14 = v1 + v11;
  v15 = v8 + v2 + 2;
  v17 = v12 > v5 && v10 < v7;
  v19 = v14 > v5 && v13 < v7 || v17;
  if (v15 <= v5 || v15 - v3 >= v7)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 8 * (((32 * v21) | (v21 << 6)) ^ v4)))();
}

void sub_1C21E5AEC(uint64_t a1)
{
  v1 = 843532609 * (((a1 ^ 0x447F8529) & 0xE4B4B0D1 | ~(a1 ^ 0x447F8529 | 0xE4B4B0D1)) ^ 0x4F88BD59);
  v2 = *(*(a1 + 8) + 12) - 112212507;
  v3 = *(a1 + 20) + v1 - 774277913;
  v4 = (v3 < 0x14A21501) ^ (v2 < 0x14A21501);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x14A21501;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1C21E5C20(int a1, unint64_t a2)
{
  v9 = v2 + v6 - v3;
  v10 = *(v9 - 31);
  v11 = v7 + v6 - v3;
  *(v11 - 15) = *(v9 - 15);
  *(v11 - 31) = v10;
  return (*(v8 + 8 * ((((v4 ^ v5 ^ a2) + v3 == 320) * a1) ^ v4)))();
}

void sub_1C21E5D40()
{
  STACK[0x508] = 0;
  LODWORD(STACK[0x4D4]) = 1308994801;
  STACK[0x500] = 0;
  LODWORD(STACK[0x3DC]) = 1308994801;
  JUMPOUT(0x1C21E5DB0);
}

uint64_t sub_1C21E5F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = *(a1 + 40);
  *v6 = 0;
  return (*(v7 + 8 * (((v8 == 0) * (((a6 - 1732459134) & 0x67433BF7) - 703)) ^ a6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1C21E609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 1556366573 * ((1459831921 - (&a15 | 0x57034471) + (&a15 | 0xA8FCBB8E)) ^ 0xCC189864);
  a17 = a13;
  LODWORD(a18) = 2330 - v23;
  a16 = ((v21 ^ 0xFBFAFC3F) + 939501520 + ((2 * v21) & 0xF7F5F87E)) ^ v23;
  (*(v22 + 19584))(&a15);
  v24 = 896639297 * ((2041167575 - (&a15 | 0x79A9BED7) + (&a15 | 0x86564128)) ^ 0x92FDD750);
  a17 = v19;
  a18 = a13;
  a15 = (v20 ^ 0x9FDBF79D) + ((2 * v20) & 0x3FB7EF3A) + 1946155511 + v24;
  a16 = v24 + 1690;
  v25 = (*(v22 + 19648))(&a15);
  return (*(v22 + 8 * ((1679 * (a19 == -955998424)) ^ 0x142u)))(v25);
}

uint64_t sub_1C21E6214(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v46 = *(&a29 + v41 + 72);
  v47 = ((v41 << (a6 + v43 + 95 + a2)) & 0xF6E97FF8) + (v41 ^ 0x7B74BFFD) + v42;
  *(a4 + v47) = (HIBYTE(v46) ^ 0x3E) - 2 * ((HIBYTE(v46) ^ 0x3E) & 0x6B ^ HIBYTE(v46) & 1) + 106;
  *(a4 + v47 + 1) = (BYTE2(v46) ^ 0x7A) - 2 * ((BYTE2(v46) ^ 0x7A) & 0xEE ^ BYTE2(v46) & 4) + 106;
  *(a4 + v47 + 2) = (BYTE1(v46) ^ 0xF9) - ((2 * (BYTE1(v46) ^ 0xF9)) & 0xD4) + 106;
  *(a4 + v47 + 3) = v46 ^ 0x31;
  return (*(v45 + 8 * (((v41 + 4 < a41) * v44) ^ v43)))();
}

uint64_t sub_1C21E63A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v22 = ((((v21 - 128) | 0xBCE78E4) - ((v21 - 128) & 0xBCE78E4)) ^ 0x2105529E) * v19;
  *(v21 - 120) = v22 + (v16 ^ 0xFDF9DD9F) + (((v18 - 813) ^ 0xFBF3BBD3) & (2 * v16)) + 869248766;
  *(v21 - 116) = v18 - v22 + 764;
  *(v21 - 128) = &a13;
  (*(v15 + 8 * (v18 ^ 0xD80)))(v21 - 128);
  *(v21 - 120) = a12;
  *(v21 - 112) = &a15;
  *(v21 - 128) = (v18 + 32) ^ (((~((v21 - 128) | v20) + ((v21 - 128) & v20)) ^ 0x80B5AD69) * v19);
  v23 = (*(v15 + 8 * ((v18 - 813) ^ 0x97F)))(v21 - 128);
  return (*(v15 + 8 * (((*(v21 - 124) + ((205 * ((v18 - 813) ^ 0xEF)) ^ 0xF154AD72) >= v17) * ((v18 - 813) ^ 0x127)) ^ (v18 - 813))))(v23);
}

uint64_t sub_1C21E6618@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1 - 853;
  v8 = STACK[0x4A8];
  STACK[0x518] -= 32;
  v9 = STACK[0x2D8];
  *(v8 + 335) = (v7 + 28) ^ *(a7 + 335) ^ 0xE1 ^ *(*(&off_1F41B25C0 + v7 - 123) + 17) ^ *(*(&off_1F41B25C0 + (v7 ^ 0xB7)) + 11) ^ *(*(&off_1F41B25C0 + v7 - 46) + 14) ^ 0x98;
  return (*(v9 + 8 * v7))();
}

uint64_t sub_1C21E66E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = v7 - v9;
  if (v8 > v7 - v9)
  {
    v11 = v8;
  }

  return (*(v10 + 8 * ((((50 * (a7 ^ 0x8F0)) ^ 0x861) * ((v11 + 1) < 0x24)) ^ a7)))(a1, a2, a3, 0);
}

uint64_t sub_1C21E6AA0@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v21 = v15 < v17;
  v22 = *(v19 + v14);
  v23 = v14 + 1;
  *(&a14 + a1) = v22 - ((2 * v22) & 0xD4) + 106;
  if (v21 == v23 > v16)
  {
    v21 = v23 + v17 < v15;
  }

  return (*(v18 + 8 * ((28 * v21) ^ v20)))();
}

void sub_1C21E6E44()
{
  v2 = v1 - ((2 * v1 + 1676977692) & 0x4E01BFAE) == 1308994802;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21E6ED0()
{
  v13 = v7;
  v11 = &v8;
  v12 = (v4 + 2036) ^ (143681137 * ((v10 & 0x2422CB30 | ~(v10 | 0x2422CB30)) ^ 0xBAE78387));
  (*(v1 + 8 * (v4 + 2129)))(v10);
  v11 = v7;
  v10[1] = v4 - 1037613739 * ((((2 * v10) | 0xBBCE4900) - v10 + 572054400) ^ 0xCE509FF) + 1389;
  (*(v1 + 8 * (v4 ^ 0x9AF)))(v10);
  if (v10[0] == (v4 ^ 0x50D ^ (v2 - 1128)))
  {
    v5 = v8;
  }

  else
  {
    v5 = v10[0];
  }

  v11 = v7;
  v10[0] = (v4 + 1798) ^ (((513712057 - (v10 | 0x1E9E9FB9) + (v10 | 0xE1616046)) ^ 0xCBAA4A3C) * v3);
  (*(v1 + 8 * (v4 + 2197)))(v10);
  v10[0] = ((v4 ^ 0x50D) + 515) ^ ((((v10 | 0x67A4C8E8) - v10 + (v10 & 0x985B3710)) ^ 0x4D6FE292) * v3);
  v11 = v9;
  result = (*(v1 + 8 * (v4 ^ 0x99F)))(v10);
  *(v0 + 4) = v5;
  return result;
}

uint64_t sub_1C21E7378(uint64_t a1)
{
  v7 = *(v3 + 8 * (((v6 - 878) | 0x281) + 1465));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 ^ 0xA98)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 4) = v5;
  return result;
}

uint64_t sub_1C21E74B8@<X0>(char a1@<W0>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t, uint64_t))
{
  v21 = (v18 + a3);
  *v21 = v15;
  v21[1] = v16;
  v21[2] = v17;
  *(v18 + (((a2 - 32) | 0x20u) ^ 0x25) + a3) = a1;
  v22 = (a2 - 32) | 0x20;
  v23 = 50899313 * ((2 * ((v20 - 168) & 0x20E2F8F0) - (v20 - 168) - 551745777) ^ 0xF5D62D75);
  *(v20 - 160) = v18;
  *(v20 - 168) = v23 + v22 + 1823;
  *(v20 - 164) = v23 ^ 0x1398650F;
  v24 = (*(v19 + 8 * (v22 ^ 0x96E)))(v20 - 168);
  return a15(v24, 611, 43);
}

uint64_t sub_1C21E76E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, int a15, char *a16, int a17, uint64_t a18, unsigned int a19)
{
  v23 = 1380333833 * ((((&a14 | 0xC88D2584) ^ 0xFFFFFFFE) - (~&a14 | 0x3772DA7B)) ^ 0x892071F1);
  a14 = (v21 - 2013067350) ^ v23;
  a15 = v23 ^ 0x7BB54FD1;
  a19 = v23 + 1603508753;
  a16 = &a12;
  a18 = a11;
  v24 = (*(v20 + 8 * (v21 + 1621)))(&a14);
  return (*(v20 + 8 * (((a17 == v19) * (v22 ^ 0x4D2)) ^ v21)))(v24);
}

uint64_t sub_1C21E77A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v33 = 50899313 * ((((v32 - 128) | 0xB1AC4E25) + (~(v32 - 128) | 0x4E53B1DA)) ^ 0x9B67645E);
  *(v32 - 120) = &a22;
  *(v32 - 128) = v33 + a1 + 1779;
  *(v32 - 124) = (a13 - 1795527714) ^ v33;
  v34 = (*(v31 + 8 * (a1 ^ 0x91A)))(v32 - 128);
  v35 = a31 & 0x3F;
  *(&a22 + v35) = -22;
  return (*(v31 + 8 * ((730 * (v35 > 0x37)) ^ a1)))(v34);
}

void sub_1C21E78B8(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (1037613739 * ((~a1 & 0xB8C3CEDE | a1 & 0x473C3121) ^ 0x69C1E3A1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21E79B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, __int16 a18, char a19, int a20, int a21, int a22, uint64_t a23, char *a24, int *a25, int a26, char *a27, char *a28)
{
  a20 = 323530483;
  v30 = *(a2 + 8);
  v31 = 1556366573 * ((&a21 & 0x5E0C37D6 | ~(&a21 | 0x5E0C37D6)) ^ 0xC517EBC3);
  a21 = -119245171 - v31 + v28 - 153 + *(a2 + 4);
  a27 = &a17;
  a28 = &a14;
  a26 = v28 - v31 + 1139;
  a24 = &a19;
  a25 = &a20;
  a23 = v30;
  v33 = (*(v29 + 8 * (v28 + 1992)))(&a21);
  return (*(v29 + 8 * ((946 * (a22 == -955998424)) ^ v28)))(v33, a2);
}

uint64_t sub_1C21E7BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v7[396] ^ ((*v7 & 0x7FFFFFFE | (v5 - 208 + v6) & v7[623]) >> 1);
  v7[623] = (v9 + v8 - ((2 * v9) & 0xF6A6F974)) ^ *(a5 + 4 * (*v7 & 1));
  return (*(a2 + 8 * ((846 * (LODWORD(STACK[0x314]) > 0x26F)) ^ v5)))();
}

uint64_t sub_1C21E7C38()
{
  v6 = v1 - v2 - 8;
  *(v4 + v6) = *(v0 + v6);
  return (*(v5 + 8 * (((v2 - (v1 & 0xFFFFFFF8) == -8) * ((v3 - 279) ^ 0x6CF)) ^ v3)))(v0 + v6 - 8, (v3 - 279) ^ 0x6CFu, v2 - (v1 & 0xFFFFFFF8) + 16);
}

void sub_1C21E7DD4(uint64_t a1)
{
  v1 = *a1 - 1785193651 * (((a1 | 0x3C6F07B3) - (a1 & 0x3C6F07B3)) ^ 0x2FB3EB93);
  v2 = *(a1 + 8);
  v3 = *(&off_1F41B25C0 + v1 - 1073) - 8;
  (*&v3[8 * (v1 ^ 0xD02)])(*(&off_1F41B25C0 + (v1 ^ 0x4F3)), sub_1C21D5590);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21E8278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(v6 + 48 * v8 + 36);
  v11 = v9 != 372815277 && (v5 ^ 0x2Du) + 1774668370 + v9 - 776 < v5 + a5;
  return (*(v7 + 8 * ((1830 * v11) ^ v5)))();
}

uint64_t sub_1C21E8344(int *a1)
{
  v2 = a1[1] ^ (1388665877 * (a1 ^ 0x8DAD62EC));
  result = (*(*(&off_1F41B25C0 + (v2 ^ 0xDFABAFA9)) + (v2 + 542398940) - 1))(*(&off_1F41B25C0 + (v2 + 542396610)) - 12, sub_1C21C5E4C);
  v4 = **(&off_1F41B25C0 + (v2 ^ 0xDFABAF03));
  if (result)
  {
    v4 = 956024214;
  }

  *a1 = v4;
  return result;
}

void sub_1C21E8400(uint64_t a1)
{
  v1 = 1785193651 * (((a1 | 0xBD71A31) - (a1 & 0xBD71A31)) ^ 0x180BF611);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21E8530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = (*(v40 + 8 * (a18 + 1616)))(&STACK[0x540], 0);
  v45 = LODWORD(STACK[0x548]) + 1271653743 - ((2 * LODWORD(STACK[0x548])) & 0x9797CADE);
  LODWORD(STACK[0x538]) = LODWORD(STACK[0x540]) + 1271653743 - (((a18 + 762493334) ^ 0xBAE5760A) & (2 * LODWORD(STACK[0x540])));
  LODWORD(STACK[0x534]) = v45;
  v46 = (*(a40 + 8 * (a18 + 1622)))(v44);
  LODWORD(STACK[0x53C]) = v46 + 1271653743 - ((2 * v46) & 0x9797CADE);
  v47 = (*(a40 + 8 * (a18 + 1622)))();
  LODWORD(STACK[0x530]) = v47 + 1271653743 - ((2 * v47) & 0x9797CADE);
  v48 = *v41;
  v49 = 1664525 * (((((v48 >> 30) | 0xCCF3A8D8) ^ v48 ^ 0x13F9F4D1) - 335148241) ^ ((((v48 >> 30) | 0xCCF3A8D8) ^ v48 ^ 0xF82C5DA9) + 131310167) ^ ((((v48 >> 30) | 0xCCF3A8D8) ^ v48 ^ 0x272601A0) - 656802208)) + 1389454847;
  v50 = (v49 ^ 0xA7E9BCF8) & (2 * (v49 & 0xA7EC3CF9)) ^ v49 & 0xA7EC3CF9;
  v51 = ((2 * (v49 ^ 0xEDF9F54A)) ^ 0x942B9366) & (v49 ^ 0xEDF9F54A) ^ (2 * (v49 ^ 0xEDF9F54A)) & 0x4A15C9B2;
  v52 = v51 ^ 0x4A144891;
  v53 = (v51 ^ 0x18120) & (4 * v50) ^ v50;
  v54 = ((4 * v52) ^ 0x285726CC) & v52 ^ (4 * v52) & 0x4A15C9B0;
  v55 = (v54 ^ 0x8150080) & (16 * v53) ^ v53;
  v56 = ((16 * (v54 ^ 0x4200C933)) ^ 0xA15C9B30) & (v54 ^ 0x4200C933) ^ (16 * (v54 ^ 0x4200C933)) & 0x4A15C9B0;
  v57 = v55 ^ 0x4A15C9B3 ^ (v56 ^ 0x148900) & (v55 << 8);
  v41[1] = (LODWORD(STACK[0x530]) ^ 0x4BCBE56F) + ((v41[1] - ((2 * v41[1]) & 0x5557C06E) + 715907127) ^ v49 ^ (2 * ((v57 << 16) & 0x4A150000 ^ v57 ^ ((v57 << 16) ^ 0x49B30000) & (((v56 ^ 0x4A014083) << 8) & 0x4A150000 ^ 0x4A140000 ^ (((v56 ^ 0x4A014083) << 8) ^ 0x15C90000) & (v56 ^ 0x4A014083)))) ^ 0x894E4FA8);
  v58 = 1380333833 * ((0xABA88B659BD1BE36 - ((v43 - 144) | 0xABA88B659BD1BE36) + a39) ^ 0x5FB205B6DA7CEA43);
  *(v43 - 112) = 2 - v58;
  *(v43 - 128) = v58 + a18 + 193924279 - 1;
  *(v43 - 124) = ((a18 + 193924279) ^ 0x4F) + v58;
  *(v43 - 120) = (a18 + 1212454738) ^ v58;
  *(v43 - 144) = v42 - v58;
  *(v43 - 136) = 1 - v58;
  *(v43 - 132) = (a18 + 193924279) ^ v58;
  v59 = (*(a40 + 8 * (a18 + 1562)))(v43 - 144);
  return (*(a40 + 8 * *(v43 - 104)))(v59);
}

uint64_t sub_1C21E89F0@<X0>(int a1@<W8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((a1 - 348) ^ v3)) ^ a1)))();
}

void sub_1C21E8AE8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40) ^ (896639297 * ((((2 * a1) | 0xCC5E7DA6) - a1 + 433111341) ^ 0xF284A8AB));
  v2 = *(a1 + 24);
  v4 = 0;
  v7 = v1 - 1224078613 + 1380333833 * (((&v6 | 0x4D92AB26) - (&v6 & 0x4D92AB26)) ^ 0xF3C000AC);
  v6 = &v4;
  v3 = *(&off_1F41B25C0 + (v1 ^ 0x5AF)) - 8;
  (*&v3[8 * v1 + 8416])(&v6);
  v5 = 0;
  v6 = &v5;
  v7 = v1 - 1224078613 + 1380333833 * (&v6 ^ 0xBE52AB8A);
  (*&v3[8 * v1 + 8416])(&v6);
  __asm { BRAA            X8, X17 }
}

void sub_1C21E8C50()
{
  LODWORD(STACK[0x4C0]) = STACK[0x454];
  STACK[0x4A0] = STACK[0x470];
  LODWORD(STACK[0x2F8]) = 323530483;
  JUMPOUT(0x1C21CCB80);
}

uint64_t sub_1C21E8ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = a16;
  *(v20 - 128) = &a17;
  *(v20 - 120) = v18 + 210068311 * ((((v20 - 136) | 0xCD662029) + (~(v20 - 136) | 0x3299DFD6)) ^ 0x5FB01F8C) + 370;
  (*(v17 + 8 * (v18 ^ 0xC68)))(v20 - 136);
  v21 = 50899313 * ((((v20 - 136) | 0x43BA627A) - (v20 - 136) + ((v20 - 136) & 0xBC459D80)) ^ 0x69714800);
  *(v20 - 136) = v19;
  *(v20 - 128) = v21 + 835292318;
  *(v20 - 124) = v18 - v21 + 507;
  (*(v17 + 8 * (v18 ^ 0xC81)))(v20 - 136);
  *(v20 - 136) = (v18 - 225) ^ (50899313 * ((((v20 - 136) | 0xEB088E2) - (v20 - 136) + ((v20 - 136) & 0xF14F7718)) ^ 0x247BA298));
  *(v20 - 128) = a16;
  *(v20 - 120) = v19;
  v22 = (*(v17 + 8 * (v18 + 1143)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 132) > 0xEAB5317u) * (10 * (v18 ^ 0x543) - 819)) ^ v18)))(v22);
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = v8 || a6 == 0 || a7 == 0 || a8 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21E9140@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 + 729;
  v4 = (a2 - 806) | 0x1AC;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 48) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v2 + 8 * ((v6 * ((((v3 + 2111342951) & 0x822773BF) - 530) ^ v4)) ^ v3)))();
}

uint64_t sub_1C21E92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v16 - 128) = (v14 + 68) ^ (((((2 * (v16 - 128)) | 0x6B37302C) - (v16 - 128) - 899389462) ^ 0x1F50B26C) * v15);
  *(v16 - 120) = a12;
  *(v16 - 112) = &a13;
  v17 = (*(v13 + 8 * (v14 + 1436)))(v16 - 128);
  return (*(v13 + 8 * ((2028 * (*(v16 - 124) <= 0xEAB5318u)) ^ v14)))(v17);
}

uint64_t sub_1C21E9508@<X0>(int a1@<W8>)
{
  v9 = v2 + 2;
  v10 = (v3 - 2);
  *v10 = (v9 ^ v5) * (v9 + 17);
  *(v10 - 1) = (((a1 ^ v4) - 120) ^ v9) * (v9 + 18);
  return (*(v8 + 8 * (((v7 == 2) * v6) | a1)))();
}

uint64_t sub_1C21E9584@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = &STACK[0x570] + v2;
  *v5 = 2124282157;
  *(v5 + 1) = 0;
  *(v5 + 4) = 1384885315;
  *(v5 + 6) = 1308994801;
  *(v5 + 4) = 0;
  *(&STACK[0x570] + v2 + 40) = 1308994801;
  STACK[0x498] = &STACK[0x570] + v2 + 40;
  *(&STACK[0x570] + v2 + 48) = 0;
  STACK[0x440] = &STACK[0x570] + v2 + 48;
  *(&STACK[0x570] + v2 + 56) = 1308994801;
  STACK[0x340] = &STACK[0x570] + v2 + 56;
  *(&STACK[0x570] + v2 + 64) = 0;
  STACK[0x318] = &STACK[0x570] + v2 + 64;
  STACK[0x308] = &STACK[0x570] + v2 + 0x6121A80D7407EDBELL;
  *(v5 + 18) = 1308994801;
  *(&STACK[0x570] + v2 + 80) = 0;
  STACK[0x328] = &STACK[0x570] + v2 + 80;
  v5[88] = 15;
  *v3 = 2124282157;
  memset((v3 + 4), 106, 20);
  *(v3 + 28) = 0;
  STACK[0x280] = v3 + 28;
  memset((v3 + 436), 106, 40);
  *(v3 + 232) = 0;
  STACK[0x278] = v3 + 232;
  *(v3 + 24) = 1308994801;
  memset((v3 + 1128), 106, 40);
  *(v3 + 1168) = 0u;
  *(v3 + 1184) = 0u;
  return (*(v4 + 8 * ((((((a2 - 799) | 0x16u) ^ 0x117) == 32) * a1) ^ a2)))();
}

uint64_t sub_1C21E96CC()
{
  v7 = (v0 + 1739) ^ ((((&v7 | 0xB2BB0D92) - (&v7 & 0xB2BB0D92)) ^ 0x987027E8) * v1);
  v8 = v6;
  (*(v2 + 8 * (v0 ^ 0x85A)))(&v7);
  v7 = ((v0 ^ 0x50A) + 961) ^ (((((2 * &v7) | 0x7F809F16) - &v7 - 1069567883) ^ 0x150B65F1) * v1);
  v8 = v5;
  (*(v2 + 8 * (v0 ^ 0x85A)))(&v7);
  return v3 ^ 0xC7049F28;
}

uint64_t sub_1C21E97D4@<X0>(int a1@<W3>, int a2@<W8>, int a3@<W0>)
{
  v8 = a1;
  if (v3 <= 0x12 && (v8 = a1, ((a3 << v3) & 0x50121) != 0))
  {
    return sub_1C21B5130(a1, a2);
  }

  else
  {
    return (*(v7 + 8 * ((778 * ((*(v6 + a2 * v4 + 40) & 8) == ((v8 - 834) | v5) - 185)) ^ (v8 + 581))))();
  }
}

uint64_t sub_1C21E9A3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = (a1 + a2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((1116 * (a2 + ((v2 - 432) | 0x420u) - 1372 == v3)) ^ v2)))();
}

void sub_1C21E9A7C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  a10 = (a1 + 685) ^ ((((&a9 | 0x4C64BEA5) - (&a9 & 0x4C64BEA5)) ^ 0x5FB85285) * v10);
  a9 = ((((&a9 | 0xA5) - (&a9 & 0xA5)) ^ 0x85) * v10) | 6;
  (*(v11 + 8 * (a1 + 2116)))(&a9);
  JUMPOUT(0x1C21E9AECLL);
}

uint64_t sub_1C21E9DC4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 + (a2 + v4 + 802) - 1014;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((52 * (v6 == 0)) ^ (a2 + v4 + 1411))))();
}

uint64_t sub_1C21E9E44(uint64_t a1, int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  v8 = (v7 - 32);
  v9 = (a1 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a4)), a5);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a4)), a5);
  *v8 = v10;
  return (*(v5 + 8 * (((v6 == 32) * a3) ^ (a2 + 465))))();
}

uint64_t sub_1C21E9EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  HIDWORD(a27) = 323530483;
  HIDWORD(a25) = a3;
  *v46 = 53904938;
  return (*(v45 + 8 * ((((v44 - 831781669) & 0x3193F9DE) + 774) ^ (v44 - 831781669) & 0x3193F9DE)))(a1, a2, a3, a4, a5, a6, a7, 4241061737, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, &STACK[0x298], &a44, 0, a25, 0, a27);
}

void sub_1C21E9FD8(uint64_t a1)
{
  v1 = *(a1 + 8) + 1785193651 * (((a1 | 0x6C13C471) - (a1 & 0x6C13C471)) ^ 0x7FCF2851);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21EA098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 1152 * (a6 ^ 0x864) - v8 + (((a6 ^ 0x864) + 2302) ^ (v6 - 512));
  if (v7 > v10)
  {
    v10 = v7;
  }

  return (*(v9 + 8 * (a6 ^ (8 * (v10 < 0x7FFFFFFF)))))(a1, a2, a3, 0);
}

uint64_t sub_1C21EA0E4@<X0>(int a1@<W8>)
{
  v5 = ((2 * (&v7 & 0x6B084808) - &v7 + 351778804) ^ 0xC5F59A8B) * a1;
  v9 = -115375426 - v5;
  v10 = (v1 - 1257) ^ v5;
  v7 = 0;
  v8 = v3;
  v11 = v5 + 744791710;
  result = (*(v4 + 8 * (v1 ^ 0xFE3)))(&v7);
  *(v2 + 24) = *(v3 + 24);
  return result;
}

uint64_t sub_1C21EA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = v15 + 210068311 * ((((2 * (v17 - 128)) | 0x69A071A6) - (v17 - 128) - 886061267) ^ 0xA6060777) + 1440;
  *(v17 - 128) = a12;
  *(v17 - 120) = &a13;
  (*(v14 + 8 * (v15 + 2182)))(v17 - 128);
  *(v17 - 120) = a12;
  *(v17 - 112) = v13;
  *(v17 - 128) = (v15 + 845) ^ (((((v17 - 128) ^ 0xF36F26F1 | 0xCF8C91B7) - ((v17 - 128) ^ 0xF36F26F1) + (((v17 - 128) ^ 0xF36F26F1) & 0x30736E48)) ^ 0x16289D3C) * v16);
  v18 = (*(v14 + 8 * (v15 ^ 0x97F)))(v17 - 128);
  return (*(v14 + 8 * ((458 * (((v15 + 471178498) & 0xE3EA62FF) + *(v17 - 124) - 246109191 >= 0xF5EC7168)) ^ v15)))(v18);
}

uint64_t sub_1C21EA390@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v12 = (((&a3 | 0xC10DBB95) + (~&a3 | 0x3EF2446A)) ^ 0x100F96EB) * a1;
  a5 = -115375426 - v12;
  a6 = (v11 + 89) ^ v12;
  a7 = v12 + 411610378 + v9;
  a3 = &a2;
  a4 = v7;
  v13 = (*(v8 + 8 * (v11 ^ 0x821)))(&a3);
  return (*(v8 + 8 * ((1443 * (*(v7 + 24) == ((v11 - 2000869978) & 0x7742DF9B) + v10)) ^ v11)))(v13);
}

uint64_t sub_1C21EA640(uint64_t result)
{
  v1 = 896639297 * ((~result & 0x13911294E47D0D36 | result & 0xEC6EED6B1B82F2C9) ^ 0x23EA99B3F0D69B4ELL);
  v2 = *(result + 32) + v1;
  v3 = *(result + 8) ^ v1;
  v4 = v2 == v3;
  v5 = v2 > v3;
  v6 = v4;
  if (((*(result + 20) ^ v1) & 1) == 0)
  {
    v5 = v6;
  }

  v4 = !v5;
  v7 = 16;
  if (!v4)
  {
    v7 = 24;
  }

  *result = *(result + 28) ^ v1 ^ (*(result + v7) - v1);
  return result;
}

uint64_t sub_1C21EA6D8()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39A40 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C2340930[byte_1C233D7D0[(65 * (dword_1EBF39A40 ^ 0x7B ^ qword_1EBF39C20))] ^ 0x7E]) - 92);
  v1 = 65 * ((qword_1EBF39C20 - *v0) ^ 0x7B);
  v2 = *(&off_1F41B25C0 + (*(off_1F41B2A10 + ~*(off_1F41B2BA0 + v1 - 8) - 8) ^ v1) - 156);
  v3 = (*v2 + *v0) ^ &v11;
  v4 = 410816321 * v3 - 0x265DD2AD758AD77BLL;
  v5 = 410816321 * (v3 ^ 0x265DD2AD758AD77BLL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v5) = 65 * (*v0 ^ 0x7B ^ v5);
  v13 = *(&off_1F41B25C0 + (*(off_1F41B2830 + (*(off_1F41B2968 + v5 - 8) ^ 0x32u) - 4) ^ v5) - 108) - 4;
  v12[0] = 1564307779 * ((2 * (v12 & 0x1E148C80) - v12 + 1642820473) ^ 0xF6E6BF6A) + 997;
  v6 = off_1F41B2710 - 12;
  v7 = off_1F41B27A8 - 12;
  v8 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39A40) ^ 0x7B)) ^ byte_1C23446D0[byte_1C2340A30[(65 * ((qword_1EBF39C20 + dword_1EBF39A40) ^ 0x7B))] ^ 0xA1]) - 123) - 8;
  (*&v8[8 * (*(off_1F41B27A8 + (*(off_1F41B2710 + (65 * ((*v2 + *v0) ^ 0x7B)) - 12) ^ 0x42u) - 12) ^ (65 * ((*v2 + *v0) ^ 0x7B))) + 18728])(v12);
  v13 = *(&off_1F41B25C0 + (*(off_1F41B2A78 + (*(off_1F41B2770 + (65 * ((*v2 + *v0) ^ 0x7B)) - 8) ^ 0x2Eu) - 4) ^ (65 * ((*v2 + *v0) ^ 0x7B))) - 149) - 4;
  v12[0] = 1564307779 * ((((2 * v12) | 0x71FE7806) - v12 - 956251139) ^ 0xAFF2F010) + 997;
  (*&v8[8 * ((65 * ((*v2 + *v0) ^ 0x7B)) ^ *(off_1F41B2A78 + (*(off_1F41B2770 + (65 * ((*v2 + *v0) ^ 0x7B)) - 8) ^ 0x44u) - 4)) + 18752])(v12);
  v9 = 1785193651 * ((v12 - 2 * (v12 & 0xDDE75EDA) - 572039462) ^ 0xCE3BB2FA);
  LOBYTE(v12[0]) = v9 ^ 5;
  v12[1] = v9 ^ 0x3F3;
  return (*&v8[8 * ((65 * ((*v2 - *v0) ^ 0x7B)) ^ v7[v6[(65 * ((*v2 - *v0) ^ 0x7B))] ^ 0xA1]) + 18080])(v12);
}

uint64_t sub_1C21EAB10()
{
  v2 = STACK[0x2D0] ^ 0x27A;
  v3 = STACK[0x3A0];
  STACK[0x348] = *(v1 + 8 * (STACK[0x2D0] - 799));
  v4 = STACK[0x2A8];
  STACK[0x540] = v3;
  LODWORD(STACK[0x54C]) = 1357394763;
  STACK[0x410] = v4;
  return (*(v1 + 8 * ((108 * (v2 + 726 + (*(v3 + 68) & 0x3Fu) + 1357394763 - 1357395797 < v2 - 328)) ^ v2)))();
}

void sub_1C21EAB34(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1388665877 * ((1547163747 - (a1 | 0x5C37D863) + (a1 | 0xA3C8279C)) ^ 0x2E654570));
  v2 = *(a1 + 16);
  if (*(v2 + 4) - 1472192017 >= 0)
  {
    v3 = *(v2 + 4) - 1472192017;
  }

  else
  {
    v3 = 1472192017 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 1472192017 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 1472192017;
  }

  else
  {
    v4 = 1472192017 - *(*(a1 + 8) + 4);
  }

  v9 = v1 - 1504884919 * (((&v7 | 0xA87290EE) - (&v7 & 0xA87290EE)) ^ 0x53B127F5) - 260;
  v8 = v2;
  v5 = *(&off_1F41B25C0 + v1 - 1800) - 8;
  (*&v5[8 * v1 + 4632])(&v7);
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

uint64_t sub_1C21EACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  v22 = 1556366573 * (&a13 ^ 0x64E423EA);
  a15 = a10;
  LODWORD(a16) = v21 - v22 + 1535;
  a14 = (((2 * v18) & 0x7FFDE81E) + 1945874432 + ((v21 - 1073811212) ^ v18)) ^ v22;
  (*(v20 + 8 * (v21 ^ 0xA8B)))(&a13);
  v23 = 896639297 * ((2 * (&a13 & 0x3A90F6B8) - &a13 + 1164904770) ^ 0x51C49F3A);
  v24 = v23 + (*v17 ^ 0xB7FFF1BF) + ((2 * *v17) & 0x6FFFE37E) + 1541144533;
  a15 = *(v17 + 8);
  a16 = a10;
  a13 = v24;
  a14 = v21 + 895 + v23;
  (*(v20 + 8 * (v21 + 1661)))(&a13);
  v25 = *(v17 + 24);
  v26 = 896639297 * ((((2 * &a13) | 0xB3A6D298) - &a13 - 1507027276) ^ 0x4D78FF34);
  a13 = v26 + (*(v17 + 16) ^ 0xBBFFFDBF) + ((2 * *(v17 + 16)) & 0x77FFFB7E) + 1474032597;
  a14 = v21 + 895 + v26;
  a15 = v25;
  a16 = a10;
  v27 = (*(v20 + 8 * (v21 + 1661)))(&a13);
  return (*(v20 + 8 * ((3071 * (a17 == v19)) ^ v21)))(v27);
}

uint64_t sub_1C21EAE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v36 = 50899313 * ((~((v35 - 120) | 0x6F2613D9) + ((v35 - 120) & 0x6F2613D9)) ^ 0xBA12C65C);
  *(v35 - 120) = v36 + v33 + 1860;
  *(v35 - 116) = (a12 + ((v33 - 50333444) ^ 0xFCFFFE57) + ((v33 - 50333444) & 0xF7A7DF1F) - 1605202665) ^ v36;
  *(v35 - 112) = &a24;
  v37 = (*(v34 + 8 * (v33 ^ 0x949)))(v35 - 120);
  v38 = a33 & 0x3F;
  *(&a24 + v38) = -22;
  return (*(v34 + 8 * ((114 * (v38 > 0x37)) ^ v33)))(v37);
}

void sub_1C21EAF80(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v11 = (v8 + v9) | 0x409;
  v12 = (((&a3 | 0x42F1A27) + (~&a3 | 0xFBD0E5D8)) ^ 0xD52D3759) * v7;
  a5 = a1 - v12;
  a6 = (v11 - 600) ^ v12;
  a3 = 0;
  a7 = v12 + 744791710;
  (*(v10 + 8 * (v11 ^ 0xD70)))(&a3);
  JUMPOUT(0x1C21EAFFCLL);
}

uint64_t sub_1C21EB30C(uint64_t a1)
{
  v1 = 1564307779 * ((1293751455 - (a1 | 0x4D1D149F) + (a1 | 0xB2E2EB60)) ^ 0x25EF2773);
  v2 = *a1 - v1;
  v3 = (*(a1 + 16) - v1) ^ 0xB7BB1E4E;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1472192017;
  v5 = v4 - 1472192017 < 0;
  v7 = 1472192017 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F41B25C0 + (v2 ^ 0x8D)) + (((v3 >> 5) < v7) ^ v2) - 1))();
}

uint64_t sub_1C21EB3D0@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = *(v35 + 4 * (v36 - 1));
  *(v35 + 4 * v36) = ((1566083941 * (v38 ^ (v38 >> 30))) ^ *(v35 + 4 * v36)) - v36;
  v39 = 1388665877 * ((((v37 - 144) | 0x4438C1C13A2AE791) - ((v37 - 144) & 0x4438C1C13A2AE791)) ^ 0x7142518EB787857DLL);
  *(v37 - 128) = 623 - v39;
  *(v37 - 104) = v36 + 1 + v39;
  *(v37 - 140) = (a3 + 957357723) ^ v39;
  *(v37 - 136) = v39 + a3 - 706524226;
  *(v37 - 144) = ((a3 + 957357723) ^ 0xFC) - v39;
  *(v37 - 120) = v39;
  *(v37 - 112) = ((a3 + 957357723) ^ 0x7E) + v39;
  v40 = (*(a1 + 8 * (a2 + a3 + 1847)))(v37 - 144);
  return (*(a35 + 8 * *(v37 - 116)))(v40);
}

uint64_t sub_1C21EB4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8 * (v3 + 1482)))();
  v6 = STACK[0x2D8];
  LODWORD(STACK[0x538]) = v4;
  return (*(v6 + 8 * (((v4 == ((v3 + 905866315) & 0xCA019373) - 955999306) * ((v3 - 573515709) & 0x222F277B ^ 0x46B)) ^ v3)))(v5);
}

uint64_t sub_1C21EB548()
{
  STACK[0x400] = v0 + 2;
  v2 = STACK[0x478];
  STACK[0x210] = v1 - 112;
  STACK[0x430] = v1 - 112;
  return v2();
}

uint64_t sub_1C21EB568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v21 - 128) = a16;
  *(v21 - 120) = v20;
  *(v21 - 136) = (v17 + 919) ^ (((((2 * v16) | 0xD9267B4) - v16 + 2033634342) ^ 0xAC0219A0) * v19);
  v22 = (*(v18 + 8 * (v17 ^ 0x931)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 132) > 0xEAB5318u) * (((v17 + 511) | 0x100) ^ 0x6F2)) | v17)))(v22);
}

void gLg1CWr7p()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F41B25C0 + ((65 * (dword_1EBF39CA8 ^ 0x7B ^ qword_1EBF39C20)) ^ byte_1C2349510[byte_1C23445D0[(65 * (dword_1EBF39CA8 ^ 0x7B ^ qword_1EBF39C20))] ^ 0xB1]) - 75);
  v1 = 65 * ((qword_1EBF39C20 - *v0) ^ 0x7B);
  v2 = *(&off_1F41B25C0 + (*(off_1F41B2A78 + (*(off_1F41B2770 + v1 - 8) ^ 0xB1u) - 4) ^ v1) - 132);
  v3 = (*v2 + *v0) ^ &v5;
  *v0 = 410816321 * (v3 - 0x265DD2AD758AD77BLL);
  *v2 = 410816321 * (v3 ^ 0x265DD2AD758AD77BLL);
  v6[1] = (1388665877 * (((v6 | 0x87EB4F9F) + (~v6 | 0x7814B060)) ^ 0xA462D72)) ^ 0xDFABAF92;
  LOBYTE(v2) = 65 * ((*v2 + *v0) ^ 0x7B);
  v4 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39CA8) ^ 0x7B)) ^ byte_1C2340930[byte_1C233D7D0[(65 * ((qword_1EBF39C20 - dword_1EBF39CA8) ^ 0x7B))] ^ 0x7E]) - 144) - 8;
  (*&v4[8 * (*(off_1F41B2A10 + (*(off_1F41B2BA0 + v2 - 8) ^ 0x71u) - 8) ^ v2) + 18248])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21EB834@<X0>(uint64_t a1@<X1>, char a2@<W2>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30)
{
  v33 = *(&a18 + (a3 >> (((v31 + 7) | 0x11) ^ (a2 + 2))) + 18);
  v34 = ((2 * a3) & 0xB6E9DEE0) + (a3 ^ 0x5B74EF71) + v30;
  *(a1 + v34) = (HIBYTE(v33) ^ 0x3E) - 2 * ((HIBYTE(v33) ^ 0x3E) & 0x6B ^ HIBYTE(v33) & 1) + 106;
  *(a1 + v34 + 2) = (BYTE1(v33) ^ 0xF9) - ((2 * (BYTE1(v33) ^ 0xF9)) & 0xD4) + 106;
  *(a1 + v34 + 1) = (BYTE2(v33) ^ 0x7A) - 2 * ((BYTE2(v33) ^ 0x7A) & 0xEE ^ BYTE2(v33) & 4) + 106;
  *(a1 + v34 + 3) = v33 ^ 0x31;
  return (*(v32 + 8 * ((52 * (a3 + 4 < a30)) ^ v31)))();
}

uint64_t sub_1C21EB928()
{
  *v0 = (v5 - 445819103) ^ v7;
  v10 = (v5 + v3) ^ (50899313 * (((&v10 | 0x312FAAC0) - (&v10 & 0x312FAAC0)) ^ 0x1BE480BA));
  v11 = v8;
  (*(v2 + 8 * (v5 ^ (v4 - 3612))))(&v10);
  v11 = v9;
  v10 = (v5 + v3) ^ (50899313 * ((2 * (&v10 & 0x5A7201E8) - &v10 + 630062609) ^ 0xF46D46B));
  (*(v2 + 8 * (v5 + v3 + 399)))(&v10);
  return v1 ^ 0xC7049F28;
}

void sub_1C21EBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v10 + 8);
  v13 = (*(v12 + 4 * (v11 - 1)) ^ v6) >> v7;
  *(v12 + 4 * v9) = v6 + (a6 ^ 0x81) + v13 - (v8 & (2 * v13)) - 980;
  JUMPOUT(0x1C21EBAB8);
}

uint64_t sub_1C21EC32C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  v17 = (v16 + 4 * (a1 + v13));
  *v17 = (v14 + v11 - 357) ^ __ROR4__(*(v17 - 8) ^ *(v17 - 3) ^ *(v17 - 14) ^ *(v17 - 16), 31);
  return (*(v12 + 8 * ((3987 * (a1 + 1 == v15 + 64)) ^ a11)))();
}

uint64_t sub_1C21ECD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16)
{
  v20 = 1556366573 * (((&a13 | 0xA347F71) - (&a13 & 0xA347F71)) ^ 0x6ED05C9B);
  a15 = a11;
  a14 = ((v16 ^ 0x3FFBA71F) + ((2 * v16) & 0x7FF74E3E) + v19 - 201393722) ^ v20;
  a16 = v19 - v20 + 1520;
  v21 = (*(v18 + 8 * (v19 + 1638)))(&a13);
  return (*(v18 + 8 * ((1666 * (a13 == v17)) ^ v19)))(v21);
}

uint64_t sub_1C21ECE84()
{
  v2 = STACK[0x2D0] - 618;
  v3 = STACK[0x3A0];
  STACK[0x348] = *(v1 + 8 * (STACK[0x2D0] - 786));
  v4 = STACK[0x280];
  STACK[0x540] = v3;
  LODWORD(STACK[0x54C]) = 1357394763;
  STACK[0x410] = v4;
  return (*(v1 + 8 * ((108 * (v2 + 726 + (*(v3 + 68) & 0x3Fu) + 1357394763 - 1357395797 < v2 - 328)) ^ v2)))();
}

uint64_t sub_1C21ECEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  a14 = (1388665877 * (((&a13 | 0x4F3DC3CB) - (&a13 & 0x4F3DC3CB)) ^ 0xC290A127)) ^ 0xDFABAF92;
  v16 = (*(v15 + 19728))(&a13);
  return (*(v15 + 8 * ((2021 * (a13 == v14)) ^ 0xCDu)))(v16);
}

uint64_t sub_1C21ECF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v26 - 136) = &a22;
  *(v26 - 128) = a14;
  *(v26 - 120) = &a22;
  *(v26 - 112) = a13;
  *(v26 - 144) = v23 - 1504884919 * ((~((v26 - 144) | 0x112FED7C) + ((v26 - 144) & 0x112FED7C)) ^ 0x1513A598) + 535;
  (*(v25 + 8 * (v23 ^ 0x8AF)))(v26 - 144);
  *(v26 - 144) = &a22;
  *(v26 - 136) = a13;
  *(v26 - 104) = a14;
  *(v26 - 112) = (v23 + 1990) ^ (1785193651 * ((((v26 - 144) | 0xF1AEA6C5) + (~(v26 - 144) | 0xE51593A)) ^ 0xE2724AE4));
  *(v26 - 128) = &a22;
  *(v26 - 120) = &a16;
  v27 = (*(v25 + 8 * (v23 ^ 0x8BE)))(v26 - 144);
  return (*(v25 + 8 * ((((v23 ^ 0xFFFFFEC4) + v24 - 111799921 >= (((v23 ^ 0x80F) - 1230727478) & 0x495B66A3 ^ 0x7FFFF95Cu)) * (((v23 ^ 0x80F) - 181301050) & 0xACE675F ^ 0x2BC)) ^ ((v23 ^ 0x80F) - 1877))))(v27);
}

void sub_1C21ED088(uint64_t a1)
{
  v1 = 50899313 * (((a1 | 0x7B18AA84) - (a1 & 0x7B18AA84)) ^ 0x51D380FE);
  v2 = *(a1 + 12) + v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1C21ED14C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, unsigned int a42)
{
  v45 = v44[396] ^ ((*v44 & 0x7FFFFFFE | (((v42 + 1206) ^ (a4 - 1138)) + 1384989484) & v44[623]) >> 1);
  v44[623] = (v45 + a7 - (a6 & (2 * v45))) ^ *(v43 + 4 * (*v44 & 1));
  return (*(a2 + 8 * ((3130 * (a42 > 0x26F)) ^ (v42 + 1206))))();
}

uint64_t sub_1C21ED288(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_1C21ED3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 120) = (v19 - 92) ^ (((((v22 - 120) | 0xB755F0F7) + (~(v22 - 120) | 0x48AA0F08)) ^ 0x9D9EDA8C) * v20);
  *(v22 - 104) = &a18;
  *(v22 - 112) = a17;
  v23 = (*(v18 + 8 * (v19 + 1276)))(v22 - 120);
  return (*(v18 + 8 * ((3123 * (*(v22 - 116) > (v21 + v19 + 141 - 1314))) ^ v19)))(v23);
}

uint64_t sub_1C21ED85C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 916));

  return v3(v1);
}

uint64_t sub_1C21ED8F4()
{
  v4 = 143681137 * ((110911599 - ((v3 - 144) | 0x69C606F) + ((v3 - 144) | 0xF9639F90)) ^ 0x985928D8);
  *(v3 - 140) = (v2 + 691) ^ v4;
  *(v3 - 136) = v8 - v4 + (((v2 - 531) | 9) ^ 0x8A3615D1);
  *(v3 - 128) = v6;
  *(v3 - 120) = v0;
  (*(v1 + 8 * (v2 ^ 0xBB0)))(v3 - 144);
  *v7 = v8;
  result = v9;
  *(v9 + 8) = -955998424;
  return result;
}

uint64_t sub_1C21EDA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char *a13, uint64_t a14, char a15, int a16, unsigned int a17)
{
  v24 = v23 ^ 0xA5;
  v25 = *(v17 + 64) - v22;
  v26 = 1388665877 * ((~&a12 & 0xDDFAC525 | &a12 & 0x22053ADA) ^ 0x5057A7C9);
  a13 = &a10;
  a14 = v20;
  a16 = (v24 + 1198) ^ v26;
  a17 = (((v24 - 99) ^ 0x86A18937) + (((v21 ^ 0x30002015) - 805314581) ^ ((v21 ^ 0xDD8A9C6D) + 578118547) ^ ((v21 ^ 0x86C58488) + 2033875832))) ^ v26;
  a15 = ((107 * (v24 ^ 0x9C)) ^ 0xEF) * v25 - 21 * ((~&a12 & 0x25 | &a12 & 0xDA) ^ 0xC9) - 30;
  v27 = (*(v19 + 8 * (v24 + 2025)))(&a12);
  return (*(v19 + 8 * ((1697 * (a12 == v18)) ^ v24)))(v27);
}

void Fc3vhtJDvr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21EDDD4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = *(a2 + v5 + 16);
  v9 = (v6 + v5 + v2);
  *v9 = *(a2 + v5);
  v9[1] = v8;
  return (*(v7 + 8 * (((v5 + ((v4 - 700) | 0x24D) - 589 == v3) * a1) ^ v4)))();
}

void sub_1C21EDE18(int a1@<W8>)
{
  if (a1 == v3 + ((((v2 - 2255) | 0x202) - 1413125775) & 0x543A968E) - 646)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  JUMPOUT(0x1C21EDE54);
}

uint64_t sub_1C21EDE98@<X0>(uint64_t a1@<X1>, unsigned int a2@<W3>, uint64_t a3@<X4>, int a4@<W8>)
{
  v8 = (v6 + 4 * v5);
  v9 = v5 + ((a4 + 630) | a2) - 881;
  *v8 = v8[397] ^ v7 ^ *(a3 + 4 * (*(v6 + 4 * v9) & 1)) ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(a1 + 8 * (((16 * (v9 != 227)) | ((v9 != 227) << 6)) ^ a4)))();
}

uint64_t sub_1C21EE164(int8x16_t a1, int8x16_t a2)
{
  v8 = v2 + 2;
  v9 = v4 + 2;
  v10 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a1)), a2);
  v9[-1] = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a1)), a2);
  *v9 = v10;
  return (*(v7 + 8 * (((v3 != 32) * v6) ^ v5)))();
}

void sub_1C21EE174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v13 = (v10 ^ 0xCA218D4A) & (2 * (v10 & (v11 + 65))) ^ v10 & (v11 + 65);
  v14 = (v10 ^ 0xC2218112) << (((v12 + 50) | 0x10) + 103);
  v15 = (v14 ^ 0x5C0B1EFC) & (v10 ^ 0xC2218112) ^ v14 & 0x2E058F7E;
  v16 = ((4 * (v15 ^ 0x22048102)) ^ 0xB8163DF8) & (v15 ^ 0x22048102) ^ (4 * (v15 ^ 0x22048102)) & 0x2E058F7C;
  v17 = (v16 ^ 0x28040D60) & (16 * ((v15 ^ 0x2048A70) & (4 * v13) ^ v13)) ^ (v15 ^ 0x2048A70) & (4 * v13) ^ v13;
  v18 = ((16 * (v16 ^ 0x6018206)) ^ 0xE058F7E0) & (v16 ^ 0x6018206) ^ (16 * (v16 ^ 0x6018206)) & 0x2E058F70;
  v19 = v17 ^ 0x2E058F7E ^ (v18 ^ 0x20008700) & (v17 << 8);
  v20 = v10 ^ (2 * ((v19 << 16) & 0x2E050000 ^ v19 ^ ((v19 << 16) ^ 0xF7E0000) & (((v18 ^ 0xE05081E) << 8) & 0x2E050000 ^ 0x2A000000 ^ (((v18 ^ 0xE05081E) << 8) ^ 0x58F0000) & (v18 ^ 0xE05081E))));
  *a9 = (HIBYTE(v20) ^ 0xAC) - 2 * ((HIBYTE(v20) ^ 0xAC) & 0x6B ^ HIBYTE(v20) & 1) + 106;
  a9[1] = (BYTE2(v20) ^ 0x27) - ((2 * (BYTE2(v20) ^ 0x27)) & 0xD4) + 106;
  a9[2] = (BYTE1(v20) ^ 0x10) - ((v20 >> 7) & 0xD4) + 106;
  a9[3] = v20 ^ 0xFA;
  v21 = v9 - ((2 * v9) & 0x8B5E8AB6528AB14CLL) - 0x3A50BAA4D6BAA75ALL;
  a9[4] = (HIBYTE(v21) ^ 0xC5) - ((2 * (HIBYTE(v21) ^ 0xC5)) & 0xD4) + 106;
  a9[5] = (BYTE6(v21) ^ 0xAF) + (~(2 * (BYTE6(v21) ^ 0xAF)) | 0x2B) + 107;
  a9[6] = (BYTE5(v21) ^ 0x45) - ((2 * (BYTE5(v21) ^ 0x45)) & 0xD4) + 106;
  a9[7] = (BYTE4(v21) ^ 0x5B) - 2 * ((BYTE4(v21) ^ 0x5B) & 0xEE ^ BYTE4(v21) & 4) + 106;
  a9[8] = (((v9 - ((2 * v9) & 0x528AB14C) + 692410534) >> 24) ^ 0x29) - ((2 * (((v9 - ((2 * v9) & 0x528AB14C) + 692410534) >> 24) ^ 0x29)) & 0xD4) + 106;
  a9[9] = (BYTE2(v21) ^ 0x45) - ((2 * (BYTE2(v21) ^ 0x45)) & 0xD4) + 106;
  a9[10] = (BYTE1(v21) ^ 0x58) - ((2 * (BYTE1(v21) ^ 0x58)) & 0xD4) + 106;
  a9[11] = (v9 - ((2 * v9) & 0x4C) - 90) ^ 0xCC;
  JUMPOUT(0x1C21EA15CLL);
}

uint64_t sub_1C21EE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  v48 = (v46 ^ 0x564AA241u) + 1556;
  v49 = *a30;
  if ((((v48 ^ 0xFFFFFFFFFFFFFE93) + 191 * (v46 ^ 0x564AA241u)) & *a30) != 0 || (v50 = *(&off_1F41B25C0 + v46 - 1447731678), v52 = *(v50 - 4), v51 = (v50 - 4), v52))
  {
    JUMPOUT(0x1C21E26CCLL);
  }

  v53 = ((v46 ^ 0x564AA241) - 1935204945) & 0x7358E7EF;
  *v51 = v49;
  **(&off_1F41B25C0 + (v48 ^ 0x64B)) = 255;
  *v49 |= ~v49[*v49 & 0x3ELL] << 16;
  v49[4] |= ~v49[v49[4] & (v53 - 1387)] << 16;
  v49[8] |= ~v49[v49[8] & 0x3ELL] << 16;
  v49[12] |= ~v49[v49[12] & 0x3ELL] << 16;
  v49[16] |= ~v49[v49[16] & 0x3ELL] << 16;
  v49[20] |= ~v49[v49[20] & 0x3ELL] << 16;
  v49[24] |= ~v49[v49[24] & 0x3ELL] << 16;
  v49[28] |= ~v49[v49[28] & 0x3ELL] << 16;
  v49[32] |= ~v49[v49[32] & 0x3ELL] << 16;
  v49[36] |= ~v49[v49[36] & 0x3ELL] << 16;
  v49[40] |= ~v49[v49[40] & 0x3ELL] << 16;
  v49[44] |= ~v49[v49[44] & 0x3ELL] << 16;
  v49[48] |= ~v49[v49[48] & 0x3ELL] << 16;
  v49[52] |= ~v49[v49[52] & 0x3ELL] << 16;
  v49[56] |= ~v49[v49[56] & 0x3ELL] << 16;
  v49[60] |= ~v49[v49[60] & 0x3ELL] << 16;
  v54 = (*(v47 + 8 * (v48 ^ 0xF6C)))(&a46, 0, 1024);
  STACK[0x528] = &a46;
  return (*(a40 + 8 * ((585 * (((v53 << 6) ^ 0x16C40 ^ (v53 + 119)) == 32)) ^ v53)))(v54);
}

uint64_t sub_1C21EEA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v29 = 896639297 * ((v28 + 347753999 - 2 * ((v28 - 144) & 0x14BA4E9F)) ^ 0x11D8E7);
  *(v27 + 8) = &a24;
  *(v28 - 144) = v29 ^ 0x73001247;
  *(v28 - 140) = (v24 + 1029) ^ v29;
  v30 = (*(v25 + 8 * (v24 ^ 0xA65u)))(v28 - 144);
  return (*(v25 + 8 * (((((v24 - 1581456808) & 0x5E431EF8) - 919) * (v26 == 0)) ^ (v24 + 71))))(v30);
}

uint64_t sub_1C21EEE20()
{
  v5 = (v0 + 401) | 0x101;
  v6 = 896639297 * ((v4 - 144) ^ 0x14AB9678);
  *(v4 - 136) = v10;
  *(v4 - 144) = v6 ^ 0x72FF1247;
  *(v4 - 140) = (v0 + 153) ^ v6;
  (*(v1 + 8 * (v0 + 687)))(v4 - 144);
  *(v4 - 104) = v3;
  *(v4 - 128) = v9;
  *(v4 - 120) = v10;
  *(v4 - 144) = v9;
  *(v4 - 136) = v2;
  *(v4 - 112) = (v0 + 605) ^ (1785193651 * ((((v4 - 144) | 0xB38CF121) + (~(v4 - 144) | 0x4C730EDE)) ^ 0xA0501D00));
  (*(v1 + 8 * (v0 + 737)))(v4 - 144);
  *(v4 - 128) = v5 + 210068311 * ((2 * ((v4 - 144) & 0x67C4D590) - (v4 - 144) + 406530669) ^ 0x8AED15C9) - 680;
  *(v4 - 144) = v9;
  *(v4 - 136) = v8;
  return (*(v1 + 8 * (v5 + 62)))(v4 - 144);
}

uint64_t sub_1C21EEF30()
{
  STACK[0x430] = v0 - 1824;
  LODWORD(STACK[0x4BC]) = v2;
  return (*(v3 + 8 * ((((v1 - 1155996107) ^ 0xBB18EBBF ^ (v1 - 1155996107) & 0x44E717DF ^ 0x350) * (STACK[0x398] == 0)) ^ (v1 - 554))))();
}

uint64_t sub_1C21EF020()
{
  v6 = (((v3 | 0xAB3DAFF4) - (v3 & 0xAB3DAFF4)) ^ 0x81F6858E) * v0;
  *(v4 - 176) = 0;
  *(v4 - 168) = &STACK[0x4D4];
  *(v4 - 192) = &STACK[0x508];
  *(v4 - 160) = v2 - v6 + 89;
  *(v4 - 156) = 808406678 - v6;
  v7 = (*(v5 + 8 * (v2 ^ 0xAA2)))(v4 - 192);
  return (*(STACK[0x2D8] + 8 * (((*(v4 - 184) == v1 + (v2 ^ 0x39C) - 178) * ((v2 ^ 0x39C) - 2)) ^ v2)))(v7);
}

uint64_t sub_1C21EF0D4@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 + 210068311 * (&v5 ^ 0x92D63FA4) + 1490;
  v5 = a1;
  v6 = v2;
  return (*(v1 + 8 * (v3 ^ 0x9C8)))(&v5);
}

void sub_1C21EF118(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40) + 1380333833 * (((a1 ^ 0x67D699DA | 0x60ADEB9F) - (a1 ^ 0x67D699DA | 0x9F521460) - 1622010784) ^ 0xB929D9CF);
  v2 = 1388665877 * (((&v5 | 0x41371095) + (~&v5 | 0xBEC8EF6A)) ^ 0xCC9A7278);
  v5 = v4;
  v6 = v1 + v2 - 562358880;
  v7 = v2 - 325162679;
  v3 = *(&off_1F41B25C0 + v1 + 31) - 8;
  (*&v3[8 * v1 + 19272])(&v5);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1C21EF400@<X0>(int a1@<W8>)
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *(v2 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v3 + 1);
  return (*(v6 + 8 * ((991 * (v7 == 0)) ^ (a1 - 121))))();
}

uint64_t sub_1C21EF4EC@<X0>(char a1@<W8>)
{
  v7 = (v2 - 2);
  v8 = a1 + 2;
  *v7 = (v3 + v8) * (v8 ^ 0xBA);
  *(v7 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v6 + 8 * (((v4 == 0) * v5) ^ v1)))();
}

uint64_t sub_1C21EF590()
{
  v4 = ((606 * (v1 ^ 0x823u)) ^ 0xFFFFFFFFFFFFF8E5) + v2;
  if (HIDWORD(v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = (v1 ^ 0x823u) + 1038 - v0 - 1043 >= v4;
  }

  v6 = v5;
  return (*(v3 + 8 * ((4 * v6) | (8 * v6) | v1)))();
}

void sub_1C21EF794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, __int16 a20, char a21, char *a22, int a23, uint64_t a24)
{
  a23 = (v24 + 1609) ^ (143681137 * ((&a21 - 1534902199 - 2 * (&a21 & 0xA4834049)) ^ 0xC5B9F701));
  a22 = &a19;
  a24 = a14;
  (*(v25 + 8 * (v24 + 1702)))(&a21);
  JUMPOUT(0x1C21E0FE4);
}

void sub_1C21EF83C(int a1@<W8>)
{
  v6 = STACK[0x458];
  v7 = 1504884919 * ((~(v2 | 0x6A8CFD3A) + (v2 & 0x6A8CFD3A)) ^ 0x6EB0B5DE);
  *(v4 - 144) = v7 + 899201337 * LODWORD(STACK[0x514]) + 2081146242;
  *(v4 - 176) = STACK[0x268];
  *(v4 - 168) = v3;
  *(v4 - 192) = v7 + v1 - ((((a1 - 1605) | 0x49) - 343) & (2 * v1)) - 1280469239;
  *(v4 - 188) = v7 + a1 - 1776825158;
  *(v4 - 160) = STACK[0x260];
  *(v4 - 152) = v6;
  (*(v5 + 8 * (a1 + 594)))(v4 - 192);
  LODWORD(STACK[0x2E8]) = *(v4 - 184);
  JUMPOUT(0x1C21EF90CLL);
}

uint64_t sub_1C21EF990()
{
  v3 = v0 + (v1 + 1074) - 2337;
  v5 = v3 < 0x10 && ((v0 - 1) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * ((v5 * ((17 * (v1 ^ 0x4B1)) ^ 0x653)) ^ v1)))();
}

uint64_t sub_1C21EF9E8()
{
  v2 = STACK[0x2D0] - 618;
  v3 = STACK[0x3A0];
  STACK[0x348] = *(v1 + 8 * (STACK[0x2D0] - 791));
  v4 = STACK[0x278];
  STACK[0x540] = v3;
  LODWORD(STACK[0x54C]) = 1357394763;
  STACK[0x410] = v4;
  return (*(v1 + 8 * ((108 * (v2 + 726 + (*(v3 + 68) & 0x3Fu) + 1357394763 - 1357395797 < v2 - 328)) ^ v2)))();
}

uint64_t sub_1C21EFABC@<X0>(uint64_t a1@<X0>, int a2@<W8>, __n128 a3@<Q0>)
{
  v3[-1] = a3;
  *v3 = a3;
  return (*(v5 + 8 * (((a1 == 0) * a2) ^ v4)))(a1 - 8);
}

void sub_1C21EFB84(int a1@<W8>)
{
  v3 = (v1 - 751) | 0x338;
  v4 = *(v2 + 4);
  if (v4 + 675291631 >= v3 - 1016)
  {
    v5 = a1;
  }

  else
  {
    v5 = -a1;
  }

  *(v2 + 4) = v5 + v4;
  JUMPOUT(0x1C21EFBE4);
}

uint64_t sub_1C21EFC30@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 - 1556772588) & 0x5CCA758D;
  v8 = v5 + v7 - 1292;
  *(*(a1 + 8) + 4 * (v5 + v2)) = v6 ^ v4;
  *(a1 + 4) = v8;
  v9 = v8 + v2;
  if (v8 + v2 < 0)
  {
    v9 = -v9;
  }

  return (*(v1 + 8 * (((((v9 ^ 0xD7BFDEF1) + ((v7 ^ 0xAF7FB8EF) & (2 * v9)) + 675291406) >= 0) * ((v7 ^ 0x62C) - 384)) ^ v7 ^ 0x1F5)))();
}

uint64_t sub_1C21EFCE0@<X0>(char a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = v5 - 1;
  *(a5 + v9) = *(a3 + v9) + (a1 | ~(2 * *(a3 + v9))) + 107;
  return (*(v7 + 8 * (((v9 == (((v6 - 99) | a2) ^ a4)) * v8) ^ v6)))();
}

uint64_t sub_1C21EFD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = (v17 - 542397956) ^ (1388665877 * ((2 * ((&a15 ^ 0xDD1C8166) & 0x2DFAC602) - (&a15 ^ 0xDD1C8166) + 1376074237) ^ 0x2B4DA77));
  v18 = (*(v16 + 8 * (v17 + 1036)))(&a15);
  return (*(v16 + 8 * (((a15 == -955998424) * (((v17 - 1170) | 0x490) ^ 0x847)) ^ v17)))(v18);
}

uint64_t sub_1C21EFEC4()
{
  v3 = 50899313 * ((((v1 - 192) ^ 0x849C4EF9 | 0x3DBB51A7) - (((v1 - 192) ^ 0x849C4EF9) & 0x3DBB51A7)) ^ 0x93EC3524);
  *(v1 - 192) = &STACK[0x508];
  *(v1 - 176) = 0;
  *(v1 - 168) = &STACK[0x4D4];
  *(v1 - 160) = v0 - v3 + 89;
  *(v1 - 156) = 808406676 - v3;
  v4 = (*(v2 + 8 * (v0 ^ 0xAA2)))(v1 - 192);
  return (*(STACK[0x2D8] + 8 * ((176 * (*(v1 - 184) == (((v0 ^ 0x39C) - 955998488) ^ (v0 - 636)))) ^ v0)))(v4);
}

uint64_t sub_1C21F004C()
{
  v2 = (*(v1 + 8 * (v0 + 745)))(1576, 0x105004009637391);
  v3 = STACK[0x2D8];
  STACK[0x420] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((((v0 + 1928868932) & 0x8D07CDFF) - 1407) ^ 0x369)) ^ v0)))();
}

void sub_1C21F00C4(_DWORD **a1@<X0>, uint64_t a2@<X8>)
{
  **a1 = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x1C21B45E8);
}

uint64_t sub_1C21F00D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  *(v23 - 104) = v22 + 1380333833 * ((v23 - 818675789 - 2 * ((v23 - 120) & 0xCF34002B)) ^ 0x7166ABA1) - 290;
  *(v23 - 120) = &a18;
  *(v23 - 112) = &a20;
  v24 = (*(v21 + 8 * (v22 ^ 0xB10)))(v23 - 120);
  return (*(v21 + 8 * ((2718 * (v20 == v22 + 586 + ((2 * v22) ^ 0xE) - 2347)) ^ v22)))(v24);
}

void sub_1C21F03C0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) + 1504884919 * (((a1 | 0xB54EA85E) - (a1 & 0xB54EA85E)) ^ 0x4E8D1F45);
  v4 = *(a1 + 8);
  v3 = v1 - 50899313 * ((-394416468 - (&v3 | 0xE87DAEAC) + (&v3 | 0x17825153)) ^ 0x3D497B29) - 380;
  v2 = *(&off_1F41B25C0 + (v1 & 0x22F4C93B)) - 8;
  (*&v2[8 * (v1 ^ 0xF6A)])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21F04EC()
{
  v9 = (v4 - 2);
  v10 = v2 + 2;
  *v9 = (v3 + 2) * (v10 ^ v6);
  *(v9 - 1) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v5 == 2) * v7) ^ v1)))();
}

uint64_t sub_1C21F054C(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 15;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void sub_1C21F056C(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 1029127688 - 2 * (a1 & 0x3D573E08)) ^ 0x179C1472));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1C21F0618@<X0>(unsigned int a1@<W8>)
{
  v4 = 6 * (v2 ^ 0x1AD);
  v5 = a1 + 781726234 < v1 - 575668509;
  if (a1 > ((v4 - 42) ^ 0xD167CE51) != v1 - 575668509 < (((v4 - 156) | 0x30) ^ 0x2E983168u))
  {
    v5 = v1 - 575668509 < (((v4 - 156) | 0x30) ^ 0x2E983168u);
  }

  return (*(v3 + 8 * ((1148 * v5) ^ v4)))(198);
}

uint64_t sub_1C21F0648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = 210068311 * (((&a15 | 0x5EC25EE) - &a15 + (&a15 & 0xFA13DA10)) ^ 0x973A1A4A) + 923;
  a15 = &a11;
  v19 = (*(v17 + 19296))(&a15);
  return (*(v17 + 8 * ((2041 * (((v18 - 1) ^ 0x8C ^ (a16 == -955998424)) & 1)) ^ 0x3FCu)))(v19);
}

void sub_1C21F06F4(_DWORD *a1)
{
  v1 = *a1 - 1564307779 * ((((2 * a1) | 0x21D91FE) - a1 - 17746175) ^ 0x960304EC);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21F07D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = &a17;
  *(v20 - 128) = a16;
  *(v20 - 136) = (v19 - 551) ^ (((((v20 - 136) | 0xB86BC7D4) - (v20 - 136) + ((v20 - 136) & 0x47943828)) ^ 0x92A0EDAE) * v17);
  v21 = (*(v18 + 8 * (v19 ^ 0xFF3)))(v20 - 136);
  v22 = *(v20 - 132) - 246108953 >= ((((v19 - 572049218) & 0x2218C5FB) + 332) ^ 0xFF3F46AD);
  return (*(v18 + 8 * ((2 * v22) | (4 * v22) | v19)))(v21);
}

uint64_t sub_1C21F089C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = v4 + 573;
  v9 = *(v7 + 48 * v5 + 36);
  v11 = v9 != a4 && ((v8 + 1876106178) ^ 0x395BC5CFu) + v9 < a3 + ((v8 + 1876106178) & 0x902CE366) - 358;
  return (*(v6 + 8 * ((2017 * v11) ^ v8)))();
}

void sub_1C21F0900(uint64_t a1)
{
  v1 = 1556366573 * (a1 ^ 0x64E423EA);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21F1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, unsigned int a20)
{
  v22 = 143681137 * ((&a17 & 0xD4119917 | ~(&a17 | 0xD4119917)) ^ 0x4AD4D1A0);
  a18 = v22 ^ 0x696EE914;
  LODWORD(a17) = v22 + 1660;
  a19 = v22 + 812298630;
  a20 = v22 + 1634098212;
  (*(v21 + 20016))(&a17);
  a19 = 210068311 * ((&a17 & 0x575D2176 | ~(&a17 | 0x575D2176)) ^ 0x3A74E12D) + 923;
  a17 = &a14;
  v23 = (*(v21 + 19296))(&a17);
  return (*(v21 + 8 * ((858 * (a18 == -955998424)) ^ v20)))(v23);
}

uint64_t sub_1C21F1204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = 147 * ((v5 - 755) ^ 0x86);
  v8 = *(*a2 + (v4 - 1366990185)) ^ 0x6A;
  v9 = ((*(*a2 + (v4 - 1366990187)) ^ 0x6A) << (((-109 * ((v5 + 13) ^ 0x86) + 44) & 0xBF) - 121)) + ((*(*a2 + ((v7 + 1741935138) & 0x982C27E9 ^ 0xAE85603D) + v4) ^ 0x6A) << 24) + ((*(*a2 + (v4 - 1366990186)) ^ 0x6A) << 8) + v8;
  return (*(v3 + 8 * ((94 * (((v9 + v2 - 2 * (v9 & 0x47049F2F ^ v8 & 7)) & 0xFFFFFF ^ 0x49F28) - (v6 + *(a1 + 24)) != -392286863)) ^ v7)))();
}

uint64_t sub_1C21F13EC()
{
  v4 = v2 + 1525547974 > (v0 + 659328546);
  if ((v2 + 1525547974) < 0x6E36B2B7 != v0 + 659328546 < ((v3 + 309) ^ 0x6E36B457u))
  {
    v4 = (v2 + 1525547974) < 0x6E36B2B7;
  }

  return (*(v1 + 8 * ((v4 | (16 * v4)) ^ v3)))();
}

void sub_1C21F1594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v33 - 144) = &a22;
  *(v33 - 136) = v31;
  *(v33 - 112) = (v32 + 1990) ^ (1785193651 * ((v33 - 144) ^ 0x13DCEC20));
  *(v33 - 128) = &a22;
  *(v33 - 120) = &a30;
  *(v33 - 104) = a14;
  (*(v30 + 8 * (v32 ^ 0x8BE)))(v33 - 144);
  JUMPOUT(0x1C21E984CLL);
}

uint64_t sub_1C21F1690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, unsigned int a18, char *a19, int a20, uint64_t a21, unsigned int a22)
{
  v25 = 1380333833 * (((&a17 | 0xB659712A) - (&a17 & 0xB659712A)) ^ 0x80BDAA0);
  a17 = (v24 - 2013067715) ^ v25;
  a18 = v25 ^ 0xF1914E9C;
  a19 = &a15;
  a21 = a14;
  a22 = v25 + 1603508753;
  v26 = (*(v23 + 8 * (v24 + 1256)))(&a17);
  return (*(v23 + 8 * ((13 * (((v24 + 72) ^ (a20 == v22)) & 1)) ^ v24)))(v26);
}

uint64_t sub_1C21F18F8(__n128 a1)
{
  a1.n128_u16[0] = 27242;
  a1.n128_u8[2] = 106;
  a1.n128_u8[3] = 106;
  a1.n128_u8[4] = 106;
  a1.n128_u8[5] = 106;
  a1.n128_u8[6] = 106;
  a1.n128_u8[7] = 106;
  return sub_1C21F1918((2 * v2) ^ 0x394u, v1 - 7, 2982, a1);
}

uint64_t sub_1C21F1950@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, unsigned int a4@<W3>, char a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = (v9 - 1);
  v14 = v10 ^ a4;
  *(a6 + v13) = ((v13 & 0xF) * a3) ^ *(v11 + v13) ^ *(a7 + (v13 & 0xF)) ^ *((v13 & 0xF) + v7 + 5) ^ *((v13 & 0xF) + v14 + v8 - 881) ^ a5;
  return (*(v12 + 8 * (((a1 & ~(v14 ^ (v13 == 0))) * a2) ^ (v14 + 196))))();
}

void sub_1C21F19E4(unint64_t a1)
{
  STACK[0x380] = a1;
  LODWORD(STACK[0x4DC]) = v1;
  JUMPOUT(0x1C21F1A04);
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39BF0) ^ 0x7B)) ^ byte_1C23446D0[byte_1C2340A30[(65 * ((qword_1EBF39C20 + dword_1EBF39BF0) ^ 0x7B))] ^ 0x9A]) - 31);
  v5 = off_1F41B2BA0 - 8;
  v6 = off_1F41B2A10 - 8;
  v7 = *(&off_1F41B25C0 + (*(off_1F41B2A10 + (*(off_1F41B2BA0 + (65 * ((qword_1EBF39C20 - *v4) ^ 0x7B)) - 8) ^ 0x71u) - 8) ^ (65 * ((qword_1EBF39C20 - *v4) ^ 0x7B))) - 162);
  v8 = (*v7 + *v4) ^ &v13;
  *v4 = 410816321 * v8 + 0x265DD2AD758AD77BLL;
  *v7 = 410816321 * (v8 ^ 0x265DD2AD758AD77BLL);
  v11 = 0;
  v15 = 1380333833 * ((2 * (&v14 & 0x356C32E8) - &v14 + 1251200278) ^ 0xF4C1669C) - 1224077185;
  v14 = &v11;
  v9 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + dword_1EBF39BF0) ^ 0x7B)) ^ byte_1C23446D0[byte_1C2340A30[(65 * ((qword_1EBF39C20 + dword_1EBF39BF0) ^ 0x7B))] ^ 0x9A]) - 114) - 8;
  (*&v9[8 * ((65 * (*v4 ^ 0x7B ^ *v7)) ^ v6[v5[(65 * (*v4 ^ 0x7B ^ *v7))] ^ 0x5E]) + 18288])(&v14);
  v12 = 0;
  v15 = 1380333833 * (((&v14 | 0xC643C5B6) - (&v14 & 0xC643C5B6)) ^ 0x78116E3C) - 1224077185;
  v14 = &v12;
  v10 = 65 * ((*v7 - *v4) ^ 0x7B);
  (*&v9[8 * (*(off_1F41B2A78 + (*(off_1F41B2770 + v10 - 8) ^ 0xB1u) - 4) ^ v10) + 18600])(&v14);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1C21F20D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v5.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  v6 = veorq_s8(*(v2 + a2 - 16), v5);
  v7 = (v2 + a1 - 16);
  v7[-1] = veorq_s8(*(v2 + a2 - 32), v5);
  *v7 = v6;
  return (*(v4 + 8 * ((11 * ((v3 ^ 0x2DEu) + 486 - (v2 & 0xFFFFFFE0) == 2184)) ^ v3 ^ 0x2DE)))();
}

uint64_t sub_1C21F2140(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, int8x16_t a38, uint64_t a39, uint64_t a40, int8x16_t a41, int8x16_t a42)
{
  v48 = v45 + 2;
  v49 = (v46 + (v44 + 32));
  v50 = veorq_s8(v48[-1], *v49);
  v51 = veorq_s8(*v48, v49[1]);
  return (*(v47 + 8 * (((v42 == 32) * (((v43 - 1013) | 2) + 3186)) ^ v43)))(vorrq_s8(vqtbl1q_s8(v50, a42), a1), vorrq_s8(vqtbl1q_s8(v50, a41), a2), vorrq_s8(vqtbl1q_s8(v50, a38), a3), vorrq_s8(vqtbl1q_s8(v50, a37), a4), vorrq_s8(vqtbl1q_s8(v51, a42), a5), vorrq_s8(vqtbl1q_s8(v51, a38), a6), vorrq_s8(vqtbl1q_s8(v51, a41), a7), vorrq_s8(vqtbl1q_s8(v51, a37), a8));
}

uint64_t sub_1C21F215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v29 = *v26;
  v30 = *(v26 + 48);
  *(v27 - 184) = ((v24 - 1230) | 0x102) + 700;
  *(v27 - 112) = veorq_s8(*v29, xmmword_1C2349990);
  if (v28)
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v33 = *(v25 + 8 * ((416 * v32) ^ v24));
  *(v27 - 188) = -42900;
  return v33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1C21F21BC@<X0>(char a1@<W3>, unint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = a3 + 147;
  v58 = &STACK[0x1870] + v56;
  v59 = *v55;
  *(v58 + 17) = *(v55 + 1);
  *(v58 + 25) = *(v55 + 9);
  *(v58 + 29) = *(v55 + 13);
  v58[31] = *(v55 + 15);
  v61 = *v55;
  v60 = v55[1];
  *v58 = v61;
  *(v58 + 1) = v60;
  v58[16] = v59;
  v62 = (v58 + 16);
  v63 = v57 ^ 0x75A;
  v64 = *(&off_1F41B25C0 + (v57 ^ 0x3E5)) - 8;
  v65 = v64[v62[5] ^ 0x56];
  v66 = *(&off_1F41B25C0 + (v57 & 0x3455F045)) - 12;
  LODWORD(v61) = v66[v62[15] ^ 0x74];
  v67 = v66[(v62[7] ^ ((v57 ^ 0x5A) - 120))];
  v68 = ((((19 * v65 - 105) ^ (76 * v65 + 48)) << 16) ^ 0xF844D205) & ~v67 | v67 & 0xFA;
  v69 = v66[v62[11] ^ 0x19];
  v70 = *(&off_1F41B25C0 + v57 - 823);
  v71 = *(v70 + (v62[2] ^ 0xA4));
  v72 = *(&off_1F41B25C0 + v57 - 690) - 12;
  v73 = v72[v62[12] ^ 0x28];
  v74 = (((v73 ^ (v73 >> 2) ^ ((v73 >> 3) | 0xC0)) << 24) ^ 0xBA3940BA) & (v61 ^ 0xFF3FC9FE) | v61 & 0x45;
  LODWORD(v61) = v72[*v62 ^ 0xBBLL];
  v75 = v64[v62[13] ^ 0xCFLL];
  v76 = (((v61 ^ (v61 >> 3) ^ (v61 >> 2)) << 24) ^ 0x6A92628B) & (((v71 ^ (v71 >> 5) ^ (v71 >> 3)) << 8) ^ 0xFF932E8F) | ((v71 ^ (v71 >> 5) ^ (v71 >> 3)) << 8) & 0x9D00;
  LOBYTE(v61) = (19 * v75 - 105) ^ (76 * v75 + 48);
  v77 = v72[v62[8] ^ 4];
  v225 = v66;
  v78 = (((v77 ^ (v77 >> 3) ^ (v77 >> 2)) << 24) ^ 0x1799C9D7) & (v69 ^ 0xFFDDEDDF) | v69 & 0x28;
  v79 = *(v70 + (v62[6] ^ 0xAELL));
  v80 = (v76 ^ 0x761D02B) & (v66[v62[3] ^ 0xF1] ^ 0xFFF3FF60) | (v66[v62[3] ^ 0xF1] & a1);
  v81 = (((v79 ^ (v79 >> 5) ^ (v79 >> 3)) << 8) ^ 0xA54E0BFC) & (v68 ^ 0x5FA12DFA) | v68 & 0x58B10003;
  LOBYTE(v76) = v64[v62[1] ^ 0x72];
  v82 = *(v70 + (v62[10] ^ 0x41));
  v83 = v82 ^ (v82 >> 5) ^ (v82 >> 3);
  v223 = v72;
  v224 = v70;
  v84 = (*(v70 + (v62[14] ^ 0xC9)) ^ (*(v70 + (v62[14] ^ 0xC9)) >> 3) ^ ((*(v70 + (v62[14] ^ 0xC9)) >> 5) | 0xF0)) << 8;
  v85 = v72[v62[4] ^ 0x51];
  v86 = (v84 ^ 0xFFFF18FF) & (((v61 << 16) & 0xB0000 | (v74 ^ 0x34CD9D87) & ((v61 << 16) ^ 0xFF6EDDFF)) ^ 0x1D639EB4);
  LODWORD(v61) = (v85 ^ (v85 >> 3) ^ (v85 >> 2) ^ 0xFFFFFFEF) << 24;
  v226 = v64;
  LOBYTE(v62) = v64[v62[9] ^ a2];
  LODWORD(a20) = -105;
  LODWORD(a19) = 48;
  LODWORD(v62) = ((76 * v62 + 48) ^ (19 * v62 - 105)) << 16;
  LODWORD(STACK[0x230]) = v80 & 0x1BE11386 ^ 0x2C7E8A43 ^ ((((19 * v76 - 105) ^ (76 * v76 + 48)) << 16) ^ 0xE493EC79) & (v80 ^ 0x440CCE15);
  LODWORD(STACK[0x270]) = v61 & 0x50000000 ^ 0x7424764C ^ (v61 ^ 0x4CFFFFFF) & (v81 ^ 0x52DD3368);
  LODWORD(STACK[0x278]) = v84 & 0xBC00 ^ 0x9C7A17E6 ^ v86;
  LODWORD(STACK[0x248]) = v62 & 0x680000 ^ 0x43DB8C20 ^ (v62 ^ 0xFF1EFFFF) & (((v83 << 8) & 0xAC00 | ((v83 << 8) ^ 0xFFFFC1FF) & (v78 ^ 0x49149A94)) ^ 0x551A3238);
  v221 = STACK[0x520];
  v222 = STACK[0x528];
  STACK[0x288] = STACK[0x520] + 7;
  STACK[0x2A8] = v222 + 7;
  LODWORD(STACK[0x2B0]) = -1056;
  v87 = STACK[0x2A8];
  v88 = *(STACK[0x2A8] - 1);
  LODWORD(STACK[0x298]) = v63 - 1056;
  v89 = *(v224 + (v88 ^ 0xD3)) ^ (*(v224 + (v88 ^ 0xD3)) >> 5) ^ (*(v224 + (v88 ^ 0xD3)) >> 3);
  v90 = *(v222 + (v63 - 1056)) ^ 0x3FLL;
  LODWORD(v62) = STACK[0x2B0];
  LODWORD(STACK[0x210]) = v63 ^ 0x75A;
  LOBYTE(v90) = v66[v90];
  LODWORD(v61) = *(v70 + (v87[7] ^ 0xC3));
  v91 = v62 + (v63 ^ 0x75A) + 178;
  LODWORD(STACK[0x280]) = v91;
  LOBYTE(v78) = (v90 ^ 0xA8) - 98;
  v92 = ((2 * v90) & 0xC4 ^ 0x84) + v78;
  v93 = v66[*(v222 + v91) ^ 0x87];
  v94 = v61 ^ (v61 >> 5) ^ (v61 >> 3);
  v95 = v66[*v87 ^ 0xEELL];
  v96 = ((v89 << 8) ^ 0xB4E86FEA) & ~v95 | v95 & 0x15;
  v97 = v64[v87[6] ^ 0xFLL];
  LOBYTE(v97) = ((((19 * v97 - 105) ^ 0xFFFFFFB5) + ((38 * v97 + 46) & 0x6A)) << (v78 & 2) << (v78 & 2 ^ 2)) ^ (19 * v97 - ((2 * (19 * v97 - 105)) & 0x54) - 63);
  v98 = v72[v87[1] ^ 0xAALL];
  v99 = ((v97 << 16) ^ 0x7478D1C2) & ((v94 << 8) ^ 0xFCFF91C6) ^ ((v94 << 8) & 0x2E00 | 0x88140004);
  LODWORD(STACK[0x2A0]) = v98 ^ (v98 >> 3) ^ (v98 >> 2);
  LODWORD(v61) = v64[*(v87 - 6) ^ 0xDLL];
  LODWORD(v61) = (76 * v61 + 48) ^ (19 * v61 - 105) ^ 0xFFFFFFC9;
  v100 = ((v61 >> 4) & 0xE ^ 0xFFFFFFFFFFFFFFFBLL) & ((v93 << 12) ^ 0x9F3C8B95DB11444ELL);
  v101 = ((v100 | ((v61 & 0x10) != 0) | 0x80u) ^ 0x6000140A20A01911) & ((v61 << 28) ^ 0xE91C951E91B17DD7) ^ v100 & 0x4000A80820E8008;
  LODWORD(v100) = (v101 << 20) ^ 0x56F00000 | (v101 >> 12) ^ 0xF9E4679B;
  LODWORD(v61) = *(v70 + (v87[3] ^ 8));
  v102 = v61 ^ (v61 >> 5) ^ (v61 >> 3);
  LODWORD(v61) = v72[(*(v87 - 3) - ((2 * *(v87 - 3)) & 0x1A4u) + 210) ^ 0x71];
  v103 = v72[v87[5] ^ 0x9FLL];
  v104 = v103 ^ (v103 >> 3) ^ (v103 >> 2);
  v105 = *(v70 + (*(v87 - 5) ^ 0x3FLL));
  LOBYTE(v83) = v64[v87[2] ^ 0x9DLL];
  LODWORD(v64) = v100 ^ ((v105 ^ (v105 >> 5) ^ (v105 >> 3)) << 8);
  v106 = ((19 * v83 - 105) ^ (76 * v83 + 48));
  v107 = v225[v87[8] ^ 0x4BLL];
  LOBYTE(v83) = v226[*(v87 - 2) ^ 0xF7];
  v108 = ((v104 << 24) ^ 0xE7933E63) & (v99 ^ 0x3C02121);
  v109 = ((v108 | v99 & 0x6CC184) ^ 0x161CBFF2) & ~v107 | v107 & 0xEA;
  LOBYTE(v99) = (19 * v83 - 105) ^ (76 * v83 + 48);
  v110 = v223[*(v87 - 7) ^ 0xD6];
  v111 = ((((v99 << 16) ^ 0xFFF1FFFF) & (((v61 ^ (v61 >> 3) ^ (v61 >> 2)) << 24) ^ 0x923BBBF0) | (v99 << 16) & 0xC40000) ^ 0x6FA4073) & (v96 ^ 0x4B17F311) ^ v96 & 0x428047C;
  v112 = ((16 * (v110 ^ (v110 >> 1))) & 0xFC0 ^ 0xFFFFFFCF) & (((v110 ^ (v110 >> 1)) >> 4) ^ 0xFFFFFFDE) ^ (((v110 ^ 0x22) >> 2) | ((v110 ^ 0x22) << 6));
  LODWORD(a51) = (((v112 & 0xC0) << 18) | (v112 << 26)) ^ v64;
  v113 = *(&off_1F41B25C0 + (v63 ^ 0x43A)) - 12;
  v114 = *(&off_1F41B25C0 + v63 - 880) - 4;
  v115 = v95 ^ 0xCE;
  v116 = *(&off_1F41B25C0 + v63 - 928) - 12;
  LODWORD(a54) = v102;
  v117 = *(&off_1F41B25C0 + v63 - 905) - 4;
  v118 = *&v117[4 * (v102 ^ 0x29)] ^ (*&v114[4 * (v97 ^ 0x7E)] - 1409877230) ^ (*&v116[4 * v115] - (v111 ^ 0x21C1768C)) ^ (*&v113[4 * (BYTE3(a51) ^ 0x2E)] - (BYTE3(a51) ^ 0x5F6A3A7A));
  v119 = *&v117[4 * (v94 ^ 0x37)] ^ (*&v113[4 * (BYTE3(v111) ^ 0x30)] - (BYTE3(v111) ^ 0x5F6A3A64)) ^ (*&v114[4 * (BYTE2(v100) ^ 0x7C)] - 1409877230) ^ (*&v116[4 * (v92 ^ 0xAE)] - (v92 ^ 0x21C17607));
  LODWORD(a52) = v109;
  LODWORD(v100) = *&v117[4 * (BYTE1(v64) ^ 0x2D)] ^ (*&v113[4 * (LODWORD(STACK[0x2A0]) ^ 0x40)] - (LODWORD(STACK[0x2A0]) ^ 0x5F6A3A14)) ^ (*&v114[4 * (BYTE2(v111) ^ 0xCE) + 500 + 4 * ((v111 >> 15) & 0xF8 ^ 0xFFFFFF67)] - 1409877230) ^ (*&v116[4 * (v107 ^ 0x4B)] - (v109 ^ 0x21C176F7));
  LODWORD(a53) = v106;
  LODWORD(v61) = (*&v114[4 * (v106 ^ 0xE3)] - 1409877230) ^ *&v117[4 * (BYTE1(v111) ^ 0x9F)] ^ (*&v116[4 * ((v101 >> 12) ^ 0x2DLL)] - ((v101 >> 12) ^ 0x21C17684)) ^ ((HIBYTE(v108) ^ 0xA095C592) + *&v113[4 * (HIBYTE(v108) ^ 0x39)] + 1);
  v120 = *&v114[4 * (BYTE2(v61) ^ 0xC5)];
  v121 = *&v117[4 * (BYTE1(v100) ^ 0xF9)] ^ (*&v116[4 * (v119 ^ 0x68)] - (v119 ^ 0x21C176C1)) ^ (*&v113[4 * (HIBYTE(v118) ^ 0x9E)] - (HIBYTE(v118) ^ 0x5F6A3ACA)) ^ ((__ROR4__(__ROR4__(v120, 7) ^ 0xEE30903C, 25) ^ 0xB3BEE565) + ((2 * v120) & 0x57EDF624));
  v122 = (*&v114[4 * (BYTE2(v118) ^ 0x96)] - 1409877230) ^ (*&v113[4 * (HIBYTE(v119) ^ 0xA8)] - (HIBYTE(v119) ^ 0x5F6A3AFC)) ^ *&v117[4 * (BYTE1(v61) ^ 0x6E)] ^ (*&v116[4 * (v100 ^ 0xFA)] - (v100 ^ 0x21C17653));
  LODWORD(v101) = (*&v114[4 * (((BYTE2(v119) ^ 5) - (BYTE2(v119) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v119) ^ 5)] - 1409877230) ^ (*&v113[4 * (BYTE3(v100) ^ 0xA6)] - (BYTE3(v100) ^ 0x5F6A3AF2)) ^ *&v117[4 * (BYTE1(v118) ^ 0xE0)] ^ (*&v116[4 * (v61 ^ 0x40)] - (v61 ^ 0x21C176E9));
  LODWORD(v61) = (*&v114[4 * (BYTE2(v100) ^ 0xA3)] - 1409877230) ^ (*&v113[4 * (BYTE3(v61) ^ 0x74)] - (BYTE3(v61) ^ 0x5F6A3A20)) ^ *&v117[4 * (BYTE1(v119) ^ 0x9A)] ^ (*&v116[4 * (v118 ^ 0x9A)] - (v118 ^ 0x21C17633));
  v123 = *&v117[4 * (BYTE1(v101) ^ 0xBB)];
  v124 = (*&v114[4 * (BYTE2(v61) ^ 0x2C)] - 1409877230) ^ (*&v113[4 * (HIBYTE(v121) ^ 0x48)] - (HIBYTE(v121) ^ 0x5F6A3A1C)) ^ v123 & 0xFFFFFFBF ^ (v123 & 0x40 | 0x7FF804B3) ^ (*&v116[4 * (v122 ^ 0xE0)] - (v122 ^ 0x21C17649));
  LODWORD(v100) = (*&v114[4 * (BYTE2(v121) ^ 0xE2)] - 1409877230) ^ (*&v113[4 * (HIBYTE(v122) ^ 0x7D)] - (HIBYTE(v122) ^ 0x5F6A3A29)) ^ *&v117[4 * (BYTE1(v61) ^ 0x4F)] ^ (*&v116[4 * (v101 ^ 0x80)] - (v101 ^ 0x21C17629));
  LODWORD(v107) = (*&v114[4 * (BYTE2(v122) ^ 0xD9) + 500 + 4 * ((v122 >> 15) & 0xF8 ^ 0xFFFFFF4F)] - 1409877230) ^ (*&v113[4 * (BYTE3(v101) ^ 0x45)] - (BYTE3(v101) ^ 0x5F6A3A11)) ^ *&v117[4 * (BYTE1(v121) ^ 0x46)] ^ (*&v116[4 * (v61 ^ 0xA8)] - (v61 ^ 0x21C17601));
  v125 = (*&v114[4 * (BYTE2(v101) ^ 0x90)] - 1409877230) ^ (*&v113[4 * (BYTE3(v61) ^ 0x99)] - (BYTE3(v61) ^ 0x5F6A3ACD)) ^ *&v117[4 * (BYTE1(v122) ^ 0xA2)] ^ (*&v116[4 * (v121 ^ 0xA5)] - (v121 ^ 0x21C1760C));
  LODWORD(v61) = HIBYTE(v125);
  v126 = (*&v114[4 * (BYTE2(v125) ^ 0xF6)] - 1409877230) ^ *&v117[4 * (BYTE1(v107) ^ 0xC1)] ^ (*&v113[4 * (HIBYTE(v124) ^ 0x9A)] - (HIBYTE(v124) ^ 0x5F6A3ACE)) ^ (*&v116[4 * (v100 ^ 0x57)] - (v100 ^ 0x21C176FE));
  v127 = BYTE3(v107) ^ 0x5F6A3A27;
  LODWORD(v129) = __ROR4__((*&v114[4 * (((BYTE2(v124) ^ 0x6D) - (BYTE2(v124) ^ 0x11)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v124) ^ 0x6D)] - 1409877230) ^ (*&v113[4 * (BYTE3(v100) ^ 0x7E)] - (BYTE3(v100) ^ 0x5F6A3A2A)) ^ *&v117[4 * (BYTE1(v125) ^ 0x2C)] ^ (*&v116[4 * (v107 ^ 0x72)] - (v107 ^ 0x21C176DB)), 24) ^ 0xE8E73FF7;
  HIDWORD(v129) = v129;
  v128 = v129 >> 8;
  v130 = (*&v114[4 * (BYTE2(v100) ^ 0xD)] - 1409877230) ^ *&v117[4 * (BYTE1(v124) ^ 0xE8)] ^ (*&v113[4 * (BYTE3(v107) ^ 0x73)] - v127) ^ (*&v116[4 * (v125 ^ 0x3A)] - (v125 ^ 0x21C17693));
  LODWORD(v100) = *&v117[4 * (((BYTE1(v100) ^ 0x6B) - 1853103296 + ((v100 >> 7) & 0x7E ^ 0xFFFFFFA9)) ^ 0x918BE368)];
  LODWORD(v61) = (*&v114[4 * (BYTE2(v107) ^ 0x7F)] - 1409877230) ^ (*&v113[4 * (v61 ^ 0x97)] - (v61 & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (v61 & 2))));
  v131 = v100 - ((2 * v100) & 0x17C1D648) + 199289636;
  v132 = v126 ^ 0xFBC8137;
  v133 = (v126 ^ 0xFBC8137u) >> 16;
  v134 = v61 ^ (*&v116[4 * (v124 ^ 0x81)] - (v124 ^ 0x21C17628)) ^ v131;
  v135 = (v128 ^ 0xAD3AB898) >> 24;
  v136 = v134 ^ 0x2E5FDEAE;
  v137 = (*&v114[4 * (((v134 ^ 0x2E5FDEAEu) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v113[4 * (HIBYTE(v132) ^ 0x8A)] - (HIBYTE(v132) ^ 0x5F6A3ADE)) ^ *&v117[4 * (BYTE1(v130) ^ 0x25)] ^ (*&v116[4 * (BYTE1(v129) ^ 0x48)] - (BYTE1(v129) ^ 0x21C176E1));
  v138 = *&v113[4 * (v135 ^ 0x8A)];
  v139 = v135 ^ 0x5F6A3ADE;
  if (((v126 ^ 0xFBC8137) & 0x3F0000) == 0)
  {
    LOBYTE(v133) = v133 & 0xC0;
  }

  v140 = HIBYTE(v136);
  v141 = (*&v114[4 * (v133 ^ 0x7C)] - 1409877230) ^ *&v117[4 * BYTE1(v136)] ^ (*&v116[4 * (v130 ^ 0x37)] - (v130 ^ 0x21C1769E)) ^ (v138 - v139);
  v142 = *&v113[4 * (HIBYTE(v136) ^ 0x8A)];
  v143 = (*&v114[4 * (BYTE2(v128) ^ 0x46)] - 1409877230) ^ (*&v113[4 * (((v130 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v130 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ *&v117[4 * BYTE1(v132)] ^ (*&v116[4 * (v134 ^ 0x7E)] - (v134 ^ 0x21C176D7));
  v144 = (*&v114[4 * (BYTE2(v130) ^ 0x38)] - 1409877230) ^ (v142 - (v140 ^ 0x5F6A3ADE)) ^ *&v117[4 * (BYTE1(v128) ^ 0xEF)] ^ (*&v116[4 * (v126 ^ 0xE7)] - (v126 ^ 0x21C1764E));
  v145 = BYTE1(v141) ^ 6;
  v146 = (*&v114[4 * ((v144 ^ 0x28B1C8AFu) >> 16)] - 1409877230) ^ *&v117[4 * ((v143 ^ 0xF582) >> 8)] ^ (*&v113[4 * (((v137 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v137 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v141 ^ 0x82)] - (v141 ^ 0x21C1762B));
  v147 = (*&v114[4 * (BYTE2(v137) ^ 0xCF)] - 1409877230) ^ *&v117[4 * ((v144 ^ 0xC8AF) >> 8)] ^ (*&v116[4 * (v143 ^ 0x52)] - (v143 ^ 0x21C176FB)) ^ (*&v113[4 * (((v141 ^ 0x94240652) >> 24) ^ 0x8A)] - (((v141 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE));
  v148 = (*&v114[4 * ((v141 ^ 0x94240652) >> 16)] - 1409877230) ^ (*&v113[4 * (((v143 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v143 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE)) ^ *&v117[4 * ((v137 ^ 0x3250) >> 8)] ^ (*&v116[4 * (v144 ^ 0x7F)] - (v144 ^ 0x21C176D6));
  v149 = *&v116[4 * (v137 ^ 0x80)] - (v137 ^ 0x21C17629);
  v150 = v147 ^ 0x6FA1BBC0;
  v151 = (*&v114[4 * (BYTE2(v143) ^ 0xDC)] - 1409877230) ^ (*&v113[4 * (((v144 ^ 0x28B1C8AFu) >> 24) ^ 0x8A)] - (((v144 ^ 0x28B1C8AFu) >> 24) ^ 0x5F6A3ADE)) ^ *&v117[4 * (v145 ^ 0x57)] ^ v149;
  v152 = (v147 ^ 0x6FA1BBC0) >> 24;
  v153 = (*&v114[4 * ((v151 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v117[4 * ((v148 ^ 0x7C12) >> 8)] ^ (*&v113[4 * (((v146 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v146 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v147 ^ 0x10)] - (v147 ^ 0x21C176B9));
  v154 = *&v113[4 * (v152 ^ 0x8A)] - (v152 ^ 0x5F6A3ADE);
  v155 = (v151 ^ 0xBE27B2EF) >> 24;
  v156 = (*&v114[4 * (BYTE2(v146) ^ 0xD2)] - 1409877230) ^ *&v117[4 * (BYTE1(v151) ^ 0xE5)] ^ v154 ^ (*&v116[4 * (v148 ^ 0xC2)] - (v148 ^ 0x21C1766B));
  v157 = (*&v114[4 * BYTE2(v150)] - 1409877230) ^ *&v117[4 * ((v146 ^ 0x4527) >> 8)] ^ (*&v113[4 * (((v148 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v148 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v151 ^ 0x3F)] - (v151 ^ 0x21C17696));
  v158 = (*&v114[4 * ((v148 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *&v117[4 * BYTE1(v150)] ^ (*&v113[4 * (v155 ^ 0x8A)] - (v155 ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v146 ^ 0xF7)] - (v146 ^ 0x21C1765E));
  v159 = (v158 ^ 0x7DDF413Fu) >> 24;
  v160 = (*&v114[4 * ((v158 ^ 0x7DDF413Fu) >> 16)] - 1409877230) ^ *&v117[4 * (BYTE1(v157) ^ 0x1F)] ^ (*&v113[4 * (((v153 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v153 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v156 ^ 0xF5)] - (v156 ^ 0x21C1765C));
  v161 = (*&v114[4 * ((v153 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v117[4 * ((v158 ^ 0x413F) >> 8)] ^ (*&v113[4 * (((v156 ^ 0x75457125u) >> 24) ^ 0x8A)] - (((v156 ^ 0x75457125u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v157 ^ 0xC0)] - (v157 ^ 0x21C17669));
  v162 = *&v117[4 * (BYTE1(v153) ^ 0x53)];
  v163 = v162 ^ -v162 ^ (-1795874037 - (__ROR4__(__ROR4__(v162, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v164 = *&v116[4 * (v158 ^ 0xEF)] - (v158 ^ 0x21C17646);
  v165 = BYTE2(v157) ^ 0x59;
  v166 = (*&v114[4 * (BYTE2(v156) ^ 0x39)] - 1409877230) ^ v164 ^ (*&v113[4 * (((v157 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v157 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v163) & 0x29EA4616) + (v163 ^ 0x94F5230B));
  v167 = v160 ^ 0x8EBD9B97;
  v168 = (*&v114[4 * v165] - 1409877230) ^ *&v117[4 * (BYTE1(v156) ^ 0x26)] ^ (*&v113[4 * (v159 ^ 0x8A)] - (v159 ^ 0x5F6A3ADE)) ^ (*&v116[4 * (v153 ^ 0x84)] - (v153 ^ 0x21C1762D));
  v169 = v166 ^ 0x8CA395FC;
  v170 = v161 ^ 0xA3ECFAB3;
  v171 = *&v116[4 * (v161 ^ 0x63)] - (v161 ^ 0x21C176CA);
  v172 = (*&v114[4 * ((v168 ^ 0x10CC86EDu) >> 16)] - 1409877230) ^ (*&v113[4 * (HIBYTE(v167) ^ 0x8A)] - (HIBYTE(v167) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *&v117[4 * (BYTE1(v166) ^ 0xC2)];
  v173 = (v172 ^ -v172 ^ (v171 - (v172 ^ v171))) + v171;
  if (((v166 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v174 = -16;
  }

  else
  {
    v174 = 16;
  }

  v175 = (*&v114[4 * (BYTE2(v160) ^ 0xC1)] - 1409877230) ^ *&v117[4 * ((v168 ^ 0x86ED) >> 8)] ^ (*&v113[4 * (HIBYTE(v170) ^ 0x8A)] - (HIBYTE(v170) ^ 0x5F6A3ADE));
  v176 = *&v116[4 * ((v174 + v169) ^ 0xC0)] - ((v174 + v169) ^ 0x21C17669);
  v177 = HIBYTE(v169);
  v178 = v175 ^ v176;
  v179 = *&v114[4 * (BYTE2(v166) ^ 0xDF)];
  v180 = (*&v114[4 * BYTE2(v170)] - 1409877230) ^ *&v117[4 * BYTE1(v167)] ^ (*&v116[4 * (v168 ^ 0x3D)] - (v168 ^ 0x21C17694)) ^ (*&v113[4 * (v177 ^ 0x8A)] - (v177 ^ 0x5F6A3ADE));
  v181 = (v179 - 1409877230) ^ (*&v113[4 * (((v168 ^ 0x10CC86EDu) >> 24) ^ 0x8A)] - (((v168 ^ 0x10CC86EDu) >> 24) ^ 0x5F6A3ADE)) ^ *&v117[4 * (BYTE1(v161) ^ 0xAD)] ^ (*&v116[4 * (v160 ^ 0x47)] - (v160 ^ 0x21C176EE));
  v182 = BYTE2(v180) ^ 0xCB;
  v183 = *(&off_1F41B25C0 + v63 - 897) - 4;
  v184 = *(&off_1F41B25C0 + (v63 ^ 0x42D)) - 4;
  v185 = *&v184[4 * ((v181 ^ 0x66EB169A) >> 16)] ^ 0x4D522762;
  v186 = *(&off_1F41B25C0 + v63 - 959);
  v187 = *(&off_1F41B25C0 + v63 - 951) - 8;
  v188 = (((v175 ^ v176) ^ 0xA4) - 1352815326) ^ *(v186 + 4 * (BYTE1(v180) ^ 0x57u)) ^ *&v183[4 * (HIBYTE(v173) ^ 0xBE)] ^ *&v187[4 * ((v175 ^ v176) ^ 0x91)] ^ (((v185 >> (v127 & 3) >> (v127 & 3 ^ 3)) ^ v185) >> 2);
  v189 = *&v184[4 * (BYTE2(v173) ^ 0xBF)] ^ 0x4D522762;
  v190 = *&v183[4 * (((v175 ^ v176) >> 24) ^ 0x43)] ^ ((v180 ^ 0xC4) - 1352815326) ^ *(v186 + 4 * (BYTE1(v181) ^ 0x7Cu)) ^ v189 ^ *&v187[4 * (v180 ^ 0xF1)];
  v191 = *&v183[4 * (HIBYTE(v180) ^ 0xD5)];
  LODWORD(v183) = *&v183[4 * ((v181 ^ 0x66EB169A) >> 24)];
  v192 = v191 ^ ((v181 ^ 0x9A) - 1352815326) ^ *&v187[4 * (v181 ^ 0xAF)] ^ *(v186 + 4 * ((v173 ^ 0x84FF) >> 8));
  v193 = v185 ^ LODWORD(STACK[0x230]);
  v194 = v183 ^ (~v173 - 1352815326);
  LODWORD(v183) = *&v184[4 * v182] ^ 0x4D522762;
  v195 = *&v184[4 * (BYTE2(v178) ^ 0x20)] ^ 0x4D522762;
  v196 = v192 ^ (v195 >> 2) ^ (v195 >> 5);
  v197 = v194 ^ v183 ^ *(v186 + 4 * (BYTE1(v178) ^ 0x2Du)) ^ (v183 >> 2) ^ (v183 >> 5) ^ *&v187[4 * (v173 ^ 0xCA)];
  v198 = ((v190 ^ (v189 >> 2) ^ (v189 >> 5)) - ((2 * (v190 ^ (v189 >> 2) ^ (v189 >> 5))) & 0x960DED72) - 888736071) ^ LODWORD(STACK[0x270]);
  v199 = v195 ^ LODWORD(STACK[0x248]) ^ (v196 - ((2 * v196) & 0xEC599A16) + 1982647563);
  HIDWORD(v201) = ((v197 ^ 0x23A4540) - 2 * ((v197 ^ 0x23A4540) & 0x6CD09F ^ v197 & 2) + 15519901) ^ LODWORD(STACK[0x278]);
  LODWORD(v201) = ((v197 ^ 0x23A4540) - ((2 * (v197 ^ 0x23A4540)) & 0xA9D9A13A) + 1424806045) ^ LODWORD(STACK[0x278]);
  v200 = v201 >> 24;
  v202 = *(&off_1F41B25C0 + (v63 ^ 0x434)) - 8;
  v203 = STACK[0x288];
  v203[1] = (-97 * v202[HIBYTE(v199) ^ 0x4CLL]) ^ ((-97 * v202[HIBYTE(v199) ^ 0x4CLL]) >> 5) ^ ((-97 * v202[HIBYTE(v199) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v203 - 3) = (-97 * v202[HIBYTE(v198) ^ 0x61]) ^ ((-97 * v202[HIBYTE(v198) ^ 0x61]) >> 5) ^ ((-97 * v202[HIBYTE(v198) ^ 0x61]) >> 1) ^ 0xD8;
  v204 = ((v199 ^ 0xD2C1) >> 8);
  v205 = v204 ^ 0x6C;
  LOBYTE(v196) = v204 ^ 0xDA;
  v206 = *(&off_1F41B25C0 + (v63 ^ 0x480)) - 4;
  v203[3] = (((v196 + 99) ^ v196) + v206[v205]) ^ 0xB3;
  v207 = *(&off_1F41B25C0 + v63 - 1052) - 12;
  v208 = v193 ^ (v188 - ((2 * v188) & 0xA70AEB4C) - 746228314);
  LOBYTE(v205) = v207[((((v199 ^ 0xA619D2C1) >> 16) ^ -((v199 ^ 0xA619D2C1) >> 16) ^ (510 - ((v199 ^ 0xA619D2C1) >> 16) - ((2 * ((v199 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v209 = ((((v199 ^ 0xA619D2C1) >> 16) ^ -((v199 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v199 ^ 0xA619D2C1) >> 16) - ((2 * ((v199 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v210 = v209 & 8 ^ v205;
  v211 = (v209 & 8 & v205) == 0;
  v212 = v205 - (v209 & 8);
  if (v211)
  {
    v212 = v210;
  }

  v203[2] = v212 ^ v209 & 0xF7;
  *(v203 - 1) = (v206[BYTE1(v198) ^ 0x94] + (((BYTE1(v198) ^ 0x22) + 99) ^ BYTE1(v198) ^ 0x22)) ^ 0xA8;
  *(v203 - 2) = BYTE2(v198) ^ 0x9E ^ v207[BYTE2(v198) ^ 0xD5];
  v213 = *(&off_1F41B25C0 + v63 - 889);
  v214 = *(v213 + (v208 ^ 0xE7)) - 24;
  HIDWORD(v216) = v200 ^ 0x8829CA87;
  LODWORD(v216) = v200 ^ 0x8829CA87;
  v215 = v216 >> 8;
  *(v221 + LODWORD(STACK[0x280])) = v214 ^ 0x5D ^ (v214 >> 1) & 0x1E;
  v203[5] = (-97 * v202[HIBYTE(v215) ^ 0x60]) ^ ((-97 * v202[HIBYTE(v215) ^ 0x60]) >> 5) ^ ((-97 * v202[HIBYTE(v215) ^ 0x60]) >> 1) ^ 0xFE;
  v217 = *(v213 + ((180 - (v199 ^ 0x56) + (v199 ^ 0xE2) - 2 * ((180 - (v199 ^ 0x56)) & (v199 ^ 0xE2))) ^ -(v199 ^ 0xE2)) + 180) - 24;
  *(v221 + LODWORD(STACK[0x298])) = v217 ^ 0x62 ^ (v217 >> 1) & 0x1E;
  v203[7] = (v206[((v216 >> 8) >> 8) ^ 0x4FLL] + (((((v216 >> 8) >> 8) ^ 0xF9) + 99) ^ ((v216 >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v203 - 5) = (v206[BYTE1(v208) ^ 0x1FLL] + (((BYTE1(v208) ^ 0xA9) + 99) ^ BYTE1(v208) ^ 0xA9)) ^ 0x84;
  v218 = *(v213 + (v198 ^ 0xDDLL));
  *v203 = (((v218 + ((v218 - 24) ^ 0xAE) - 23) ^ 0xFE) + v218 - 24) ^ ((v218 - 24) >> 1) & 0x1E;
  *(v203 - 7) = (-97 * v202[HIBYTE(v208) ^ 0x67]) ^ ((-97 * v202[HIBYTE(v208) ^ 0x67]) >> 5) ^ ((-97 * v202[HIBYTE(v208) ^ 0x67]) >> 1) ^ 0xE1;
  v219 = STACK[0x2B0];
  v203[6] = BYTE2(v215) ^ 0x8E ^ v207[BYTE2(v215) ^ 0x55];
  *(v203 - 6) = BYTE2(v208) ^ 0xD3 ^ v207[BYTE2(v208) ^ 0x7DLL];
  LOBYTE(v218) = *(v213 + (BYTE1(v216) ^ 0xF7)) - 24;
  v203[8] = v218 ^ ((v218 & (v218 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(STACK[0x2D8] + 8 * ((202 * ((v219 + 1056) < 0x140)) ^ v63)))(v221, v203, v111, 148, 4294967199, &off_1F41B25C0, 2942151970, 1297229666, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v221, v222, v223, v224, v225, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v226, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1C21F4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = &a17;
  *(v20 - 128) = a14;
  *(v20 - 120) = v17 + 1380333833 * ((((v20 - 136) | 0xD1733F7D) + (~(v20 - 136) | 0x2E8CC082)) ^ 0x6F2194F6) + 22;
  v21 = (*(v18 + 8 * (v17 + 2120)))(v20 - 136);
  return (*(v18 + 8 * (((v19 == ((24 * (v17 ^ 0x113)) ^ 0xA9)) * ((21 * (v17 ^ 0x11C)) ^ 0x90E)) ^ v17)))(v21);
}

void sub_1C21F4240(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1785193651 * ((1314920550 - (a1 | 0x4E601866) + (a1 | 0xB19FE799)) ^ 0xA2430BB9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1C21F45A4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v13 = (*(*(v10 + 8) + 4 * v3) ^ v9) + v2;
  *(*(a2 + 8) + 4 * v3) = (v4 + v13 - (v6 & (2 * v13)) + v7) ^ v8;
  return (*(v12 + 8 * (((v11 > v3 + 1) * a1) ^ v5)))();
}

uint64_t sub_1C21F45F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = v15 - 3;
  v22 = ((v21 & v18) << ((20 * (v17 ^ 0xCA)) ^ 0x8D)) & (v21 ^ 0xF0058942) ^ v21 & v18;
  v23 = ((2 * (v21 ^ 0x29AB42)) ^ 0xF2FF760F ^ (v17 - 226)) & (v21 ^ 0x29AB42) ^ (2 * (v21 ^ 0x29AB42)) & 0xF97FBAD2;
  v24 = v23 ^ 0x9008A52;
  v25 = (v23 ^ 0xE0780092) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xE5FEEB48) & v24 ^ (4 * v24) & 0xF97FBAD0;
  v27 = (v26 ^ 0xE17EAA50) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x18011092)) ^ 0x97FBAD20) & (v26 ^ 0x18011092) ^ (16 * (v26 ^ 0x18011092)) & 0xF97FBAD0;
  v29 = v27 ^ 0xF97FBAD2 ^ (v28 ^ 0x917BA800) & (v27 << 8);
  v30 = (v15 - 3) ^ (2 * ((v29 << 16) & 0x797F0000 ^ v29 ^ ((v29 << 16) ^ 0x3AD20000) & (((v28 ^ 0x680412D2) << 8) & 0x797F0000 ^ 0x450000 ^ (((v28 ^ 0x680412D2) << 8) ^ 0x7FBA0000) & (v28 ^ 0x680412D2)))) ^ 0xCCB67A7A;
  v31 = 1564307779 * ((((v20 - 144) | 0xDC259388) - ((v20 - 144) & 0xDC259388)) ^ 0x4B285F9B);
  *(v20 - 136) = a15;
  *(v20 - 144) = v31 + v17 - 983;
  *(v20 - 128) = v30 + v31;
  v32 = (*(v16 + 8 * (v17 + 1275)))(v20 - 144);
  return (*(v16 + 8 * (((*(v20 - 140) == v19) | (2 * (*(v20 - 140) == v19))) ^ v17)))(v32);
}

uint64_t sub_1C21F4800(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_1C21F5184()
{
  LODWORD(STACK[0x568]) = v3;
  LODWORD(STACK[0x56C]) = -497300379;
  v6 = *(v2 + 8 * (v0 ^ 0x35C));
  STACK[0x278] = v6;
  LODWORD(STACK[0x314]) = *v6 - 968439488;
  v7 = *(v2 + 8 * (v0 - 732));
  STACK[0x280] = v7;
  v8 = *v7;
  v9 = STACK[0x250];
  v10 = (v0 + 634936776) ^ (896639297 * STACK[0x250]);
  *(v4 - 152) = (v0 - 2030745554) ^ (896639297 * STACK[0x250]);
  STACK[0x270] = v8;
  *(v4 - 184) = v8 ^ (896639297 * v9);
  *(v4 - 168) = v0 + 634936751 + 896639297 * v9;
  *(v4 - 164) = v10;
  *(v4 - 176) = ((v0 + 634936751) ^ 0x76) + 896639297 * v9;
  *(v4 - 172) = 896639297 * v9;
  *(v4 - 160) = -896639297 * v9;
  v11 = (*(v5 + 8 * (v0 + 1513)))(v4 - 192);
  v12 = *(STACK[0x2D8] + 8 * *(v4 - 192));
  LODWORD(STACK[0x288]) = v1;
  return v12(v11);
}

uint64_t sub_1C21F5670@<X0>(int a1@<W1>, unint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v16 = (v12 + 4 * v7);
  v17 = HIDWORD(a2) + v3 * (*(v6 + 4 * v7) ^ a3) + (*v16 ^ a3) + HIDWORD(v5) + v15 * (*(v9 + 4 * v7) ^ (a3 + (v10 & v11) - 1323));
  *(v16 - 1) = v17 + a3 - (a1 & (2 * v17));
  return (*(v8 + 8 * (((v7 + 1 == v4) * v13) ^ v14)))();
}

uint64_t sub_1C21F582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = *(v76 + 52);
  v80 = 1380333833 * (((v73 | 0x458DB384) - v73 + (v73 & 0xBA724C78)) ^ 0xFBDF180E);
  *(v77 - 192) = STACK[0x258];
  *(v77 - 156) = (v74 ^ 0xDEFBB3EF) - v80 + 1877339544 + ((((v72 ^ 0x37E) + 331) ^ 0xBDF764AC) & (2 * v74));
  *(v77 - 152) = v72 - v80 - 317;
  *(v77 - 184) = a72 - v80 - 514748346;
  *(v77 - 180) = v79 - v80 + 601663712;
  *(v77 - 176) = v75;
  *(v77 - 168) = &STACK[0x1860];
  v81 = (*(v78 + 8 * (v72 + 2168)))(v77 - 192);
  v82 = STACK[0x2D8];
  v83 = *(v77 - 160);
  LODWORD(STACK[0x2E8]) = v83;
  return (*(v82 + 8 * ((2542 * (v83 == -955998424)) ^ v72)))(v81, v75);
}

uint64_t sub_1C21F5948@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v40 = *(v34 + 4 * (v37 - 1));
  *(v34 + 4 * v37) = ((1566083941 * (v40 ^ (v40 >> 30))) ^ *(v34 + 4 * v37)) - v37;
  *(v39 - 120) = (a1 + 449961404) ^ v35;
  *(v39 - 144) = v36 - v35;
  *(v39 - 112) = v37 + 1 - v35;
  *(v39 - 136) = 1 - v35;
  *(v39 - 132) = (a1 - 225275166) ^ v35;
  *(v39 - 128) = ((a1 - 225275166) ^ 0xFA) + v35;
  *(v39 - 124) = v35 + a1 - 225275166 - 131;
  v41 = (*(v33 + 8 * (a1 ^ v38)))(v39 - 144);
  return (*(a33 + 8 * *(v39 - 104)))(v41);
}

uint64_t sub_1C21F5AF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v10 = (v8 + (v6 + v4));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + v6);
  *v13 = vaddq_s8(vaddq_s8(v11, a4), vmvnq_s8(vandq_s8(vaddq_s8(v11, v11), a3)));
  v13[1] = vaddq_s8(vaddq_s8(v12, a4), vmvnq_s8(vandq_s8(vaddq_s8(v12, v12), a3)));
  return (*(v9 + 8 * (((v6 + a2 == 58) * v7) ^ v5)))();
}

void sub_1C21F5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = 143681137 * ((v14 - 1694026470 - 2 * ((v14 - 144) & 0x9B0735AA)) ^ 0xFA3D82E2);
  *(v14 - 140) = (v10 - 924) ^ v15;
  *(v14 - 136) = v9 - v15 - 1294043570 + ((v10 - 1726) | 0x150);
  *(v13 + 16) = a9;
  *(v13 + 24) = v12;
  (*(v11 + 8 * ((v10 - 1861) ^ 0x8BA)))(v14 - 144);
  JUMPOUT(0x1C21BE9E8);
}

uint64_t sub_1C21F5C68(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, int a8)
{
  v13 = a5 + 1 + ((v12 + 144 + a8) & v10);
  v14 = (v9 > a6) ^ (v13 < v11);
  v15 = v13 < a1;
  if (v14)
  {
    v16 = v9 > a6;
  }

  else
  {
    v16 = v15;
  }

  return (*(v8 + 8 * ((v12 + 144) ^ (2 * (((v12 - 112 + a7) ^ v16) & 1)))))();
}

uint64_t sub_1C21F5CF4(uint64_t a1)
{
  v1 = (*a1 + 50899313 * (((a1 ^ 0xE5D7AF7F) + 115932270 - 2 * ((a1 ^ 0xE5D7AF7F) & 0x6E8FC6E)) ^ 0xC9F4796B) + 334) | 0x148;
  v2 = (v1 ^ 0xA84026B6) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_1F41B25C0 + v1 - 1822) + ((35 * (v2 > ((23 * (v1 ^ 0x76C)) ^ 0x4C3))) ^ v1) - 1))();
}

uint64_t sub_1C21F5E7C(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0xC7049F28;
}

uint64_t sub_1C21F5EE0(uint64_t a1)
{
  v1 = 50899313 * (a1 ^ 0x2ACB2A7A);
  v2 = *(a1 + 8) ^ v1;
  return (*(*(&off_1F41B25C0 + v2 - 117) + ((((((*(a1 + 12) ^ v1 ^ 0x4AD2ECF1) - 1255337201) ^ ((*(a1 + 12) ^ v1 ^ 0x3E8D2E23) - 1049439779) ^ ((*(a1 + 12) ^ v1 ^ 0xB35B5DFA) + 1285857798)) + 1191485224 < 0x80000064) * ((v2 ^ 0x3D3) - 755)) ^ v2) - 1))();
}

uint64_t sub_1C21F5FB0@<X0>(char a1@<W5>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29)
{
  v33 = *(&a17 + a2 + 72);
  v34 = ((2 * a2) & 0xFBCDAEF8) + (a2 ^ 0xFDE6D77F) + v29;
  *(v31 + v34) = (v30 - a1 - 84) ^ 0x2C ^ v33;
  *(v31 + v34 + 1) = (BYTE1(v33) ^ 0xF9) + ~(2 * ((BYTE1(v33) ^ 0xF9) & 0xEE ^ BYTE1(v33) & 4)) + 107;
  *(v31 + v34 + 2) = (BYTE2(v33) ^ 0x7A) - 2 * ((BYTE2(v33) ^ 0x7A) & 0x6B ^ BYTE2(v33) & 1) + 106;
  *(v31 + v34 + 3) = (HIBYTE(v33) ^ 0x3E) + (~(2 * (HIBYTE(v33) ^ 0x3E)) | 0x2B) + 107;
  return (*(v32 + 8 * ((3473 * (a2 + 4 < a29)) ^ v30)))();
}

uint64_t sub_1C21F6094(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13 = v8 < v10;
  if (v13 == v9 + 1 > (a7 + 2))
  {
    v13 = a8 + v9 + 2 < v8;
  }

  return (*(v12 + 8 * ((!v13 * a3) ^ v11)))();
}

uint64_t sub_1C21F610C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, unsigned int a12, int a13, unsigned int a14)
{
  v17 = 1037613739 * ((404543102 - (&a10 | 0x181CD67E) + (&a10 | 0xE7E32981)) ^ 0x36E104FE);
  a10 = &a9;
  a11 = v14;
  a14 = v17 + 744791714;
  a12 = -105161874 - v17;
  a13 = (v15 + 73) ^ v17;
  v18 = (*(v16 + 8 * (v15 ^ 0x811)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -955998424) * (v15 + 714)) ^ v15)))(v18);
}

void sub_1C21F61C4()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v1 = *v0 - 896639297 * ((v0 & 0x22F8D955 | ~(v0 | 0x22F8D955)) ^ 0xC9ACB0D2);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1C21F6304(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v12 = (v10 + 4 * a8);
  *v12 = a1;
  v12[1] = a1;
  return (*(v11 + 8 * (((v8 == a8) * a7) ^ v9)))();
}

uint64_t sub_1C21F632C@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *a3 = a1;
  v59 = (*(v58 + 48 * v54 + 8))(a4);
  return (*(v56 + 8 * ((124 * (((v57 - 31) ^ (v59 - 955998424 - ((2 * v59) & 0x8E093E50) == -955998424)) & 1)) ^ v57)))(v59, v55, 2147483652, 695674831, v60, 4151386339, 3338968872, 3599292464, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1C21F6658@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x2C4] + a2 + 72);
  v7 = ((2 * a2) & 0xBB9D2A78) + (v4 ^ v3 ^ a2 ^ 0x5DCE9523) + v2;
  *(a1 + v7) = v6 ^ 0x31;
  *(a1 + v7 + 1) = (BYTE1(v6) ^ 0xF9) + ~(2 * ((BYTE1(v6) ^ 0xF9) & 0xEE ^ BYTE1(v6) & 4)) + 107;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0x7A) - 2 * ((BYTE2(v6) ^ 0x7A) & 0x6B ^ BYTE2(v6) & 1) + 106;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 0x3E) + (~(2 * (HIBYTE(v6) ^ 0x3E)) | 0x2B) + 107;
  return (*(v5 + 8 * ((79 * (a2 + 4 < LODWORD(STACK[0x320]))) ^ v4)))();
}

void sub_1C21F6824()
{
  STACK[0x4C8] = v0;
  STACK[0x4E0] = STACK[0x2A0];
  STACK[0x478] = *(v2 + 8 * v1);
  JUMPOUT(0x1C21F68A8);
}

uint64_t sub_1C21F698C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_1C21F69C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v22 = 1785193651 * ((2 * (&a14 & 0x16C3D568) - &a14 + 1765550738) ^ 0x7AE0C6B2);
  a17 = 401263059 - v22;
  a18 = v21 - v22 - 255;
  a14 = &a11;
  a15 = &a13;
  a16 = v19;
  v23 = (*(v20 + 8 * (v21 + 2024)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == ((v21 + 254) ^ (v18 - 378))) * ((18 * (v21 ^ 0x1AE)) ^ 0x4D9)) | v21)))(v23);
}

uint64_t sub_1C21F6D2C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = 1504884919 * ((-2 - ((a1 | 0xCD18A6D7) + (~a1 | 0x32E75928))) ^ 0xC924EE33);
  v3 = *(a1 + 4) - v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = -956406519 * (*(a1 + 48) - v2) - 1288212055;
  v9 = 1564307779 * (((&v11 | 0x9B0DCF68) - (&v11 & 0x9B0DCF68)) ^ 0xC00037B);
  v16 = v3 + 1776823340 + v9 + 666;
  v15 = v5;
  v14 = v8 ^ v9;
  v17 = v6;
  v11 = v4;
  v13 = v7;
  result = (*(*(&off_1F41B25C0 + v3 + 1776823340) + (v3 ^ 0x9617DD19) - 1))(&v11);
  *(a1 + 8) = v12;
  return result;
}

void sub_1C21F6E84(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39BF8) ^ 0x7B)) ^ byte_1C233D8D0[byte_1C2349610[(65 * ((qword_1EBF39C20 - dword_1EBF39BF8) ^ 0x7B))] ^ 0x71]) - 45);
  v4 = *(v3 - 4);
  v5 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 + v4) ^ 0x7B)) ^ byte_1C2340930[byte_1C233D7D0[(65 * ((qword_1EBF39C20 + v4) ^ 0x7B))] ^ 0x7E]) - 180);
  v6 = 410816321 * ((*v5 - v4) ^ &v8 ^ 0x265DD2AD758AD77BLL);
  *(v3 - 4) = v6;
  *v5 = v6;
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1388665877 * ((&v10 + 717644728 - 2 * (&v10 & 0x2AC663B8)) ^ 0xA76B0154);
  v10 = v9;
  v11 = v6 - 562358852;
  v12 = v6 - 325162679;
  LODWORD(v5) = 410816321 * ((*v5 - *(v3 - 4)) ^ 0x758AD77B);
  v7 = *(&off_1F41B25C0 + ((65 * ((qword_1EBF39C20 - dword_1EBF39BF8) ^ 0x7B)) ^ byte_1C23446D0[byte_1C2340A30[(65 * ((qword_1EBF39C20 - dword_1EBF39BF8) ^ 0x7B))] ^ 0xF3]) - 138) - 8;
  (*&v7[8 * (*(off_1F41B27A8 + (*(off_1F41B2710 + v5 - 12) ^ 0x9Au) - 12) ^ v5) + 18112])(&v10);
  __asm { BRAA            X11, X17 }
}

void sub_1C21F7134(uint64_t a1@<X8>, unsigned int a2, uint64_t a3, int a4)
{
  v7 = 210068311 * ((((2 * &a2) | 0x456559FC) - &a2 + 1565348610) ^ 0x3064935A);
  a3 = v4;
  a2 = 717565684 - (v7 + v5) - (((((v6 - 136) | 0x210) ^ 0x63931E2C) - 2 * v5) & 0xF1F744AE);
  a4 = v7 + v6 - 442;
  (*(a1 + 8 * (v6 + 1076)))(&a2);
  JUMPOUT(0x1C21F71D0);
}

void sub_1C21F7250(int a1@<W8>)
{
  v3 = a1 & 0x77730FD3;
  v4 = (v3 - 1411) | 0x1B8;
  (*(v2 + 8 * (v3 + 484)))(*STACK[0x238]);
  v5 = STACK[0x2D8];
  *(v1 - 192) = -1197043362 - 1037613739 * ((((v1 - 192) | 0xA9E45F4F) - ((v1 - 192) & 0xA9E45F4F)) ^ 0x78E67230) + v4;
  (*(v5 + 8 * (v4 ^ 0xA37)))(v1 - 192);
  JUMPOUT(0x1C21F72E8);
}

uint64_t sub_1C21F7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17)
{
  a17 = a11;
  a16 = v19 - 1037613739 * (&a15 ^ 0xD1022D7F) + 1387;
  v20 = (*(v18 + 8 * (v19 + 2147)))(&a15);
  return (*(v18 + 8 * ((((v19 + 90) ^ (a15 == v17)) & 1 | (16 * (((v19 + 90) ^ (a15 == v17)) & 1))) ^ v19)))(v20);
}

uint64_t sub_1C21F7830@<X0>(uint64_t a1@<X1>, int a2@<W3>, unsigned int *a3@<X4>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *a28 = 968439489;
  v37 = *a3;
  v38 = 1380333833 * ((v36 - 0x5C1707605602AE18 - 2 * ((v36 - 144) & 0xA3E8F89FA9FD5278)) ^ 0xA80D89B317AFF9F2);
  *(v36 - 120) = (a4 + 449961404) ^ v38;
  v39 = v38 + a4 - 1565035333;
  *(v36 - 144) = 5119 - v38;
  *(v36 - 128) = v39 + 11;
  *(v36 - 124) = v39 + 68;
  *(v36 - 136) = 1 - v38;
  *(v36 - 132) = (a4 - 1565035333) ^ v38;
  *(v36 - 112) = v37 - v38;
  v40 = (*(a1 + 8 * (a4 ^ (a2 - 1864))))(v36 - 144);
  return (*(a36 + 8 * *(v36 - 104)))(v40);
}

uint64_t sub_1C21F792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v28 - 120) = &a22;
  *(v28 - 112) = v24;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v27;
  *(v28 - 144) = v26 - 1504884919 * ((((v28 - 144) | 0xC4C3D6B0) - ((v28 - 144) & 0xC4C3D6B0)) ^ 0x3F0061AB) + 502;
  (*(v23 + 8 * (v26 ^ 0x8CE)))(v28 - 144);
  v29 = v22 - 1;
  v30 = (v29 ^ 0xFC554146) & (2 * ((v25 + ((v26 + 2010) ^ 0xC02) - 1335) & v29)) ^ (v25 + ((v26 + 2010) ^ 0xC02) - 1335) & v29;
  v31 = ((2 * (v29 ^ 0x4C556046)) ^ 0x6A06E3AC) & (v29 ^ 0x4C556046) ^ (2 * (v29 ^ 0x4C556046)) & 0xB50371D6;
  v32 = v31 ^ 0x95011052;
  v33 = (v31 ^ 0x30015092) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0xD40DC758) & v32 ^ (4 * v32) & 0xB50371D4;
  v35 = (v34 ^ 0x94014140) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x21023086)) ^ 0x50371D60) & (v34 ^ 0x21023086) ^ (16 * (v34 ^ 0x21023086)) & 0xB50371D0;
  v37 = v35 ^ 0xB50371D6 ^ (v36 ^ 0x10031100) & (v35 << 8);
  v38 = (v22 - 1) ^ (2 * ((v37 << 16) & 0x35030000 ^ v37 ^ ((v37 << 16) ^ 0x71D60000) & (((v36 ^ 0xA5006096) << 8) & 0x35030000 ^ 0x34020000 ^ (((v36 ^ 0xA5006096) << 8) ^ 0x3710000) & (v36 ^ 0xA5006096)))) ^ 0x46EFEC72;
  v39 = 1564307779 * ((~((v28 - 144) | 0x474592BD) + ((v28 - 144) & 0x474592BD)) ^ 0x2FB7A151);
  *(v28 - 136) = a15;
  *(v28 - 128) = v38 + v39;
  *(v28 - 144) = v39 + v26 - 165;
  v40 = (*(v23 + 8 * (v26 ^ 0x8D3)))(v28 - 144);
  return (*(v23 + 8 * ((60 * (*(v28 - 140) != 1396564973)) ^ v26)))(v40);
}

uint64_t sub_1C21F7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 31) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 30) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v11 + 8 * ((47 * (((v12 - 1872742634) & 0x6F9FCFFE) == 2066)) ^ v12)))();
}

uint64_t sub_1C21F8274@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 ^ 0x132));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 ^ 0x13A));
  v11 = *(v10 - 4);
  v21[0] = *v11 - 13;
  v21[1] = v11[1] - 13;
  v21[2] = v11[2] - 13;
  v21[3] = v11[3] - 13;
  v21[4] = v11[4] - 13;
  v21[5] = v11[5] - 13;
  v21[6] = v11[6] - 13;
  v21[7] = v11[7] - 13;
  v21[8] = v11[8] - 13;
  v21[9] = v11[9] - 13;
  v21[10] = v11[10] - 13;
  v21[11] = v11[11] - 13;
  v21[12] = v11[12] - 13;
  v21[13] = v11[13] - 13;
  v21[14] = v11[14] - 13;
  v21[15] = v11[15] - 13;
  v21[16] = v11[16] - 13;
  v21[17] = v11[17] - 13;
  v21[18] = v11[18] - 13;
  v21[19] = v11[19] - 13;
  v12 = *(v10 - 4);
  v21[20] = v12[20] - 13;
  v21[21] = v12[21] - 13;
  v21[22] = v12[22] - 13;
  v21[23] = v12[23] - 13;
  v21[24] = v12[24] - 13;
  v21[25] = v12[25] - 13;
  v21[26] = v12[26] - 13;
  v21[27] = v12[27] - 13;
  v21[28] = v12[28] - 13;
  v21[29] = v12[29] - 13;
  result = (*(v4 + 8 * (a1 ^ 0x831)))(v9, v21, v2);
  if (result == 1102)
  {
    v14 = *v8;
    v15 = *(v6 + 8 * (v5 - 271));
    v16 = *v15;
    v22[0] = -91 * **v15 + 77;
    v22[1] = -91 * v16[1] + 77;
    v22[2] = v16[2] * (v5 + 97) + 77;
    v22[3] = -91 * v16[3] + 77;
    v22[4] = -91 * v16[4] + 77;
    v22[5] = -91 * v16[5] + 77;
    v22[6] = -91 * v16[6] + 77;
    v22[7] = -91 * v16[7] + 77;
    v22[8] = -91 * v16[8] + 77;
    v22[9] = -91 * v16[9] + 77;
    v22[10] = -91 * v16[10] + 77;
    v22[11] = -91 * v16[11] + 77;
    v22[12] = -91 * v16[12] + 77;
    v22[13] = -91 * v16[13] + 77;
    v22[14] = -91 * v16[14] + 77;
    v22[15] = -91 * v16[15] + 77;
    v22[16] = -91 * v16[16] + 77;
    v17 = *v15;
    v22[17] = -91 * v17[17] + 77;
    v22[18] = -91 * v17[18] + 77;
    v22[19] = -91 * v17[19] + 77;
    v18 = (*(v4 + 8 * (v5 | 0x831)))(v14, v22, v2) != 0;
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v20 = 956023824;
  }

  else
  {
    *(v7 + 348) |= (v5 + 686) ^ 0x3F8;
    *(v7 + 48) = 163537135;
    result = (*(v4 + 8 * (v5 + 2164)))(*v2, v7 + 336, v7 + 340, v7 + 344, v3);
    v19 = *(v1 + 16);
    *(*v1 - 0x5B6D72DB965A7FACLL) = *v2;
    *(v19 - 0x1EF61A919C9B7437) = *v3 + (v5 ^ 0xCAECE744) - ((2 * *v3) & 0x95D9CC00);
    v20 = -955998424;
  }

  *(v1 + 8) = v20;
  return result;
}