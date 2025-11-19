uint64_t phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_45:
    sub_297E96818(v16, 34);
    goto LABEL_46;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_44;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 6)
        {
          if (v11 <= 9)
          {
            if (v11 == 7)
            {
              v13 = "Mirrored User Area Crc is NOT OK!!";
            }

            else if (v11 == 8)
            {
              v13 = "Log Area Crc is NOT OK!!";
            }

            else
            {
              v13 = "Rom Area Crc is NOT OK!!";
            }

            goto LABEL_42;
          }

          switch(v11)
          {
            case 10:
              v13 = "User Area Crc is NOT OK!!";
              goto LABEL_42;
            case 11:
              v13 = "User Area Protected Crc is NOT OK!!";
              goto LABEL_42;
            case 12:
              v13 = "HLM debug logging Area Crc is NOT OK!!";
              goto LABEL_42;
          }

LABEL_41:
          v13 = "End Marker Area Crc is NOT OK!!";
          goto LABEL_42;
        }

        if (v11 > 3)
        {
          if (v11 == 4)
          {
            v13 = "RAM AO Only Area Crc is NOT OK!!";
          }

          else if (v11 == 5)
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          goto LABEL_42;
        }

        switch(v11)
        {
          case 1:
            v14 = "Protected Area Crc is NOT OK!!";
            break;
          case 2:
            v14 = "Anti-tearing protected Area Crc is NOT OK!!";
            break;
          case 3:
            v13 = "Customer Area Crc is NOT OK!!";
LABEL_42:
            sub_297E4E0B0(0, &v16, 4u, 4u, v13);
            goto LABEL_43;
          default:
            goto LABEL_41;
        }

        sub_297E4E0B0(0, &v16, 4u, 1u, v14);
        v8 = 255;
      }

LABEL_43:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_44:
  if (v8)
  {
    goto LABEL_45;
  }

LABEL_46:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_43:
    sub_297E96818(v16, 34);
    goto LABEL_44;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 5)
        {
          if (v11 > 8)
          {
            switch(v11)
            {
              case 9:
                v13 = "Rom Area Crc is NOT OK!!";
                break;
              case 10:
                v13 = "User Area Crc is NOT OK!!";
                break;
              case 11:
                v13 = "User Area Protected Crc is NOT OK!!";
                break;
              default:
LABEL_39:
                v13 = "End Marker Area Crc is NOT OK!!";
                break;
            }
          }

          else if (v11 == 6)
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          else if (v11 == 7)
          {
            v13 = "Mirrored User Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Log Area Crc is NOT OK!!";
          }

LABEL_40:
          sub_297E4E0B0(0, &v16, 4u, 4u, v13);
          goto LABEL_41;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v13 = "Customer Area Crc is NOT OK!!";
          }

          else if (v11 == 4)
          {
            v13 = "RAM AO Only Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          goto LABEL_40;
        }

        if (v11 == 1)
        {
          v14 = "Protected Area Crc is NOT OK!!";
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_39;
          }

          v14 = "Anti-tearing protected Area Crc is NOT OK!!";
        }

        sub_297E4E0B0(0, &v16, 4u, 1u, v14);
        v8 = 255;
      }

LABEL_41:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_42:
  if (v8)
  {
    goto LABEL_43;
  }

LABEL_44:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_5_1_CrcStatus(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_41:
    sub_297E96818(v16, 34);
    goto LABEL_42;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 5)
        {
          if (v11 <= 7)
          {
            if (v11 == 6)
            {
              v13 = "Mirrored User Area Crc is NOT OK!!";
            }

            else
            {
              v13 = "Log Area Crc is NOT OK!!";
            }
          }

          else
          {
            switch(v11)
            {
              case 8:
                v13 = "Rom Area Crc is NOT OK!!";
                break;
              case 9:
                v13 = "User Area Crc is NOT OK!!";
                break;
              case 10:
                v13 = "User Area Protected Crc is NOT OK!!";
                break;
              default:
LABEL_37:
                v13 = "End Marker Area Crc is NOT OK!!";
                break;
            }
          }

LABEL_38:
          sub_297E4E0B0(0, &v16, 4u, 4u, v13);
          goto LABEL_39;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v13 = "Customer Area Crc is NOT OK!!";
          }

          else if (v11 == 4)
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          goto LABEL_38;
        }

        if (v11 == 1)
        {
          v14 = "Protected Area Crc is NOT OK!!";
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_37;
          }

          v14 = "Anti-tearing protected Area Crc is NOT OK!!";
        }

        sub_297E4E0B0(0, &v16, 4u, 1u, v14);
        v8 = 255;
      }

LABEL_39:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_40:
  if (v8)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_5_0_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_0_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_36:
    sub_297E96818(v16, 34);
    goto LABEL_37;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_27;
          case 2:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
LABEL_27:
            sub_297E4E0B0(0, &v16, 4u, 1u, v13);
            v8 = 255;
            break;
          case 3:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_33;
          case 4:
            v14 = "NDEF Area Crc is NOT OK!!";
            goto LABEL_33;
          case 5:
            v14 = "RAM AO Only Area Crc is NOT OK!!";
            goto LABEL_33;
          case 6:
            v14 = "Mirrored User Flash Area Crc is NOT OK!!";
            goto LABEL_33;
          case 7:
            v14 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_33;
          case 8:
            v14 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_33;
          case 9:
            v14 = "Log Area Crc is NOT OK!!";
            goto LABEL_33;
          case 10:
            v14 = "Rom Area Crc is NOT OK!!";
            goto LABEL_33;
          case 11:
            v14 = "User Area Crc is NOT OK!!";
            goto LABEL_33;
          case 12:
            v14 = "User Area Protected Crc is NOT OK!!";
            goto LABEL_33;
          case 13:
            v14 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_33;
          case 14:
            v14 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_33;
          case 15:
            v14 = "RF User Area Crc is NOT OK!!";
            goto LABEL_33;
          default:
            v14 = "End Marker Area Crc is NOT OK!!";
LABEL_33:
            sub_297E4E0B0(0, &v16, 4u, 4u, v14);
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_35:
  if (v8)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_0_CrcStatus_NewLayout");
  return v8;
}

uint64_t sub_297E832EC(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_0_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_35:
    sub_297E96818(v16, 34);
    goto LABEL_36;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_25;
          case 2:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
LABEL_25:
            sub_297E4E0B0(0, &v16, 4u, 1u, v13);
            v8 = 255;
            break;
          case 3:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_32;
          case 4:
            v14 = "NDEF Area Crc is NOT OK!!";
            goto LABEL_32;
          case 5:
            v14 = "Mirrored User Flash Area Crc is NOT OK!!";
            goto LABEL_32;
          case 6:
            v14 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_32;
          case 7:
            v14 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_32;
          case 8:
            v14 = "Log Area Crc is NOT OK!!";
            goto LABEL_32;
          case 9:
            v14 = "Rom Area Crc is NOT OK!!";
            goto LABEL_32;
          case 10:
            v14 = "User Area Crc is NOT OK!!";
            goto LABEL_32;
          case 11:
            v14 = "User Area Protected Crc is NOT OK!!";
            goto LABEL_32;
          case 12:
            v14 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_32;
          case 13:
            v14 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_32;
          case 14:
            v14 = "RF User Area Crc is NOT OK!!";
            goto LABEL_32;
          default:
            v14 = "End Marker Area Crc is NOT OK!!";
LABEL_32:
            sub_297E4E0B0(0, &v16, 4u, 4u, v14);
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_34:
  if (v8)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_5_0_CrcStatus");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_3_0_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_3_0_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_40:
    sub_297E96818(v16, 34);
    goto LABEL_41;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_28;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
LABEL_28:
            sub_297E4E0B0(0, &v16, 4u, 1u, v13);
            v8 = 255;
            break;
          case 5:
            v14 = "ROM Area Crc is NOT OK!!";
            goto LABEL_37;
          case 6:
            v14 = "RAM AO Only Area Crc is NOT OK!!";
            goto LABEL_37;
          case 7:
            v14 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 8:
            v14 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 9:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_37;
          case 10:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_37;
          case 11:
            v14 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_37;
          case 12:
            v14 = "User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 13:
            v14 = "RF User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 14:
            v14 = "New Banned Area Crc is NOT OK!!";
            goto LABEL_37;
          case 15:
            v14 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 16:
            v14 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 17:
            v14 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 18:
            v14 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_37;
          case 19:
            v14 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_37;
          default:
            v14 = "End Marker Area Crc is NOT OK!!";
LABEL_37:
            sub_297E4E0B0(0, &v16, 4u, 4u, v14);
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_3_0_CrcStatus_NewLayout");
  return v8;
}

uint64_t sub_297E839E0(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_3_0_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_39:
    sub_297E96818(v16, 34);
    goto LABEL_40;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_38;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_28;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
LABEL_28:
            sub_297E4E0B0(0, &v16, 4u, 1u, v13);
            v8 = 255;
            break;
          case 5:
            v14 = "ROM Area Crc is NOT OK!!";
            goto LABEL_36;
          case 6:
            v14 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_36;
          case 7:
            v14 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_36;
          case 8:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_36;
          case 9:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_36;
          case 10:
            v14 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_36;
          case 11:
            v14 = "User Area Crc is NOT OK!!";
            goto LABEL_36;
          case 12:
            v14 = "RF User Area Crc is NOT OK!!";
            goto LABEL_36;
          case 13:
            v14 = "New Banned Area Crc is NOT OK!!";
            goto LABEL_36;
          case 14:
            v14 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_36;
          case 15:
            v14 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_36;
          case 16:
            v14 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_36;
          case 17:
            v14 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_36;
          case 18:
            v14 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_36;
          default:
            v14 = "End Marker Area Crc is NOT OK!!";
LABEL_36:
            sub_297E4E0B0(0, &v16, 4u, 4u, v14);
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_38:
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_40:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_FlashIntg_Verify_3_0_CrcStatus");
  return v8;
}

uint64_t sub_297E83D84(uint64_t a1, int a2)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_FlashIntg_VerifyCrcStatus");
  v3 = 0;
  v4 = 0;
  v5 = 1;
  while ((v5 & a2) != 0)
  {
LABEL_18:
    v5 = 2 * v5;
    if (v4++ >= 6)
    {
      goto LABEL_20;
    }
  }

  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_21;
        }

        v6 = "Protected Data Crc is NOT OK!!";
        goto LABEL_14;
      }

      v7 = "Trim Data Crc is NOT OK!!";
    }

    else
    {
      v7 = "User Data Crc is NOT OK!!";
    }

LABEL_17:
    sub_297E4E0B0(0, &v10, 4u, 4u, v7);
    goto LABEL_18;
  }

  switch(v4)
  {
    case 3:
      v6 = "Patch Code Crc is NOT OK!!";
      goto LABEL_14;
    case 4:
      v7 = "Function Code Crc is NOT OK!!";
      goto LABEL_17;
    case 5:
      v6 = "Patch Table Crc is NOT OK!!";
LABEL_14:
      sub_297E4E0B0(0, &v10, 4u, 1u, v6);
      v3 = 255;
      goto LABEL_18;
  }

LABEL_21:
  sub_297E4E0B0(0, &v10, 4u, 1u, "Function Table Crc is NOT OK!!");
  v3 = 255;
LABEL_20:
  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_FlashIntg_VerifyCrcStatus");
  return v3;
}

uint64_t sub_297E83F54(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v15 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldChkIntegrityRecoverCb");
  if (!a1)
  {
    v11 = "phDnldNfc_DnldChkIntegrityRecoverCb: Invalid LIBNFC context!!";
    v12 = 2;
    v13 = 0;
LABEL_13:
    sub_297E4E0B0(v12, v13, 4u, 1u, v11);
    v10 = 255;
    goto LABEL_14;
  }

  sub_297E5D114(*(a1 + 3000), &v15);
  if (!v15)
  {
    v11 = "phDnldNfc_DnldChkIntegrityRecoverCb: Invalid LIBNFC context!!";
    v13 = a1 + 9792;
LABEL_12:
    v12 = 1;
    goto LABEL_13;
  }

  if (a2 || !a3)
  {
    v11 = "phDnldNfc_DnldChkIntegrityRecoverCb - Request Failed!!";
    v13 = a1 + 9792;
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldChkIntegrityRecoverCb - Request Successful");
  if (*(a3 + 2) != 135 || !*a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldChkIntegrityRecoverCb: Rsp Buff Invalid...\n");
    goto LABEL_16;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldChkIntegrityRecoverCb - Valid Resp Buff!!...\n");
  v6 = *a3;
  v7 = **a3;
  v8 = *(v6 + 1);
  v9 = *(a1 + 9792);
  phOsalNfc_MemCopy();
  v10 = sub_297E80990(v15, v7, v8, 0, 3);
  if (v10 == 84)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phDnldNfc_DnldChkIntegrityRecoverCb - Relaunching recovery...\n");
    sub_297E79810(a1, &qword_2A1A92C50, 2u);
LABEL_16:
    v10 = 0;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldChkIntegrityRecoverCb");
  return v10;
}

uint64_t sub_297E84124(uint64_t a1)
{
  v19 = 0;
  v20 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DnldLogReadReq");
  if (!a1)
  {
    v11 = "phLibNfc_DnldLogReadReq: Invalid LIBNFC context!!";
    v12 = 2;
    v13 = 0;
LABEL_19:
    sub_297E4E0B0(v12, v13, 4u, 1u, v11);
    v14 = 255;
    goto LABEL_20;
  }

  sub_297E67F6C(*(a1 + 3000), &v19);
  sub_297E5D114(*(a1 + 3000), &v20);
  v2 = v20;
  if (!v20 || (v3 = v19) == 0)
  {
    v11 = "phLibNfc_DnldLogReadReq: Invalid IOCTL context!!";
    v13 = a1 + 9792;
    v12 = 1;
    goto LABEL_19;
  }

  v4 = *(v20 + 96);
  if (v4 != 2556 && v4 != 2559)
  {
    if (*(v20 + 89))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v20 + 88) == 1;
    }

    if (!v16 && *(v20 + 89) != 1)
    {
      goto LABEL_7;
    }

LABEL_29:
    v14 = 0;
    goto LABEL_20;
  }

  if (!*(v20 + 168))
  {
    goto LABEL_29;
  }

LABEL_7:
  v5 = 64;
  v6 = 471;
  if (v4 != 2556 && v4 != 2559)
  {
    v5 = 8;
    v6 = 104;
  }

  v7 = 2286765;
  v8 = v20 + v6;
  *(v19 + 56) = 2;
  *(v2 + 728) = 162;
  v9 = *(v2 + 116);
  v10 = v9 + 94;
  if ((v9 - 162) <= 0x31)
  {
    if (((1 << v10) & 0x3C00000000000) != 0)
    {
      v7 = 2344345;
      goto LABEL_35;
    }

    if (((1 << v10) & 7) != 0)
    {
      v7 = 2288349;
      goto LABEL_35;
    }

    if (((1 << v10) & 0x1018000) != 0)
    {
      goto LABEL_35;
    }
  }

  if (v9 == 96)
  {
    v18 = -13223;
  }

  else
  {
    if (v9 == 160)
    {
      v7 = 2288348;
      goto LABEL_35;
    }

    v18 = 8064;
  }

  v7 = v18 | 0x200000;
LABEL_35:
  *(v2 + 732) = v7;
  *(v2 + 752) = v8;
  *(v2 + 760) = v5;
  *(v2 + 736) = 0;
  *(v2 + 744) = 0;
  *(v2 + 768) = 0;
  v14 = sub_297F0FD90(*(v3 + 48), v2 + 728, sub_297E5BA84, a1);
  if (v14 == 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "CheckIntegrity Request submitted successfully");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_DnldLogReadReq: Check Integrity Request Failed!!");
  }

LABEL_20:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DnldLogReadReq");
  return v14;
}

uint64_t sub_297E84374(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldLog");
  if (!a1)
  {
    v7 = "phDnldNfc_DnldLog: Invalid LIBNFC context!!";
    v8 = 2;
    v9 = 0;
LABEL_13:
    sub_297E4E0B0(v8, v9, 4u, 1u, v7);
    v6 = 255;
    goto LABEL_14;
  }

  sub_297E67F6C(*(a1 + 3000), &v11);
  sub_297E5D114(*(a1 + 3000), &v12);
  if (!v12 || !v11)
  {
    v7 = "phDnldNfc_DnldLog: Invalid IOCTL/DNLD context!!";
    v9 = a1 + 9792;
    v8 = 1;
    goto LABEL_13;
  }

  if (v12[88] == 1 && !v12[92])
  {
    v6 = 0;
  }

  else
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v3 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v4 = v12;
    if (v12[168] == 1)
    {
      v5 = -86;
    }

    else
    {
      v5 = 0;
    }

    v12[227] = v5;
    *(v4 + 94) = 0;
    *(v4 + 190) = 0;
    *(v4 + 182) = 167;
    *(v4 + 92) = v4 + 216;
    *(v4 + 186) = 12;
    v4[768] = 0;
    v6 = sub_297F0FD90(*(v11 + 48), (v4 + 728), sub_297E5BA84, a1);
    if (v6 == 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Log Request submitted successfully");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Log Request Failed!!");
      v12[92] = 0;
    }
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldLog");
  return v6;
}

uint64_t sub_297E84548(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldLogCb");
  if (!a1)
  {
    v5 = "phDnldNfc_DnldLogCb: Invalid LIBNFC context!!";
    v6 = 2;
    v7 = 0;
LABEL_7:
    sub_297E4E0B0(v6, v7, 4u, 1u, v5);
    a2 = 255;
    goto LABEL_10;
  }

  sub_297E5D114(*(a1 + 3000), &v9);
  if (!v9)
  {
    v5 = "phDnldNfc_DnldLogCb: Invalid IOCTL context!!";
    v7 = a1 + 9792;
    v6 = 1;
    goto LABEL_7;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldLogCb - Request Failed!!");
    a2 = 255;
    v4 = v9;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldLogCb - Request Successful");
    v4 = v9;
    *(v9 + 92) = 0;
  }

  *(v4 + 168) = 0;
LABEL_10:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldLogCb");
  return a2;
}

uint64_t sub_297E84660(uint64_t a1, int a2)
{
  v20 = 0;
  v19 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldLogReadCb");
  if (a1)
  {
    sub_297E5F164(*(a1 + 3000), &v19);
    v4 = 0;
    v5 = *(a1 + 3000);
    v6 = 1;
    while (1)
    {
      v7 = v6;
      v8 = &unk_2A18BDDC0 + 112 * v4;
      if (*v8 == v5)
      {
        break;
      }

      v6 = 0;
      v9 = 0;
      v4 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v9 = *(v8 + 2) == 1;
LABEL_8:
    sub_297E5D114(v5, &v20);
    if (!v20)
    {
      v10 = "phDnldNfc_DnldLogReadCb - Invalid IOCTL context!!";
      v12 = a1 + 9792;
      goto LABEL_12;
    }

    if (a2)
    {
      v10 = "phDnldNfc_DnldLogReadCb - Request Failed!!";
      v12 = a1 + 9792;
LABEL_12:
      v11 = 1;
      goto LABEL_13;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldLogReadCb - Request Successful");
    if (*(v20 + 479) == 170)
    {
      sub_297E4E880(1, a1 + 9792, 4u, 4u, "MW Log area contents", v20 + 471);
LABEL_17:
      v13 = 0;
LABEL_24:
      *(v20 + 168) = 0;
      goto LABEL_14;
    }

    v15 = sub_297E7F0C8(*(v20 + 8), *(v20 + 116), *(v20 + 118));
    if ((v19 & 0xFFFFFFFD) == 4)
    {
      if (v15 == 6)
      {
        if (v9)
        {
LABEL_30:
          v18 = v20;
          *(v20 + 88) = 1;
          *(v18 + 102) = 60;
          sub_297E79734(a1, *(a1 + 2960), 6);
          goto LABEL_17;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *(v20 + 118) == 1;
        }

        else
        {
          v16 = v15 == 7;
        }

        v17 = v16;
        if (v17 & v9)
        {
          goto LABEL_30;
        }
      }
    }

    *(v20 + 88) = 1;
    v13 = 60;
    goto LABEL_24;
  }

  v10 = "phDnldNfc_DnldLogReadCb - Invalid LIBNFC context!!";
  v11 = 2;
  v12 = 0;
LABEL_13:
  sub_297E4E0B0(v11, v12, 4u, 1u, v10);
  v13 = 255;
LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldLogReadCb");
  return v13;
}

uint64_t sub_297E84888(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldRecover");
  if (!a1)
  {
    v8 = "phDnldNfc_DnldRecover: Invalid LIBNFC context!!";
    v9 = 2;
    v10 = 0;
LABEL_17:
    sub_297E4E0B0(v9, v10, 4u, 1u, v8);
    v11 = 255;
    goto LABEL_18;
  }

  sub_297E67F6C(*(a1 + 3000), &v16);
  sub_297E5D114(*(a1 + 3000), &v17);
  if (!v17 || !v16)
  {
    v8 = "phDnldNfc_DnldRecover: Invalid IOCTL/DNLD context!!";
    v10 = a1 + 9792;
    v9 = 1;
    goto LABEL_17;
  }

  v2 = sub_297E7F0C8(*(v17 + 8), *(v17 + 116), *(v17 + 118));
  v4 = v2 == 10 || (v2 & 0xE) == 8;
  v5 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v6 = *(v17 + 95);
  if (v4)
  {
    v7 = 3;
    if (*(v17 + 95) > 7u)
    {
      if (v6 != 8 && v6 != 9)
      {
        goto LABEL_25;
      }
    }

    else if (v6 != 2 && v6 != 3)
    {
      goto LABEL_25;
    }
  }

  else if (v6 != 9 && v6 != 8)
  {
    v7 = 3;
    goto LABEL_25;
  }

  v13 = *(a1 + 9792);
  phOsalNfc_MemCopy();
  v14 = *(a1 + 9792);
  phOsalNfc_MemCopy();
  v7 = 11;
LABEL_25:
  v15 = v17;
  *(v17 + 752) = 0;
  *(v15 + 760) = 0;
  *(v15 + 728) = 177;
  *(v15 + 736) = v15 + 216;
  *(v15 + 744) = v7;
  *(v15 + 768) = 0;
  v11 = sub_297F0FD90(*(v16 + 48), v15 + 728, sub_297E5BA84, a1);
  if (v11 == 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Repair Request submitted successfully");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Repair Request Failed!!");
  }

LABEL_18:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldRecover");
  return v11;
}

uint64_t sub_297E84B10(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldRecoverCb");
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v8);
    if (v8)
    {
      if (!a2)
      {
        ++*(v8 + 94);
        goto LABEL_9;
      }

      v4 = "phDnldNfc_DnldRecoverCb - Request Failed!!";
    }

    else
    {
      v4 = "phDnldNfc_DnldRecoverCb: Invalid IOCTL/DNLD context!!";
    }

    v6 = a1 + 9792;
    v5 = 1;
  }

  else
  {
    v4 = "phDnldNfc_DnldRecoverCb: Invalid LIBNFC context!!";
    v5 = 2;
    v6 = 0;
  }

  sub_297E4E0B0(v5, v6, 4u, 1u, v4);
  a2 = 255;
LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldRecoverCb");
  return a2;
}

uint64_t sub_297E84BF0(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_GetDieId");
  if (!a1)
  {
    v5 = "phDnldNfc_GetDieId : Invalid LIBNFC Context!!";
    v6 = 2;
    v7 = 0;
LABEL_8:
    sub_297E4E0B0(v6, v7, 4u, 1u, v5);
    v4 = 255;
    goto LABEL_9;
  }

  sub_297E67F6C(*(a1 + 3000), &v9);
  sub_297E5D114(*(a1 + 3000), &v10);
  v2 = v10;
  if (!v10 || (v3 = v9) == 0)
  {
    v5 = "phDnldNfc_GetDieId : Invalid IOCTL/DNLD Context!!";
    v7 = a1 + 9792;
    v6 = 1;
    goto LABEL_8;
  }

  *(v10 + 736) = 0;
  *(v2 + 744) = 0;
  *(v2 + 752) = v2 + 471;
  *(v2 + 760) = 250;
  *(v2 + 728) = 244;
  *(v2 + 768) = 0;
  v4 = sub_297F0FD90(*(v3 + 48), v2 + 728, sub_297E5BA84, a1);
  if (v4 == 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "RawFrame Request submitted successfully");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "RawFrame Request Failed!!");
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_GetDieId");
  return v4;
}

uint64_t sub_297E84D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_GetDieIdCb");
  if (a2)
  {
    v6 = "phDnldNfc_GetDieIdCb - Request Failed!!";
LABEL_7:
    sub_297E4E0B0(2, a1, 4u, 1u, v6);
    goto LABEL_8;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_GetDieIdCb - Request Successful");
  if (!*(a3 + 8) || !*a3)
  {
    v6 = "Invalid Response received for GetDieId Request!!";
    goto LABEL_7;
  }

  sub_297E4E880(1, a1 + 9792, 4u, 4u, "Received Packet:", *a3);
LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_GetDieIdCb");
  return a2;
}

uint64_t sub_297E84E38(uint64_t a1)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v15 = 0;
  v16[0] = 0;
  v16[1] = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldCfgHsuBaudRate");
  if (a1)
  {
    sub_297E67F6C(*(a1 + 3000), &v15);
    sub_297E5D114(*(a1 + 3000), v16);
    if (v16[0] && v15)
    {
      v2 = sub_297E7F0C8(*(v16[0] + 8), *(v16[0] + 116), *(v16[0] + 118));
      if (v2 == 2)
      {
        if (*(v16[0] + 89) != 1)
        {
LABEL_6:
          sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldCfgHsuBaudRate: ePlatformType = ");
          v3 = *(v16[0] + 8);
          HsuMaxBaudRate = phTmlNfc_GetHsuMaxBaudRate();
          if (HsuMaxBaudRate)
          {
            v5 = HsuMaxBaudRate;
            sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldCfgHsuBaudRate: phTmlNfc_GetHsuMaxBaudRate Failed = ");
            if (v5 == 13)
            {
              v9 = 13;
              goto LABEL_13;
            }
          }

          else
          {
            sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldCfgHsuBaudRate: Get Hsu MaxBaud Rate = ");
            *(v16[0] + 120) = 10;
            sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "TML HSU Baud rate Config failed");
          }

          v13 = *(v16[0] + 8);
          if (!phTmlNfc_ConfigHsuBaudRate())
          {
            sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldCfgHsuBaudRate : Success Config Hsu Baud Rate = ");
            v14 = *(a1 + 9792);
            phOsalNfc_Delay();
            v9 = 0;
            goto LABEL_13;
          }

          sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldCfgHsuBaudRate : Config Hsu Baud Rate failed Status ");
          goto LABEL_12;
        }
      }

      else if (v2 == 3 && *(v16[0] + 118) != 1)
      {
        goto LABEL_6;
      }

      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldCfgHsuBaudRate: ePlatformType = ");
      v9 = 0;
      *(v16[0] + 120) = 2;
      goto LABEL_13;
    }

    v6 = "phDnldNfc_DnldCfgHsuBaudRate: Invalid IOCTL/DNLD context!!";
    v8 = a1 + 9792;
    v7 = 1;
  }

  else
  {
    v6 = "phDnldNfc_DnldCfgHsuBaudRate: Invalid LIBNFC context!!";
    v7 = 2;
    v8 = 0;
  }

  sub_297E4E0B0(v7, v8, 4u, 1u, v6);
LABEL_12:
  v9 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldCfgHsuBaudRate");
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297E851B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldCfgHsuBaudRateCb");
  if (!a1)
  {
    v8 = "phDnldNfc_DnldCfgHsuBaudRateCb: Invalid LIBNFC context!!";
    v9 = 2;
    v10 = 0;
LABEL_13:
    sub_297E4E0B0(v9, v10, 4u, 1u, v8);
    goto LABEL_14;
  }

  sub_297E5D114(*(a1 + 3000), &v14);
  v6 = v14;
  if (!v14)
  {
    v8 = "phDnldNfc_DnldCfgHsuBaudRateCb: Invalid IOCTL context!!";
    v10 = a1 + 9792;
    v9 = 1;
    goto LABEL_13;
  }

  if (a2 || !a3)
  {
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldCfgHsuBaudRateCb: Dnld Config HSU baud rate failed");
    goto LABEL_17;
  }

  if (*a3 && *(a3 + 8) && !**a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldCfgHsuBaudRateCb - Request Successful");
    v6 = v14;
    v13 = *(v14 + 120);
  }

  else
  {
    *(v14 + 120) = 2;
  }

  v7 = *(v6 + 8);
  if (!phTmlNfc_ConfigHsuBaudRate())
  {
    sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldCfgHsuBaudRateCb : Success Config Hsu Baud Rate = ");
    v11 = *(a1 + 9792);
    phOsalNfc_Delay();
    a2 = 0;
    goto LABEL_17;
  }

  sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldCfgHsuBaudRateCb : Config Hsu Baud Rate failed Status ");
LABEL_14:
  a2 = 255;
LABEL_17:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldCfgHsuBaudRateCb");
  return a2;
}

uint64_t sub_297E85368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldComplete");
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  sub_297E67EB0(*(v5 + 3000), &v47);
  if (v47 && (sub_297E67F6C(*(v5 + 3000), &v46), v46))
  {
    v6 = *(v46 + 48);
    if (*(v5 + 6080) == 1 || *(v5 + 6083) == 1 || *(v5 + 6082) == 1)
    {
      v7 = 206;
    }

    else if (*(v5 + 6078) == 1)
    {
      v7 = 205;
    }

    else
    {
      v7 = 193;
    }
  }

  else
  {
    v6 = 0;
    v7 = 193;
  }

  sub_297E5D114(*(v5 + 3000), &v45);
  sub_297E67F6C(*(v5 + 3000), &v46);
  if (v46 && v45)
  {
    v6 = *(v46 + 48);
  }

  v8 = 0;
  if (v6 && v45)
  {
    v9 = *(v6 + 8492);
    phOsalNfc_SetMemory();
    v10 = v45;
    if (a2 == 84)
    {
      sub_297E4E0B0(0, v45 + 8, 4u, 2u, "Launching Download Recovery Sequence..");
      v8 = sub_297EE0FE8(*(v45 + 8), 194, 84, a3, 0);
      goto LABEL_17;
    }

    if (*(v45 + 92) == 1)
    {
      if (*(v45 + 836) == 1)
      {
        a2 = 141;
      }

      else
      {
        a2 = a2;
      }

      *(v45 + 102) = a2;
      *(v10 + 100) = 1;
      sub_297E4E0B0(0, v10 + 8, 4u, 4u, "Invoking Pending Download Log Sequence..");
      v12 = v45;
      *(v45 + 92) = 0;
      v13 = *(v12 + 116);
      if ((v13 - 209) >= 3 && v13 != 96)
      {
        *(v5 + 2960) = &qword_2A1A92C00;
        *(v5 + 2952) = 0;
        *(v5 + 2954) = 0;
        v18 = qword_2A1A92C00;
        if (qword_2A1A92C00)
        {
          v18 = 0;
          v19 = &qword_2A1A92C10;
          do
          {
            ++v18;
            v20 = *v19;
            v19 += 2;
          }

          while (v20);
        }

        *(v5 + 2953) = v18;
        v8 = sub_297E5588C(v5, 0, 0);
        goto LABEL_70;
      }

      if (*(v12 + 836) || *(v5 + 6078) || *(v5 + 6081) || *(v5 + 6082) || *(v5 + 6079))
      {
        if (*(v12 + 168) == 1)
        {
          *(v5 + 2960) = &qword_2A1A92C00;
          *(v5 + 2952) = 0;
          *(v5 + 2954) = 0;
          v14 = qword_2A1A92C00;
          if (qword_2A1A92C00)
          {
            v14 = 0;
            v15 = &qword_2A1A92C10;
            do
            {
              ++v14;
              v16 = *v15;
              v15 += 2;
            }

            while (v16);
          }

          *(v5 + 2953) = v14;
          if (sub_297E5588C(v5, 0, 0) == 13)
          {
            v8 = 13;
LABEL_69:
            *(v45 + 836) = 0;
LABEL_70:
            if (v8 && v8 != 13 && !*(v5 + 6078) && !*(v5 + 6081) && !*(v5 + 6082) && !*(v5 + 6079))
            {
              sub_297EA7418(v5);
              v21 = v45;
              if (*(v45 + 91) == 1)
              {
                *(v45 + 91) = 0;
                sub_297EA9F80(v5);
                sub_297E9F3BC(*(v45 + 8), 0);
                v5 = 0;
                v21 = v45;
              }

              if (*(v21 + 192) == 1)
              {
                v22 = sub_297EA76A4(v9, *(v21 + 8));
              }

              else
              {
                v36 = *(v21 + 8);
                v22 = phTmlNfc_IoCtl();
              }

              if (v22)
              {
                sub_297E4E0B0(0, v45 + 8, 4u, 1u, "phDnldNfc_DnldComplete:Switching to Normal Mode Failed!!");
              }

              v37 = v45;
              *(v45 + 92) = 0;
              *(v37 + 88) = 0;
              *(v37 + 94) = 0;
              v8 = sub_297EE0FE8(*(v37 + 8), v7, a2, a3, 0);
              v38 = v45;
              *(v45 + 102) = 0;
              *(v38 + 100) = 0;
              *(v38 + 89) = 0;
              v39 = *(v38 + 96);
              if (v39 == 2559 || v39 == 2556)
              {
                sub_297ED1128(v46);
                v38 = v45;
              }

              sub_297E7EB8C(*(v38 + 8));
            }

            if (v8)
            {
              if (v8 != 13)
              {
                v40 = *(v45 + 96);
                if (v40 == 2559 || v40 == 2556)
                {
                  sub_297E67F6C(*(v45 + 8), &v46);
                  sub_297ED1128(v46);
                }
              }
            }

            goto LABEL_17;
          }

          if (*(v5 + 6080) == 1 || *(v5 + 6083) == 1 || *(v5 + 6082) == 1)
          {
            v7 = 206;
          }

          else if (*(v5 + 6078) == 1)
          {
            v7 = 205;
          }

          else
          {
            v7 = 193;
          }

          v12 = v45;
        }

        else if (*(v5 + 6080) == 1 || *(v5 + 6083) == 1 || *(v5 + 6082) == 1)
        {
          v7 = 206;
        }

        else if (*(v5 + 6078) == 1)
        {
          v7 = 205;
        }

        else
        {
          v7 = 193;
        }

        v8 = sub_297EE0FE8(*(v12 + 8), v7, a2, a3, 0);
        *(v45 + 102) = 0;
        goto LABEL_69;
      }

      v27 = *(v12 + 8);
      if (*(v12 + 192) == 1)
      {
        v28 = phTmlNfc_IoCtl();
        if (v28)
        {
          v8 = v28;
LABEL_161:
          v7 = 193;
          goto LABEL_69;
        }

        v41 = sub_297EA76A4(v9, *(v45 + 8));
      }

      else
      {
        v41 = phTmlNfc_IoCtl();
      }

      v8 = v41;
      if (!v41)
      {
        *(v5 + 2960) = &qword_2A1A92C20;
        *(v5 + 2952) = 0;
        *(v5 + 2954) = 0;
        v42 = qword_2A1A92C20;
        if (qword_2A1A92C20)
        {
          v42 = 0;
          v43 = off_2A1A92C30;
          do
          {
            ++v42;
            v44 = *v43;
            v43 += 2;
          }

          while (v44);
        }

        *(v5 + 2953) = v42;
        v8 = sub_297E5588C(v5, 0, 0);
        goto LABEL_69;
      }

      goto LABEL_161;
    }

    if (*(v45 + 88))
    {
      if (*(v45 + 96) != 2559)
      {
        goto LABEL_102;
      }

      if (a2 == 60 || *(v45 + 102) == 60)
      {
        *(v45 + 102) = 0;
        if (*(v5 + 6080) == 1 || *(v5 + 6083) == 1 || *(v5 + 6082) == 1)
        {
          v7 = 206;
        }

        else if (*(v5 + 6078) == 1)
        {
          v7 = 205;
        }

        else
        {
          v7 = 192;
        }

        sub_297E4E0B0(0, v10 + 8, 4u, 4u, "Fw Already Upto Date!!");
        a2 = 60;
        goto LABEL_102;
      }

      goto LABEL_89;
    }

    if (a2)
    {
      v17 = *(v45 + 96);
      if (v17 == 241)
      {
        v24 = "Get Download Integrity Info Request Failed!!";
        goto LABEL_101;
      }

      if (v17 == 2558)
      {
        v24 = "Get DieId Request Failed!!";
        goto LABEL_101;
      }

      if (v17 != 2559)
      {
        goto LABEL_102;
      }

      if (a2 == 156 || a2 == 141)
      {
        v24 = "Fw download session is locked or Degraded FW update failed!!";
        goto LABEL_101;
      }

      if (a2 == 60)
      {
        sub_297E4E0B0(0, v45 + 8, 4u, 2u, "Fw Already Upto Date!!");
        goto LABEL_102;
      }

LABEL_89:
      v24 = "Fw Download Failed!!";
LABEL_101:
      sub_297E4E0B0(0, v45 + 8, 4u, 1u, v24);
      goto LABEL_102;
    }

    if (*(v5 + 6080) == 1 || *(v5 + 6083) == 1 || *(v5 + 6082) == 1)
    {
      v7 = 206;
LABEL_84:
      v23 = *(v10 + 96);
      if (v23 == 241)
      {
        sub_297E4E0B0(0, v10 + 8, 4u, 4u, "Get Download Integrity Info Request success.. ");
        if (*(v45 + 102) == 156)
        {
          *(v45 + 102) = 255;
          a2 = 156;
          goto LABEL_102;
        }
      }

      else if (v23 == 2559 || v23 == 2556)
      {
        sub_297E4E0B0(0, v10 + 8, 4u, 4u, "Fw Download success.. ");
      }

      a2 = 0;
LABEL_102:
      if (v7 != 206 && !*(v5 + 6081) && !*(v5 + 6082) && !*(v5 + 6078) && !*(v5 + 6079))
      {
        sub_297EA7418(v5);
        v25 = v45;
        if (*(v45 + 91) == 1)
        {
          *(v45 + 91) = 0;
          sub_297EA9F80(v5);
          sub_297E9F3BC(*(v45 + 8), 0);
          v5 = 0;
          v25 = v45;
        }

        if (*(v25 + 192) == 1)
        {
          v26 = sub_297EA76A4(v9, *(v25 + 8));
        }

        else
        {
          v29 = *(v25 + 8);
          v26 = phTmlNfc_IoCtl();
        }

        if (v26)
        {
          sub_297E4E0B0(0, v45 + 8, 4u, 1u, "phDnldNfc_DnldComplete: Switching to Normal Mode Failed!!");
        }
      }

      v30 = v45;
      v31 = *(v45 + 96);
      if (v31 == 2559 || v31 == 2556)
      {
        if (a2)
        {
          if (*(v45 + 836) == 1)
          {
            a2 = 141;
          }

          else
          {
            a2 = a2;
          }
        }

        *(v45 + 836) = 0;
      }

      *(v30 + 92) = 0;
      *(v30 + 88) = 0;
      *(v30 + 94) = 0;
      v32 = *(v30 + 8);
      if (*(v30 + 100))
      {
        v8 = sub_297EE0FE8(v32, v7, *(v30 + 102), a3, 0);
        v33 = v45;
        *(v45 + 102) = 0;
        *(v33 + 100) = 0;
      }

      else
      {
        v8 = sub_297EE0FE8(v32, v7, a2, a3, 0);
        v33 = v45;
      }

      *(v33 + 89) = 0;
      v34 = *(v33 + 96);
      if (v34 == 2559 || v34 == 2556)
      {
        sub_297ED1128(v46);
      }

      if (v5)
      {
        if (v7 == 206 || *(v5 + 6078) || *(v5 + 6081) || *(v5 + 6082) || *(v5 + 6079))
        {
          goto LABEL_17;
        }

        v35 = *(v5 + 3000);
      }

      else
      {
        v35 = *(v45 + 8);
      }

      sub_297E7EB8C(v35);
      goto LABEL_17;
    }

    if (*(v5 + 6078) == 1)
    {
      v7 = 205;
    }

    else
    {
      v7 = 192;
      if (*(v5 + 6081) != 1)
      {
        goto LABEL_84;
      }
    }

    *(v45 + 836) = 0;
    goto LABEL_84;
  }

LABEL_17:
  sub_297E4DFAC(2, v5, 4u, 5u, "phDnldNfc_DnldComplete");
  return v8;
}

uint64_t sub_297E85CA4(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldInitComplete");
  if (!a1 || (sub_297E67F6C(*(a1 + 3000), &v10), sub_297E5D114(*(a1 + 3000), &v11), a2))
  {
    if (a2 == 136)
    {
      v4 = 136;
    }

    else
    {
      v4 = 255;
    }

    if (a2 == 156)
    {
      v5 = 156;
    }

    else
    {
      v5 = v4;
    }

    goto LABEL_9;
  }

  v7 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v8 = *(a1 + 3000);
  if (*(a1 + 3224) != 1)
  {
    v9 = phTmlNfc_IoCtl();
LABEL_16:
    v5 = v9;
    if (!v9)
    {
      if (v11 && *(v11 + 89) == 1)
      {
        v5 = 153;
      }

      else
      {
        v5 = 255;
      }

      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v5 = phTmlNfc_IoCtl();
  if (!v5)
  {
    v9 = sub_297EA76A4(*(a1 + 9792), *(a1 + 3000));
    goto LABEL_16;
  }

LABEL_17:
  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldInitComplete: Switching to Normal Mode Failed!!");
LABEL_9:
  if (sub_297F0E16C(v10))
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "Failed to perform phDnldNfc_CoreDeInit!!");
  }

  sub_297ED0CC8(v10);
  sub_297EA93C8(a1, v5);
  sub_297E4DFAC(2, 0, 4u, 5u, "phDnldNfc_DnldInitComplete");
  return v5;
}

uint64_t sub_297E85E24(uint64_t a1)
{
  Memory_Typed = 0;
  v15 = a1;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_VerifyCtxt");
  sub_297E67F6C(v15, &v12);
  sub_297E5D114(v15, &v13);
  sub_297E4F0E8(v15, &Memory_Typed);
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v15)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = 255;
      goto LABEL_6;
    }
  }

  v5 = *(v4 + 2);
LABEL_6:
  v6 = 1;
  if (v15 && v13 && v12)
  {
    if (!Memory_Typed)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (!Memory_Typed)
      {
        sub_297E4E0B0(0, &v15, 4u, 1u, "Failed to allocate memory, Insufficient Resources");
        v6 = 12;
        goto LABEL_11;
      }

      sub_297E966F4(0, &v15, 4u, 4u, "####phLibNfc_VerifyCtxt: DriverHandle");
      sub_297E966F4(0, &v15, 4u, 4u, "####LIBNFC context");
      phOsalNfc_SetMemory();
      v9 = Memory_Typed;
      v8 = v15;
      *(Memory_Typed + 3000) = v15;
      v10 = v12;
      *(v9 + 3088) = *(v12 + 32);
      *(v9 + 9784) = v8;
      *(v9 + 9792) = v5;
      v11 = v13;
      *(v9 + 3224) = *(v13 + 192);
      *(v11 + 91) = 1;
      if (sub_297F0E83C(*(v10 + 48)) != 13)
      {
        phOsalNfc_FreeMemory();
        sub_297E4E0B0(0, &v15, 4u, 1u, "phLibNfc_VerifyCtxt : Initial TML read request failed!!");
        v6 = 255;
        goto LABEL_11;
      }

      sub_297E9F3BC(v15, Memory_Typed);
    }

    v6 = 0;
  }

LABEL_11:
  if (Memory_Typed && v13)
  {
    *(v13 + 91) = 1;
  }

  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_VerifyCtxt");
  return v6;
}

uint64_t phLibNfc_Verify_5_1_CrcStatus(uint64_t a1, int a2, int a3, int a4)
{
  v15 = a1;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_Verify_5_1_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_40:
    sub_297E96818(v15, 34);
    goto LABEL_41;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v15, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 5)
        {
          if (v11 <= 7)
          {
            if (v11 == 6)
            {
              v13 = "Mirrored User Area Crc is NOT OK!!";
            }

            else
            {
              v13 = "Log Area Crc is NOT OK!!";
            }

            goto LABEL_37;
          }

          switch(v11)
          {
            case 8:
              v13 = "Rom Area Crc is NOT OK!!";
              goto LABEL_37;
            case 9:
              v13 = "User Area Crc is NOT OK!!";
              goto LABEL_37;
            case 10:
              v13 = "User Area Protected Crc is NOT OK!!";
LABEL_37:
              sub_297E4E0B0(0, &v15, 4u, 1u, v13);
              v8 = 255;
              goto LABEL_38;
          }

LABEL_36:
          v13 = "End Marker Area Crc is NOT OK!!";
          goto LABEL_37;
        }

        if (v11 <= 2)
        {
          if (v11 == 1)
          {
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          }

          if (v11 == 2)
          {
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        if (v11 != 3)
        {
          if (v11 == 4)
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          goto LABEL_37;
        }

        sub_297E4E0B0(0, &v15, 4u, 4u, "Customer Area Crc is NOT OK!!");
      }

LABEL_38:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Verify_5_1_CrcStatus");
  return v8;
}

uint64_t phLibNfc_Verify_4_0_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_Verify_4_0_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_40:
    sub_297E96818(v16, 34);
    goto LABEL_41;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_37;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
            goto LABEL_37;
          case 5:
            v13 = "ROM Area Crc is NOT OK!!";
            goto LABEL_37;
          case 6:
            v13 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_37;
          case 7:
            v13 = "RAM AO Only Area Crc is NOT OK!!";
            goto LABEL_37;
          case 8:
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 9:
            v13 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 10:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_34;
          case 11:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_34;
          case 12:
            v13 = "User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 13:
            v13 = "RF User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 14:
            v14 = "New Banned Area Crc is NOT OK!!";
LABEL_34:
            sub_297E4E0B0(0, &v16, 4u, 4u, v14);
            break;
          case 15:
            v13 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 16:
            v13 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 17:
            v13 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 18:
            v13 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_37;
          case 19:
            v13 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_37;
          default:
            v13 = "End Marker Area Crc is NOT OK!!";
LABEL_37:
            sub_297E4E0B0(0, &v16, 4u, 1u, v13);
            v8 = 255;
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Verify_4_0_CrcStatus_NewLayout");
  return v8;
}

uint64_t phLibNfc_Verify_5_0_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_Verify_5_0_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_36:
    sub_297E96818(v16, 34);
    goto LABEL_37;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_33;
          case 2:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_33;
          case 3:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_25;
          case 4:
            v14 = "NDEF Area Crc is NOT OK!!";
LABEL_25:
            sub_297E4E0B0(0, &v16, 4u, 4u, v14);
            break;
          case 5:
            v13 = "RAM AO Only Area Crc is NOT OK!!";
            goto LABEL_33;
          case 6:
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
            goto LABEL_33;
          case 7:
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_33;
          case 8:
            v13 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_33;
          case 9:
            v13 = "Log Area Crc is NOT OK!!";
            goto LABEL_33;
          case 10:
            v13 = "Rom Area Crc is NOT OK!!";
            goto LABEL_33;
          case 11:
            v13 = "User Area Crc is NOT OK!!";
            goto LABEL_33;
          case 12:
            v13 = "User Area Protected Crc is NOT OK!!";
            goto LABEL_33;
          case 13:
            v13 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_33;
          case 14:
            v13 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_33;
          case 15:
            v13 = "RF User Area Crc is NOT OK!!";
            goto LABEL_33;
          default:
            v13 = "End Marker Area Crc is NOT OK!!";
LABEL_33:
            sub_297E4E0B0(0, &v16, 4u, 1u, v13);
            v8 = 255;
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_35:
  if (v8)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Verify_5_0_CrcStatus_NewLayout");
  return v8;
}

uint64_t phLibNfc_Verify_5_1_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v15 = a1;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_Verify_5_1_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_42:
    sub_297E96818(v15, 34);
    goto LABEL_43;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_41;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v15, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 5)
        {
          if (v11 <= 8)
          {
            if (v11 == 6)
            {
              v13 = "Mirrored User Area Protected Crc is NOT OK!!";
            }

            else if (v11 == 7)
            {
              v13 = "Mirrored User Area Crc is NOT OK!!";
            }

            else
            {
              v13 = "Log Area Crc is NOT OK!!";
            }

            goto LABEL_39;
          }

          switch(v11)
          {
            case 9:
              v13 = "Rom Area Crc is NOT OK!!";
              goto LABEL_39;
            case 10:
              v13 = "User Area Crc is NOT OK!!";
              goto LABEL_39;
            case 11:
              v13 = "User Area Protected Crc is NOT OK!!";
LABEL_39:
              sub_297E4E0B0(0, &v15, 4u, 1u, v13);
              v8 = 255;
              goto LABEL_40;
          }

          goto LABEL_38;
        }

        if (v11 <= 2)
        {
          if (v11 == 1)
          {
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_39;
          }

          if (v11 == 2)
          {
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_39;
          }

LABEL_38:
          v13 = "End Marker Area Crc is NOT OK!!";
          goto LABEL_39;
        }

        if (v11 != 3)
        {
          if (v11 == 4)
          {
            v13 = "RAM AO Only Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          goto LABEL_39;
        }

        sub_297E4E0B0(0, &v15, 4u, 4u, "Customer Area Crc is NOT OK!!");
      }

LABEL_40:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_41:
  if (v8)
  {
    goto LABEL_42;
  }

LABEL_43:
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Verify_5_1_CrcStatus_NewLayout");
  return v8;
}

uint64_t phLibNfc_Verify_5_1_CrcStatus_NewHlmLayout(uint64_t a1, int a2, int a3, int a4)
{
  v15 = a1;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_Verify_5_1_CrcStatus_NewHlmLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_44:
    sub_297E96818(v15, 34);
    goto LABEL_45;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_43;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v15, 4u, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 6)
        {
          if (v11 > 9)
          {
            switch(v11)
            {
              case 10:
                v13 = "User Area Crc is NOT OK!!";
                break;
              case 11:
                v13 = "User Area Protected Crc is NOT OK!!";
                break;
              case 12:
                v13 = "HLM debug logging Area Crc is NOT OK!!";
                break;
              default:
LABEL_40:
                v13 = "End Marker Area Crc is NOT OK!!";
                break;
            }
          }

          else if (v11 == 7)
          {
            v13 = "Mirrored User Area Crc is NOT OK!!";
          }

          else if (v11 == 8)
          {
            v13 = "Log Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Rom Area Crc is NOT OK!!";
          }

LABEL_41:
          sub_297E4E0B0(0, &v15, 4u, 1u, v13);
          v8 = 255;
          goto LABEL_42;
        }

        if (v11 > 3)
        {
          if (v11 == 4)
          {
            v13 = "RAM AO Only Area Crc is NOT OK!!";
          }

          else if (v11 == 5)
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          goto LABEL_41;
        }

        if (v11 == 1)
        {
          v13 = "Protected Area Crc is NOT OK!!";
          goto LABEL_41;
        }

        if (v11 == 2)
        {
          v13 = "Anti-tearing protected Area Crc is NOT OK!!";
          goto LABEL_41;
        }

        if (v11 != 3)
        {
          goto LABEL_40;
        }

        sub_297E4E0B0(0, &v15, 4u, 4u, "Customer Area Crc is NOT OK!!");
      }

LABEL_42:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_43:
  if (v8)
  {
    goto LABEL_44;
  }

LABEL_45:
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Verify_5_1_CrcStatus_NewHlmLayout");
  return v8;
}

uint64_t sub_297E870C0(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_Ioctl_SetRfCalData");
  v3 = sub_297E4F050(v9, &v8);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v8 == 0;
  }

  if (v4)
  {
    v5 = v3;
    sub_297E4E0B0(2, v8, 4u, 1u, "Ioctl_SetRfCalData: LIBNFC Not Initialized");
    goto LABEL_7;
  }

  if (!a2 || !*a2)
  {
    v5 = 1;
    v6 = "Ioctl_SetRfCalData: Invalid input parameters";
    goto LABEL_14;
  }

  if (*(v8 + 2994) != 1)
  {
    v5 = sub_297E4F450(v9, 99, 0, a2, 0);
LABEL_7:
    if (v5 == 13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = 51;
  v6 = "Ioctl_SetRfCalData: Feature Not supported";
LABEL_14:
  sub_297E4E0B0(1, v8 + 9792, 4u, 1u, v6);
LABEL_15:
  sub_297E5AE60(v9, 99);
  sub_297E96818(v9, v5);
LABEL_16:
  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_Ioctl_SetRfCalData");
  return v5;
}

uint64_t sub_297E871F0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_Ioctl_GetRfCalData");
  v4 = sub_297E4F050(v10, &v9);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v9 == 0;
  }

  if (v5)
  {
    v6 = v4;
    sub_297E4E0B0(2, v9, 4u, 1u, "phLibNfc_Ioctl_GetRfCalData: LIBNFC Not Initialized");
    goto LABEL_7;
  }

  if (!a3 || !*a3)
  {
    v6 = 1;
    v7 = "phLibNfc_Ioctl_GetRfCalData: Invalid input parameters";
    goto LABEL_14;
  }

  if (*(v9 + 2994) != 1)
  {
    v6 = sub_297E4F450(v10, 100, 0, a3, 0);
LABEL_7:
    if (v6 == 13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = 51;
  v7 = "phLibNfc_Ioctl_GetRfCalData: Feature Not supported";
LABEL_14:
  sub_297E4E0B0(1, v9 + 9792, 4u, 1u, v7);
LABEL_15:
  sub_297E5AE60(v10, 100);
  sub_297E96818(v10, v6);
LABEL_16:
  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_Ioctl_GetRfCalData");
  return v6;
}

uint64_t sub_297E87320(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_Ioctl_PropSetConfigSigned");
  v3 = sub_297E4F050(v9, &v8);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v8 == 0;
  }

  if (v4)
  {
    v5 = v3;
    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_Ioctl_PropSetConfigSigned: LIBNFC Not Initialized");
    goto LABEL_7;
  }

  if (a2 && *a2 && *(a2 + 8) >= 0x10u)
  {
    if (*(v8 + 2994) == 1)
    {
      v5 = 51;
      v6 = "Ioctl_PropSetConfigSigned: Feature Not supported!";
      goto LABEL_13;
    }

    v5 = sub_297E4F450(v9, 101, 0, a2, 0);
LABEL_7:
    if (v5 == 13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = 1;
  v6 = "Ioctl_PropSetConfigSigned: Invalid Input Parameter!";
LABEL_13:
  sub_297E4E0B0(1, v8 + 9792, 4u, 1u, v6);
LABEL_14:
  sub_297E5AE60(v9, 101);
  sub_297E96818(v9, v5);
LABEL_15:
  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_Ioctl_PropSetConfigSigned");
  return v5;
}

uint64_t sub_297E87460(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4u, 5u, "phLibNfc_Ioctl_PropSetPwrTrackConfig");
  sub_297E4F0E8(v6, &v5);
  if (a2 && *a2 && *(a2 + 8) == 1)
  {
    if (!v5 || v5[2984] == 1 || v5[2985] == 1 || v5[2986] == 1 || v5[2992] == 1)
    {
      v3 = sub_297E4F450(v6, 102, 0, a2, 0);
      if (v3 == 13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_297E4E0B0(1, (v5 + 9792), 4u, 1u, "phLibNfc_Ioctl_PropSetPwrTrackConfig: Feature Not supported!");
      v3 = 51;
    }
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(0, &v6, 4u, 1u, "phLibNfc_Ioctl_PropSetPwrTrackConfig: Invalid Input Parameter!");
  }

  sub_297E5AE60(v6, 102);
  sub_297E96818(v6, v3);
LABEL_13:
  sub_297E4DFAC(0, &v6, 4u, 5u, "phLibNfc_Ioctl_PropSetPwrTrackConfig");
  return v3;
}

uint64_t sub_297E875AC(uint64_t a1, unsigned __int8 **a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_Ioctl_PropSetCrcChkConfig");
  sub_297E4F0E8(v8, &v7);
  if (a2 && *a2 && *(a2 + 2) == 1)
  {
    v3 = v7;
    if (v7 && *(v7 + 2984) != 1 && *(v7 + 2985) != 1 && *(v7 + 2986) != 1 && *(v7 + 2992) != 1)
    {
      sub_297E4E0B0(1, (v7 + 1224), 4u, 1u, "phLibNfc_Ioctl_PropSetCrcChkConfig: Feature Not supported!");
      v4 = 51;
      goto LABEL_14;
    }

    if (**a2 < 2u)
    {
      v4 = sub_297E4F450(v8, 103, 0, a2, 0);
      if (v4 == 13)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v4 = 1;
    v5 = 2;
  }

  else
  {
    v4 = 1;
    v3 = &v8;
    v5 = 0;
  }

  sub_297E4E0B0(v5, v3, 4u, 1u, "phLibNfc_Ioctl_PropSetCrcChkConfig: Invalid Input Parameter!");
LABEL_14:
  sub_297E5AE60(v8, 103);
  sub_297E96818(v8, v4);
LABEL_15:
  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_Ioctl_PropSetCrcChkConfig");
  return v4;
}

uint64_t sub_297E87718(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_EseCfg_GetFwVer");
  sub_297E5D114(*(a1 + 3000), &v11);
  sub_297E67F6C(*(a1 + 3000), &v10);
  v5 = v10;
  v4 = v11;
  if (v11)
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phDnldNfc_EseCfg_GetFwVer:Invalid LIBNFC/IOCTL context !!");
    v7 = 255;
  }

  else
  {
    *(v11 + 752) = v11 + 471;
    *(v4 + 760) = 250;
    *(v4 + 728) = 241;
    *(v4 + 736) = 0;
    *(v4 + 744) = 0;
    *(v4 + 768) = 0;
    v8 = sub_297F0FD90(*(v5 + 48), v4 + 728, a2, a1);
    v7 = v8;
    if (v8 == 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_EseCfg_GetFwVer:GetVersion Request submitted successfully");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_EseCfg_GetFwVer:GetVersion Request Failed!!");
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_EseCfg_GetFwVer");
  return v7;
}

uint64_t phDnldNfc_DnldEsePwrCfgCmd(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = 0;
  v36 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEsePwrCfgCmd");
  if (!a1)
  {
    v11 = "phDnldNfc_DnldEsePwrCfgCmd: Invalid LIBNFC context!!";
    v12 = 2;
    v13 = 0;
    goto LABEL_28;
  }

  sub_297E67EB0(*(a1 + 3000), &v36);
  sub_297E5D114(*(a1 + 3000), &v35);
  v6 = 1;
  if (!v36 || !v35)
  {
    goto LABEL_30;
  }

  if (*(a1 + 6078) || *(a1 + 6081) || *(v35 + 116))
  {
    v6 = a2;
    goto LABEL_8;
  }

  v6 = 255;
  v33 = "phDnldNfc_DnldEsePwrCfgCmd:Get FW ver Response Failed!!";
  if (a2 || !a3 || !*a3)
  {
    goto LABEL_44;
  }

  v6 = 0;
  v34 = **a3;
  *(v35 + 116) = v34;
  if ((v34 - 208) >= 4 && v34 != 96)
  {
    v6 = 51;
    v33 = "phDnldNfc_DnldEsePwrCfgCmd:Unsupported Platform";
LABEL_44:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v33);
    if (*(v36 + 18) == 1)
    {
      sub_297E87C68(a1, v6, a3);
    }

    else
    {
      sub_297E87E4C(a1, v6, a3);
    }
  }

LABEL_8:
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(&unk_2A18BDDC0 + 14 * v8 + 2);
    if (v7)
    {
      break;
    }

    v7 = 1;
    v8 = 1;
  }

  while (v9 != a1);
  if (v9 == a1)
  {
    v10 = v35;
    if (*(a1 + 6078) == 1)
    {
LABEL_17:
      v15 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v16 = v35;
      *(v35 + 776) = 34;
      v17 = v36;
      *(v16 + 784) = v36 + 18;
      *(v16 + 792) = 1;
      v18 = *(v17 + 18);
      v19 = *(a1 + 9792);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v35 + 800) = Memory_Typed;
      if (Memory_Typed)
      {
        if (v18 == 1)
        {
          v21 = sub_297E87C68;
        }

        else
        {
          v21 = sub_297E87E4C;
        }

        v22 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        v23 = v35;
        *(v35 + 808) = 27;
        v24 = *(a1 + 9792);
        v25 = *(v23 + 800);
        phOsalNfc_SetMemory();
        if (sub_297F103BC(v36, v35 + 776, v21, a1) == 13)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Download mode eSE power config submitted successfully");
          v26 = v36;
          v27 = *(v36 + 48);
          v28 = "phDnldNfc_DnldEsePwrCfgCmd:Invalid Download Ese Response Timer ID";
          if (v27 && v27 != 0xFFFFFFFFFFFFLL && *(v36 + 16) != 1)
          {
            *(v36 + 32) = 2500;
            v29 = *(v26 + 1368);
            if (!phOsalNfc_Timer_Start())
            {
              *(v36 + 16) = 1;
              v6 = 13;
              goto LABEL_30;
            }

            v28 = "phDnldNfc_DnldEsePwrCfgCmd:Response Timer Start failed!!!";
          }
        }

        else
        {
          v28 = "phDnldNfc_DnldEsePwrCfgCmd:Download mode eSE config Failed!!";
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v28);
        if (*(v35 + 800))
        {
          v31 = *(a1 + 9792);
          phOsalNfc_FreeMemory();
          v32 = v35;
          *(v35 + 800) = 0;
          *(v32 + 808) = 0;
        }

        goto LABEL_29;
      }

      v11 = "Download mode eSE power config memory allocation Failed!!";
      v13 = a1 + 9792;
      v12 = 1;
LABEL_28:
      sub_297E4E0B0(v12, v13, 4u, 1u, v11);
LABEL_29:
      v6 = 255;
      goto LABEL_30;
    }
  }

  else
  {
    v10 = v35;
  }

  v14 = *(v10 + 116);
  if ((v14 - 208) < 4 || v14 == 96)
  {
    goto LABEL_17;
  }

  if (v6 != 51 && v6 != 255)
  {
    if (*(v10 + 116))
    {
      v6 = 51;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldEsePwrCfgCmd:Couldn't get the FW version");
      v6 = 255;
    }

    if (*(v36 + 18) == 1)
    {
      sub_297E87C68(a1, v6, a3);
    }

    else
    {
      sub_297E87E4C(a1, v6, a3);
    }
  }

LABEL_30:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEsePwrCfgCmd");
  return v6;
}

uint64_t sub_297E87C68(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseEnableCB");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseEnableCB");
  }

  sub_297E67EB0(*(a1 + 3000), &v18);
  sub_297E5D114(*(a1 + 3000), &v17);
  v6 = *(a1 + 9792);
  v7 = v18;
  if (a2 || !v18)
  {
    if (!a2)
    {
      v11 = 0;
LABEL_19:
      v13 = 196;
      goto LABEL_20;
    }

LABEL_14:
    *(a1 + 6078) = 0;
    *(a1 + 362) = 0;
    *(a1 + 448) = 0x300000000;
    *(a1 + 440) = 0;
    if (v7)
    {
      *(v7 + 8) = 0;
      v12 = *(v7 + 1368);
    }

    if (a2 == 214)
    {
      v11 = 67;
    }

    else
    {
      v11 = a2;
    }

    goto LABEL_19;
  }

  v8 = *(v18 + 768);
  if (!v8)
  {
    v10 = "phDnldNfc_DnldEseEnableCB:Invalid response buffer!!";
    goto LABEL_13;
  }

  if (*v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v18 + 776) == 27;
  }

  if (!v9)
  {
    v10 = "phDnldNfc_DnldEseEnableCB:Unsuccessful status received!!";
LABEL_13:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v10);
    a2 = 255;
    v7 = v18;
    goto LABEL_14;
  }

  v16 = 0;
  *(v18 + 29) = v8[1];
  do
  {
    *(v7 + 8 * v16 + 152) = 0;
    v7 = v18;
    *(v18 + 2 * v16 + 216) = 1;
    *(v7 + 4 * v16++ + 232) = 0;
  }

  while (v16 != 8);
  v11 = 0;
  *(v7 + 136) = xmmword_297F13190;
  *(a1 + 6078) = 1;
  *(a1 + 362) = 1;
  *(a1 + 448) = 0x200000001;
  *(a1 + 440) = &unk_2A13A5C98;
  *(v7 + 8) = &unk_2A13A5C98;
  v13 = 195;
LABEL_20:
  sub_297EE0FE8(*(a1 + 3000), v13, v11, a3, 0);
  if (v17 && *(v17 + 800))
  {
    phOsalNfc_FreeMemory();
    v14 = v17;
    *(v17 + 800) = 0;
    *(v14 + 808) = 0;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseEnableCB");
}

uint64_t sub_297E87E4C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseDisableCB");
  if (a1)
  {
    sub_297E67EB0(*(a1 + 3000), &v12);
    sub_297E5D114(*(a1 + 3000), &v13);
    v6 = *(a1 + 9792);
    *(a1 + 6078) = 0;
    *(a1 + 6080) = 0;
    *(a1 + 362) = 0;
    *(a1 + 448) = 0x300000000;
    *(a1 + 440) = 0;
    v7 = v12;
    if (v12)
    {
      *(v12 + 8) = 0;
      *(v7 + 29) = 0;
      v8 = *(v7 + 1368);
    }

    if (a2 == 214)
    {
      v9 = 67;
    }

    else
    {
      v9 = a2;
    }

    sub_297EE0FE8(*(a1 + 3000), 197, v9, a3, 0);
    if (v13 && *(v13 + 800))
    {
      phOsalNfc_FreeMemory();
      v10 = v13;
      *(v13 + 800) = 0;
      *(v10 + 808) = 0;
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseDisableCB");
}

uint64_t sub_297E87F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseTranscvCmd");
  if (!a1 || (sub_297E67EB0(*(a1 + 3000), &v20), sub_297E5D114(*(a1 + 3000), &v21), !a3) || !v20 || !v21 || !*a3 || !*(a3 + 16))
  {
    v13 = "phDnldNfc_DnldEseTranscvCmd : Invalid context / buffer received";
    v15 = 2;
    v14 = a1;
    goto LABEL_13;
  }

  v5 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  phOsalNfc_SetMemory();
  phOsalNfc_SetMemory();
  phOsalNfc_MemCopy();
  v8 = v20;
  v9 = v21;
  *(v21 + 776) = 0;
  *(v9 + 784) = *a3;
  *(v9 + 792) = *(a3 + 8);
  *(v9 + 816) = *(a3 + 32);
  v10 = sub_297F103BC(v8, v9 + 776, sub_297E881D0, a1);
  if (v10 != 13)
  {
    v16 = v10;
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldEseTranscvCmd : Download mode eSE transceive Failed!!");
    goto LABEL_14;
  }

  *(a1 + 6080) = 1;
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phDnldNfc_DnldEseTranscvCmd: Download mode eSE transceive submitted successfully");
  v11 = v20;
  v12 = *(v20 + 48);
  if (!v12 || v12 == 0xFFFFFFFFFFFFLL || *(v20 + 16) == 1)
  {
    v13 = "phDnldNfc_DnldEseTranscvCmd : Invalid Download Ese Response Timer ID";
    v14 = a1 + 9792;
    v15 = 1;
LABEL_13:
    sub_297E4E0B0(v15, v14, 4u, 1u, v13);
    v16 = 255;
    goto LABEL_14;
  }

  if (*(v21 + 816) <= 0x2710u)
  {
    v18 = 10000;
  }

  else
  {
    v18 = *(v21 + 816);
  }

  *(v20 + 32) = v18;
  v19 = *(v11 + 1368);
  if (phOsalNfc_Timer_Start())
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldEseTranscvCmd : Response Timer Start failed!!!");
  }

  else
  {
    *(v20 + 16) = 1;
  }

  v16 = 13;
LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseTranscvCmd");
  return v16;
}

uint64_t sub_297E881D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseTranscvRsp");
  if (a1)
  {
    sub_297E67EB0(*(a1 + 3000), &v7);
    if (a2 && v7)
    {
      *(v7 + 72) = 0;
    }

    *(a1 + 6080) = 0;
    a2 = sub_297EE0FE8(*(a1 + 3000), 198, a2, a3, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseTranscvRsp");
  return a2;
}

uint64_t sub_297E8828C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_ProcEseRemovedNtf");
  if (a1)
  {
    sub_297E4F0E8(*a1, &v13);
    sub_297E67F6C(*a1, &v12);
    sub_297E5D114(*a1, &v11);
    v6 = *(a1 + 1368);
    v7 = v13;
    if (v13)
    {
      *(v13 + 6078) = 0;
      *(v7 + 6080) = 0;
      *(v7 + 362) = 0;
      *(v7 + 448) = 0x300000000;
      *(v7 + 440) = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    phOsalNfc_SetMemory();
    *(a1 + 72) = 0;
    if (v11 && *(v11 + 800))
    {
      phOsalNfc_FreeMemory();
      v8 = v11;
      *(v11 + 800) = 0;
      *(v8 + 808) = 0;
    }

    if (*(a1 + 712) || *(a1 + 728))
    {
      v9 = 204;
    }

    else
    {
      v9 = 203;
    }

    sub_297EE0FE8(*a1, v9, a2, a3, 0);
  }

  return sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_ProcEseRemovedNtf");
}

uint64_t phDnldEseNfc_ProcOsResetNtf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_ProcOsResetNtf");
  if (a1)
  {
    sub_297E4F0E8(*a1, &v8);
    v6 = *(a1 + 1368);
    if (v8)
    {
      *(v8 + 6080) = 0;
    }

    phOsalNfc_SetMemory();
    *(a1 + 72) = 0;
    sub_297EE0FE8(*a1, 198, a2, a3, 0);
  }

  return sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_ProcOsResetNtf");
}

uint64_t phDnldNfc_DnldEseSmbCfgCmd(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = 0;
  v33 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseSmbCfgCmd");
  if (!a1)
  {
    v11 = "phDnldNfc_DnldEseSmbCfgCmd: Invalid LIBNFC context!!";
    v12 = 2;
    v13 = 0;
    goto LABEL_25;
  }

  sub_297E67EB0(*(a1 + 3000), &v33);
  sub_297E5D114(*(a1 + 3000), &v32);
  v6 = 1;
  if (!v33 || !v32)
  {
    goto LABEL_27;
  }

  if (*(a1 + 6078) || *(a1 + 6081) || *(v32 + 116))
  {
    v6 = a2;
    goto LABEL_8;
  }

  v6 = 255;
  v30 = "phDnldNfc_DnldEseSmbCfgCmd:Get FW version Response Failed!!";
  if (a2 || !a3 || !*a3)
  {
    goto LABEL_41;
  }

  v6 = 0;
  v31 = **a3;
  *(v32 + 116) = v31;
  if ((v31 - 209) >= 3 && v31 != 96)
  {
    v6 = 51;
    v30 = "phDnldNfc_DnldEseSmbCfgCmd:Unsupported Platform";
LABEL_41:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v30);
    phDnldNfc_DnldEseSmbCfgCb(a1, v6, a3);
  }

LABEL_8:
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(&unk_2A18BDDC0 + 14 * v8 + 2);
    if (v7)
    {
      break;
    }

    v7 = 1;
    v8 = 1;
  }

  while (v9 != a1);
  if (v9 == a1)
  {
    v10 = v32;
    if (*(a1 + 6081) == 1)
    {
LABEL_17:
      v15 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v16 = v32;
      *(v32 + 776) = 36;
      *(v16 + 784) = v33 + 24;
      *(v16 + 792) = 5;
      v17 = *(a1 + 9792);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v32 + 800) = Memory_Typed;
      if (Memory_Typed)
      {
        v19 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        v20 = v32;
        *(v32 + 808) = 1;
        v21 = *(a1 + 9792);
        v22 = *(v20 + 800);
        phOsalNfc_SetMemory();
        if (sub_297F103BC(v33, v32 + 776, phDnldNfc_DnldEseSmbCfgCb, a1) == 13)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Download mode eSE Smb logging config cmd sent");
          v23 = v33;
          v24 = *(v33 + 48);
          v25 = "phDnldNfc_DnldEseSmbCfgCmd:Invalid Download Ese Response Timer ID";
          if (v24 && v24 != 0xFFFFFFFFFFFFLL && *(v33 + 16) != 1)
          {
            *(v33 + 32) = 2500;
            v26 = *(v23 + 1368);
            if (!phOsalNfc_Timer_Start())
            {
              *(v33 + 16) = 1;
              v6 = 13;
              goto LABEL_27;
            }

            v25 = "phDnldNfc_DnldEseSmbCfgCmd:Response Timer Start failed!!!";
          }
        }

        else
        {
          v25 = "phDnldNfc_DnldEseSmbCfgCmd:Download mode eSE config Failed!!";
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v25);
        if (*(v32 + 800))
        {
          v28 = *(a1 + 9792);
          phOsalNfc_FreeMemory();
          v29 = v32;
          *(v32 + 800) = 0;
          *(v29 + 808) = 0;
        }

        goto LABEL_26;
      }

      v11 = "Download mode eSE SMB config memory allocation Failed!!";
      v13 = a1 + 9792;
      v12 = 1;
LABEL_25:
      sub_297E4E0B0(v12, v13, 4u, 1u, v11);
LABEL_26:
      v6 = 255;
      goto LABEL_27;
    }
  }

  else
  {
    v10 = v32;
  }

  v14 = *(v10 + 116);
  if ((v14 - 209) < 3 || v14 == 96)
  {
    goto LABEL_17;
  }

  if (v6 != 51 && v6 != 255)
  {
    if (*(v10 + 116))
    {
      v6 = 51;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_DnldEseSmbCfgCmd:Couldn't get the FW version");
      v6 = 255;
    }

    phDnldNfc_DnldEseSmbCfgCb(a1, v6, a3);
  }

LABEL_27:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseSmbCfgCmd");
  return v6;
}

uint64_t phDnldNfc_DnldEseSmbCfgCb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseSmbCfgCb");
  if (!a1)
  {
    goto LABEL_26;
  }

  sub_297E67EB0(*(a1 + 3000), &v17);
  sub_297E5D114(*(a1 + 3000), &v16);
  v6 = *(a1 + 9792);
  if (v17)
  {
    if (a2)
    {
      if (*(v17 + 20) == 1)
      {
        *(a1 + 6081) = 0;
        phDnldNfc_EseDeleteSmbList(a1);
      }

      goto LABEL_14;
    }

    v7 = *(v17 + 768);
    if (v7)
    {
      if (*v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v17 + 776) == 1;
      }

      if (v8)
      {
        if (*(v17 + 20) == 1)
        {
          a2 = 0;
          *(a1 + 6081) = 1;
        }

        else
        {
          *(a1 + 6081) = 0;
          phDnldNfc_EseDeleteSmbList(a1);
          a2 = 0;
        }

        goto LABEL_14;
      }

      v9 = "phDnldNfc_DnldEseSmbCfgCb:Unsuccessful status/invalid response  received!!";
    }

    else
    {
      v9 = "phDnldNfc_DnldEseSmbCfgCb:Invalid response buffer!!";
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v9);
    a2 = 255;
LABEL_14:
    if (*(a1 + 6078) == 1)
    {
      v10 = 199;
    }

    else
    {
      v10 = 200;
    }

    sub_297EE0FE8(*(a1 + 3000), v10, a2, a3, 0);
    if (v17)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(&unk_2A18BDDC0 + 14 * v12 + 8);
        if (v11)
        {
          break;
        }

        v11 = 1;
        v12 = 1;
      }

      while (v13 != v17);
      if (v13 == v17)
      {
        phOsalNfc_SetMemory();
        *(v17 + 20) = 0;
      }
    }
  }

  if (v16 && *(v16 + 800))
  {
    phOsalNfc_FreeMemory();
    v14 = v16;
    *(v16 + 800) = 0;
    *(v14 + 808) = 0;
  }

LABEL_26:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseSmbCfgCb");
  return a2;
}

uint64_t phDnldNfc_EseDeleteSmbList(uint64_t a1)
{
  v8 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_EseDeleteSmbList");
  if (a1)
  {
    sub_297E67EB0(*(a1 + 3000), &v8);
    if (v8)
    {
      v2 = *(v8 + 264);
      if (v2)
      {
        v3 = *(a1 + 9792);
        for (i = *(v2 + 296); i; i = *(v5 + 296))
        {
          v5 = i;
          phOsalNfc_FreeMemory();
        }

        phOsalNfc_FreeMemory();
        v6 = v8;
        *(v8 + 264) = 0;
      }

      else
      {
        sub_297E4E0B0(1, v8 + 1368, 6u, 4u, "phDnldEseNfc_HciDeleteList:List is empty");
        v6 = v8;
      }

      *(v6 + 328) = 1;
      *(v6 + 344) = 0;
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_EseDeleteSmbList");
}

uint64_t phDnldNfc_DnldEseGetSmbCmd(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseGetSmbCmd");
  if (!a1 || (sub_297E67EB0(*(a1 + 3000), &v10), sub_297E5D114(*(a1 + 3000), &v11), !v10) || !v11)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phDnldNfc_DnldEseGetSmbCmd : Invalid context / buffer received");
LABEL_8:
    RemainingSmbLog = 255;
    goto LABEL_9;
  }

  v2 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v3 = v10;
  *(v10 + 264) = 0;
  *(v3 + 328) = 1;
  *(v3 + 344) = 0;
  v4 = *(a1 + 9792);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(v11 + 800) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Download mode eSE config memory allocation Failed!!");
    goto LABEL_11;
  }

  RemainingSmbLog = phDnldNfc_DnldEseGetRemainingSmbLog(a1);
  if (RemainingSmbLog == 255)
  {
LABEL_11:
    if (*(v11 + 800))
    {
      v8 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      v9 = v11;
      *(v11 + 800) = 0;
      *(v9 + 808) = 0;
    }

    goto LABEL_8;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseGetSmbCmd");
  return RemainingSmbLog;
}

uint64_t phDnldNfc_DnldEseGetRemainingSmbLog(uint64_t a1)
{
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseGetRemainingSmbLog");
  if (a1 && (sub_297E67EB0(*(a1 + 3000), &v15), sub_297E5D114(*(a1 + 3000), &v16), v15) && (v2 = v16) != 0)
  {
    *(v16 + 776) = 37;
    *(v2 + 784) = 0;
    *(v2 + 792) = 0;
    v3 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v4 = v16;
    *(v16 + 808) = 287;
    v5 = *(a1 + 9792);
    v6 = *(v4 + 800);
    phOsalNfc_SetMemory();
    if (sub_297F103BC(v15, v16 + 776, phDnldNfc_DnldEseGetSmbCb, a1) == 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Download mode eSE Get Smb logging cmd sent");
      v7 = v15;
      v8 = *(v15 + 48);
      if (!v8 || v8 == 0xFFFFFFFFFFFFLL || *(v15 + 16) == 1)
      {
        v9 = "phDnldNfc_DnldEseGetRemainingSmbLog:Invalid Download Ese Response Timer ID";
      }

      else
      {
        *(v15 + 32) = 2500;
        v14 = *(v7 + 1368);
        if (!phOsalNfc_Timer_Start())
        {
          *(v15 + 16) = 1;
          v12 = 13;
          goto LABEL_13;
        }

        v9 = "phDnldNfc_DnldEseGetRemainingSmbLog:Response Timer Start failed!!!";
      }
    }

    else
    {
      v9 = "phDnldNfc_DnldEseGetRemainingSmbLog:Download mode Get Smb logging Failed!!";
    }

    v11 = a1 + 9792;
    v10 = 1;
  }

  else
  {
    v9 = "phDnldNfc_DnldEseGetRemainingSmbLog:Invalid Context received!!";
    v10 = 2;
    v11 = a1;
  }

  sub_297E4E0B0(v10, v11, 4u, 1u, v9);
  v12 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseGetRemainingSmbLog");
  return v12;
}

uint64_t phDnldNfc_DnldEseGetSmbCb(uint64_t a1, uint64_t SmbList)
{
  v33 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = 0;
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
  v16 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DnldEseGetSmbCb");
  if (!a1)
  {
    goto LABEL_27;
  }

  sub_297E67EB0(*(a1 + 3000), &v15);
  sub_297E5D114(*(a1 + 3000), &v14);
  if (!v15)
  {
    goto LABEL_27;
  }

  v4 = *(a1 + 9792);
  if (SmbList)
  {
    goto LABEL_17;
  }

  v5 = *(v15 + 768);
  if (!v5)
  {
    v6 = "phDnldNfc_DnldEseGetSmbCb:Invalid response buffer!!";
    goto LABEL_16;
  }

  if (!*v5)
  {
    v7 = v5[1];
    if (v7 > 1)
    {
      v6 = "phDnldNfc_DnldEseGetSmbCb:Invalid value received for More Log field!!";
      goto LABEL_16;
    }

    v8 = *(v15 + 776);
    if (v8 >= 3)
    {
      SmbList = phDnldNfc_EseStoreSmbList(a1, (v5 + 2), v8 - 2);
      if (SmbList)
      {
        goto LABEL_29;
      }

      v7 = v5[1];
    }

    if (v7 == 1)
    {
      if (phDnldNfc_DnldEseGetRemainingSmbLog(a1) == 13)
      {
        SmbList = 13;
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    v13 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    SmbList = phDnldNfc_EseExtractSmbList(a1, &v16 + 1);
LABEL_29:
    if (SmbList == 13)
    {
      goto LABEL_27;
    }

    phDnldNfc_EseDeleteSmbList(a1);
    if (SmbList != 255)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = "phDnldNfc_DnldEseGetSmbCb:Unsuccessful status/invalid response  received!!";
LABEL_16:
  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v6);
LABEL_17:
  phDnldNfc_EseDeleteSmbList(a1);
LABEL_18:
  LODWORD(v17) = 0;
  SmbList = 255;
LABEL_19:
  LODWORD(v16) = 1;
  if (*(a1 + 6078) == 1)
  {
    v9 = 201;
  }

  else
  {
    v9 = 202;
  }

  sub_297EE0FE8(*(a1 + 3000), v9, SmbList, &v16, 0);
  if (*(&v16 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v16 + 1) = 0;
  }

  LODWORD(v17) = 0;
  if (v14 && *(v14 + 800))
  {
    phOsalNfc_FreeMemory();
    v10 = v14;
    *(v14 + 800) = 0;
    *(v10 + 808) = 0;
  }

LABEL_27:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_DnldEseGetSmbCb");
  v11 = *MEMORY[0x29EDCA608];
  return SmbList;
}

uint64_t phDnldNfc_EseStoreSmbList(uint64_t a1, uint64_t a2, int a3)
{
  v19 = 0;
  v18 = 255;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_EseStoreSmbList");
  if (a1)
  {
    sub_297E67EB0(*(a1 + 3000), &v19);
    v18 = *(a1 + 9792);
    v6 = v19;
  }

  else
  {
    v6 = 0;
  }

  v7 = 255;
  if (a2 && (a3 - 1) <= 0x11C && a1 && v6)
  {
    v8 = *(v6 + 264);
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *(v8 + 296);
      }

      while (v8);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v9 + 296) = Memory_Typed;
      if (!Memory_Typed)
      {
        sub_297E4E0B0(1, &v18, 4u, 1u, "phDnldNfc_EseStoreSmbList:Memory allocation failed while creating new node!");
        v7 = 255;
        goto LABEL_17;
      }

      phOsalNfc_SetMemory();
      v11 = *(v9 + 296);
      phOsalNfc_MemCopy();
      v7 = 0;
      v12 = *(v9 + 296);
      *(v12 + 288) = a3;
      *(v12 + 296) = 0;
      v13 = v19;
      ++*(v19 + 328);
    }

    else
    {
      v14 = phOsalNfc_GetMemory_Typed();
      *(v19 + 264) = v14;
      if (!v14)
      {
        sub_297E4E0B0(1, &v18, 4u, 1u, "phDnldNfc_EseStoreSmbList:Memory allocation failed while creating new node!");
        goto LABEL_17;
      }

      phOsalNfc_SetMemory();
      v15 = *(v19 + 264);
      phOsalNfc_MemCopy();
      v7 = 0;
      v13 = v19;
      v16 = *(v19 + 264);
      *(v16 + 288) = a3;
      *(v16 + 296) = 0;
    }

    *(v13 + 344) += a3;
  }

LABEL_17:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_EseStoreSmbList");
  return v7;
}

uint64_t phDnldNfc_EseExtractSmbList(uint64_t a1, uint64_t *a2)
{
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_EseExtractSmbList");
  if (!a1 || (sub_297E67EB0(*(a1 + 3000), &v13), !a2) || !v13)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phDnldNfc_EseExtractSmbList : Invalid context / buffer received");
    goto LABEL_12;
  }

  v4 = *(v13 + 264);
  if (v4)
  {
    v5 = *(a1 + 9792);
    v6 = *(v13 + 344);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *a2 = Memory_Typed;
    if (Memory_Typed)
    {
      v8 = *(v13 + 344);
      phOsalNfc_SetMemory();
      v9 = 0;
      *(a2 + 2) = 0;
      do
      {
        if (!*(v4 + 288))
        {
          break;
        }

        if (v9 >= *(v13 + 328))
        {
          break;
        }

        v10 = *a2;
        phOsalNfc_MemCopy();
        *(a2 + 2) += *(v4 + 288);
        v4 = *(v4 + 296);
        ++v9;
      }

      while (v4);
      goto LABEL_10;
    }

LABEL_12:
    v11 = 255;
    goto LABEL_13;
  }

LABEL_10:
  v11 = 0;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_EseExtractSmbList");
  return v11;
}

uint64_t sub_297E89418(uint64_t a1, uint64_t a2)
{
  v44 = 0;
  v45 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
      if (v3)
      {
        break;
      }

      v3 = 1;
      v4 = 1;
    }

    while (v5 != a2);
    if (v5 == a2)
    {
      sub_297E4F0E8(*(a2 + 48), &v45);
      sub_297E5D114(*(a2 + 48), &v44);
      v8 = v45;
      if (!v45 || !v44)
      {
        v6 = "phDnldNfc_SpmiClientResetDelayCb:Invalid LIBNFC/IOCTL Context";
        v7 = 2;
LABEL_25:
        v9 = 4;
        goto LABEL_7;
      }

      v11 = *(v45 + 9792);
      phOsalNfc_SetMemory();
      v12 = *(a2 + 72);
      if (!v12 || v12 == 0xFFFFFFFFFFFFLL)
      {
        v13 = v45;
        v14 = "phDnldNfc_SpmiClientResetDelayCb: Invalid Timer Id";
        goto LABEL_14;
      }

      v17 = *(a2 + 8492);
      phOsalNfc_Timer_Stop();
      v18 = *(a2 + 48);
      v19 = phTmlNfc_IoCtl();
      if (v19 == 179)
      {
        sub_297E96914(1, v45 + 9792, 4u, 3u, "phDnldNfc_SpmiClientResetDelayCb: SPMI Reset Client Status =");
        sub_297E50EBC(1, v45 + 9792, 4u, 4u, "phDnldNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
        v20 = *(v45 + 9792);
        phOsalNfc_Delay();
        v21 = *(a2 + 48);
        v19 = phTmlNfc_IoCtl();
        if (v19 == 179)
        {
          sub_297E96914(1, v45 + 9792, 4u, 3u, "phDnldNfc_SpmiClientResetDelayCb: SPMI Reset Client Status =");
          sub_297E50EBC(1, v45 + 9792, 4u, 4u, "phDnldNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
          sub_297E4E0B0(1, v45 + 9792, 4u, 2u, "phDnldNfc_SpmiClientResetDelayCb: SPMI RESET got NACKED for 3times");
          v22 = *(a2 + 8492);
          v23 = *(a2 + 72);
          v24 = *(v45 + 3216);
          if (phOsalNfc_Timer_Start())
          {
            v14 = "phDnldNfc_SpmiClientResetDelayCb: Client reset Nack Timer Start failed";
            v15 = v45 + 9792;
            goto LABEL_15;
          }

          sub_297E4E0B0(1, v45 + 9792, 4u, 4u, "phDnldNfc_SpmiClientResetDelayCb: Client reset Nack Timer Started");
          if (*(v44 + 200))
          {
            sub_297E54734(1, v45 + 9792, 4u, 4u, "phDnldNfc_SpmiClientResetDelayCb : DnldGenNtfCb");
            (*(v44 + 200))(*(v45 + 3000), *(v44 + 208), 304, 0);
            return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
          }

          v38 = *(a2 + 8492);
          v39 = *(a2 + 72);
          phOsalNfc_Timer_Stop();
          v13 = v45;
          v14 = "phDnldNfc_SpmiClientResetDelayCb: Download mode Generic Notification not registered";
LABEL_14:
          v15 = v13 + 9792;
LABEL_15:
          sub_297E4E0B0(1, v15, 4u, 1u, v14);
          goto LABEL_16;
        }
      }

      v25 = v19;
      sub_297E96914(1, v45 + 9792, 4u, 3u, "phDnldNfc_SpmiClientResetDelayCb: SPMI Reset Client Status =");
      if (v25 == 255)
      {
LABEL_16:
        v16 = *(v45 + 3216);
        if (v16 == sub_297E89A5C || v16 == sub_297E89C8C || v16 == sub_297E89EBC)
        {
          sub_297E85368(v45, 255, 0);
          return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
        }

        if (v16 == sub_297E89B74)
        {
          sub_297E7AD14(v45, 255);
          return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
        }

        if (v16 == sub_297E89DA4)
        {
          phLibNfc_GetMemoryDumpSeqComplete(v45, 255);
          return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
        }

        if (v16 == phDnldNfc_eSEPwrCfgVenResetTimeoutCb)
        {
          sub_297E87C68(v45, 0xFFu, 0);
          return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
        }

        if (v16 == phDnldNfc_eSESmbCfgVenResetTimeoutCb)
        {
          phDnldNfc_DnldEseSmbCfgCb(v45, 255, 0);
          return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
        }

        v6 = "phDnldNfc_SpmiClientResetDelayCb:Invalid callback";
        v8 = v45 + 9792;
        v7 = 1;
        goto LABEL_25;
      }

      if (v25)
      {
        return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
      }

      v26 = *(v45 + 9792);
      phOsalNfc_Delay();
      v27 = *(a2 + 48);
      phTmlNfc_IoCtl();
      v28 = v45;
      v29 = *(v45 + 3216);
      if (v29 == sub_297E89A5C)
      {
        *(v45 + 2960) = off_2A1A92B40;
        v28[2952] = 0;
        v28[2954] = 0;
        v31 = off_2A1A92B40[0];
        if (off_2A1A92B40[0])
        {
          v31 = 0;
          v32 = off_2A1A92B50;
          do
          {
            ++v31;
            v33 = *v32;
            v32 += 2;
          }

          while (v33);
        }
      }

      else if (v29 == sub_297E89B74)
      {
        *(v45 + 2960) = gphLibNfc_GetFwVersionSequence;
        v28[2952] = 0;
        v28[2954] = 0;
        v31 = gphLibNfc_GetFwVersionSequence[0];
        if (gphLibNfc_GetFwVersionSequence[0])
        {
          v31 = 0;
          v34 = &qword_2A1A908F8;
          do
          {
            ++v31;
            v35 = *v34;
            v34 += 2;
          }

          while (v35);
        }
      }

      else if (v29 == sub_297E89C8C)
      {
        *(v45 + 2960) = &qword_2A1A92C90;
        v28[2952] = 0;
        v28[2954] = 0;
        v31 = qword_2A1A92C90;
        if (qword_2A1A92C90)
        {
          v31 = 0;
          v36 = off_2A1A92CA0;
          do
          {
            ++v31;
            v37 = *v36;
            v36 += 2;
          }

          while (v37);
        }
      }

      else if (v29 == sub_297E89DA4)
      {
        *(v45 + 2960) = gphLibNfc_GetMemDumpSequence;
        v28[2952] = 0;
        v28[2954] = 0;
        v31 = gphLibNfc_GetMemDumpSequence[0];
        if (gphLibNfc_GetMemDumpSequence[0])
        {
          v31 = 0;
          v40 = off_2A1A908C8;
          do
          {
            ++v31;
            v41 = *v40;
            v40 += 2;
          }

          while (v41);
        }
      }

      else
      {
        if (v29 != sub_297E89EBC)
        {
          if (v29 == phDnldNfc_eSEPwrCfgVenResetTimeoutCb)
          {
            v30 = phLibNfc_DnldEsePwrCfgSeq(v45, v44);
          }

          else
          {
            if (v29 != phDnldNfc_eSESmbCfgVenResetTimeoutCb)
            {
LABEL_70:
              v14 = "phLibNfc_SpmiClientResetDelayCb:Dnld mode sequence failed";
              v15 = (v28 + 9792);
              goto LABEL_15;
            }

            v30 = phLibNfc_DnldEseSmbCfgSeq(v45, v44);
          }

LABEL_68:
          if (v30 == 13)
          {
            return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
          }

          v28 = v45;
          goto LABEL_70;
        }

        *(v45 + 2960) = &qword_2A1A92CE0;
        v28[2952] = 0;
        v28[2954] = 0;
        v31 = qword_2A1A92CE0;
        if (qword_2A1A92CE0)
        {
          v31 = 0;
          v42 = off_2A1A92CF0;
          do
          {
            ++v31;
            v43 = *v42;
            v42 += 2;
          }

          while (v43);
        }
      }

      v28[2953] = v31;
      v30 = sub_297E5588C(v28, 0, 0);
      goto LABEL_68;
    }
  }

  v6 = "phDnldNfc_SpmiClientResetDelayCb:Invalid or NULL download core Context";
  v7 = 3;
  v8 = a2;
  v9 = 6;
LABEL_7:
  sub_297E4E0B0(v7, v8, v9, 1u, v6);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_SpmiClientResetDelayCb");
}

uint64_t sub_297E89A5C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_FwDnldVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_FwDnldVenResetTimoutCb:Invalid or NULL download core context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_FwDnldVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_FwDnldVenResetTimoutCb:Invalid LIBNFC Context";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  sub_297E8A420(v11, 307);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_FwDnldVenResetTimeoutCb");
}

uint64_t sub_297E89B74(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_FwVerVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_FwVerVenResetTimoutCb:Invalid or NULL download core context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_FwVerVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_FwVerVenResetTimoutCb:NULL pLibCtx";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  sub_297E8A594(v11, 307);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_FwVerVenResetTimeoutCb");
}

uint64_t sub_297E89C8C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_DieIDVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_DieIDVenResetTimeoutCb:Invalid or NULL download core context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_DieIDVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_DieIDVenResetTimeoutCb:Invalid LIBNFC Context";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  sub_297E8A708(v11, 307);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_DieIDVenResetTimeoutCb");
}

uint64_t sub_297E89DA4(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_MemDmpVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_MemDmpVenResetTimeoutCb:Invalid or NULL download core context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_MemDmpVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_MemDmpVenResetTimeoutCb:Invalid LIBNFC Context";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  sub_297E8A87C(v11, 307);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_MemDmpVenResetTimeoutCb");
}

uint64_t sub_297E89EBC(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_ChkIntVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_ChkIntVenResetTimeoutCb:Invalid or NULL download core context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_ChkIntVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_ChkIntVenResetTimeoutCb:Invalid LIBNFC Context";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  sub_297E8A9F4(v11, 307);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_ChkIntVenResetTimeoutCb");
}

uint64_t phDnldNfc_eSEPwrCfgVenResetTimeoutCb(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_eSEPwrCfgVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_eSEPwrCfgVenResetTimeoutCb:Invalid or NULL download core context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_eSEPwrCfgVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_eSEPwrCfgVenResetTimeoutCb:Invalid LIBNFC Context";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  phDnldNfc_eSEPwrCfgAfterVenReset(v11, 0x133u);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_eSEPwrCfgVenResetTimeoutCb");
}

uint64_t phLibNfc_DnldEsePwrCfgSeq(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DnldEsePwrCfgSeq");
  v4 = 255;
  if (a1 && a2)
  {
    if (*(a1 + 6078) != 1)
    {
      v5 = *(a2 + 116);
      if ((v5 - 208) >= 4)
      {
        if (!*(a2 + 116))
        {
          if (*a2)
          {
            v6 = sub_297E8B278(a1);
          }

          else
          {
            v6 = sub_297E87718(a1, phDnldNfc_DnldEsePwrCfgCmd);
          }

          goto LABEL_6;
        }

        if (v5 != 96)
        {
          v4 = 51;
          goto LABEL_7;
        }
      }
    }

    v6 = phDnldNfc_DnldEsePwrCfgCmd(a1, 0, 0);
LABEL_6:
    v4 = v6;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DnldEsePwrCfgSeq");
  return v4;
}

uint64_t phDnldNfc_eSESmbCfgVenResetTimeoutCb(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_eSESmbCfgVenResetTimeoutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 12);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phDnldNfc_eSESmbCfgVenResetTimeoutCb:Invalid or NULL Context";
    v7 = 3;
    v8 = a2;
    v9 = 6;
LABEL_7:
    sub_297E4E0B0(v7, v8, v9, 1u, v6);
    return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_eSESmbCfgVenResetTimeoutCb");
  }

  sub_297E4F0E8(*(a2 + 48), &v14);
  v11 = v14;
  if (!v14)
  {
    v6 = "phDnldNfc_eSESmbCfgVenResetTimeoutCb:Invalid LIBNFC Context";
    v8 = a2 + 8492;
    v7 = 1;
    v9 = 4;
    goto LABEL_7;
  }

  v12 = *(a2 + 72);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 8492);
    phOsalNfc_Timer_Stop();
    v11 = v14;
  }

  *(v11 + 3216) = 0;
  sub_297E4E0B0(1, a2 + 8492, 4u, 2u, "phDnldNfc_eSESmbCfgVenResetTimeoutCb:Timed out, Ven Reset NOT done by host");
  phDnldNfc_eSESmbCfgAfterVenReset(v14, 307);
  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_eSESmbCfgVenResetTimeoutCb");
}

uint64_t phLibNfc_DnldEseSmbCfgSeq(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DnldEseSmbCfgSeq");
  v4 = 255;
  if (a1 && a2)
  {
    if (*(a1 + 6081) != 1)
    {
      v5 = *(a2 + 116);
      if ((v5 - 209) >= 3)
      {
        if (!*(a2 + 116))
        {
          if (*a2)
          {
            v6 = sub_297E8B278(a1);
          }

          else
          {
            v6 = sub_297E87718(a1, phDnldNfc_DnldEseSmbCfgCmd);
          }

          goto LABEL_8;
        }

        if (v5 != 96)
        {
          v4 = 51;
          goto LABEL_9;
        }
      }
    }

    v6 = phDnldNfc_DnldEseSmbCfgCmd(a1, 0, 0);
LABEL_8:
    v4 = v6;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DnldEseSmbCfgSeq");
  return v4;
}

uint64_t sub_297E8A420(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_FwDnldAfterVenReset");
  if (v3)
  {
    sub_297E67F6C(*(v3 + 3000), &v13);
    if (v13)
    {
      if (*(v13 + 48))
      {
        if (a2)
        {
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_FwDnldAfterVenReset:Invoked with failure status");
          v4 = v3;
          v5 = a2;
        }

        else
        {
          *(v3 + 2960) = off_2A1A92B40;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v7 = off_2A1A92B40[0];
          if (off_2A1A92B40[0])
          {
            v7 = 0;
            v8 = off_2A1A92B50;
            do
            {
              ++v7;
              v9 = *v8;
              v8 += 2;
            }

            while (v9);
          }

          *(v3 + 2953) = v7;
          v10 = sub_297E5588C(v3, 0, 0);
          if (v10 == 13)
          {
            goto LABEL_13;
          }

          v11 = v10;
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_FwDnldAfterVenReset:Failed to invoke Fw Dnld Sequence");
          v4 = v3;
          v5 = v11;
        }

        sub_297E85368(v4, v5, 0);
        v3 = 0;
LABEL_13:
        v6 = 0;
        goto LABEL_14;
      }
    }
  }

  sub_297E4E0B0(2, v3, 4u, 1u, "phDnldNfc_FwDnldAfterVenReset:Invalid Context");
  v6 = 255;
LABEL_14:
  sub_297E4DFAC(2, v3, 4u, 5u, "phDnldNfc_FwDnldAfterVenReset");
  return v6;
}

uint64_t sub_297E8A594(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_FwVerAfterVenReset");
  if (v3)
  {
    sub_297E67F6C(*(v3 + 3000), &v13);
    if (v13)
    {
      if (*(v13 + 48))
      {
        if (a2)
        {
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_FwVerAfterVenReset:Invoked with failure status");
          v4 = v3;
          v5 = a2;
        }

        else
        {
          *(v3 + 2960) = gphLibNfc_GetFwVersionSequence;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v7 = gphLibNfc_GetFwVersionSequence[0];
          if (gphLibNfc_GetFwVersionSequence[0])
          {
            v7 = 0;
            v8 = &qword_2A1A908F8;
            do
            {
              ++v7;
              v9 = *v8;
              v8 += 2;
            }

            while (v9);
          }

          *(v3 + 2953) = v7;
          v10 = sub_297E5588C(v3, 0, 0);
          if (v10 == 13)
          {
            goto LABEL_13;
          }

          v11 = v10;
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_FwVerAfterVenReset:Failed to start Get Fw Version Sequence");
          v4 = v3;
          v5 = v11;
        }

        sub_297E7AD14(v4, v5);
        v3 = 0;
LABEL_13:
        v6 = 0;
        goto LABEL_14;
      }
    }
  }

  sub_297E4E0B0(2, v3, 4u, 1u, "phDnldNfc_FwVerAfterVenReset:Invalid Context");
  v6 = 255;
LABEL_14:
  sub_297E4DFAC(2, v3, 4u, 5u, "phDnldNfc_FwVerAfterVenReset");
  return v6;
}

uint64_t sub_297E8A708(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_DieIDAfterVenReset");
  if (v3)
  {
    sub_297E67F6C(*(v3 + 3000), &v13);
    if (v13)
    {
      if (*(v13 + 48))
      {
        if (a2)
        {
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_DieIDAfterVenReset:Invoked with failure status");
          v4 = v3;
          v5 = a2;
        }

        else
        {
          *(v3 + 2960) = &qword_2A1A92C90;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v7 = qword_2A1A92C90;
          if (qword_2A1A92C90)
          {
            v7 = 0;
            v8 = off_2A1A92CA0;
            do
            {
              ++v7;
              v9 = *v8;
              v8 += 2;
            }

            while (v9);
          }

          *(v3 + 2953) = v7;
          v10 = sub_297E5588C(v3, 0, 0);
          if (v10 == 13)
          {
            goto LABEL_13;
          }

          v11 = v10;
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_DieIDAfterVenReset:Failed to invoke Get Die ID Sequence");
          v4 = v3;
          v5 = v11;
        }

        sub_297E85368(v4, v5, 0);
        v3 = 0;
LABEL_13:
        v6 = 0;
        goto LABEL_14;
      }
    }
  }

  sub_297E4E0B0(2, v3, 4u, 1u, "phDnldNfc_DieIDAfterVenReset:Invalid Context");
  v6 = 255;
LABEL_14:
  sub_297E4DFAC(2, v3, 4u, 5u, "phDnldNfc_DieIDAfterVenReset");
  return v6;
}

uint64_t sub_297E8A87C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_MemDmpAfterVenReset");
  if (v3 && (sub_297E67F6C(*(v3 + 3000), &v11), v11) && *(v11 + 48))
  {
    if (a2)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_MemDmpAfterVenReset:Invoked with failure status");
      phLibNfc_GetMemoryDumpSeqComplete(v3, a2);
    }

    else
    {
      *(v3 + 2960) = gphLibNfc_GetMemDumpSequence;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v5 = gphLibNfc_GetMemDumpSequence[0];
      if (gphLibNfc_GetMemDumpSequence[0])
      {
        v5 = 0;
        v6 = off_2A1A908C8;
        do
        {
          ++v5;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v3 + 2953) = v5;
      v8 = sub_297E5588C(v3, 0, 0);
      if (v8 != 13)
      {
        v9 = v8;
        sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_MemDmpAfterVenReset:Failed to invoke Get Memory Dump Sequence");
        phLibNfc_GetMemoryDumpSeqComplete(v3, v9);
        v3 = 0;
      }
    }

    v4 = 0;
  }

  else
  {
    sub_297E4E0B0(2, v3, 4u, 1u, "phDnldNfc_MemDmpAfterVenReset:Invalid Context");
    v4 = 255;
  }

  sub_297E4DFAC(2, v3, 4u, 5u, "phDnldNfc_MemDmpAfterVenReset");
  return v4;
}

uint64_t sub_297E8A9F4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_ChkIntAfterVenReset");
  if (v3)
  {
    sub_297E67F6C(*(v3 + 3000), &v13);
    if (v13)
    {
      if (*(v13 + 48))
      {
        if (a2)
        {
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_ChkIntAfterVenReset:Invoked with failure status");
          v4 = v3;
          v5 = a2;
        }

        else
        {
          *(v3 + 2960) = &qword_2A1A92CE0;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v7 = qword_2A1A92CE0;
          if (qword_2A1A92CE0)
          {
            v7 = 0;
            v8 = off_2A1A92CF0;
            do
            {
              ++v7;
              v9 = *v8;
              v8 += 2;
            }

            while (v9);
          }

          *(v3 + 2953) = v7;
          v10 = sub_297E5588C(v3, 0, 0);
          if (v10 == 13)
          {
            goto LABEL_13;
          }

          v11 = v10;
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phDnldNfc_ChkIntAfterVenReset:Failed to invoke check integrity Sequence");
          v4 = v3;
          v5 = v11;
        }

        sub_297E85368(v4, v5, 0);
        v3 = 0;
LABEL_13:
        v6 = 0;
        goto LABEL_14;
      }
    }
  }

  sub_297E4E0B0(2, v3, 4u, 1u, "phDnldNfc_ChkIntAfterVenReset:Invalid Context");
  v6 = 255;
LABEL_14:
  sub_297E4DFAC(2, v3, 4u, 5u, "phDnldNfc_ChkIntAfterVenReset");
  return v6;
}

uint64_t phDnldNfc_eSEPwrCfgAfterVenReset(uint64_t a1, unsigned int a2)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_eSEPwrCfgAfterVenReset");
  if (a1 && (sub_297E5D114(*(a1 + 3000), &v9), sub_297E67F6C(*(a1 + 3000), &v10), v10) && (*(v10 + 48) ? (v4 = v9 == 0) : (v4 = 1), !v4))
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_eSEPwrCfgAfterVenReset:Invoked with failure status");
      sub_297E87C68(a1, a2, 0);
    }

    else
    {
      v7 = phLibNfc_DnldEsePwrCfgSeq(a1, v9);
      if (v7 != 13)
      {
        v8 = v7;
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phDnldNfc_eSEPwrCfgAfterVenReset:Failed to invoke Dnld Ese power Config Sequence");
        sub_297E87E4C(a1, v8, 0);
      }
    }

    v5 = 0;
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phDnldNfc_eSEPwrCfgAfterVenReset:Invalid Context");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_eSEPwrCfgAfterVenReset");
  return v5;
}

uint64_t phDnldNfc_eSESmbCfgAfterVenReset(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phDnldNfc_eSESmbCfgAfterVenReset");
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v9);
    sub_297E67F6C(*(a1 + 3000), &v10);
    if (v10)
    {
      if (*(v10 + 48) && v9 != 0)
      {
        if (a2)
        {
          v7 = "phDnldNfc_eSESmbCfgAfterVenReset:Invoked with failure status";
        }

        else
        {
          v8 = phLibNfc_DnldEseSmbCfgSeq(a1, v9);
          if (v8 == 13)
          {
LABEL_15:
            v5 = 0;
            goto LABEL_9;
          }

          a2 = v8;
          v7 = "phDnldNfc_eSESmbCfgAfterVenReset:Failed to invoke Dnld Ese Smb Config Sequence";
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v7);
        phDnldNfc_DnldEseSmbCfgCb(a1, a2, 0);
        goto LABEL_15;
      }
    }
  }

  sub_297E4E0B0(2, a1, 4u, 1u, "phDnldNfc_eSESmbCfgAfterVenReset:Invalid Context");
  v5 = 255;
LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phDnldNfc_eSESmbCfgAfterVenReset");
  return v5;
}

uint64_t phLibNfc_EsePwrCfgDelayCb(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_EsePwrCfgDelayCb");
  if (!a1 || a1 == 0xFFFFFFFFFFFFLL || !a2)
  {
    goto LABEL_10;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 == a2 && *(a2 + 3256) == a1)
  {
    sub_297E5A304(*(a2 + 9792), a1);
    v7 = *(a2 + 9792);
    phOsalNfc_Timer_Delete();
    *(a2 + 3256) = 0xFFFFFFFFFFFFLL;
    phDnldNfc_DnldEsePwrCfgCmd(a2, 0, 0);
  }

  else
  {
LABEL_10:
    sub_297E4E0B0(2, a2, 4u, 1u, "phLibNfc_EsePwrCfgDelayCb:Invalid Timer ID!!");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_EsePwrCfgDelayCb");
}

uint64_t phLibNfc_EseSmbCfgDelayCb(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_EseSmbCfgDelayCb");
  if (!a1 || a1 == 0xFFFFFFFFFFFFLL || !a2)
  {
    goto LABEL_10;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 == a2 && *(a2 + 3256) == a1)
  {
    sub_297E5A304(*(a2 + 9792), a1);
    v7 = *(a2 + 9792);
    phOsalNfc_Timer_Delete();
    *(a2 + 3256) = 0xFFFFFFFFFFFFLL;
    phDnldNfc_DnldEseSmbCfgCmd(a2, 0, 0);
  }

  else
  {
LABEL_10:
    sub_297E4E0B0(2, a2, 4u, 1u, "phLibNfc_EseSmbCfgDelayCb:Invalid Timer ID!!");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_EseSmbCfgDelayCb");
}

uint64_t sub_297E8AFEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_IoctlDelayCb");
  if (!a1 || a1 == 0xFFFFFFFFFFFFLL || !a2)
  {
    goto LABEL_10;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 == a2 && *(a2 + 3248) == a1)
  {
    sub_297E5A304(*(a2 + 9792), a1);
    v7 = *(a2 + 9792);
    phOsalNfc_Timer_Delete();
    *(a2 + 3248) = 0xFFFFFFFFFFFFLL;
    sub_297E5588C(a2, 0, 0);
  }

  else
  {
LABEL_10:
    sub_297E4E0B0(2, a2, 4u, 1u, "phLibNfc_IoctlDelayCb:Invalid Timer ID!!");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_IoctlDelayCb");
}

uint64_t sub_297E8B0F8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FwVerDelayTimerStart");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (v4 != a1);
    if (v4 == a1)
    {
      v7 = *(a1 + 9792);
      v8 = phOsalNfc_Timer_Create();
      if (v8 == 0xFFFFFFFFFFFFLL || v8 == 0)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_FwVerDelayTimerStart : Dnld Ese Get Fw Version Timer Create failed!!");
        v5 = 12;
        goto LABEL_7;
      }

      v10 = v8;
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "Dnld Ese Get Fw Version Timer Created");
      *(a1 + 3248) = v10;
      v11 = *(a1 + 9792);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_FwVerDelayTimerStart: Dnld Ese Get Fw Ver Timer started");
        v5 = 13;
        goto LABEL_7;
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_FwVerDelayTimerStart: Dnld Ese Get Fw Version Timer failed to start");
      v13 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 3248) = 0;
    }
  }

  v5 = 255;
LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FwVerDelayTimerStart");
  return v5;
}

uint64_t sub_297E8B278(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_EseCfgDelayTimerStart");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (v4 != a1);
    if (v4 == a1)
    {
      v7 = *(a1 + 9792);
      v8 = phOsalNfc_Timer_Create();
      if (v8 == 0xFFFFFFFFFFFFLL || v8 == 0)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_EseCfgDelayTimerStart : Dnld Ese config Timer Create failed!!");
        v5 = 12;
        goto LABEL_7;
      }

      v10 = v8;
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "Dnld Ese Cfg Timer Created");
      *(a1 + 3256) = v10;
      v11 = *(a1 + 9792);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_EseCfgDelayTimerStart: Dnld Ese Cfg Timer started");
        v5 = 13;
        goto LABEL_7;
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_EseCfgDelayTimerStart: Dnld Ese config Timer failed to start");
      v13 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 3256) = 0;
    }
  }

  v5 = 255;
LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EseCfgDelayTimerStart");
  return v5;
}

uint64_t sub_297E8B3F8(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phLibNfc_SpmiClientResetTimerStart");
  if (a1)
  {
    v2 = *(a1 + 8492);
    v3 = *(a1 + 72);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a1 + 8492, 4u, 4u, "phLibNfc_SpmiClientResetTimerStart: Client reset Nack Timer Started");
      v8 = 13;
      goto LABEL_7;
    }

    v4 = "phLibNfc_SpmiClientResetTimerStart: Client reset Nack Timer Start failed";
    v5 = a1 + 8492;
    v6 = 1;
    v7 = 4;
  }

  else
  {
    v4 = "phLibNfc_SpmiClientResetTimerStart: Invalid Download core context";
    v6 = 3;
    v5 = 0;
    v7 = 6;
  }

  sub_297E4E0B0(v6, v5, v7, 1u, v4);
  v8 = 255;
LABEL_7:
  sub_297E4DFAC(3, a1, 6u, 5u, "phLibNfc_SpmiClientResetTimerStart");
  return v8;
}

uint64_t sub_297E8B4E0(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateLogConnInfo");
  v6 = *a2;
  if (*a2 > 3)
  {
    goto LABEL_14;
  }

  if (*(a2 + 4) == 1)
  {
    if (*(a2 + 5) <= 1u)
    {
      if (v6 != 1 && *(a2 + 6) != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if (*(a2 + 4))
  {
    goto LABEL_14;
  }

  if (v6 != 1)
  {
LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

LABEL_10:
  v7 = *(a1 + 3817);
  v8 = 1;
  sub_297E50DB0(1, a1 + 6524, 3u, 4u, " Currently number of Open Connections are..");
  if (v7 <= *(a1 + 13))
  {
    v9 = (a1 + 3880);
    v10 = 1;
    while (1)
    {
      v11 = *v9;
      v9 += 32;
      if (!v11)
      {
        break;
      }

      if (++v10 == 4)
      {
        goto LABEL_14;
      }
    }

    v8 = 0;
    *a3 = v10;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLogConnInfo");
  return v8;
}

uint64_t sub_297E8B5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnCreate");
  if (!a1 || !a2 || !a3)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Context Param..");
    goto LABEL_12;
  }

  if (sub_297E8B4E0(a1, a2, &v20))
  {
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  if (*a2 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 6;
  }

  v9 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    *Memory_Typed = *a2;
    if (*a2 == 1)
    {
      v11 = 0;
      v12 = 1;
    }

    else
    {
      Memory_Typed[1] = *(a2 + 4);
      Memory_Typed[2] = *(a2 + 5);
      Memory_Typed[3] = *(a2 + 6);
      Memory_Typed[4] = *(a2 + 7);
      v11 = *(a2 + 8);
      v12 = 5;
    }

    Memory_Typed[v12] = v11;
    *(a1 + 3960) = a3;
    *(a1 + 3952) = a4;
    *(a1 + 896) = Memory_Typed;
    *(a1 + 904) = v8;
    *(a1 + 3776) = off_2A1A92D20;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92D20);
    v15 = sub_297E8B810(a1, 0, 0);
    if (v15 == 13)
    {
      v16 = *a2;
      if (*a2 == 1)
      {
        v17 = -2;
      }

      else
      {
        v17 = *(a2 + 7);
      }

      v18 = v20;
      v19 = a1 + 32 * v20;
      *(v19 + 3824) = v17;
      *(v19 + 3828) = v16;
      *(v19 + 3848) = 0;
      *(a1 + 3818) = v18;
      v13 = 13;
    }

    else
    {
      v13 = v15;
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Logical connection Sequence failed!");
      sub_297F0522C(a1);
    }
  }

  else
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Failed to open logical connection..");
    v13 = 255;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnCreate");
  return v13;
}

uint64_t sub_297E8B810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnSequence");
  return v6;
}

uint64_t sub_297E8B8A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnClose");
  if (a1 && a3)
  {
    if (sub_297ED7700(a1, a2, &v10))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_LogConnClose:Notification Connection Close Request successful..");
      v8 = 0;
    }

    else
    {
      *(a1 + 3818) = v10;
      *(a1 + 3776) = off_2A1A92D40;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92D40);
      v8 = sub_297E8B810(a1, 0, 0);
      if (v8 == 13)
      {
        *(a1 + 3960) = a3;
        *(a1 + 3952) = a4;
      }
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Context Param..");
    v8 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnClose");
  return v8;
}

uint64_t sub_297E8B9D0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnUpdateDestInfo");
  if (!a1 || !a4)
  {
    v10 = " Invalid Params supplied!!";
    v8 = 1;
    v11 = 2;
    v12 = a1;
    goto LABEL_17;
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    if (a2 == 2)
    {
      if (sub_297ED7658(a1))
      {
        v13 = *(a1 + 4552);
        if (v13)
        {
          v8 = 0;
          *(a1 + 3824) = v13[8];
          *(a1 + 3828) = 2;
          *(a1 + 3834) = v13[24];
          *(a1 + 3833) = v13[25];
          *(a1 + 3848) = 1;
          *(a1 + 3840) = v13;
          goto LABEL_18;
        }

        v10 = " Cannot Extract Rf Device Handle!!";
      }

      else
      {
        v10 = "Cannot extract LogConnMgmtInt Context!!";
      }
    }

    else
    {
      v10 = " Unsupported Destination Type!!";
    }

    v8 = 1;
    v12 = a1 + 6524;
    v11 = 1;
LABEL_17:
    sub_297E4E0B0(v11, v12, 3u, 1u, v10);
    goto LABEL_18;
  }

  v15 = 0;
  v8 = sub_297ED7700(a1, a3, &v15);
  if (v8 != 255)
  {
    v9 = a1 + 32 * v15;
    if (*(v9 + 3832) == 255)
    {
      v8 = 255;
    }

    else
    {
      *(v9 + 3840) = a4;
    }
  }

LABEL_18:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnUpdateDestInfo");
  return v8;
}

uint64_t sub_297E8BB50(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnGetConnId");
  *a3 = -1;
  if (!a1)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 4);
    if (v6)
    {
      break;
    }

    v6 = 1;
    v7 = 1;
  }

  while (v8 != a1);
  if (a2 && v8 == a1)
  {
    v9 = (a1 + 3848);
    v10 = 4;
    while (*(v9 - 1) != a2)
    {
      v9 += 32;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    if (*v9 == 1)
    {
      *a3 = *(v9 - 16);
      v12 = " ConnId Found!!";
    }

    else
    {
      v12 = " Interface not active for this connection";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v12);
LABEL_16:
    v11 = 0;
  }

  else
  {
LABEL_11:
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Params..");
    v11 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnGetConnId");
  return v11;
}

uint64_t sub_297E8BC94(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateClosedLogConnInfo");
  if (a1 && a2)
  {
    v4 = (a1 + 3848);
    v5 = 4;
    while (*(v4 - 1) != a2)
    {
      v4 += 32;
      if (!--v5)
      {
        v6 = 255;
        goto LABEL_10;
      }
    }

    v6 = 0;
    if (*v4 == 1)
    {
      *v4 = 0;
    }
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "Invalid input Params");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateClosedLogConnInfo");
  return v6;
}

uint64_t sub_297E8BD64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnGetCredits");
  if (a1 && a2)
  {
    v6 = a1 + 3833;
    v7 = 4;
    while (*(v6 + 7) != a2)
    {
      v6 += 32;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    if (*(v6 + 15) == 1)
    {
      *a3 = *v6;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_LogConnGetCredits:Connection Credit Info Found!!");
      v8 = 0;
      goto LABEL_12;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, " Interface not active for this connection");
LABEL_11:
    v8 = 255;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Params..");
    v8 = 1;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnGetCredits");
  return v8;
}

uint64_t sub_297E8BE80(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnGetMaxPld");
  if (a1 && a2)
  {
    v6 = a1 + 3834;
    v7 = 4;
    while (*(v6 + 6) != a2)
    {
      v6 += 32;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    if (*(v6 + 14) == 1)
    {
      *a3 = *v6;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_LogConnGetMaxPld:Connection Maximum Data payload size Found!!");
      v8 = 0;
      goto LABEL_12;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Interface not active for this connection");
LABEL_11:
    v8 = 255;
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, " Invalid Params..");
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnGetMaxPld");
  return v8;
}

uint64_t sub_297E8BF9C(uint64_t a1, int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConnCredits");
  if (a1 && a3)
  {
    v6 = (a1 + 3832);
    v7 = 4;
    while (*v6 != a2 || !*(v6 + 1))
    {
      v6 += 32;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    if (a2 && v6[16] != 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Interface not active for this connection");
LABEL_12:
      v8 = 255;
      goto LABEL_13;
    }

    *a3 = v6[1];
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GetConnCredits:Connection Credit Info Found!!");
    v8 = 0;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Params..");
    v8 = 1;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConnCredits");
  return v8;
}

uint64_t sub_297E8C0C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RegForConnCredits");
  v8 = sub_297ED7658(a1);
  if (!a3 || !a1 || (v9 = v8) == 0)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Caller Layer Param(s) received ..");
    v11 = 1;
    goto LABEL_36;
  }

  v10 = 0;
  while (*(a1 + v10 + 3832) != a2)
  {
    v10 += 32;
    if (v10 == 128)
    {
      goto LABEL_12;
    }
  }

  if (a2 && *(a1 + v10 + 3848) != 1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, " Interface not active for this connection");
LABEL_35:
    v11 = 255;
    goto LABEL_36;
  }

LABEL_12:
  *(v8 + 9) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v12 = *(v8 + 56);
  if (v12)
  {
    v13 = v12 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Stopping Credit await timer..");
    v14 = *(a1 + 3396);
    v15 = *(v9 + 56);
    phOsalNfc_Timer_Stop();
    v16 = *(a1 + 3396);
    v17 = *(v9 + 56);
    phOsalNfc_Timer_Delete();
    *(a1 + 6513) = 0;
    *(v9 + 64) = 0;
    *(v9 + 56) = 0;
    v18 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 6524))
    {
      v18 = &gphNfc_DebugInfo_Prim;
    }

    v18[1] &= ~8u;
  }

  if (*(a1 + 3969) == 1)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v19 = *(a1 + 3396);
  v20 = phOsalNfc_Timer_Create();
  if (v20 == 0xFFFFFFFFFFFFLL || (v21 = v20) == 0)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Credit wait Timer Create failed!!");
    v11 = 12;
    goto LABEL_36;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Credit wait Timer Created Successfully");
  *(v9 + 56) = v21;
  *(v9 + 64) = 0;
  if (*(a1 + 1928) == 1)
  {
    v22 = *(a1 + 3396);
    v23 = *(a1 + 1920);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    *(a1 + 1928) = 0;
    v24 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 3396))
    {
      v24 = &gphNfc_DebugInfo_Prim;
    }

    v24[1] &= ~0x10u;
  }

  if (*(a1 + 5062) != 1 && *(a1 + 5246) != 1 && *(a1 + 5614) != 1 && *(a1 + 4566) < 0xFBu)
  {
    v30 = *(a1 + 4552);
    if (v30)
    {
      v31 = *(v30 + 4);
      if ((v31 - 5) >= 3)
      {
        if (v31 == 16)
        {
          v33 = *(v30 + 109);
          goto LABEL_31;
        }

        if (v31 != 3)
        {
          goto LABEL_31;
        }
      }

      v32 = *(v30 + 108);
    }
  }

LABEL_31:
  sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Credit timeout set to");
  sub_297E5A304(*(a1 + 3396), *(v9 + 56));
  *(a1 + 6513) = 0;
  v25 = &gphNfc_DebugInfo_Sec;
  if (!*(a1 + 3396))
  {
    v25 = &gphNfc_DebugInfo_Prim;
  }

  v25[1] &= ~8u;
  v26 = *(v9 + 56);
  if (phOsalNfc_Timer_Start())
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed to start credit ntf wait timer!");
    v27 = *(a1 + 3396);
    v28 = *(v9 + 56);
    phOsalNfc_Timer_Delete();
    *(v9 + 56) = 0;
    goto LABEL_35;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Credit wait timer started..");
  v11 = 0;
  *(v9 + 64) = 1;
  *(v9 + 49) = 1;
LABEL_36:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RegForConnCredits");
  return v11;
}

uint64_t sub_297E8C4D4(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_WaitCreditTimerCb");
  v4 = sub_297ED7658(a2);
  if (!a2)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 4);
    if (v6)
    {
      break;
    }

    v6 = 1;
    v7 = 1;
  }

  while (v8 != a2);
  if (v8 == a2)
  {
    if (!*(a2 + 6513))
    {
      v10 = *(a2 + 6524);
      v11 = *(v5 + 56);
      phOsalNfc_Timer_Stop();
      v12 = *(a2 + 6524);
      v13 = *(v5 + 56);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "Credit wait timer started with extended time..");
        *(a2 + 6513) = 1;
        return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_WaitCreditTimerCb");
      }

      sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "Failed to start credit ntf wait timer with extended time!");
    }

    *(a2 + 6513) = 0;
    if (*(v5 + 56) == a1)
    {
      *(v5 + 64) = 0;
      if (a1 && a1 != 0xFFFFFFFFFFFFLL)
      {
        v14 = *(a2 + 6524);
        phOsalNfc_Timer_Stop();
        v15 = *(a2 + 6524);
        v16 = *(v5 + 56);
        phOsalNfc_Timer_Delete();
        *(v5 + 56) = 0;
      }

      v17 = &gphNfc_DebugInfo_Sec;
      if (!*(a2 + 6524))
      {
        v17 = &gphNfc_DebugInfo_Prim;
      }

      v17[1] |= 8u;
    }

    if (*(v5 + 49) == 1)
    {
      *(v5 + 49) = 0;
    }

    v19 = *(v5 + 32);
    v18 = *(v5 + 40);
    *(v5 + 9) = -1;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    if (sub_297E8BF9C(a2, *(a2 + 6272), &v29) || !v29)
    {
      v23 = a2 + 936;
      sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "phNciNfc_WaitCreditTimerCb - NFCSTATUS_RF_TIMEOUT");
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *(&unk_2A18BDDC0 + 14 * v25 + 5);
        if (v24)
        {
          break;
        }

        v24 = 1;
        v25 = 1;
      }

      while (v26 != v23);
      if (v26 == v23 && *(a2 + 1928) == 1)
      {
        v27 = *(a2 + 3396);
        v28 = *(a2 + 1920);
        phOsalNfc_Timer_Stop();
        *(a2 + 6512) = 0;
        *(a2 + 1928) = 0;
      }

      sub_297E8CBD4(a2, 0);
      if (*(a2 + 6272) == 3)
      {
        *(a2 + 6660) = 36;
      }

      v21 = v18;
      v20 = 0;
      v22 = 9;
    }

    else
    {
      sub_297E50DB0(1, a2 + 6524, 3u, 4u, "phNciNfc_WaitCreditTimerCb - Credits-");
      v20 = v29;
      v21 = v18;
      v22 = 0;
    }

    v19(v21, v20, v22);
  }

  else
  {
LABEL_7:
    sub_297E4E0B0(2, a2, 3u, 1u, "phNciNfc_WaitCreditTimerCb: Invalid or NULL pNciCtxt or pConnMgmtCtxt");
  }

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_WaitCreditTimerCb");
}

uint64_t sub_297E8C7BC(uint64_t a1, int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConnMaxPldSz");
  if (!a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Params..");
    v8 = 1;
    goto LABEL_29;
  }

  v6 = (a1 + 3832);
  v7 = 4;
  while (*v6 != a2)
  {
    v6 += 32;
    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  if (!a2 || v6[16] == 1)
  {
    *a3 = v6[2];
    if (*v6 || *(a1 + 4777) || (v9 = sub_297EE7F18(*(a1 + 6528)), (v10 = *(a1 + 72)) == 0))
    {
LABEL_28:
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GetConnMaxPldSz:Connection Maximum Data payload size Found!!");
      v8 = 0;
      goto LABEL_29;
    }

    v11 = 0;
    v12 = a1 + 80;
    while (1)
    {
      v13 = *(v12 + 8 * v11);
      if (v9 == v13)
      {
        v14 = *(v13 + 4);
        if (v14 == 16)
        {
          v15 = *(v13 + 145);
          if (!v15)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v14 - 5) >= 3 && *(*v12 + 4) != 3)
          {
            goto LABEL_27;
          }

          v15 = *(v13 + 106);
          if (!v15)
          {
            goto LABEL_27;
          }
        }

        *a3 = v15;
        v10 = *(a1 + 72);
      }

LABEL_27:
      if (v10 <= ++v11)
      {
        goto LABEL_28;
      }
    }
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Interface not active for this connection");
LABEL_11:
  v8 = 255;
LABEL_29:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConnMaxPldSz");
  return v8;
}

uint64_t sub_297E8C964(uint64_t a1, int a2, char a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_IncrConnCredits");
  if (a1)
  {
    v6 = (a1 + 3832);
    v7 = 4;
    while (*v6 != a2)
    {
      v6 += 32;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    if (a2 && v6[16] != 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, " Interface not active for this connection");
LABEL_10:
      v8 = 255;
      goto LABEL_14;
    }

    v9 = v6[1] + a3;
    v6[1] = v9;
    if (v9 == 0xFF)
    {
      v6[1] = -2;
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_IncrConnCredits:Credit Limit exceeded for this Conn,Rounding to max value ..");
    }

    v8 = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Params..");
    v8 = 1;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_IncrConnCredits");
  return v8;
}

uint64_t sub_297E8CA98(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DecrConnCredit");
  if (a1)
  {
    v4 = (a1 + 3832);
    v5 = 4;
    while (*v4 != a2)
    {
      v4 += 32;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    if (!a2 || v4[16] == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_DecrConnCredit:Connection Credit Info Found!!");
      if (v4[1])
      {
        v6 = 0;
        --v4[1];
        goto LABEL_14;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "No Credits available for this connId!!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, " Interface not active for this connection");
    }

LABEL_13:
    v6 = 255;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Param..");
    v6 = 1;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DecrConnCredit");
  return v6;
}

uint64_t sub_297E8CBD4(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v9 = 8;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessSpmiRegInfo");
  if (a1)
  {
    sub_297E5F164(*(a1 + 6528), &v9);
    if (v9 == 6 && !sub_297EBE8B0(*(a1 + 6528)))
    {
      v4 = *(a1 + 6528);
      v5 = phTmlNfc_SpmiDrvErrorStatus();
      sub_297E5AA54(*(a1 + 6528), 20);
      if (v5)
      {
        v6 = a1;
        v7 = 0;
      }

      else
      {
        v7 = &v10;
        v6 = a1;
      }

      sub_297E71BA4(v6, v7, a2);
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessSpmiRegInfo");
}

uint64_t sub_297E8CCB4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ValidateDevHandle");
  if (!a1)
  {
    v6 = 255;
    goto LABEL_10;
  }

  v4 = sub_297E55558(*(a1 + 3088), *(a1 + 1512));
  v5 = (a1 + 1504);
  if (v4)
  {
    *v5 = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Target not connected");
    v6 = 148;
    goto LABEL_10;
  }

  v7 = *v5;
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ValidateDevHandle");
  return v6;
}

uint64_t sub_297E8CD74(uint64_t *a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessTmlError");
  if (a1)
  {
    if (a2 == 15)
    {
      v4 = a1[821];
      if (v4)
      {
        v5 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_ProcessTmlError :pGenericNtfCb[COMM ERR]");
        v4(a1[1223], v5, 15, 0);
      }
    }

    else if (a2 == 36)
    {
      sub_297F083E0(a1[386]);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessTmlError");
}

uint64_t sub_297E8CE44(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CreateLogConnCmd");
  if (a1)
  {
    v2 = sub_297F07864(*(a1 + 3088), sub_297E5588C, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CreateLogConnCmd");
  return v2;
}

uint64_t sub_297E8CEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CreateLogConnCb");
  if (a1 && !a2 && a3)
  {
    *(a1 + 9760) = 1;
    *(a1 + 9768) = a3;
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_CreateLogConnCb: Failed");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CreateLogConnCb");
  return a2;
}

uint64_t sub_297E8CF90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CloseLogConnCmd");
  if (a1)
  {
    v2 = sub_297F07C00(*(a1 + 3088), sub_297E5588C, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CloseLogConnCmd");
  return v2;
}

uint64_t sub_297E8D034(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_LogConnCloseCb");
  v4 = 255;
  if (a1 && !a2)
  {
    v4 = 0;
    *(a1 + 9760) = 0;
    *(a1 + 9768) = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LogConnCloseCb");
  return v4;
}

uint64_t sub_297E8D0B8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_VerifyRoutedProto");
  v4 = 0;
  if ((a2 - 1) >= 6 && ((a2 - 128) > 0x20 || ((1 << (a2 + 0x80)) & 0x100000407) == 0))
  {
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_VerifyRoutedProto");
  return v4;
}

BOOL sub_297E8D164(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_VerifyRoutedTech");
  v4 = a2 >= 4 && a2 - 128 >= 3;
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_VerifyRoutedTech");
  return v4;
}

uint64_t sub_297E8D1DC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_VerifyRoutedNFCEE");
  v4 = 0;
  if (a2 > 128)
  {
    if (a2 != 129 && a2 != 192)
    {
      goto LABEL_7;
    }
  }

  else if (a2 && a2 != 2)
  {
LABEL_7:
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_VerifyRoutedNFCEE");
  return v4;
}

uint64_t sub_297E8D274(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_VerifyRxdRoutingTable");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 8);
      v7 = *(v6 + v4);
      if (v7 == 2)
      {
        if (*(v6 + v4 + 28) - 17 < 0xFFFFFFF4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 == 1)
        {
          if (sub_297E8D0B8(a1, *(v6 + v4 + 12)))
          {
            goto LABEL_14;
          }
        }

        else if (v7 || sub_297E8D164(a1, *(v6 + v4 + 12)))
        {
LABEL_14:
          a2 = 1;
          break;
        }

        if (sub_297E8D1DC(a1, *(*(a2 + 8) + v4 + 4)))
        {
          goto LABEL_14;
        }
      }

      ++v5;
      v4 += 32;
      if (v5 >= *a2)
      {
        a2 = 0;
        break;
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_VerifyRxdRoutingTable");
  return a2;
}

BOOL sub_297E8D380(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Validate_MfwRawCmd");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Validate_MfwRawCmd");
  return (a2 - 12) < 0xFFFFFFF5;
}

uint64_t sub_297E8D3F4(uint64_t a1, unsigned int *a2)
{
  v30 = a1;
  sub_297E4E1B4(0, &v30, 4u, 5u, "phLibNfc_PrintgDebugInfo");
  if (a2)
  {
    v3 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bHciRspTimer:");
    v4 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bSE2Status:");
    v5 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibSeqNxt:");
    v6 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibSeqId:");
    v7 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibTransFlag:");
    v8 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibCurrState:");
    v9 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibTarState:");
    v10 = *a2;
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciRxdNtf:");
    v11 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciSendCbStatus:");
    v12 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciUnknownPkt:");
    v13 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciReTransLimit:");
    v14 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciCreditTimer:");
    v15 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciRspTimer:");
    v16 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciCmd:");
    v17 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciSeqNxt:");
    v18 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciSeqId:");
    v19 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bUICCStatus:");
    v20 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "beSEStatus:");
    v21 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibRetryLimit:");
    v22 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bLibWDTimer:");
    v23 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bHciRetryLimit:");
    v24 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciPendRet:");
    v25 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciSynErrRxd:");
    v26 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bNciIntErrRxd:");
    v27 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "bHciRxdErr:");
    v28 = a2[1];
    sub_297E50DB0(0, &v30, 4u, 4u, "beSERemovedNtf:");
  }

  return sub_297E4DFAC(0, &v30, 4u, 5u, "phLibNfc_PrintgDebugInfo");
}

uint64_t sub_297E8D804(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrintLibNfcCritInfo");
  if (a1)
  {
    v2 = 0;
    v3 = 1;
    v4 = &qword_2A18BE7E0;
    while (1)
    {
      v5 = v3;
      v6 = &unk_2A18BDDC0 + 112 * v2;
      if (*v6 == *(a1 + 9784))
      {
        break;
      }

      v3 = 0;
      v2 = 1;
      if ((v5 & 1) == 0)
      {
        v7 = &dword_2A18BE7EC;
        v8 = &dword_2A18BE7E8;
        v9 = &qword_2A18BE7E0 + 4;
        goto LABEL_16;
      }
    }

    if (*(v6 + 2) == 1)
    {
      v4 = &qword_2A18BE770;
      v9 = &qword_2A18BE770 + 4;
    }

    else
    {
      v9 = &qword_2A18BE7E0 + 4;
    }

    if (*(v6 + 2) == 1)
    {
      v8 = &dword_2A18BE778;
    }

    else
    {
      v8 = &dword_2A18BE7E8;
    }

    if (*(v6 + 2) == 1)
    {
      v7 = &unk_2A18BE77C;
    }

    else
    {
      v7 = &dword_2A18BE7EC;
    }

LABEL_16:
    v10 = *v4;
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:CurrState=");
    v11 = *v9;
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:TrgtState=");
    v12 = *v8;
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:Flag=");
    v13 = *v7;
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:TrigEvent=");
    v14 = *(a1 + 560);
    if (v14)
    {
      v15 = *(v14 + 8);
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:pActiveSeInfo->eSE_Type=");
      v16 = *(*(a1 + 560) + 12);
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:pActiveSeInfo->eSE_ActivationMode=");
    }

    if (*(a1 + 2960))
    {
      v17 = *(a1 + 2952);
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:SeqNext=");
    }

    v18 = *(a1 + 366);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:aConnectionStatus[phLibNfc_SE_Index_eSE]=");
    v19 = *(a1 + 365);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:aConnectionStatus[phLibNfc_SE_Index_UICC]=");
    v20 = *(a1 + 363);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:aConnectionStatus[phLibNfc_SE_Index_HciNwk]=");
    v21 = *(a1 + 452);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:tSeList[phLibNfc_SE_Index_eSE].eSE_ActivationMode=");
    v22 = *(a1 + 448);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:tSeList[phLibNfc_SE_Index_eSE].eSE_Type=");
    v23 = *(a1 + 436);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:tSeList[phLibNfc_SE_Index_UICC].eSE_ActivationMode=");
    v24 = *(a1 + 432);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:tSeList[phLibNfc_SE_Index_UICC].eSE_Type=");
    v25 = *(a1 + 404);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:tSeList[phLibNfc_SE_Index_HciNwk].eSE_ActivationMode=");
    v26 = *(a1 + 400);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "LibNfc:tSeList[phLibNfc_SE_Index_HciNwk].eSE_Type=");
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid Libnfc Context!!!");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PrintLibNfcCritInfo");
}

uint64_t sub_297E8DB3C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_IsShutDownInProgress");
  if (a1)
  {
    v2 = 255;
    if (sub_297E56FC8(*(a1 + 3000)) == 11)
    {
      if (sub_297EE14CC(*(a1 + 3000)) == 1)
      {
        v2 = 0;
      }

      else
      {
        v2 = 255;
      }
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_IsShutDownInProgress");
  return v2;
}

uint64_t sub_297E8DBC8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a2;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkTagType_Tpz_Mfc");
  if (!a2)
  {
    goto LABEL_9;
  }

  v4 = sub_297ECD484(a1, &v8, &v7, 1);
  if (!v4)
  {
    if (v7)
    {
      v4 = sub_297E8CCB4(a1, v7);
      if (!v4)
      {
        v5 = *(v8 + 4);
        if (v5 == 22 || v5 == 16 && *(v8 + 68))
        {
          v4 = 0;
          goto LABEL_10;
        }

LABEL_9:
        v4 = 255;
      }
    }
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkTagType_Tpz_Mfc");
  return v4;
}

uint64_t sub_297E8DC98(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ParseWdgDumpInfo");
  if (a1 && a2 && a3)
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v7 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v8 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v9 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v10 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v11 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v12 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v13 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v14 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v15 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v16 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v17 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v18 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v19 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v20 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v21 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v22 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
    {
      v23 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v24 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v25 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v26 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v27 = (a1 + 2986);
      if (*(a1 + 2986) == 1 || *(a1 + 2992) == 1)
      {
        v28 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        v29 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        v30 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        v31 = *(a1 + 9792);
        phOsalNfc_MemCopy();
      }
    }

    else
    {
      v27 = (a1 + 2986);
    }

    v32 = *a2;
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwRfProcessPc");
    v33 = a2[1];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwRfProcessSp");
    v34 = a2[2];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwRfProcessWaitObject");
    v35 = a2[3];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwRfProcessState");
    v36 = a2[4];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwSwpProcessPc");
    v37 = a2[5];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwSwpProcessSp");
    v38 = a2[6];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwSwpProcessWaitObject");
    v39 = a2[7];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwSwpProcessState");
    v40 = a2[8];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwKernelProcessPc");
    v41 = a2[9];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwKernelProcessSp");
    v42 = a2[10];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwKernelProcessWaitObject");
    v43 = a2[11];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwKernelProcessState");
    v44 = a2[12];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostProcessPc");
    v45 = a2[13];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostProcessSp");
    v46 = a2[14];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostProcessWaitObject");
    v47 = a2[15];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostProcessState");
    if (*(a1 + 2985) == 1 || *v27 == 1 || *(a1 + 2992) == 1)
    {
      v48 = a2[16];
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwMailBoxProcessPc");
      v49 = a2[17];
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwMailBoxProcessSp");
      v50 = a2[18];
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwMailBoxProcessWaitObject");
      v51 = a2[19];
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwMailBoxProcessState");
      if (*v27 == 1 || *(a1 + 2992) == 1)
      {
        v52 = a2[20];
        sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostLowPowerProcessPc");
        v53 = a2[21];
        sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostLowPowerProcessSp");
        v54 = a2[22];
        sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostLowPowerProcessWaitObject");
        v55 = a2[23];
        sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgDumpInfo: dwHostLowPowerProcessState");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ParseWdgDumpInfo");
}

uint64_t sub_297E8E29C(unsigned int a1, unsigned int *a2, uint64_t a3)
{
  v18 = a1;
  v17 = 0;
  sub_297E4E1B4(1, &v18, 4u, 5u, "phLibNfc_ParseHrdFltDumpInfo");
  sub_297E9F31C(v18, &v17);
  if (a3 && a2 && v17)
  {
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    v5 = *a2;
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwR0");
    v6 = a2[1];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwR1");
    v7 = a2[2];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwR2");
    v8 = a2[3];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwR3");
    v9 = a2[4];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwR12");
    v10 = a2[5];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwLR");
    v11 = a2[6];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwPC");
    v12 = a2[7];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwXPsr");
    v13 = a2[8];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwhfLr");
    v14 = a2[9];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwPsp");
    v15 = a2[10];
    sub_297E50DB0(1, &v18, 4u, 1u, "phLibNfc_ParseHrdFltDumpInfo: dwMsp");
  }

  return sub_297E4DFAC(1, &v18, 4u, 5u, "phLibNfc_ParseHrdFltDumpInfo");
}

uint64_t sub_297E8E560(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ParseWdgTickInfo");
  if (a1 && a2 && a3)
  {
    if (*(a1 + 2994) != 1)
    {
      v6 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v7 = *(a1 + 9792);
      phOsalNfc_MemCopy();
    }

    v8 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v9 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
    {
      v10 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      if (*(a1 + 2986) == 1)
      {
        v11 = *(a1 + 9792);
        phOsalNfc_MemCopy();
      }
    }

    v12 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    if (*(a1 + 2994) != 1)
    {
      v13 = *a2;
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwWatchdog_Process_Rf");
      v14 = a2[1];
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwWatchdog_Process_Swp");
    }

    v15 = a2[2];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwWatchdog_Process_Kernel");
    v16 = a2[3];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwWatchdog_Process_Host");
    v17 = a2[6];
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwCurrentSysTick");
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
    {
      v18 = a2[4];
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwWatchdog_Process_MailBox");
      if (*(a1 + 2986) == 1)
      {
        v19 = a2[5];
        sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_ParseWdgTickInfo: dwWatchdog_Process_HostLowPwr");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ParseWdgTickInfo");
}

uint64_t sub_297E8E7EC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ValidateNciHandle");
  v4 = 255;
  if (a1 && a2)
  {
    v5 = 0;
    while (*(a1 + 776 + v5) != a2)
    {
      v5 += 8;
      if (v5 == 80)
      {
        v4 = 255;
        goto LABEL_8;
      }
    }

    v4 = 0;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ValidateNciHandle");
  return v4;
}

uint64_t sub_297E8E88C(uint64_t a1, int a2, int *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MapRemDevType");
  if (a3)
  {
    v6 = a2 - 2;
    if ((a2 - 2) > 0x13)
    {
      v7 = 255;
      v8 = 28;
    }

    else
    {
      v7 = 0;
      v8 = dword_297F131A0[v6];
    }

    *a3 = v8;
  }

  else
  {
    v7 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MapRemDevType");
  return v7;
}

uint64_t sub_297E8E930(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Clear_NdefInfo");
  if (a1)
  {
    v2 = *(a1 + 2752);
    if (v2)
    {
      if (*(v2 + 32))
      {
        v3 = *(a1 + 9792);
        v4 = *(v2 + 32);
        phOsalNfc_FreeMemory();
        v2 = *(a1 + 2752);
        *(v2 + 32) = 0;
      }

      if (*(v2 + 48))
      {
        v5 = *(a1 + 9792);
        v6 = *(v2 + 48);
        phOsalNfc_FreeMemory();
        *(*(a1 + 2752) + 48) = 0;
      }

      v7 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2752) = 0;
    }

    v8 = *(a1 + 2744);
    if (v8)
    {
      if (*(v8 + 32))
      {
        v9 = *(a1 + 9792);
        v10 = *(v8 + 32);
        phOsalNfc_FreeMemory();
        v8 = *(a1 + 2744);
        *(v8 + 32) = 0;
      }

      if (*(v8 + 48))
      {
        v11 = *(a1 + 9792);
        v12 = *(v8 + 48);
        phOsalNfc_FreeMemory();
        *(*(a1 + 2744) + 48) = 0;
      }

      v13 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2744) = 0;
    }

    if (*(a1 + 2664))
    {
      v14 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Clear_NdefInfo");
}

uint64_t sub_297E8EA44(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4u, 5u, "phLibNfc_Get_ConvertToReadWriteFlag");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = *(v3 + 9796);
  }

  else
  {
    v1 = 0;
  }

  sub_297E4DFAC(0, &v4, 4u, 5u, "phLibNfc_Get_ConvertToReadWriteFlag");
  return v1;
}

uint64_t sub_297E8EACC(uint64_t a1, uint64_t a2)
{
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v18);
    if (*(a1 + 6104))
    {
      v4 = (a1 + 6104);
      sub_297E4D930(1, a1 + 9792, 4u, 3, "phLibNfc_InvokePendingCb");
      (*(a1 + 6104))(*(a1 + 9784), *(a1 + 6112), a2);
LABEL_6:
      *v4 = 0;
      v4[1] = 0;
      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
    }

    if (*(a1 + 6664))
    {
      v4 = (a1 + 6664);
      sub_297E4D930(1, a1 + 9792, 4u, 49, "phLibNfc_InvokePendingCb");
      (*(a1 + 6664))(*(a1 + 9784), *(a1 + 6672), a2);
      goto LABEL_6;
    }

    if (*(a1 + 6120))
    {
      v6 = (a1 + 6120);
      sub_297E4D930(1, a1 + 9792, 4u, 33, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6120);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6128);
LABEL_10:
      v7(v8, v9, 255);
LABEL_11:
      *v6 = 0;
      v6[1] = 0;
      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
    }

    if (*(a1 + 6152))
    {
      sub_297EF8C70(a1, a2);
      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
    }

    if (*(a1 + 6184))
    {
      v6 = (a1 + 6184);
      sub_297E4D930(1, a1 + 9792, 4u, 116, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6184);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6192);
      goto LABEL_10;
    }

    if (*(a1 + 6200))
    {
      v6 = (a1 + 6200);
      sub_297E4D930(1, a1 + 9792, 4u, 15, "phLibNfc_InvokePendingCb");
      (*(a1 + 6200))(*(a1 + 9784), *(a1 + 6208), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6232))
    {
      v6 = (a1 + 6232);
      sub_297E4D930(1, a1 + 9792, 4u, 17, "phLibNfc_InvokePendingCb");
      (*(a1 + 6232))(*(a1 + 9784), *(a1 + 6240), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6808))
    {
      v6 = (a1 + 6808);
      sub_297E4D930(1, a1 + 9792, 4u, 136, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6808);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6816);
      goto LABEL_10;
    }

    if (*(a1 + 6216))
    {
      v6 = (a1 + 6216);
      sub_297E4D930(1, a1 + 9792, 4u, 16, "phLibNfc_InvokePendingCb");
      (*(a1 + 6216))(*(a1 + 9784), *(a1 + 6224), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6264))
    {
      v6 = (a1 + 6264);
      sub_297E4D930(1, a1 + 9792, 4u, 130, "phLibNfc_InvokePendingCb");
      v10 = *(a1 + 6264);
      v11 = *(a1 + 9784);
      v12 = *(a1 + 6272);
LABEL_27:
      v10(v11, v12, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6296))
    {
      v6 = (a1 + 6296);
      sub_297E4D930(1, a1 + 9792, 4u, 114, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6296);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6304);
      goto LABEL_10;
    }

    if (*(a1 + 6312))
    {
      v6 = (a1 + 6312);
      sub_297E4D930(1, a1 + 9792, 4u, 23, "phLibNfc_InvokePendingCb");
      (*(a1 + 6312))(*(a1 + 9784), *(a1 + 6320), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6328))
    {
      v6 = (a1 + 6328);
      sub_297E4D930(1, a1 + 9792, 4u, 17, "phLibNfc_InvokePendingCb");
      (*(a1 + 6328))(*(a1 + 9784), *(a1 + 6336), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6408))
    {
      v6 = (a1 + 6408);
      sub_297E4D930(1, a1 + 9792, 4u, 24, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6408);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6416);
      goto LABEL_10;
    }

    if (*(a1 + 6424))
    {
      v6 = (a1 + 6424);
      sub_297E4D930(1, a1 + 9792, 4u, 25, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6424);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6432);
      goto LABEL_10;
    }

    if (*(a1 + 6440))
    {
      v6 = (a1 + 6440);
      *(a1 + 9796) = 0;
      sub_297E4D930(1, a1 + 9792, 4u, 27, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6440);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6448);
      goto LABEL_10;
    }

    if (*(a1 + 6456))
    {
      v6 = (a1 + 6456);
      sub_297E4D930(1, a1 + 9792, 4u, 29, "phLibNfc_InvokePendingCb");
      (*(a1 + 6456))(*(a1 + 9784), *(a1 + 6464), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6472))
    {
      v6 = (a1 + 6472);
      sub_297E4D930(1, a1 + 9792, 4u, 22, "phLibNfc_InvokePendingCb");
      (*(a1 + 6472))(*(a1 + 9784), *(a1 + 6480), 146);
      goto LABEL_11;
    }

    if (*(a1 + 6488))
    {
      v6 = (a1 + 6488);
      sub_297E4D930(1, a1 + 9792, 4u, 35, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6488);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6496);
      goto LABEL_10;
    }

    if (*(a1 + 6504))
    {
      v6 = (a1 + 6504);
      sub_297E4D930(1, a1 + 9792, 4u, 38, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6504);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6512);
      goto LABEL_10;
    }

    if (*(a1 + 6520))
    {
      v6 = (a1 + 6520);
      sub_297E4D930(1, a1 + 9792, 4u, 7, "phLibNfc_InvokePendingCb");
      (*(a1 + 6520))(*(a1 + 9784), *(a1 + 6528), 255, 0);
      goto LABEL_11;
    }

    if (*(a1 + 6728))
    {
      v6 = (a1 + 6728);
      sub_297E4D930(1, a1 + 9792, 4u, 31, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6728);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6736);
      goto LABEL_10;
    }

    if (*(a1 + 6744))
    {
      v6 = (a1 + 6744);
      sub_297E4D930(1, a1 + 9792, 4u, 30, "phLibNfc_InvokePendingCb");
      v10 = *(a1 + 6744);
      v11 = *(a1 + 9784);
      v12 = *(a1 + 6752);
      goto LABEL_27;
    }

    if (*(a1 + 6536))
    {
      v6 = (a1 + 6536);
      sub_297E4D930(1, a1 + 9792, 4u, 126, "phLibNfc_InvokePendingCb");
      v10 = *(a1 + 6536);
      v11 = *(a1 + 9784);
      v12 = *(a1 + 6544);
      goto LABEL_27;
    }

    if (*(a1 + 6584))
    {
      v6 = (a1 + 6584);
      sub_297E4D930(1, a1 + 9792, 4u, 44, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6584);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6592);
      goto LABEL_10;
    }

    if (*(a1 + 6600))
    {
      v6 = (a1 + 6600);
      sub_297E4D930(1, a1 + 9792, 4u, 46, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6600);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6608);
      goto LABEL_10;
    }

    if (*(a1 + 6616))
    {
      v6 = (a1 + 6616);
      sub_297E4D930(1, a1 + 9792, 4u, 47, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6616);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6624);
      goto LABEL_10;
    }

    if (*(a1 + 6552))
    {
      v6 = (a1 + 6552);
      sub_297E4D930(1, a1 + 9792, 4u, 4, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6552);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6560);
      goto LABEL_10;
    }

    if (*(a1 + 6344))
    {
      v6 = (a1 + 6344);
      sub_297E4D930(1, a1 + 9792, 4u, 124, "phLibNfc_InvokePendingCb");
      (*(a1 + 6344))(*(a1 + 9784), *(a1 + 6352), 0, 0, 255, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6360))
    {
      v6 = (a1 + 6360);
      sub_297E4D930(1, a1 + 9792, 4u, 125, "phLibNfc_InvokePendingCb");
      (*(a1 + 6360))(*(a1 + 9784), *(a1 + 6368), 0, 0, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6392))
    {
      v6 = (a1 + 6392);
      sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_InvokePendingCb :Event Wtx Cb");
      (*(a1 + 6392))(*(a1 + 9784), *(a1 + 6400), 0, 0, 255);
      goto LABEL_11;
    }

    v6 = (a1 + 6088);
    if (*(a1 + 6088))
    {
      sub_297E4D930(1, a1 + 9792, 4u, 45, "phLibNfc_InvokePendingCb");
      v10 = *(a1 + 6088);
      v11 = *(a1 + 9784);
      v12 = *(a1 + 6096);
      goto LABEL_27;
    }

    if (*(a1 + 6136))
    {
      v6 = (a1 + 6136);
      sub_297E4D930(1, a1 + 9792, 4u, 41, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6136);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6144);
      goto LABEL_10;
    }

    if (*(a1 + 6632))
    {
      v6 = (a1 + 6632);
      sub_297E4D930(1, a1 + 9792, 4u, 5, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6632);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6640);
      goto LABEL_10;
    }

    if (*(a1 + 6648))
    {
      v6 = (a1 + 6648);
      sub_297E4D930(1, a1 + 9792, 4u, 48, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6648);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6656);
      goto LABEL_10;
    }

    if (*(a1 + 6792))
    {
      v6 = (a1 + 6792);
      sub_297E4D930(1, a1 + 9792, 4u, 42, "phLibNfc_InvokePendingCb");
      v10 = *(a1 + 6792);
      v11 = *(a1 + 9784);
      v12 = *(a1 + 6800);
      goto LABEL_27;
    }

    if (*(a1 + 6680))
    {
      v6 = (a1 + 6680);
      sub_297E4D930(1, a1 + 9792, 4u, 134, "phLibNfc_InvokePendingCb");
      v13 = *(a1 + 560);
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      (*(a1 + 6680))(*(a1 + 9784), *(a1 + 6688), v14, 127, 255);
      goto LABEL_11;
    }

    if (*(a1 + 6760))
    {
      v6 = (a1 + 6760);
      sub_297E4D930(1, a1 + 9792, 4u, 131, "phLibNfc_InvokePendingCb");
      v10 = *(a1 + 6760);
      v11 = *(a1 + 9784);
      v12 = *(a1 + 6768);
      goto LABEL_27;
    }

    if (v18)
    {
      if (v18[4])
      {
        sub_297E4D930(1, a1 + 9792, 4u, 12, "phLibNfc_InvokePendingCb");
        (v18[4])(*(a1 + 9784), *v18, 0, 255);
        v15 = v18;
        v18[4] = 0;
LABEL_95:
        *v15 = 0;
        return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
      }

      if (v18[3])
      {
        sub_297E4D930(1, a1 + 9792, 4u, 10, "phLibNfc_InvokePendingCb");
        (v18[3])(*(a1 + 9784), *v18, 0, 255);
        v15 = v18;
        v18[3] = 0;
        goto LABEL_95;
      }

      if (v18[2])
      {
        sub_297E4D930(1, a1 + 9792, 4u, 133, "phLibNfc_InvokePendingCb");
        (v18[2])(*(a1 + 9784), *v18, 0, 255);
        v15 = v18;
        v18[2] = 0;
        goto LABEL_95;
      }
    }

    if (*(a1 + 6824))
    {
      v6 = (a1 + 6824);
      sub_297E4D930(1, a1 + 9792, 4u, 26, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6824);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6832);
    }

    else
    {
      if (!*(a1 + 6776))
      {
        if (!*(a1 + 6840))
        {
          return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
        }

        v6 = (a1 + 6840);
        v16 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        sub_297E4D930(1, a1 + 9792, 4u, 67, "phLibNfc_InvokePendingCb");
        (*(a1 + 6840))(*(a1 + 9784), *(a1 + 6848), v17, 255);
        goto LABEL_11;
      }

      v6 = (a1 + 6776);
      sub_297E4D930(1, a1 + 9792, 4u, 132, "phLibNfc_InvokePendingCb");
      v7 = *(a1 + 6776);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6784);
    }

    goto LABEL_10;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokePendingCb");
}

uint64_t sub_297E8F848(unsigned int a1)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 4u, 5u, "phUtilNfc_InitIoctlDnldCoreCtx");
  if (v5 > 1)
  {
    v2 = 255;
  }

  else
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      phOsalNfc_SetMemory();
      sub_297E9F938(v5, Memory_Typed);
      v2 = 0;
    }

    else
    {
      v2 = 255;
    }

    v3 = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed && v3)
    {
      phOsalNfc_SetMemory();
      sub_297E9F9CC(v5, v3);
      v2 = 0;
    }

    else
    {
      phOsalNfc_FreeMemory();
      phOsalNfc_FreeMemory();
    }
  }

  sub_297E4DFAC(1, &v5, 4u, 5u, "phUtilNfc_InitIoctlDnldCoreCtx");
  return v2;
}

uint64_t sub_297E8F978(uint64_t a1)
{
  v9 = 0;
  v10 = a1;
  v8 = 0;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_FreeIoctlDnldCoreCtx");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v10)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = 255;
      goto LABEL_10;
    }
  }

  v6 = *(v4 + 2);
  sub_297E5D114(v10, &v9);
  if (v9)
  {
    phOsalNfc_FreeMemory();
    sub_297E9F938(v6, 0);
  }

  sub_297E9F244(v10, &v8);
  if (v8)
  {
    phOsalNfc_FreeMemory();
    sub_297E9F9CC(v6, 0);
  }

  v5 = 0;
LABEL_10:
  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_FreeIoctlDnldCoreCtx");
  return v5;
}

uint64_t sub_297E8FA74(unsigned int a1, uint64_t *a2)
{
  v7 = a1;
  sub_297E4E1B4(1, &v7, 4u, 5u, "phLibNfc_InitializeDnldEseCoreCtx");
  if (a2 && (*a2 = 0, v7 <= 1) && (Memory_Typed = phOsalNfc_GetMemory_Typed()) != 0)
  {
    v4 = Memory_Typed;
    phOsalNfc_SetMemory();
    sub_297E9FA60(v7, v4);
    v5 = 0;
    *a2 = v4;
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(1, &v7, 4u, 5u, "phLibNfc_InitializeDnldEseCoreCtx");
  return v5;
}

uint64_t sub_297E8FB48(unsigned int a1)
{
  v4 = a1;
  v3 = 0;
  sub_297E4E1B4(1, &v4, 4u, 5u, "phUtilNfc_FreeDnldNfcEseCoreContext");
  if (v4 > 1)
  {
    v1 = 255;
  }

  else
  {
    sub_297E9FAF4(v4, &v3);
    if (v3)
    {
      phOsalNfc_FreeMemory();
      sub_297E9FA60(v4, 0);
    }

    v1 = 0;
  }

  sub_297E4DFAC(1, &v4, 4u, 5u, "phUtilNfc_FreeDnldNfcEseCoreContext");
  return v1;
}

uint64_t sub_297E8FBEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CommonSeqProc");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_CommonSeqProc: Status failed");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_CommonSeqProc: Status success");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_CommonSeqProc:Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CommonSeqProc");
  return a2;
}

uint64_t sub_297E8FCB8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CommonSeqComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_CommonSeqComplete: Status failed");
      v4 = 119;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_CommonSeqComplete: Status success");
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_CommonSeqProc:Libnfc Context is Invalid");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CommonSeqComplete");
  return v5;
}

uint64_t sub_297E8FDA4(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PollMgmt");
  if (a2 && a3 && a1 && a4)
  {
    if (a3[1] == 3 && a3[2] == 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_297EFED0C(a1, a2, a3, a4);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "Invalid input parameters");
    v8 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PollMgmt");
  return v8;
}

uint64_t sub_297E8FE80(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_DataTx");
  if (!a1)
  {
    goto LABEL_15;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
    if (v10)
    {
      break;
    }

    v10 = 1;
    v11 = 1;
  }

  while (v12 != a1);
  if (!a3 || !a4 || v12 != a1)
  {
LABEL_15:
    v15 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciCoreMuxNfc_DataTx : Invalid Parameter");
    goto LABEL_28;
  }

  if (a2 == 3)
  {
    if (*(a1 + 5612) == 1)
    {
      goto LABEL_19;
    }

    v16 = 5608;
    v17 = 5476;
    v18 = 5614;
  }

  else
  {
    if (a2 != 1)
    {
      if (!a2 && *(a1 + 5060) != 1)
      {
        v13 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 5062) = *(a3 + 174);
        *(a1 + 5048) = *(a1 + 4912);
        v14 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        if (!*(a1 + 5062))
        {
          BYTE5(v24) = 1;
          LODWORD(v23) = 0;
          v15 = sub_297E59AEC(a1 + 936, &v23, a4, a5);
          if (v15)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_22;
      }

LABEL_19:
      v15 = 111;
      goto LABEL_28;
    }

    if (*(a1 + 5244) == 1)
    {
      goto LABEL_19;
    }

    v16 = 5240;
    v17 = 5108;
    v18 = 5246;
  }

  v19 = *(a1 + 6524);
  phOsalNfc_MemCopy();
  *(a1 + v18) = *(a3 + 174);
  v20 = *(a1 + 6524);
  phOsalNfc_MemCopy();
  *(a1 + v16) = *(a1 + v17);
LABEL_22:
  *(a1 + 184 * a2 + 5060) = 1;
  if (*(a1 + 184 * a2 + 5062) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(a3 + 176);
  }

  *(a1 + 184 * a2 + 5064) = v21;
  *(a1 + 184 * a2 + 5032) = a4;
  *(a1 + 184 * a2 + 5040) = a5;
  if (*(a1 + 5992) == 1)
  {
    v15 = 13;
  }

  else
  {
    *(a1 + 5996) = a2;
    v15 = sub_297E57FC4();
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_DataTx");
  return v15;
}

uint64_t sub_297E900FC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(4, a1, 3u, 5u, "phNciCoreMuxNfc_DnldCmdTx");
  if (a1 && a4 && a3 && (v10 = *(a1 + 8496)) != 0)
  {
    if (*(v10 + 184 * a2 + 5060) == 1)
    {
      v11 = 111;
    }

    else
    {
      v13 = *(v10 + 6524);
      phOsalNfc_MemCopy();
      *(v10 + 184 * a2 + 5060) = 1;
      *(v10 + 184 * a2 + 5032) = a4;
      *(v10 + 184 * a2 + 5040) = a5;
      if (*(v10 + 5992) == 1)
      {
        *(v10 + 5993) = 1;
        v14 = *(a1 + 64);
        v11 = 13;
        if (v14 && v14 != 0xFFFFFFFFFFFFLL && !*(a1 + 80))
        {
          v15 = *(a1 + 8492);
          if (phOsalNfc_Timer_Start())
          {
            sub_297E4E0B0(1, v10 + 6524, 3u, 1u, "phNciCoreMuxNfc_DnldCmdTx : Failed to create start timer");
            v11 = 255;
          }

          else
          {
            *(a1 + 80) = 1;
          }
        }
      }

      else
      {
        *(v10 + 5996) = a2;
        *(a1 + 104) = 0;
        v11 = sub_297E57FC4();
      }
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(4, a1, 3u, 1u, "phNciCoreMuxNfc_DataTx : Invalid Parameter");
  }

  sub_297E4DFAC(4, a1, 3u, 5u, "phNciCoreMuxNfc_DnldCmdTx");
  return v11;
}

uint64_t sub_297E902A4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(4, a2, 3u, 5u, "phNciCoreMuxNfc_TmlBusyCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 != a2)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 8496);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&unk_2A18BDDC0 + 14 * v10 + 4);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (v11 != v8);
  if (v11 == v8)
  {
    sub_297E4E0B0(1, v8 + 6524, 3u, 2u, "phNciCoreMuxNfc_TmlBusyCb:Mux TML busy timer expired");
    sub_297E5A304(*(v8 + 6524), a1);
    *(a2 + 80) = 0;
    if (*(a2 + 64) == a1)
    {
      if (*(v8 + 5992) || sub_297E56AFC(*(v8 + 6528)))
      {
        if (*(v8 + 5993) == 1)
        {
          *(v8 + 5993) = 0;
          *(v8 + 5996) = 4;
          sub_297E57FC4(v8, 9, 0);
        }

        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(&unk_2A18BDDC0 + 14 * v13 + 4);
          if (v12)
          {
            break;
          }

          v12 = 1;
          v13 = 1;
        }

        while (v14 != v8);
        if (v14 == v8 && *(v8 + 5994) == 1)
        {
          *(v8 + 5994) = 0;
          *(v8 + 5996) = 5;
          sub_297E57FC4(v8, 9, 0);
        }
      }

      else
      {
        sub_297F0FCA0(v8);
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(4, a2, 3u, 1u, "phNciCoreMuxNfc_TmlBusyCb: Invalid or NULL pNciCtx or phDnldCoreCtx");
  }

  return sub_297E4DFAC(4, a2, 3u, 5u, "phNciCoreMuxNfc_TmlBusyCb");
}

uint64_t sub_297E9048C(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  sub_297E4E1B4(5, a1, 3u, 5u, "phNciCoreMuxNfc_DnldEseTx");
  if (a1)
  {
    v10 = a1[172];
    sub_297E67F6C(*a1, &v26);
    if (v26)
    {
      v11 = *(v26 + 48);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  if (!a1)
  {
LABEL_15:
    v12 = 1;
    sub_297E4E0B0(2, v10, 3u, 1u, "phNciCoreMuxNfc_DnldEseTx:Invalid Parameter");
    goto LABEL_35;
  }

LABEL_6:
  if (!a4 || !a5 || !a3 || !v10 || !v11)
  {
    goto LABEL_15;
  }

  if (*(v10 + 184 * a2 + 5060) != 1)
  {
    goto LABEL_24;
  }

  if (*(a3 + 96) != 34 || *(v10 + 184 * a2 + 4984))
  {
    v12 = 111;
    goto LABEL_35;
  }

  if (!a1[8] || !a1[81])
  {
    goto LABEL_24;
  }

  if (*(v10 + 5796))
  {
    v25 = 0;
  }

  else
  {
    v13 = *a1;
    phTmlNfc_WriteAbort();
    v14 = *(v11 + 48);
    phTmlNfc_ReadAbort();
    v15 = *(v11 + 48);
    phTmlNfc_FlushTxRxBuffers();
    v16 = sub_297F0E83C(v11);
    v25 = v16 != 13;
    if (v16 != 13)
    {
      sub_297E4E0B0(1, v10 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldTx: Read request failed");
    }

    sub_297E5A3A8(*(v11 + 48), 0);
    *(v10 + 5992) = 0;
    v17 = a1[8];
  }

  v18 = *(v10 + 6524);
  v19 = *(a1 + 18);
  phOsalNfc_SetMemory();
  *(a1 + 18) = 0;
  v12 = 255;
  (a1[81])(*a1, a1[82], a1[1], a1 + 8, 255, 150);
  *(a1 + 81) = 0u;
  *(a1 + 83) = 0u;
  if (!v25)
  {
LABEL_24:
    *(a1 + 94) = 0;
    v20 = *(v10 + 6524);
    phOsalNfc_MemCopy();
    *(v10 + 184 * a2 + 5060) = 1;
    *(v10 + 184 * a2 + 5032) = a4;
    *(v10 + 184 * a2 + 5040) = a5;
    if (*(v10 + 5992) == 1)
    {
      *(v10 + 5994) = 1;
      v21 = *(v11 + 64);
      v12 = 13;
      if (v21 && v21 != 0xFFFFFFFFFFFFLL && !*(v11 + 80))
      {
        v22 = *(v10 + 6524);
        if (phOsalNfc_Timer_Start())
        {
          sub_297E4E0B0(1, v10 + 6524, 3u, 1u, "phNciCoreMuxNfc_DnldEseTx:Failed to create start timer");
          v12 = 255;
        }

        else
        {
          sub_297E687D8(1, v10 + 6524, *(v11 + 64), 3u, 4u, "phNciCoreMuxNfc_DnldEseTx");
          *(v11 + 80) = 1;
        }
      }

      v23 = *(a3 + 112);
      if (*(a3 + 96) == 37)
      {
        v23 = 1;
      }

      *(v10 + 184 * a2 + 5052) = v23;
    }

    else
    {
      *(v10 + 5996) = a2;
      *(a1 + 94) = 0;
      v12 = sub_297E57FC4();
    }
  }

LABEL_35:
  sub_297E4DFAC(5, a1, 3u, 5u, "phNciCoreMuxNfc_DnldEseTx");
  return v12;
}

uint64_t sub_297E907B0(uint64_t a1, unsigned int a2, int a3, char a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_HciBuildHcpFragment");
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != a1);
    v11 = 1;
    if (a3 && v10 == a1)
    {
      v12 = a1 + 184 * a2;
      v13 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      *(a1 + 6016) = *(v12 + 4920) | (a4 << 7);
      v14 = (*(v12 + 4924) - *(v12 + 5056));
      v15 = *(a1 + 6524);
      v16 = *(v12 + 4928);
      phOsalNfc_MemCopy();
      v11 = 0;
      *(v12 + 4904) = a1 + 6016;
      *(v12 + 4912) = a3 + 1;
      *(v12 + 5048) = a3 + 1;
    }
  }

  else
  {
    v11 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_HciBuildHcpFragment");
  return v11;
}

uint64_t sub_297E908E4(uint64_t a1, unsigned int a2, int a3, char a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_HciCoreBuildHcipacket");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != a1);
  if (v10 == a1)
  {
    v12 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    v13 = *(a1 + 184 * a2 + 4921) | (*(a1 + 184 * a2 + 4922) << 6);
    *(a1 + 6016) = *(a1 + 184 * a2 + 4920) | (a4 << 7);
    *(a1 + 6017) = v13;
    if (a3)
    {
      v14 = (*(a1 + 184 * a2 + 4924) - *(a1 + 184 * a2 + 5056));
      v15 = *(a1 + 6524);
      v16 = *(a1 + 184 * a2 + 4928);
      phOsalNfc_MemCopy();
    }

    v11 = 0;
    *(a1 + 184 * a2 + 4904) = a1 + 6016;
    *(a1 + 184 * a2 + 4912) = a3 + 2;
    *(a1 + 184 * a2 + 5048) = a3 + 2;
  }

  else
  {
LABEL_6:
    v11 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_HciCoreBuildHcipacket");
  return v11;
}

uint64_t sub_297E90A28(uint64_t a1)
{
  sub_297E4E1B4(4, a1, 3u, 5u, "phNciMuxNfc_BuildDnldPkt");
  v2 = *(a1 + 8496);
  if (v2)
  {
    v3 = *(v2 + 5688);
    v14[0] = *(v2 + 5672);
    v14[1] = v3;
    v14[2] = *(v2 + 5704);
    if (sub_297F0E294(a1, v14) || (v6 = *(a1 + 56)) == 0 || v6 == 0xFFFFFFFFFFFFLL)
    {
      sub_297E4E0B0(1, v2 + 6524, 3u, 1u, "phNciMuxNfc_BuildDnldPkt : Invalid Download Timer ID");
      v4 = 255;
    }

    else
    {
      if (*a1 == 192)
      {
        v7 = 3000;
      }

      else
      {
        v7 = 1500;
      }

      *(a1 + 84) = v7;
      sub_297E5A304(*(a1 + 8492), v6);
      v8 = *(a1 + 8492);
      v9 = *(a1 + 56);
      v10 = *(a1 + 84);
      v11 = phOsalNfc_Timer_Start();
      if (v11)
      {
        v4 = v11;
        sub_297E4E0B0(1, v2 + 6524, 3u, 1u, "phNciMuxNfc_BuildDnldPkt : Response Timer Start failed!!!");
      }

      else
      {
        *(v2 + 5992) = 1;
        sub_297E5A3A8(*(v2 + 6528), 1);
        v12 = *(a1 + 48);
        v13 = *(a1 + 124);
        v4 = phTmlNfc_Write();
        if (v4 == 13)
        {
          *(v2 + 5996) = 4;
        }

        else
        {
          *(v2 + 5792) = 0;
          sub_297E5A3A8(*(v2 + 6528), 0);
          *(v2 + 5992) = 0;
          sub_297E5A304(*(a1 + 8492), *(a1 + 56));
        }
      }
    }
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(4, a1, 3u, 5u, "phNciMuxNfc_BuildDnldPkt");
  return v4;
}

uint64_t sub_297E90BEC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v34 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_BuildDataPktNci");
  v6 = 1;
  if (a1 && a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(&unk_2A18BDDC0 + 14 * v8 + 4);
      if (v7)
      {
        break;
      }

      v7 = 1;
      v8 = 1;
    }

    while (v9 != a1);
    if (v9 != a1)
    {
      v6 = 1;
      goto LABEL_28;
    }

    v10 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    if (!*(a1 + 184 * a2 + 5062))
    {
      v13 = *(a1 + 1920);
      if (v13 == 0xFFFFFFFFFFFFLL)
      {
        v6 = 1;
        goto LABEL_26;
      }

      v23 = *(a1 + 184 * a2 + 5064);
      if (!v23)
      {
        v23 = 2000;
      }

      *(a1 + 1556) = v23;
      sub_297E5A304(*(a1 + 3396), v13);
      *(a1 + 6512) = 0;
      v24 = *(a1 + 3396);
      v25 = *(a1 + 1920);
      v26 = *(a1 + 1556);
      v27 = phOsalNfc_Timer_Start();
      if (v27)
      {
        v6 = v27;
        *(a1 + 1928) = 0;
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Response Timer Start failed!!!");
        goto LABEL_26;
      }

      sub_297E4E0B0(1, a1 + 3396, 3u, 4u, "Response timer started");
      *(a1 + 1928) = 1;
      if (*(a1 + 3396))
      {
        v32 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v32 = &gphNfc_DebugInfo_Prim;
      }

      v32[1] &= ~0x10u;
      v33 = *(a1 + 6524);
      phOsalNfc_MemCopy();
    }

    v11 = *(a3 + 12);
    v12 = sub_297E8C7BC(a1, v11, &v34);
    if (v12)
    {
      v6 = v12;
LABEL_26:
      v28 = "Data Max Payload Length is not available !!!!!";
LABEL_27:
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v28);
      goto LABEL_28;
    }

    if (*(a3 + 24) && *(a3 + 16))
    {
      v14 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      v15 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      v16 = v11 & 0xF;
      v17 = *(a1 + 184 * a2 + 5048);
      v18 = v34;
      if (v17 >= v34)
      {
        v19 = v34;
      }

      else
      {
        v19 = *(a1 + 184 * a2 + 5048);
      }

      if (v17 <= v34)
      {
        v18 = *(a1 + 184 * a2 + 5048);
      }

      else
      {
        v16 = v11 & 0xF | 0x10;
      }

      *(a1 + 944) = v16;
      *(a1 + 946) = v18;
      v20 = *(a3 + 16);
      v21 = *(a3 + 24);
      v22 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      *(a1 + 1208) = v19 + 3;
      sub_297E4E880(1, a1 + 6524, 3u, 4u, "Data packet:", a1 + 944);
    }

    else
    {
      if (*(a1 + 3362) != 1)
      {
        v28 = "Invalid send payload buffer or length!";
        v6 = 1;
        goto LABEL_27;
      }

      *(a1 + 3362) = 0;
      v30 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      *(a1 + 944) = *(a1 + 944) & 0x10 | v11 & 0xF;
      *(a1 + 946) = 0;
      *(a1 + 1208) = 3;
      sub_297E4E880(1, a1 + 6524, 3u, 4u, "Data packet:", a1 + 944);
      v19 = 0;
    }

    v31 = *(a1 + 184 * a2 + 5048) - v19;
    *(a1 + 184 * a2 + 5048) = v31;
    v6 = 0;
    if (!a2)
    {
      *(a1 + 5056) = v31;
    }
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_BuildDataPktNci");
  return v6;
}

uint64_t sub_297E90F60(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_SendDnldEsePkt");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 == a1)
  {
    v7 = *(a1 + 6632);
    v5 = 1;
    if (v7)
    {
      v8 = *(a1 + 6624);
      if (v8)
      {
        v9 = *(a1 + 5920);
        v15[0] = *(a1 + 5904);
        v15[1] = v9;
        v15[2] = *(a1 + 5936);
        v5 = sub_297F12788(a1, v15);
        if (!v5)
        {
          *(a1 + 5992) = 1;
          sub_297E5A3A8(*(a1 + 6528), 1);
          v10 = *v7;
          v11 = *(v7 + 191);
          v12 = phTmlNfc_Write();
          if (v12 == 13)
          {
            if (!*(v7 + 186))
            {
              --*(v7 + 29);
            }

            *(a1 + 5996) = 5;
            v13 = *(v8 + 64);
            v5 = 13;
            if (v13 && v13 != 0xFFFFFFFFFFFFLL && !*(v8 + 80))
            {
              v14 = *(v8 + 8492);
              if (phOsalNfc_Timer_Start())
              {
                sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldTxCb : Failed to create start timer");
                v5 = 255;
              }

              else
              {
                *(v8 + 80) = 1;
              }
            }
          }

          else
          {
            v5 = v12;
            *(a1 + 5976) = 0;
            sub_297E5A3A8(*(a1 + 6528), 0);
            *(a1 + 5992) = 0;
            sub_297E5A304(*(v7 + 342), v7[6]);
            *(v7 + 16) = 0;
            sub_297E5A304(*(v7 + 342), v7[7]);
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_SendDnldEsePkt");
  return v5;
}

uint64_t sub_297E91160(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_DnldInvokeUpperLayer");
  if (a1)
  {
    v8 = a1 + 184 * a3;
    v9 = *(v8 + 5032);
    v10 = *(v8 + 5040);
    sub_297E5B294(a1);
    if (v9)
    {
      v9(v10, a4, a2);
    }
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_DnldInvokeUpperLayer");
  return a2;
}

uint64_t sub_297E91214(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_DnldClearInvokeUpperLayer");
  if (a1)
  {
    *(a1 + 184 * a3 + 5052) = 0;
    if (a3 == 5)
    {
      v10 = *(a1 + 6632);
      if (!v10)
      {
        goto LABEL_9;
      }

      *(a1 + 5994) = 0;
      *(v10 + 40) = 0;
      *(v10 + 376) = 0;
      v11 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      *(v10 + 382) = 0;
      goto LABEL_8;
    }

    if (a3 == 4)
    {
      v8 = *(a1 + 6624);
      if (v8)
      {
        *(a1 + 5993) = 0;
        *(v8 + 104) = 0;
        v9 = *(a1 + 6524);
        phOsalNfc_SetMemory();
        *(v8 + 124) = 0;
LABEL_8:
        sub_297E91160(a1, a2, a3, a4);
      }
    }
  }

LABEL_9:

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_DnldClearInvokeUpperLayer");
}

uint64_t sub_297E91324(_BYTE *a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_DnldEseInterleaveNextPkt");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 != a1)
  {
    goto LABEL_6;
  }

  if (a2 != 5)
  {
    if (a2 != 4)
    {
      goto LABEL_6;
    }

    if (a1[5980] != 1 && a1[5994] != 1)
    {
      if (a1[5796] == 1 || a1[5993] == 1)
      {
LABEL_17:
        v7 = 4;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_20:
    v7 = 5;
    goto LABEL_7;
  }

  if (a1[5796] == 1 || a1[5993] == 1)
  {
    goto LABEL_17;
  }

  if (a1[5980] == 1 || a1[5994] == 1)
  {
    goto LABEL_20;
  }

LABEL_6:
  v7 = 6;
LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_DnldEseInterleaveNextPkt");
  return v7;
}

uint64_t sub_297E9144C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_ChkAbortMux");
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 != a1)
  {
LABEL_17:
    v7 = 255;
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += *(a1 + 5060 + v5);
    v5 += 184;
  }

  while (v5 != 1104);
  if (v6 >= 2u)
  {
    v8 = 0;
    v9 = a1 + 5032;
    do
    {
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 30);
      sub_297E5B294(a1);
      if (v12 == 1 && v11 != 0)
      {
        v11(v10, 0, 255);
      }

      v9 += 184;
      ++v8;
    }

    while (v8 != 6);
    goto LABEL_17;
  }

  v7 = 0;
LABEL_18:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_ChkAbortMux");
  return v7;
}

uint64_t sub_297E9157C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintDiscNtfDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "NCI Remote device Details:");
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
  v4 = *(a2 + 4);
  sub_297E50DB0(2, a1, 3u, 4u, "Remote Device type:");
  v5 = *(a2 + 8);
  sub_297E50DB0(2, a1, 3u, 4u, "Rf Discover ID:");
  v6 = *(a2 + 16);
  sub_297E50DB0(2, a1, 3u, 4u, "Rf Protocol:");
  v7 = *(a2 + 20);
  sub_297E50DB0(2, a1, 3u, 4u, "Rf Technology & mode:");
  sub_297E4E0B0(2, a1, 3u, 4u, "Rf Technology Specific Details:");
  v8 = *(a2 + 20);
  if (v8 <= 0xC)
  {
    if (((1 << v8) & 0x1C09) != 0)
    {
      v9 = *(a2 + 101);
      sub_297E50DB0(2, a1, 3u, 4u, "Sens Response Byte 1:");
      v10 = *(a2 + 102);
      sub_297E50DB0(2, a1, 3u, 4u, "Sens Response Byte 2:");
      v11 = *(a2 + 46);
      sub_297E50DB0(2, a1, 3u, 4u, "Uid length:");
      v12 = *(a2 + 46);
      sub_297E4E880(2, a1, 3u, 4u, "Uid:", a2 + 36);
      if (*(a2 + 103))
      {
        v13 = *(a2 + 96);
        sub_297E50DB0(2, a1, 3u, 4u, "Sel Resp:");
      }

      else
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "Sel Resp not present");
      }
    }

    else
    {
      if (((1 << v8) & 0x24) != 0)
      {
        v14 = *(a2 + 56);
        sub_297E50DB0(2, a1, 3u, 4u, "SENSF Response length:");
        v15 = *(a2 + 56);
        v16 = "SENSF Response:";
        v17 = a2 + 57;
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_11;
        }

        v18 = *(a2 + 98);
        sub_297E50DB0(2, a1, 3u, 4u, "SENSB Response length:");
        v19 = *(a2 + 98);
        v16 = "SENSB Response:";
        v17 = a2 + 99;
      }

      sub_297E4E880(2, a1, 3u, 4u, v16, v17);
    }
  }

LABEL_11:

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintDiscNtfDescription");
}