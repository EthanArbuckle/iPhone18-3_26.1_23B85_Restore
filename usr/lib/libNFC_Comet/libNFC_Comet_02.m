uint64_t sub_297E6627C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetConfigSeqEnd");
  if (!a1)
  {
    goto LABEL_6;
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

  while (v6 != a1);
  if (v6 == a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Set Config before Start Disc Failed!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Set Config before Start Disc success");
      sub_297E4F1A4(*(a1 + 3088), 0);
    }
  }

  else
  {
LABEL_6:
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetConfigSeqEnd");
  return a2;
}

uint64_t sub_297E66370(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = 0;
  v8 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetISODepToFrameRfMapping");
  if (a1)
  {
    if (*(a1 + 1140) == 1)
    {
      *(a1 + 1470) = 1;
      v4 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      BYTE4(v8) = BYTE4(v8) & 0xFC | 1;
      v9 = 1;
      LODWORD(v8) = 4;
      v5 = sub_297E5BFBC(*(a1 + 3088), 1, &v8, sub_297E5BA84, a1);
    }

    else
    {
      v5 = sub_297E5C1C4(a1);
    }

    a2 = v5;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetISODepToFrameRfMapping");
  v6 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_297E6649C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StartDiscSeq");
  if (!a1)
  {
    goto LABEL_6;
  }

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
  if (v4 != a1)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if (!sub_297E4F2D4(a1, a1 + 1048))
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StartDisc");
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetDiscPayload");
    v10 = *(a1 + 1048);
    if (*(a1 + 1136) == 2)
    {
      LOBYTE(v53) = v10 & 1;
      v11 = (v10 >> 1) & 1;
      BYTE2(v53) = (v10 & 2) != 0;
      if (v10)
      {
        v12 = *(a1 + 1065);
        if ((v12 - 11) < 0xFFFFFFF6)
        {
          LOBYTE(v12) = 1;
        }

        BYTE1(v53) = v12;
      }

      if (v11)
      {
        v13 = *(a1 + 1067);
        if ((v13 - 11) <= 0xFFFFFFF5)
        {
          LOBYTE(v13) = 1;
        }

        BYTE3(v53) = v13;
      }

LABEL_88:
      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetDiscPayload");
      v5 = sub_297E66A90(*(a1 + 3088), &v53, sub_297E5BA84, a1);
      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StartDisc");
      goto LABEL_7;
    }

    if (v10)
    {
      v16 = *(a1 + 1048) & 1;
      LOBYTE(v53) = v10 & 1;
      v17 = (v10 >> 1) & 1;
      BYTE2(v53) = (v10 & 2) != 0;
      v18 = (v10 & 0xC) != 0;
      BYTE4(v53) = (v10 & 0xC) != 0;
      v19 = (v10 >> 6) & 1;
      BYTE4(v54) = (v10 & 0x40) != 0;
      v20 = (v10 >> 4) & 1;
      BYTE6(v54) = (v10 & 0x10) != 0;
      LOBYTE(v55) = (v10 & 0x200) != 0;
      v21 = (v10 >> 12) & 0xFFF80;
      BYTE2(v55) = (v10 >> 12) & 0x80;
      v22 = (v10 >> 15) & 1;
      BYTE2(v54) = (v10 & 0x8000) != 0;
      v23 = HIWORD(v10) & 1;
      BYTE6(v53) = BYTE2(v10) & 1;
      v24 = (v10 >> 17) & 1;
      LOBYTE(v54) = (v10 & 0x20000) != 0;
      if (((v10 >> 12) & 0x80) != 0 && (*(a1 + 1060) & 7) != 0)
      {
        v52 = HIWORD(v10) & 1;
        v25 = v10 & 1;
        v26 = (v10 >> 1) & 1;
        v27 = (v10 >> 4) & 1;
        v28 = (v10 >> 17) & 1;
        sub_297E5BEBC(*(a1 + 3088), 1);
        v24 = v28;
        *(a1 + 1473) = 1;
        v20 = v27;
        v17 = v26;
        v16 = v25;
        v23 = v52;
        v10 = *(a1 + 1048);
      }

      v29 = v21;
      if ((v10 & 0x40000) != 0)
      {
LABEL_43:
        if ((v10 & 0x20) != 0)
        {
          v29 &= 0x9Fu;
          BYTE2(v55) = v29;
          v41 = *(a1 + 1054);
          if ((v41 & 0x70) != 0)
          {
            if ((v41 & 0x60) != 0)
            {
              v29 |= (2 * v41) & 0x20 | 0x40;
            }

            else
            {
              v29 |= (2 * v41) & 0x20;
            }

            BYTE2(v55) = v29;
          }
        }

        else
        {
          v40 = *(a1 + 1054);
          v16 |= v40 & 1;
          v41 = v40;
          LOBYTE(v53) = v16;
          if (v18 | v40 & 2)
          {
            v18 = 1;
          }

          else
          {
            v18 = (v40 >> 2) & 1;
          }

          BYTE4(v53) = v18;
        }

        if ((~v41 & 0xF) == 0)
        {
          v18 = 1;
          LOBYTE(v53) = 1;
          BYTE4(v53) = 1;
          v29 |= 0x60u;
          BYTE2(v55) = v29;
          v16 = 1;
        }

        if (*(a1 + 1055))
        {
          goto LABEL_56;
        }

        v50 = *(a1 + 1056);
        if (!v50)
        {
          v51 = v24;
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_SetDiscPayload:None of the Technologies are configured for P2P Target Mode");
          v24 = v51;
          goto LABEL_56;
        }

        if (*(a1 + 1056))
        {
          v29 |= 1u;
          BYTE2(v55) = v29;
          if ((v50 & 2) == 0)
          {
LABEL_92:
            if ((v50 & 4) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_98;
          }
        }

        else if ((*(a1 + 1056) & 2) == 0)
        {
          goto LABEL_92;
        }

        v29 |= 4u;
        BYTE2(v55) = v29;
        if ((v50 & 4) == 0)
        {
LABEL_93:
          if ((v50 & 8) != 0)
          {
            goto LABEL_99;
          }

          goto LABEL_56;
        }

LABEL_98:
        v29 |= 8u;
        BYTE2(v55) = v29;
        if ((v50 & 8) != 0)
        {
LABEL_99:
          BYTE2(v55) = v29 | 0x10;
        }

LABEL_56:
        if (v16)
        {
          v42 = *(a1 + 1065);
          if ((v42 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v42) = 1;
          }

          BYTE1(v53) = v42;
        }

        if (v17)
        {
          v43 = *(a1 + 1067);
          if ((v43 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v43) = 1;
          }

          BYTE3(v53) = v43;
        }

        if (v18)
        {
          v44 = *(a1 + 1069);
          if ((v44 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v44) = 1;
          }

          BYTE5(v53) = v44;
        }

        if (v20)
        {
          v45 = *(a1 + 1073);
          if ((v45 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v45) = 1;
          }

          HIBYTE(v54) = v45;
        }

        if (v19)
        {
          v46 = *(a1 + 1077);
          if ((v46 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v46) = 1;
          }

          BYTE5(v54) = v46;
        }

        if (v22)
        {
          v47 = *(a1 + 1091);
          if ((v47 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v47) = 1;
          }

          BYTE3(v54) = v47;
        }

        if (v23)
        {
          v48 = *(a1 + 1093);
          if ((v48 - 11) < 0xFFFFFFF6)
          {
            LOBYTE(v48) = 1;
          }

          HIBYTE(v53) = v48;
        }

        if (v24)
        {
          v49 = *(a1 + 1095);
          if ((v49 - 11) <= 0xFFFFFFF5)
          {
            LOBYTE(v49) = 1;
          }

          BYTE1(v54) = v49;
        }

        goto LABEL_88;
      }
    }

    else
    {
      LOBYTE(v21) = 0;
      v16 = 0;
      v18 = 0;
      v17 = 0;
      v20 = 0;
      v19 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    v30 = *(a1 + 1057);
    if (v30)
    {
      LOBYTE(v21) = v21 | 1;
      BYTE2(v55) = v21;
    }

    if ((v30 & 2) != 0)
    {
      LOBYTE(v21) = v21 | 2;
      BYTE2(v55) = v21;
    }

    v31 = v30 & 0xF;
    if ((v30 & 4) != 0 || (v29 = v21, (v30 & 0xF) == 0))
    {
      v32 = v30 & 4;
      if (!v31)
      {
        v32 = 7;
      }

      v29 = v21 | v32;
      BYTE2(v55) = v21 | v32;
    }

    if ((v21 & 0x80) == 0)
    {
      v33 = v16;
      v34 = v17;
      v35 = v20;
      v36 = v22;
      v37 = v19;
      v38 = v23;
      v39 = v24;
      sub_297E5BEBC(*(a1 + 3088), 1);
      v24 = v39;
      v23 = v38;
      v19 = v37;
      v22 = v36;
      v20 = v35;
      v17 = v34;
      v16 = v33;
      *(a1 + 1473) = 1;
      v10 = *(a1 + 1048);
    }

    goto LABEL_43;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_StartDiscSeq:Discovery 'tADDCfg' empty, passing SUCCESS to caller");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DummyDisc");
  v7 = *(a1 + 9792);
  v8 = phOsalNfc_Timer_Create();
  if (v8 && (v9 = v8, v8 != 0xFFFFFFFFFFFFLL))
  {
    v14 = *(a1 + 9792);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E687D8(1, a1 + 9792, v9, 4u, 4u, "phLibNfc_DummyDisc");
      v5 = 13;
      goto LABEL_7;
    }

    v15 = *(a1 + 9792);
    phOsalNfc_Timer_Delete();
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to create Timer!");
  }

  v5 = 255;
LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StartDiscSeq");
  return v5;
}

uint64_t sub_297E66A90(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StartDiscovery");
  if (a1)
  {
    if (a2 && a3)
    {
      *(a1 + 172) = 0;
      sub_297E5B554(a1);
      v8 = (a2[2] & 1) + (*a2 & 1) + (a2[4] & 1) + (a2[12] & 1) + (a2[14] & 1);
      v9 = a2[18];
      if ((v9 & 0x80000000) != 0)
      {
        v11 = v8 + 1;
      }

      else
      {
        v10 = *&vshl_u16((*&vdup_n_s16(v9) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
        LOWORD(v10) = vaddv_s16(v10);
        v11 = v10 + (v9 & 1) + v8;
      }

      v13 = ((v9 >> 6) & 1) + ((v9 >> 5) & 1) + (a2[10] & 1) + (a2[6] & 1) + (a2[8] & 1) + v11;
      v14 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      *(a1 + 168) = (2 * v13) | 1;
      if (*(a1 + 160))
      {
        v15 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        v16 = *(a1 + 168);
      }

      *(a1 + 160) = 0;
      v17 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 160) = Memory_Typed;
      if (Memory_Typed)
      {
        v19 = sub_297E66CE8(a1, a2);
        if (v19)
        {
          v12 = v19;
          v20 = *(a1 + 6524);
          v21 = *(a1 + 160);
          phOsalNfc_FreeMemory();
          *(a1 + 160) = 0;
          *(a1 + 3424) = 0;
          *(a1 + 3752) = 0;
        }

        else
        {
          **(a1 + 160) = v13;
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a4;
          *(a1 + 3776) = off_2A1A907B8;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, off_2A1A907B8);
          v12 = sub_297E67100(a1, 0, 0);
        }
      }

      else
      {
        v12 = 12;
      }
    }

    else
    {
      v12 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameter");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Nci stack not initialized");
    v12 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StartDiscovery");
  return v12;
}

uint64_t sub_297E66CE8(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateDiscConfigParams");
  v4 = a2[18];
  v5 = 1;
  if ((v4 & 0x80000000) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(*(a1 + 160) + 1) = -1;
  *(*(a1 + 160) + 2) = 1;
  v5 = 3;
  if ((a2[18] & 0x20) != 0)
  {
LABEL_3:
    *(*(a1 + 160) + v5) = 3;
    v6 = *(a1 + 160) + v5;
    v5 += 2;
    *(v6 + 1) = 1;
  }

LABEL_4:
  if (*a2)
  {
    if (a2[1] - 1 > 9)
    {
      v9 = 0;
      v8 = 1;
      goto LABEL_15;
    }

    *(*(a1 + 160) + v5) = 0;
    v7 = *(a1 + 160) + v5;
    v5 += 2;
    *(v7 + 1) = *(a1 + 49);
  }

  if (a2[2])
  {
    v8 = 1;
    if (a2[3] - 1 > 9)
    {
      v9 = 0;
    }

    else
    {
      *(*(a1 + 160) + v5) = 1;
      v10 = *(a1 + 160) + v5;
      v5 += 2;
      *(v10 + 1) = *(a1 + 51);
      v9 = 1;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

LABEL_15:
  if ((a2[18] & 0x40) != 0)
  {
    *(*(a1 + 160) + v5) = 5;
    v11 = *(a1 + 160) + v5;
    v5 += 2;
    *(v11 + 1) = 1;
  }

  v12 = v9 ^ 1;
  if ((a2[4] & 1) == 0)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    if (a2[5] - 1 > 9)
    {
      goto LABEL_43;
    }

    v8 = 0;
    *(*(a1 + 160) + v5) = 2;
    v13 = *(a1 + 160) + v5;
    v5 += 2;
    *(v13 + 1) = *(a1 + 53);
  }

  if (!v8 && (a2[12] & 1) != 0)
  {
    if (a2[13] - 1 > 9)
    {
      goto LABEL_43;
    }

    *(*(a1 + 160) + v5) = 114;
    v14 = *(a1 + 160) + v5;
    v5 += 2;
    *(v14 + 1) = *(a1 + 61);
  }

  if (!v8 && (a2[14] & 1) != 0)
  {
    if (a2[15] - 1 > 9)
    {
      goto LABEL_43;
    }

    *(*(a1 + 160) + v5) = 6;
    v15 = *(a1 + 160) + v5;
    LOBYTE(v5) = v5 + 2;
    *(v15 + 1) = *(a1 + 63);
  }

  if (!v8 && (a2[10] & 1) != 0)
  {
    if (a2[11] - 1 > 9)
    {
      goto LABEL_43;
    }

    *(*(a1 + 160) + v5) = 10;
    v16 = *(a1 + 160) + v5;
    LOBYTE(v5) = v5 + 2;
    *(v16 + 1) = *(a1 + 59);
  }

  if (!v8 && (a2[6] & 1) != 0)
  {
    if (a2[7] - 1 > 9)
    {
      goto LABEL_43;
    }

    v17 = v5;
    *(*(a1 + 160) + v5) = 11;
    LOBYTE(v5) = v5 + 2;
    *(*(a1 + 160) + v17 + 1) = *(a1 + 55);
  }

  if (v8 || (a2[8] & 1) == 0)
  {
    if (!v8)
    {
LABEL_45:
      v21 = a2[18];
      if (v21 < 0)
      {
LABEL_51:
        v19 = 0;
        goto LABEL_44;
      }

      if (v21)
      {
        v22 = v5;
        *(*(a1 + 160) + v5) = 0x80;
        LOBYTE(v5) = v5 + 2;
        *(*(a1 + 160) + v22 + 1) = 1;
        LOBYTE(v21) = a2[18];
        if ((v21 & 8) == 0)
        {
LABEL_48:
          if ((v21 & 2) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_54;
        }
      }

      else if ((v21 & 8) == 0)
      {
        goto LABEL_48;
      }

      v23 = v5;
      *(*(a1 + 160) + v5) = -125;
      LOBYTE(v5) = v5 + 2;
      *(*(a1 + 160) + v23 + 1) = 1;
      LOBYTE(v21) = a2[18];
      if ((v21 & 2) == 0)
      {
LABEL_49:
        if ((v21 & 4) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }

LABEL_54:
      v24 = v5;
      *(*(a1 + 160) + v5) = -127;
      LOBYTE(v5) = v5 + 2;
      *(*(a1 + 160) + v24 + 1) = 1;
      LOBYTE(v21) = a2[18];
      if ((v21 & 4) == 0)
      {
LABEL_50:
        if ((v21 & 0x10) == 0)
        {
          goto LABEL_51;
        }

LABEL_56:
        v19 = 0;
        *(*(a1 + 160) + v5) = -123;
        *(*(a1 + 160) + v5 + 1) = 1;
        goto LABEL_44;
      }

LABEL_55:
      v25 = v5;
      *(*(a1 + 160) + v5) = -126;
      LOBYTE(v5) = v5 + 2;
      *(*(a1 + 160) + v25 + 1) = 1;
      if ((a2[18] & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }
  }

  else if (a2[9] - 1 <= 9)
  {
    v18 = v5;
    *(*(a1 + 160) + v5) = 12;
    LOBYTE(v5) = v5 + 2;
    *(*(a1 + 160) + v18 + 1) = *(a1 + 57);
    goto LABEL_45;
  }

LABEL_43:
  v19 = 1;
LABEL_44:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateDiscConfigParams");
  return v19;
}

uint64_t sub_297E67100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DiscoverSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DiscoverSequence");
  return v6;
}

uint64_t sub_297E67194(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EnableDiscovery");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v6 = 0x100000001;
    DWORD2(v6) = 3;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Building Header bytes for Discover Command");
    *&v7 = *(a1 + 160);
    v3 = *(a1 + 168);
    DWORD2(v7) = v3;
    sub_297E6729C(a1, v7, v3);
    v4 = sub_297E57BA8(a1 + 936, &v6, a1 + 3800, 2000, sub_297E67100, a1);
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EnableDiscovery");
  return v4;
}

uint64_t sub_297E6729C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintDiscPayLoadDescription");
  v6 = "No NCI Discovery Configuration Details:";
  if (a2)
  {
    if (a3)
    {
      sub_297E4E0B0(2, a1, 3u, 4u, "NCI Discovery Configuration Details:");
      v6 = "====================================================";
      sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
      v7 = *a2;
      sub_297E50DB0(2, a1, 3u, 4u, "Number of Configurations:");
      if (v7)
      {
        v8 = 1;
        do
        {
          if (v8 >= 0xFEu)
          {
            v9 = v8;
          }

          else
          {
            v9 = v8 + 1;
          }

          if (v8 >= 0xFEu)
          {
            v10 = 0;
          }

          else
          {
            v10 = v8;
          }

          v11 = a2[v10];
          sub_297E50DB0(2, a1, 3u, 4u, "RF Technology mode:");
          if (v9 >= 0xFEu)
          {
            v8 = v9;
          }

          else
          {
            v8 = v9 + 1;
          }

          if (v9 >= 0xFEu)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          v13 = a2[v12];
          sub_297E50DB0(2, a1, 3u, 4u, "Discover Frequency:");
          --v7;
        }

        while (v7);
      }
    }
  }

  sub_297E4E0B0(2, a1, 3u, 4u, v6);

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintDiscPayLoadDescription");
}

uint64_t sub_297E67434(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciRsp2");
  if (a1)
  {
    if (!a2 && (v6 = *(a1 + 3800)) != 0 && *(a1 + 3808) == 1)
    {
      v7 = *v6;
      if (v7 == 241)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessCommonNciRsp2 - suica/VAS express enabled/transaction ongoing");
        a2 = 81;
        goto LABEL_5;
      }

      if (v7 == 189)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessCommonNciRsp2 - Discovery rejected due to high temperature");
        a2 = 189;
        goto LABEL_5;
      }

      if (!*v6)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessCommonNciRsp2 - Response Successful");
        a2 = 0;
        goto LABEL_5;
      }

      v4 = "phNciNfc_ProcessCommonNciRsp2  - failed status received in response!";
    }

    else
    {
      v4 = "Response received with failure status";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v4);
    *(a1 + 3808) = 0;
    a2 = 255;
  }

LABEL_5:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciRsp2");
  return a2;
}

uint64_t sub_297E6756C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteDiscSequence");
  if (a1)
  {
    if (*(a1 + 160))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 160) = 0;
    }

    if (!a2 && *(a1 + 168) >= 2u)
    {
      *(a1 + 176) = 1;
    }

    sub_297E5B994(a1, a2, 0);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteDiscSequence");
  return a2;
}

uint64_t sub_297E67614(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StartDiscSeqEnd");
  if (!a1)
  {
    goto LABEL_6;
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

  while (v6 != a1);
  if (v6 == a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Discover start Failed!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Discovery started...");
    }
  }

  else
  {
LABEL_6:
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StartDiscSeqEnd");
  return a2;
}

uint64_t sub_297E676FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StartDiscoverSeqComplete");
  if (!a1)
  {
    goto LABEL_16;
  }

  if (a2 > 0x9Du)
  {
    if (a2 == 158 || a2 == 189)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    if (a2 == 81)
    {
LABEL_11:
      sub_297E5BEBC(*(a1 + 3088), 0);
      goto LABEL_12;
    }

LABEL_8:
    if (a2 == 143)
    {
      a2 = a2;
    }

    else
    {
      a2 = 255;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (a2)
  {
    v4 = 119;
  }

  else
  {
    v4 = 118;
  }

  a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
LABEL_16:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StartDiscoverSeqComplete");
  return a2;
}

uint64_t sub_297E677CC(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_UpdateDataToNode");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 5);
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
    goto LABEL_6;
  }

  v7 = *(a1 + 952);
  v5 = *(a1 + 928 + 8 * v7);
  v8 = *(a1 + 2460);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_UpdateDataToNode:Memory allocation failed while creating new node!");
LABEL_6:
    v5 = 255;
    goto LABEL_7;
  }

  v10 = Memory_Typed;
  v11 = *(a1 + 2460);
  v12 = *(a1 + 2336);
  v13 = *(a1 + 2344);
  phOsalNfc_MemCopy();
  *(v10 + 260) = *(a1 + 2344);
  *(v10 + 264) = 0;
  if (v5)
  {
    do
    {
      v14 = v5;
      v5 = *(v5 + 264);
    }

    while (v5);
    *(v14 + 264) = v10;
  }

  else
  {
    *(a1 + 928 + 8 * v7) = v10;
  }

LABEL_7:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_UpdateDataToNode");
  return v5;
}

uint64_t phLibNfc_Mgt_GetNfccParams(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v26 = a1;
  v23 = 0;
  v24 = 0;
  v7 = 1;
  sub_297E4D930(0, &v26, 4u, 131, "phLibNfc_Mgt_GetNfccParams");
  sub_297E4E1B4(0, &v26, 4u, 5u, "phLibNfc_Mgt_GetNfccParams");
  v8 = 0;
  while (1)
  {
    v9 = &unk_2A18BDDC0 + 112 * v8;
    if (*v9 == v26)
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
  sub_297E67EB0(v26, &v24);
  sub_297E67F6C(v26, &v23);
  v14 = sub_297E4F050(v26, &v25);
  if (v14 || !v25)
  {
    sub_297E4E0B0(0, &v26, 4u, 1u, "phLibNfc_Mgt_GetNfccParams: LIBNFC Not Initialized");
    if (v13)
    {
      *(v13 + 36) = 131;
      sub_297E96818(v26, v14);
    }

    sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_Mgt_GetNfccParams");
    if (v14 != 13)
    {
      sub_297E4D930(0, &v26, 4u, 131, "phLibNfc_Mgt_GetNfccParams");
    }
  }

  else if (a3)
  {
    switch(a2)
    {
      case 0:
        v15 = v26;
        v16 = 54;
        v17 = 54;
        goto LABEL_60;
      case 1:
        if (!v23)
        {
          v15 = v26;
          v16 = 55;
          v17 = 55;
          goto LABEL_60;
        }

        if (*(v25 + 6079) == 1 || *(v25 + 6080) == 1 || *(v25 + 6082) == 1 || *(v25 + 6083) == 1)
        {
          sub_297E4E0B0(0, &v26, 4u, 2u, "Previous API in progress");
          v16 = 208;
          v14 = 111;
          goto LABEL_70;
        }

        if (*(v25 + 6081) == 1)
        {
          v15 = v26;
          v16 = 189;
          v17 = 189;
          goto LABEL_60;
        }

        sub_297E4E0B0(0, &v26, 4u, 1u, "phLibNfc_Mgt_GetNfccParams: SMB logging not enabled ");
        v16 = 208;
        v14 = 147;
        goto LABEL_70;
      case 3:
        if (*(v25 + 2994) == 1)
        {
          goto LABEL_69;
        }

        v15 = v26;
        v16 = 56;
        v17 = 56;
        goto LABEL_60;
      case 4:
        if (*(v25 + 2994) == 1)
        {
          goto LABEL_69;
        }

        v15 = v26;
        v16 = 57;
        v17 = 57;
        goto LABEL_60;
      case 5:
        if (*(v25 + 2985) != 1 && *(v25 + 2986) != 1 && (*(v25 + 2992) != 1 || *(v25 + 2994)))
        {
          goto LABEL_69;
        }

        v18 = 5;
        goto LABEL_38;
      case 6:
        if (*(v25 + 2994) == 1)
        {
          goto LABEL_69;
        }

        v15 = v26;
        v16 = 58;
        v17 = 58;
        goto LABEL_60;
      case 7:
        if (*(v25 + 2994) == 1)
        {
          goto LABEL_69;
        }

        v15 = v26;
        v16 = 59;
        v17 = 59;
        goto LABEL_60;
      case 8:
        if (*(v25 + 2994) == 1 || *(v25 + 2990) == 1 || *(v25 + 2991) == 1 || *(v25 + 3136) == 2 && *(v25 + 2987) == 1)
        {
          goto LABEL_69;
        }

        v15 = v26;
        v16 = 64;
        v17 = 64;
        goto LABEL_60;
      case 9:
        v15 = v26;
        v16 = 65;
        v17 = 65;
        goto LABEL_60;
      case 10:
        v15 = v26;
        v16 = 66;
        v17 = 66;
        goto LABEL_60;
      case 11:
        if (*(v25 + 2994) == 1 || *(v25 + 2990) == 1 || *(v25 + 2991) == 1 || *(v25 + 2987) == 1 && *(v25 + 3136) == 2)
        {
          goto LABEL_69;
        }

        v15 = v26;
        v16 = 60;
        v17 = 60;
        goto LABEL_60;
      case 12:
        if (*(v25 + 2992) != 1)
        {
          goto LABEL_69;
        }

        v18 = 12;
LABEL_38:
        *(v25 + 5608) = v18;
        v15 = v26;
        v16 = 62;
        v17 = 62;
        goto LABEL_60;
      case 13:
        if (*(v25 + 2992) != 1 || *(v25 + 2994))
        {
LABEL_69:
          v16 = 208;
          v14 = 51;
          goto LABEL_70;
        }

        *(v25 + 5608) = 13;
        v15 = v26;
        v16 = 63;
        v17 = 63;
LABEL_60:
        v14 = sub_297E4F450(v15, v17, 0, 0, 0);
        if (v14 != 13)
        {
          goto LABEL_70;
        }

        v19 = v25;
        if (v25 && *(v25 + 6081) == 1 && (v20 = v24) != 0)
        {
          *(v25 + 6083) = 1;
          *(v20 + 728) = a3;
          v21 = (v20 + 736);
        }

        else
        {
          *(v25 + 6760) = a3;
          v21 = (v19 + 6768);
        }

        *v21 = a4;
        sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_Mgt_GetNfccParams");
        v14 = 13;
        break;
      default:
        goto LABEL_19;
    }
  }

  else
  {
LABEL_19:
    v14 = 1;
    sub_297E4E0B0(0, &v26, 4u, 1u, "phLibNfc_Mgt_GetNfccParams: Invalid input parameters");
    if (v13)
    {
      *(v13 + 36) = 131;
      sub_297E96818(v26, 1);
    }

    v16 = 208;
LABEL_70:
    sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_Mgt_GetNfccParams");
    sub_297E4D930(0, &v26, 4u, 131, "phLibNfc_Mgt_GetNfccParams");
    if (v16 != 208)
    {
      sub_297E5AE60(v26, v16);
      sub_297E96818(v26, v14);
    }
  }

  return v14;
}

uint64_t sub_297E67EB0(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetDnldNfcEseCoreContext");
  if (a2)
  {
    v3 = 0;
    *a2 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = (&unk_2A18BDDC0 + 112 * v3);
      if (v9 == *v6)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    *a2 = v6[8];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetDnldNfcEseCoreContext");
  return v7;
}

uint64_t sub_297E67F6C(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetDnldNfcContext");
  if (a2)
  {
    v3 = 0;
    *a2 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = (&unk_2A18BDDC0 + 112 * v3);
      if (v9 == *v6)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    *a2 = v6[6];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetDnldNfcContext");
  return v7;
}

uint64_t sub_297E68028(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetPowerTrackTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2984) == 1 || *(v7 + 2985) == 1 || *(v7 + 2986) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93830;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93830;
      if (qword_2A1A93830)
      {
        v2 = 0;
        v3 = &qword_2A1A93840;
        do
        {
          ++v2;
          v4 = *v3;
          v3 += 2;
        }

        while (v4);
      }

      v1[2953] = v2;
      v5 = sub_297E5588C(v1, 0, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetPowerTrackTrans: System Power trace feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetPowerTrackTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetPowerTrackTrans");
  return v5;
}

uint64_t sub_297E6815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackData");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetPwrTrackData: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetPwrTrackData: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A90638;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90638);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetPwrTrackData: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
  *(a1 + 832) = a2;
  *(a1 + 840) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackData");
  return v6;
}

uint64_t sub_297E68274(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackDataCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 46;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetPwrTrackDataCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackDataCmd");
  return v3;
}

uint64_t sub_297E68364(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetPowerTrackDataCmd");
  if (a1)
  {
    v2 = sub_297E6815C(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetPowerTrackDataCmd");
  return v2;
}

uint64_t sub_297E68408(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackDataRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_17;
  }

  if (!a2)
  {
    v5 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    v6 = *(a1 + 3800);
    if (!v6 || ((v7 = *(a1 + 4835), v7 != 1) ? (v8 = 9) : (v8 = 7), v8 != *(a1 + 3808)))
    {
      v10 = "Get Pwr Track Data response received with invalid payload length";
LABEL_16:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v10);
      a2 = 255;
      goto LABEL_17;
    }

    v9 = *v6;
    if (v9 > 5)
    {
      if (v9 == 6)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get Pwr Track Data command Semantic error received");
        goto LABEL_25;
      }

      if (v9 != 9)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*v6)
      {
        if (v9 == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Get Pwr Track Data command rejected by NFCC");
LABEL_25:
          a2 = 147;
          goto LABEL_17;
        }

LABEL_21:
        v10 = "Get Pwr Track Data failed!";
        goto LABEL_16;
      }

      v12 = v6[1];
      *(a1 + 4836) = v12;
      v13 = v12 | (v6[2] << 8);
      *(a1 + 4836) = v13;
      v14 = v6[3];
      *(a1 + 4836) = v13 | (v14 << 16);
      v15 = v6[4];
      *(a1 + 4840) = v15;
      v16 = v15 | (v6[5] << 8);
      *(a1 + 4840) = v16;
      v17 = v6[6];
      *(a1 + 4840) = v16 | (v17 << 16);
      if (v7 == 1)
      {
        *(a1 + 4844) = 0;
      }

      else
      {
        v18 = v6[7];
        *(a1 + 4844) = v18;
        *(a1 + 4844) = v18 | (v6[8] << 8);
      }

      if (v14 <= 3 && v17 < 4)
      {
        a2 = 0;
        goto LABEL_17;
      }
    }

    v4 = "Get Pwr Track Data response Invalid parameter received";
    a2 = 1;
    goto LABEL_4;
  }

  v4 = "phNciNfc_GetPwrTrackDataRsp:Get Pwr Track Data response received with failure status";
LABEL_4:
  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v4);
LABEL_17:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackDataRsp");
  return a2;
}

uint64_t sub_297E6860C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackDataSeqComplete");
  if (a1)
  {
    if (!a2)
    {
      if (*(a1 + 4834) == 1 || *(a1 + 4828) == 1 || *(a1 + 4833) == 1)
      {
        v4 = *(a1 + 6524);
        v5 = phOsalNfc_Timer_Create();
        *(a1 + 6504) = v5;
        a2 = 12;
        v6 = "Get Power Track data Notification Timer Create failed!!";
        if (v5 && v5 != 0xFFFFFFFFFFFFLL)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get Power Track data Notification Timer Created Successfully");
          v7 = *(a1 + 6524);
          v8 = *(a1 + 6504);
          a2 = phOsalNfc_Timer_Start();
          if (!a2)
          {
            sub_297E687D8(1, a1 + 6524, *(a1 + 6504), 3u, 4u, "phNciNfc_GetPwrTrackDataSeqComplete");
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get Power Track data Notification timer started\n");
            *(a1 + 832) = *(a1 + 3424);
            *(a1 + 840) = *(a1 + 3752);
            goto LABEL_12;
          }

          v9 = *(a1 + 6524);
          v10 = *(a1 + 6504);
          phOsalNfc_Timer_Stop();
          *(a1 + 6512) = 0;
          v11 = *(a1 + 6524);
          v12 = *(a1 + 6504);
          phOsalNfc_Timer_Delete();
          *(a1 + 6504) = 0xFFFFFFFFFFFFLL;
          v6 = "Get Power Track data Notification timer start FAILED\n\n";
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v6);
      }

      else
      {
        a2 = 0;
      }
    }

    *(a1 + 832) = 0u;
    sub_297E5B994(a1, a2, a1 + 4836);
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetPwrTrackDataSeqComplete");
  return a2;
}

uint64_t sub_297E687D8(int a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  result = sub_297E4E2B8(a1, a2, a4);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v11 = qword_2A18BDE80 + 16;
    goto LABEL_19;
  }

  if (!result)
  {
    v10 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v11 = 0;
LABEL_12:
    v12 = *(v10 + a4 + 16);
    if (v12 >= a5 && v12 - 1 < 4)
    {
      if (!a6)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (qword_2A18BDE80)
  {
    v11 = qword_2A18BDE80 + 16;
  }

  else
  {
    v11 = 0;
  }

  if (result == 255)
  {
    v10 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  if (!v11 || result != 255)
  {
    return result;
  }

LABEL_19:
  v14 = *(v11 + a4);
  if (v14)
  {
    v15 = v14 >= a5;
  }

  else
  {
    v15 = 0;
  }

  if (v15 && a6 != 0 && v14 < 5)
  {
LABEL_32:

    return MEMORY[0x2A1C6E680]();
  }

  return result;
}

uint64_t sub_297E68F78(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_Reset");
  *(a1 + 254) = 1;
  v2 = *(a1 + 416);
  phOsalNfc_SetMemory();
  v3 = *(a1 + 416);
  phOsalNfc_MemCopy();
  v4 = *(a1 + 416);
  phOsalNfc_MemCopy();
  v5 = *(a1 + 416);
  phOsalNfc_MemCopy();
  v6 = *(a1 + 416);
  phOsalNfc_MemCopy();
  v7 = *(a1 + 416);
  phOsalNfc_SetMemory();
  *(a1 + 299) = 0;
  *(a1 + 380) = 0;
  result = sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_Reset");
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297E690CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_Format");
  if (a2)
  {
    v4 = 0;
    *(a1 + 380) = 0;
    do
    {
      *(a1 + v4 + 248) = *(a2 + v4);
      ++v4;
    }

    while (v4 != 6);
    *(a1 + 25) = 1;
    *(a1 + 256) = 3;
    *(a1 + 254) = 0;
    v5 = sub_297E69178(a1);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_Format");
  return v5;
}

uint64_t sub_297E69178(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_WrRdAuth");
  sub_297E69F0C(a1, *(a1 + 256));
  v2 = sub_297E6A270(a1);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_WrRdAuth");
  return v2;
}

uint64_t sub_297E691F4(uint64_t a1, int a2)
{
  *(a1 + 106) = a2;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_Process");
  v4 = *(a1 + 25);
  if (a2)
  {
    switch(v4)
    {
      case 6:
        v5 = sub_297E69CF4(a1);
        break;
      case 5:
        v5 = sub_297E69D80(a1);
        break;
      case 1:
        v5 = sub_297E69B7C(a1);
        break;
      default:
        v6 = *(a1 + 106);
        goto LABEL_28;
    }

LABEL_27:
    v6 = v5;
LABEL_28:
    if (v6 == 13)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (*(a1 + 25) <= 5u)
  {
    if (*(a1 + 25) > 2u)
    {
      if (v4 == 3)
      {
        v5 = sub_297E69518(a1);
        goto LABEL_27;
      }

      if (v4 == 5)
      {
        v5 = sub_297E69644(a1);
        goto LABEL_27;
      }
    }

    else
    {
      if (v4 == 1)
      {
        v5 = sub_297E69378(a1);
        goto LABEL_27;
      }

      if (v4 == 2)
      {
        v5 = sub_297E69494(a1);
        goto LABEL_27;
      }
    }

    goto LABEL_33;
  }

  if (*(a1 + 25) > 7u)
  {
    if (v4 == 8)
    {
      v5 = sub_297E699A8(a1);
      goto LABEL_27;
    }

    if (v4 == 9)
    {
      v5 = sub_297E69A80(a1);
      goto LABEL_27;
    }

LABEL_33:
    v6 = 245;
    goto LABEL_29;
  }

  if (v4 == 6)
  {
    v5 = sub_297E69830(a1);
    goto LABEL_27;
  }

  v6 = 0;
LABEL_29:
  sub_297EA0EA0(a1, v6);
LABEL_30:

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_Process");
}

uint64_t sub_297E69378(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProAuth");
  v2 = *(a1 + 254);
  if (v2 == 4 || v2 == 3)
  {
    v5 = *(a1 + 380);
    if ((v5 - 64) >= 3 && (v5 - 1) > 1)
    {
      *(a1 + 380) = 0;
LABEL_16:
      v6 = 6;
      goto LABEL_20;
    }

    *(a1 + 256) = v5;
    v6 = 9;
  }

  else
  {
    if (!*(a1 + 254))
    {
      v3 = *(a1 + 256);
      if (v3 == 67)
      {
        if (!*(a1 + 299))
        {
          v4 = 64;
          goto LABEL_19;
        }
      }

      else if (v3 == 3 && !*(a1 + 299))
      {
        v4 = 1;
LABEL_19:
        *(a1 + 256) = v4;
        v6 = 8;
        goto LABEL_20;
      }

      *(a1 + 299) = 0;
      goto LABEL_16;
    }

    if ((*(a1 + 380) | 0x40) == 0x42)
    {
      *(a1 + 380) = 0;
      v6 = 7;
    }

    else
    {
      v6 = 5;
    }
  }

LABEL_20:
  *(a1 + 25) = v6;
  v7 = sub_297E69178(a1);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProAuth");
  return v7;
}

uint64_t sub_297E69494(uint64_t a1)
{
  *(a1 + 25) = 3;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_CallCon");
  v2 = sub_297ECA828(*a1, (a1 + 64), *(a1 + 16), *(a1 + 216));
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_CallCon");
  return v2;
}

uint64_t sub_297E69518(uint64_t a1)
{
  v9 = 1;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProCon");
  sub_297E6A3B8(a1);
  v2 = *(a1 + 24);
  if (v2 == 3)
  {
    if (*(a1 + 256) < 0x100u)
    {
LABEL_16:
      *(a1 + 25) = 1;
      v7 = sub_297E69178(a1);
      goto LABEL_17;
    }
  }

  else if (v2 != 2 || *(a1 + 256) <= 0x3Fu)
  {
    goto LABEL_16;
  }

  sub_297E6A4D0(a1, v2, a1 + 259);
  v3 = 1;
  do
  {
    v4 = sub_297E6A6A0(a1, &v9, (a1 + 259 + v3), 1);
    if (v3 == 15)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v3 += v5;
  }

  while (v3 <= 0x27 && v4 != 0);
  if (!v4)
  {
    sub_297E6A75C(a1);
    *(a1 + 256) = 1;
    *(a1 + 380) = 1;
    *(a1 + 254) = 4;
    goto LABEL_16;
  }

  v7 = 35;
LABEL_17:
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProCon");
  return v7;
}

uint64_t sub_297E69644(uint64_t a1)
{
  v18 = 1;
  v2 = *(a1 + 256);
  if (v2 <= 0x7F)
  {
    v3 = v2 >> 2;
  }

  else
  {
    v3 = ((v2 + 3968) >> 4) + 32;
  }

  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProRdSectTr");
  v4 = *(a1 + 256);
  v5 = *(a1 + 96);
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ChkAcsBit");
  v6 = 245;
  if ((v4 & 0xFFFFFFBF) == 3)
  {
    v6 = 242;
  }

  v7 = sub_297E6A6A0(a1, (v5 + 6), (a1 + v6), 3);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ChkAcsBit");
  *(a1 + 259 + v3) = v7 == 0;
  v8 = *(a1 + 256);
  if (v8 <= 0x7E)
  {
    v9 = 4;
  }

  else
  {
    v9 = 16;
  }

  v10 = v9 + v8;
  *(a1 + 256) = v10;
  v11 = *(a1 + 24);
  if ((v11 != 2 || v10 <= 0x3Fu) && (v11 != 3 || v10 < 0x100u))
  {
    *(a1 + 25) = 1;
    *(a1 + 254) = 0;
    goto LABEL_27;
  }

  sub_297E6A4D0(a1, v11, a1 + 259);
  if (!v7)
  {
    goto LABEL_25;
  }

  v12 = 1;
  do
  {
    v13 = sub_297E6A6A0(a1, &v18, (a1 + 259 + v12), 1);
    if (v12 == 15)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v12 += v14;
  }

  while (v12 <= 0x27 && v13 != 0);
  if (!v13)
  {
LABEL_25:
    sub_297E6A75C(a1);
    *(a1 + 256) = 1;
    *(a1 + 380) = 1;
    *(a1 + 254) = 4;
    *(a1 + 25) = 1;
LABEL_27:
    v16 = sub_297E69178(a1);
    goto LABEL_28;
  }

  v16 = 35;
LABEL_28:
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProRdSectTr");
  return v16;
}

uint64_t sub_297E69830(uint64_t a1)
{
  v14 = 1;
  v2 = *(a1 + 256);
  if (v2 <= 0x7F)
  {
    v3 = v2 >> 2;
  }

  else
  {
    v3 = ((v2 + 3968) >> 4) + 32;
  }

  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProWrSectTr");
  *(a1 + 259 + v3) = *(a1 + 106) == 0;
  v4 = *(a1 + 256);
  if (v4 <= 0x7E)
  {
    v5 = 4;
  }

  else
  {
    v5 = 16;
  }

  v6 = v5 + v4;
  *(a1 + 256) = v6;
  v7 = *(a1 + 24);
  if (v7 != 3)
  {
    if (v7 == 2 && v6 > 0x3Fu)
    {
      goto LABEL_10;
    }

LABEL_22:
    *(a1 + 25) = 1;
    *(a1 + 254) = 0;
LABEL_23:
    v12 = sub_297E69178(a1);
    goto LABEL_24;
  }

  if (v6 < 0x100u)
  {
    goto LABEL_22;
  }

LABEL_10:
  sub_297E6A4D0(a1, v7, a1 + 259);
  v8 = 1;
  do
  {
    v9 = sub_297E6A6A0(a1, &v14, (a1 + 259 + v8), 1);
    if (v8 == 15)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v8 += v10;
  }

  while (v8 <= 0x27 && v9 != 0);
  if (!v9)
  {
    sub_297E6A75C(a1);
    *(a1 + 256) = 1;
    *(a1 + 380) = 1;
    *(a1 + 254) = 4;
    *(a1 + 25) = 1;
    goto LABEL_23;
  }

  v12 = 35;
LABEL_24:
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProWrSectTr");
  return v12;
}

uint64_t sub_297E699A8(uint64_t a1)
{
  v2 = 8;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProWrMADBlk");
  v3 = *(a1 + 256);
  if (v3 <= 0x3F)
  {
    if (v3 == 1)
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (v3 == 2)
    {
      *(a1 + 299) = 1;
      v4 = 3;
LABEL_9:
      v2 = 6;
      goto LABEL_12;
    }

LABEL_8:
    *(a1 + 299) = 1;
    v4 = 67;
    goto LABEL_9;
  }

  if (v3 == 64)
  {
    v4 = 65;
    goto LABEL_12;
  }

  if (v3 != 65)
  {
    goto LABEL_8;
  }

  v4 = 66;
LABEL_12:
  *(a1 + 25) = v2;
  *(a1 + 256) = v4;
  v5 = sub_297E69178(a1);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProWrMADBlk");
  return v5;
}

uint64_t sub_297E69A80(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProUpdMADBlk");
  v2 = *(a1 + 380);
  if (v2 > 0x3F)
  {
    if (v2 == 64)
    {
      v3 = 65;
      goto LABEL_12;
    }

    if (v2 != 66)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v2 == 1)
    {
      v3 = 2;
      goto LABEL_12;
    }

    if (v2 != 2)
    {
LABEL_4:
      v3 = 66;
LABEL_12:
      *(a1 + 380) = v3;
      *(a1 + 256) = v3;
      goto LABEL_15;
    }
  }

  if (*(a1 + 24) == 2 || *(a1 + 256) == 66)
  {
    sub_297E6A874(a1);
    v4 = 1;
    *(a1 + 25) = 1;
  }

  else
  {
    *(a1 + 380) = 64;
    *(a1 + 256) = 64;
    *(a1 + 25) = 1;
    v4 = 4;
  }

  *(a1 + 254) = v4;
LABEL_15:
  v5 = sub_297E69178(a1);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProUpdMADBlk");
  return v5;
}

uint64_t sub_297E69B7C(uint64_t a1)
{
  v2 = *(a1 + 106);
  v12 = 1;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProErrAuth");
  v3 = *(a1 + 256);
  if (v3 != 67)
  {
    if (v3 < 4)
    {
      if (v3 != 3)
      {
        goto LABEL_21;
      }

      if (*(a1 + 254) > 3u)
      {
        v11 = *(a1 + 416);
        phOsalNfc_SetMemory();
        goto LABEL_21;
      }
    }

    else if (*(a1 + 254) == 4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (*(a1 + 254) != 4)
  {
LABEL_19:
    v9 = sub_297E6A338(a1);
LABEL_20:
    v2 = v9;
    goto LABEL_21;
  }

  v4 = *(a1 + 416);
  phOsalNfc_SetMemory();
  sub_297E6A4D0(a1, *(a1 + 24), a1 + 259);
  v5 = 1;
  do
  {
    v6 = sub_297E6A6A0(a1, &v12, (a1 + 259 + v5), 1);
    if (v5 == 15)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v5 += v7;
  }

  while (v5 <= 0x27 && v6 != 0);
  if (!v6)
  {
    sub_297E6A75C(a1);
    *(a1 + 256) = 1;
    *(a1 + 380) = 1;
    *(a1 + 254) = 4;
    *(a1 + 25) = 1;
    v9 = sub_297E69178(a1);
    goto LABEL_20;
  }

  v2 = 35;
LABEL_21:
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ProErrAuth");
  return v2;
}

uint64_t sub_297E69CF4(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ErrWrSectTr");
  if (*(a1 + 254))
  {
    v2 = sub_297E69830(a1);
  }

  else
  {
    *(a1 + 25) = 1;
    *(a1 + 254) = 3;
    v2 = sub_297E69178(a1);
  }

  v3 = v2;
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ErrWrSectTr");
  return v3;
}

uint64_t sub_297E69D80(uint64_t a1)
{
  v13 = 1;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ErrRdSectTr");
  if (!*(a1 + 254))
  {
    *(a1 + 25) = 1;
    *(a1 + 254) = 3;
LABEL_24:
    v11 = sub_297E69178(a1);
    goto LABEL_25;
  }

  v2 = *(a1 + 256);
  v3 = ((v2 + 3968) >> 4) + 32;
  if (v2 <= 0x7F)
  {
    LOBYTE(v3) = v2 >> 2;
  }

  *(a1 + 259 + v3) = *(a1 + 106) == 0;
  if (v2 <= 0x7E)
  {
    v4 = 4;
  }

  else
  {
    v4 = 16;
  }

  v5 = v4 + v2;
  *(a1 + 256) = v5;
  v6 = *(a1 + 24);
  if (v6 != 3)
  {
    if (v6 == 2 && v5 > 0x3Fu)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if (v5 < 0x100u)
  {
LABEL_23:
    *(a1 + 25) = 1;
    *(a1 + 254) = 0;
    goto LABEL_24;
  }

LABEL_10:
  sub_297E6A4D0(a1, v6, a1 + 259);
  v7 = 1;
  do
  {
    v8 = sub_297E6A6A0(a1, &v13, (a1 + 259 + v7), 1);
    if (v7 == 15)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  while (v7 <= 0x27 && v8 != 0);
  if (!v8)
  {
    sub_297E6A75C(a1);
    *(a1 + 256) = 1;
    *(a1 + 380) = 1;
    *(a1 + 254) = 4;
    *(a1 + 25) = 1;
    goto LABEL_24;
  }

  v11 = 35;
LABEL_25:
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ErrRdSectTr");
  return v11;
}

uint64_t sub_297E69F0C(uint64_t a1, char a2)
{
  v31 = *MEMORY[0x29EDCA608];
  **(a1 + 96) = a2;
  **(a1 + 88) = 252;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_FillSendBuf");
  v3 = *(a1 + 25);
  if (v3 <= 5)
  {
    if (v3 != 1)
    {
      if (v3 == 5)
      {
        *(a1 + 80) = 48;
        v6 = 1;
LABEL_31:
        *(a1 + 104) = v6;
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v12 = *(a1 + 254);
    if (v12 > 2)
    {
      if (v12 == 4)
      {
        v27 = *(a1 + 416);
        v28 = *(a1 + 96);
        phOsalNfc_MemCopy();
        v19 = 97;
        goto LABEL_30;
      }

      if (v12 != 3)
      {
        goto LABEL_27;
      }
    }

    else if (*(a1 + 254))
    {
      if (v12 == 1)
      {
        v13 = *(a1 + 416);
        v14 = *(a1 + 96) + 1;
LABEL_28:
        phOsalNfc_MemCopy();
        v19 = 96;
LABEL_30:
        *(a1 + 80) = v19;
        v6 = 7;
        goto LABEL_31;
      }

LABEL_27:
      v25 = *(a1 + 416);
      v26 = *(a1 + 96) + 1;
      goto LABEL_28;
    }

    v17 = *(a1 + 416);
    v18 = *(a1 + 96);
    phOsalNfc_SetMemory();
    if (*(a1 + 254))
    {
      v19 = 97;
    }

    else
    {
      v19 = 96;
    }

    goto LABEL_30;
  }

  switch(v3)
  {
    case 6u:
      *(a1 + 80) = 160;
      v7 = *(a1 + 256);
      if (v7 == 67)
      {
        v20 = *(a1 + 416);
        v21 = *(a1 + 96);
      }

      else
      {
        v8 = *(a1 + 416);
        if (v7 == 3)
        {
          v9 = *(a1 + 96);
          *(a1 + 24);
        }

        else
        {
          v22 = *(a1 + 96) + 1;
        }
      }

      phOsalNfc_MemCopy();
      v23 = *(a1 + 416);
      v24 = *(a1 + 96) + 11;
      goto LABEL_26;
    case 7u:
      *(a1 + 80) = 160;
      v10 = *(a1 + 416);
      v11 = *(a1 + 96) + 1;
      goto LABEL_26;
    case 8u:
      *(a1 + 80) = 160;
      v4 = *(a1 + 416);
      v5 = *(a1 + 96) + 1;
LABEL_26:
      phOsalNfc_MemCopy();
      v6 = 17;
      goto LABEL_31;
  }

LABEL_17:
  *(a1 + 80) = 160;
  *(a1 + 104) = 17;
  v15 = *(a1 + 416);
  v16 = *(a1 + 96);
  *(a1 + 380);
  phOsalNfc_MemCopy();
LABEL_32:
  result = sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_FillSendBuf");
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297E6A270(uint64_t a1)
{
  v2 = a1 + 8;
  *(a1 + 8) &= 0xFCu;
  *(a1 + 12) = 0;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_Transceive");
  *(a1 + 64) = sub_297EA1230;
  *(a1 + 72) = a1;
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  *v4 = 252;
  v5 = sub_297ECA38C(*a1, (a1 + 64), *(a1 + 16), *(a1 + 80), v2, v3, *(a1 + 104), v3, v4);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_Transceive");
  return v5;
}

uint64_t sub_297E6A338(uint64_t a1)
{
  *(a1 + 25) = 2;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_CallDisCon");
  v2 = sub_297ECA698(*a1, (a1 + 64), *(a1 + 16));
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_CallDisCon");
  return v2;
}

uint64_t sub_297E6A3B8(uint64_t a1)
{
  v2 = 3;
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ChangeAuthSt");
  v3 = *(a1 + 254);
  if (v3 <= 1)
  {
    if (!*(a1 + 254))
    {
      v7 = *(a1 + 256);
      if (v7 >= 0x43)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      if (v7 >= 0x40)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      if (v7 >= 4)
      {
        v2 = v9;
      }

      else
      {
        v2 = 2;
      }

      goto LABEL_25;
    }

    if (v3 != 1)
    {
      goto LABEL_13;
    }
  }

  else if (v3 == 2)
  {
    v2 = 1;
  }

  else
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        v4 = *(a1 + 256);
        v5 = ((v4 + 3968) >> 4) + 32;
        if (v4 <= 0x7F)
        {
          LOBYTE(v5) = v4 >> 2;
        }

        *(a1 + v5 + 259) = 0;
        if (v4 <= 0x7E)
        {
          v6 = 4;
        }

        else
        {
          v6 = 16;
        }

        *(a1 + 256) = v6 + v4;
      }

LABEL_13:
      v2 = 0;
      goto LABEL_25;
    }

    v2 = 4;
  }

LABEL_25:
  *(a1 + 254) = v2;

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_ChangeAuthSt");
}

uint64_t sub_297E6A4D0(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_NdefComplSect");
  if (a2 == 2)
  {
    v6 = 16;
  }

  else
  {
    v6 = 40;
  }

  if ((a2 & 0xFE) == 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 1;
    do
    {
      v12 = *(a3 + v10);
      v13 = (v10 + 1);
      if (v13 == 16)
      {
        v14 = 17;
      }

      else
      {
        v14 = v10 + 1;
      }

      if (((v7 + 1) & 0x100) != 0)
      {
        v15 = -1;
      }

      else
      {
        v15 = v7 + 1;
      }

      if (v7 > v9)
      {
        v16 = v11;
      }

      else
      {
        v7 = v9;
        v16 = v8;
      }

      if (v13 == 16)
      {
        v17 = 17;
      }

      else
      {
        v17 = v10 + 1;
      }

      if (*(a3 + v10))
      {
        v10 = v14;
      }

      else
      {
        v10 = v17;
      }

      if (v12)
      {
        v7 = v15;
      }

      else
      {
        v11 = v17;
        v8 = v16;
        v9 = v7;
        v7 = 1;
      }

      v19 = a2 == 2 && v10 < 0x10u;
      v20 = v10 < 0x28u && a2 == 3;
    }

    while (v20 || v19);
  }

  else
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    v7 = 0;
    LOBYTE(v11) = 1;
  }

  if (v7 <= v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = v7;
  }

  if (v7 > v9)
  {
    LOBYTE(v8) = v11;
  }

  if (a2 == 2 && v6 - 1 > v21)
  {
    if (!v8)
    {
      goto LABEL_51;
    }

    v22 = 14;
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_51;
    }

    v22 = v6 - 2;
    if (v6 - 2 <= v21 || !v8)
    {
      goto LABEL_51;
    }
  }

  if (v22 > v8)
  {
    v23 = *(a1 + 416);
    phOsalNfc_SetMemory();
    v24 = *(a1 + 416);
    phOsalNfc_SetMemory();
  }

LABEL_51:

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_NdefComplSect");
}

uint64_t sub_297E6A6A0(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_MemCompare");
  if (a2 && a3)
  {
    if (a4)
    {
      v8 = a4 - 1;
      do
      {
        v10 = *a2++;
        v9 = v10;
        v11 = *a3++;
        a4 = (v9 - v11);
        v12 = v8-- != 0;
      }

      while (v12 && !a4);
    }
  }

  else
  {
    sub_297E4E0B0(3, a1, 8u, 1u, "phFriNfc_MfStd_MemCompare:NULL pointer passed");
    a4 = 0;
  }

  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_MemCompare");
  return a4;
}

uint64_t sub_297E6A75C(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_StrNdefData");
  v2 = *(a1 + 416);
  phOsalNfc_SetMemory();
  *(a1 + 300) = 276;
  v3 = *(a1 + 24);
  if (v3 == 3)
  {
    *(a1 + 332) = 488;
  }

  v4 = 1;
  for (i = 2; i < 0x4Fu; i += v11)
  {
    v7 = v3 == 2 && v4 < 0x10;
    if (v3 != 3 && !v7)
    {
      break;
    }

    v8 = (a1 + 300 + i);
    v9 = *(a1 + 259 + v4) == 1 ? 3 : 0;
    *v8 = v9;
    v8[1] = -31;
    v10 = v4 + 1;
    if (v4 == 15)
    {
      v4 = 17;
    }

    else
    {
      ++v4;
    }

    v11 = v10 == 16 ? 4 : 2;
    if (v4 > 0x27)
    {
      break;
    }
  }

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_StrNdefData");
}

uint64_t sub_297E6A874(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_MfStd_H_BlkNoToWrTLV");
  v2 = *(a1 + 24);
  v3 = 4;
  v4 = 16;
  for (i = 260; i != 299; ++i)
  {
    v6 = i - 259;
    v7 = v2 != 2 || v6 > 0xF;
    v8 = v7;
    if (v2 != 3 && v8)
    {
      break;
    }

    if (*(a1 + i) == 1)
    {
      if (v6 > 0x1F)
      {
        v3 = (v4 & 0x1F0) + 128;
      }

      *(a1 + 256) = v3;
      break;
    }

    v3 += 4;
    v4 += 16;
  }

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_MfStd_H_BlkNoToWrTLV");
}

uint64_t sub_297E6A93C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReadSwioPadVoltageCmd");
  if (a1 && *(a1 + 4881) - 1 <= 1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v7 = 0xF00000001;
    DWORD2(v7) = 50;
    if (*(a1 + 4881) == 1)
    {
      v3 = 17;
    }

    else
    {
      v3 = 18;
    }

    LOBYTE(v6) = v3;
    HIBYTE(v6) = 34;
    *&v8 = &v6;
    DWORD2(v8) = 2;
    v4 = sub_297E57BA8(a1 + 936, &v7, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_ReadSwioPadVoltageCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReadSwioPadVoltageCmd");
  return v4;
}

uint64_t sub_297E6AA68(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReadSwioPadVoltageRsp");
  if (a1)
  {
    v4 = *(a1 + 3800);
    if (v4 && !*v4 && *(a1 + 3808) == 3)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Read SWIO voltage Info Successful");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Read SWIO voltage Info failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Read SWIO voltage Info: Invalid context");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReadSwioPadVoltageRsp");
  return a2;
}

uint64_t sub_297E6AB58(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReadInternalRegSeqComplete");
  if (a1)
  {
    sub_297E5B994(a1, a2, a1 + 3800);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReadInternalRegSeqComplete");
  return a2;
}

uint64_t sub_297E6ABCC(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReadIntRegCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 50;
    *(a1 + 3744) = 20;
    *(a1 + 3748) = 1;
    *&v6 = a1 + 3744;
    DWORD2(v6) = 1;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_ReadIntRegCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReadIntRegCmd");
  return v3;
}

uint64_t sub_297E6ACD0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReadIntRegRsp");
  if (a1)
  {
    v4 = *(a1 + 3800);
    if (v4 && !*v4 && *(a1 + 3808) == 3)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Read Internal Register Successful");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Read Internal Register failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Read Internal Register Info: Invalid context");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReadIntRegRsp");
  return a2;
}

uint64_t sub_297E6ADC0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, 5);
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v7 = 0xF00000001;
    DWORD2(v7) = 16;
    v3 = 1;
    if (!*(a1 + 3712))
    {
      v4 = (a1 + 3712);
      goto LABEL_7;
    }

    if (*(a1 + 3712) == 1)
    {
      LOBYTE(v6[0]) = 1;
      *(v6 + 1) = *(a1 + 3714);
      LODWORD(v3) = 5;
      v4 = v6;
LABEL_7:
      *&v8 = v4;
      DWORD2(v8) = v3;
      v3 = sub_297E57BA8(a1 + 936, &v7, a1 + 3800, 2000, sub_297E5E830, a1);
    }
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetEraseCounterCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterCmd");
  return v3;
}

uint64_t sub_297E6AEEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterRsp");
  if (a1)
  {
    v4 = *(a1 + 3800);
    if (v4 && *(a1 + 3808) && !*v4)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get erase counter Info Successful");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Get erase counter Info failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Get erase counter  Info: Invalid context");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterRsp");
  return a2;
}

uint64_t sub_297E6AFD8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterSeqComplete");
  if (a1)
  {
    sub_297E5B994(a1, a2, a1 + 3800);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterSeqComplete");
  return a2;
}

uint64_t sub_297E6B04C(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStsCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 13;
    *&v6 = a1 + 4880;
    DWORD2(v6) = 1;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetProhibitTimerStsCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStsCmd");
  return v3;
}

uint64_t sub_297E6B148(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStsRsp");
  if (a1)
  {
    if (!a2)
    {
      v4 = *(a1 + 3800);
      if (v4 && *(a1 + 3808) == 1)
      {
        if (*v4 == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetProhibitTimerStsRsp: rejected by NFCC");
          a2 = 147;
          goto LABEL_12;
        }

        if (!*v4)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GetProhibitTimerStsRsp: Successful");
          a2 = 0;
          goto LABEL_12;
        }

        v5 = "phNciNfc_GetProhibitTimerStsRsp: failed!";
      }

      else
      {
        v5 = "phNciNfc_GetProhibitTimerStsRsp: invalid payload length";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v5);
      a2 = 255;
      goto LABEL_12;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetProhibitTimerStsRsp: received with failure status");
  }

  else
  {
    a2 = 1;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStsRsp");
  return a2;
}

uint64_t sub_297E6B27C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStsSeqComplete");
  if (a1)
  {
    if (!a2)
    {
      v4 = *(a1 + 4872);
      if (v4 && v4 != 0xFFFFFFFFFFFFLL)
      {
        v5 = *(a1 + 6524);
        phOsalNfc_Timer_Stop();
        v6 = *(a1 + 6524);
        v7 = *(a1 + 4872);
        phOsalNfc_Timer_Delete();
        *(a1 + 4872) = 0xFFFFFFFFFFFFLL;
      }

      v8 = *(a1 + 6524);
      v9 = phOsalNfc_Timer_Create();
      *(a1 + 4872) = v9;
      a2 = 12;
      v10 = "phNciNfc_GetProhibitTimerStsSeqComplete: Timer Create failed!!";
      if (v9 && v9 != 0xFFFFFFFFFFFFLL)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GetProhibitTimerStsSeqComplete: Timer Created Successfully");
        v11 = *(a1 + 6524);
        phOsalNfc_SetMemory();
        v12 = *(a1 + 6524);
        v13 = *(a1 + 4872);
        a2 = phOsalNfc_Timer_Start();
        if (!a2)
        {
          sub_297E687D8(1, a1 + 6524, *(a1 + 4872), 3u, 4u, "phNciNfc_GetProhibitTimerStsSeqComplete");
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GetProhibitTimerStsSeqComplete: Notification timer started\n");
          goto LABEL_12;
        }

        v14 = *(a1 + 6524);
        v15 = *(a1 + 4872);
        phOsalNfc_Timer_Stop();
        *(a1 + 6512) = 0;
        v16 = *(a1 + 6524);
        v17 = *(a1 + 4872);
        phOsalNfc_Timer_Delete();
        *(a1 + 4872) = 0xFFFFFFFFFFFFLL;
        v10 = "phNciNfc_GetProhibitTimerStsSeqComplete: Notification timer start FAILED\n\n";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v10);
    }

    *(a1 + 848) = 0u;
    sub_297E5B994(a1, a2, a1 + 4864);
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStsSeqComplete");
  return a2;
}

uint64_t sub_297E6B450(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetSmbLogCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v6 = 0xF00000001;
    DWORD2(v6) = 37;
    *&v7 = &v5;
    DWORD2(v7) = 1;
    v3 = sub_297E57BA8(a1 + 936, &v6, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetSmbLogCmd: Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetSmbLogCmd");
  return v3;
}

uint64_t sub_297E6B54C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetSmbLogRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_14;
  }

  if (a2)
  {
    v4 = "phNciNfc_GetSmbLogRsp:SMB Get Logging response received with failure status";
LABEL_4:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v4);
    goto LABEL_14;
  }

  v5 = *(a1 + 3800);
  if (!v5 || *(a1 + 3808) != 2)
  {
    v7 = "SMB Get Logging response received with invalid payload length";
LABEL_13:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
    a2 = 255;
    goto LABEL_14;
  }

  v6 = *v5;
  if (v6 > 5)
  {
    if (v6 == 6)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "SMB Get Logging command Semantic error received");
      goto LABEL_24;
    }

    if (v6 == 9)
    {
      v4 = "SMB Get Logging response Invalid parameter received";
      a2 = 1;
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if (*v5)
  {
    if (v6 == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "SMB Get Logging command rejected by NFCC");
LABEL_24:
      a2 = 147;
      goto LABEL_14;
    }

LABEL_18:
    v7 = "SMB Get Logging failed!";
    goto LABEL_13;
  }

  v9 = v5[1];
  *(a1 + 6288) = v9;
  if (v9)
  {
    v10 = *(a1 + 6524);
    v11 = phOsalNfc_Timer_Create();
    *(a1 + 6472) = v11;
    if (v11 != 0xFFFFFFFFFFFFLL && v11)
    {
      v12 = *(a1 + 6524);
      a2 = phOsalNfc_Timer_Start();
      if (a2)
      {
        v13 = *(a1 + 6524);
        v14 = *(a1 + 6472);
        phOsalNfc_Timer_Delete();
        *(a1 + 6472) = 0xFFFFFFFFFFFFLL;
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "SMB Notification timer start FAILED");
      }

      else
      {
        sub_297E687D8(1, a1 + 6524, *(a1 + 6472), 3u, 4u, "phNciNfc_GetSmbLogRsp");
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "SMB ntf timer started");
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "SMB Notification Timer Create failed!!");
      a2 = 12;
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetSmbLogRsp");
  return a2;
}

uint64_t sub_297E6B7BC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetSmbLogSeqComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = 255;
    }

    else
    {
      if (*(a1 + 6288))
      {
        goto LABEL_6;
      }

      v4 = 0;
    }

    sub_297E5B994(a1, v4, 0);
  }

LABEL_6:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetSmbLogSeqComplete");
  return a2;
}

uint64_t sub_297E6B848(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetGenDbgLogCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 31;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetGenDbgLogCmd: Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetGenDbgLogCmd");
  return v3;
}

uint64_t sub_297E6B940(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetGenDbgLogRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_16;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenDbgLogRsp: Response received with failure status");
    goto LABEL_16;
  }

  v4 = *(a1 + 3800);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 3808);
  if (v5 == 1)
  {
    v9 = *v4;
    if (v9 != 6)
    {
      if (v9 == 9)
      {
        a2 = 0;
        *(a1 + 6448) = 0;
        *(a1 + 6444) = 0;
        goto LABEL_16;
      }

      sub_297E50EBC(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenDbgLogRsp: phNciNfc_GetGenDbgLogRsp: failed with");
      goto LABEL_15;
    }

LABEL_20:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenDbgLogRsp: Semantic error received");
    goto LABEL_24;
  }

  if (v5 != 3)
  {
LABEL_13:
    v7 = "phNciNfc_GetGenDbgLogRsp: Response received with invalid payload length";
LABEL_14:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
LABEL_15:
    a2 = 255;
    goto LABEL_16;
  }

  v6 = *v4;
  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 != 9)
      {
        if (v6 == 243)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenDbgLogRsp: Corrupted CRC error");
          a2 = 84;
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenDbgLogRsp: Invalid parameter status received - No data present in the buffer");
LABEL_34:
      a2 = 0;
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (*v4)
  {
    if (v6 != 1)
    {
LABEL_35:
      v7 = "phNciNfc_GetGenDbgLogRsp: failed!";
      goto LABEL_14;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetGenDbgLogRsp: command rejected by NFCC");
LABEL_24:
    a2 = 147;
    goto LABEL_16;
  }

  *(a1 + 6464) = 1;
  *(a1 + 6440) = v4[1] >> 7;
  *(a1 + 6441) = (v4[1] & 0x40) != 0;
  v4[1] &= ~0x80u;
  *(*(a1 + 3800) + 1) &= ~0x40u;
  v10 = *(a1 + 3800);
  v11 = *(v10 + 2);
  *(a1 + 6444) = v11;
  LODWORD(v10) = *(v10 + 1);
  *(a1 + 6444) = v11 | (v10 << 8);
  *(a1 + 6456) = 0;
  if (!(v11 | (v10 << 8)))
  {
    goto LABEL_34;
  }

  v12 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(a1 + 6448) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetGenDbgLogRsp: allocate memory failed");
LABEL_37:
    a2 = 12;
    goto LABEL_16;
  }

  v14 = *(a1 + 6524);
  v15 = phOsalNfc_Timer_Create();
  *(a1 + 6472) = v15;
  if (v15 == 0xFFFFFFFFFFFFLL || !v15)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetGenDbgLogRsp: Notification Timer Create failed!!");
    if (*(a1 + 6448))
    {
      v16 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 6448) = 0;
    }

    *(a1 + 6444) = 0;
    goto LABEL_37;
  }

  v17 = *(a1 + 6524);
  a2 = phOsalNfc_Timer_Start();
  if (a2)
  {
    v18 = *(a1 + 6524);
    v19 = *(a1 + 6472);
    phOsalNfc_Timer_Delete();
    *(a1 + 6472) = 0xFFFFFFFFFFFFLL;
    if (*(a1 + 6448))
    {
      v20 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 6448) = 0;
    }

    *(a1 + 6444) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic DEBUG Notification timer start FAILED");
  }

  else
  {
    sub_297E687D8(1, a1 + 6524, *(a1 + 6472), 3u, 4u, "phNciNfc_GetGenDbgLogRsp");
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Generic DEBUG ntf timer started");
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetGenDbgLogRsp");
  return a2;
}

uint64_t sub_297E6BCFC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetGenDbgLogSeqComplete");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
    }

    if (a2)
    {
      *(a1 + 6464) = 0;
      v5 = a1;
      v6 = 255;
      v7 = 0;
    }

    else
    {
      if (*(a1 + 6444))
      {
        goto LABEL_8;
      }

      *(a1 + 6464) = 0;
      v7 = a1 + 6440;
      v5 = a1;
      v6 = 0;
    }

    sub_297E5B994(v5, v6, v7);
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetGenDbgLogSeqComplete");
  return a2;
}

uint64_t sub_297E6BDB8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TriggerNfccAssertCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 59;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_TriggerNfccAssertCmd: Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TriggerNfccAssertCmd");
  return v3;
}

uint64_t sub_297E6BEB0(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciRsp1");
  if (a1)
  {
    if (a2 || (v6 = *(a1 + 3800)) == 0 || *(a1 + 3808) != 1 || *v6)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_ProcessCommonNciRsp1 - Response received with invalid status/payload");
      *(a1 + 3808) = 0;
      v4 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessCommonNciRsp1 - Response Successful");
      v4 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_ProcessCommonNciRsp1 - Invalid NCI Context");
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciRsp1");
  return v4;
}

uint64_t sub_297E6BFA8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TriggerNfccAssertSeqComplete");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
    }

    if (a2)
    {
      v5 = 255;
    }

    else
    {
      v5 = 0;
    }

    sub_297E5B994(a1, v5, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TriggerNfccAssertSeqComplete");
  return a2;
}

uint64_t sub_297E6C038(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetLpcdCountCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 29;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetLpcdCountCmd: Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetLpcdCountCmd");
  return v3;
}

uint64_t sub_297E6C128(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetLpcdCountRsp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetLpcdCountRsp:Get LPCD false positive counter response received with failure status");
    }

    else
    {
      v4 = *(a1 + 3800);
      if (v4 && *(a1 + 3808) == 7 && !*v4)
      {
        v6 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        a2 = 0;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get LPCD false positive counter response received with invalid payload length");
        a2 = 255;
      }
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetLpcdCountRsp");
  return a2;
}

uint64_t sub_297E6C21C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetLpcdCountSeqComplete");
  if (a1)
  {
    sub_297E5B994(a1, a2, a1 + 6484);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetLpcdCountSeqComplete");
  return a2;
}

uint64_t sub_297E6C294(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwTypeCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 6;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetFwTypeCmd: Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwTypeCmd");
  return v3;
}

uint64_t sub_297E6C384(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwTypeRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_14;
  }

  v4 = *(a1 + 6524);
  phOsalNfc_SetMemory();
  if (!a2)
  {
    v5 = *(a1 + 3800);
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = *(a1 + 3808);
    if (v6 == 2)
    {
      if (!*v5)
      {
        v7 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        a2 = 0;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (v6 < 0x16)
    {
LABEL_12:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get FW Info response received with invalid payload length");
      goto LABEL_13;
    }

    if (*v5)
    {
LABEL_11:
      sub_297E50EBC(1, a1 + 6524, 3u, 2u, "Get FW Info response Failed with Status");
LABEL_13:
      a2 = 255;
      goto LABEL_14;
    }

    *(a1 + 6516) = v5[1];
    v9 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v10 = *(a1 + 3800);
    *a1 = v10[6];
    *(a1 + 1) = v10[7];
    *(a1 + 2) = v10[8];
    *(a1 + 3) = v10[9];
    v11 = v10[10];
    *(a1 + 4) = v11;
    if (v11)
    {
      if (v11 > 8)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received number of RF interface supported exceeded max number of RF interfaces");
      }

      else
      {
        v12 = *(a1 + 6524);
        phOsalNfc_MemCopy();
      }

      v13 = *(a1 + 4) + 11;
      v10 = *(a1 + 3800);
    }

    else
    {
      v13 = 11;
    }

    *(a1 + 13) = v10[v13];
    v14 = v10[(v13 + 1)];
    *(a1 + 14) = v14;
    *(a1 + 14) = v14 | (v10[(v13 + 2)] << 8);
    v15 = v10[(v13 + 3)];
    *(a1 + 16) = v15;
    v16 = v10[(v13 + 4)];
    *(a1 + 18) = v16;
    *(a1 + 18) = v16 | (v10[(v13 + 5)] << 8);
    v17 = v10[(v13 + 6)];
    *(a1 + 20) = v17;
    if (v17)
    {
      v18 = v10[(v13 + 7)];
      *(a1 + 21) = v18;
      *(a1 + 22) = v10[(v13 + 8)];
      *(a1 + 23) = v10[(v13 + 9)];
      *(a1 + 24) = v10[(v13 + 10)];
    }

    else
    {
      v18 = *(a1 + 21);
    }

    *(a1 + 4832) = 0;
    *(a1 + 4829) = 0;
    if ((v18 - 162) <= 0x18)
    {
      v19 = 1 << (v18 + 94);
      if ((v19 & 7) != 0)
      {
        *(a1 + 4834) = 1;
LABEL_38:
        a2 = sub_297F00D78(a1 + 936, v15);
        goto LABEL_14;
      }

      if ((v19 & 0x1018000) != 0)
      {
        *(a1 + 4833) = 1;
        v20 = *(a1 + 3);
        if (v18 == 186)
        {
          if (v20 == 18)
          {
            *(a1 + 4830) = 1;
          }

          else
          {
            *(a1 + 4829) = 1;
          }
        }

        else if (v20 == 4)
        {
          *(a1 + 4832) = 1;
        }

        else if (v20 == 3)
        {
          *(a1 + 4831) = 1;
        }

        goto LABEL_38;
      }
    }

    if (v18 == 66)
    {
      *(a1 + 4835) = 1;
    }

    goto LABEL_38;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetFwTypeRsp:Get FW Info response received with failure status");
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwTypeRsp");
  return a2;
}

uint64_t sub_297E6C6D8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwTypeSeqComplete");
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 6496))
      {
        *(a1 + 6496) = 0;
      }

      else
      {
        a2 = 0;
        *(a1 + 6516) = 3;
      }
    }

    *(a1 + 6712) = a1 + 6516;
    *(a1 + 6720) = 5;
    sub_297E5B994(a1, a2, a1 + 6712);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwTypeSeqComplete");
  return a2;
}

uint64_t sub_297E6C788(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DetTagRemCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 28;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_DetTagRemCmd: Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DetTagRemCmd");
  return v3;
}

uint64_t sub_297E6C878(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DetTagRemRsp");
  if (a1)
  {
    if (a2)
    {
      v4 = "Detect Tag removal response received with failure status";
    }

    else
    {
      v5 = *(a1 + 3800);
      if (v5 && *(a1 + 3808) == 1 && !*v5)
      {
        a2 = 0;
        goto LABEL_10;
      }

      a2 = 255;
      v4 = "Detect Tag removal response received with invalid payload";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v4);
  }

  else
  {
    a2 = 1;
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DetTagRemRsp");
  return a2;
}

uint64_t sub_297E6C93C(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  v24 = 0u;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetVasCodeCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v23 = 0xF00000001;
    DWORD2(v23) = 7;
    v3 = *(a1 + 3432);
    v4 = v3[10];
    LOBYTE(v25[0]) = (v3[9] << 6) | (v3[8] << 7) | v4;
    if (v4)
    {
      v5 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v3 = *(a1 + 3432);
      v6 = v3[10] + 1;
    }

    else
    {
      v6 = 1;
    }

    v8 = v6 + 1;
    *(v25 + v6) = v3[32] | (v3[31] << 6) | (v3[30] << 7);
    if (v3[32])
    {
      v9 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v3 = *(a1 + 3432);
      v10 = v3[32] + v8;
    }

    else
    {
      v10 = v6 + 1;
    }

    v11 = v10 + 1;
    *(v25 + v10) = v3[54] | (v3[53] << 6) | (v3[52] << 7);
    if (v3[54])
    {
      v12 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v3 = *(a1 + 3432);
      v13 = v3[54] + v11;
    }

    else
    {
      v13 = v10 + 1;
    }

    v14 = v13 + 1;
    *(v25 + v13) = v3[76] | (v3[75] << 6) | (v3[74] << 7);
    if (v3[76])
    {
      v15 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v3 = *(a1 + 3432);
      v16 = v3[76] + v14;
    }

    else
    {
      v16 = v13 + 1;
    }

    v17 = v16 + 1;
    *(v25 + v16) = v3[98] | (v3[97] << 6) | (v3[96] << 7);
    if (v3[98])
    {
      v18 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v3 = *(a1 + 3432);
      v17 += v3[98];
    }

    v19 = v17 + 1;
    *(v25 + v17) = v3[120] | (v3[119] << 6) | (v3[118] << 7);
    if (v3[120])
    {
      v20 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v19 += *(*(a1 + 3432) + 120);
    }

    DWORD2(v24) = v19;
    *&v24 = v25;
    v7 = sub_297E57BA8(a1 + 936, &v23, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_SetVasCodeCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetVasCodeCmd");
  v21 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297E6CC48(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetVasCodeRsp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_SetVasCodeRsp:Set VAS Code response received with failure status");
    }

    else
    {
      v4 = *(a1 + 3800);
      if (v4 && *(a1 + 3808))
      {
        if (!*v4)
        {
          a2 = 0;
          goto LABEL_11;
        }

        sub_297E50EBC(1, a1 + 6524, 3u, 2u, "Set VAS Code response Failed with Status");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Set VAS Code response received with invalid payload length");
      }

      a2 = 255;
    }
  }

  else
  {
    a2 = 1;
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetVasCodeRsp");
  return a2;
}

uint64_t sub_297E6CD44(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  *(v7 + 3) = 0;
  v7[0] = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RFParaUpdateCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v8 = 0x100000001;
    DWORD2(v8) = 11;
    LOWORD(v7[0]) = 258;
    BYTE2(v7[0]) = 1;
    if (!sub_297E72ECC(a1, *(*(a1 + 3432) + 8), v7 + 3))
    {
      LOWORD(v7[1]) = 258;
      if (!sub_297E72ECC(a1, *(*(a1 + 3432) + 12), &v7[1] + 2))
      {
        DWORD2(v9) = 7;
        *&v9 = v7;
        v3 = sub_297E57BA8(a1 + 936, &v8, a1 + 3800, 2000, sub_297E5E830, a1);
        goto LABEL_7;
      }
    }

    v3 = 1;
    v4 = a1 + 6524;
    v5 = 1;
  }

  else
  {
    v3 = 1;
    v5 = 2;
    v4 = 0;
  }

  sub_297E4E0B0(v5, v4, 3u, 1u, "phNciNfc_RFParaUpdateCmd: Invalid input parameter");
LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RFParaUpdateCmd");
  return v3;
}

uint64_t sub_297E6CEAC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RFParaUpdateRes");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_13;
  }

  if (!a2)
  {
    v4 = *(a1 + 3800);
    if (!v4 || !*(a1 + 3808))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "RF parameter update response received with invalid payload length");
LABEL_12:
      a2 = 255;
      goto LABEL_13;
    }

    v5 = *v4;
    if (v5 > 8)
    {
      if (v5 != 9)
      {
        if (v5 == 241)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Express mode has enabled");
          a2 = 81;
          goto LABEL_13;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (!*v4)
      {
        a2 = 0;
        goto LABEL_13;
      }

      if (v5 != 6)
      {
LABEL_18:
        v7 = *v4;
        sub_297E50EBC(1, a1 + 6524, 3u, 1u, "RF parameter update response ");
        goto LABEL_12;
      }
    }

    sub_297E4E880(1, a1 + 6524, 3u, 1u, "Unsupported Tag IDs ", v4);
    a2 = 147;
    goto LABEL_13;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "RF parameter update response received with failure status");
LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RFParaUpdateRes");
  return a2;
}

uint64_t sub_297E6D020(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetVasCodeCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 8;
    DWORD2(v6) = 0;
    *&v6 = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetVasCodeCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetVasCodeCmd");
  return v3;
}

uint64_t sub_297E6D110(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetVasCodeRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_11;
  }

  v4 = *(a1 + 6524);
  phOsalNfc_SetMemory();
  *(a1 + 3440) = 4;
  if (a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetVasCodeRsp:Get VAS Code response received with failure status");
    goto LABEL_11;
  }

  v5 = *(a1 + 3800);
  if (!v5 || (v6 = *(a1 + 3808)) == 0)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get VAS Code response received with invalid payload length");
    goto LABEL_10;
  }

  if (*v5)
  {
    sub_297E50EBC(1, a1 + 6524, 3u, 2u, "Get VAS Code response Failed with Status");
LABEL_10:
    a2 = 255;
    goto LABEL_11;
  }

  v8 = v5[1] & 0x3F;
  *(a1 + 3450) = v8;
  *(a1 + 3449) = (v5[1] & 0x40) != 0;
  *(a1 + 3448) = v5[1] >> 7;
  if (v8)
  {
    if (v8 > 0x13)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received VAScode length exceeded max VAScode len");
      a2 = 255;
    }

    else
    {
      v9 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      a2 = 0;
    }

    v10 = *(a1 + 3450) + 2;
  }

  else
  {
    a2 = 0;
    v10 = 2;
  }

  if (v6 >= v10 + 2)
  {
    v11 = *(a1 + 3800);
    v12 = *(v11 + v10);
    v13 = v10 + 1;
    *(a1 + 3472) = v12 & 0x3F;
    *(a1 + 3471) = (*(v11 + v10) & 0x40) != 0;
    *(a1 + 3470) = *(v11 + v10) >> 7;
    if ((v12 & 0x3F) != 0)
    {
      if ((v12 & 0x3Fu) > 0x13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received VAScode length exceeded max VAScode len");
        a2 = 255;
      }

      else
      {
        v14 = *(a1 + 6524);
        phOsalNfc_MemCopy();
      }

      v10 = *(a1 + 3472) + v13;
    }

    else
    {
      ++v10;
    }
  }

  if (v6 >= v10 + 2)
  {
    v15 = *(a1 + 3800);
    v16 = *(v15 + v10);
    v17 = v10 + 1;
    *(a1 + 3494) = v16 & 0x3F;
    *(a1 + 3493) = (*(v15 + v10) & 0x40) != 0;
    *(a1 + 3492) = *(v15 + v10) >> 7;
    if ((v16 & 0x3F) != 0)
    {
      if ((v16 & 0x3Fu) > 0x13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received VAScode length exceeded max VAScode len");
        a2 = 255;
      }

      else
      {
        v18 = *(a1 + 6524);
        phOsalNfc_MemCopy();
      }

      v10 = *(a1 + 3494) + v17;
    }

    else
    {
      ++v10;
    }
  }

  if (v6 >= v10 + 2)
  {
    v19 = *(a1 + 3800);
    v20 = *(v19 + v10);
    v21 = v10 + 1;
    *(a1 + 3516) = v20 & 0x3F;
    *(a1 + 3515) = (*(v19 + v10) & 0x40) != 0;
    *(a1 + 3514) = *(v19 + v10) >> 7;
    if ((v20 & 0x3F) != 0)
    {
      if ((v20 & 0x3Fu) > 0x13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received VAScode length exceeded max VAScode len");
        a2 = 255;
      }

      else
      {
        v22 = *(a1 + 6524);
        phOsalNfc_MemCopy();
      }

      v10 = *(a1 + 3516) + v21;
    }

    else
    {
      ++v10;
    }
  }

  if (v6 >= v10 + 2)
  {
    v23 = *(a1 + 3800);
    v24 = *(v23 + v10);
    v25 = v10 + 1;
    *(a1 + 3538) = v24 & 0x3F;
    *(a1 + 3537) = (*(v23 + v10) & 0x40) != 0;
    *(a1 + 3536) = *(v23 + v10) >> 7;
    if ((v24 & 0x3F) != 0)
    {
      if ((v24 & 0x3Fu) > 0x13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received VAScode length exceeded max VAScode len");
        a2 = 255;
      }

      else
      {
        v26 = *(a1 + 6524);
        phOsalNfc_MemCopy();
      }

      v10 = *(a1 + 3538) + v25;
    }

    else
    {
      ++v10;
    }
  }

  if (v6 >= v10 + 2)
  {
    v27 = *(a1 + 3800);
    v28 = *(v27 + v10) & 0x3F;
    *(a1 + 3560) = v28;
    *(a1 + 3559) = (*(v27 + v10) & 0x40) != 0;
    *(a1 + 3558) = *(v27 + v10) >> 7;
    if (v28)
    {
      if (v28 <= 0x13)
      {
        v29 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        goto LABEL_11;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received VAScode length exceeded max VAScode len");
      goto LABEL_10;
    }
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetVasCodeRsp");
  return a2;
}

uint64_t sub_297E6D568(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetVasCodeSeqComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      v6 = 0;
    }

    else
    {
      v6 = a1 + 3440;
      v4 = a1;
      v5 = 0;
    }

    sub_297E5B994(v4, v5, v6);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetVasCodeSeqComplete");
  return a2;
}

uint64_t sub_297E6D5F0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetChipScopeCmd");
  if (a1 && *(a1 + 3432))
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v11 = 0xF00000001;
    DWORD2(v11) = 34;
    v3 = *(a1 + 3432);
    v4 = *(v3 + 8);
    if (v4 > 2)
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_SetChipScopeCmd: Invalid Config");
    }

    else
    {
      if (v4 == 2 || (*(a1 + 4828) != 1 ? (v5 = 1) : (v5 = -127), LOBYTE(v10) = v5, HIBYTE(v10) = v4, DWORD2(v12) = 2, *&v12 = &v10, *(v3 + 8) == 2))
      {
        v6 = *(v3 + 16);
        if (v6)
        {
          if (*v6)
          {
            v7 = *(v6 + 8);
            if (v7)
            {
              DWORD2(v12) = v7;
              *&v12 = **(v3 + 16);
            }
          }
        }
      }

      v8 = sub_297E57BA8(a1 + 936, &v11, a1 + 3800, 2000, sub_297E5E830, a1);
    }
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_SetChipScopeCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetChipScopeCmd");
  return v8;
}

uint64_t sub_297E6D780(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetChipScopeRsp");
  if (!a1)
  {
LABEL_9:
    a2 = 255;
    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = *(a1 + 3800);
    if (v4 && *(a1 + 3808) == 1)
    {
      if (!*v4)
      {
        a2 = 0;
        goto LABEL_10;
      }

      sub_297E50EBC(1, a1 + 6524, 3u, 2u, "phNciNfc_SetChipScopeRsp : Chip scope response Failed with Status");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_SetChipScopeRsp : Chipscope response with invalid payload length");
    }

    goto LABEL_9;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_SetChipScopeRsp : Chip scope response received with failure status");
LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetChipScopeRsp");
  return a2;
}

uint64_t sub_297E6D878(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTrnscvCmd");
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
    v6 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v9 = 0xF00000001;
    v7 = *(a1 + 7016) - 1;
    if (v7 <= 0xA)
    {
      DWORD2(v9) = dword_297F130F0[v7];
    }

    *(a1 + 6640) = 1;
    DWORD2(v10) = *(a1 + 904);
    *&v10 = *(a1 + 896);
    v5 = sub_297E57BA8(a1 + 936, &v9, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
LABEL_6:
    v5 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_RawCtrlMsgTrnscvCmd: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTrnscvCmd");
  return v5;
}

uint64_t sub_297E6D9CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTrnscvRsp");
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
LABEL_6:
    a2 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_RawCtrlMsgTrnscvRsp: Invalid context");
    goto LABEL_7;
  }

  if (*(a1 + 3800) && *(a1 + 3808))
  {
    v8 = "phNciNfc_RawCtrlMsgTrnscvRsp: Raw control message transceive Successful";
  }

  else
  {
    v8 = "phNciNfc_RawCtrlMsgTrnscvRsp: Raw control message transceive received length zero!";
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v8);
  if (!a2)
  {
    if (*(a1 + 7016) != 6)
    {
      a2 = 0;
      goto LABEL_7;
    }

    v13 = 0;
    v14 = 0;
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RegRfDataPkt");
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

    while (v11 != a1);
    if (v11 == a1)
    {
      v12 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      BYTE4(v14) = 0;
      LODWORD(v13) = 0;
      sub_297F00C28(a1 + 936, &v13, sub_297E733E4);
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Registering for RF Data packets");
      WORD2(v14) = 512;
      LODWORD(v13) = 0;
      if (!sub_297E59AEC(a1 + 936, &v13, sub_297E733E4, a1))
      {
        a2 = 0;
        goto LABEL_21;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Registering for RF Data packets");
    }

    a2 = 255;
LABEL_21:
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RegRfDataPkt");
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTrnscvRsp");
  return a2;
}

uint64_t sub_297E6DC00(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTrnscvSeqComplete");
  if (a1)
  {
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
    if (v6 == a1)
    {
      if (*(a1 + 896))
      {
        v7 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(a1 + 896) = 0;
      }

      if (a2)
      {
        if (a2 == 44)
        {
          v8 = 44;
        }

        else
        {
          v8 = 255;
        }

        v9 = a1;
        v10 = 0;
      }

      else
      {
        v10 = a1 + 3800;
        v9 = a1;
        v8 = 0;
      }

      sub_297E5B994(v9, v8, v10);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTrnscvSeqComplete");
  return a2;
}

uint64_t sub_297E6DCDC(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateRfTechMode");
  v4 = 1;
  if (a2 <= 0xC && ((1 << a2) & 0x1C6F) != 0 || a2 - 128 <= 5 && a2 != 132)
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateRfTechMode");
  return v4;
}

uint64_t sub_297E6DD78(uint64_t a1, int a2, int a3, _DWORD *a4, int *a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRfDevType");
  if (!a4 || !a5)
  {
    v13 = "Invalid Input Parameter";
    goto LABEL_11;
  }

  v10 = a4[5];
  if (!v10)
  {
    if (!a3)
    {
      *a5 = 19;
      v15 = " Type 1 Tag detected..";
LABEL_30:
      sub_297E4E0B0(2, a1, 3u, 4u, v15);
      goto LABEL_71;
    }

    v14 = a4[3];
    if (v14 == 1)
    {
      v12 = a4[4];
      if (v12 == 4)
      {
        goto LABEL_70;
      }
    }

    else if (v14 == 3 && a4[4] == 5)
    {
      goto LABEL_48;
    }

    sub_297E50DB0(2, a1, 3u, 4u, "SAK Received");
    if (a2 > 35)
    {
      if (a2 > 103)
      {
        if (a2 > 151)
        {
          if (a2 == 152 || a2 == 184)
          {
            goto LABEL_91;
          }

          goto LABEL_94;
        }

        if (a2 == 104)
        {
          goto LABEL_89;
        }

        if (a2 != 136)
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (a2 > 55)
        {
          if (a2 == 56)
          {
            goto LABEL_91;
          }

          if (a2 != 96)
          {
LABEL_94:
            v18 = a4[4];
            switch(v18)
            {
              case 128:
                *a5 = 14;
                v19 = "Tag with MFC protocol and Unknown SAK detected..";
                break;
              case 4:
                *a5 = 3;
                v19 = "Tag with ISODEP protocol and Unknown SAK detected..";
                break;
              case 2:
                *a5 = 4;
                v15 = "Tag with T2t protocol and Unknown SAK detected..";
                goto LABEL_30;
              default:
                *a5 = 0;
                v19 = " Unknown tag detected..";
                break;
            }

            sub_297E4E0B0(2, a1, 3u, 2u, v19);
            goto LABEL_71;
          }

LABEL_89:
          *a5 = 3;
          v15 = " 4A tag detected..";
          goto LABEL_30;
        }

        if (a2 == 36)
        {
          goto LABEL_89;
        }

        if (a2 != 40)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      if (a2 > 15)
      {
        if (a2 <= 24)
        {
          if ((a2 - 16) < 2)
          {
            *a5 = 13;
            v15 = " Mifare Plus tag detected..";
            goto LABEL_30;
          }

          if (a2 == 24)
          {
LABEL_91:
            *a5 = 11;
            v15 = " Mifare4k tag detected..";
            goto LABEL_30;
          }

          goto LABEL_94;
        }

        if (a2 == 25)
        {
          *a5 = 10;
          v15 = " Mifare2k tag detected..";
          goto LABEL_30;
        }

        if (a2 != 32)
        {
          goto LABEL_94;
        }

        goto LABEL_89;
      }

      if (a2 > 7)
      {
        if (a2 != 8)
        {
          if (a2 == 9)
          {
            *a5 = 12;
            v15 = " Mifare Mini tag detected..";
            goto LABEL_30;
          }

          goto LABEL_94;
        }
      }

      else
      {
        if (!a2)
        {
          *a5 = 8;
          v15 = " MifareUL tag detected..";
          goto LABEL_30;
        }

        if (a2 != 1)
        {
          goto LABEL_94;
        }
      }
    }

    if (a4[3] == 2 && a4[4] == 4)
    {
      *a5 = 3;
      v15 = "4A tag detected..";
    }

    else
    {
      *a5 = 9;
      v15 = " Mifare1k tag detected..";
    }

    goto LABEL_30;
  }

  v11 = a4[4];
  if (a2 == 32 && v11 == 4)
  {
    switch(v10)
    {
      case 12:
        v12 = 7;
        break;
      case 11:
        v12 = 6;
        break;
      case 10:
        v12 = 5;
        break;
      default:
        v12 = 26;
        break;
    }

    goto LABEL_70;
  }

  if (v10 <= 5)
  {
    if (v10 > 2)
    {
      if (v10 != 3 && v10 != 5)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v10 == 1)
      {
        if ((a2 & 1) != 0 && ((v16 = a4[3], v16 == 131) || v16 == 2) && v11 == 4)
        {
          sub_297E4E0B0(2, a1, 3u, 4u, " 4B tag detected..");
          v12 = 16;
        }

        else
        {
          v12 = 25;
        }

        goto LABEL_70;
      }

      if (v10 != 2)
      {
        goto LABEL_71;
      }
    }

    if (v11 != 5)
    {
      goto LABEL_71;
    }

LABEL_48:
    v12 = 23;
    goto LABEL_70;
  }

  if (v10 <= 127)
  {
    if (v10 == 6)
    {
      if (v11 != 6)
      {
        goto LABEL_71;
      }

      v12 = 20;
      goto LABEL_70;
    }

    if (v10 == 112 && v11 == 138)
    {
      sub_297E4E0B0(2, a1, 3u, 4u, " Kovio tag detected..");
      v12 = 22;
      goto LABEL_70;
    }
  }

  else if (v10 == 128 || v10 == 133 || v10 == 131)
  {
    if (v11 == 5 && a4[3] == 3)
    {
      v12 = 24;
LABEL_70:
      *a5 = v12;
      goto LABEL_71;
    }

    v13 = "Nfc-A Listen mode notification - unknown";
LABEL_11:
    sub_297E4E0B0(2, a1, 3u, 1u, v13);
  }

LABEL_71:

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRfDevType");
}

uint64_t sub_297E6E218(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateIntfActvdNtf");
  v6 = 1;
  if (a2 && a3 >= 0xB)
  {
    if (a2[1])
    {
      if (a2[6] + a2[a2[6] + 10] + 11 == a3)
      {
        v6 = sub_297E6E2D4(a1, a2, a3);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateIntfActvdNtf");
  return v6;
}

uint64_t sub_297E6E2D4(uint64_t a1, unsigned __int8 *a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateIfActParams");
  v6 = 1;
  if (a2 && a3)
  {
    if (*a2 - 255 <= 0xFFFFFF01)
    {
      v7 = "Invalid RfDiscId!";
LABEL_53:
      sub_297E4E0B0(2, a1, 3u, 1u, v7);
      goto LABEL_54;
    }

    v8 = a2[1];
    if ((v8 & 0x7C) != 0)
    {
      v7 = "Invalid RfInterface!";
      goto LABEL_53;
    }

    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    v12 = &a2[a2[6]];
    v13 = v12[7];
    v14 = v12[8];
    v15 = v12[9];
    if (v9 >= -117 && v9 - 7 <= 0xFFFFFFF9)
    {
      if (sub_297E7029C(a1, a2) == 255)
      {
LABEL_10:
        v7 = "Invalid RfProtocol!";
LABEL_52:
        v6 = 1;
        goto LABEL_53;
      }

LABEL_14:
      if (v13 >= 0x71)
      {
        if (v13 >= -125)
        {
          if (v13 - 131 >= 3)
          {
            v7 = "Invalid DataXchg Actv Rf Tech and mode received!";
            goto LABEL_52;
          }

          v17 = "Valid DataXchg Actv Rf Tech and mode received (3)...";
        }

        else
        {
          v17 = "Valid DataXchg Actv Rf Tech and mode received (2)...";
        }
      }

      else
      {
        v17 = "Valid DataXchg Actv Rf Tech and mode received (1)...";
      }

      sub_297E4E0B0(2, a1, 3u, 4u, v17);
      if (v11 <= 0x1F)
      {
        if (v11)
        {
          v7 = "Invalid Max Data packet Payload!";
          goto LABEL_52;
        }

        sub_297E4E0B0(2, a1, 3u, 1u, "Received invalid Max data packet payload size. Applying work around");
        a2[4] = -4;
      }

      if (v14 >= 7 && v14 != 128 || v15 >= 7 && v15 != 128)
      {
        v7 = "Invalid BitRate!";
        goto LABEL_52;
      }

      if (v8 == 2 && v9 != 4)
      {
        v7 = "ISO DEP interface mapped to wrong protocol!";
        goto LABEL_52;
      }

      if (v8 == 1)
      {
        if ((v9 > 6 || ((1 << v9) & 0x5E) == 0) && v9 != 138 && v9 != 130)
        {
          if (sub_297E7029C(a1, a2) == 255)
          {
            goto LABEL_10;
          }

LABEL_57:
          v6 = 0;
          goto LABEL_54;
        }

        v18 = "Valid Frame-RF interface to protocol mapping!";
      }

      else
      {
        if (v8 == 128)
        {
          if (v9 != 1 && v9 != 128)
          {
            v7 = "TagCmd interface mapped to wrong protocol!";
            goto LABEL_52;
          }
        }

        else if (v8 == 3 && v9 != 5)
        {
          v7 = "NFC DEP interface mapped to wrong protocol!";
          goto LABEL_52;
        }

        v18 = "Interface activated ntf parameter validation success";
      }

      sub_297E4E0B0(2, a1, 3u, 4u, v18);
      goto LABEL_57;
    }

    if (v10 >= 3)
    {
      if (a2[3] > 5u)
      {
        if (v10 == 112)
        {
          v16 = "Kovio poll Techn and mode received";
          goto LABEL_13;
        }

        if (v10 == 6)
        {
          v16 = "ISO15693 passive poll Techn and mode received";
          goto LABEL_13;
        }
      }

      else
      {
        v16 = " Nfc-A and Nfc-F active Rf tech and mode sent ";
        if (v10 == 3 || v10 == 5)
        {
          goto LABEL_13;
        }
      }

      if (v10 >= -125)
      {
        if (a2[3] <= 0xBu)
        {
          if (v10 == 10)
          {
            v16 = "phNciNfc_ValidateIfActParams:type A silent NTAG poll phase Tech and mode received";
            goto LABEL_13;
          }

          if (v10 == 11)
          {
            v16 = "phNciNfc_ValidateIfActParams:type A silent TAG1 poll phase Tech and mode received";
            goto LABEL_13;
          }
        }

        else
        {
          if (v10 == 12)
          {
            v16 = "phNciNfc_ValidateIfActParams:type A silent TAG2 poll phase Tech and mode received";
            goto LABEL_13;
          }

          v16 = "  Nfc-A and Nfc-F active listen  Rf tech and mode sent ";
          if (v10 == 131 || v10 == 133)
          {
            goto LABEL_13;
          }
        }

        v7 = "Invalid Actv Rf Tech and mode received!";
        goto LABEL_52;
      }

      v16 = "Valid Actv Rf Tech and mode received (2)...";
    }

    else
    {
      v16 = "Valid Actv Rf Tech and mode received (1)...";
    }

LABEL_13:
    sub_297E4E0B0(2, a1, 3u, 4u, v16);
    goto LABEL_14;
  }

LABEL_54:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateIfActParams");
  return v6;
}

uint64_t sub_297E6E69C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConnCredentials");
  if (a1)
  {
    v2 = sub_297E8B9D0(a1, 2, *(*(a1 + 4552) + 8), *(a1 + 4552));
    if (!v2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Conn Credentials updated successfully..");
      goto LABEL_7;
    }

    v3 = "Conn Credentials update failed!!..";
    v4 = a1 + 6524;
    v5 = 1;
  }

  else
  {
    v3 = " Invalid Context Param..";
    v2 = 1;
    v5 = 2;
    v4 = 0;
  }

  sub_297E4E0B0(v5, v4, 3u, 1u, v3);
LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConnCredentials");
  return v2;
}

uint64_t sub_297E6E770(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_InvokeUartCommnErrNtf");
  if (!a1)
  {
    v7 = "Can not process Generic Error Ntf - Invalid input parameters";
    v8 = 2;
    v9 = 0;
LABEL_7:
    sub_297E4E0B0(v8, v9, 3u, 1u, v7);
    goto LABEL_8;
  }

  if (a3 != 245)
  {
    v7 = "phNciNfc_InvokeUartCommnErrNtf: UNKNOWN UART ERROR";
    v9 = a1 + 6524;
    v8 = 1;
    goto LABEL_7;
  }

  v6 = *(a1 + 264);
  if (v6)
  {
    v6(*(a1 + 256), 49, a2, 80);
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_InvokeUartCommnErrNtf");
  return 0;
}

uint64_t sub_297E6E83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_InvokeCrcErrNtf");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Can not process Crc Error Ntf - Invalid input parameters");
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  *(a1 + 6284) = 0;
  sub_297E96818(*(a1 + 6528), a3);
  v5 = *(a1 + 424);
  if (v5)
  {
    v5(*(a1 + 416), 27, 0, a3);
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
  if (v8 != a1 || *(a1 + 1928) != 1)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 3396);
  v10 = *(a1 + 1920);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  *(a1 + 1928) = 0;
  v11 = &gphNfc_DebugInfo_Sec;
  if (!*(a1 + 3396))
  {
    v11 = &gphNfc_DebugInfo_Prim;
  }

  v11[1] &= ~0x10u;
  v12 = sub_297E5E830(a1, 0, 255);
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_InvokeCrcErrNtf");
  return v12;
}

uint64_t sub_297E6E990(uint64_t a1, uint64_t a2, int a3)
{
  memset(v21, 0, sizeof(v21));
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessGenericErrNtf");
  if (!a1 || !a2)
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "Can not process Generic Error Ntf - Invalid input parameters");
LABEL_13:
    v10 = 0;
    goto LABEL_52;
  }

  v6 = *(a1 + 6524);
  v7 = *(a1 + 4696);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_ProcessGenericErrNtf");
  v8 = *(a2 + 8);
  if (!v8 || a3 || *(a2 + 16) != 1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed to process Generic Error Ntf");
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid buffer or incorrect payload length or                                  Tml receive failed receive failed");
    v10 = 255;
    goto LABEL_52;
  }

  v9 = *v8;
  if (v9 <= 159)
  {
    if (v9 > 4)
    {
      if (v9 > 8)
      {
        if (v9 == 9)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_INVALID_PARAM");
          v10 = 0;
          v11 = 7;
          goto LABEL_49;
        }

        if (v9 == 10)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_MESSAGE_SIZE_EXCEEDED");
          v10 = 0;
          v11 = 8;
          goto LABEL_49;
        }
      }

      else
      {
        if (v9 == 5)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_SYNTAX_ERROR");
          v10 = 0;
          LODWORD(v21[0]) = 5;
          *(a1 + 4808) = 0;
          goto LABEL_50;
        }

        if (v9 == 6)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_SEMANTIC_ERROR");
          v10 = 0;
          v11 = 6;
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          LODWORD(v21[0]) = 3;
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_FAILED");
          v10 = 0;
          goto LABEL_50;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_NOT_INITIALIZED");
        v10 = 0;
        v11 = 4;
        goto LABEL_49;
      }

      if (v9 == 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_REJECTED");
        v10 = 0;
        LODWORD(v21[0]) = 1;
        goto LABEL_50;
      }

      if (v9 == 2)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_RF_FRAME_CORRUPTED");
        v10 = 0;
        v11 = 2;
LABEL_49:
        LODWORD(v21[0]) = v11;
        goto LABEL_50;
      }
    }

    goto LABEL_53;
  }

  if (v9 <= 236)
  {
    if (v9 <= 161)
    {
      if (v9 == 160)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_DISCOVERY_ALREADY_STARTED");
        v10 = 0;
        v11 = 9;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_DISCOVERY_TARGET_ACTIVATION_FAILED");
        sub_297E54734(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessGenericErrNtf: Generic error received: PH_NCINFC_STATUS_DISCOVERY_TARGET_ACTIVATION_FAILED");
        v10 = 0;
        v11 = 10;
      }

      goto LABEL_49;
    }

    if (v9 == 162)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_DISCOVERY_TEAR_DOWN");
      v10 = 0;
      v11 = 11;
      goto LABEL_49;
    }

    if (v9 == 235)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_GPADC_LOW_TEMPERATURE");
      v13 = *(a1 + 232);
      if (v13)
      {
        v13(*(a1 + 224), 29, 0, 0);
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v9 > 246)
  {
    if (v9 == 247)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Generic error received: PH_NCINFC_STATUS_SMB_TX_BLOCKED");
      v10 = 0;
      v11 = 247;
      goto LABEL_49;
    }

    if (v9 == 248)
    {
      LODWORD(v20) = 2;
      v19 = &v17;
      v10 = sub_297E95CC4(a1, &v18, 0);
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v9 == 237)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_CUST_TRIM_ERROR");
    LODWORD(v21[0]) = 237;
    v10 = 154;
    goto LABEL_50;
  }

  if (v9 == 240)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Generic error received: PH_NCINFC_STATUS_CRC_ERROR");
    LODWORD(v21[0]) = 240;
    if (*(a1 + 6481) == 1)
    {
      sub_297E8C964(a1, *(a1 + 6482), 1);
      *(a1 + 6481) = 0;
    }

    sub_297E6E83C(a1, v12, 33);
    goto LABEL_13;
  }

LABEL_53:
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Generic error received: Unknown error code");
LABEL_54:
  LODWORD(v21[0]) = 256;
  v16 = **(a2 + 8);
  *(a1 + 6492) = v16;
  HIDWORD(v21[0]) = v16;
  v10 = 133;
LABEL_50:
  v14 = *(a1 + 248);
  if (v14)
  {
    v14(*(a1 + 240), 49, v21, v10);
  }

LABEL_52:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGenericErrNtf");
  return v10;
}

uint64_t sub_297E6EEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessSysEoOpNtf");
  if (a1 && a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received System End of operation notification from NFCC");
    if (*(a1 + 816) && *(a1 + 6480) == 1)
    {
      v6 = *(a1 + 3992);
      *(a1 + 6728) = 0;
      if (v6)
      {
        v7 = *(v6 + 1);
        if (v7 != 1 && (v7 != **(a2 + 8) || !*(a1 + 3988)))
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessSysEoOpNtf: EoOp Ntf is dropped");
          goto LABEL_19;
        }
      }

      v8 = *(a1 + 4704);
      if (v8 && v8 != 0xFFFFFFFFFFFFLL)
      {
        v9 = *(a1 + 6524);
        phOsalNfc_Timer_Stop();
        sub_297E687D8(1, a1 + 6524, *(a1 + 4704), 3u, 4u, "phNciNfc_ProcessSysEoOpNtf");
        v10 = *(a1 + 6524);
        v11 = *(a1 + 4704);
        phOsalNfc_Timer_Delete();
        *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
      }

      v12 = *(a2 + 8);
      if (v12 && *(a2 + 16))
      {
        *(a1 + 6728) = *(v12 + 1);
      }

      *(a1 + 816) = 0;
      *(a1 + 824) = 0;
      v13 = a1 + 6728;
      v14 = a1;
      v15 = a3;
    }

    else
    {
      if (!a3)
      {
        v17 = *(a1 + 392);
        if (v17)
        {
          v18 = *(a2 + 8);
          LODWORD(v19) = *(a2 + 16);
          v17(*(a1 + 384), 21, &v18, 0);
          goto LABEL_19;
        }
      }

      v14 = a1;
      v15 = 255;
      v13 = 0;
    }

    sub_297E5B994(v14, v15, v13);
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessSysEoOpNtf");
  return a3;
}

uint64_t sub_297E6F0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessModeSetDisableNtf");
  if (!a1 || !a2)
  {
    goto LABEL_24;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received NFCEE Power OFF notification from NFCC");
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  v20 = *(a2 + 8);
  LODWORD(v21) = v7;
  if (!*(a1 + 816) || *(a1 + 6480) != 1)
  {
    if (!a3)
    {
      v9 = *(a1 + 232);
      if (v9)
      {
        v10 = *(a1 + 224);
        v11 = 0;
        goto LABEL_16;
      }
    }

    v12 = a1;
    v13 = 255;
    v14 = 0;
LABEL_23:
    sub_297E5B994(v12, v13, v14);
    goto LABEL_24;
  }

  v8 = *(a1 + 3992);
  *(a1 + 6728) = 0;
  if (!v8 || !*(a1 + 3988))
  {
    v15 = *(a1 + 4704);
    if (v15 && v15 != 0xFFFFFFFFFFFFLL)
    {
      v16 = *(a1 + 6524);
      phOsalNfc_Timer_Stop();
      sub_297E687D8(1, a1 + 6524, *(a1 + 4704), 3u, 4u, "phNciNfc_ProcessModeSetDisableNtf");
      v17 = *(a1 + 6524);
      v18 = *(a1 + 4704);
      phOsalNfc_Timer_Delete();
      *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
      v6 = *(a2 + 8);
    }

    if (v6)
    {
      *(a1 + 6728) = *v6;
    }

    *(a1 + 816) = 0;
    *(a1 + 824) = 0;
    v14 = a1 + 6728;
    v12 = a1;
    v13 = a3;
    goto LABEL_23;
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    v10 = *(a1 + 224);
    v11 = a3;
LABEL_16:
    v9(v10, 20, &v20, v11);
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessModeSetDisableNtf");
  return a3;
}

uint64_t sub_297E6F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessExpModeTxNtf");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received Suica Transaction Happened notification from NFCC");
    if (!a3)
    {
      v5 = *(a1 + 232);
      if (v5)
      {
        v5(*(a1 + 224), 22, 0, 0);
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessExpModeTxNtf");
  return a3;
}

uint64_t sub_297E6F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessExpModeStartedNtf");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received Express Mode started notification from NFCC");
      if (!a3)
      {
        v6 = *(a1 + 232);
        if (!v6)
        {
LABEL_15:
          a3 = 0;
          goto LABEL_25;
        }

        v7 = *(a2 + 16);
        if (v7 == 1)
        {
          v8 = **(a2 + 8);
          if (v8 <= 2)
          {
            if (v8 == 1)
            {
              a3 = 0;
              v9 = 23;
            }

            else
            {
              if (v8 != 2)
              {
LABEL_22:
                sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received INVALID notification from NFCC");
                a3 = 0;
                v9 = 49;
                goto LABEL_24;
              }

              a3 = 0;
              v9 = 24;
            }
          }

          else
          {
            switch(v8)
            {
              case 3u:
                a3 = 0;
                v9 = 25;
                break;
              case 4u:
                a3 = 0;
                v9 = 37;
                break;
              case 5u:
                if (sub_297E7913C(a1, a2, 0))
                {
                  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "HCE Activation in Express mode failed");
                  v9 = 38;
                  a3 = 255;
                }

                else
                {
                  a3 = 0;
                  v9 = 38;
                }

                break;
              default:
                goto LABEL_22;
            }
          }

LABEL_24:
          (*(a1 + 232))(*(a1 + 224), v9, 0, a3);
          goto LABEL_25;
        }

        a3 = 0;
        if (!v7 && *(a1 + 4835) == 1)
        {
          v6(*(a1 + 224), 23, 0, 0);
          goto LABEL_15;
        }
      }
    }
  }

LABEL_25:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessExpModeStartedNtf");
  return a3;
}

uint64_t sub_297E6F4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessEmvcoRfCollisionDetectedNtf");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received EMVCO RF Field Collision detected notification from NFCC");
    v5 = *(a1 + 696);
    if (v5)
    {
      v5(*(a1 + 688), 18, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessEmvcoRfCollisionDetectedNtf:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessEmvcoRfCollisionDetectedNtf");
  return a3;
}

uint64_t sub_297E6F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessSysL1DbgMsgNtf");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received System L1 logging notification from NFCC");
      if (!a3)
      {
        v6 = *(a1 + 296);
        if (v6)
        {
          v8 = *(a2 + 8);
          LODWORD(v9) = *(a2 + 16);
          v6(*(a1 + 288), 8, &v8, 0);
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessSysL1DbgMsgNtf");
  return a3;
}

uint64_t sub_297E6F690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessSysL2DbgMsgNtf");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received System L2 logging notification from NFCC");
      if (!a3)
      {
        v6 = *(a1 + 296);
        if (v6)
        {
          v8 = *(a2 + 8);
          LODWORD(v9) = *(a2 + 16);
          v6(*(a1 + 288), 9, &v8, 0);
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessSysL2DbgMsgNtf");
  return a3;
}

uint64_t sub_297E6F764(uint64_t a1, uint64_t a2, int a3)
{
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessGenericErrNtfMFC");
  if (!a1 || !a2)
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_ProcessGenericErrNtfMFC: Can not process Generic Error Ntf - Invalid input parameters");
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v6 = *(a1 + 6524);
  v7 = *(a1 + 4696);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_ProcessGenericErrNtfMFC");
  v8 = *(a2 + 8);
  if (v8 && !a3 && *(a2 + 16) == 1)
  {
    if (*v8 == 161)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessGenericErrNtfMFC: Generic error received: PH_NCINFC_STATUS_DISCOVERY_TARGET_ACTIVATION_FAILED");
      sub_297E54734(1, a1 + 6524, 3u, 4u, "NtfMFC-ConnctCb: Generic error received: PH_NCINFC_STATUS_DISCOVERY_TARGET_ACTIVATION_FAILED");
      v9 = *(a1 + 6524);
      v10 = *(a1 + 4696);
      phOsalNfc_Timer_Stop();
      *(a1 + 6512) = 0;
      v11 = *(a1 + 768);
      if (v11)
      {
        *(a1 + 768) = 0;
        v11(*(a1 + 776), 146, 0);
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessGenericErrNtfMFC: Generic error received: Unknown error code");
    }

    v14 = 3;
    LODWORD(v15) = 7;
    sub_297F00C28(a1 + 936, &v14, sub_297E6F764);
    goto LABEL_13;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessGenericErrNtfMFC: Failed to process Generic Error Ntf");
  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessGenericErrNtfMFC: Invalid buffer or incorrect payload length or                                  Tml receive failed receive failed");
  v12 = 255;
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGenericErrNtfMFC");
  return v12;
}

uint64_t sub_297E6F96C(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessIntfErrNtf");
  v6 = sub_297ED7658(a1);
  if (!a1 || !a2)
  {
    v14 = "phNciNfc_ProcessIntfErrNtf: Can not process Intf Error Ntf - Invalid input parameters";
    v15 = 1;
    v16 = 2;
    v17 = a1;
LABEL_21:
    sub_297E4E0B0(v16, v17, 3u, 1u, v14);
    goto LABEL_23;
  }

  *(a1 + 6618) = 0;
  v7 = *(a2 + 8);
  if (!v7 || a3 || *(a2 + 16) != 2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessIntfErrNtf: Failed to process Intf Error Ntf");
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessIntfErrNtf: Invalid buffer or incorrect payload length or                                  Tml receive failed receive failed");
    v15 = 255;
    goto LABEL_23;
  }

  v8 = v6;
  v9 = *v7;
  if (((v9 - 176) > 0x13 || ((1 << (v9 + 80)) & 0xF000F) == 0) && v9 != 2)
  {
    v19 = 255;
    LOBYTE(v20) = 15;
    goto LABEL_38;
  }

  v20 = v7[1];
  sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Interface err received over connection ID");
  if (v20 > 0xF)
  {
    v19 = 255;
    goto LABEL_38;
  }

  v12 = **(a2 + 8);
  if (v12 <= 0xB0)
  {
    if (v12 == 2)
    {
      v13 = "PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
      LOWORD(v12) = 181;
      goto LABEL_31;
    }

    if (v12 == 176)
    {
      v13 = "PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
      LOWORD(v12) = 182;
      goto LABEL_31;
    }
  }

  else
  {
    switch(v12)
    {
      case 0xB1u:
        v13 = "PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
        LOWORD(v12) = 183;
        goto LABEL_31;
      case 0xB2u:
        v13 = "PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_31;
      case 0xB3u:
        v13 = "PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        LOWORD(v12) = 184;
LABEL_31:
        *(a1 + 6618) = v12;
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v13);
        break;
    }
  }

  if (*(a1 + 1928) == 1)
  {
    if (*(a1 + 1904) || (sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Deleting response timer"), v20 != *(a1 + 1916)))
    {
      v23 = 0;
    }

    else
    {
      v21 = *(a1 + 3396);
      v22 = *(a1 + 1920);
      phOsalNfc_Timer_Stop();
      *(a1 + 6512) = 0;
      *(a1 + 1928) = 0;
      v23 = *(a1 + 3396);
      if (v23)
      {
        v23 = 0;
        v24 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v24 = &gphNfc_DebugInfo_Prim;
      }

      v24[1] &= ~0x10u;
    }

    v19 = 10;
    goto LABEL_50;
  }

  v19 = 10;
LABEL_38:
  if (*(a1 + 1504))
  {
    v23 = *(a1 + 6524);
    if (v23)
    {
      v23 = 0;
      v25 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v25 = &gphNfc_DebugInfo_Prim;
    }

    v26 = v25[1] & 0xDFFFFFFF;
  }

  else
  {
    v23 = *(a1 + 7021) != 1;
    if (*(a1 + 6524))
    {
      v25 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v25 = &gphNfc_DebugInfo_Prim;
    }

    v26 = v25[1] | 0x20000000;
  }

  v25[1] = v26;
LABEL_50:
  if (*(a1 + 3360) == 1 || *(a1 + 3361) == 1)
  {
    v27 = *(a2 + 8);
    v28 = v27[1];
    if (v28 <= 0xF && *v27 - 180 <= 0xB)
    {
      sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Interface err received over connection ID");
      *(a1 + 6618) = 185;
      sub_297E96818(*(a1 + 6528), **(a2 + 8));
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "UNKNOWN ERROR Detected by NFCC during Data Exchange ");
      v23 = 0;
      v19 = 10;
      LOBYTE(v20) = v28;
    }
  }

  if (!v8)
  {
    goto LABEL_69;
  }

  if (v19 == 10)
  {
    goto LABEL_61;
  }

  v29 = *(a2 + 8);
  v20 = v29[1];
  if (v20 > 0xF || *(a1 + 3360) != 1 && *(a1 + 3361) != 1)
  {
LABEL_69:
    if (v23)
    {
      if (*(a1 + 6515))
      {
        sub_297E4E0B0(1, a1 + 3396, 3u, 2u, "Interface err received, retransmit not done as no API waiting");
      }

      else if (sub_297EBEA38(a1 + 936, 0) == 13)
      {
        goto LABEL_75;
      }

      *(a1 + 1848) = *(a1 + 1504);
      *(a1 + 1860) = *(a1 + 1516);
      *(a1 + 1480) = 0;
      *(a1 + 3224) = 196;
      v15 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Interface err limit reached, initiating RecvStateHandler with error status");
      sub_297E51240(a1 + 936, 2u);
      goto LABEL_23;
    }

    v14 = "phNciNfc_ProcessIntfErrNtf:Interface err received and dropped";
    v15 = 1;
    v17 = a1 + 6524;
    v16 = 1;
    goto LABEL_21;
  }

  *(a1 + 6618) = 185;
  sub_297E96818(*(a1 + 6528), *v29);
  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "UNKNOWN ERROR Detected by NFCC during Data Exchange ");
LABEL_61:
  sub_297E5B294(a1);
  *(v8 + 32) = 0;
  *(v8 + 64) = 0;
  v30 = *(v8 + 56);
  if (v30 && v30 != 0xFFFFFFFFFFFFLL)
  {
    v31 = *(a1 + 6524);
    phOsalNfc_Timer_Stop();
    v32 = *(a1 + 6524);
    v33 = *(v8 + 56);
    phOsalNfc_Timer_Delete();
  }

  *(a1 + 6513) = 0;
  *(v8 + 56) = 0;
  *(v8 + 49) = 0;
  v34 = &gphNfc_DebugInfo_Sec;
  if (!*(a1 + 6524))
  {
    v34 = &gphNfc_DebugInfo_Prim;
  }

  v34[1] &= ~8u;
  *(a1 + 1848) = 0;
  *(a1 + 1860) = v20;
  *(a1 + 3224) = 10;
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Interface err received, initiating RecvStateHandler with 'NFCSTATUS_RF_ERROR' status");
  sub_297E51240(a1 + 936, 2u);
  v35 = *(a1 + 584);
  if (v35 && *(a1 + 3361) == 1)
  {
    *(a1 + 3361) = 0;
    v35(*(a1 + 576), 40, 0, *(a1 + 6618));
LABEL_75:
    v15 = 1;
    goto LABEL_23;
  }

  v15 = 1;
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessIntfErrNtf:pRfIntfErrNtfCb call back is not registered so dropped at NCI");
LABEL_23:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessIntfErrNtf");
  return v15;
}

uint64_t sub_297E6FF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RssiStatsHandler");
  if (a2 && a1 && !a3 && *(a2 + 8) && *(a2 + 16) == 10)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received RSSI Statistic NTF from NFCC");
    v6 = *(a2 + 8);
    v7 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v8 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v9 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v10 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v11 = *(a1 + 408);
    if (v11)
    {
      v11(*(a1 + 400), 26, &v13, 0);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_RssiStatsHandler: Can not process RSSI Stats NTF - Invalid input parameters");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RssiStatsHandler");
  return a3;
}

uint64_t sub_297E70080(uint64_t a1)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DummyReadReq");
  if (a1)
  {
    if (sub_297E8BB50(a1, *(a1 + 4552), &v8))
    {
      v2 = "Get Logical Conn ID failed!";
    }

    else
    {
      if (*(a1 + 3336))
      {
        v3 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(a1 + 3336) = 0;
        *(a1 + 3344) = 0;
      }

      *(a1 + 3328) = 0;
      BYTE5(v7) = 1;
      BYTE4(v7) = v8;
      LODWORD(v6) = 0;
      if (!sub_297E59AEC(a1 + 936, &v6, sub_297E70190, a1))
      {
        v4 = 0;
        goto LABEL_10;
      }

      v2 = "Dummy receive call back registration failed!";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v2);
  }

  v4 = 255;
LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DummyReadReq");
  return v4;
}

uint64_t sub_297E70190(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReceiveDataBufferCb");
  if (a1 && a2)
  {
    *(a1 + 3328) = 1;
    *(a1 + 3346) = a3;
    *(a1 + 3336) = 0;
    *(a1 + 3344) = 0;
    if (!a3 && (v6 = *(a2 + 16)) != 0 && *(a2 + 8))
    {
      v7 = *(a1 + 6524);
      v8 = *(a2 + 16);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *(a1 + 3336) = Memory_Typed;
        *(a1 + 3344) = v6;
        v10 = *(a1 + 6524);
        v11 = *(a2 + 8);
        phOsalNfc_MemCopy();
        goto LABEL_10;
      }

      v12 = "Failed to allocate temporary buffer for                     storing the received data message";
    }

    else
    {
      v12 = "Data receive failed!";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v12);
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReceiveDataBufferCb");
  return 0;
}

uint64_t sub_297E7029C(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CheckFor14443_3BPICC");
  if (a2[3] != 1)
  {
    goto LABEL_5;
  }

  if (a2[7] - 11 > 1)
  {
LABEL_6:
    v4 = 255;
    goto LABEL_7;
  }

  if (a2[17])
  {
LABEL_5:
    sub_297E4E0B0(2, a1, 3u, 1u, "Frame-RF interface mapped to wrong protocol!");
    goto LABEL_6;
  }

  v4 = 0;
LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CheckFor14443_3BPICC");
  return v4;
}

uint64_t sub_297E70348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfPropReaderInfoNtfHandler");
  v6 = 1;
  if (a2 && a1 && *(a2 + 8))
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v10 = *(a2 + 8);
      LODWORD(v11) = v7;
      v8 = *(a1 + 312);
      if (v8)
      {
        v8(*(a1 + 304), 10, &v10, 0);
      }

      else
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "phNciNfc_RfPropReaderInfoNtfHandler:Dropped at NCI");
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_RfPropReaderInfoNtfHandler:Invalid Length");
    }

    v6 = a3;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfPropReaderInfoNtfHandler");
  return v6;
}

uint64_t sub_297E7044C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfVasLongCWDetectedNtfHandler");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received VAS CW notification from NFCC");
    v5 = *(a1 + 376);
    if (v5)
    {
      v5(*(a1 + 368), 43, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_RfVasLongCWDetectedNtfHandler:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfVasLongCWDetectedNtfHandler");
  return a3;
}

uint64_t sub_297E70514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessGpadcDebugNtf");
  if (a2 && a1 && *(a2 + 8))
  {
    v6 = *(a1 + 600);
    if (v6)
    {
      v8 = *(a2 + 8);
      LODWORD(v9) = *(a2 + 16);
      v6(*(a1 + 592), 41, &v8, 0);
    }

    else
    {
      sub_297E4E0B0(2, a1, 3u, 4u, "phNciNfc_ProcessGpadcDebugNtf - Ntf dropped at NCI layer as there is no registration");
    }
  }

  else
  {
    a3 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_ProcessGpadcDebugNtf - Can not process Gpadc Debug Ntf - Invalid input parameters");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGpadcDebugNtf");
  return a3;
}

uint64_t sub_297E7060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessEraseCntExceedLimitNtf");
  if (a2 && a1 && *(a2 + 8))
  {
    if (*(a1 + 616))
    {
      v6 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      v8 = *(a2 + 8);
      LODWORD(v9) = *(a2 + 16);
      (*(a1 + 616))(*(a1 + 608), 42, &v8, 0);
    }

    else
    {
      sub_297E4E0B0(2, a1, 3u, 4u, "phNciNfc_ProcessEraseCntExceedLimitNtf - Ntf dropped at NCI layer as there is no registration");
    }
  }

  else
  {
    a3 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_ProcessEraseCntExceedLimitNtf - Can not process erase counter Ntf - Invalid input parameters");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessEraseCntExceedLimitNtf");
  return a3;
}

uint64_t sub_297E70720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MuliTagStatusNtfHandler");
  v6 = 1;
  if (a2 && a1 && *(a2 + 8))
  {
    v9 = *(a2 + 8);
    LODWORD(v10) = *(a2 + 16);
    v7 = *(a1 + 552);
    if (v7)
    {
      v7(*(a1 + 544), 35, &v9, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_MuliTagStatusNtfHandler:Dropped at NCI");
    }

    v6 = a3;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_MuliTagStatusNtfHandler");
  return v6;
}

uint64_t sub_297E70800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfPllUnlockedNtfHandler");
  if (a1)
  {
    v5 = *(a1 + 328);
    if (v5)
    {
      v5(*(a1 + 320), 11, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RfPllUnlockedNtfHandler:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfPllUnlockedNtfHandler");
  return a3;
}

uint64_t sub_297E708A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfPlllostlockNtfHandler");
  if (a1)
  {
    v5 = *(a1 + 344);
    if (v5)
    {
      v5(*(a1 + 336), 12, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RfPlllostlockNtfHandler:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfPlllostlockNtfHandler");
  return a3;
}

uint64_t sub_297E70948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfTxldoErrNtfHandler");
  if (a1 && !a3)
  {
    v6 = *(a1 + 360);
    if (v6)
    {
      if (a2 && *(a2 + 8) && (v7 = *(a2 + 16)) != 0)
      {
        v11 = *(a2 + 8);
        LODWORD(v12) = v7;
        v8 = *(a1 + 352);
        v9 = &v11;
      }

      else
      {
        v8 = *(a1 + 352);
        v9 = 0;
      }

      v6(v8, 13, v9, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_RfTxldoErrNtfHandler:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfTxldoErrNtfHandler");
  return a3;
}

uint64_t sub_297E70A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfExtTempNormalNtfHandler");
  if (a1)
  {
    v5 = *(a1 + 648);
    if (v5)
    {
      v5(*(a1 + 640), 14, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RfExtTempNormalNtfHandler:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfExtTempNormalNtfHandler");
  return a3;
}

uint64_t sub_297E70ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfXtalErrNtfHandler");
  if (a1)
  {
    v5 = *(a1 + 664);
    if (v5)
    {
      v5(*(a1 + 656), 16, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RfXtalErrNtfHandler:Dropped at NCI");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfXtalErrNtfHandler");
  return a3;
}

uint64_t sub_297E70B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v11, 0, sizeof(v11));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TotalPollDurationNtfHandler");
  if (a1)
  {
    if (a2 && *(a2 + 8) && *(a2 + 16) == 3)
    {
      v6 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      v7 = *(a2 + 8);
      LOBYTE(v11[0]) = *v7;
      if (LOBYTE(v11[0]) > 1u)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_TotalPollDurationNtfHandler:Error in Compensation Status");
        a3 = 255;
      }

      else
      {
        v8 = v7[1];
        WORD1(v11[0]) = v8;
        WORD1(v11[0]) = v8 | (v7[2] << 8);
      }

      v10 = *(a1 + 672);
      if (v10)
      {
        v10(*(a1 + 680), 17, v11, a3);
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_TotalPollDurationNtfHandler:Dropped at NCI");
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_TotalPollDurationNtfHandler: Invalid Payload");
      a3 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TotalPollDurationNtfHandler");
  return a3;
}

uint64_t sub_297E70CE0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_GetProhibitTimerStsTimeOutHandler");
  if (!a2)
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

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_GetProhibitTimerStsTimeOutHandler)\n");
    goto LABEL_7;
  }

  if (!*(a2 + 6512))
  {
    v8 = *(a2 + 6524);
    v9 = *(a2 + 4872);
    phOsalNfc_Timer_Stop();
    v10 = *(a2 + 6524);
    v11 = *(a2 + 4872);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "Get Prohibit timer status info Notification timer restarted for extended time\n");
      *(a2 + 6512) = 1;
      goto LABEL_7;
    }

    sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "Get Prohibit Timer status Notification timer failed to restart for extended time\n\n");
  }

  sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_GetProhibitTimerStsTimeOutHandler");
  *(a2 + 6512) = 0;
  sub_297E4E0B0(1, a2 + 6524, 3u, 2u, "#######Get Prohibit timer status notification TIMEOUT########\n");
  v12 = *(a2 + 4872);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 6524);
    phOsalNfc_Timer_Stop();
    v14 = *(a2 + 6524);
    v15 = *(a2 + 4872);
    phOsalNfc_Timer_Delete();
    *(a2 + 4872) = 0xFFFFFFFFFFFFLL;
  }

  v16 = *(a2 + 6524);
  phOsalNfc_SetMemory();
  v17 = *(a2 + 848);
  if (v17)
  {
    v18 = *(a2 + 856);
    *(a2 + 848) = 0;
    *(a2 + 856) = 0;
    v17(v18, 47, a2 + 4864);
  }

LABEL_7:

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_GetProhibitTimerStsTimeOutHandler");
}

uint64_t sub_297E70EEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_GetPwrTrackDataTimeOutHandler");
  if (!a2)
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

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_GetPwrTrackDataTimeOutHandler)\n");
    goto LABEL_7;
  }

  if (!*(a2 + 6512))
  {
    v8 = *(a2 + 6524);
    v9 = *(a2 + 6504);
    phOsalNfc_Timer_Stop();
    v10 = *(a2 + 6524);
    v11 = *(a2 + 6504);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "Get Power Track data Notification timer restarted for extended time\n");
      *(a2 + 6512) = 1;
      goto LABEL_7;
    }

    sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "Get Power Track data Notification timer failed to restart for extended time\n\n");
  }

  sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_GetPwrTrackDataTimeOutHandler");
  *(a2 + 6512) = 0;
  sub_297E4E0B0(1, a2 + 6524, 3u, 2u, "#######Get Power Track data notification TIMEOUT########\n");
  v12 = *(a2 + 6504);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 6524);
    phOsalNfc_Timer_Stop();
    v14 = *(a2 + 6524);
    v15 = *(a2 + 6504);
    phOsalNfc_Timer_Delete();
    *(a2 + 6504) = 0xFFFFFFFFFFFFLL;
  }

  v16 = *(a2 + 6524);
  phOsalNfc_SetMemory();
  v17 = *(a2 + 832);
  if (v17)
  {
    v18 = *(a2 + 840);
    *(a2 + 832) = 0;
    *(a2 + 840) = 0;
    v17(v18, 47, a2 + 4836);
  }

LABEL_7:

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_GetPwrTrackDataTimeOutHandler");
}

uint64_t sub_297E710F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessGetProhibitTimerStsNtf");
  if (!a1)
  {
    v8 = 49;
    goto LABEL_27;
  }

  v6 = *(a1 + 4872);
  if (v6)
  {
    v7 = v6 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_ProcessGetProhibitTimerStsNtf: dropping ...");
    v8 = a3;
    goto LABEL_27;
  }

  v9 = *(a1 + 6524);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  v10 = *(a1 + 6524);
  v11 = *(a1 + 4872);
  phOsalNfc_Timer_Delete();
  *(a1 + 4872) = 0xFFFFFFFFFFFFLL;
  v8 = 255;
  if (a2)
  {
    if (!a3)
    {
      v12 = *(a2 + 8);
      if (v12)
      {
        if (*(a2 + 16))
        {
          if (**(a1 + 3800) == 1)
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Get Prohibit Timer Status Ntf received with rejected from NFCC");
            v8 = 147;
            goto LABEL_25;
          }

          if (**(a1 + 3800))
          {
            sub_297E50DB0(1, a1 + 6524, 3u, 2u, "Get Prohibit - Status failed!, status byte:");
          }

          else
          {
            v13 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            v14 = *(a2 + 16);
            if (v14 == 3)
            {
              if (*(a1 + 4880) - 1 < 2)
              {
                v8 = 0;
                goto LABEL_25;
              }
            }

            else if (v14 == 7 && *(a1 + 4880) == 3)
            {
              v8 = 0;
              *(a1 + 4864) = v12[2];
              v15 = v12[3];
              *(a1 + 4866) = v15 << 8;
              *(a1 + 4866) = v12[4] | (v15 << 8);
              v16 = v12[5];
              *(a1 + 4868) = v16 << 8;
              *(a1 + 4868) = v12[6] | (v16 << 8);
              goto LABEL_25;
            }

            sub_297E50EBC(1, a1 + 6524, 3u, 2u, "phNciNfc_ProcessGetProhibitTimerStsNtf:Get Prohibit Timer Status Ntf - Payload parsing failed, wLength");
          }

          v8 = 255;
        }
      }
    }
  }

LABEL_25:
  v17 = *(a1 + 848);
  if (v17)
  {
    v18 = *(a1 + 856);
    *(a1 + 848) = 0;
    *(a1 + 856) = 0;
    v17(v18, v8, a1 + 4864);
  }

LABEL_27:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGetProhibitTimerStsNtf");
  return v8;
}

uint64_t sub_297E7131C(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessGetPwrTrackDataNtf");
  if (!a1)
  {
    v11 = 49;
    goto LABEL_22;
  }

  v6 = *(a1 + 6504);
  if (v6)
  {
    v7 = v6 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(a1 + 6524);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    v9 = *(a1 + 6524);
    v10 = *(a1 + 6504);
    phOsalNfc_Timer_Delete();
    *(a1 + 6504) = 0xFFFFFFFFFFFFLL;
  }

  v11 = 255;
  if (a2 && !a3)
  {
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = *(a2 + 16);
      if (v13 == 22 || v13 == 5)
      {
        *(a1 + 4848) = *v12 & 1;
        *(a1 + 4849) = (*v12 & 2) != 0;
        *(a1 + 4850) = *v12 >> 7;
        v14 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        if (*(a2 + 16) != 22)
        {
          goto LABEL_17;
        }

        v15 = v12[21];
        if (v15)
        {
          if ((v12[21] & 2) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          *(a1 + 4852) = 0;
          v15 = v12[21];
          if ((v15 & 2) == 0)
          {
LABEL_15:
            if ((v15 & 4) != 0)
            {
LABEL_16:
              v16 = *(a1 + 6524);
              phOsalNfc_MemCopy();
            }

LABEL_17:
            v11 = 0;
            goto LABEL_20;
          }
        }

        v20 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        if ((v12[21] & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v11 = 255;
  }

LABEL_20:
  v17 = *(a1 + 832);
  if (v17)
  {
    v18 = *(a1 + 840);
    *(a1 + 832) = 0;
    *(a1 + 840) = 0;
    v17(v18, v11, a1 + 4836);
  }

LABEL_22:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGetPwrTrackDataNtf");
  return v11;
}

uint64_t sub_297E714C8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_SmbNtfTimeOutHandler");
  if (!a2)
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

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_NfceeMgmtSetModeTimeOutHandler)\n");
    goto LABEL_7;
  }

  if (!*(a2 + 6512))
  {
    v8 = *(a2 + 6524);
    v9 = *(a2 + 6472);
    phOsalNfc_Timer_Stop();
    v10 = *(a2 + 6524);
    v11 = *(a2 + 6472);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "SMB ntf timer restarted for extended time");
      *(a2 + 6512) = 1;
      goto LABEL_7;
    }

    sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "phNciNfc_SmbNtfTimeOutHandler:SMB Notification timer failed to restart for extended time");
  }

  sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_SmbNtfTimeOutHandler");
  *(a2 + 6512) = 0;
  sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "####### SMB notification TIMEOUT ########");
  v12 = *(a2 + 6472);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(a2 + 6524);
    phOsalNfc_Timer_Stop();
    v14 = *(a2 + 6524);
    v15 = *(a2 + 6472);
    phOsalNfc_Timer_Delete();
    *(a2 + 6472) = 0xFFFFFFFFFFFFLL;
  }

  v16 = *(a2 + 6292);
  if (v16)
  {
    v17 = 0;
    *(a2 + 6432) = 0;
    v18 = a2 + 6296;
    v19 = 6304;
    do
    {
      v17 += *(a2 + v19);
      *(a2 + 6432) = v17;
      v19 += 16;
      --v16;
    }

    while (v16);
    if (*(a2 + 6424))
    {
      v20 = *(a2 + 6524);
      v21 = *(a2 + 6424);
      phOsalNfc_FreeMemory();
      *(a2 + 6424) = 0;
      v22 = *(a2 + 6432);
    }

    v23 = *(a2 + 6524);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a2 + 6424) = Memory_Typed;
    if (Memory_Typed && *(a2 + 6292))
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *(a2 + 6524);
        v28 = *(a2 + 6424);
        v29 = *v18;
        v30 = *(v18 + 8);
        phOsalNfc_MemCopy();
        v31 = *(v18 + 8);
        if (*v18)
        {
          v32 = *(a2 + 6524);
          phOsalNfc_FreeMemory();
          *v18 = 0;
        }

        v26 += v31;
        ++v25;
        v18 += 16;
      }

      while (v25 < *(a2 + 6292));
    }

    sub_297E5B994(a2, 0, a2 + 6424);
    if (*(a2 + 6424))
    {
      v33 = *(a2 + 6524);
      phOsalNfc_FreeMemory();
      *(a2 + 6424) = 0;
    }

    *(a2 + 6288) = 0;
    sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "phNciNfc_SmbLogNtf: Received SMB Logging notification from NFCC");
  }

  else
  {
    v34 = *(a2 + 6288);
    v35 = *(a2 + 6424);
    if (v34)
    {
      v36 = 0;
      v37 = *(a2 + 6424);
      do
      {
        if (v37)
        {
          v38 = *(a2 + 6524);
          phOsalNfc_FreeMemory();
          v35 = 0;
          *(a2 + 6424) = 0;
          v34 = *(a2 + 6288);
        }

        v37 = 0;
        ++v36;
      }

      while (v36 < v34);
    }

    if (v35)
    {
      v39 = *(a2 + 6524);
      phOsalNfc_FreeMemory();
      *(a2 + 6424) = 0;
    }

    sub_297E5B994(a2, 47, 0);
  }

LABEL_7:

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_SmbNtfTimeOutHandler");
}

uint64_t sub_297E71814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SmbLogNtf");
  if (a1 && a2)
  {
    v6 = *(a1 + 6472);
    if (v6 && v6 != 0xFFFFFFFFFFFFLL)
    {
      v9 = *(a1 + 6292);
      *(a1 + 6292) = v9 + 1;
      v10 = a1 + 6296;
      v11 = a1 + 6296 + 16 * v9;
      *(v11 + 8) = *(a2 + 16);
      v12 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *v11 = Memory_Typed;
      if (Memory_Typed)
      {
        v14 = *(a1 + 6524);
        v15 = *(a2 + 8);
        v16 = *(v11 + 8);
        phOsalNfc_MemCopy();
        if (!a3)
        {
          if (*(a1 + 6288) == *(a1 + 6292))
          {
            v17 = *(a1 + 6524);
            v18 = *(a1 + 6472);
            phOsalNfc_Timer_Stop();
            *(a1 + 6512) = 0;
            sub_297E687D8(1, a1 + 6524, *(a1 + 6472), 3u, 4u, "phNciNfc_SmbLogNtf");
            v19 = *(a1 + 6524);
            v20 = *(a1 + 6472);
            phOsalNfc_Timer_Delete();
            *(a1 + 6472) = 0xFFFFFFFFFFFFLL;
            *(a1 + 6432) = 0;
            v21 = *(a1 + 6288);
            if (v21)
            {
              v22 = 0;
              v23 = (a1 + 6304);
              do
              {
                v24 = *v23;
                v23 += 4;
                v22 += v24;
                *(a1 + 6432) = v22;
                --v21;
              }

              while (v21);
            }

            if (*(a1 + 6424))
            {
              v25 = *(a1 + 6524);
              v26 = *(a1 + 6424);
              phOsalNfc_FreeMemory();
              *(a1 + 6424) = 0;
              v27 = *(a1 + 6432);
            }

            v28 = *(a1 + 6524);
            v29 = phOsalNfc_GetMemory_Typed();
            *(a1 + 6424) = v29;
            if (v29 && *(a1 + 6288))
            {
              v30 = 0;
              v31 = 0;
              do
              {
                v32 = *(a1 + 6524);
                v33 = *(a1 + 6424);
                v34 = *v10;
                v35 = *(v10 + 8);
                phOsalNfc_MemCopy();
                v36 = *(v10 + 8);
                if (*v10)
                {
                  v37 = *(a1 + 6524);
                  phOsalNfc_FreeMemory();
                  *v10 = 0;
                }

                v31 += v36;
                ++v30;
                v10 += 16;
              }

              while (v30 < *(a1 + 6288));
            }

            sub_297E5B994(a1, 0, a1 + 6424);
            if (*(a1 + 6424))
            {
              v38 = *(a1 + 6524);
              phOsalNfc_FreeMemory();
              *(a1 + 6424) = 0;
            }

            *(a1 + 6288) = 0;
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_SmbLogNtf: Received SMB Logging notification from NFCC");
          }

          goto LABEL_29;
        }
      }

      else
      {
        a3 = 12;
      }
    }

    else if (!a3)
    {
      if (*(a2 + 8))
      {
        v7 = *(a2 + 16);
        if (v7)
        {
          v8 = *(a1 + 536);
          if (v8)
          {
            v40 = *(a2 + 8);
            LODWORD(v41) = v7;
            v8(*(a1 + 528), 44, &v40, 0);
          }
        }
      }

LABEL_29:
      a3 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SmbLogNtf");
  return a3;
}

uint64_t sub_297E71AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TrimmingFailureNtf");
  if (!a1 || a3)
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_TrimmingFailureNtf: Dropped at NCI");
  }

  else if (a2)
  {
    v6 = *(a1 + 728);
    if (v6)
    {
      if (*(a2 + 8))
      {
        v7 = *(a2 + 16);
        if (v7)
        {
          v9 = *(a2 + 8);
          LODWORD(v10) = v7;
          v6(*(a1 + 720), 46, &v9, 0);
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TrimmingFailureNtf");
  return a3;
}

uint64_t sub_297E71BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NotifySpmiRegInfo");
  if (!a1 || a3)
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_NotifySpmiRegInfo: Dropped at NCI");
  }

  else
  {
    v6 = *(a1 + 744);
    if (v6)
    {
      if (a2)
      {
        v7 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        (*(a1 + 744))(*(a1 + 720), 47, v9, 0);
      }

      else
      {
        v6(*(a1 + 720), 47, 0, 0);
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NotifySpmiRegInfo");
  return a3;
}

uint64_t sub_297E71C90(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_GenDbgLogNtfTimeOutHandler");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 4);
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
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_GenDbgLogNtfTimeOutHandler)\n");
    goto LABEL_7;
  }

  if (!*(a2 + 6512))
  {
    v7 = *(a2 + 6524);
    v8 = *(a2 + 6472);
    phOsalNfc_Timer_Stop();
    v9 = *(a2 + 6524);
    v10 = *(a2 + 6472);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "Generic Debug Log ntf timer started for extended time ");
      *(a2 + 6512) = 1;
      goto LABEL_7;
    }

    sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "Generic Debug Log Notification timer FAILED to start for extended time");
  }

  if (*(a2 + 6448) && *(a2 + 6456) && *(a2 + 6456) < *(a2 + 6444))
  {
    v11 = a2 + 6440;
    sub_297E4E0B0(1, a2 + 6524, 3u, 2u, "phNciNfc_GenDbgLogNtf: Invoke upper layer with Partial generic debug data");
    v12 = 0;
    *(a2 + 6444) = *(a2 + 6456);
  }

  else
  {
    v11 = 0;
    v12 = 47;
  }

  *(a2 + 6512) = 0;
  sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "####### Generic Debug Log notification TIMEOUT ########");
  *(a2 + 6464) = 0;
  sub_297E5B994(a2, v12, v11);
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(&unk_2A18BDDC0 + 14 * v14 + 4);
    if (v13)
    {
      break;
    }

    v13 = 1;
    v14 = 1;
  }

  while (v15 != a2);
  if (v15 == a2)
  {
    *(a2 + 6456) = 0;
    sub_297E7263C(a2);
  }

LABEL_7:

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_GenDbgLogNtfTimeOutHandler");
}

uint64_t sub_297E71EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GenDbgLogNtf");
  if (!a1 || !a2)
  {
    goto LABEL_77;
  }

  v6 = *(a1 + 6472);
  if (!v6 || v6 == 0xFFFFFFFFFFFFLL || *(a1 + 6464) != 1)
  {
    if (*(a1 + 6464) || (v11 = *(a2 + 8)) == 0 || *(a1 + 4828) != 1)
    {
      if (!a3)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GenDbgLogNtf: Independent generic debug notification received and is being dropped");
        goto LABEL_77;
      }

      *(a1 + 6464) = 0;
      sub_297E5B994(a1, a3, 0);
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
      goto LABEL_34;
    }

    v12 = *(a2 + 16);
    if (v12 < 4)
    {
      if (v12 != 3)
      {
        sub_297E50EBC(1, a1 + 6524, 3u, 1u, "phNciNfc_GenDbgLogNtf: Received incomplete Debug Info, wLength");
        a3 = 255;
        goto LABEL_50;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GenDbgLogNtf: Received debug Logs without payload, dropping");
      v13 = 0;
LABEL_49:
      v33 = 0;
      if (a3)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    v13 = __rev16(*(v11 + 1));
    if (!*(a1 + 6458))
    {
      if (!*(a1 + 6456))
      {
        v14 = *(a1 + 6524);
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        *(a1 + 6448) = Memory_Typed;
        if (Memory_Typed)
        {
          *(a1 + 6444) = v13 + *(a2 + 16) - 3;
          *(a1 + 6442) = **(a2 + 8);
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GenDbgLogNtf: memory allocation failed for pGenDbgLogBuff");
          a3 = 255;
        }
      }

      if (!*(a1 + 6458))
      {
LABEL_47:
        if (!a3 && *(a1 + 6448) && v13 <= *(a1 + 6444))
        {
          *(a1 + 6442) = **(a2 + 8);
          v39 = *(a1 + 6524);
          v40 = *(a1 + 6456);
          v41 = *(a2 + 16);
          phOsalNfc_MemCopy();
          v33 = 0;
          *(a1 + 6456) = *(a2 + 16) + *(a1 + 6456) - 3;
          *(a1 + 6458) = v13;
          if (v13)
          {
            goto LABEL_76;
          }

LABEL_55:
          if (!*(a1 + 6456))
          {
            goto LABEL_76;
          }

          if (*(a1 + 6456) >= *(a1 + 6444))
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GenDbgLogNtf: Received debug Logs notification from NFCC");
          }

          else
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GenDbgLogNtf: Received partial debug Logs than expected total length");
            v37 = *(a1 + 6456);
            sub_297E50EBC(1, a1 + 6524, 3u, 2u, "Return Partial Log length");
            v38 = *(a1 + 6444);
            sub_297E50EBC(1, a1 + 6524, 3u, 2u, "Total Length Expected:");
            *(a1 + 6444) = *(a1 + 6456);
          }

          v42 = *(a1 + 6524);
          phOsalNfc_SetMemory();
          v43 = *(a1 + 6448);
          if (v43)
          {
            v44 = *(a1 + 6456);
            BYTE2(v58) = *(a1 + 6442);
            *(a1 + 6456) = 0;
          }

          else
          {
            v44 = 0;
          }

          v59 = v43;
          LOWORD(v60) = v44;
          v45 = *(a1 + 760);
          if (v45)
          {
            v45(*(a1 + 752), 48, &v58, 0);
            v43 = *(a1 + 6448);
          }

          if (v43)
          {
            v46 = *(a1 + 6524);
            phOsalNfc_FreeMemory();
            *(a1 + 6448) = 0;
          }

          *(a1 + 6444) = 0;
          *(a1 + 6442) = 0;
          if (!v33)
          {
            goto LABEL_76;
          }

          v47 = *(a1 + 6524);
          v48 = v13 + *(a2 + 16);
          v49 = phOsalNfc_GetMemory_Typed();
          *(a1 + 6448) = v49;
          if (!v49)
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GenDbgLogNtf: memory allocation failed for pGenDbgLogBuff");
            v59 = 0;
            LOWORD(v60) = 0;
            goto LABEL_75;
          }

          v50 = *(a2 + 16);
          *(a1 + 6444) = v13 + v50 - 3;
          *(a1 + 6442) = **(a2 + 8);
          if (v13 <= (v13 + v50 - 3))
          {
            v51 = *(a1 + 6524);
            v52 = *(a1 + 6456);
            phOsalNfc_MemCopy();
            *(a1 + 6456) = *(a2 + 16) + *(a1 + 6456) - 3;
            *(a1 + 6458) = v13;
LABEL_75:
            if (v13)
            {
              goto LABEL_76;
            }

            v54 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            v55 = *(a1 + 6448);
            v59 = v55;
            LOWORD(v60) = *(a1 + 6456);
            BYTE2(v58) = *(a1 + 6442);
            *(a1 + 6456) = 0;
            v56 = *(a1 + 760);
            if (v56)
            {
              v56(*(a1 + 752), 48, &v58, 0);
              v55 = *(a1 + 6448);
            }

            if (v55)
            {
              v57 = *(a1 + 6524);
              phOsalNfc_FreeMemory();
              *(a1 + 6448) = 0;
            }

            a3 = 0;
LABEL_52:
            *(a1 + 6444) = 0;
            *(a1 + 6442) = 0;
            goto LABEL_77;
          }

LABEL_76:
          a3 = 0;
          goto LABEL_77;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GenDbgLogNtf: Dropping Generic Debug Asynchronous Ntf mismatch in Remaining length");
        sub_297E50EBC(1, a1 + 6524, 3u, 2u, "wRemainingDbgInfoLen");
        goto LABEL_49;
      }

      v11 = *(a2 + 8);
    }

    if (*(a1 + 6442) != *v11)
    {
      v35 = *(a1 + 6456);
      v33 = 1;
      sub_297E50EBC(1, a1 + 6524, 3u, 2u, "phNciNfc_GenDbgLogNtf: Received Different Log Type Return Partial Debug data of Length");
      *(a1 + 6444) = *(a1 + 6456);
      *(a1 + 6458) = 0;
      v36 = **(a2 + 8);
      sub_297E50EBC(1, a1 + 6524, 3u, 4u, "(pTransInfo->pbuffer[0] & (uint32_t)(0xFFFFFFFFU))");
      if (a3)
      {
LABEL_50:
        if (*(a1 + 6448))
        {
          v34 = *(a1 + 6524);
          phOsalNfc_FreeMemory();
          *(a1 + 6448) = 0;
        }

        goto LABEL_52;
      }

LABEL_54:
      if (*(a1 + 6458))
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    goto LABEL_47;
  }

  LODWORD(v7) = *(a1 + 6456);
  if (*(a1 + 6444) < v7)
  {
    a3 = 255;
    goto LABEL_31;
  }

  if (*(a1 + 4828) != 1)
  {
    v20 = *(a1 + 6524);
    v21 = *(a1 + 6448);
    v22 = *(a2 + 8);
    v23 = *(a2 + 16);
    phOsalNfc_MemCopy();
    LOWORD(v7) = *(a1 + 6456) + *(a2 + 16);
    goto LABEL_29;
  }

  v16 = *(a2 + 8);
  if (v16 && *(a2 + 16) >= 4u)
  {
    *(a1 + 6442) = *v16;
    v17 = *(a1 + 6524);
    v18 = *(a1 + 6448);
    phOsalNfc_MemCopy();
    v7 = *(a2 + 8);
    v19 = *(v7 + 2);
    *(a1 + 6458) = v19;
    *(a1 + 6458) = v19 | (*(v7 + 1) << 8);
    LOWORD(v7) = *(a2 + 16) + *(a1 + 6456) - 3;
LABEL_29:
    *(a1 + 6456) = v7;
  }

  if (!a3)
  {
    if (*(a1 + 6444) == v7)
    {
      v26 = *(a1 + 6524);
      v27 = *(a1 + 6472);
      phOsalNfc_Timer_Stop();
      *(a1 + 6512) = 0;
      sub_297E687D8(1, a1 + 6524, *(a1 + 6472), 3u, 4u, "phNciNfc_GenDbgLogNtf");
      v28 = *(a1 + 6524);
      v29 = *(a1 + 6472);
      phOsalNfc_Timer_Delete();
      *(a1 + 6472) = 0xFFFFFFFFFFFFLL;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_GenDbgLogNtf: Received Generic debug Logs notification from NFCC");
      *(a1 + 6464) = 0;
      sub_297E5B994(a1, 0, a1 + 6440);
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(&unk_2A18BDDC0 + 14 * v31 + 4);
        if (v30)
        {
          break;
        }

        v30 = 1;
        v31 = 1;
      }

      while (v32 != a1);
      if (v32 == a1)
      {
        *(a1 + 6456) = 0;
        sub_297E7263C(a1);
      }
    }

    goto LABEL_76;
  }

LABEL_31:
  *(a1 + 6464) = 0;
  sub_297E5B994(a1, a3, 0);
  v24 = 0;
  v25 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v25 + 4);
    if (v24)
    {
      break;
    }

    v24 = 1;
    v25 = 1;
  }

  while (v10 != a1);
LABEL_34:
  if (v10 == a1)
  {
    *(a1 + 6456) = 0;
    sub_297E7263C(a1);
  }

LABEL_77:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GenDbgLogNtf");
  return a3;
}

uint64_t sub_297E7263C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClearHlmDbgInfoData");
  if (a1)
  {
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
      v5 = *(a1 + 6472);
      if (v5 && v5 != 0xFFFFFFFFFFFFLL)
      {
        v6 = *(a1 + 6524);
        phOsalNfc_Timer_Stop();
        *(a1 + 6512) = 0;
        sub_297E687D8(1, a1 + 6524, *(a1 + 6472), 3u, 4u, "phNciNfc_ClearHlmDbgInfoData");
        v7 = *(a1 + 6524);
        v8 = *(a1 + 6472);
        phOsalNfc_Timer_Delete();
        *(a1 + 6472) = 0xFFFFFFFFFFFFLL;
      }

      if (*(a1 + 6424))
      {
        v9 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(a1 + 6424) = 0;
      }

      v10 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      if (*(a1 + 6448))
      {
        v11 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(a1 + 6448) = 0;
      }

      *(a1 + 6444) = 0;
      *(a1 + 6442) = 0;
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClearHlmDbgInfoData");
}

uint64_t sub_297E72790(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_SwptestNtfTimeOutHandler");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 4);
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
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_SwptestNtfTimeOutHandler)\n");
    goto LABEL_14;
  }

  if (!*(a2 + 6512))
  {
    v6 = *(a2 + 6524);
    v7 = *(a2 + 6664);
    phOsalNfc_Timer_Stop();
    v8 = *(a2 + 6524);
    v9 = *(a2 + 6664);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "phNciNfc_SwptestNtfTimeOutHandler:SWP ntf timer started for extended time ");
      *(a2 + 6512) = 1;
      goto LABEL_14;
    }

    sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "phNciNfc_SwptestNtfTimeOutHandler:SWP Notification timer FAILED to start for extended time");
  }

  *(a2 + 6512) = 0;
  v10 = *(a2 + 6664);
  if (v10 && v10 != 0xFFFFFFFFFFFFLL)
  {
    sub_297E687D8(1, a2 + 6524, v10, 3u, 4u, "phNciNfc_SwptestNtfTimeOutHandler");
    v11 = *(a2 + 6524);
    v12 = *(a2 + 6664);
    phOsalNfc_Timer_Stop();
    v13 = *(a2 + 6524);
    v14 = *(a2 + 6664);
    phOsalNfc_Timer_Delete();
    *(a2 + 6664) = 0xFFFFFFFFFFFFLL;
  }

  sub_297E4E0B0(1, a2 + 6524, 3u, 2u, "phNciNfc_SwptestNtfTimeOutHandler:####### SWP Test notification TIMEOUT ########");
  *(a2 + 7020) = 0;
  sub_297E5B994(a2, 47, 0);
LABEL_14:

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_SwptestNtfTimeOutHandler");
}

uint64_t sub_297E72970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_WtxNtfHandler");
  if (!a1)
  {
    goto LABEL_31;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_WtxNtfHandler: Received WTX_NTF");
  v5 = *(a1 + 4552);
  if (v5)
  {
    v6 = *(v5 + 4);
    if ((v6 - 5) < 3)
    {
      goto LABEL_6;
    }

    if (v6 == 16)
    {
      v7 = *(v5 + 109);
      goto LABEL_7;
    }

    if (v6 == 3)
    {
LABEL_6:
      v7 = *(v5 + 108);
LABEL_7:
      v8 = (1 << (v7 >> 4)) * 302.064897 / 1000.0;
      if (v8 >= 0x54)
      {
        v9 = 19796;
      }

      else
      {
        v9 = 236 * v8;
      }

      v10 = v9 & 0xFFFC;
      if (v10 <= 0x76C)
      {
        v11 = 1900;
      }

      else
      {
        v11 = v10;
      }

      v12 = v11 + 100;
      goto LABEL_15;
    }
  }

  v13 = *(a1 + 4566);
  v12 = 0;
LABEL_15:
  if (*(a1 + 6483) == 1 && *(a1 + 1928) == 1)
  {
    v14 = *(a1 + 3396);
    v15 = *(a1 + 1920);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    if (v12 <= 0x1388u)
    {
      v16 = 5000;
    }

    else
    {
      v16 = v12;
    }

    *(a1 + 1556) = v16;
    sub_297E50EBC(1, a1 + 6524, 3u, 4u, "phNciNfc_WtxNtfHandler: Timer started for Transceive timeout value  ");
    v17 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 3396))
    {
      v17 = &gphNfc_DebugInfo_Prim;
    }

    v17[1] &= ~0x10u;
    v18 = *(a1 + 1920);
    v19 = *(a1 + 1556);
    a3 = phOsalNfc_Timer_Start();
  }

  if (*(a1 + 6600) == 1)
  {
    sub_297E5A304(*(a1 + 3396), *(a1 + 6592));
    *(a1 + 6513) = 0;
    sub_297E50EBC(1, a1 + 6524, 3u, 4u, "phNciNfc_WtxNtfHandler : Timer started for Credit timeout value  ");
    v20 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 3396))
    {
      v20 = &gphNfc_DebugInfo_Prim;
    }

    v20[1] &= ~8u;
    v21 = *(a1 + 6592);
    if (phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed to start credit ntf wait timer!");
      v22 = *(a1 + 6592);
      a3 = 255;
      if (v22 && v22 != 0xFFFFFFFFFFFFLL)
      {
        v23 = *(a1 + 3396);
        phOsalNfc_Timer_Delete();
        *(a1 + 6592) = 0;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Credit wait timer started..");
      a3 = 0;
      *(a1 + 6600) = 1;
      *(a1 + 6585) = 1;
    }
  }

LABEL_31:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_WtxNtfHandler");
  return a3;
}

uint64_t sub_297E72C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DetTagRemNtfHandler");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_DetTagRemNtfHandler: Received Tag Removal Detect Notification");
    if (a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = 120;
    }

    v5 = *(a1 + 456);
    if (v5)
    {
      v5(*(a1 + 448), 31, 0, a3);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DetTagRemNtfHandler");
  return a3;
}

uint64_t sub_297E72D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessSysLpcdDbgMsgNtf");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received System LPCD logging notification from NFCC");
      if (!a3)
      {
        v7 = *(a1 + 472);
        if (v7)
        {
          if (*(a2 + 8))
          {
            v8 = *(a2 + 16);
            if (v8)
            {
              v9 = *(a2 + 8);
              LODWORD(v10) = v8;
              v7(*(a1 + 464), 32, &v9, 0);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessSysLpcdDbgMsgNtf");
  return a3;
}

uint64_t sub_297E72DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessLpcdAssistExitNtf");
  if (a1 && a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received Successful LPCD Assistance Exit from NFCC");
    if (a3 || (v8 = *(a1 + 488)) == 0 || *(a2 + 16))
    {
      v6 = *(a2 + 16);
      sub_297E50EBC(1, a1 + 6524, 3u, 2u, "phNciNfc_ProcessLpcdAssistExitNtf:Dropping LPCD Assistance Exit Ntf, pTransInfo->wLength");
    }

    else
    {
      v8(*(a1 + 480), 45, 0, 0);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessLpcdAssistExitNtf");
  return a3;
}

uint64_t sub_297E72ECC(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MapBitRate");
  if (a3)
  {
    if (a2 > 3)
    {
      v6 = 255;
    }

    else
    {
      v6 = 0;
      *a3 = 0x1000605u >> (8 * a2);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_MapBitRate");
  return v6;
}

uint64_t sub_297E72F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessRfMgtRelaydetectionNtf");
  if (!a1)
  {
    goto LABEL_6;
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
  if (v8 == a1)
  {
    if (a2 && !a3 && *(a2 + 8) && (v10 = *(a2 + 16)) != 0)
    {
      v11 = *(a1 + 632);
      if (v11)
      {
        v12 = *(a2 + 8);
        LODWORD(v13) = v10;
        v11(*(a1 + 496), 36, &v12, 0);
      }

      a3 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessRfMgtRelaydetectionNtf:Dropped at NCI");
    }
  }

  else
  {
LABEL_6:
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessRfMgtRelaydetectionNtf");
  return a3;
}

uint64_t sub_297E73090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessChipScopeLoggingNtf");
  if (!a1)
  {
    goto LABEL_6;
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
  if (v8 == a1)
  {
    if (*(a1 + 4834) == 1 || *(a1 + 4828) == 1 || *(a1 + 4833) == 1)
    {
      if (a2 && !a3)
      {
        if (*(a2 + 8))
        {
          v10 = *(a1 + 504);
          if (v10)
          {
            v11 = *(a2 + 8);
            LODWORD(v12) = *(a2 + 16);
            v10(*(a1 + 496), 33, &v11, 0);
          }
        }

        a3 = 0;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "ProcessChipScopeLoggingNtf : Chip scope Ntf received on non supported platform");
    }
  }

  else
  {
LABEL_6:
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessChipScopeLoggingNtf");
  return a3;
}

uint64_t sub_297E731D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessMfwRfVldtTestNtf");
  if (!a1)
  {
    goto LABEL_6;
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
  if (v8 == a1)
  {
    if (a2 && !a3)
    {
      if (*(a2 + 8))
      {
        v10 = *(a1 + 520);
        if (v10)
        {
          v11 = *(a2 + 8);
          LODWORD(v12) = *(a2 + 16);
          a3 = 72;
          v10(*(a1 + 512), 34, &v11, 72);
        }

        else
        {
          a3 = 72;
        }
      }

      else
      {
        a3 = 0;
      }
    }
  }

  else
  {
LABEL_6:
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessMfwRfVldtTestNtf");
  return a3;
}

uint64_t sub_297E732DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessMfwRdLmDecodeTestNtf");
  if (!a1)
  {
    goto LABEL_6;
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
  if (v8 == a1)
  {
    if (a2 && !a3)
    {
      if (*(a2 + 8))
      {
        v10 = *(a1 + 520);
        if (v10)
        {
          v11 = *(a2 + 8);
          LODWORD(v12) = *(a2 + 16);
          a3 = 73;
          v10(*(a1 + 512), 34, &v11, 73);
        }

        else
        {
          a3 = 73;
        }
      }

      else
      {
        a3 = 0;
      }
    }
  }

  else
  {
LABEL_6:
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessMfwRdLmDecodeTestNtf");
  return a3;
}

uint64_t sub_297E733E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessMfwRfDataPackets");
  if (!a1)
  {
    goto LABEL_6;
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
  if (v8 == a1)
  {
    if (a2 && !a3)
    {
      if (*(a2 + 8))
      {
        v10 = *(a1 + 520);
        if (v10)
        {
          v11 = *(a2 + 8);
          LODWORD(v12) = *(a2 + 16);
          a3 = 68;
          v10(*(a1 + 512), 34, &v11, 68);
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessMfwRfDataPackets : Notification Callback not registered ");
          a3 = 68;
        }
      }

      else
      {
        a3 = 0;
      }
    }
  }

  else
  {
LABEL_6:
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessMfwRfDataPackets");
  return a3;
}

uint64_t sub_297E7350C(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CommonSwpRsp");
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
  if (v6 == a1)
  {
    if (a2 || (v9 = *(a1 + 3800)) == 0 || *(a1 + 3808) != 1 || *v9)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_CommonSwpRsp: Response received with invalid status/payload");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CommonSwpRsp: Response Successful");
      v10 = *(a1 + 6524);
      v11 = phOsalNfc_Timer_Create();
      *(a1 + 6664) = v11;
      if (v11 == 0xFFFFFFFFFFFFLL || !v11)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_CommonSwpRsp: SWP Notification Timer Create failed!!");
        v7 = 12;
        goto LABEL_10;
      }

      v12 = *(a1 + 6524);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E687D8(1, a1 + 6524, *(a1 + 6664), 3u, 4u, "phNciNfc_CommonSwpRsp");
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CommonSwpRsp: SWP ntf timer started");
        v7 = 0;
        goto LABEL_10;
      }

      v13 = *(a1 + 6524);
      v14 = *(a1 + 6664);
      phOsalNfc_Timer_Delete();
      *(a1 + 6664) = 0xFFFFFFFFFFFFLL;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_CommonSwpRsp: SWP Notification timer start FAILED");
    }

    v7 = 255;
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3u, 2u, "phNciNfc_CommonSwpRsp: Invalid NCI Context");
    v7 = 1;
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CommonSwpRsp");
  return v7;
}

uint64_t sub_297E7371C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciCompleteSeq");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciCompleteSeq");
  return a2;
}

uint64_t sub_297E737A8(uint64_t a1, int a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CreditsUpdateCB");
  if (!a1)
  {
    goto LABEL_6;
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
  if (v8 != a1)
  {
LABEL_6:
    v9 = "Invalid Core context passed from LogConn Module!";
    v10 = 3;
    v11 = 2;
    v12 = a1;
LABEL_7:
    sub_297E4E0B0(v11, v12, 3u, 1u, v9);
    goto LABEL_8;
  }

  if (!a2 || a3)
  {
    v9 = "Credits Update from LogConn Module Failed";
    v10 = 3;
    v12 = a1 + 6524;
    v11 = 1;
    goto LABEL_7;
  }

  v10 = 2;
LABEL_8:
  sub_297E57FC4(a1, v10, 0);

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CreditsUpdateCB");
}

uint64_t sub_297E738B4(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v19 = 0;
  v20 = a1;
  sub_297E4E1B4(0, &v20, 8u, 5u, "phFriNfc_Desfire_RdNdef");
  sub_297E57170(v20, &v19);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v19;
          if (v19)
          {
            if (a4 == 1 || *(v19 + 540) != 3)
            {
              *(v19 + 16) = a5;
              *(v12 + 40) = a6;
              if (a4 == 1)
              {
                *(v12 + 252) = 0;
                v13 = *(*(v12 + 224) + 4);
                v14 = v13 > 0x13;
                v15 = (1 << v13) & 0x8E800;
                if (!v14 && v15 != 0)
                {
                  *(v12 + 664) = 0;
                  **(v12 + 672) = 0;
                }
              }

              *(v12 + 547) = 2;
              *(v12 + 248) = *a3;
              *(v12 + 552) = a3;
              *a3 = 0;
              *(v12 + 560) = a4;
              if (a4 || **(v12 + 672) != *(v12 + 660))
              {
                *(v12 + 668) = 0;
                *(v12 + 642) = 2;
                *(v12 + 240) = a2;
                *(v12 + 540) = 2;
                if (*(v12 + 65))
                {
                  if (*(v12 + 544) == 6)
                  {
                    v17 = sub_297E73D2C(v12);
                  }

                  else
                  {
                    v17 = sub_297E73EB4(v12);
                  }
                }

                else if (a4 != 1 || *(v12 + 664) || **(v12 + 672))
                {
                  v17 = sub_297E73B20(v12);
                }

                else
                {
                  v17 = sub_297E73A68(v12);
                }

                v11 = v17;
              }

              else
              {
                v11 = 26;
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

  sub_297E4DFAC(0, &v20, 8u, 5u, "phFriNfc_Desfire_RdNdef");
  return v11;
}

uint64_t sub_297E73A68(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Desfire_ReadBinary_NdefLen");
  if (a1)
  {
    *(a1 + 266) = 45056;
    if (*(a1 + 64) == 6)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    *(a1 + 669) = 0;
    *(a1 + 270) = v2;
    *(a1 + 526) = 5;
    *a1 = 9;
    v3 = sub_297E7487C(a1, (v2 + 2));
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Desfire_ReadBinary_NdefLen");
  return v3;
}

uint64_t sub_297E73B20(uint64_t a1)
{
  v2 = (a1 + 266);
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Desfire_ReadBinary");
  v3 = *(a1 + 642);
  if (v3 != 4 && v3 != 7)
  {
    *(a1 + 266) = -20480;
    v7 = **(a1 + 672);
    if (v7)
    {
      v8 = *(a1 + 64);
      v9 = v7 + 4;
      if (v8 == 4)
      {
        v7 += 2;
      }

      if (v8 == 6)
      {
        v7 = v9;
      }

      if (v7 >= 0x7FFF)
      {
        *(v2 + 1) = 83886257;
        *(a1 + 271) = 852;
        *(a1 + 273) = BYTE2(v7);
        *(a1 + 274) = BYTE1(v7);
        v10 = 10;
        v11 = 275;
        goto LABEL_20;
      }

      *(a1 + 268) = BYTE1(v7);
    }

    else
    {
      *(a1 + 268) = 0;
      if (*(a1 + 680) == 1 && !*(a1 + 65))
      {
        *(a1 + 680) = 0;
        v10 = 4;
        LOBYTE(v7) = 2;
        goto LABEL_19;
      }

      LOBYTE(v7) = 0;
    }

    v10 = 4;
LABEL_19:
    v11 = 269;
LABEL_20:
    *(a1 + v11) = v7;
    v12 = *(a1 + 2744);
    if (v12)
    {
      *(a1 + 2744) = 0;
    }

    else
    {
      v12 = sub_297E75A68(a1);
    }

    if (*(a1 + 560) == 1)
    {
      v13 = *(a1 + 64);
      if (v13 == 6)
      {
        if (v12 - 1 < 4)
        {
          v14 = 4;
          goto LABEL_30;
        }
      }

      else if (v13 == 4 && v12 - 1 < 2)
      {
        v14 = 2;
LABEL_30:
        if (*(a1 + 669) != 1)
        {
          v14 = 0;
        }

        LOWORD(v12) = v14 + v12;
        goto LABEL_35;
      }
    }

    if (v12 >= 0x100)
    {
      v15 = v2 + v10;
      *v15 = 0;
      v16 = v10 + 3;
      v10 += 2;
      v15[1] = BYTE1(v12);
LABEL_36:
      *(v2 + v10) = v12;
      *(a1 + 526) = v16;
      v5 = v12 + 2;
      v6 = 8;
      goto LABEL_37;
    }

LABEL_35:
    v16 = v10 | 1;
    goto LABEL_36;
  }

  *v2 = 45056;
  *(a1 + 270) = 15;
  *(a1 + 526) = 5;
  v5 = 252;
  v6 = 7;
LABEL_37:
  *a1 = v6;
  v17 = sub_297E7487C(a1, v5);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Desfire_ReadBinary");
  return v17;
}

uint64_t sub_297E73D2C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Desfire_SelectFile");
  v2 = *(a1 + 642);
  v3 = 29;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (*(a1 + 65))
      {
        *(a1 + 266) = 33599488;
        v6 = *(a1 + 660);
        v5 = 5;
        goto LABEL_8;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_18;
      }

      if (*(a1 + 65))
      {
        LOBYTE(v6) = 0;
        *(a1 + 266) = 0xD00300050000D600;
        *(a1 + 274) = 0;
        v5 = 10;
        v7 = 275;
        goto LABEL_9;
      }
    }

LABEL_7:
    *(a1 + 266) = 41984;
    v5 = 5;
    LOBYTE(v6) = 2;
LABEL_8:
    v7 = 270;
LABEL_9:
    *(a1 + v7) = v6;
    if (*(a1 + 544) == 6 && ((v2 & 0xFE) != 2 || !*(a1 + 65)))
    {
      *(a1 + 269) = 12;
    }

    v8 = a1 + v5;
    if (v2 == 7 || v2 == 4)
    {
      *(v8 + 266) = -31;
      LOBYTE(v9) = 3;
    }

    else
    {
      if ((v2 & 0xFE) == 2 && *(a1 + 65))
      {
        goto LABEL_17;
      }

      v9 = *(a1 + 644);
      *(v8 + 266) = HIBYTE(v9);
    }

    LOWORD(v5) = v5 + 2;
    *(v8 + 267) = v9;
LABEL_17:
    *(a1 + 526) = v5;
    *a1 = 6;
    v3 = sub_297E7487C(a1, 2);
    goto LABEL_18;
  }

  if (v2 - 4 < 2 || v2 == 7)
  {
    goto LABEL_7;
  }

LABEL_18:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Desfire_SelectFile");
  return v3;
}

uint64_t sub_297E73EB4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Desfire_SelectSmartTag");
  *(a1 + 266) = -23552;
  *(a1 + 268) = 4;
  if (*(a1 + 2780))
  {
    v2 = 12;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 269) = v2;
  *(a1 + 270) = 7787015;
  *(a1 + 274) = -31488;
  *(a1 + 276) = 1;
  if (*(a1 + 642) != 4)
  {
    if (*(a1 + 544) != 6)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(a1 + 277) = 1;
    v3 = 13;
    v4 = 4;
    goto LABEL_9;
  }

  if (!*(a1 + 544))
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a1 + 269) = 0;
  *(a1 + 277) = 0;
  v3 = 12;
  v4 = 5;
LABEL_9:
  *a1 = v4;
  *(a1 + 526) = v3;
  v5 = sub_297E7487C(a1, 2);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Desfire_SelectSmartTag");
  return v5;
}

uint64_t sub_297E73FB0(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = a1;
  sub_297E4E1B4(0, &v25, 8u, 5u, "phFriNfc_Desfire_WrNdef");
  sub_297E57170(v25, &v24);
  v11 = 1;
  if (a3 && a5 && v24 && *(v24 + 220) <= 1u)
  {
    v12 = *(v24 + 2720);
    phOsalNfc_MemCopy();
    v13 = v24;
    *(v24 + 2740) = 3;
    *(v13 + 24) = a5;
    *(v13 + 40) = a6;
    *(v13 + 547) = 3;
    *(v13 + 252) = 0;
    **(v13 + 528) = 0;
    v14 = *a3;
    v15 = v24;
    v16 = (v24 + 2740);
    if (*a3)
    {
      v16 = a3;
    }

    *(v24 + 248) = *v16;
    *(v15 + 256) = v16;
    *v16 = 0;
    v17 = *(v15 + 64);
    if (v17 == 4)
    {
      v18 = 2;
    }

    else
    {
      v18 = 4 * (v17 == 6);
    }

    v19 = **(v15 + 672);
    if (v19 >= sub_297E74158(v15, v18))
    {
      v11 = 26;
    }

    else
    {
      v20 = v15 + 2736;
      if (v14)
      {
        v20 = a2;
      }

      v21 = v24;
      *(v24 + 642) = 3;
      *(v21 + 540) = 3;
      *(v21 + 560) = a4;
      *(v21 + 240) = v20;
      if (*(v21 + 65))
      {
        if (*(v21 + 544) == 6)
        {
          v22 = sub_297E73D2C(v21);
        }

        else
        {
          v22 = sub_297E73EB4(v21);
        }
      }

      else
      {
        *(v21 + 669) = 0;
        v22 = sub_297E741D0(v21);
      }

      v11 = v22;
    }
  }

  sub_297E4DFAC(0, &v25, 8u, 5u, "phFriNfc_Desfire_WrNdef");
  return v11;
}

uint64_t sub_297E74158(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Desfire_NdefFileSize");
  if (a1)
  {
    v4 = *(a1 + 648);
    v5 = v4 >= a2;
    v6 = v4 - a2;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Desfire_NdefFileSize");
  return v7;
}

uint64_t sub_297E741D0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Desfire_UpdateBinary");
  v2 = *(a1 + 64);
  if (v2 == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4 * (v2 == 6);
  }

  v4 = **(a1 + 672);
  if (v4 < sub_297E74158(a1, v3))
  {
    v5 = *(a1 + 664);
    v6 = *(a1 + 248);
    v7 = v6 - v5;
    if (v6 > v5)
    {
      v8 = sub_297E74158(a1, v3);
      v9 = *(a1 + 672);
      if (v7 <= v8 - *v9)
      {
        v12 = *(a1 + 248);
        v11 = *(a1 + 664);
      }

      else
      {
        v10 = sub_297E74158(a1, v3);
        v9 = *(a1 + 672);
        v11 = *(a1 + 664);
        v12 = v10 - (*v9 + v11);
        *(a1 + 248) = v12;
      }

      v16 = a1 + 266;
      *(a1 + 266) = -10752;
      v17 = v12 - v11;
      v18 = *(a1 + 656);
      v19 = *(a1 + 669);
      if (v17 >= v18)
      {
        LOWORD(v17) = *(a1 + 656);
        if (v19 != 1)
        {
          if (*(a1 + 220))
          {
            LOWORD(v17) = 0;
          }

          else
          {
            LOWORD(v17) = v18 - v3;
          }

          goto LABEL_22;
        }
      }

      else if (v19 != 1)
      {
        if (*(a1 + 220))
        {
          LOWORD(v17) = 0;
        }

LABEL_22:
        v20 = *v9;
        if (!(*v9 | v19))
        {
          *(a1 + 268) = 0;
          if (*(a1 + 560) == 1)
          {
            v21 = 0;
            v22 = *(a1 + 64);
            v23 = 4;
            goto LABEL_47;
          }

          v23 = 4;
          goto LABEL_46;
        }

LABEL_25:
        v22 = *(a1 + 64);
        if (v22 == 6)
        {
          v20 += 4;
        }

        else if (v22 == 4)
        {
          v20 += 2;
        }

        if (v20 < 0x7FFF)
        {
          v21 = 0;
          *(a1 + 268) = bswap32(v20) >> 16;
          v23 = 4;
          goto LABEL_42;
        }

        *(a1 + 267) = 215;
        *(a1 + 269) = 0;
        if (v17 < 0x100u)
        {
          if (v17 + 7 > v18)
          {
            LOWORD(v17) = v17 - 7;
          }

          v21 = v17 + 7;
          if (v17 < 0xF9u)
          {
            v24 = 5;
            v25 = 270;
            goto LABEL_41;
          }
        }

        else
        {
          if (v17 + 9 > v18)
          {
            LOWORD(v17) = v17 - 9;
          }

          v21 = v17 + 9;
        }

        *(a1 + 270) = 0;
        *(a1 + 271) = BYTE1(v21);
        v24 = 7;
        v25 = 272;
LABEL_41:
        *(a1 + v25) = v21;
        v26 = v16 + v24;
        *v26 = 852;
        *(v26 + 2) = BYTE2(v20);
        *(v26 + 3) = BYTE1(v20);
        *(v26 + 4) = v20;
        v23 = v24 + 6;
        *(v26 + 5) = 83;
LABEL_42:
        if (*(a1 + 560) == 1)
        {
          if (v19 == 1)
          {
            if (v17 < 0x100u)
            {
              LOWORD(v28) = v23 + 1;
            }

            else
            {
              v27 = (v16 + v23);
              *v27 = 0;
              LOWORD(v28) = v23 + 3;
              v23 += 2;
              v27[1] = BYTE1(v17);
            }

            v35 = v17;
            goto LABEL_60;
          }

LABEL_47:
          if (v22 == 6)
          {
            v21 = v17 + 4;
          }

          else if (v22 == 4)
          {
            v21 = v17 + 2;
          }

          if (v21 < 0x100)
          {
            v34 = 1;
            v33 = v23;
          }

          else
          {
            v32 = (v16 + v23);
            *v32 = 0;
            v33 = v23 + 2;
            v32[1] = BYTE1(v21);
            v34 = 3;
          }

          v28 = v34 + v23;
          *(v16 + v33) = v21;
          if (v22 == 6)
          {
            v35 = 0;
            v36 = v16 + v28;
            *v36 = 0;
            v23 = v28 + 3;
            *(v36 + 2) = 0;
            LOWORD(v28) = v28 + 4;
          }

          else
          {
            if (v22 != 4)
            {
LABEL_61:
              v37 = *(a1 + 2720);
              v38 = *(a1 + 240) + v11;
              goto LABEL_62;
            }

            v35 = 0;
            v23 = v28 + 1;
            *(v16 + v28) = 0;
            LOWORD(v28) = v28 + 2;
          }

LABEL_60:
          *(v16 + v23) = v35;
          goto LABEL_61;
        }

LABEL_46:
        v29 = (v16 + v23);
        *v29 = 0;
        v29[1] = BYTE1(v17);
        LOWORD(v28) = v23 + 3;
        v29[2] = v17;
        v30 = *(a1 + 2720);
        v31 = *(a1 + 240) + v11;
LABEL_62:
        phOsalNfc_MemCopy();
        *(a1 + 526) = v17 + v28;
        *(a1 + 216) = v17;
        *(a1 + 669) = 1;
        *a1 = 60;
        v14 = sub_297E7487C(a1, 2);
        goto LABEL_63;
      }

      v20 = *v9;
      v19 = 1;
      goto LABEL_25;
    }
  }

  v13 = **(a1 + 672);
  if (v13 == sub_297E74158(a1, v3) || *(a1 + 664) == *(a1 + 248))
  {
    v14 = sub_297E74774(a1);
LABEL_63:
    v15 = v14;
    goto LABEL_64;
  }

  *(a1 + 664) = 0;
  *(a1 + 540) = 0;
  v15 = 255;
  sub_297E74B88(a1, 255);
LABEL_64:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Desfire_UpdateBinary");
  return v15;
}