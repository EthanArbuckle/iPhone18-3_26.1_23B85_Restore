uint64_t phLibNfc_Mgt_SetCE_ConfigParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  sub_297E4D930(0, &v13, 4u, 35, "phLibNfc_Mgt_SetCE_ConfigParams");
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
  v7 = sub_297E4F050(v13, &v12);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v12 == 0;
  }

  if (v8)
  {
LABEL_6:
    sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v7 = 1;
  v9 = "Invalid input Parameter";
  if (!a2 || !a3)
  {
    goto LABEL_12;
  }

  if (*(v12 + 2994) != 1)
  {
    v7 = sub_297E4F450(v13, 37, 0, a2, 0);
    if (v7 == 13)
    {
      v11 = v12;
      *(v12 + 6488) = a3;
      *(v11 + 6496) = a4;
      sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
      return v7;
    }

    goto LABEL_6;
  }

  v7 = 51;
  v9 = "Feature not supported";
LABEL_12:
  sub_297E4E0B0(0, &v13, 4u, 1u, v9);
  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
LABEL_13:
  sub_297E4D930(0, &v13, 4u, 35, "phLibNfc_Mgt_SetCE_ConfigParams");
  sub_297E5AE60(v13, 37);
  sub_297E96818(v13, v7);
  return v7;
}

uint64_t phLibNfc_CardEmulation_NtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4u, 36, "phLibNfc_CardEmulation_NtfRegister");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_CardEmulation_NtfRegister");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (!v6)
  {
    if (a2)
    {
      v7 = sub_297E4F450(v11, 38, 0, 0, 0);
      v5 = v7;
      if (!v7)
      {
        v8 = v10;
        *(v10 + 6712) = a2;
        *(v8 + 6720) = a3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_CardEmulation_NtfRegister");
  sub_297E4D930(0, &v11, 4u, 36, "phLibNfc_CardEmulation_NtfRegister");
  if (v5)
  {
    sub_297E5AE60(v11, 38);
    sub_297E96818(v11, v5);
  }

  return v5;
}

uint64_t phLibNfc_eSE_GetAtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  v27 = a1;
  sub_297E4D930(0, &v27, 4u, 126, "phLibNfc_eSE_GetAtr");
  sub_297E4E1B4(0, &v27, 4u, 5u, "phLibNfc_eSE_GetAtr");
  v9 = sub_297E4F050(v27, &v26);
  v10 = v9;
  if (!v26)
  {
    goto LABEL_33;
  }

  if (v9 == 49 || v9 == 145)
  {
LABEL_17:
    sub_297E4DFAC(0, &v27, 4u, 5u, "phLibNfc_eSE_GetAtr");
LABEL_34:
    sub_297E4D930(0, &v27, 4u, 126, "phLibNfc_eSE_GetAtr");
    sub_297E5AE60(v27, 145);
    sub_297E96818(v27, v10);
    return v10;
  }

  if (!a3 || !a2 || !a4 || !*a3 || !*(a3 + 8))
  {
    v13 = "phLibNfc_eSE_GetAtr: Invalid input parameters";
LABEL_16:
    v10 = 1;
    sub_297E4E0B0(0, &v27, 4u, 1u, v13);
    goto LABEL_17;
  }

  v11 = (v26 + 420);
  v12 = 4;
  while (*(v11 - 3) != a2 || *(v11 - 1) != 1 || *v11 != 2)
  {
    v11 += 4;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  v14 = *(v26 + 512);
  if (!v14)
  {
LABEL_14:
    v13 = "phLibNfc_eSE_GetAtr: Invalid Hci context received or Invalid SE Handle!";
    goto LABEL_16;
  }

  v15 = sub_297E4F450(v27, 145, 0, 0, 0);
  if (v15 != 13)
  {
    v17 = v15;
    sub_297E4E0B0(0, &v27, 4u, 1u, "phLibNfc_eSE_GetAtr Failed!");
    if (v17 == 145 || v17 == 111 || v17 == 143)
    {
      v10 = v17;
    }

    else
    {
      v10 = 255;
    }

    goto LABEL_17;
  }

  sub_297E4E0B0(0, &v27, 4u, 4u, "phLibNfc_eSE_GetAtr Cmd Sent to lower layer");
  v16 = v26;
  *(v26 + 6536) = a4;
  *(v16 + 6544) = a5;
  *(v16 + 600) = a3;
  if (sub_297EEEC64(v14) || (v20 = *(v26 + 512), *(v20 + 868) = 2000, v21 = *(v20 + 956), v22 = *(v20 + 856), !phOsalNfc_Timer_Start()))
  {
    sub_297E4DFAC(0, &v27, 4u, 5u, "phLibNfc_eSE_GetAtr");
    return 13;
  }

  v23 = *(v20 + 956);
  v24 = *(v20 + 856);
  v10 = phOsalNfc_Timer_Delete();
  *(v20 + 856) = 0xFFFFFFFFFFFFLL;
  sub_297E4E0B0(0, &v27, 4u, 1u, "phLibNfc_eSE_GetAtr: SE Get ATR Timer Start Failed");
LABEL_33:
  sub_297E4DFAC(0, &v27, 4u, 5u, "phLibNfc_eSE_GetAtr");
  if (v10 != 13)
  {
    goto LABEL_34;
  }

  return v10;
}

uint64_t phLibNfc_Mgt_SetNfccParams(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v42 = 0;
  v43 = a1;
  v41 = 2;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v7 = 1;
  sub_297E4D930(0, &v43, 4u, 132, "phLibNfc_Mgt_SetNfccParams");
  sub_297E4E1B4(0, &v43, 4u, 5u, "phLibNfc_Mgt_SetNfccParams");
  sub_297E5D114(v43, &v39);
  sub_297E67EB0(v43, &v40);
  sub_297E67F6C(v43, &v38);
  v8 = 0;
  while (1)
  {
    v9 = &unk_2A18BDDC0 + 112 * v8;
    if (*v9 == v43)
    {
      break;
    }

    v10 = v7;
    v7 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v11 = *(v9 + 2);
  if (v11 > 1)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = *(&unk_2A18BDDC0 + 14 * v11 + 10);
  if (v12)
  {
    v13 = v12 + 120;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:
  v14 = sub_297E4F050(v43, &v42);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v42 == 0;
  }

  v16 = v15;
  if (!a2 || !v16 || !*a2)
  {
    if (!a2 || !a3)
    {
      goto LABEL_44;
    }

    v19 = *a2;
    if (*a2 <= 4)
    {
      if (v19 <= 2)
      {
        if (!v19)
        {
          if (v42)
          {
            if (!v38)
            {
              v33 = *(v42 + 9792);
              phOsalNfc_MemCopy();
              v21 = v43;
              v18 = 67;
              v22 = 67;
              goto LABEL_68;
            }

            if (v39 && *(v39 + 836) == 1)
            {
              sub_297E4E0B0(0, &v43, 4u, 2u, "Degraded FW update on going");
              v14 = 147;
LABEL_59:
              v17 = 1;
              v18 = 208;
              goto LABEL_74;
            }

            if (*(v42 + 6082) == 1 || *(v42 + 6083) == 1 || *(v42 + 6079) == 1 || *(v42 + 6080) == 1)
            {
              sub_297E4E0B0(0, &v43, 4u, 2u, "Previous API in progress");
              v14 = 111;
              goto LABEL_59;
            }
          }

          v21 = v43;
          v18 = 188;
          v30 = (a2 + 2);
          v31 = &v41;
          v22 = 188;
          v32 = v14;
LABEL_69:
          v14 = sub_297E4F450(v21, v22, v32, v30, v31);
          v17 = 0;
          goto LABEL_70;
        }

        if (v19 == 1)
        {
          if (*(v42 + 2994) != 1)
          {
            v23 = *(v42 + 9792);
            phOsalNfc_MemCopy();
            v21 = v43;
            v18 = 68;
            v22 = 68;
            goto LABEL_68;
          }

          goto LABEL_58;
        }

        goto LABEL_44;
      }

      if (v19 == 3)
      {
        if (*(v42 + 2994) != 1)
        {
          v26 = *(v42 + 9792);
          phOsalNfc_MemCopy();
          v21 = v43;
          v18 = 69;
          v22 = 69;
          goto LABEL_68;
        }
      }

      else
      {
        if (v19 != 4)
        {
          goto LABEL_44;
        }

        if (*(v42 + 2994) != 1)
        {
          v24 = *(v42 + 9792);
          phOsalNfc_MemCopy();
          v21 = v43;
          v18 = 70;
          v22 = 70;
          goto LABEL_68;
        }
      }
    }

    else if (v19 <= 6)
    {
      if (v19 == 5)
      {
        v28 = *(v42 + 9792);
        phOsalNfc_MemCopy();
        v21 = v43;
        v18 = 71;
        v22 = 71;
        goto LABEL_68;
      }

      if (v19 != 6)
      {
        goto LABEL_44;
      }

      if (*(v42 + 2994) != 1)
      {
        v25 = *(v42 + 9792);
        phOsalNfc_MemCopy();
        v21 = v43;
        v18 = 73;
        v22 = 73;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v19)
      {
        case 7:
          if (*(v42 + 2994) != 1)
          {
            v27 = *(v42 + 9792);
            phOsalNfc_MemCopy();
            v21 = v43;
            v18 = 74;
            v22 = 74;
            goto LABEL_68;
          }

          break;
        case 8:
          if (*(v42 + 2994) != 1)
          {
            v29 = *(v42 + 9792);
            phOsalNfc_MemCopy();
            v21 = v43;
            v18 = 75;
            v22 = 75;
            goto LABEL_68;
          }

          break;
        case 9:
          if (*(v42 + 2994) != 1)
          {
            v20 = *(v42 + 9792);
            phOsalNfc_MemCopy();
            v21 = v43;
            v18 = 76;
            v22 = 76;
LABEL_68:
            v32 = v14;
            v30 = 0;
            v31 = 0;
            goto LABEL_69;
          }

          break;
        default:
LABEL_44:
          v17 = 1;
          sub_297E4E0B0(0, &v43, 4u, 1u, "phLibNfc_Mgt_SetNfccParams: Invalid input parameters");
          if (v13)
          {
            *(v13 + 36) = 132;
            sub_297E96818(v43, 1);
          }

          v18 = 208;
          v14 = 1;
          goto LABEL_74;
      }
    }

LABEL_58:
    v14 = 51;
    goto LABEL_59;
  }

  v17 = 1;
  sub_297E4E0B0(0, &v43, 4u, 1u, "phLibNfc_Mgt_SetNfccParams: LIBNFC Not Initialized");
  if (v13)
  {
    *(v13 + 36) = 132;
    sub_297E96818(v43, v14);
  }

  v18 = 208;
LABEL_70:
  if (v14 == 13)
  {
    sub_297E4F0E8(v43, &v42);
    sub_297E67EB0(v43, &v40);
    v34 = v42;
    if (v42 && (v35 = v40) != 0)
    {
      *(v42 + 6082) = 1;
      *(v35 + 712) = a3;
      v36 = (v35 + 720);
    }

    else
    {
      if (!v42)
      {
LABEL_79:
        sub_297E4DFAC(0, &v43, 4u, 5u, "phLibNfc_Mgt_SetNfccParams");
        return 13;
      }

      *(v42 + 6776) = a3;
      v36 = (v34 + 6784);
    }

    *v36 = a4;
    goto LABEL_79;
  }

LABEL_74:
  sub_297E4DFAC(0, &v43, 4u, 5u, "phLibNfc_Mgt_SetNfccParams");
  sub_297E4D930(0, &v43, 4u, 132, "phLibNfc_Mgt_SetNfccParams");
  if ((v17 & 1) == 0)
  {
    sub_297E5AE60(v43, v18);
    sub_297E96818(v43, v14);
  }

  return v14;
}

uint64_t phLibNfc_Mgt_RawCtrlMsgTransceive(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  sub_297E4D930(0, &v16, 4u, 67, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  v9 = sub_297E4F050(v16, &v14);
  if (v9)
  {
    v10 = v9;
    sub_297E4E0B0(0, &v16, 4u, 1u, "phLibNfc_Mgt_RawCtrlMsgTransceive: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
    if (v10 == 13)
    {
      return v10;
    }
  }

  else
  {
    if (a3 && a4 && ((v11 = *(a3 + 8)) == 0 || v11 <= 0xFF && *a3) && !sub_297E8D380(a5, a2))
    {
      v10 = sub_297E4F450(v16, 72, 0, a3, &v15);
      if (v10 == 13)
      {
        v13 = v14;
        *(v14 + 6840) = a4;
        *(v13 + 6848) = a5;
        sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
        return v10;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(0, &v16, 4u, 1u, "phLibNfc_Mgt_RawCtrlMsgTransceive: Invalid input parameters");
    }

    sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  }

  sub_297E4D930(0, &v16, 4u, 67, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  sub_297E5AE60(v16, 72);
  sub_297E96818(v16, v10);
  return v10;
}

uint64_t phLibNfc_Mgt_eSeCfgDnldMode(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v25 = a2;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 1;
  sub_297E4D930(0, &v26, 4u, 84, "phLibNfc_Mgt_eSeCfgDnldMode");
  sub_297E4E1B4(0, &v26, 4u, 5u, "phLibNfc_Mgt_eSeCfgDnldMode");
  sub_297E5D114(v26, &v23);
  sub_297E67F6C(v26, &v24);
  sub_297E67EB0(v26, &v21);
  v11 = sub_297E4F050(v26, &v22);
  if (!v11 && v22)
  {
    if (v24)
    {
      if (v22[6079] == 1 || v22[6082] == 1 || v22[6083] == 1)
      {
        sub_297E4E0B0(0, &v26, 4u, 2u, "Previous API call in progress");
        v11 = 111;
        goto LABEL_10;
      }

      if (*(v23 + 836) != 1)
      {
        v11 = 0;
        goto LABEL_10;
      }

      sub_297E4E0B0(0, &v26, 4u, 2u, "Degraded FW update on going");
    }

    else
    {
      sub_297E4E0B0(0, &v26, 4u, 1u, "This API will only be handled only in the Libnfc uninitialized state");
    }

    v11 = 147;
  }

LABEL_10:
  v12 = 1;
  v13 = "phLibNfc_Mgt_eSeCfgDnldMode: Invalid input parameters";
  if (a2 > 2)
  {
    goto LABEL_45;
  }

  if (!a5)
  {
    goto LABEL_45;
  }

  if (!a3)
  {
    goto LABEL_45;
  }

  v14 = v26;
  if (!v26)
  {
    goto LABEL_45;
  }

  if (v11 != 49)
  {
    if (v11 == 13)
    {
      goto LABEL_36;
    }

    if (v11)
    {
LABEL_22:
      LODWORD(v15) = 185;
LABEL_46:
      sub_297E4D930(0, &v26, 4u, 84, "phLibNfc_Mgt_eSeCfgDnldMode");
      sub_297E5AE60(v26, v15);
      sub_297E96818(v26, v11);
      goto LABEL_47;
    }
  }

  if (a2 == 1 && !v11 && v22)
  {
    if (v22[6078] == 1)
    {
      v11 = 0;
      goto LABEL_22;
    }
  }

  else if (a2 == 2)
  {
    if (!v22 || !v22[6078])
    {
      v12 = 147;
      v13 = "eSE not enabled";
      goto LABEL_45;
    }

    v16 = v23;
    if (v23)
    {
      v17 = *(v23 + 116);
      if ((v17 - 209) >= 3 && v17 != 96)
      {
        LODWORD(v15) = 185;
        v11 = 51;
        goto LABEL_46;
      }

      goto LABEL_31;
    }

LABEL_41:
    v12 = 255;
    v13 = "phLibNfc_Mgt_eSeCfgDnldMode: Invalid IOCTL context!!";
LABEL_45:
    sub_297E4E0B0(0, &v26, 4u, 1u, v13);
    LODWORD(v15) = 185;
    v11 = v12;
    goto LABEL_46;
  }

  v16 = v23;
  if (!v23)
  {
    goto LABEL_41;
  }

LABEL_31:
  *(v16 + 8) = v26;
  if (a2 == 1)
  {
    v15 = 185;
  }

  else
  {
    v15 = 186;
  }

  v11 = sub_297E4F450(v14, v15, v11, &v25, &v20);
  if (v11 != 13)
  {
    goto LABEL_46;
  }

  v14 = v26;
LABEL_36:
  sub_297E4F0E8(v14, &v22);
  if (v22)
  {
    v22[6079] = 1;
  }

  sub_297E67EB0(v26, &v21);
  v18 = v21;
  if (v21)
  {
    v21[87] = a3;
    v18[88] = a4;
    v18[85] = a5;
    v11 = 13;
    v18[86] = a6;
  }

  else
  {
    v11 = 13;
  }

LABEL_47:
  sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_Mgt_eSeCfgDnldMode");
  return v11;
}

uint64_t phLibNfc_Mgt_DnldGeneralNtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  v9 = 0;
  v5 = 1;
  sub_297E4D930(0, &v11, 4u, 83, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  if (!a2)
  {
    v6 = "phLibNfc_Mgt_DnldGeneralNtfRegister: Invalid input parameters";
LABEL_11:
    sub_297E4E0B0(0, &v11, 4u, 1u, v6);
    goto LABEL_12;
  }

  sub_297E5D114(v11, &v10);
  sub_297E4F0E8(v11, &v9);
  if (!v10)
  {
    v5 = 255;
    v6 = "phLibNfc_Mgt_DnldGeneralNtfRegister: Invalid IOCTL context!!";
    goto LABEL_11;
  }

  if (v9 && (v9[6079] == 1 || v9[6080] == 1 || v9[6083] == 1 || v9[6082] == 1))
  {
    v5 = 111;
  }

  else
  {
    v5 = sub_297E4F450(v11, 179, 0, 0, 0);
    if (!v5)
    {
      v8 = v10;
      *(v10 + 200) = a2;
      *(v8 + 208) = a3;
      sub_297E4D930(0, &v11, 4u, 83, "phLibNfc_Mgt_DnldGeneralNtfRegister");
      goto LABEL_13;
    }
  }

LABEL_12:
  sub_297E4D930(0, &v11, 4u, 83, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  sub_297E5AE60(v11, 179);
  sub_297E96818(v11, v5);
LABEL_13:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  return v5;
}

uint64_t phLibNfc_Mgt_GetTagID(uint64_t a1, unsigned int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4u, 135, "phLibNfc_Mgt_GetTagID");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_Mgt_GetTagID");
  v3 = sub_297E4F050(v11, &v10);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v10 == 0;
  }

  if (v4)
  {
    v5 = v3;
    v6 = " Invalid driver handle or libctx";
LABEL_9:
    sub_297E4E0B0(0, &v11, 4u, 1u, v6);
    v8 = 0;
    goto LABEL_10;
  }

  v7 = sub_297E4F450(v11, 9, 0, 0, 0);
  v5 = v7;
  if (v7)
  {
    v6 = "Get tag id is not allowed in this state";
    goto LABEL_9;
  }

  v8 = sub_297EA6AB4(v10, a2);
LABEL_10:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_Mgt_GetTagID");
  sub_297E4D930(0, &v11, 4u, 135, "phLibNfc_Mgt_GetTagID");
  if (v5)
  {
    sub_297E5AE60(v11, 9);
    sub_297E96818(v11, v5);
  }

  return v8;
}

uint64_t phLibNfc_Mgt_InvalidateSeRmProhibitTimer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4u, 136, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (v6)
  {
    v7 = v5;
    sub_297E4E0B0(0, &v11, 4u, 1u, " Invalid driver handle or libctx");
    if (v7 == 13)
    {
      goto LABEL_15;
    }
  }

  else if (a2)
  {
    if (*(v10 + 2994) == 1 || *(v10 + 2990) == 1 || *(v10 + 2991) == 1 || *(v10 + 2987) == 1 && *(v10 + 3136) == 2)
    {
      v7 = 51;
    }

    else
    {
      v7 = sub_297E4F450(v11, 61, 0, 0, 0);
      if (v7 == 13)
      {
        v9 = v10;
        *(v10 + 6808) = a2;
        *(v9 + 6816) = a3;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(0, &v11, 4u, 1u, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer: Invalid input parameters");
  }

  sub_297E5AE60(v11, 61);
  sub_297E96818(v11, v7);
  sub_297E4D930(0, &v11, 4u, 136, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
LABEL_15:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
  return v7;
}

uint64_t sub_297ECA38C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6, int a7, uint64_t a8, unsigned __int16 *a9)
{
  sub_297E4E1B4(4, a1, 8u, 5u, "phFriNfc_OvrHal_Transceive");
  if (a1 && ((v16 = *(a1 + 256), a9) ? (v17 = a8 == 0) : (v17 = 1), !v17 ? (v18 = a6 == 0) : (v18 = 1), !v18 ? (v19 = a3 == 0) : (v19 = 1), !v19 ? (v20 = a2 == 0) : (v20 = 1), !v20 ? (v21 = v16 == 0) : (v21 = 1), !v21 && (a7 || *(a3 + 4) == 22)))
  {
    *(a1 + 120) = a4;
    v24 = *(a3 + 4);
    if (v24 == 16 || v24 == 12)
    {
      *(a1 + 124) = *a6;
      v25 = a7 - 1;
      if ((a4 & 0xFFFFFFFE) == 0x60)
      {
        v26 = *(a3 + 18);
        *(a1 + 152) = a1 + 264;
        if (v26 != 7 && v26 != 4)
        {
          *(a1 + 160) = v25;
          v22 = 20;
          goto LABEL_21;
        }

        v27 = *(v16 + 9792);
        phOsalNfc_MemCopy();
        v28 = *(v16 + 9792);
        phOsalNfc_MemCopy();
        v25 = a7 + 3;
      }

      else
      {
        *(a1 + 152) = a6 + 1;
      }
    }

    else
    {
      *(a1 + 152) = a6;
      v25 = a7;
    }

    *(a1 + 160) = v25;
    *(a1 + 168) = a8;
    *(a1 + 176) = *a9;
    *(a1 + 232) = a9;
    sub_297ECA568(a1, a2, 8);
    *(a1 + 126) = 500;
    *(v16 + 1532) = 0;
    v22 = sub_297EA14F4(a3, a1 + 120, sub_297ECA5EC, v16);
  }

  else
  {
    v22 = 1;
  }

LABEL_21:
  sub_297E4DFAC(4, a1, 8u, 5u, "phFriNfc_OvrHal_Transceive");
  return v22;
}

uint64_t sub_297ECA568(uint64_t a1, void *a2, char a3)
{
  *a1 = a3;
  sub_297E4E1B4(4, a1, 8u, 5u, "phFriNfc_OvrHal_SetComplInfo");
  *(a1 + 8) = *a2;
  *(a1 + 16) = a2[1];

  return sub_297E4DFAC(4, a1, 8u, 5u, "phFriNfc_OvrHal_SetComplInfo");
}

uint64_t sub_297ECA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8u, 5u, "phFriNfc_OvrHal_CB_Transceive");
  sub_297E4F0E8(v11, &v10);
  if (v10)
  {
    v7 = *(v10 + 6952);
    if (v7)
    {
      if (a4)
      {
        **(v7 + 232) = *(a4 + 8);
      }

      v8 = *(v7 + 8);
      if (v8)
      {
        v8(v11, *(v7 + 16), a5);
      }
    }
  }

  return sub_297E4DFAC(0, &v11, 8u, 5u, "phFriNfc_OvrHal_CB_Transceive");
}

uint64_t sub_297ECA698(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(4, a1, 8u, 5u, "phFriNfc_OvrHal_Reconnect");
  v6 = 1;
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
        v7 = *(a1 + 256);
        if (v7)
        {
          sub_297ECA568(a1, a2, 7);
          v8 = v7 + 188;
          if (sub_297E55558(v7[386], v7[188]))
          {
            v9 = 0;
            *v8 = 0;
            v7[189] = 0;
          }

          else
          {
            v9 = *v8;
          }

          v12 = v9;
          if (sub_297ECD484(v7, &v11, &v12, 0))
          {
            v6 = 255;
          }

          else
          {
            v6 = sub_297ECD24C(v7[1223], v11, sub_297ECA7A4, a1);
          }
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 8u, 5u, "phFriNfc_OvrHal_Reconnect");
  return v6;
}

uint64_t sub_297ECA7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  sub_297E4E1B4(0, &v7, 8u, 5u, "phFriNfc_OvrHal_CB_ConnectDisconnect");
  if (a2)
  {
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 255;
    }

    (*(a2 + 8))(v7, *(a2 + 16), v5);
  }

  return sub_297E4DFAC(0, &v7, 8u, 5u, "phFriNfc_OvrHal_CB_ConnectDisconnect");
}

uint64_t sub_297ECA828(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a3;
  sub_297E4E1B4(4, a1, 8u, 5u, "phFriNfc_OvrHal_Connect");
  v8 = 1;
  if (a1)
  {
    if (a4)
    {
      if (a3)
      {
        if (a2)
        {
          v9 = *(a1 + 256);
          if (v9)
          {
            sub_297ECA568(a1, a2, 6);
            v10 = v9 + 188;
            if (sub_297E55558(v9[386], v9[188]))
            {
              *v10 = 0;
              v9[189] = 0;
              v8 = 255;
              v12 = 0;
            }

            else
            {
              v12 = *v10;
              if (v12 && sub_297ECD484(v9, &v13, &v12, 0) != 255)
              {
                v8 = sub_297ECD24C(v9[1223], v13, sub_297ECA7A4, a1);
              }

              else
              {
                v8 = 255;
              }
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 8u, 5u, "phFriNfc_OvrHal_Connect");
  return v8;
}

uint64_t sub_297ECA950(uint64_t a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Send_ISO_14443_3B_AttribCmd");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 1534) = 29;
    v3 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    *(a1 + 1539) = 3840;
    v4 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    *&v8 = a1 + 1534;
    DWORD2(v8) = 13;
    *&v9 = a1 + 2064;
    DWORD2(v9) = 530;
    WORD3(v7) = 500;
    v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v7, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Send_ISO_14443_3B_AttribCmd");
  return v5;
}

uint64_t sub_297ECAA7C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  LODWORD(v3) = a2;
  v5 = *a3;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ISO_14443_3B_AttribResp");
  if (a1)
  {
    if (v5 == 1)
    {
      v6 = "Invalid Attrib response!!";
    }

    else
    {
      v6 = "Valid Attrib response!!";
    }

    if (v5 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v6);
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ISO_14443_3B_AttribResp");
  return v3;
}

uint64_t sub_297ECAB28(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ISO_14443_3B_PresChkConnComplete");
  if (a1)
  {
    if (*(a1 + 6200))
    {
      sub_297EC2A2C(a1, a2);
    }

    else if (*(a1 + 6480))
    {
      sub_297ECF0FC(a1, a2);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ISO_14443_3B_PresChkConnComplete:ISO_14443_3B Connect callback and Presence Check callback unavailable!!");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ISO_14443_3B_PresChkConnComplete");
  return a2;
}

uint64_t sub_297ECABF8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Ndef_Init");
  if (a1)
  {
    *(a1 + 2934) = 0;
    if (*(a1 + 6872) || (v2 = *(a1 + 9792), v3 = phOsalNfc_GetMemory_Typed(), (*(a1 + 6872) = v3) != 0))
    {
      v4 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      *(a1 + 6880) = 252;
      *(*(a1 + 6872) + 184) = 0;
      v5 = *(a1 + 9792);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      v7 = *(a1 + 6872);
      *(v7 + 184) = Memory_Typed;
      if (Memory_Typed)
      {
        v8 = *(a1 + 9792);
        v9 = *(a1 + 6880);
        phOsalNfc_SetMemory();
        *(a1 + 6952) = 0;
        v10 = *(a1 + 9792);
        *(a1 + 6952) = phOsalNfc_GetMemory_Typed();
        v7 = *(a1 + 6872);
      }

      *(v7 + 2632) = *(a1 + 3000);
      v11 = *(a1 + 9792);
      *(v7 + 2640) = v11;
    }

    else
    {
      v11 = *(a1 + 9792);
    }

    if (*(a1 + 6952))
    {
      phOsalNfc_SetMemory();
      v12 = *(a1 + 6952);
      *(v12 + 256) = a1;
      *(v12 + 80) = a1 + 3000;
      if (*(a1 + 6944) || (v13 = *(a1 + 9792), v14 = phOsalNfc_GetMemory_Typed(), (*(a1 + 6944) = v14) != 0))
      {
        *(a1 + 6904) = 2;
LABEL_14:
        if (*(a1 + 6912) || (v16 = *(a1 + 9792), v17 = phOsalNfc_GetMemory_Typed(), (*(a1 + 6912) = v17) != 0))
        {
          v18 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          v19 = *(a1 + 6912);
          v20 = *(a1 + 3000);
          *(v19 + 400) = a1;
          *(v19 + 408) = v20;
          *(v19 + 416) = *(a1 + 9792);
        }

        else
        {
          sub_297EFC3D8(*(a1 + 9792));
          v22 = *(a1 + 9792);
          phOsalNfc_RaiseException();
        }

        goto LABEL_17;
      }

      v11 = *(a1 + 9792);
    }

    sub_297EFC3D8(v11);
    v15 = *(a1 + 9792);
    phOsalNfc_RaiseException();
    goto LABEL_14;
  }

LABEL_17:

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_Init");
}

uint64_t sub_297ECAE1C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Ndef_DeInit");
  if (a1)
  {
    *(a1 + 6905) = 0;
    v2 = *(a1 + 6872);
    if (v2)
    {
      if (*(v2 + 424))
      {
        v3 = *(a1 + 9792);
        v4 = *(v2 + 424);
        phOsalNfc_FreeMemory();
        v2 = *(a1 + 6872);
        *(v2 + 424) = 0;
      }

      *(v2 + 2640) = 255;
      if (*(v2 + 184))
      {
        v5 = *(a1 + 9792);
        v6 = *(v2 + 184);
        phOsalNfc_FreeMemory();
        *(*(a1 + 6872) + 184) = 0;
      }

      v7 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 6872) = 0;
    }

    v8 = *(a1 + 6912);
    if (v8)
    {
      *(v8 + 16) = 0;
      *(v8 + 40) = 0;
      *(v8 + 56) = 0;
      *(v8 + 72) = 0;
      *(v8 + 400) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 416) = 255;
      v9 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 6912) = 0;
    }

    v10 = *(a1 + 6952);
    if (v10)
    {
      v10[32] = 0;
      if (v10[9])
      {
        v11 = *(a1 + 9792);
        v12 = v10[9];
        phOsalNfc_FreeMemory();
        v10 = *(a1 + 6952);
        v10[9] = 0;
      }

      if (v10[13])
      {
        v13 = *(a1 + 9792);
        v14 = v10[13];
        phOsalNfc_FreeMemory();
        v10 = *(a1 + 6952);
        v10[13] = 0;
      }

      if (v10[14])
      {
        v15 = *(a1 + 9792);
        v16 = v10[14];
        phOsalNfc_FreeMemory();
        *(*(a1 + 6952) + 112) = 0;
      }

      v17 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 6952) = 0;
    }

    if (*(a1 + 6944))
    {
      v18 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 6944) = 0;
    }

    v19 = 0;
    v20 = a1 + 7360;
    do
    {
      if (*(v20 + v19))
      {
        v21 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(v20 + v19) = 0;
      }

      v19 += 8;
    }

    while (v19 != 64);
    if (*(a1 + 7464))
    {
      v22 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 7464) = 0;
    }

    v23 = *(a1 + 7496);
    if (v23 && *(v23 + 24))
    {
      v24 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(*(a1 + 7496) + 24) = 0;
    }

    if (*(a1 + 7504))
    {
      for (i = 400; i != 464; i += 8)
      {
        if (*(*(a1 + 7504) + i))
        {
          v26 = *(a1 + 9792);
          phOsalNfc_FreeMemory();
          *(*(a1 + 7504) + i) = 0;
        }
      }
    }

    if (*(a1 + 8368))
    {
      v27 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 8368) = 0;
    }

    v28 = 0;
    v29 = a1 + 8656;
    do
    {
      if (*(v29 + v28))
      {
        v30 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(v29 + v28) = 0;
      }

      v28 += 8;
    }

    while (v28 != 1024);
    v31 = *(a1 + 9680);
    if (v31)
    {
      do
      {
        if (*(v31 + 656))
        {
          v32 = *(a1 + 9792);
          phOsalNfc_FreeMemory();
          *(v31 + 656) = 0;
        }

        v33 = *(v31 + 672);
        v34 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        v31 = v33;
      }

      while (v33);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_DeInit");
}

uint64_t sub_297ECB0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v18 = a1;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_Reconnect_Mifare_Cb");
  if (a5)
  {
    v7 = 146;
  }

  else
  {
    v7 = 255;
  }

  sub_297E4F0E8(v18, &v15);
  if (v15)
  {
    v8 = *(v15 + 6920);
    if ((v8 - 1) >= 4)
    {
      if (v8 == 5)
      {
        v14[0] = 0;
        v14[1] = 0;
        v9 = *(v15 + 9784);
        v12 = v14;
        v10 = v7;
        v11 = a4;
        goto LABEL_8;
      }

      if (v8)
      {
        return sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Reconnect_Mifare_Cb");
      }

      HIDWORD(v16) = 0;
      v17 = 0;
      v9 = *(v15 + 9784);
      v11 = &v16;
      v10 = v7;
    }

    else
    {
      v9 = *(v15 + 9784);
      v10 = v7;
      v11 = 0;
    }

    v12 = 0;
LABEL_8:
    sub_297E4F450(v9, 119, v10, v11, v12);
  }

  return sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Reconnect_Mifare_Cb");
}

uint64_t sub_297ECB1A4(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Ndef_ReadOnly_Cb");
  if (a1)
  {
    if (sub_297E8DB3C(a1))
    {
      *(a1 + 2934) = 0;
      sub_297E57170(*(a1 + 9784), &v12);
      if (!a2 && v12)
      {
        v4 = 0;
        if (*(a1 + 9796) == 1)
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        *(v12 + 545) = v5;
        v10 = 118;
        goto LABEL_27;
      }

      if (a2 == 10)
      {
        v6 = sub_297F0A90C(*(a1 + 3088));
        if (v6 <= 1)
        {
          v4 = 10;
        }

        else
        {
          v4 = v6;
        }
      }

      else if ((a2 & 0xFFFFFFFD) == 0xB5 || (a2 & 0xFFFFFFFB) == 178 || (a2 & 0xFFFE) == 184 || a2 == 143)
      {
        v4 = a2;
      }

      else
      {
        v4 = 255;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "LibNfc Stack Shut Down in progress");
      v4 = 145;
    }

    v10 = 119;
LABEL_27:
    sub_297E4F450(*(a1 + 9784), v10, v4, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_ReadOnly_Cb");
}

uint64_t sub_297ECB2F4(uint64_t a1, uint64_t a2, int a3)
{
  v14 = 0;
  v15 = a1;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_Ndef_format_Cb");
  if (a2)
  {
    v5 = (a2 + 1504);
    if (sub_297E55558(*(a2 + 3088), *(a2 + 1504)))
    {
      v6 = 0;
      *v5 = 0;
      *(a2 + 1512) = 0;
    }

    else
    {
      v6 = *v5;
    }

    v13 = v6;
    v7 = sub_297ECD484(a2, &v14, &v13, 0);
    v8 = 119;
    LOBYTE(v9) = -1;
    if (v7)
    {
      goto LABEL_18;
    }

    v10 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }

    *(a2 + 2934) = 0;
    if (!a3)
    {
      LOBYTE(v9) = 0;
      v8 = 118;
      goto LABEL_18;
    }

    if (a3 != 0xFF)
    {
      if ((a3 - 178) < 8u)
      {
        LOBYTE(v9) = byte_297F13610[2 * (a3 - 178)];
      }

      goto LABEL_18;
    }

    v11 = *(v10 + 4);
    if (v11 != 16 && v11 != 12 || (*(v10 + 68) & 8) == 0)
    {
LABEL_18:
      sub_297E4F450(*(a2 + 9784), v8, v9, 0, 0);
      return sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Ndef_format_Cb");
    }

    v9 = sub_297ECD24C(*(a2 + 9784), v10, sub_297ECB0A8, a2);
    if (v9 != 13)
    {
      v8 = 119;
      goto LABEL_18;
    }
  }

  else
  {
    sub_297EFC3D8(255);
    phOsalNfc_RaiseException();
  }

  return sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Ndef_format_Cb");
}

uint64_t sub_297ECB488(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Ndef_CheckNdefRsp_Cb");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_CheckNdefRsp_Cb");
  }

  v6 = (a1 + 1504);
  if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v15 = *v6;
    if (!v15)
    {
      v7 = 255;
      v8 = 119;
      goto LABEL_4;
    }

    v12 = sub_297ECD484(a1, &v16, &v15, 0);
    v7 = 255;
    v8 = 119;
    if (v12 || !v16)
    {
      goto LABEL_4;
    }

    v13 = sub_297E8DB3C(a1);
    if (a2 == 145 || !v13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "LibNfc Stack Shut Down in progress");
      v7 = 145;
      v8 = 119;
LABEL_28:
      *(a1 + 2934) = 0;
      goto LABEL_4;
    }

    if (a2 != 157)
    {
      if (a2 == 25)
      {
        v14 = 0;
        *(a3 + 1) = 0;
        *(a1 + 6905) = 1;
        goto LABEL_23;
      }

      if (!a2)
      {
        v14 = *(a3 + 1);
LABEL_23:
        *(a1 + 6904) = 1;
        *(a1 + 6860) = v14;
        *(a1 + 6900) = *(a3 + 2);
        v8 = 118;
LABEL_27:
        v7 = a2;
        goto LABEL_28;
      }

      *(a1 + 6904) = 0;
      v7 = 255;
      v8 = 119;
      if ((a2 - 143) > 0x2A || ((1 << (a2 + 113)) & 0x7C800000209) == 0)
      {
        goto LABEL_28;
      }
    }

    v8 = 119;
    goto LABEL_27;
  }

  *v6 = 0;
  *(a1 + 1512) = 0;
  v7 = 255;
  v8 = 119;
  v15 = 0;
LABEL_4:
  if (a3)
  {
    v9 = *a3;
    if (v9 >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x20301u >> (8 * v9);
    }

    *a3 = v10;
  }

  sub_297E4F450(*(a1 + 9784), v8, v7, a3, 0);
  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_CheckNdefRsp_Cb");
}

uint64_t sub_297ECB664(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Ndef_ReadNdefRsp_Cb");
  if (a1)
  {
    v4 = (a1 + 1504);
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
    {
      v5 = 0;
      *v4 = 0;
      *(a1 + 1512) = 0;
    }

    else
    {
      v5 = *v4;
    }

    v11 = v5;
    v6 = sub_297ECD484(a1, &v12, &v11, 0);
    v7 = 0;
    v8 = 119;
    if (v6 || !v12)
    {
      goto LABEL_23;
    }

    if (!sub_297E8DB3C(a1))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "LibNfc Stack Shut Down in progress");
      a2 = 0;
      goto LABEL_21;
    }

    if (a2 <= 144)
    {
      if (!a2)
      {
        *(*(a1 + 6872) + 209) = *(*(a1 + 6872) + 210);
        v8 = 118;
LABEL_22:
        *(a1 + 2934) = 0;
        v7 = a2;
LABEL_23:
        sub_297E4F450(*(a1 + 9784), v8, v7, 0, 0);
        return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_ReadNdefRsp_Cb");
      }

      if (a2 == 24)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if ((a2 - 145) <= 0x28 && ((1 << (a2 + 111)) & 0x1F200001001) != 0)
      {
LABEL_11:
        *(*(a1 + 6872) + 209) = -1;
LABEL_21:
        v8 = 119;
        goto LABEL_22;
      }

      if (a2 == 255)
      {
        v9 = *(a1 + 6872);
LABEL_20:
        *(v9 + 209) = a2;
        goto LABEL_21;
      }
    }

    v9 = *(a1 + 6872);
    a2 = 255;
    goto LABEL_20;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_ReadNdefRsp_Cb");
}

uint64_t sub_297ECB7F4(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Ndef_WriteNdefRsp_Cb");
  if (a1)
  {
    v4 = (a1 + 1504);
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
    {
      v5 = 0;
      *v4 = 0;
      *(a1 + 1512) = 0;
    }

    else
    {
      v5 = *v4;
    }

    v12 = v5;
    v6 = sub_297ECD484(a1, &v13, &v12, 0);
    v7 = 119;
    if (v6 || !v13)
    {
      goto LABEL_23;
    }

    if (sub_297E8DB3C(a1))
    {
      if (a2 != 145)
      {
        if (!a2)
        {
          if (*(a1 + 6864) <= *(a1 + 6900))
          {
            LOBYTE(a2) = 0;
            v11 = *(a1 + 6896);
            *(*(a1 + 6888) + 8) = v11;
            *(a1 + 6860) = v11;
            *(a1 + 6905) = 0;
            v7 = 118;
          }

          else
          {
            v7 = 119;
            LOBYTE(a2) = 31;
          }

          goto LABEL_22;
        }

        if ((a2 & 0xFFFFFFFD) != 0xB5 && (a2 & 0xFFFFFFFB) != 178 && (a2 - 186) < 0xFFFEu)
        {
          LOBYTE(a2) = -1;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "LibNfc Stack Shut Down in progress");
    }

    v7 = 119;
LABEL_22:
    *(a1 + 2934) = 0;
LABEL_23:
    sub_297E4F450(*(a1 + 9784), v7, a2, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Ndef_WriteNdefRsp_Cb");
}

uint64_t sub_297ECB978(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ClearNdefInfo");
  if (a1)
  {
    *(a1 + 6904) = 2;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ClearNdefInfo");
}

uint64_t sub_297ECB9EC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Pending_Ndeftransv_Cb");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (*(a1 + 6184))
    {
      if (*(a1 + 6312))
      {
        v3 = *(a1 + 6320);
        sub_297E4D930(1, a1 + 9792, 4u, 23, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6312))(*(a1 + 9784), v3, 0, 0, 145);
      }

      else if (*(a1 + 6408))
      {
        v4 = *(a1 + 6416);
        sub_297E4D930(1, a1 + 9792, 4u, 24, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6408))(*(a1 + 9784), v4, 145);
      }

      else if (*(a1 + 6424))
      {
        v5 = *(a1 + 6432);
        sub_297E4D930(1, a1 + 9792, 4u, 25, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6424))(*(a1 + 9784), v5, 145);
      }

      else if (*(a1 + 6440))
      {
        *(a1 + 9796) = 0;
        v6 = *(a1 + 6448);
        sub_297E4D930(1, a1 + 9792, 4u, 27, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6440))(*(a1 + 9784), v6, 145);
      }

      else if (*(a1 + 6824))
      {
        v7 = *(a1 + 6832);
        sub_297E4D930(1, a1 + 9792, 4u, 26, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6824))(*(a1 + 9784), v7, 145);
      }

      else if (*(a1 + 6456))
      {
        v9 = *(a1 + 6464);
        sub_297E4D930(1, a1 + 9792, 4u, 29, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6456))(*(a1 + 9784), v9, 0, 0, 145);
      }
    }
  }

  else
  {
    phOsalNfc_SetMemory();
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Pending_Ndeftransv_Cb");
  return 0;
}

uint64_t sub_297ECBC20(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTagTypeInit");
  if (a1)
  {
    *(a1 + 2832) = 0;
    v2 = sub_297ED041C(a1, *(a1 + 2824), a1 + 2760, 0);
    if (v2 == 13)
    {
      v2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), a1 + 2760, sub_297E5BA84, a1);
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTagTypeInit");
  return v2;
}

uint64_t sub_297ECBCD4(uint64_t a1, int a2, unint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTagTypeResp");
  v6 = 255;
  if (a1 && !a2 && a3)
  {
    v7 = sub_297ED041C(a1, *(a1 + 2824), a1 + 2760, a3);
    if (**(a1 + 2824) == 5)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTagTypeResp");
  return v6;
}

uint64_t sub_297ECBD74(uint64_t a1)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTagTypeMoreInfo");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 1;
    goto LABEL_28;
  }

  v3 = *(a1 + 1504);
  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v5 = *(a1 + 9792);
  v6 = (a1 + 1534);
  phOsalNfc_SetMemory();
  v2 = 0;
  *&v14 = a1 + 2064;
  DWORD2(v14) = 530;
  v7 = **(a1 + 2824);
  if (v7 > 18)
  {
    if (v7 > 22)
    {
      if (v7 != 23)
      {
        if (v7 == 55)
        {
          *v6 = 24720;
          *(a1 + 1538) = 0;
          LODWORD(v12[0]) = 0;
          *&v13 = a1 + 1534;
          DWORD2(v13) = 5;
          goto LABEL_27;
        }

        if (v7 != 26)
        {
          goto LABEL_28;
        }

        goto LABEL_15;
      }

      goto LABEL_24;
    }

    if (v7 != 19)
    {
      if (v7 != 22)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_23:
    v10 = 32680;
LABEL_25:
    *(a1 + 1534) = v10;
    *(a1 + 1536) = 0;
    LODWORD(v12[0]) = 0;
    *&v13 = a1 + 1534;
    DWORD2(v13) = 19;
    v9 = 1;
    goto LABEL_26;
  }

  if (v7 > 13)
  {
    if (v7 != 14)
    {
      if (v7 != 15)
      {
        if (v7 != 18)
        {
          goto LABEL_28;
        }

LABEL_15:
        v8 = 20991856;
LABEL_22:
        *v6 = v8;
        *(a1 + 1538) = 0;
        LODWORD(v12[0]) = 0;
        *&v13 = a1 + 1534;
        DWORD2(v13) = 5;
        v9 = 4;
LABEL_26:
        *(a1 + 2832) = v9;
LABEL_27:
        sub_297ECE3AC(a1, *(v3 + 4), v12, a1 + 2760);
        v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
        goto LABEL_28;
      }

LABEL_24:
      v10 = -88;
      goto LABEL_25;
    }

LABEL_21:
    v8 = 20987760;
    goto LABEL_22;
  }

  if (v7 != 5)
  {
    if (v7 != 11)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  *(a1 + 1534) = 26;
  LODWORD(v12[0]) = 0;
  *&v13 = a1 + 1534;
  DWORD2(v13) = 2;
  sub_297ECE3AC(a1, *(v3 + 4), v12, a1 + 2760);
  v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
  if (v2 == 13)
  {
    *(a1 + 2834) = 1;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTagTypeMoreInfo");
  return v2;
}

uint64_t sub_297ECC000(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTagTypeMoreInfoResp");
  if (!a1)
  {
    goto LABEL_18;
  }

  if (a2 || !a3 || (v6 = *a3) == 0)
  {
    **(a1 + 2824) = 56;
LABEL_18:
    v11 = 255;
    goto LABEL_19;
  }

  v7 = *(a3 + 8);
  if (!v7)
  {
    v9 = *(a1 + 2824);
    LODWORD(v10) = *v9;
    if (*v9 == 55)
    {
      goto LABEL_39;
    }

LABEL_27:
    if (v10 > 22)
    {
      if (v10 == 23)
      {
        v15 = 19;
      }

      else
      {
        if (v10 != 26)
        {
          goto LABEL_34;
        }

        v15 = 22;
      }
    }

    else if (v10 == 15)
    {
      v15 = 11;
    }

    else
    {
      if (v10 != 18)
      {
        goto LABEL_34;
      }

      v15 = 14;
    }

    *v9 = v15;
    sub_297E79810(a1, *(a1 + 2960), 1u);
    goto LABEL_39;
  }

  v8 = *v6;
  v9 = *(a1 + 2824);
  v10 = *v9;
  if (v8 != 144)
  {
    if (v10 == 55)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if (v10 > 0x37)
  {
    goto LABEL_23;
  }

  if (((1 << v10) & 0x4CCC800) != 0)
  {
    goto LABEL_39;
  }

  if (v10 != 55)
  {
LABEL_23:
    if (v7 >= 8 && v8 == 175 && v10 == 5)
    {
      v11 = 0;
      v13 = 7;
      goto LABEL_35;
    }

    goto LABEL_27;
  }

LABEL_10:
  if (v7 < 9)
  {
    goto LABEL_39;
  }

  v11 = 0;
  if (v8 == 4 && v6[8] == 175)
  {
    v12 = v6[1];
    if (v12 != 4)
    {
      if (v12 == 8 && v6[5] == 19)
      {
        v11 = 0;
        v13 = 54;
LABEL_35:
        *v9 = v13;
        goto LABEL_19;
      }

LABEL_39:
      v11 = 0;
      goto LABEL_19;
    }

LABEL_34:
    v11 = 0;
    v13 = 56;
    goto LABEL_35;
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTagTypeMoreInfoResp");
  return v11;
}

uint64_t sub_297ECC1D0(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  *v17 = xmmword_297F1363B;
  *&v17[15] = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CheckMfpEVxSl");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 1;
    goto LABEL_10;
  }

  v3 = *(a1 + 1504);
  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v5 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *&v15 = a1 + 2064;
  DWORD2(v15) = 530;
  v6 = **(a1 + 2824);
  v7 = v6 > 0x1A;
  v8 = (1 << v6) & 0x4CCC800;
  if (v7 || v8 == 0)
  {
    v2 = 0;
  }

  else
  {
    v10 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    LODWORD(v13[0]) = 0;
    *&v14 = a1 + 1534;
    DWORD2(v14) = 19;
    sub_297ECE3AC(a1, *(v3 + 4), v13, a1 + 2760);
    v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CheckMfpEVxSl");
  v11 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297ECC380(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CheckMfpEVxSlResp");
  if (a1)
  {
    if (!a2 && a3)
    {
      if (*a3 && *(a1 + 2824) && *(a3 + 2))
      {
        v6 = **a3;
        if (v6 == 144)
        {
          v7 = 1;
          goto LABEL_14;
        }

        if (v6 == 11)
        {
          v7 = 4;
LABEL_14:
          a2 = 0;
          *(a1 + 2832) = v7;
          goto LABEL_12;
        }
      }

      a2 = 0;
    }
  }

  else
  {
    a2 = 255;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CheckMfpEVxSlResp");
  return a2;
}

uint64_t sub_297ECC448(uint64_t a1)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CheckTagTypeMfpEV1");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v3 = *(a1 + 1504);
    v4 = *(v3 + 96);
    v5 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v2 = 0;
    *&v11 = a1 + 2064;
    DWORD2(v11) = 530;
    v7 = **(a1 + 2824);
    if (v7 > 0x1B)
    {
      goto LABEL_11;
    }

    if (((1 << v7) & 0x4CCC800) != 0)
    {
      goto LABEL_7;
    }

    if (((1 << v7) & 0x1111000) == 0)
    {
      if (v7 != 27)
      {
        goto LABEL_11;
      }

      if ((v4 & 0x20) != 0)
      {
LABEL_7:
        *(a1 + 1534) = 96;
        LODWORD(v9[0]) = 0;
        *&v10 = a1 + 1534;
        DWORD2(v10) = 1;
LABEL_10:
        sub_297ECE3AC(a1, *(v3 + 4), v9, a1 + 2760);
        v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
        goto LABEL_11;
      }

      if ((v4 & 8) == 0)
      {
        v2 = 0;
        goto LABEL_11;
      }
    }

    *(a1 + 1534) = 24578;
    LODWORD(v9[0]) = 0;
    *&v10 = a1 + 1534;
    DWORD2(v10) = 2;
    *(a1 + 2832) = 2;
    goto LABEL_10;
  }

  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
LABEL_4:
  v2 = 1;
LABEL_11:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CheckTagTypeMfpEV1");
  return v2;
}

uint64_t sub_297ECC5F8(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CheckTagTypeMfpEV1Resp");
  if (a1)
  {
    if (!a2 && a3)
    {
      v6 = *a3;
      if (*a3)
      {
        v7 = *(a1 + 2824);
        if (v7)
        {
          v8 = *(a1 + 2832);
          if (v8 == 4)
          {
            if (*(a3 + 2) >= 8u && *v6 == 175 && v6[1] == 4)
            {
              v11 = v6[2];
              if ((v11 | 0x80) == 0x82)
              {
                if ((v6[4] & 0xF) == 1 && v6[6] == 22)
                {
                  v10 = 30;
                  goto LABEL_67;
                }

                if ((v11 | 0x80) == 0x82)
                {
                  if ((v6[4] & 0xF) == 1 && v6[6] == 24)
                  {
                    v10 = 33;
                    goto LABEL_67;
                  }

                  if ((v11 | 0x80) == 0x82)
                  {
                    if ((v6[4] & 0xF) == 2 && v6[6] == 22)
                    {
                      v10 = 36;
                      goto LABEL_67;
                    }

                    if ((v11 | 0x80) == 0x82 && (v6[4] & 0xF) == 2 && v6[6] == 24)
                    {
                      v10 = 39;
                      goto LABEL_67;
                    }
                  }
                }
              }
            }
          }

          else if (v8 == 2)
          {
            if (*(a3 + 2) >= 9u && v6[1] == 175 && v6[2] == 4)
            {
              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 1 && v6[7] == 22)
              {
                v10 = 29;
                goto LABEL_67;
              }

              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 1 && v6[7] == 24)
              {
                v10 = 32;
                goto LABEL_67;
              }

              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 2 && v6[7] == 22)
              {
                v10 = 35;
                goto LABEL_67;
              }

              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 2 && v6[7] == 24)
              {
                v10 = 38;
                goto LABEL_67;
              }
            }
          }

          else if (v8 == 1 && *(a3 + 2) >= 8u && *v6 == 175 && v6[1] == 4)
          {
            v9 = v6[2];
            if ((v9 | 0x80) == 0x82)
            {
              if ((v6[4] & 0xF) == 1 && v6[6] == 22)
              {
                v10 = 28;
LABEL_67:
                a2 = 0;
                *v7 = v10;
                goto LABEL_69;
              }

              if ((v9 | 0x80) == 0x82)
              {
                if ((v6[4] & 0xF) == 1 && v6[6] == 24)
                {
                  v10 = 31;
                  goto LABEL_67;
                }

                if ((v9 | 0x80) == 0x82)
                {
                  if ((v6[4] & 0xF) == 2 && v6[6] == 22)
                  {
                    v10 = 34;
                    goto LABEL_67;
                  }

                  if ((v9 | 0x80) == 0x82 && (v6[4] & 0xF) == 2 && v6[6] == 24)
                  {
                    v10 = 37;
                    goto LABEL_67;
                  }
                }
              }
            }
          }
        }
      }

      a2 = 0;
    }
  }

  else
  {
    a2 = 255;
  }

LABEL_69:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CheckTagTypeMfpEV1Resp");
  return a2;
}

uint64_t sub_297ECC974(uint64_t a1)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DeselectCmdMfpSL1");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 1;
    goto LABEL_9;
  }

  v3 = *(a1 + 1504);
  v4 = *(v3 + 96);
  v5 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v6 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *&v11 = a1 + 2064;
  DWORD2(v11) = 530;
  v7 = **(a1 + 2824);
  if (v7 <= 0x20 && (((1 << v7) & 0x121111000) != 0 || v7 == 27 && (v4 & 8) != 0))
  {
    *(a1 + 1534) = -62;
    LODWORD(v9[0]) = 0;
    *&v10 = a1 + 1534;
    DWORD2(v10) = 1;
  }

  else
  {
    if (*(a1 + 2833) != 1 || (v7 | 2) != 3)
    {
      v2 = 0;
      goto LABEL_9;
    }

    *(a1 + 1534) = -62;
    LODWORD(v9[0]) = 0;
    *&v10 = a1 + 1534;
    DWORD2(v10) = 1;
  }

  sub_297ECE3AC(a1, *(v3 + 4), v9, a1 + 2760);
  v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeselectCmdMfpSL1");
  return v2;
}

uint64_t sub_297ECCB24(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DeselectCmdMfpSL1Resp");
  if (a1)
  {
    if (!a2 && a3)
    {
      if (*a3 && *(a1 + 2824) && a3[2] && *(*a3 + 1) == 194)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_DeselectCmdMfpSL1Resp : Deselect Cmd succeeded");
      }

      a2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_DeselectCmdMfpSL1Resp : Invalid Libnfc Context");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeselectCmdMfpSL1Resp");
  return a2;
}

uint64_t sub_297ECCC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTagTypeSeqComplete");
  if (a1)
  {
    v6 = *(a1 + 2824);
    v7 = *v6;
    if (a2 == 44 && v7 == 5)
    {
      *(a1 + 2960) = &qword_2A1A92A40;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v8 = qword_2A1A92A40;
      if (qword_2A1A92A40)
      {
        v8 = 0;
        v9 = off_2A1A92A50;
        do
        {
          ++v8;
          v10 = *v9;
          v9 += 2;
        }

        while (v10);
      }

      *(a1 + 2953) = v8;
      LODWORD(a2) = sub_297E5588C(a1, 0, a3);
      if (a2 == 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetTagTypeSeqComplete ; Success");
        a2 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if (a2 == 150 && v7 == 5)
      {
        goto LABEL_22;
      }

      if (a2 == 44 && v7 == 40)
      {
        *v6 = 55;
        goto LABEL_22;
      }

      if (*(a1 + 2833) == 1 && (v7 | 2) == 3)
      {
        *(a1 + 2833) = 0;
        goto LABEL_22;
      }
    }

    if (a2)
    {
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_GetTagTypeSeqComplete : Failed with Status code");
      if (a2 == 10)
      {
        v11 = sub_297F0A90C(*(a1 + 3088));
        if (v11 <= 1)
        {
          v12 = 10;
        }

        else
        {
          v12 = v11;
        }
      }

      else if ((a2 & 0xFFFFFFFD) == 0xB5 || (a2 & 0xFFFFFFFB) == 178 || (a2 & 0xFFFE) == 184 || a2 == 143)
      {
        v12 = a2;
      }

      else
      {
        v12 = 255;
      }

      **(a1 + 2824) = 56;
      v13 = 119;
      goto LABEL_36;
    }

LABEL_22:
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetTagTypeSeqComplete ; Success");
    v12 = 0;
    v13 = 118;
LABEL_36:
    a2 = sub_297E4F450(*(a1 + 9784), v13, v12, 0, 0);
  }

LABEL_37:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTagTypeSeqComplete");
  return a2;
}

uint64_t sub_297ECCE24(uint64_t a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMfUlcReadPage");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 255;
    goto LABEL_5;
  }

  v4 = *(a1 + 1504);
  v5 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v6 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v2 = 0;
  *&v9 = a1 + 2064;
  DWORD2(v9) = 530;
  if (**(a1 + 2824) == 7)
  {
    *(a1 + 1534) = 560;
    LODWORD(v7[0]) = 0;
    *&v8 = a1 + 1534;
    DWORD2(v8) = 2;
    sub_297ECE3AC(a1, *(v4 + 4), v7, a1 + 2760);
    v2 = sub_297F06F3C(*(a1 + 3088), v4, a1 + 2760, sub_297E5BA84, a1);
  }

LABEL_5:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMfUlcReadPage");
  return v2;
}

uint64_t sub_297ECCF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMfUlcReadPageResp");
  if (a1 && (v6 = *(a1 + 2824)) != 0)
  {
    *v6 = 7;
    if (!a2 && a3)
    {
      v7 = *a3;
      if (*a3 && *(a3 + 8) == 16 && !v7[16] && v7[2] == 9 && v7[4] == 225 && v7[5] >= 0x10u && v7[6] == 18 && !v7[7])
      {
        a2 = 0;
        *v6 = 8;
      }

      else
      {
        a2 = 0;
      }
    }
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMfUlcReadPageResp");
  return a2;
}

uint64_t sub_297ECD06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MifareULTagTypeSeqComplete");
  if (a1)
  {
    if (a2 == 44 && **(a1 + 2824) == 5)
    {
      if (*(a1 + 2834) != 1)
      {
        LODWORD(a2) = 44;
        goto LABEL_16;
      }

      *(a1 + 2960) = &qword_2A1A92AB0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v6 = qword_2A1A92AB0;
      if (qword_2A1A92AB0)
      {
        v6 = 0;
        v7 = off_2A1A92AC0;
        do
        {
          ++v6;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }

      *(a1 + 2953) = v6;
      a2 = sub_297E5588C(a1, 0, a3);
      if (a2 == 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_MifareULTagTypeSeqComplete ; Success");
        a2 = 0;
        *(a1 + 2834) = 0;
        goto LABEL_28;
      }
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_MifareULTagTypeSeqComplete ; Success");
      v12 = 118;
      goto LABEL_27;
    }

    if (a2 == 10)
    {
      v9 = sub_297F0A90C(*(a1 + 3088));
      if (v9 <= 1)
      {
        a2 = 10;
      }

      else
      {
        a2 = v9;
      }

LABEL_25:
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_MifareULTagTypeSeqComplete : Failed with Status code");
      **(a1 + 2824) = 56;
      v12 = 119;
LABEL_27:
      *(a1 + 2834) = 0;
      a2 = sub_297E4F450(*(a1 + 9784), v12, a2, 0, 0);
      goto LABEL_28;
    }

LABEL_16:
    if ((a2 - 186) >= 0xFFFBu || a2 == 178 || a2 == 121)
    {
      a2 = a2;
    }

    else
    {
      a2 = 255;
    }

    goto LABEL_25;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MifareULTagTypeSeqComplete");
  return a2;
}

uint64_t sub_297ECD24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = 1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_297E4E1B4(0, &v24, 4u, 5u, "phLibNfc_RemoteDev_InternalConnect");
  v7 = sub_297E4F050(v24, &v20);
  v8 = v20;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v20 == 0;
  }

  if (v9)
  {
    goto LABEL_13;
  }

  if (!a2 || !a3)
  {
    v7 = 1;
    sub_297E4E0B0(0, &v24, 4u, 1u, "Invalid input Parameter");
    goto LABEL_13;
  }

  *(v20 + 1488) = 1;
  v22 = a2;
  if (sub_297ECD484(v8, &v22, &v21, 1))
  {
    v10 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
    v11 = v20 + 9792;
LABEL_12:
    sub_297E4E0B0(1, v11, 4u, 1u, v10);
    v7 = 149;
    goto LABEL_13;
  }

  if (sub_297E8E7EC(v20, v21))
  {
    v10 = "Validation of NCI RemoteDev Handle Failed";
    v11 = v20 + 9792;
    goto LABEL_12;
  }

  v13 = *(v20 + 1504);
  if (v21 != v13)
  {
    if (!v21 || v13)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (!v21)
  {
LABEL_24:
    sub_297E4E0B0(1, v20 + 9792, 4u, 1u, "Connected Handle is not same as passed handle");
    v7 = 255;
    goto LABEL_13;
  }

  if (*(v20 + 1512) != v21)
  {
LABEL_20:
    v14 = v21[4];
    if (v14 > 127)
    {
      if (v14 == 128 || v14 == 129)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v14 = 2;
        goto LABEL_29;
      }

      if (v14 == 5)
      {
        v14 = 3;
LABEL_29:
        v23 = v14;
        v15 = sub_297EE5FD4(v21, (v20 + 760), (v20 + 761));
        v17 = v20;
        v16 = v21;
        *(v20 + 1504) = v21;
        if (v15)
        {
          v7 = 1;
          goto LABEL_13;
        }

        v18 = sub_297ECD6F0(v22, v16, &v23, v17);
        goto LABEL_33;
      }
    }

    v14 = 1;
    goto LABEL_29;
  }

  v18 = sub_297ECD57C(v20, v22, v21);
LABEL_33:
  v7 = v18;
  if (v18 == 13)
  {
    v19 = v20;
    *(v20 + 6200) = a3;
    *(v19 + 6208) = a4;
  }

LABEL_13:
  sub_297E4DFAC(0, &v24, 4u, 5u, "phLibNfc_RemoteDev_InternalConnect");
  return v7;
}

uint64_t sub_297ECD484(uint64_t a1, void *a2, void *a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MapRemoteDevHandle");
  v8 = 255;
  if (a1 && a2 && a3)
  {
    v9 = *(a1 + 762);
    if (a4 == 1)
    {
      if (*(a1 + 762))
      {
        v10 = (a1 + 1248);
        while (*(v10 - 1) != *a2)
        {
          v10 += 2;
          if (!--v9)
          {
            goto LABEL_14;
          }
        }

        a2 = a3;
LABEL_16:
        v8 = 0;
        *a2 = *v10;
        goto LABEL_17;
      }
    }

    else if (*(a1 + 762))
    {
      v10 = (a1 + 1240);
      while (v10[1] != *a3)
      {
        v10 += 2;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_16;
    }

LABEL_14:
    v8 = 149;
  }

LABEL_17:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MapRemoteDevHandle");
  return v8;
}

uint64_t sub_297ECD57C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 1;
  v12 = 1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RfConnect_Twice");
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_20;
  }

  v7 = a3[4];
  if (v7 > 127)
  {
    if (v7 == 128)
    {
      LODWORD(v6) = 128;
      goto LABEL_15;
    }

    if (v7 == 129)
    {
      LODWORD(v6) = 129;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v7 == 4)
  {
    LODWORD(v6) = 2;
    v12 = 2;
    goto LABEL_18;
  }

  if (v7 != 5)
  {
LABEL_11:
    v12 = 1;
    if (v7 != 2)
    {
      goto LABEL_16;
    }

LABEL_18:
    v8 = sub_297ECEC94(a1, a3, v6);
LABEL_19:
    v6 = v8;
    goto LABEL_20;
  }

  LODWORD(v6) = 3;
LABEL_15:
  v12 = v6;
LABEL_16:
  if (!sub_297EE0544(a1, a3) || a3[1] == 25)
  {
    goto LABEL_18;
  }

  v10 = a3[4];
  v6 = 255;
  if (v10 <= 6 && ((1 << v10) & 0x4A) != 0)
  {
    v11 = sub_297EE5FD4(a3, (a1 + 760), (a1 + 761));
    *(a1 + 1504) = a3;
    if (v11)
    {
      v6 = 1;
      goto LABEL_20;
    }

    v8 = sub_297ECD6F0(a2, a3, &v12, a1);
    goto LABEL_19;
  }

LABEL_20:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RfConnect_Twice");
  return v6;
}

uint64_t sub_297ECD6F0(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  sub_297E4E1B4(2, a4, 4u, 5u, "phLibNfc_PrepareConnect");
  v8 = 1;
  if (a3 && a2 && a1 && a4)
  {
    if (*a2 == 1)
    {
      if (sub_297E56FC8(*(a4 + 9784)) == 5 && **(a4 + 856) == 1 && !*(a4 + 2933))
      {
        sub_297ECE0E4(a4, 0, a2);
        v8 = 0;
        goto LABEL_42;
      }

      v9 = *(a2 + 16);
      if (v9 != 3)
      {
        if (v9 == 138)
        {
          if (!*(a4 + 2933))
          {
            sub_297E4E0B0(1, a4 + 9792, 4u, 2u, "Starting timer for phLibNfc_RemoteDev_ConnectTimer_Cb");
            sub_297EFD338(*(a4 + 9792), *(a4 + 1496));
            v10 = *(a4 + 9792);
            v11 = *(a4 + 1496);
            if (phOsalNfc_Timer_Start())
            {
LABEL_28:
              v8 = 255;
              goto LABEL_42;
            }

            v12 = *(a4 + 1496);
            v13 = a4 + 9792;
LABEL_30:
            sub_297E687D8(1, v13, v12, 4u, 4u, "phLibNfc_PrepareConnect");
            v8 = 13;
            goto LABEL_42;
          }
        }

        else if (v9 == 4 && !*(a4 + 2933))
        {
          if (sub_297F08B18(*(a4 + 3088), sub_297EC2A2C, a4) == 13)
          {
            v8 = 13;
          }

          else
          {
            v8 = 255;
          }

          goto LABEL_42;
        }

        goto LABEL_24;
      }

      if (*(a4 + 2933))
      {
LABEL_24:
        if (*(a2 + 4) != 23 && sub_297EE0544(a4, a2) && !*(a4 + 2933))
        {
          v8 = sub_297ECDB00(a4, a1, a2);
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      *(a4 + 2960) = &qword_2A1A92900;
      *(a4 + 2952) = 0;
      *(a4 + 2954) = 0;
      v16 = qword_2A1A92900;
      if (qword_2A1A92900)
      {
        v16 = 0;
        v17 = &qword_2A1A92910;
        do
        {
          ++v16;
          v18 = *v17;
          v17 += 2;
        }

        while (v18);
      }

      *(a4 + 2953) = v16;
      v19 = sub_297E5588C(a4, 0, 0);
      if (v19 == 143 || v19 == 13)
      {
        v8 = v19;
      }

      else
      {
        v8 = 255;
      }
    }

    else
    {
      if (*(a4 + 2933) && *(a4 + 762) == 1)
      {
LABEL_27:
        sub_297EFD338(*(a4 + 9792), *(a4 + 1496));
        v14 = *(a4 + 9792);
        v15 = *(a4 + 1496);
        if (phOsalNfc_Timer_Start())
        {
          goto LABEL_28;
        }

        v12 = *(a4 + 1496);
        v13 = a4 + 9792;
        goto LABEL_30;
      }

      v8 = sub_297F065F8(*(a4 + 3088), a2, *a3, sub_297ECE0E4, a4);
      if (v8 == 13)
      {
        *(a4 + 9776) = 1;
      }
    }
  }

LABEL_42:
  sub_297E4DFAC(2, a4, 4u, 5u, "phLibNfc_PrepareConnect");
  return v8;
}

uint64_t sub_297ECDA20(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 4u, 4u, "phLibNfc_RemoteDev_ConnectTimer_Cb");
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_RemoteDev_ConnectTimer_Cb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
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
    v6 = 0;
  }

  else
  {
LABEL_6:
    v6 = 255;
  }

  sub_297ECE0E4(a2, v6, 0);

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_RemoteDev_ConnectTimer_Cb");
}

uint64_t sub_297ECDB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InternalPrepareConnect");
  v6 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v7 = *(a2 + 4);
  v8 = 1;
  if (v7 <= 15)
  {
    if ((v7 - 13) < 3 || v7 == 11)
    {
LABEL_12:
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v10 = "phLibNfc_PrepareConnect_ISO14443_4A";
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareConnect_ISO14443_4A");
      v11 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      LODWORD(v35) = 0;
      *&v38 = &unk_2A13A5CD2;
      DWORD2(v38) = 2;
      v12 = &unk_2A18BDEA0;
LABEL_13:
      *&v37 = v12;
      DWORD2(v37) = 7;
LABEL_27:
      v23 = sub_297ECE3AC(a1, *(a3 + 4), &v35, a1 + 5376);
      v24 = a1;
      v25 = v10;
      goto LABEL_28;
    }

    if (v7 != 12)
    {
      goto LABEL_34;
    }

LABEL_25:
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = "phLibNfc_PrepareConnect_MifareUL";
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareConnect_MifareUL");
    v19 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    BYTE4(v35) = 2;
    BYTE10(v35) = 1;
    LODWORD(v35) = 48;
    *&v38 = &byte_2A13A5CF9;
    DWORD2(v38) = 19;
    *&v37 = 0;
    DWORD2(v37) = 0;
    goto LABEL_27;
  }

  if (v7 <= 20)
  {
    if (v7 != 16)
    {
      if (v7 == 18)
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v10 = "phLibNfc_PrepareConnect_14443_3B";
        sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareConnect_14443_3B");
        v20 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        LODWORD(v35) = 0;
        byte_2A13A5CDC = 29;
        v21 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        unk_2A13A5CE1 = 3840;
        v22 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        DWORD2(v37) = 13;
        *&v37 = &byte_2A13A5CDC;
        *&v38 = &unk_2A13A5CD4;
        DWORD2(v38) = 2;
        goto LABEL_27;
      }

      if (v7 != 19)
      {
        goto LABEL_34;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

  switch(v7)
  {
    case 21:
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareConnect_Felica");
      for (i = 0; i != 8; ++i)
      {
        *(&unk_2A18BDEA0 + i + 16) = *(a3 + 36 + i);
      }

      v32 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      LODWORD(v35) = 240;
      *&v38 = &unk_2A13A5D0C;
      DWORD2(v38) = 27;
      *&v37 = &unk_2A18BDEAE;
      DWORD2(v37) = 16;
      v23 = sub_297ECE3AC(a1, *(a3 + 4), &v35, a1 + 5376);
      v25 = "phLibNfc_PrepareConnect_Felica";
      break;
    case 22:
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v10 = "phLibNfc_PrepareConnect_Jewel";
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareConnect_Jewel");
      v30 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      LODWORD(v35) = 0;
      *&v38 = &unk_2A13A5CD6;
      DWORD2(v38) = 6;
      v12 = &unk_2A18BDEA7;
      goto LABEL_13;
    case 23:
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareConnect_Iso15693");
      v13 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v14 = 32 * (*(a3 + 44) != 0);
      if (*(a3 + 42) == 2)
      {
        v15 = ((32 * ((*(a3 + 41) & 0xFC) - 44)) | (((*(a3 + 41) & 0xFC) - 44) >> 3));
        if (v15 <= 6 && ((1 << v15) & 0x59) != 0)
        {
          v14 |= 8u;
        }
      }

      v16 = v14 | 2;
      v17 = DWORD2(v37);
      if (DWORD2(v37) <= 0xF)
      {
        v18 = DWORD2(v37) + 1;
        ++DWORD2(v37);
        *(&unk_2A13A5CD2 + v17 + 23) = v16;
        if (v17 == 15)
        {
          LODWORD(v17) = 16;
        }

        else
        {
          LODWORD(v17) = v17 + 2;
          DWORD2(v37) = v17;
          *(&unk_2A13A5CD2 + v18 + 23) = 32;
        }
      }

      if ((v16 & 0x20) != 0)
      {
        v33 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        v34 = -8 - DWORD2(v37);
        if (DWORD2(v37) > 0xFFFFFFF8)
        {
          v34 = 0;
        }

        LODWORD(v17) = -v34;
        DWORD2(v37) = v17;
      }

      if (v17 <= 0xF)
      {
        DWORD2(v37) = v17 + 1;
        *(&unk_2A13A5CD2 + v17 + 23) = 0;
        if ((v16 & 8) != 0 && v17 != 15)
        {
          DWORD2(v37) = v17 + 2;
          *(&unk_2A13A5CD2 + v17 + 24) = 0;
        }
      }

      LODWORD(v35) = 0;
      *&v37 = &unk_2A13A5CE9;
      *&v38 = &unk_2A13A5D27;
      DWORD2(v38) = 38;
      v23 = sub_297ECE3AC(a1, *(a3 + 4), &v35, a1 + 5376);
      v25 = "phLibNfc_PrepareConnect_Iso15693";
      break;
    default:
      goto LABEL_34;
  }

  v24 = a1;
LABEL_28:
  sub_297E4DFAC(2, v24, 4u, 5u, v25);
  if (v23)
  {
    v8 = 1;
  }

  else
  {
    *(a1 + 5382) = 500;
    *(a1 + 2960) = off_2A1A90C88;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v26 = off_2A1A90C88[0];
    if (off_2A1A90C88[0])
    {
      v26 = 0;
      v27 = &qword_2A1A90C98;
      do
      {
        ++v26;
        v28 = *v27;
        v27 += 2;
      }

      while (v28);
    }

    *(a1 + 2953) = v26;
    v8 = sub_297E5588C(a1, 0, a1 + 5376);
  }

LABEL_34:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InternalPrepareConnect");
  return v8;
}

uint64_t sub_297ECE0E4(uint64_t a1, uint64_t a2, char *a3)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RemoteDev_Connect_Cb");
  if (a1)
  {
    if (a2 == 121)
    {
      v10 = 123;
      LODWORD(v9) = 1;
    }

    else
    {
      if (a2 != 10)
      {
        if (a2)
        {
          LODWORD(v9) = 0;
          if (a2 == 143)
          {
            a2 = 143;
          }

          else
          {
            a2 = 255;
          }
        }

        else
        {
          v6 = *(a1 + 1512);
          if (!v6)
          {
            *(a1 + 1512) = a3;
            v6 = a3;
          }

          v19 = v6;
          *(a1 + 1504) = v6;
          if (sub_297ECD484(a1, &v18, &v19, 0))
          {
            v7 = "Mapping on NCI RemoteDev Handle to LibNfc RemoteDev Handle Failed";
          }

          else
          {
            if (!sub_297EE50BC(a1, v18, v19))
            {
              LODWORD(v9) = 0;
              a2 = 0;
              *v18 = *v19;
              *(a1 + 1531) = 0;
              v10 = 118;
              goto LABEL_25;
            }

            v7 = "Getting LibNfc RemoteDev Info by using LibNfc RemoteDev Handle Failed";
          }

          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v7);
          LODWORD(v9) = 0;
          a2 = 255;
        }

        goto LABEL_24;
      }

      v8 = (a1 + 1504);
      if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
      {
        v9 = *v8;
        v19 = v9;
        if (v9)
        {
          a2 = 10;
          if (*(v9 + 1) == 20)
          {
            v11 = sub_297F0A90C(*(a1 + 3088));
            LODWORD(v9) = 0;
            if (v11 <= 1)
            {
              a2 = 10;
            }

            else
            {
              a2 = v11;
            }
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }

        else
        {
          a2 = 10;
        }

LABEL_24:
        v10 = 119;
        goto LABEL_25;
      }

      LODWORD(v9) = 0;
      *v8 = 0;
      *(a1 + 1512) = 0;
      a2 = 10;
      v10 = 119;
      v19 = 0;
    }

LABEL_25:
    if (*(a1 + 1488) == 1 && (v12 = *(a1 + 6200)) != 0)
    {
      v13 = *(a1 + 6208);
      *(a1 + 6200) = 0;
      *(a1 + 6208) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Invoking upper layer callback");
      sub_297E4D930(1, a1 + 9792, 4u, 15, "phLibNfc_RemoteDev_Connect_Cb");
      v12(*(a1 + 9784), v13, v18, v18, a2);
      if (!a2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9)
      {
        v14 = &v17;
        v10 = 123;
        v15 = a2;
      }

      else
      {
        v15 = a2;
        v14 = v18;
      }

      if (!sub_297E4F450(*(a1 + 9784), v10, v15, v18, v14))
      {
        goto LABEL_34;
      }
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_RemoteDev_Connect_Cb: Lower layer has returned failure status");
    *(a1 + 1504) = 0;
LABEL_34:
    *(a1 + 9776) = 0;
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RemoteDev_Connect_Cb");
  }

  sub_297E4E0B0(2, 0, 4u, 1u, "Lower layer has returned Invalid LibNfc context");
  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RemoteDev_Connect_Cb");
}

uint64_t sub_297ECE3AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MapCmds");
  v8 = 1;
  if (!a1 || !a3 || !a4)
  {
    goto LABEL_113;
  }

  v8 = 0;
  *(a4 + 6) = *(a3 + 6);
  if (a2 <= 15)
  {
    if (a2 > 7)
    {
      if ((a2 - 8) < 7)
      {
        goto LABEL_7;
      }

      goto LABEL_113;
    }

    if ((a2 - 5) >= 3 && a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_113;
      }

LABEL_7:
      v48 = 0;
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MifareMap");
      v9 = *a3;
      v8 = 1;
      if (*a3 > 127)
      {
        if (v9 <= 175)
        {
          if ((v9 - 128) >= 2)
          {
            if (v9 == 160)
            {
              if (*(a3 + 32) && *(a3 + 40))
              {
                v10 = a1 + 1534;
                v11 = -96;
                goto LABEL_97;
              }
            }

            else if (v9 == 162 && *(a3 + 32) && *(a3 + 40))
            {
              v10 = a1 + 1534;
              v11 = -94;
LABEL_97:
              *(a1 + 1534) = v11;
              *(a1 + 1535) = *(a3 + 4);
              v30 = *(a1 + 9792);
              v31 = *(a3 + 32);
              v32 = *(a3 + 40);
              phOsalNfc_MemCopy();
              *(a4 + 16) = v10;
              v33 = *(a3 + 40);
              v19 = v33 != -1;
              v34 = -2 - v33;
              if (!v19)
              {
                v34 = 0;
              }

              *(a4 + 24) = -v34;
              *a4 = 0;
              *(a4 + 32) = a1 + 2064;
              v29 = 530;
              goto LABEL_105;
            }

LABEL_111:
            v38 = "phLibNfc_MifareMap";
LABEL_112:
            sub_297E4DFAC(2, a1, 4u, 5u, v38);
            goto LABEL_113;
          }

          v48 = *(a3 + 4);
          sub_297ECF070(a1, &v48);
          *(a1 + 1534) = *a3;
          v24 = v48;
          *(a1 + 1535) = v48;
          if (*a3 == 129)
          {
            v25 = *(a3 + 5) | 0x80;
          }

          else
          {
            v25 = *(a3 + 5);
          }

          *(a1 + 1536) = v25;
          *(a4 + 16) = a1 + 1534;
          *(a4 + 24) = 3;
          *a4 = 4;
          goto LABEL_70;
        }

        if ((v9 - 192) < 3)
        {
          if (!*(a3 + 32) || !*(a3 + 40))
          {
            goto LABEL_111;
          }

          *(a1 + 1534) = v9;
          *(a1 + 1535) = *(a3 + 4);
          v15 = *(a1 + 9792);
          v16 = *(a3 + 32);
          v17 = *(a3 + 40);
          phOsalNfc_MemCopy();
          *(a4 + 16) = a1 + 1534;
          v18 = *(a3 + 40);
          v19 = v18 != -1;
          v20 = -2 - v18;
          if (!v19)
          {
            v20 = 0;
          }

          v21 = -v20;
          goto LABEL_92;
        }

        if (v9 != 176 || !*(a3 + 48) || !*(a3 + 56))
        {
          goto LABEL_111;
        }

        v22 = a1 + 1534;
        v23 = -80;
LABEL_91:
        *(a1 + 1534) = v23;
        *(a1 + 1535) = *(a3 + 4);
        *(a4 + 16) = v22;
        v21 = 2;
LABEL_92:
        *(a4 + 24) = v21;
        *a4 = 0;
        goto LABEL_93;
      }

      if (v9 <= 2)
      {
        if (!v9)
        {
          if (*(a3 + 32) && *(a3 + 40) && *(a3 + 48) && *(a3 + 56))
          {
            *a4 = 0;
            *(a4 + 16) = *(a3 + 32);
            *(a4 + 32) = *(a3 + 48);
            *(a4 + 24) = *(a3 + 40);
            *(a4 + 40) = *(a3 + 56);
            if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)) && *(*(a1 + 1504) + 4) == 8)
            {
              v28 = *(a3 + 32);
              if (*v28 == 194 && v28[1] == 255)
              {
                *(a1 + 1530) = 3;
              }
            }

            goto LABEL_106;
          }

          goto LABEL_111;
        }

        if (v9 != 1)
        {
          if (v9 != 2 || !*(a3 + 32) || !*(a3 + 40))
          {
            goto LABEL_111;
          }

          *a4 = 1;
          *(a4 + 4) = *(a3 + 4);
          *(a4 + 16) = *(a3 + 32);
          *(a4 + 24) = *(a3 + 40);
          *(a4 + 32) = *(a3 + 48);
          v14 = (a3 + 56);
          goto LABEL_104;
        }

        if (!*(a3 + 48))
        {
          goto LABEL_111;
        }

        v14 = (a3 + 56);
        if (!*(a3 + 56))
        {
          goto LABEL_111;
        }

        v27 = 2;
LABEL_103:
        *a4 = v27;
        *(a4 + 4) = *(a3 + 4);
        *(a4 + 5) = *(a3 + 10);
        *(a4 + 16) = *(a3 + 32);
        *(a4 + 24) = *(a3 + 40);
        *(a4 + 32) = *(a3 + 48);
LABEL_104:
        v29 = *v14;
        goto LABEL_105;
      }

      if ((v9 - 96) >= 2)
      {
        if (v9 != 3)
        {
          if (v9 != 48 || !*(a3 + 48) || !*(a3 + 56))
          {
            goto LABEL_111;
          }

          v22 = a1 + 1534;
          v23 = 48;
          goto LABEL_91;
        }

        if (!*(a3 + 48))
        {
          goto LABEL_111;
        }

        v14 = (a3 + 56);
        if (!*(a3 + 56))
        {
          goto LABEL_111;
        }

        v27 = 3;
        goto LABEL_103;
      }

      if (!*(a3 + 32) || !*(a3 + 40))
      {
        goto LABEL_111;
      }

      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkT2Ttag");
      v26 = a1 + 1504;
      if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
      {
        *v26 = 0;
        *(a1 + 1512) = 0;
      }

      else if (*(*v26 + 16) == 2 && !*(*v26 + 96))
      {
        sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkT2Ttag");
        *(a1 + 1534) = 26;
        *(a4 + 16) = a1 + 1534;
        *(a4 + 24) = 2;
        *(a4 + 32) = *(a3 + 48);
        *(a4 + 40) = *(a3 + 56);
        *a4 = 0;
        goto LABEL_106;
      }

      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkT2Ttag");
      v49 = 0;
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkAuthCmdMFC");
      if (*(a3 + 32) && *(a3 + 40))
      {
        if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
        {
          *v26 = 0;
          *(a1 + 1512) = 0;
        }

        else if (*v26 && (*a3 & 0xFFFFFFFE) == 0x60 && *(a3 + 40) == 10)
        {
          *(*v26 + 46);
          v40 = *(a1 + 9792);
          phOsalNfc_MemCopy();
          v41 = *(a1 + 9792);
          v42 = *(a3 + 32);
          if (!phOsalNfc_MemCompare())
          {
            sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkAuthCmdMFC");
            v48 = *(a3 + 4);
            sub_297ECF070(a1, &v48);
            *(a1 + 1534) = *a3;
            *(a1 + 1535) = v48;
            if (*a3 == 97)
            {
              v45 = -112;
            }

            else
            {
              v45 = 16;
            }

            *(a1 + 1536) = v45;
            v46 = *(a1 + 9792);
            v47 = *(a3 + 32);
            phOsalNfc_MemCopy();
            *(a4 + 16) = a1 + 1534;
            *(a4 + 24) = 9;
            *a4 = 4;
            v24 = v48;
LABEL_70:
            *(a4 + 4) = v24;
            *(a4 + 5) = *(a3 + 10);
LABEL_93:
            *(a4 + 32) = *(a3 + 48);
            v29 = *(a3 + 56);
LABEL_105:
            *(a4 + 40) = v29;
            goto LABEL_106;
          }

          sub_297EFD338(*(a1 + 9792), *(a1 + 1496));
          v43 = *(a1 + 9792);
          v44 = *(a1 + 1496);
          if (!phOsalNfc_Timer_Start())
          {
            sub_297E687D8(1, a1 + 9792, *(a1 + 1496), 4u, 4u, "phLibNfc_ChkAuthCmdMFC");
          }
        }
      }

      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkAuthCmdMFC");
LABEL_106:
      v35 = 0;
      v36 = 0;
      do
      {
        v37 = *(&unk_2A18BDDC0 + 14 * v36 + 2);
        if (v35)
        {
          break;
        }

        v35 = 1;
        v36 = 1;
      }

      while (v37 != a1);
      v8 = 0;
      if (v37 == a1)
      {
        *(a1 + 1529) = *a4;
      }

      goto LABEL_111;
    }

LABEL_28:
    if (*(a3 + 32) && *(a3 + 40) && *(a3 + 48) && *(a3 + 56) && !*a3)
    {
LABEL_64:
      v8 = 0;
      *a4 = 0;
      goto LABEL_45;
    }

LABEL_65:
    v8 = 1;
    goto LABEL_113;
  }

  if (a2 <= 19)
  {
    if (a2 == 16)
    {
      goto LABEL_28;
    }

    if (a2 == 18)
    {
      if (*(a3 + 32) && *(a3 + 40) && *(a3 + 48) && *(a3 + 56) && *a3 == 240)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    if (a2 != 19)
    {
      goto LABEL_113;
    }

    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_JewelMap");
    if (*a3)
    {
      if (*a3 == 1 && *(a3 + 32))
      {
        v12 = (a3 + 40);
        v8 = 1;
        if (!*(a3 + 40))
        {
LABEL_121:
          v38 = "phLibNfc_JewelMap";
          goto LABEL_112;
        }

        *a4 = 1;
        *(a4 + 4) = *(a3 + 4);
        *(a4 + 5) = *(a3 + 10);
        *(a4 + 16) = *(a3 + 32);
        v13 = 24;
LABEL_119:
        v8 = 0;
        *(a4 + v13) = *v12;
        *(a4 + 48) = 0;
        goto LABEL_121;
      }
    }

    else if (*(a3 + 32))
    {
      if (*(a3 + 40))
      {
        if (*(a3 + 48))
        {
          v12 = (a3 + 56);
          if (*(a3 + 56))
          {
            *a4 = 0;
            *(a4 + 16) = *(a3 + 32);
            *(a4 + 32) = *(a3 + 48);
            *(a4 + 24) = *(a3 + 40);
            v13 = 40;
            goto LABEL_119;
          }
        }
      }
    }

    v8 = 1;
    goto LABEL_121;
  }

  if (a2 == 20)
  {
    v8 = sub_297E77468(a1, a3, a4);
    goto LABEL_113;
  }

  if (a2 == 23 || a2 == 25)
  {
    v8 = 0;
LABEL_45:
    *(a4 + 16) = *(a3 + 32);
    *(a4 + 32) = *(a3 + 48);
    *(a4 + 24) = *(a3 + 40);
    *(a4 + 40) = *(a3 + 56);
  }

LABEL_113:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MapCmds");
  return v8;
}

uint64_t sub_297ECEC94(uint64_t a1, _DWORD *a2, int a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ReActivate");
  if (!a1 || !a2)
  {
    v13 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid input Parameter");
    goto LABEL_24;
  }

  *(a1 + 1520) = 1;
  *(a1 + 1524) = a3;
  v6 = a2[4];
  if (v6 == 2)
  {
    *(a1 + 2960) = &qword_2A1A929B0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v10 = qword_2A1A929B0;
    if (qword_2A1A929B0)
    {
      v10 = 0;
      v14 = off_2A1A929C0;
      do
      {
        ++v10;
        v15 = *v14;
        v14 += 2;
      }

      while (v15);
    }

    goto LABEL_19;
  }

  if (v6 == 4)
  {
    *(a1 + 2960) = &qword_2A1A92940;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v7 = qword_2A1A92940;
    if (qword_2A1A92940)
    {
      v7 = 0;
      v8 = off_2A1A92950;
      do
      {
        ++v7;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    *(a1 + 2953) = v7;
  }

  if (a2[3] == 1 || a2[1] == 25)
  {
    *(a1 + 2960) = &qword_2A1A92970;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v10 = qword_2A1A92970;
    if (qword_2A1A92970)
    {
      v10 = 0;
      v11 = off_2A1A92980;
      do
      {
        ++v10;
        v12 = *v11;
        v11 += 2;
      }

      while (v12);
    }

LABEL_19:
    *(a1 + 2953) = v10;
    goto LABEL_20;
  }

  if (!sub_297EE0544(a1, a2))
  {
    if (*(a1 + 1531) == 1)
    {
      *(a1 + 2960) = &qword_2A1A90CA8;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v10 = qword_2A1A90CA8;
      if (qword_2A1A90CA8)
      {
        v10 = 0;
        v17 = &qword_2A1A90CB8;
        do
        {
          ++v10;
          v18 = *v17;
          v17 += 2;
        }

        while (v18);
      }
    }

    else
    {
      *(a1 + 2960) = &qword_2A1A929B0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v10 = qword_2A1A929B0;
      if (qword_2A1A929B0)
      {
        v10 = 0;
        v19 = off_2A1A929C0;
        do
        {
          ++v10;
          v20 = *v19;
          v19 += 2;
        }

        while (v20);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  v13 = sub_297E5588C(a1, 0, 0);
  if (v13 != 13)
  {
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "Reactivate 4A request Failed!! wStatus");
    if (v13 == 143)
    {
      v13 = 143;
    }

    else
    {
      v13 = 255;
    }
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ReActivate");
  return v13;
}

uint64_t sub_297ECEEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendTranscvCmd");
  if (a1)
  {
    a2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), a3, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendTranscvCmd");
  return a2;
}

uint64_t sub_297ECEF8C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTranscvResp");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTranscvResp");
  return a2;
}

uint64_t sub_297ECEFF4(uint64_t a1, uint64_t a2, char *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InvokeNciTranscvComplete");
  sub_297ECE0E4(a1, a2, a3);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokeNciTranscvComplete");
  return a2;
}

uint64_t sub_297ECF070(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CalSectorAddress");
  if (a2)
  {
    v4 = *a2;
    v5 = v4;
    v6 = (v4 >> 4) & 7 | 0x20;
    v7 = v4 >> 2;
    if (v5 < 0)
    {
      LOBYTE(v7) = v6;
    }

    *a2 = v7;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CalSectorAddress");
}

uint64_t sub_297ECF0FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_IsoDepFelicaPresChk_Cb");
  if (!a1)
  {
    goto LABEL_23;
  }

  if (a2 > 145)
  {
    if (a2 == 146)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Target is no more in the Rf field");
      goto LABEL_13;
    }

    if (a2 == 147)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Nfcc rejected pres chk command sent");
      goto LABEL_9;
    }

LABEL_10:
    sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "pres chk failed");
    a2 = 146;
LABEL_13:
    v4 = 119;
    v5 = 146;
    goto LABEL_14;
  }

  if (!a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Target is still in the Rf field");
    v5 = 0;
    a2 = 152;
    v4 = 118;
    goto LABEL_14;
  }

  if (a2 != 44)
  {
    goto LABEL_10;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_IsoDepFelicaPresChk_Cb:NFCC not responded for Iso-Dep presence check command");
LABEL_9:
  a2 = 255;
  v4 = 119;
  v5 = 255;
LABEL_14:
  if (*(a1 + 1489) == 1 && (v6 = *(a1 + 6472)) != 0)
  {
    v7 = *(a1 + 6480);
    *(a1 + 6472) = 0;
    *(a1 + 6480) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Invoke the upper layer callback function");
    sub_297E4D930(1, a1 + 9792, 4u, 22, "phLibNfc_IsoDepFelicaPresChk_Cb");
    v6(*(a1 + 9784), v7, v5);
  }

  else if (*(a1 + 6312))
  {
    v8 = *(a1 + 6248);
    if (v8)
    {
      if (*(a1 + 2664))
      {
        v9 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(a1 + 2664) = 0;
        v8 = *(a1 + 6248);
      }

      v10 = *(a1 + 6256);
      *(a1 + 6248) = 0;
      *(a1 + 6256) = 0;
      sub_297E4D930(1, a1 + 9792, 4u, 17, "phLibNfc_IsoDepFelicaPresChk_Cb");
      v8(*(a1 + 9784), v10, 0, a1 + 2600, a2);
    }
  }

  else
  {
    sub_297E4F450(*(a1 + 9784), v4, v5, 0, 0);
  }

LABEL_23:

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_IsoDepFelicaPresChk_Cb");
}

uint64_t sub_297ECF364(uint64_t a1, uint64_t a2)
{
  v7[1] = 0;
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_RemoteDev_ChkPresenceTimer_Cb");
  v7[0] = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
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
    sub_297ECF434(a2, v7, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4u, 1u, "phLibNfc_RemoteDev_ChkPresenceTimer_Cb: Invalid  or NULL pLibContext ");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_RemoteDev_ChkPresenceTimer_Cb");
}

uint64_t sub_297ECF434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ChkPresence_Cb");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ChkPresence_Cb");
  }

  v6 = *(a1 + 1504);
  if (!v6)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "No target is connected");
    goto LABEL_8;
  }

  if (a3 != 150)
  {
    if (a3 == 121)
    {
      v7 = 123;
      goto LABEL_10;
    }

    if (a3 == 44)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Target Lost!!");
LABEL_8:
      a3 = 146;
      goto LABEL_9;
    }

    if (!a2 || a3)
    {
      if (a3)
      {
        if (a3 == 143)
        {
          v11 = 143;
        }

        else
        {
          v11 = 146;
        }

        v7 = 119;
        a3 = v11;
        goto LABEL_10;
      }
    }

    else
    {
      if (sub_297E55558(*(a1 + 3088), v6))
      {
        *(a1 + 1504) = 0;
        *(a1 + 1512) = 0;
LABEL_26:
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Lower layer has returned Fail status!!");
        goto LABEL_8;
      }

      v12 = *(a1 + 1504);
      if (sub_297E8E88C(a1, *(v12 + 4), &v14))
      {
        goto LABEL_26;
      }

      a3 = 146;
      v7 = 119;
      if (v14 > 0x1A)
      {
        goto LABEL_10;
      }

      if (((1 << v14) & 0x2E8E800) != 0)
      {
        goto LABEL_29;
      }

      if (((1 << v14) & 0x11000) == 0)
      {
        if (v14 != 26)
        {
          goto LABEL_10;
        }

        goto LABEL_30;
      }

      if (!*(v12 + 96))
      {
LABEL_29:
        if (!*(a2 + 8))
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_RemoteDev_ChkPresence_Cb:Lower layer has returned Invalid Buffer Length!!");
          goto LABEL_9;
        }
      }
    }

LABEL_30:
    a3 = 0;
    v7 = 118;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 119;
LABEL_10:
  if (*(a1 + 1489) == 1 && (v8 = *(a1 + 6472)) != 0)
  {
    v9 = *(a1 + 6480);
    *(a1 + 6472) = 0;
    *(a1 + 6480) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Invoke the upper layer callback function");
    sub_297E4D930(1, a1 + 9792, 4u, 22, "phLibNfc_RemoteDev_ChkPresence_Cb");
    v8(*(a1 + 9784), v9, a3);
  }

  else
  {
    sub_297E4F450(*(a1 + 9784), v7, a3, 0, &v13);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ChkPresence_Cb");
}

uint64_t sub_297ECF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_ChkPresence_Trcv_Cb");
  sub_297ECF434(a2, a4, a5);
  return sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_ChkPresence_Trcv_Cb");
}

uint64_t sub_297ECF758(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_Transceive_Auth_TimerCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
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
      sub_297E4E0B0(1, a2 + 9792, 4u, 1u, "phLibNfc_UIDNotMatchingCb");
      v6 = *(a2 + 6232);
      v7 = *(a2 + 6240);
      v8 = (a2 + 1504);
      if (sub_297E55558(*(a2 + 3088), *(a2 + 1504)))
      {
        v9 = 0;
        *v8 = 0;
        *(a2 + 1512) = 0;
      }

      else
      {
        v9 = *v8;
      }

      v13 = v9;
      sub_297ECD484(a2, &v12, &v13, 0);
      if (*(a2 + 2664))
      {
        v10 = *(a2 + 9792);
        phOsalNfc_FreeMemory();
        *(a2 + 2664) = 0;
      }

      if (v6)
      {
        v6(*(a2 + 9784), v7, v12, 0, 255);
      }
    }
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_Transceive_Auth_TimerCb");
}

uint64_t sub_297ECF890(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MfcAuthInfo_Clear");
  if (a1)
  {
    *(a1 + 2616) = 255;
    *(a1 + 2620) = 0;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MfcAuthInfo_Clear");
}

uint64_t sub_297ECF904(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ClearInfo");
  sub_297ECF890(a1);
  v2 = 0uLL;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 1504) = 0u;
  if (*(a1 + 880))
  {
    v3 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
    v2 = 0uLL;
  }

  *(a1 + 1000) = v2;
  *(a1 + 1016) = v2;
  *(a1 + 968) = v2;
  *(a1 + 984) = v2;
  *(a1 + 936) = v2;
  *(a1 + 952) = v2;
  *(a1 + 904) = v2;
  *(a1 + 920) = v2;
  *(a1 + 872) = v2;
  *(a1 + 888) = v2;
  *(a1 + 1240) = v2;
  *(a1 + 1256) = v2;
  *(a1 + 1272) = v2;
  *(a1 + 1288) = v2;
  *(a1 + 1304) = v2;
  *(a1 + 1320) = v2;
  *(a1 + 1336) = v2;
  *(a1 + 1352) = v2;
  *(a1 + 1368) = v2;
  *(a1 + 1384) = v2;
  if (*(a1 + 856))
  {
    *(a1 + 856) = 0;
  }

  if (*(a1 + 1400))
  {
    *(a1 + 1400) = 0;
  }

  *(a1 + 762) = 0;
  *(a1 + 1531) = 0;
  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 1474) = 0;
  sub_297E4F1A4(*(a1 + 3088), 0);

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RemoteDev_ClearInfo");
}

uint64_t sub_297ECFA10(uint64_t a1, uint64_t a2, void *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetRemoteDevInfo");
  v6 = 255;
  if (a1)
  {
    if (a2)
    {
      v7 = *(a1 + 762);
      if (*(a1 + 762))
      {
        v8 = (a1 + 880);
        while (*(v8 - 1) != a2)
        {
          v8 += 2;
          if (!--v7)
          {
            v6 = 255;
            goto LABEL_9;
          }
        }

        v6 = 0;
        *a3 = *v8;
      }
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetRemoteDevInfo");
  return v6;
}

uint64_t sub_297ECFAC0(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v31 = 0;
  v32 = a2;
  v35 = xmmword_297F136B0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DataExPresenceCheck");
  if (!a2)
  {
    goto LABEL_36;
  }

  if (sub_297ECD484(a1, &v32, &v31, 1))
  {
    v4 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
LABEL_6:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v4);
    v5 = 0;
    goto LABEL_7;
  }

  if (sub_297E8E7EC(a1, v31))
  {
    v4 = "Validation of NCI RemoteDev Handle Failed";
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  v6 = *(v32 + 4);
  if (v6 > 15)
  {
    if (v6 <= 20)
    {
      if (v6 == 16)
      {
LABEL_25:
        v16 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        *(a1 + 2676) = 2;
        *(a1 + 2682) = 1;
        *(a1 + 2672) = 48;
        *(a1 + 2720) = a1 + 2855;
        *(a1 + 2728) = 19;
        *(a1 + 2704) = 0;
        *(a1 + 2712) = 0;
        goto LABEL_34;
      }

      if (v6 == 19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      switch(v6)
      {
        case 24:
          v17 = *(v32 + 8);
          v18 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          *(a1 + 2672) = 0;
          v19 = *(a1 + 9792);
          v20 = a1 + 2835;
          v21 = 3;
LABEL_33:
          phOsalNfc_MemCopy();
          *(a1 + 2704) = v20;
          *(a1 + 2712) = v21;
          *(a1 + 2720) = a1 + 2855;
          *(a1 + 2728) = 68;
          goto LABEL_34;
        case 22:
          v22 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          *(a1 + 2672) = 0;
          *(a1 + 2720) = a1 + 2855;
          *(a1 + 2728) = 6;
          v23 = *(a1 + 9792);
          v12 = a1 + 2835;
          v13 = 7;
          goto LABEL_24;
        case 21:
          v8 = 0;
          v9 = v32 + 8;
          do
          {
            *(&v35 + v8 + 2) = *(v9 + v8);
            ++v8;
          }

          while (v8 != 8);
          v10 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          *(a1 + 2672) = 240;
          *(a1 + 2720) = a1 + 2855;
          *(a1 + 2728) = 27;
          v11 = *(a1 + 9792);
          v12 = a1 + 2835;
          v13 = 16;
          goto LABEL_24;
      }
    }

LABEL_29:
    v24 = v5 ^ 1;
    if (v6 != 23)
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      v33 = 8226;
      v25 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v34 = 0;
      v26 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      *(a1 + 2672) = 0;
      v27 = *(a1 + 9792);
      v20 = a1 + 2835;
      v21 = 11;
      goto LABEL_33;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "RemoteDev is other than Mifare PICC or SAK byte is 0");
LABEL_36:
    v28 = 255;
    goto LABEL_37;
  }

  if ((v6 - 13) >= 3 && v6 != 11)
  {
    if (v6 != 12)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_23:
  v14 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 2672) = 0;
  *(a1 + 2720) = a1 + 2855;
  *(a1 + 2728) = 2;
  v15 = *(a1 + 9792);
  v12 = a1 + 2835;
  v13 = 7;
LABEL_24:
  phOsalNfc_MemCopy();
  *(a1 + 2704) = v12;
  *(a1 + 2712) = v13;
LABEL_34:
  v28 = sub_297EA14F4(v32, a1 + 2672, sub_297ECF6D4, a1);
LABEL_37:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DataExPresenceCheck");
  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t sub_297ECFEBC(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v28 = a2;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PreparePresenceCheck");
  v4 = 1;
  if (a1 && a2)
  {
    if (!*(a1 + 1504))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "No target is connected");
      v4 = 148;
      goto LABEL_14;
    }

    if (*(a1 + 2933))
    {
      sub_297EFD338(*(a1 + 9792), *(a1 + 1496));
      v5 = *(a1 + 9792);
      v6 = *(a1 + 1496);
      if (phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_PreparePresenceCheck : Timer Failed");
      }

      else
      {
        sub_297E687D8(1, a1 + 9792, *(a1 + 1496), 4u, 4u, "phLibNfc_PreparePresenceCheck");
        v4 = 13;
      }

      goto LABEL_14;
    }

    if (sub_297ECD484(a1, &v28, &v27, 1))
    {
      v7 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
LABEL_13:
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v7);
      v4 = 149;
      goto LABEL_14;
    }

    if (sub_297E8CCB4(a1, v27))
    {
      v7 = "NCI RemoteDev Handle is not same as Connected Handle";
      goto LABEL_13;
    }

    if (!v27)
    {
      goto LABEL_39;
    }

    v9 = v27[4];
    if (v9 == 4)
    {
      if (v27[3] == 1)
      {
        v10 = v27[1];
        if ((v10 == 25 || v10 == 4) && *(a1 + 1470) == 1)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (!v9)
      {
        if (v27[3] == 1)
        {
          if (*(a1 + 1470) != 1)
          {
LABEL_34:
            if (v27[1] == 25)
            {
              *(a1 + 2960) = &qword_2A1A92970;
              *(a1 + 2952) = 0;
              *(a1 + 2954) = 0;
              v12 = qword_2A1A92970;
              if (qword_2A1A92970)
              {
                v12 = 0;
                v15 = off_2A1A92980;
                do
                {
                  ++v12;
                  v16 = *v15;
                  v15 += 2;
                }

                while (v16);
              }

LABEL_38:
              *(a1 + 2953) = v12;
              v17 = v28;
              v18 = a1;
LABEL_47:
              v11 = sub_297E5588C(v18, 0, v17);
              goto LABEL_48;
            }

            goto LABEL_39;
          }

LABEL_25:
          v4 = 147;
          goto LABEL_14;
        }

LABEL_39:
        if (!sub_297EE0544(a1, v27))
        {
          v19 = *(a1 + 2616) - 96;
          if (v19 <= 0x21 && ((1 << v19) & 0x300000003) != 0)
          {
            *(a1 + 2960) = &qword_2A1A92E60;
            *(a1 + 2952) = 0;
            *(a1 + 2954) = 0;
            v20 = qword_2A1A92E60;
            if (qword_2A1A92E60)
            {
              v20 = 0;
              v21 = &qword_2A1A92E70;
              do
              {
                ++v20;
                v22 = *v21;
                v21 += 2;
              }

              while (v22);
            }
          }

          else if (*(a1 + 1531) == 1)
          {
            *(a1 + 2960) = &qword_2A1A90CC8;
            *(a1 + 2952) = 0;
            *(a1 + 2954) = 0;
            v20 = qword_2A1A90CC8;
            if (qword_2A1A90CC8)
            {
              v20 = 0;
              v23 = &qword_2A1A90CD8;
              do
              {
                ++v20;
                v24 = *v23;
                v23 += 2;
              }

              while (v24);
            }
          }

          else
          {
            *(a1 + 2960) = &qword_2A1A92AE0;
            *(a1 + 2952) = 0;
            *(a1 + 2954) = 0;
            v20 = qword_2A1A92AE0;
            if (qword_2A1A92AE0)
            {
              v20 = 0;
              v25 = off_2A1A92AF0;
              do
              {
                ++v20;
                v26 = *v25;
                v25 += 2;
              }

              while (v26);
            }
          }

          *(a1 + 2953) = v20;
          v18 = a1;
          v17 = 0;
          goto LABEL_47;
        }

        v11 = sub_297ECFAC0(a1, v28);
LABEL_48:
        v4 = v11;
        goto LABEL_14;
      }

      if ((v9 & 0xFFFFFFFE) != 4)
      {
        if (v9 == 3)
        {
          *(a1 + 2960) = &qword_2A1A92920;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v12 = qword_2A1A92920;
          if (qword_2A1A92920)
          {
            v12 = 0;
            v13 = &qword_2A1A92930;
            do
            {
              ++v12;
              v14 = *v13;
              v13 += 2;
            }

            while (v14);
          }

          goto LABEL_38;
        }

        if (v27[3] != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }
    }

    v11 = sub_297F08B18(*(a1 + 3088), sub_297ECF0FC, a1);
    goto LABEL_48;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PreparePresenceCheck");
  return v4;
}

uint64_t sub_297ED02A0(uint64_t a1, int *a2, unint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MapDesfireTagType");
  v6 = *a3;
  if (!*a3 || *(a3 + 2) < 8u || *v6 != 175 || *(v6 + 1) != 4)
  {
    goto LABEL_23;
  }

  v7 = *(v6 + 2);
  if (v7 == 131 || v7 == 129)
  {
    v8 = *(v6 + 4) & 0xF;
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_23;
  }

  v8 = *(v6 + 4) & 0xF;
  if (v8 <= 1)
  {
    if ((*(v6 + 4) & 0xF) == 0)
    {
      if (*(v6 + 6) == 24)
      {
        v9 = 40;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_13:
    if (v8 == 1)
    {
      LOBYTE(v6) = ((*(v6 + 6) - 16) >> 1) | ((*(v6 + 6) - 16) << 7);
      if (v6 < 6u)
      {
        v6 = v6;
        v10 = &unk_297F13690;
LABEL_16:
        v9 = v10[v6];
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if (v8 == 2)
  {
    LODWORD(v6) = *(v6 + 6) - 22;
    if (v6 < 9)
    {
      v6 = v6;
      v10 = &unk_297F13650;
      goto LABEL_16;
    }
  }

  else if (v8 == 3)
  {
    LODWORD(v6) = *(v6 + 6) - 22;
    if (v6 < 7)
    {
      v6 = v6;
      v10 = &unk_297F13674;
      goto LABEL_16;
    }
  }

LABEL_23:
  v9 = 55;
LABEL_24:
  *a2 = v9;

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MapDesfireTagType");
}

uint64_t sub_297ED041C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  memset(v36, 0, sizeof(v36));
  *v40 = xmmword_297F1363B;
  *&v40[15] = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FindTagTypeFromSak");
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
    v8 = 1;
    goto LABEL_3;
  }

  v8 = 1;
  if (a2 && a3)
  {
    v11 = *(a1 + 1504);
    v12 = *(v11 + 96);
    *a2 = 56;
    *(a2 + 8) = 0;
    v13 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *&v38 = a1 + 2064;
    DWORD2(v38) = 530;
    if ((v12 & 2) != 0)
    {
      v8 = 0;
      *a2 = 56;
      goto LABEL_3;
    }

    if ((v12 & 8) == 0)
    {
      if ((v12 & 0x10) != 0)
      {
        v8 = 0;
        if (v12)
        {
          v21 = 25;
        }

        else
        {
          v21 = 21;
        }

        goto LABEL_103;
      }

      if ((v12 & 0x20) == 0)
      {
        if ((v12 & 1) == 0 && *(v11 + 36) == 4)
        {
          *a2 = 5;
          if (a4)
          {
            v14 = *a4;
            if (!*a4 || (v15 = *(a1 + 2824)) == 0)
            {
              v8 = 255;
              goto LABEL_3;
            }

            if (*(a4 + 2) < 8u)
            {
              v8 = 44;
              goto LABEL_3;
            }

            v16 = *(v14 + 2);
            if (v16 == 4)
            {
              *v15 = 5;
              sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NTAG 2xx is considered as Mifare UL");
              v8 = 150;
              goto LABEL_3;
            }

            if (v16 != 3)
            {
              goto LABEL_104;
            }

            v17 = *(v14 + 4);
            if ((v17 - 2) < 2)
            {
              v8 = 0;
              v18 = 10;
              goto LABEL_111;
            }

            if (v17 == 4)
            {
              v8 = 0;
              v18 = 6;
              goto LABEL_111;
            }

            if (v17 == 1)
            {
              v8 = 0;
              v18 = 9;
            }

            else
            {
LABEL_104:
              v8 = 0;
              v18 = 56;
            }

LABEL_111:
            *v15 = v18;
            goto LABEL_3;
          }

          goto LABEL_84;
        }

        v8 = 0;
        v21 = 56;
        goto LABEL_103;
      }

      v23 = *(v11 + 104);
      if (v23 < 0xB)
      {
LABEL_79:
        if (v23 >= 4)
        {
          if (a4)
          {
            sub_297ED02A0(a1, a2, a4);
            v8 = 0;
            goto LABEL_3;
          }

          *a2 = 40;
LABEL_84:
          *(a1 + 1534) = 96;
          LODWORD(v36[0]) = 0;
          *&v37 = a1 + 1534;
          v24 = 1;
          goto LABEL_85;
        }

        v8 = 0;
        v21 = 55;
LABEL_103:
        *a2 = v21;
        goto LABEL_3;
      }

      if (*(v11 + 110) == 193 && *(v11 + 111) == 5)
      {
        if (*(v11 + 114) == 1)
        {
          if (*(v11 + 115) == 188 && *(v11 + 116) == 214)
          {
            if (a4)
            {
              if (*a4 && *(a4 + 2) == 1 && **a4 == 144)
              {
                v8 = 0;
                v21 = 23;
              }

              else
              {
                v8 = 0;
                v21 = 26;
              }

              goto LABEL_103;
            }

            goto LABEL_106;
          }
        }

        else if (!*(v11 + 114) && *(v11 + 115) == 53 && *(v11 + 116) == 199)
        {
          if (a4)
          {
            if (*a4 && *(a4 + 2) == 1 && **a4 == 144)
            {
              v8 = 0;
              v21 = 15;
            }

            else
            {
              v8 = 0;
              v21 = 18;
            }

            goto LABEL_103;
          }

LABEL_106:
          v35 = *(a1 + 9792);
          phOsalNfc_MemCopy();
          LODWORD(v36[0]) = 0;
          *&v37 = a1 + 1534;
          DWORD2(v37) = 19;
          v28 = *(v11 + 4);
          v30 = a1 + 2760;
          v29 = a1;
          goto LABEL_86;
        }
      }

      v25 = *(a1 + 9792);
      if (phOsalNfc_MemCompare())
      {
        v26 = *(a1 + 9792);
        if (phOsalNfc_MemCompare())
        {
          v27 = *(a1 + 9792);
          if (phOsalNfc_MemCompare())
          {
            v23 = *(v11 + 104);
            goto LABEL_79;
          }
        }
      }

LABEL_102:
      v8 = 0;
      v21 = 27;
      goto LABEL_103;
    }

    if ((v12 & 0x10) == 0)
    {
      if (v12)
      {
        v8 = 0;
        v21 = 4;
        goto LABEL_103;
      }

      if ((v12 & 0x20) != 0)
      {
        v8 = 0;
        v21 = 1;
        goto LABEL_103;
      }

      if (a4)
      {
        v19 = *a4;
        if (*a4 && *(a4 + 2) == 12)
        {
          if (v19[5] == 193 && v19[6] == 5)
          {
            v20 = v19[10];
            if (v19[9] || v20 != 53)
            {
              if (v20 == 188 && v19[11] == 214)
              {
                v8 = 0;
                v21 = 20;
                goto LABEL_103;
              }
            }

            else if (v19[11] == 199)
            {
              v8 = 0;
              v21 = 12;
              goto LABEL_103;
            }
          }

          v31 = *(a1 + 9792);
          if (!phOsalNfc_MemCompare())
          {
            goto LABEL_102;
          }

          v32 = *(a1 + 9792);
          if (!phOsalNfc_MemCompare())
          {
            goto LABEL_102;
          }

          v33 = *(a1 + 9792);
          if (!phOsalNfc_MemCompare())
          {
            goto LABEL_102;
          }

          if (*a4)
          {
            v34 = *(a4 + 2);
          }
        }

        v8 = 0;
        v21 = 1;
        *(a1 + 2833) = 1;
        goto LABEL_103;
      }

LABEL_66:
      *(a1 + 1534) = -32544;
      LODWORD(v36[0]) = 0;
      *&v37 = a1 + 1534;
      v24 = 2;
LABEL_85:
      DWORD2(v37) = v24;
      v28 = *(v11 + 4);
      v29 = a1;
      v30 = a3;
LABEL_86:
      sub_297ECE3AC(v29, v28, v36, v30);
      v8 = 13;
      goto LABEL_3;
    }

    if (v12)
    {
      v8 = 0;
      v21 = 2;
      goto LABEL_103;
    }

    if ((v12 & 0x20) != 0)
    {
      v8 = 0;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_66;
      }

      v22 = *a4;
      if (*a4 && *(a4 + 2) == 12 && v22[5] == 193 && v22[6] == 5)
      {
        if (!v22[9] && v22[10] == 53 && v22[11] == 199)
        {
          v8 = 0;
          v21 = 16;
          goto LABEL_103;
        }

        if (v22[10] == 188 && v22[11] == 214)
        {
          v8 = 0;
          v21 = 24;
          goto LABEL_103;
        }
      }

      v8 = 0;
      *(a1 + 2833) = 1;
    }

    v21 = 3;
    goto LABEL_103;
  }

LABEL_3:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FindTagTypeFromSak");
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297ED0A64(uint64_t a1, char a2)
{
  Memory_Typed = 0;
  v15 = a1;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 6u, 5u, "phDnldNfc_SetHwDevHandle");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == v15)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = *(v6 + 2);
LABEL_6:
  sub_297E67F6C(v15, &Memory_Typed);
  sub_297E67EB0(v15, &v13);
  if (!Memory_Typed)
  {
    sub_297E4E0B0(0, &v15, 6u, 4u, "phDnldNfc_SetHwDevHandle:Allocating Memory for Dnld Context..");
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      phOsalNfc_SetMemory();
      sub_297E9F7D8(v15, Memory_Typed);
      sub_297E966F4(0, &v15, 6u, 4u, "####Primary NFCC, DriverHandle");
      sub_297E966F4(0, &v15, 6u, 4u, "####Primary NFCC, DOWNLOAD context");
    }

    else
    {
      sub_297E4E0B0(0, &v15, 6u, 1u, "phDnldNfc_SetHwDevHandle Insufficient resource!!");
    }
  }

  if (!v15 || (v8 = Memory_Typed) == 0)
  {
    v11 = "Invalid Input Parameters!!";
    goto LABEL_19;
  }

  Memory_Typed[2] = v15;
  *(v8 + 10) = v7;
  sub_297E4E0B0(0, &v15, 6u, 4u, "phDnldNfc_SetHwDevHandle:Device Handle updated successfully");
  if (!v13)
  {
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    if (sub_297E56AFC(v15) == 1)
    {
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(v15, 0);
    }

    sub_297F0DF0C(Memory_Typed, a2);
    v9 = Memory_Typed[6];
    if (v9)
    {
      v10 = sub_297F05010(v15);
      if (v10)
      {
        Memory_Typed[4] = v10;
        *(v9 + 8496) = v10;
        sub_297F0ABE8(v10, v9);
        return sub_297E4DFAC(0, &v15, 6u, 5u, "phDnldNfc_SetHwDevHandle");
      }

      v11 = "Failed to create NCI Handle";
LABEL_20:
      sub_297E4E0B0(v10, &v15, 6u, 1u, v11);
      return sub_297E4DFAC(0, &v15, 6u, 5u, "phDnldNfc_SetHwDevHandle");
    }

    v11 = "Failed to create Download Core Context";
LABEL_19:
    LODWORD(v10) = 0;
    goto LABEL_20;
  }

  return sub_297E4DFAC(0, &v15, 6u, 5u, "phDnldNfc_SetHwDevHandle");
}

uint64_t sub_297ED0CC8(uint64_t a1)
{
  v4 = 0;
  sub_297E4E1B4(2, a1, 6u, 5u, "phDnldNfc_FreeDnldContext");
  if (a1)
  {
    v4 = *(a1 + 16);
    v2 = *(a1 + 40);
    phOsalNfc_FreeMemory();
    sub_297E9F7D8(v4, 0);
  }

  return sub_297E4DFAC(0, &v4, 6u, 5u, "phDnldNfc_FreeDnldContext");
}

uint64_t sub_297ED0D50(_DWORD *a1, uint64_t a2, int a3)
{
  v33 = 0;
  sub_297E4E1B4(2, a1, 6u, 5u, "phDnldNfc_InitImgInfo");
  if (!a1)
  {
    v26 = "phDnldNfc_InitImgInfo: Invalid DNLD context!!";
    v27 = 2;
    v28 = 0;
LABEL_16:
    sub_297E4E0B0(v27, v28, 6u, 1u, v26);
    v25 = 255;
    goto LABEL_17;
  }

  sub_297E5D114(*(a1 + 2), &v33);
  if (!a2)
  {
    v29 = "phDnldNfc_InitImgInfo: Invalid input buffer !!\n";
    goto LABEL_14;
  }

  v6 = *(a2 + 8);
  if (!v6 || !*a2)
  {
    v29 = "phDnldNfc_InitImgInfo: phDnldNfc_InitImgInfo with invalid buffer length !!\n";
LABEL_14:
    sub_297E4E0B0(1, (a1 + 10), 6u, 1u, v29);
    goto LABEL_15;
  }

  *a1 = *a2;
  a1[2] = v6;
  if (!v33)
  {
LABEL_15:
    v26 = "phDnldNfc_InitImgInfo: Invalid input parameters or Invalid IOCTL context!!";
    v27 = 2;
    v28 = a1;
    goto LABEL_16;
  }

  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: MW Major Version Number - ");
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: MW Minor Version Number - ");
  v7 = v33;
  *(v33 + 834) = 1040;
  v8 = *a1;
  if (!*a1 || (v9 = a1[2]) == 0)
  {
    v26 = "phDnldNfc_InitImgInfo: Image details extraction Failed!!";
    goto LABEL_19;
  }

  if ((a3 - 8) > 2)
  {
    v31 = v8[5];
    sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Major Version Number - ");
    v32 = *(*a1 + 4);
    sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Minor Version Number - ");
    sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Image Length - ");
    sub_297E966F4(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Image Info Pointer - ");
    v25 = 0;
    *(v33 + 832) = *(*a1 + 4);
    goto LABEL_17;
  }

  a1[2] = v9 - 12;
  *(v7 + 840) = 0;
  v10 = *v8;
  *(v7 + 840) = v10;
  v11 = v10 | (v8[1] << 8);
  *(v7 + 840) = v11;
  v12 = v11 | (v8[2] << 16);
  *(v7 + 840) = v12;
  *(v7 + 840) = v12 | (v8[3] << 24);
  *(v7 + 844) = 0;
  v13 = v8[4];
  *(v7 + 844) = v13;
  v14 = v13 | (v8[5] << 8);
  *(v7 + 844) = v14;
  v15 = v14 | (v8[6] << 16);
  *(v7 + 844) = v15;
  *(v7 + 844) = v15 | (v8[7] << 24);
  *(v7 + 828) = 0;
  v16 = v8[8];
  *(v7 + 828) = v16;
  v17 = v16 | (v8[9] << 8);
  *(v7 + 828) = v17;
  v18 = v17 | (v8[10] << 16);
  *(v7 + 828) = v18;
  *(v7 + 828) = v18 | (v8[11] << 24);
  v19 = &v8[__rev16(*(v8 + 6))];
  *(v7 + 832) = *(v19 + 9);
  v20 = v19[19];
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Major Version Number");
  v21 = v19[18];
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Minor Version Number");
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Image Length");
  sub_297E966F4(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW Image Info Pointer");
  v22 = *(v33 + 828);
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: FW SVN Revision");
  v23 = *(v33 + 840);
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: Regular FW Offset");
  v24 = *(v33 + 844);
  sub_297E50DB0(1, (a1 + 10), 6u, 4u, "phDnldNfc_InitImgInfo: Degraded FW Offset");
  v25 = 0;
  if (*(v33 + 844) <= 0xBu)
  {
    v26 = "phDnldNfc_InitImgInfo: Degraded FW offset is invalid!!";
LABEL_19:
    v28 = (a1 + 10);
    v27 = 1;
    goto LABEL_16;
  }

LABEL_17:
  sub_297E4DFAC(2, a1, 6u, 5u, "phDnldNfc_InitImgInfo");
  return v25;
}

uint64_t sub_297ED1128(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 6u, 5u, "phDnldNfc_ClearFwBuffRef");
  if (a1)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 6u, 1u, "phDnldNfc_ClearFwBuffRef: Invalid DNLD context!!");
  }

  return sub_297E4DFAC(2, a1, 6u, 5u, "phDnldNfc_ClearFwBuffRef");
}

uint64_t sub_297ED11B8(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 8u, 5u, "phFriNfc_MifareUL_RdNdef");
  sub_297E57170(v16, &v15);
  v11 = 1;
  if (a3)
  {
    if (a2)
    {
      if (a5)
      {
        v12 = v15;
        if (v15)
        {
          if (a4 <= 1)
          {
            if (a4 || *(v15 + 540) == 2)
            {
              *(v15 + 16) = a5;
              *(v12 + 40) = a6;
              *(v12 + 547) = 2;
              v13 = *a3;
              if (*a3 && *(v12 + 545) != 3 && (*(v12 + 545) || *(v12 + 65) != 1))
              {
                *(v12 + 240) = a2;
                *(v12 + 248) = v13;
                *(v12 + 552) = a3;
                *a3 = 0;
                if (a4 == 1)
                {
                  *(v12 + 647) = 260;
                  *(v12 + 66) = 0;
                  *(v12 + 68) = 0;
                  *(v12 + 70) = 4;
                  *(v12 + 650) = *(v12 + 204);
                  *(v12 + 72) = 0;
                  *(v12 + 75) = 0;
                  *(v12 + 2700) = 0;
                  *(v12 + 2704) = 0;
                  *(v12 + 2710) = 0;
                  *(v12 + 540) = 2;
                  *(v12 + 560) = 1;
                  v11 = sub_297ED1358(v12, 4);
                }

                else
                {
                  *(v12 + 540) = 2;
                  *(v12 + 648) = 1;
                  if (*(v12 + 2704) == 1)
                  {
                    v11 = 26;
                  }

                  else
                  {
                    *(v12 + 560) = a4;
                    sub_297ED1444(v12);
                    v11 = 0;
                  }
                }
              }
            }

            else
            {
              v11 = 245;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v16, 8u, 5u, "phFriNfc_MifareUL_RdNdef");
  return v11;
}

uint64_t sub_297ED1358(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_RdCardfindNdefTLV");
  *a1 = 4;
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 266) = a2;
  *(a1 + 526) = 1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 48;
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "phFriNfc_MfUL_H_ChkCCBytes:Sending Read command to find Ndef Tlv...");
  sub_297ED26C0(a1, *(a1 + 232), (a1 + 266), *(a1 + 526), (a1 + 264));
  v4 = sub_297E98D38(a1, sub_297ED29B0);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_RdCardfindNdefTLV");
  return v4;
}

uint64_t sub_297ED1444(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CpDataToUserBuf");
  v2 = *(a1 + 2720);
  v3 = *(a1 + 240);
  v4 = a1 + *(a1 + 2702) + 652;
  if (*(a1 + 248) >= *(a1 + 80))
  {
    v9 = *(a1 + 80);
    phOsalNfc_MemCopy();
    v6 = 0;
    v8 = 0;
    v10 = *(a1 + 80);
    **(a1 + 552) = v10;
    *(a1 + 2704) = 1;
    v7 = *(a1 + 650) - v10;
  }

  else
  {
    phOsalNfc_MemCopy();
    v5 = *(a1 + 248);
    **(a1 + 552) = v5;
    v6 = *(a1 + 2702) + v5;
    v7 = *(a1 + 650) - v5;
    v8 = *(a1 + 80) - v5;
  }

  *(a1 + 2702) = v6;
  *(a1 + 650) = v7;
  *(a1 + 80) = v8;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CpDataToUserBuf");
  return 0;
}

uint64_t sub_297ED1528(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v23 = 0;
  v22 = 208;
  v21 = 0;
  sub_297E4E1B4(0, &v24, 8u, 5u, "phFriNfc_MifareUL_WrNdef");
  sub_297E57170(v24, &v21);
  v11 = 1;
  if (a3 && a5 && v21)
  {
    v12 = *(v21 + 2720);
    phOsalNfc_MemCopy();
    v13 = v21;
    *(v21 + 2740) = 3;
    *(v13 + 24) = a5;
    *(v13 + 40) = a6;
    *(v13 + 547) = 3;
    *(v13 + 252) = 0;
    **(v13 + 528) = 0;
    v14 = v21;
    v15 = v21 + 2736;
    v16 = (v21 + 2740);
    if (*a3)
    {
      v16 = a3;
      v15 = a2;
    }

    v11 = 1;
    if (v21)
    {
      if (v15 && a4 <= 1 && *v16 && (*(v21 + 545) | 2) != 3)
      {
        *(v21 + 648) = 2;
        *(v14 + 240) = v15;
        *(v14 + 248) = *v16;
        *(v14 + 256) = v16;
        *v16 = 0;
        if (a4 == 1 || *(v14 + 540) == 2)
        {
          v17 = *(v14 + 67);
          *(v14 + 646) = v17;
          v18 = *(v14 + 70);
          *(v14 + 647) = v18;
          *(v14 + 72) = 0;
          *(v14 + 75) = 0;
          *(v14 + 2700) = 0;
          *(v14 + 2704) = 0;
          *(v14 + 84) = 0;
          *(v14 + 644) = 0;
          *(v14 + 650) = *(v14 + 204) - (*(v14 + 133) + *(v14 + 187)) - (*(v14 + 68) + 4 * v18) + 15;
          *(v14 + 540) = 3;
          *(v14 + 648) = 2;
          if (a4)
          {
            *(v14 + 560) = 1;
            if (v17 != 1)
            {
              v19 = sub_297ED1878(v14);
LABEL_22:
              v11 = v19;
              goto LABEL_23;
            }

LABEL_20:
            *(v14 + 646) = 1;
            v19 = sub_297ED1760(v14, 1, 1, 19);
            goto LABEL_22;
          }

LABEL_19:
          *(v14 + 560) = a4;
          if (v17 != 1)
          {
            v19 = sub_297ED1B28(v14);
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        *(v14 + 540) = 3;
        *(v14 + 648) = 2;
        if (*(v14 + 2704) != 1)
        {
          v17 = *(v14 + 67);
          goto LABEL_19;
        }

        v11 = 26;
      }
    }
  }

LABEL_23:
  sub_297E4DFAC(0, &v24, 8u, 5u, "phFriNfc_MifareUL_WrNdef");
  return v11;
}

uint64_t sub_297ED1760(uint64_t a1, char a2, int a3, char a4)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_SelectSector");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *a1 = a4;
  if (a3 == 1)
  {
    v8 = 3;
    v9 = -1;
    a2 = -62;
  }

  else
  {
    v9 = 0;
    *(a1 + 269) = 0;
    v8 = 5;
  }

  *(a1 + 266) = 0;
  *(a1 + 267) = a2;
  *(a1 + 268) = v9;
  *(a1 + 526) = v8;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "Sending sector command...");
  sub_297ED26C0(a1, *(a1 + 232), (a1 + 266), *(a1 + 526), (a1 + 264));
  v10 = sub_297E98D38(a1, sub_297ED29B0);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_SelectSector");
  return v10;
}

uint64_t sub_297ED1878(uint64_t a1)
{
  v2 = *(a1 + 70);
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_RdBeforeWrite");
  if (*(a1 + 68))
  {
    v3 = *(a1 + 68) - 1;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 - 1) < 2)
  {
    v7 = sub_297ED1358(a1, *(a1 + 70));
LABEL_10:
    v5 = v7;
    v6 = 0;
    goto LABEL_18;
  }

  if (v3 != 3)
  {
    if (v3)
    {
      v6 = 0;
      v5 = 29;
    }

    else
    {
      v4 = *(a1 + 70);
      *(a1 + 647) = v4;
      *(a1 + 266) = v4;
      *(a1 + 267) = 3;
      v5 = 0;
      if (*(a1 + 248) < 0xFFu)
      {
        *(a1 + 268) = 0;
        v6 = 3;
      }

      else
      {
        *(a1 + 268) = 255;
        *(a1 + 270) = 0;
        v6 = 5;
      }
    }

    goto LABEL_18;
  }

  v8 = *(a1 + 647);
  v2 = v8 + 1;
  if (v8 == 255)
  {
    v9 = *(a1 + 646) + 1;
    *(a1 + 646) = v9;
    v7 = sub_297ED1760(a1, v9, 1, 17);
    goto LABEL_10;
  }

  *(a1 + 647) = v2;
  *(a1 + 266) = v2;
  v5 = 0;
  if (*(a1 + 248) < 0xFFu)
  {
    *(a1 + 267) = 0;
    v6 = 2;
  }

  else
  {
    *(a1 + 267) = 255;
    *(a1 + 269) = 0;
    v6 = 4;
  }

LABEL_18:
  v10 = *(a1 + 68);
  if (v10 == 1)
  {
    if (v2 > 0xFF)
    {
      goto LABEL_45;
    }
  }

  else if (v10 != 4 || v2 >= 0x100)
  {
    goto LABEL_45;
  }

  if (v10 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = *(a1 + 248);
  if (v12 <= 0xFE)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 - 2;
  }

  v14 = *(a1 + 2720);
  v15 = *(a1 + 240);
  v16 = *(a1 + 252);
  if (v12 >= v13)
  {
    if (v6 + v13)
    {
      v26 = (v6 + v13) - 1;
    }

    else
    {
      v26 = 0;
    }

    phOsalNfc_MemCopy();
    *(a1 + 216) = v13;
    **(a1 + 528) = v26;
  }

  else
  {
    phOsalNfc_MemCopy();
    v17 = *(a1 + 248);
    v18 = v6 + v17;
    v19 = (v6 + v17);
    *(a1 + 216) = v17;
    if (v6 + v17)
    {
      v20 = (v6 + v17) - 1;
    }

    else
    {
      v20 = 0;
    }

    **(a1 + 528) = v20;
    if (v19 <= 4)
    {
      v21 = 0;
      *(a1 + 74) = 1;
      v22 = v18 + 1;
      v23 = a1 + v18 + 266;
      do
      {
        if (v21)
        {
          v24 = 0;
        }

        else
        {
          v24 = -2;
        }

        *(v23 + v21) = v24;
        v25 = v22++;
        ++v21;
      }

      while (v25 != 5);
    }
  }

  v27 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v28 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  *a1 = 2;
  v5 = sub_297ED4A38(a1);
LABEL_45:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_RdBeforeWrite");
  return v5;
}

uint64_t sub_297ED1B28(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_fillSendBufToWr");
  v2 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v3 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v4 = *(a1 + 248);
  v5 = *(a1 + 252);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > *(a1 + 650))
  {
    LOWORD(v7) = *(a1 + 650);
  }

  *(a1 + 266) = *(a1 + 647);
  v9 = *(a1 + 644);
  if (4 - v9 <= v7)
  {
    v10 = 4 - v9;
  }

  else
  {
    v10 = v7;
  }

  if (*(a1 + 216) || (v30 = *(a1 + 218), !*(a1 + 218)))
  {
    v11 = 0;
  }

  else
  {
    v10 -= v30;
    *(a1 + 267) = 0;
    if (v30 == 1)
    {
      v11 = 8;
    }

    else
    {
      *(a1 + 268) = 0;
      v11 = 12;
    }
  }

  if (v9)
  {
    v12 = *(a1 + 2720);
    phOsalNfc_MemCopy();
  }

  sub_297E4E1B4(2, a1, 8u, 5u, "FindLockBytePosition");
  v13 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v14 = 0;
    v15 = (4 * *(a1 + 647)) & 0x3FF | ((*(a1 + 646) & 0x3F) << 10);
    v16 = v15 + 4;
    v17 = (a1 + 100);
    v18 = v11;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      if (v15 <= (v19 + v20 - 1) && v16 > v19)
      {
        v23 = (v19 + v20 - 1);
        if (v19 < v15 && v16 > v23)
        {
          v11 = v18 | (15 << (v16 - (v19 + v20)));
          v27 = v23 + v14;
          if (v27 >= v15)
          {
            v22 = v27 - 4 * *(a1 + 647) + 1;
          }

          else
          {
            v22 = 1;
          }
        }

        else if (v19 < v15 || v16 > v23)
        {
          v22 = 4;
          v11 = 15;
          v6 = v19 >= v15;
          *(a1 + 646);
          v26 = v19 - 4 * *(a1 + 647);
          if (v6 && v16 >= v23)
          {
            v11 = v18 | (15 << (v16 + ~v23)) & (0xFu >> v26);
            v22 = (v14 + v20);
          }
        }

        else
        {
          *(a1 + 646);
          v11 = v18 | (0xFu >> (v19 - 4 * *(a1 + 647)));
          v28 = v16 + v14;
          v6 = v28 >= v19;
          v29 = v28 - v19;
          if (v6)
          {
            v22 = v29;
          }

          else
          {
            v22 = 0;
          }
        }
      }

      else
      {
        v11 = v18;
        v22 = v14;
      }

      v17 += 2;
      v18 = v11;
      v14 = v22;
      --v13;
    }

    while (v13);
  }

  else
  {
    v22 = 0;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "FindLockBytePosition");
  sub_297E4E1B4(2, a1, 8u, 5u, "FindResBytePosition");
  v31 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v32 = (4 * *(a1 + 647)) & 0x3FF | ((*(a1 + 646) & 0x3F) << 10);
    v33 = v32 + 4;
    v34 = (a1 + 154);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      if (v32 <= (v35 + v36 - 1) && v33 > v35)
      {
        v40 = (v35 + v36 - 1);
        if (v35 < v32 && v33 > v40)
        {
          v38 = v11 | (15 << (v33 - (v35 + v36)));
          v39 = v22 + v40 - 4 * *(a1 + 647) + 1;
        }

        else if (v35 < v32 || v33 > v40)
        {
          v39 = 4;
          v38 = 15;
          v6 = v35 >= v32;
          *(a1 + 646);
          v43 = v35 - 4 * *(a1 + 647);
          if (v6 && v33 >= v40)
          {
            v38 = v11 | (15 << (v33 + ~v40)) & (0xFu >> v43);
            v39 = (v22 + v36);
          }
        }

        else
        {
          *(a1 + 646);
          v38 = v11 | (0xFu >> (v35 - 4 * *(a1 + 647)));
          v44 = v33 + v22;
          v6 = v44 >= v35;
          v45 = v44 - v35;
          if (v6)
          {
            v39 = v45;
          }

          else
          {
            v39 = v22;
          }
        }
      }

      else
      {
        v38 = v11;
        v39 = v22;
      }

      v34 += 2;
      v11 = v38;
      v22 = v39;
      --v31;
    }

    while (v31);
  }

  else
  {
    LOBYTE(v38) = v11;
    LOBYTE(v39) = v22;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "FindResBytePosition");
  if (!v39)
  {
    v50 = *(a1 + 2720);
    v51 = *(a1 + 644) + *(a1 + 218) + a1 + 266;
    v46 = v10;
    v52 = *(a1 + 240) + *(a1 + 252);
    phOsalNfc_MemCopy();
    goto LABEL_88;
  }

  if ((v38 & 8) != 0 || *(a1 + 248) <= *(a1 + 252))
  {
    v46 = 0;
    if ((v38 & 4) != 0)
    {
      goto LABEL_80;
    }

LABEL_78:
    v47 = *(a1 + 252) + v46;
    if (*(a1 + 248) > v47)
    {
      *(a1 + 268) = *(*(a1 + 240) + v47);
      ++v46;
    }

    goto LABEL_80;
  }

  *(a1 + 267) = *(*(a1 + 240) + *(a1 + 252));
  v46 = 1;
  if ((v38 & 4) == 0)
  {
    goto LABEL_78;
  }

LABEL_80:
  if ((v38 & 2) == 0)
  {
    v48 = *(a1 + 252) + v46;
    if (*(a1 + 248) > v48)
    {
      *(a1 + 269) = *(*(a1 + 240) + v48);
      ++v46;
    }
  }

  if ((v38 & 1) == 0)
  {
    v49 = *(a1 + 252) + v46;
    if (*(a1 + 248) > v49)
    {
      *(a1 + 270) = *(*(a1 + 240) + v49);
      ++v46;
    }
  }

  v10 = v46;
LABEL_88:
  *(a1 + 216) = v10;
  **(a1 + 528) = v10 + v39 + *(a1 + 644) + *(a1 + 218);
  v53 = v46 + *(a1 + 644);
  if (v53 + v39 <= 3)
  {
    v54 = v53 + *(a1 + 218);
    v55 = v39 + v54 + 1;
    if ((v39 + v53 + *(a1 + 218) + 1) <= 4u)
    {
      v56 = 0;
      v57 = v39 + v54 + 1;
      *(a1 + 74) = 1;
      v58 = vdupq_n_s64(4 - v55);
      v59 = (19 - (v39 + v54)) & 0x10;
      v60 = v57 - v55;
      v61 = a1 + v55 + 281;
      do
      {
        v62 = vdupq_n_s64(v56);
        v63 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F13220)));
        if (vuzp1_s8(vuzp1_s16(v63, *v58.i8), *v58.i8).u8[0])
        {
          if (v60 == v56)
          {
            v64 = -2;
          }

          else
          {
            v64 = 0;
          }

          *(v61 + v56 - 15) = v64;
        }

        if (vuzp1_s8(vuzp1_s16(v63, *&v58), *&v58).i8[1])
        {
          if (v60 - 1 == v56)
          {
            v65 = -2;
          }

          else
          {
            v65 = 0;
          }

          *(v61 + v56 - 14) = v65;
        }

        v66 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F13210)));
        if (vuzp1_s8(vuzp1_s16(*&v58, v66), *&v58).i8[2])
        {
          if (v60 - 2 == v56)
          {
            v67 = -2;
          }

          else
          {
            v67 = 0;
          }

          *(v61 + v56 - 13) = v67;
        }

        if (vuzp1_s8(vuzp1_s16(*&v58, v66), *&v58).i8[3])
        {
          if (v60 - 3 == v56)
          {
            v68 = -2;
          }

          else
          {
            v68 = 0;
          }

          *(v61 + v56 - 12) = v68;
        }

        v69 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F13710)));
        if (vuzp1_s8(*&v58, vuzp1_s16(v69, *&v58)).i32[1])
        {
          if (v60 - 4 == v56)
          {
            v70 = -2;
          }

          else
          {
            v70 = 0;
          }

          *(v61 + v56 - 11) = v70;
        }

        if (vuzp1_s8(*&v58, vuzp1_s16(v69, *&v58)).i8[5])
        {
          if (v60 - 5 == v56)
          {
            v71 = -2;
          }

          else
          {
            v71 = 0;
          }

          *(v61 + v56 - 10) = v71;
        }

        v72 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F13700)));
        if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, v72)).i8[6])
        {
          if (v60 - 6 == v56)
          {
            v73 = -2;
          }

          else
          {
            v73 = 0;
          }

          *(v61 + v56 - 9) = v73;
        }

        if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, v72)).i8[7])
        {
          if (v60 - 7 == v56)
          {
            v74 = -2;
          }

          else
          {
            v74 = 0;
          }

          *(v61 + v56 - 8) = v74;
        }

        v75 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F136F0)));
        if (vuzp1_s8(vuzp1_s16(v75, *v58.i8), *v58.i8).u8[0])
        {
          if (v60 - 8 == v56)
          {
            v76 = -2;
          }

          else
          {
            v76 = 0;
          }

          *(v61 + v56 - 7) = v76;
        }

        if (vuzp1_s8(vuzp1_s16(v75, *&v58), *&v58).i8[1])
        {
          if (v60 - 9 == v56)
          {
            v77 = -2;
          }

          else
          {
            v77 = 0;
          }

          *(v61 + v56 - 6) = v77;
        }

        v78 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F136E0)));
        if (vuzp1_s8(vuzp1_s16(*&v58, v78), *&v58).i8[2])
        {
          if (v60 - 10 == v56)
          {
            v79 = -2;
          }

          else
          {
            v79 = 0;
          }

          *(v61 + v56 - 5) = v79;
        }

        if (vuzp1_s8(vuzp1_s16(*&v58, v78), *&v58).i8[3])
        {
          if (v60 - 11 == v56)
          {
            v80 = -2;
          }

          else
          {
            v80 = 0;
          }

          *(v61 + v56 - 4) = v80;
        }

        v81 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F136D0)));
        if (vuzp1_s8(*&v58, vuzp1_s16(v81, *&v58)).i32[1])
        {
          if (v60 - 12 == v56)
          {
            v82 = -2;
          }

          else
          {
            v82 = 0;
          }

          *(v61 + v56 - 3) = v82;
        }

        if (vuzp1_s8(*&v58, vuzp1_s16(v81, *&v58)).i8[5])
        {
          if (v60 - 13 == v56)
          {
            v83 = -2;
          }

          else
          {
            v83 = 0;
          }

          *(v61 + v56 - 2) = v83;
        }

        v84 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(v62, xmmword_297F136C0)));
        if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, v84)).i8[6])
        {
          if (v60 - 14 == v56)
          {
            v85 = -2;
          }

          else
          {
            v85 = 0;
          }

          *(v61 + v56 - 1) = v85;
        }

        if (vuzp1_s8(*&v58, vuzp1_s16(*&v58, v84)).i8[7])
        {
          if (v60 - 15 == v56)
          {
            v86 = -2;
          }

          else
          {
            v86 = 0;
          }

          *(v61 + v56) = v86;
        }

        v56 += 16;
      }

      while (v59 != v56);
    }
  }

  v87 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v88 = *(a1 + 67);
  v89 = *(a1 + 646);
  if (*(a1 + 68) - 1 <= 2)
  {
    if (v88 == v89)
    {
      v90 = *(a1 + 647);
      v91 = *(a1 + 70);
      if (v90 != v91)
      {
LABEL_178:
        v93 = v91 + 1;
        goto LABEL_185;
      }

      v92 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      v88 = *(a1 + 67);
      v89 = *(a1 + 646);
    }

    if (v88 != v89)
    {
      goto LABEL_187;
    }

    v91 = *(a1 + 70);
    v90 = *(a1 + 647);
    goto LABEL_178;
  }

  if (v88 != v89)
  {
    goto LABEL_182;
  }

  v90 = *(a1 + 647);
  v94 = *(a1 + 70);
  if (v94 + 1 == v90)
  {
    v95 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    v88 = *(a1 + 67);
    v89 = *(a1 + 646);
LABEL_182:
    if (v88 != v89)
    {
      goto LABEL_187;
    }

    v94 = *(a1 + 70);
    v90 = *(a1 + 647);
  }

  v93 = v94 + 2;
LABEL_185:
  if (v93 == v90)
  {
    v96 = *(a1 + 2720);
    phOsalNfc_MemCopy();
  }

LABEL_187:
  *a1 = 2;
  *(a1 + 218) = 0;
  v97 = sub_297ED4A38(a1);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_fillSendBufToWr");
  return v97;
}

uint64_t sub_297ED2424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8u, 5u, "phFriNfc_MifareUL_ChkNdef");
  sub_297E57170(v9, &v8);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v8;
      if (v8)
      {
        *(v8 + 8) = a2;
        *(v6 + 40) = a3;
        *(v6 + 547) = 1;
        *(v6 + 208) &= 0xFCu;
        *(v6 + 212) = 0;
        *(v6 + 70) = 4;
        *(v6 + 647) = 2;
        *(v6 + 2710) = 0;
        *(v6 + 540) = 1;
        *(v6 + 266) = 2;
        *(v6 + 526) = 1;
        *v6 = 3;
        *(v6 + 544) = 1;
        *(v6 + 232) = 48;
        *(v6 + 48) = sub_297ED2558;
        *(v6 + 56) = v6;
        *(v6 + 264) = 16;
        sub_297ED26C0(v6, 48, (v6 + 266), 1, (v6 + 264));
        v5 = sub_297E98D38(v8, sub_297ED29B0);
      }
    }
  }

  sub_297E4DFAC(0, &v9, 8u, 5u, "phFriNfc_MifareUL_ChkNdef");
  return v5;
}

uint64_t sub_297ED2558(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8u, 5u, "phFriNfc_MifareUL_Process");
  byte_2A13A5D4D = 0;
  sub_297E4E0B0(0, (a2 + 2712), 8u, 4u, "Received response from card!");
  if (a3)
  {
    goto LABEL_12;
  }

  sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_MifareUL_GetNdefFuncIndex");
  v5 = 0;
  v6 = -1;
  v7 = &byte_2A1E95730;
  do
  {
    v8 = *v7;
    v7 += 16;
    if (*a2 == v8)
    {
      v6 = v5;
    }

    ++v5;
  }

  while (v5 != 20);
  sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_MifareUL_GetNdefFuncIndex");
  if (v6 == 0xFF)
  {
    a3 = 245;
    sub_297ED54CC(a2, 245);
  }

  else
  {
    v9 = *(&off_2A1E95728 + 2 * v6);
    a3 = v9 ? v9(a2, &byte_2A13A5D4D) : 0;
  }

  if (byte_2A13A5D4D == 1)
  {
LABEL_12:
    sub_297ED54CC(a2, a3);
  }

  return sub_297E4DFAC(0, &v11, 8u, 5u, "phFriNfc_MifareUL_Process");
}

uint64_t sub_297ED26C0(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, unsigned __int16 *a5)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phLibNfc_PrintSendData");
  sub_297E4E0B0(2, a1, 8u, 4u, "==============================================");
  if (a2 > 96)
  {
    if (a2 <= 175)
    {
      if (a2 > 161)
      {
        if (a2 == 162)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareWrite4";
          goto LABEL_47;
        }

        if (a2 == 168)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareWriteSector";
          goto LABEL_47;
        }
      }

      else
      {
        if (a2 == 97)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareAuthentB";
          goto LABEL_47;
        }

        if (a2 == 160)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareWrite16";
          goto LABEL_47;
        }
      }
    }

    else if (a2 <= 192)
    {
      if (a2 == 176)
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareTransfer";
        goto LABEL_47;
      }

      if (a2 == 192)
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareDec";
        goto LABEL_47;
      }
    }

    else
    {
      switch(a2)
      {
        case 193:
          v9 = "phLibNfc_PrintSendData: phHal_eMifareInc";
          goto LABEL_47;
        case 194:
          v9 = "phLibNfc_PrintSendData: phHal_eMifareRestore";
          goto LABEL_47;
        case 255:
          v9 = "phLibNfc_PrintSendData: phHal_eMifareInvalidCmd";
          goto LABEL_47;
      }
    }

LABEL_46:
    v9 = "phLibNfc_PrintSendData: Invalid";
    goto LABEL_47;
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareWriteN";
      }

      else
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareSectorSel";
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareRaw";
      goto LABEL_47;
    }

    if (a2 == 1)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareReadN";
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (a2 <= 47)
  {
    if (a2 == 4)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareAuth";
      goto LABEL_47;
    }

    if (a2 == 5)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareProxCheck";
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (a2 != 48)
  {
    if (a2 == 56)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareReadSector";
      goto LABEL_47;
    }

    if (a2 == 96)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareAuthentA";
LABEL_47:
      sub_297E4E0B0(2, a1, 8u, 4u, v9);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_297E4E0B0(2, a1, 8u, 4u, "phLibNfc_PrintSendData: phHal_eMifareRead16/phHal_eMifareRead");
  if (a3)
  {
    v10 = *a3;
    sub_297E50DB0(2, a1, 8u, 4u, "Block address");
    sub_297E50DB0(2, a1, 8u, 4u, "Length of Send buffer");
  }

  if (a5)
  {
    v11 = *a5;
    sub_297E50DB0(2, a1, 8u, 4u, "Length of receive buffer");
  }

LABEL_48:
  sub_297E4E0B0(2, a1, 8u, 4u, "==============================================");

  return sub_297E4DFAC(2, a1, 8u, 5u, "phLibNfc_PrintSendData");
}

uint64_t sub_297ED29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_MifareUL_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_MifareUL_CB_Transceive");
}

uint64_t sub_297ED2A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8u, 5u, "phFriNfc_MfUL_ConvertToReadOnly");
  sub_297E57170(v9, &v8);
  v5 = 1;
  if (a2)
  {
    v6 = v8;
    if (v8)
    {
      *(v8 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *(v6 + 647) = 1027;
      *(v6 + 2710) = 0;
      *(v6 + 540) = 1;
      *(v6 + 266) = 3;
      *(v6 + 526) = 1;
      *v6 = 7;
      *(v6 + 544) = 1;
      *(v6 + 232) = 48;
      *(v6 + 48) = sub_297ED2558;
      *(v6 + 56) = v6;
      *(v6 + 264) = 16;
      sub_297ED26C0(v6, 48, (v6 + 266), 1, (v6 + 264));
      v5 = sub_297E98D38(v8, sub_297ED29B0);
    }
  }

  sub_297E4DFAC(0, &v9, 8u, 5u, "phFriNfc_MfUL_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297ED2B64(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iChkNdefComp");
  if (*(a1 + 264) != 16)
  {
    *a2 = 1;
    v6 = 27;
    goto LABEL_24;
  }

  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "Checking CC in the response");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ChkCCBytes");
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "Verifying Capability container (CC) of the card...");
  v4 = *(a1 + 273);
  if (*(a1 + 273))
  {
    if (v4 != 15)
    {
      sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "Invalid Read/Write state");
      *(a1 + 545) = 3;
      goto LABEL_11;
    }

    LOBYTE(v4) = 1;
    v5 = "Card is Read-Only";
  }

  else
  {
    v5 = "Card is Read-Writable";
  }

  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, v5);
  *(a1 + 545) = v4;
  if (*(a1 + 270) == 225)
  {
    sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "NFC Forum defined data is stored in the data area (Byte 0 of CC is 0xE1)");
    v6 = sub_297E9C178(a1, 5u);
    if (v6)
    {
      v7 = *(a1 + 204);
    }

    else
    {
      v7 = 8 * *(a1 + 272);
    }

    *(a1 + 204) = v7;
    *(a1 + 650) = v7;
    if (v7 >= 0x101)
    {
      v8 = v7 - 2;
      *(a1 + 204) = v8;
      *(a1 + 650) = v8;
    }

    sub_297E50DB0(0, a1 + 2712, 8u, 4u, "Memory size:)");
    goto LABEL_16;
  }

LABEL_11:
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "Failed: Either E1 byte check failed or card is in invalid state");
  *(a1 + 545) = 3;
  v6 = 22;
LABEL_16:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ChkCCBytes");
  *a2 = v6 != 0;
  if (v6)
  {
    *(a1 + 647) = 4;
  }

  else
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ChkLockBits");
    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ChkLockBits");
    *(a1 + 647) = 4;
    v6 = sub_297ED1358(a1, 4);
  }

  if (v6 == 13)
  {
    *a2 = *a2;
  }

  else
  {
    *a2 = 1;
    if (v6 && v6 != 25)
    {
      *(a1 + 545) = 3;
    }
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iChkNdefComp");
  return v6;
}

uint64_t sub_297ED2E14(uint64_t a1, BOOL *a2)
{
  v79 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iRead");
  if (*(a1 + 264) != 16)
  {
    v22 = 27;
    v23 = 1;
    goto LABEL_111;
  }

  v4 = *(a1 + 82);
  v5 = 4 * (*(a1 + 70) & 3);
  v6 = *(a1 + 68);
  v7 = v6 - 1;
  if (*(a1 + 68))
  {
    v8 = v6 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + v5;
  v10 = (v8 + v5);
  if ((v8 + v5) >= 0x10000)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v8 + v5);
  }

  if (v4 >= 0xFF)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v12 + v4 >= 0x10000)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v12 + v4);
  }

  v14 = (v11 + v13) >> 16;
  if (!*(a1 + 68))
  {
    v7 = 0;
  }

  v15 = v7 + v5;
  if (v9 >= 0x10000)
  {
    v15 = 0;
  }

  v16 = (v15 + v13);
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a1 + 2710);
  if (!((v17 + v18) >> 16))
  {
    v19 = *(a1 + 2700);
    if (HIWORD(v9))
    {
      v21 = 0;
    }

    else
    {
      if ((v13 + v10) >> 16)
      {
        v24 = 0;
LABEL_31:
        if (v19 >= (v24 + v18))
        {
          goto LABEL_89;
        }

        memset(v78, 0, sizeof(v78));
        sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CopyRdBytes");
        sub_297E4E1B4(2, a1, 8u, 5u, "cpDynLockBytes");
        v25 = *(a1 + 132);
        if (*(a1 + 132))
        {
          v26 = 0;
          v27 = 4 * *(a1 + 647);
          v28 = v27 & 0xC;
          v29 = v27 & 0xFFFF03FF | ((*(a1 + 646) & 0x3F) << 10);
          v30 = 16 - v28;
          v31 = (a1 + 100);
          do
          {
            v32 = *(v31 - 1);
            v33 = *v31;
            if (v29 <= (v32 + v33 - 1) && v29 + 16 > v32)
            {
              v35 = v78 + 2 * v26;
              if (v32 <= v29)
              {
                *v35 = v29;
                if ((v32 + v33 - v29) <= 0x10u)
                {
                  v37 = v32 + v33 - v29;
                }

                else
                {
                  v37 = v30;
                }

                *(v78 + 2 * v26 + 1) = v37;
              }

              else
              {
                *v35 = v32;
                v36 = v78 + 4 * v26;
                *(v36 + 2) = v33;
                if (v33 >= 0x11)
                {
                  *(v36 | 2) = 16 - (v32 & 0xF);
                }
              }

              ++v26;
            }

            v31 += 2;
            --v25;
          }

          while (v25);
        }

        else
        {
          v26 = 0;
        }

        sub_297E4DFAC(2, a1, 8u, 5u, "cpDynLockBytes");
        sub_297E4E1B4(2, a1, 8u, 5u, "cpReservedBytes");
        v38 = *(a1 + 186);
        if (*(a1 + 186))
        {
          v39 = 4 * *(a1 + 647);
          v40 = v39 & 0xC;
          v41 = v39 & 0xFFFF03FF | ((*(a1 + 646) & 0x3F) << 10);
          v42 = 16 - v40;
          v43 = (a1 + 154);
          do
          {
            v44 = *(v43 - 1);
            v45 = *v43;
            if (v41 <= (v44 + v45 - 1) && v41 + 16 > v44)
            {
              v47 = v78 + 2 * v26;
              if (v44 <= v41)
              {
                *v47 = v41;
                if ((v44 + v45 - v41) <= 0x10u)
                {
                  v49 = v44 + v45 - v41;
                }

                else
                {
                  v49 = v42;
                }

                *(v78 + 2 * v26 + 1) = v49;
              }

              else
              {
                *v47 = v44;
                v48 = v78 + 4 * v26;
                *(v48 + 2) = v45;
                if (v45 >= 0x11)
                {
                  *(v48 | 2) = 16 - (v44 & 0xF);
                }
              }

              ++v26;
            }

            v43 += 2;
            --v38;
          }

          while (v38);
        }

        sub_297E4DFAC(2, a1, 8u, 5u, "cpReservedBytes");
        sub_297E9C28C(a1, v78, v26);
        if (v26)
        {
          v75 = v4;
          v76 = a2;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = v78;
          v77 = v78[0];
          v55 = v26;
          do
          {
            if (v50)
            {
              v56 = *v54 - (v52 + v51);
            }

            else
            {
              v56 = v77 - 4 * *(a1 + 647);
            }

            if (v56)
            {
              v57 = *(a1 + 2720);
              phOsalNfc_MemCopy();
              if (v56 + v19 >= 0x10000)
              {
                LOWORD(v19) = 0;
              }

              else
              {
                LOWORD(v19) = v19 + v56;
              }

              v55 = v26;
            }

            v51 = v54[2];
            v53 += v56 + v51;
            ++v50;
            v58 = *v54;
            v54 += 4;
            v52 = v58;
          }

          while (v50 < v55);
          a2 = v76;
          v4 = v75;
          if (v53 >= 0x11u)
          {
            v59 = *(a1 + 2700);
            goto LABEL_81;
          }
        }

        else
        {
          v53 = 0;
        }

        v60 = *(a1 + 2720);
        phOsalNfc_MemCopy();
        v59 = v19 - v53 + 16;
        *(a1 + 2700) = v59;
LABEL_81:
        v61 = *(a1 + 82);
        v62 = *(a1 + 647);
        if (v61 >= 0xFF)
        {
          v63 = 4;
        }

        else
        {
          v63 = 2;
        }

        v64 = v63 + v61 + *(a1 + 2710) > v59;
        if ((v62 + 4 * v64) > 0xFF)
        {
          if (!*(a1 + 646))
          {
            *(a1 + 646) = -255;
            v22 = sub_297ED1760(a1, 1, 1, 13);
            sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CopyRdBytes");
            if (v22)
            {
              v23 = 0;
              goto LABEL_111;
            }

            goto LABEL_88;
          }
        }

        else
        {
          *(a1 + 647) = v62 + 4 * v64;
        }

        sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CopyRdBytes");
LABEL_88:
        v6 = *(a1 + 68);
        v18 = *(a1 + 2710);
        v5 = 4 * (*(a1 + 70) & 3);
        goto LABEL_89;
      }

      v20 = v6 - 1;
      if (!*(a1 + 68))
      {
        v20 = 0;
      }

      v21 = v20 + v5;
    }

    v24 = v21 + v13;
    goto LABEL_31;
  }

LABEL_89:
  v65 = v4 + v12 + v18 + v5 + v6 - 1;
  if (!HIWORD(v65))
  {
    if (v65 <= *(a1 + 2700))
    {
      sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_CalcByteNum");
      v67 = 652;
      while (1)
      {
        if (*(a1 + v67) == 3)
        {
          v68 = *(a1 + v67 + 1);
          v69 = *(a1 + 82);
          v70 = v68 == 255 || v69 == v68;
          if (v70 && (v68 != 255 || v69 == bswap32(*(a1 + v67 + 2)) >> 16))
          {
            break;
          }
        }

        if (++v67 == 668)
        {
          goto LABEL_105;
        }
      }

      *(a1 + 2702) = v67 - 651;
LABEL_105:
      sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_CalcByteNum");
      v71 = *(a1 + 2702);
      if (*(a1 + 652 + v71) == 255)
      {
        v72 = v71 + 3;
      }

      else
      {
        v72 = v71 + 1;
      }

      *(a1 + 2702) = v72;
      sub_297ED1444(a1);
      v23 = 1;
      if (!*(a1 + 646))
      {
        v22 = 0;
        goto LABEL_111;
      }

      *(a1 + 646) = 0;
      *(a1 + 543) = 1;
      v66 = sub_297ED1760(a1, 0, 1, 11);
    }

    else
    {
      v66 = sub_297ED34C0(a1);
    }

    v22 = v66;
    v23 = v66 != 13;
LABEL_111:
    *a2 = v23;
    goto LABEL_112;
  }

  v22 = 27;
LABEL_112:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iRead");
  v73 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t sub_297ED34C0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_Rd16Bytes");
  v2 = 1;
  *a1 = 1;
  *(a1 + 540) = 2;
  if (*(a1 + 248) > *(a1 + 252))
  {
    *(a1 + 208) &= 0xFCu;
    *(a1 + 212) = 0;
    *(a1 + 266) = *(a1 + 647);
    *(a1 + 526) = 1;
    *(a1 + 264) = 260;
    *(a1 + 232) = 48;
    v2 = sub_297E98D38(a1, sub_297ED29B0);
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_Rd16Bytes");
  return v2;
}

uint64_t sub_297ED358C(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iWrite");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ProWrittenBytes");
  v4 = *(a1 + 252);
  v5 = *(a1 + 248);
  if (v4 >= v5)
  {
    v10 = 29;
  }

  else
  {
    v6 = *(a1 + 216);
    v7 = v6 + v4;
    *(a1 + 252) = v6 + v4;
    if (**(a1 + 528) > 3u)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      v9 = **(a1 + 528);
      v6 = *(a1 + 216);
      v7 = *(a1 + 252);
      v5 = *(a1 + 248);
    }

    *(a1 + 644) = v9;
    v11 = *(a1 + 650);
    *(a1 + 650) = v11 - v6;
    if (v5 == v7 || v11 == v6)
    {
      *(a1 + 2704) = v11 == v6;
      v15 = v11 == v6 || *(a1 + 74) == 1;
      *(a1 + 74) = v15;
      if (v9)
      {
        v16 = *(a1 + 647);
      }

      else
      {
        v16 = *(a1 + 647) + 1;
      }

      *(a1 + 647) = v16;
      **(a1 + 256) = v7;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v12 = *(a1 + 647);
    v13 = sub_297ED5998(a1, v12 + 1, *(a1 + 646));
    if (v12 == 255)
    {
      if (!v13 || !sub_297ED5A78(a1, 256, *(a1 + 646)))
      {
        *(a1 + 540) = 5;
      }

      v18 = *(a1 + 646) + 1;
      *(a1 + 646) = v18;
      v14 = sub_297ED1760(a1, v18, 1, 15);
    }

    else if (v13 && sub_297ED5A78(a1, v12 + 1, *(a1 + 646)))
    {
      ++*(a1 + 647);
      v14 = sub_297ED1B28(a1);
    }

    else
    {
      *(a1 + 540) = 5;
      v14 = sub_297ED1358(a1, v12 + 1);
    }

    v10 = v14;
    if (!v14)
    {
      if (*(a1 + 74) != 1)
      {
LABEL_27:
        if (!*(a1 + 650))
        {
          v10 = 0;
          goto LABEL_30;
        }

        v17 = sub_297ED3F48(a1);
        goto LABEL_29;
      }

LABEL_19:
      v17 = sub_297ED3FD4(a1);
LABEL_29:
      v10 = v17;
    }
  }

LABEL_30:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ProWrittenBytes");
  *a2 = v10 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iWrite");
  return v10;
}

uint64_t sub_297ED37E4(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_findNDEFTLV");
  if (*(a1 + 72) == 1 || ((v4 = *(a1 + 68), v5 = v4 != 0, v6 = v4 - 1, v5) ? (v7 = v6) : (v7 = 0), *(a1 + 73) == 1))
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "procSplitTlv");
    if (*(a1 + 72) == 1)
    {
      v7 = *(a1 + 266) + 1;
      v8 = *(a1 + 2709);
      if (v8 == 2)
      {
        v9 = sub_297ED5848(a1, 1u);
      }

      else
      {
        if (v8 != 1)
        {
          v12 = 255;
          goto LABEL_18;
        }

        v9 = sub_297ED56D8(a1, 1u);
      }

      v12 = v9;
LABEL_18:
      *(a1 + 72) = 0;
      goto LABEL_23;
    }

    if (*(a1 + 73) != 1)
    {
      sub_297E4DFAC(2, a1, 8u, 5u, "procSplitTlv");
LABEL_24:
      v13 = 255;
      goto LABEL_72;
    }

    v10 = *(a1 + 2709);
    if (v10 == 2)
    {
      v11 = sub_297ED5848(a1, 0);
    }

    else
    {
      if (v10 != 1)
      {
        v12 = 255;
        goto LABEL_22;
      }

      v11 = sub_297ED56D8(a1, 0);
    }

    v12 = v11;
LABEL_22:
    *(a1 + 73) = 0;
    v7 = 3;
LABEL_23:
    *(a1 + 75) = 0;
    sub_297E4DFAC(2, a1, 8u, 5u, "procSplitTlv");
    if (v12 == 255)
    {
      goto LABEL_24;
    }
  }

  v14 = a1 + 266;
  while (1)
  {
    while (1)
    {
      v15 = v7;
      v16 = *(v14 + v7);
      if (v16 > 0xFC)
      {
        if (v16 == 253)
        {
          goto LABEL_35;
        }

        if (v16 == 254)
        {
LABEL_65:
          *a2 = 1;
          goto LABEL_66;
        }

LABEL_67:
        *(a1 + 66) = v16 == 3;
        if (v16 != 3)
        {
          v33 = "No NDEF TLV found!";
          goto LABEL_74;
        }

        *(a1 + 68) = (v7 & 3) + 1;
        v30 = (*(a1 + 70) & 0xFC) + (v7 >> 2);
        *(a1 + 70) = v30;
        *(a1 + 67) = *(a1 + 646);
        *(a1 + 650) = *(a1 + 204) - (v7 & 3 | (4 * v30)) - (*(a1 + 133) + *(a1 + 187)) + 14;
        v19 = sub_297ED5620(a1, v7);
        if (v19)
        {
          goto LABEL_70;
        }

        if (!*(a1 + 650))
        {
          goto LABEL_66;
        }

        v19 = sub_297ED5620(a1, (v7 + 1));
        if (v19)
        {
LABEL_70:
          v13 = v19;
          *(a1 + 72) = 1;
          v31 = 3;
LABEL_71:
          *(a1 + 75) = v31;
          goto LABEL_72;
        }

        v34 = *(v14 + (v7 + 1));
        if (v34 == 255)
        {
          v35 = sub_297ED5620(a1, (v7 + 2));
          if (v35)
          {
            v13 = v35;
            *(a1 + 72) = 1;
            v31 = 2;
            goto LABEL_71;
          }

          v37 = *(v14 + (v7 + 2));
          v38 = sub_297ED5620(a1, (v7 + 3));
          if (v38)
          {
            v13 = v38;
            *(a1 + 72) = 1;
            *(a1 + 75) = 1;
            *(a1 + 78) = *(v14 + (v7 + 3) - 1);
            goto LABEL_72;
          }

          v34 = *(v14 + (v7 + 3)) | (v37 << 8);
          if (v34 > *(a1 + 650))
          {
            *(a1 + 82) = v34;
            goto LABEL_96;
          }

          *(a1 + 80) = v34;
          *(a1 + 82) = v34;
          *(a1 + 66) = 1;
          *(a1 + 67) = *(a1 + 646);
LABEL_98:
          if (*(a1 + 75))
          {
            v13 = 0;
            goto LABEL_72;
          }

          v28 = sub_297E9C0B8(a1, v34);
LABEL_62:
          v13 = v28;
          goto LABEL_72;
        }

        *(a1 + 80) = v34;
        *(a1 + 82) = v34;
        v36 = *(a1 + 650);
        if (v36 < v34 || v36 < 2)
        {
          if (v34)
          {
            if (v36 < v34)
            {
LABEL_96:
              *a2 = 1;
              v13 = 25;
              goto LABEL_72;
            }

            v13 = 22;
LABEL_93:
            *a2 = 1;
            goto LABEL_72;
          }
        }

        else if (v34 || *(a1 + 540) != 2)
        {
          goto LABEL_98;
        }

        if (*(a1 + 65))
        {
          v13 = 22;
        }

        else
        {
          v13 = 157;
        }

        goto LABEL_93;
      }

      if (v16 - 1 >= 2)
      {
        break;
      }

LABEL_35:
      *(a1 + 2710) += *(v14 + v7 + 1) + 2;
      *(a1 + 2709) = *(v14 + v7);
      *(a1 + 68) = (v7 & 3) + 1;
      v19 = sub_297ED5620(a1, v7);
      if (v19)
      {
        goto LABEL_70;
      }

      v20 = *(a1 + 650) - 1;
      *(a1 + 650) = v20;
      if (!v20)
      {
        goto LABEL_66;
      }

      v21 = v7 + 1;
      v19 = sub_297ED5620(a1, (v7 + 1));
      if (v19)
      {
        goto LABEL_70;
      }

      v22 = *(v14 + (v7 + 1));
      if (*(v14 + (v7 + 1)))
      {
        if (v22 == 255)
        {
          goto LABEL_65;
        }
      }

      else if (*(a1 + 66) != 1)
      {
        goto LABEL_65;
      }

      *(a1 + 80) = v22;
      *(a1 + 82) = v22;
      v23 = *(a1 + 650);
      if (v23 < v22 || v23 < 2 || !v22 && *(a1 + 540) == 2)
      {
        sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "No NDEF TLV found!");
        goto LABEL_65;
      }

      ++v7;
      if (*(a1 + 66) != 1)
      {
        *(a1 + 68) = ((v15 + 2 + v22) & 3) + 1;
        v24 = (*(a1 + 70) & 0xFC) + ((v22 + v21 + 1) >> 2);
        *(a1 + 70) = v24;
        if ((v15 + 1) != 15 || (v25 = *(a1 + 280), v25 != 2) && v25 != 1)
        {
          v26 = *(v14 + (v15 + 1) - 1);
          if (v26 == 2)
          {
            v27 = sub_297ED5848(a1, (v15 + 2));
          }

          else
          {
            if (v26 != 1)
            {
              goto LABEL_60;
            }

            v27 = sub_297ED56D8(a1, (v15 + 2));
          }

          if (v27 == 255)
          {
            goto LABEL_24;
          }

          LOWORD(v23) = *(a1 + 650);
          goto LABEL_60;
        }

        *(a1 + 73) = 1;
        *(a1 + 647) = v24;
LABEL_60:
        v29 = *(v14 + (v15 + 1));
        *(a1 + 650) = v23 + ~v29;
        v7 = v21 + v29 + 1;
        if ((v21 + v29) >= 0x10u)
        {
          v28 = sub_297ED1358(a1, *(a1 + 70));
          goto LABEL_62;
        }
      }
    }

    if (*(v14 + v7))
    {
      goto LABEL_67;
    }

    v17 = *(a1 + 650) - 1;
    *(a1 + 650) = v17;
    if (!v17)
    {
      break;
    }

    v18 = *(a1 + 68);
    if (v18 == 4)
    {
      *(a1 + 68) = 1;
      ++*(a1 + 70);
    }

    else
    {
      if (!*(a1 + 68))
      {
        LOBYTE(v18) = 1;
      }

      *(a1 + 68) = (v18 & 3) + 1;
    }

    ++v7;
    v28 = sub_297ED5620(a1, (v15 + 1));
    if (v28)
    {
      goto LABEL_62;
    }
  }

  v33 = "No NDEF TLV found, complete card has been read";
LABEL_74:
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, v33);
LABEL_66:
  v13 = 22;
LABEL_72:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_findNDEFTLV");
  return v13;
}

uint64_t sub_297ED3DF8(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_NxtOp");
  v4 = *(a1 + 540);
  if (v4 == 2)
  {
    if (*(a1 + 67) == 1)
    {
      *(a1 + 646) = 1;
      v8 = sub_297ED1760(a1, 1, 1, 13);
    }

    else
    {
      *(a1 + 647) = *(a1 + 70) & 0xFC;
      v8 = sub_297ED34C0(a1);
    }

    v7 = v8;
    *a2 = v8 != 13;
  }

  else if (v4 == 1 && (*a2 = 1, *(a1 + 204) - 2 < *(a1 + 82)))
  {
    sub_297E4E0B0(2, a1, 8u, 2u, "phFriNfc_MfUL_H_findNDEFTLV: Current NDEF message exceeds the Maximum Tag NDEF size");
    v5 = *(a1 + 82);
    sub_297E50EBC(2, a1, 8u, 2u, "phFriNfc_MfUL_H_findNDEFTLV:Current Ndef Message size");
    v6 = *(a1 + 650);
    sub_297E50EBC(2, a1, 8u, 2u, "phFriNfc_MfUL_H_findNDEFTLV:Maximum Ndef Message size");
    *(a1 + 545) = 0;
    v7 = 25;
  }

  else
  {
    v7 = 0;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_NxtOp");
  return v7;
}

uint64_t sub_297ED3F48(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_WrTermTLV");
  *a1 = 5;
  *(a1 + 266) = *(a1 + 647);
  *(a1 + 267) = -2;
  *(a1 + 268) = 0;
  v2 = sub_297ED4A38(a1);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_WrTermTLV");
  return v2;
}

uint64_t sub_297ED3FD4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_UpdateWrLen");
  if (*(a1 + 67) == *(a1 + 646))
  {
    v2 = *(a1 + 68);
    if (v2 == 4)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2 + 1;
    }

    if (v2 == 4)
    {
      v4 = *(a1 + 70) + 1;
    }

    else
    {
      v4 = *(a1 + 70);
    }
  }

  else
  {
    if (*(a1 + 70) != 255 || *(a1 + 67) || *(a1 + 68) != 4)
    {
      if (*(a1 + 67))
      {
        v7 = 245;
      }

      else
      {
        *(a1 + 646) = 0;
        *(a1 + 543) = 2;
        v7 = sub_297ED1760(a1, 0, 1, 11);
      }

      goto LABEL_38;
    }

    v4 = 0;
    v3 = 1;
  }

  v5 = *(a1 + 2720);
  if (*(a1 + 218))
  {
    phOsalNfc_MemCopy();
    v6 = *(a1 + 218);
    if (v6 == 2)
    {
      *(a1 + 267) = bswap32(*(a1 + 252)) >> 16;
    }

    else if (v6 == 1)
    {
      *(a1 + 267) = *(a1 + 252);
    }

    *(a1 + 218) = 0;
    ++v4;
  }

  else
  {
    v8 = a1 + 266;
    phOsalNfc_MemCopy();
    v9 = *(a1 + 252);
    if (v9 < 0xFF)
    {
      if (*(a1 + 560) != 1)
      {
        LOBYTE(v9) = *(v8 + v3) + v9;
      }

      *(v8 + v3) = v9;
    }

    else
    {
      if (v3 != 65534 && v3 != 0xFFFF)
      {
        v10 = v3 + 1;
      }

      else
      {
        v10 = v3;
      }

      if ((v10 & 0xFFFE) == 2)
      {
        *(v8 + v10) = __rev16(v9);
        *(a1 + 218) = 0;
      }

      else
      {
        if (v10 == 4)
        {
          *(a1 + 270) = BYTE1(v9);
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        *(a1 + 218) = v11;
      }
    }
  }

  v12 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  *(a1 + 266) = v4;
  v7 = sub_297ED4A38(a1);
  if (*(a1 + 218))
  {
    v13 = 5;
  }

  else
  {
    v13 = 6;
  }

  *a1 = v13;
LABEL_38:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_UpdateWrLen");
  return v7;
}

uint64_t sub_297ED41E4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iFndNdefComp");
  if (*(a1 + 264) != 16)
  {
    *a2 = 1;
    v5 = 27;
    goto LABEL_67;
  }

  v4 = *(a1 + 540);
  if ((v4 - 1) < 2)
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iFndNdefCompReadOp");
    *a2 = 0;
    if (*(a1 + 75))
    {
      sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ChkRemainTLV");
      v7 = *(a1 + 75);
      if ((v7 - 1) > 1)
      {
        v11 = *(a1 + 266);
        if (v11 != 255 && (*(a1 + 266) || *(a1 + 66) == 1))
        {
          v12 = *(a1 + 650);
          *(a1 + 80) = v11;
          *(a1 + 82) = v11;
          if (v12 >= v11 && *(a1 + 66) != 1)
          {
            sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_UpdateLen");
            *(a1 + 650) -= v11;
            *(a1 + 68) = ((v11 + 1) & 3) + 1;
            *(a1 + 70) = *(a1 + 647) + ((v11 + 1) >> 2);
            sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_UpdateLen");
            if (*(a1 + 266) > 0xFu)
            {
              sub_297ED1358(a1, *(a1 + 70));
            }

            else
            {
              sub_297ED37E4(a1, a2);
            }
          }
        }

        else
        {
          v19 = __rev16(*(a1 + 267));
          if (v19 <= *(a1 + 650))
          {
            sub_297E9C0B8(a1, v19);
          }

          *(a1 + 80) = v19;
          *(a1 + 82) = v19;
        }
      }

      else
      {
        if (v7 == 1)
        {
          v8 = *(a1 + 78);
          v9 = 266;
        }

        else
        {
          LOBYTE(v8) = *(a1 + 266);
          v9 = 267;
        }

        v20 = *(a1 + v9) | (v8 << 8);
        *(a1 + 80) = *(a1 + v9) | (v8 << 8);
        *(a1 + 82) = v20;
        v21 = 1;
        if (v20 >= 0xFF && *(a1 + 650) > v20)
        {
          v21 = sub_297E9C0B8(a1, v20) == 1;
        }

        *a2 = v21;
      }

      *(a1 + 75) = 0;
      v5 = sub_297E9C0B8(a1, *(a1 + 82));
      sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_ChkRemainTLV");
    }

    else
    {
      v10 = *(a1 + 66);
      if (v10 == 1)
      {
        v5 = 0;
        goto LABEL_43;
      }

      sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "Checking NDEF TLV (Type: 0x03) in the response");
      v5 = sub_297ED37E4(a1, a2);
      *a2 = v5 != 13;
    }

    if (*(a1 + 66) != 1)
    {
LABEL_52:
      if ((v5 > 0x19 || ((1 << v5) & 0x2002001) == 0) && *(a1 + 540) == 1)
      {
        *(a1 + 545) = 3;
      }

      v26 = "phFriNfc_MifareUL_iFndNdefCompReadOp";
      goto LABEL_61;
    }

    v10 = *(a1 + 75) == 0;
LABEL_43:
    if (v10 && v5 != 157)
    {
      *a2 = 0;
      if (*(a1 + 646))
      {
        *(a1 + 646) = 0;
        *(a1 + 543) = 4;
        v5 = sub_297ED1760(a1, 0, 1, 11);
        *a2 = v5 != 13;
      }

      else
      {
        v5 = sub_297ED3DF8(a1, a2);
      }
    }

    goto LABEL_52;
  }

  if (v4 == 3)
  {
    if (*(a1 + 84) == 1)
    {
      v5 = sub_297ED3FD4(a1);
LABEL_66:
      *a2 = v5 != 13;
      goto LABEL_67;
    }

    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CallWrOp");
    *(a1 + 647) = *(a1 + 70);
    v13 = *(a1 + 2720);
    v14 = a1 + 266;
    phOsalNfc_MemCopy();
    v15 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    *(a1 + 266) = *(a1 + 647);
    v16 = *(a1 + 68);
    v17 = v16 + 1;
    if (*(a1 + 248) < 0xFFu)
    {
      *(v14 + v17) = 0;
      if (v16 > 2 || !sub_297ED5998(a1, *(a1 + 647), *(a1 + 646)) || !sub_297ED5A78(a1, *(a1 + 647), *(a1 + 646)))
      {
        goto LABEL_65;
      }

      v22 = *(a1 + 2720);
      v23 = *(a1 + 240);
      v24 = *(a1 + 252);
      v25 = 1;
      phOsalNfc_MemCopy();
    }

    else
    {
      *(v14 + v17) = -1;
      if (v16 > 2)
      {
        v18 = 2;
      }

      else
      {
        *(v16 + v14 + 2) = 0;
        v18 = 1;
      }

      v25 = 0;
      *(a1 + 218) = v18;
    }

    *(a1 + 216) = v25;
LABEL_65:
    v27 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    v28 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    **(a1 + 528) = 4;
    *a1 = 2;
    v5 = sub_297ED4A38(a1);
    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_CallWrOp");
    goto LABEL_66;
  }

  if (v4 == 5)
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iFndNdefCompIntReadOp");
    if (!*(a1 + 646) || *(a1 + 647))
    {
      ++*(a1 + 647);
    }

    v5 = sub_297ED1B28(a1);
    if (v5)
    {
      goto LABEL_60;
    }

    if (*(a1 + 74) == 1)
    {
      v6 = sub_297ED3FD4(a1);
    }

    else
    {
      if (!*(a1 + 650))
      {
        v5 = 0;
        goto LABEL_60;
      }

      v6 = sub_297ED3F48(a1);
    }

    v5 = v6;
LABEL_60:
    *a2 = v5 != 13;
    v26 = "phFriNfc_MifareUL_iFndNdefCompIntReadOp";
LABEL_61:
    sub_297E4DFAC(2, a1, 8u, 5u, v26);
    goto LABEL_67;
  }

  *a2 = 1;
  v5 = 29;
LABEL_67:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iFndNdefComp");
  return v5;
}

uint64_t sub_297ED47A4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iTermTlv");
  v4 = sub_297ED3FD4(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iTermTlv");
  return v4;
}

uint64_t sub_297ED4824(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iWrLenTlv");
  v4 = *(a1 + 68);
  if (v4 == 4)
  {
    if (*(a1 + 70) + 1 != *(a1 + 647))
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = *(a1 + 2720);
    v6 = *(a1 + 644);
    phOsalNfc_MemCopy();
    goto LABEL_7;
  }

  if ((v4 - 1) <= 2 && *(a1 + 647) == *(a1 + 70))
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v8 = *(a1 + 545);
  if (!v8)
  {
    v8 = 2;
  }

  *(a1 + 545) = v8;
  *(a1 + 252) = 0;
  *(a1 + 216) = 0;
  if (*(a1 + 646))
  {
    *(a1 + 646) = 0;
    *(a1 + 543) = 6;
    v9 = sub_297ED1760(a1, 0, 1, 11);
    v10 = v9 != 13;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a2 = v10;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iWrLenTlv");
  return v9;
}

uint64_t sub_297ED4954(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iRoNdefComp");
  if (a1)
  {
    if (*(a1 + 264) == 16)
    {
      v4 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      *(a1 + 266) = *(a1 + 647);
      v5 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      *(a1 + 270) = 15;
      *a1 = 8;
      v6 = sub_297ED4A38(a1);
      v7 = v6;
      if (a2)
      {
        *a2 = v6 != 13;
      }
    }

    else
    {
      v7 = 27;
    }
  }

  else
  {
    v7 = 0;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iRoNdefComp");
  return v7;
}

uint64_t sub_297ED4A38(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_Wr4bytes");
  *(a1 + 264) = 260;
  *(a1 + 540) = 3;
  *(a1 + 232) = 162;
  *(a1 + 48) = sub_297ED2558;
  *(a1 + 56) = a1;
  *(a1 + 526) = 5;
  v2 = sub_297E98D38(a1, sub_297ED29B0);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_Wr4bytes");
  return v2;
}

uint64_t sub_297ED4AE8(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iRoNdefWriteCC");
  if (!a1)
  {
    v4 = 255;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(a1 + 266) == 10 && *(a1 + 264) == 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 28;
  if (a2)
  {
LABEL_7:
    *a2 = 1;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iRoNdefWriteCC");
  return v4;
}

uint64_t sub_297ED4B94(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorChk1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 10);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorChk1");
  return v4;
}

uint64_t sub_297ED4C44(uint64_t a1, char *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRd1");
  if (*(a1 + 264) != 1)
  {
    v4 = 27;
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 266) != 10)
  {
    v4 = 28;
    goto LABEL_6;
  }

  v4 = sub_297ED1760(a1, *(a1 + 646), 2, 14);
  v5 = 0;
LABEL_7:
  *a2 = v5;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRd1");
  return v4;
}

uint64_t sub_297ED4CF8(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRd2");
  if (*(a1 + 647) == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 70) & 0xFC;
  }

  *(a1 + 647) = v4;
  v5 = sub_297ED34C0(a1);
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRd2");
  return v5;
}

uint64_t sub_297ED4D98(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrite1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 16);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrite1");
  return v4;
}

uint64_t sub_297ED4E48(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrite2");
  *(a1 + 647) = 0;
  if (*(a1 + 540) == 5)
  {
    v4 = sub_297ED1358(a1, 0);
  }

  else
  {
    v5 = sub_297ED1B28(a1);
    if (v5)
    {
      goto LABEL_5;
    }

    if (*(a1 + 74) == 1)
    {
      v4 = sub_297ED3FD4(a1);
    }

    else
    {
      if (!*(a1 + 650))
      {
        v5 = 0;
        goto LABEL_5;
      }

      v4 = sub_297ED3F48(a1);
    }
  }

  v5 = v4;
LABEL_5:
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrite2");
  return v5;
}

uint64_t sub_297ED4F20(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrInit1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 20);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrInit1");
  return v4;
}

uint64_t sub_297ED4FD0(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRW1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 18);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRW1");
  return v4;
}

uint64_t sub_297ED5080(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRW2");
  *(a1 + 647) = 0;
  *(a1 + 266) = 0;
  v4 = *(a1 + 68);
  if (v4 > 4 || ((1 << v4) & 0x13) == 0)
  {
    v20 = 0;
  }

  else
  {
    if (v4 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    v7 = *(a1 + 2720);
    v8 = *(a1 + 240) + *(a1 + 252);
    if (*(a1 + 248) >= v6)
    {
      phOsalNfc_MemCopy();
      *(a1 + 216) = v6;
      **(a1 + 528) = v6 + 1;
    }

    else
    {
      phOsalNfc_MemCopy();
      v9 = *(a1 + 248);
      v10 = v9 + 2;
      v11 = (v9 + 2);
      *(a1 + 216) = v9;
      if (v9 == 0xFE)
      {
        v12 = 0;
      }

      else
      {
        v12 = (v9 + 2) - 1;
      }

      **(a1 + 528) = v12;
      if (v11 <= 4)
      {
        v13 = 0;
        *(a1 + 74) = 1;
        v14 = v10 + 1;
        v15 = a1 + v10 + 266;
        do
        {
          if (v13)
          {
            v16 = 0;
          }

          else
          {
            v16 = -2;
          }

          *(v15 + v13) = v16;
          v17 = v14++;
          ++v13;
        }

        while (v17 != 5);
      }
    }

    v18 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    v19 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    *a1 = 2;
    v20 = sub_297ED4A38(a1);
  }

  *a2 = v20 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorRW2");
  return v20;
}

uint64_t sub_297ED5218(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorReset1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 12);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorReset1");
  return v4;
}

uint64_t sub_297ED52C8(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorReset2");
  v4 = *(a1 + 543);
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (v4 == 2)
    {
      v5 = sub_297ED3FD4(a1);
      LOBYTE(v4) = v5 != 13;
LABEL_11:
      *a2 = v4;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 == 6)
  {
    v5 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_11;
  }

  if (v4 != 4)
  {
LABEL_8:
    *a2 = 1;
    v5 = 20;
    goto LABEL_12;
  }

  v5 = sub_297ED3DF8(a1, a2);
LABEL_12:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorReset2");
  return v5;
}

uint64_t sub_297ED53AC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorChk2");
  v2 = *(a1 + 647);
  v3 = v2 <= 0xFC;
  v4 = 252 - v2;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = -v4;
  *(a1 + 647) = v5;
  v6 = sub_297ED1358(a1, v5);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorChk2");
  return v6;
}

uint64_t sub_297ED5438(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrInit2");
  if (*(a1 + 560) == 1)
  {
    v4 = sub_297ED1878(a1);
  }

  else
  {
    v4 = sub_297ED1B28(a1);
  }

  v5 = v4;
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_iSelSectorWrInit2");
  return v5;
}

uint64_t sub_297ED54CC(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareUL_H_Complete");
  *a1 = 0;
  v4 = *(a1 + 547);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      (*(a1 + 24))(*(a1 + 40), a2);
    }

    else if (v4 == 6)
    {
      (*(a1 + 32))(*(a1 + 40), a2);
    }
  }

  else if (v4 == 1)
  {
    if (a2 != 25 && a2)
    {
      *(a1 + 546) = 0;
      LOBYTE(v9) = 3;
      if (a2 == 28 || a2 == 22)
      {
        a2 = 152;
      }
    }

    else
    {
      *(a1 + 546) = 1;
      v5 = *(a1 + 650);
      HIDWORD(v9) = *(a1 + 82);
      v10 = v5;
      LOBYTE(v9) = *(a1 + 545);
    }

    (*(a1 + 8))(*(a1 + 40), a2, &v9);
  }

  else if (v4 == 2)
  {
    if (a2)
    {
      *(a1 + 540) = 1;
    }

    else
    {
      LODWORD(v8) = **(a1 + 552);
      v7 = *(a1 + 240);
    }

    (*(a1 + 16))(*(a1 + 40), a2, &v7);
  }

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareUL_H_Complete");
}

uint64_t sub_297ED5620(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_Chk16Bytes");
  if (a2 == 16)
  {
    v4 = *(a1 + 647);
    if (v4 > 0xFB)
    {
      v8 = *(a1 + 646) + 1;
      *(a1 + 646) = v8;
      v6 = sub_297ED1760(a1, v8, 1, 9);
    }

    else
    {
      v5 = v4 + 4;
      *(a1 + 647) = v5;
      v6 = sub_297ED1358(a1, v5);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_Chk16Bytes");
  return v7;
}

uint64_t sub_297ED56D8(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_findDynLockBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8u, 4u, "Invalid Parameter");
    v13 = 1;
    goto LABEL_16;
  }

  v4 = (a1 + a2);
  v5 = v4[266];
  v6 = v4[267];
  v7 = v4[268];
  v8 = v5 >> 4;
  v9 = v5 & 0xF;
  v10 = v6 >> 3;
  if ((v6 & 7) != 0)
  {
    LOBYTE(v10) = v10 + 1;
  }

  v11 = (v8 << (v7 & 0xF)) + v9;
  if (v11 > 0x3Fu)
  {
    if (v11 + v10 < *(a1 + 204) + 16)
    {
      v14 = *(a1 + 132);
      if (v14 > 7)
      {
        v12 = "Lock control tlv count exceeds the limit";
        goto LABEL_6;
      }

      v15 = 0;
      v16 = (a1 + 98);
      while (LOWORD(v16[v15]) != v11)
      {
        if (v14 < ++v15)
        {
          v17 = &v16[v14];
          *v17 = v11;
          v17[1] = v10;
          *(a1 + 132) = v14 + 1;
          *(a1 + 133) += v10;
          sub_297E9C28C(a1, v16, (v14 + 1));
          break;
        }
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

  v12 = "Incorrect Lock control TLV values";
LABEL_6:
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, v12);
  v13 = 255;
LABEL_16:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_findDynLockBytes");
  return v13;
}

uint64_t sub_297ED5848(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MfUL_H_findReservedBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8u, 4u, "Invalid Parameter");
    v7 = 1;
    goto LABEL_13;
  }

  v4 = (a1 + a2);
  v5 = (v4[266] >> 4 << (v4[268] & 0xF)) + (v4[266] & 0xF);
  if (((v4[266] >> 4 << (v4[268] & 0xF)) + (v4[266] & 0xF)) > 0x3Fu)
  {
    v8 = v4[267];
    if (v8 + v5 < *(a1 + 204) + 16)
    {
      v9 = *(a1 + 186);
      if (v9 > 1)
      {
        v6 = "Memory control tlv count exceeds the limit";
        goto LABEL_4;
      }

      v10 = (a1 + 152);
      if (v9 != 1 || *v10 != v5)
      {
        v11 = &v10[v9];
        *v11 = v5;
        v11[1] = v8;
        *(a1 + 186) = v9 + 1;
        *(a1 + 187) += v8;
        sub_297E9C28C(a1, v10, (v9 + 1));
      }
    }

    v7 = 0;
    goto LABEL_13;
  }

  v6 = "Incorrect Memory control TLV values";
LABEL_4:
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, v6);
  v7 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MfUL_H_findReservedBytes");
  return v7;
}

uint64_t sub_297ED5998(uint64_t a1, __int16 a2, __int16 a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "chkDynLockBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8u, 4u, "Invalid Parameter");
    goto LABEL_11;
  }

  v6 = *(a1 + 132);
  if (!*(a1 + 132))
  {
LABEL_11:
    v11 = 255;
    goto LABEL_12;
  }

  v7 = ((a3 << 10) + 4 * a2);
  v8 = (a1 + 100);
  while (1)
  {
    v9 = *(v8 - 1);
    if (v7 <= (v9 + *v8 - 1) && v7 + 4 > v9)
    {
      break;
    }

    v8 += 2;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  sub_297E4DFAC(2, a1, 8u, 5u, "chkDynLockBytes");
  return v11;
}

uint64_t sub_297ED5A78(uint64_t a1, __int16 a2, __int16 a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "chkReservedBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8u, 4u, "Invalid Parameter");
    goto LABEL_11;
  }

  v6 = *(a1 + 186);
  if (!*(a1 + 186))
  {
LABEL_11:
    v11 = 255;
    goto LABEL_12;
  }

  v7 = ((a3 << 10) + 4 * a2);
  v8 = (a1 + 154);
  while (1)
  {
    v9 = *(v8 - 1);
    if (v7 <= (v9 + *v8 - 1) && v7 + 4 > v9)
    {
      break;
    }

    v8 += 2;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  sub_297E4DFAC(2, a1, 8u, 5u, "chkReservedBytes");
  return v11;
}

uint64_t sub_297ED5B58(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_GetCurrentHeadIndex");
  if (a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 5);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a1);
    if (v6 == a1)
    {
      for (i = 0; i != 3; ++i)
      {
        v8 = *(a1 + 928 + 8 * i);
        if (v8)
        {
          v9 = *v8;
          v10 = v9 >> 5;
          if (v9 >> 5 == *(a1 + 912))
          {
            if (v10 - 2 >= 2)
            {
              if (!v10 && (v9 & 0xF) == *(a1 + 924))
              {
LABEL_18:
                v11 = 0;
                *a2 = i;
                goto LABEL_17;
              }
            }

            else if ((v9 & 0xF) == *(a1 + 916) && *(a1 + 920) == (v8[1] & 0x3F))
            {
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  v11 = 255;
LABEL_17:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_GetCurrentHeadIndex");
  return v11;
}