uint64_t sub_297EF1DB0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetCfgSignedCmd");
  if (!a1)
  {
    v20 = "Invalid parameter, Libnfc Context is Invalid";
    a2 = 1;
    v21 = 2;
    v22 = 0;
LABEL_23:
    sub_297E4E0B0(v21, v22, 4u, 1u, v20);
    goto LABEL_24;
  }

  if (*(a1 + 3560) >= *(a1 + 3556))
  {
    v20 = "phLibNfc_SetRfSignedCmd: Number of configurations to be set is 0";
    v22 = a1 + 9792;
    v21 = 1;
    goto LABEL_23;
  }

  *(a1 + 3297) = 0;
  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v5 = *(a1 + 3288);
  v6 = *(a1 + 3560);
  v7 = *(a1 + 3556) - v6;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_BuildSetCfgSignedCmdPayload");
  if (v5)
  {
    v8 = v7 > 0xF;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9 == 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = v5 + v6;
    while (1)
    {
      v13 = (v12 + v11);
      v14 = *(v12 + v11) & 0xFE;
      v15 = v14 == 160;
      if (v14 == 160)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      if (v15)
      {
        v17 = 3;
      }

      else
      {
        v17 = 4;
      }

      v18 = (v17 + v13[v16]) + v11;
      if (v18 >= 0xFF)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_BuildSetCfgSignedCmdPayload:data payload size exceeded, signature not copied");
        goto LABEL_28;
      }

      v19 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      if (*v13 == 240)
      {
        break;
      }

      ++v10;
      v11 = v18;
      if (v18 == 254)
      {
        LOBYTE(v11) = -2;
        goto LABEL_28;
      }
    }

    LOBYTE(v11) = v18;
LABEL_28:
    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_BuildSetCfgSignedCmdPayload");
    if (v10 != 0)
    {
      *(a1 + 3298) = v10;
      a2 = sub_297F08C18(*(a1 + 3088), a1 + 3298, v11 + 1, sub_297E5BA84, a1);
      if (a2 == 13)
      {
        *(a1 + 3560) += v11;
      }

      else
      {
        *(a1 + 3560) = 0;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {
    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_BuildSetCfgSignedCmdPayload");
    a2 = 1;
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetCfgSignedCmd");
  return a2;
}

uint64_t sub_297EF2030(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetRfSignedSeqComplete");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetRfSignedSeqComplete: Invalid input parameter");
    goto LABEL_14;
  }

  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  if (a2)
  {
    v5 = 118;
    if (a2 != 130 && a2 != 143)
    {
      v6 = *(a1 + 3196) == 2;
      v7 = a2 == 147;
      if (v7 && v6)
      {
        v5 = 118;
      }

      else
      {
        v5 = 119;
      }

      if (v7 && v6)
      {
        a2 = 0;
      }

      else
      {
        a2 = 255;
      }
    }

    v21 = 1;
    goto LABEL_12;
  }

  if (*(a1 + 3560) < *(a1 + 3556))
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Re-Initialize the sequence to perform set signed config");
    *(a1 + 2960) = off_2A1A93780;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v9 = off_2A1A93780[0];
    if (off_2A1A93780[0])
    {
      v9 = 0;
      v10 = off_2A1A93790;
      do
      {
        ++v9;
        v11 = *v10;
        v10 += 2;
      }

      while (v11);
    }

    *(a1 + 2953) = v9;
    if (sub_297E5588C(a1, 0, 0) == 13)
    {
      a2 = 13;
      goto LABEL_14;
    }

    v15 = "Set Rf signed config sequence failed to Set remaining configurations, return failed";
    goto LABEL_32;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "All Rf configs are set");
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCC Hard reset success, verifying TML baud rate");
  if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1 || *(a1 + 3104) == 2)
  {
    v12 = "TML HSU baud rate is set to default, perform LibNfc Re-Init";
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "HSU baud rate different, changing it to the default baud rate (115200)");
    v20 = *(a1 + 3000);
    if (phTmlNfc_ConfigHsuBaudRate())
    {
      v21 = 1;
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_SetRfSignedSeqComplete : Config Hsu Baud Rate failed ");
      goto LABEL_33;
    }

    v12 = "phLibNfc_SetRfSignedSeqComplete: TML HSU Baud rate Set to default baud rate";
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v12);
  v13 = *(a1 + 3000);
  if (*(a1 + 3224) == 1)
  {
    if (phTmlNfc_IoCtl())
    {
LABEL_31:
      v15 = "Failed to Hard reset the controller, return failed";
LABEL_32:
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v15);
      v21 = 1;
LABEL_33:
      v5 = 119;
      a2 = 255;
LABEL_12:
      a2 = sub_297E4F450(*(a1 + 9784), v5, a2, 0, &v21);
      goto LABEL_14;
    }

    v14 = sub_297EA76A4(*(a1 + 9792), *(a1 + 3000));
  }

  else
  {
    v14 = phTmlNfc_IoCtl();
  }

  if (v14)
  {
    goto LABEL_31;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_SetRfSignedSeqComplete:NFCC hard reset happened, performing Re-Init");
  *(a1 + 2930) = 0;
  v16 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 2931) = 1;
  if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
  {
    sub_297F09BB4(*(a1 + 3088), 0);
    sub_297F09B18(*(a1 + 3088), 0);
  }

  *(a1 + 2932) = 1;
  *(a1 + 2960) = off_2A1A90DB8;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v17 = off_2A1A90DB8[0];
  if (off_2A1A90DB8[0])
  {
    v17 = 0;
    v18 = off_2A1A90DC8;
    do
    {
      ++v17;
      v19 = *v18;
      v18 += 2;
    }

    while (v19);
  }

  *(a1 + 2953) = v17;
  a2 = sub_297E5588C(a1, 0, 0);
  if (a2 != 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "NFCC Re-Init failed, return failed");
    sub_297E8D804(a1);
    v21 = 1;
    if (a2 == 179)
    {
      a2 = 180;
    }

    else
    {
      a2 = 137;
    }

    v5 = 119;
    goto LABEL_12;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetRfSignedSeqComplete");
  return a2;
}

uint64_t sub_297EF243C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigHsuBrCmd");
  if (!a1 || *(a1 + 2987) == 1 || *(a1 + 2992) == 1)
  {
    HsuMaxBaudRate = 0;
  }

  else
  {
    if (!*(a1 + 6104) || *(a1 + 3204) > 1u)
    {
      goto LABEL_11;
    }

    if (!sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136)))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigHsuBrCmd: Invalid platform type");
    }

    v4 = *(a1 + 3000);
    HsuMaxBaudRate = phTmlNfc_GetHsuMaxBaudRate();
    if (!HsuMaxBaudRate)
    {
LABEL_11:
      v5 = *(a1 + 3000);
      v6 = *(a1 + 2996);
      if (phTmlNfc_ConfigHsuBaudRate())
      {
        sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigHsuBrCmd : Check Hsu Baud Rate failed status");
        HsuMaxBaudRate = 51;
      }

      else
      {
        v7 = *(a1 + 2996);
        sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigHsuBrCmd: Check succeeded with baudrate");
        v8 = *(a1 + 9792);
        phOsalNfc_Delay();
        v9 = *(a1 + 3000);
        v10 = *(a1 + 3104);
        v11 = phTmlNfc_ConfigHsuBaudRate();
        if (v11)
        {
          HsuMaxBaudRate = v11;
          sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigHsuBrCmd : Re-Config to existing Baud Rate failed status");
        }

        else
        {
          v12 = *(a1 + 3104);
          sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigHsuBrCmd: Re-Config to existing Baud Rate succeeded");
          v13 = *(a1 + 9792);
          phOsalNfc_Delay();
          HsuMaxBaudRate = sub_297F05D1C(*(a1 + 3088), *(a1 + 2996), sub_297E5BA84, a1);
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigHsuBrCmd");
  return HsuMaxBaudRate;
}

uint64_t sub_297EF2620(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigHsuBrResp");
  if (!a1 || !a3)
  {
    v6 = "phLibNfc_ConfigHsuBrResp : Libnfc Context or pInfo is Invalid";
    v7 = 2;
    v8 = a1;
LABEL_6:
    sub_297E4E0B0(v7, v8, 4u, 1u, v6);
LABEL_7:
    a2 = 255;
    goto LABEL_8;
  }

  if (a2)
  {
    sub_297E50EBC(2, 0, 4u, 1u, "phLibNfc_ConfigHsuBrResp: Failed to configure NFCC HSU baud rate");
    goto LABEL_8;
  }

  a2 = *a3;
  if (!*a3)
  {
    if (*(a1 + 3209))
    {
      *(a1 + 3209) = 0;
      *(a1 + 3104) = *(a1 + 2996);
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "NFCC Configure HSU baud rate success after bBrRetryCnt");
      a2 = 0;
    }

    else
    {
      sub_297E79734(a1, *(a1 + 2960), 1);
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCC Configure HSU baud rate success");
      v20 = *(a1 + 3000);
      v21 = *(a1 + 2996);
      a2 = phTmlNfc_ConfigHsuBaudRate();
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigHsuBrResp: Failed to updated TML HSU baud rate");
      }

      else
      {
        *(a1 + 3104) = *(a1 + 2996);
        sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigHsuBrResp: TML HSU Baud rate Set to");
        v22 = *(a1 + 9792);
        phOsalNfc_Delay();
      }
    }

    goto LABEL_8;
  }

  if (a2 != 44)
  {
    v19 = *(a1 + 3209);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "NFCC Configure HSU baud rate Failed after bBrRetryCnt");
    *(a1 + 3209) = 0;
    goto LABEL_8;
  }

  v10 = *(a1 + 3088);
  v11 = *(a1 + 3209);
  sub_297E50EBC(1, a1 + 9792, 4u, 2u, "New HSU BR request failed, bBrRetryCnt");
  if (*(a1 + 3209) > 2u)
  {
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "Baudrate retry reached max count, bBrRetryCnt");
    *(a1 + 3209) = 0;
    goto LABEL_7;
  }

  v12 = *(a1 + 3000);
  phTmlNfc_ReadAbort();
  v13 = *(a1 + 3000);
  phTmlNfc_FlushTxRxBuffers();
  v14 = *(a1 + 3000);
  v15 = *(a1 + 2996);
  v16 = phTmlNfc_ConfigHsuBaudRate();
  if (!v10 || v16)
  {
    *(a1 + 3209) = 0;
    v6 = "phLibNfc_ConfigHsuBrResp: Cfg TML to new Baud rate Failed";
    v8 = a1 + 9792;
    v7 = 1;
    goto LABEL_6;
  }

  v17 = *(v10 + 6524);
  phOsalNfc_Delay();
  if (sub_297E4EE00(v10 + 936, 0, 3) == 13)
  {
    if (*(a1 + 3209))
    {
      sub_297E79810(a1, *(a1 + 2960), 1u);
      a2 = 0;
      v18 = *(a1 + 3209) + 1;
    }

    else
    {
      a2 = 0;
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigHsuBrResp: Nci Read request failed");
    v23 = *(a1 + 3209);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "pLibContext->tPlatformInfo.bBrRetryCnt");
    a2 = 255;
  }

  *(a1 + 3209) = v18;
LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigHsuBrResp");
  return a2;
}

uint64_t sub_297EF2928(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReApplyHsuBrCmd");
  if (a1)
  {
    if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1)
    {
      v2 = 0;
    }

    else
    {
      v4 = sub_297E55EF8(a1, *(a1 + 2960));
      if (*(a1 + 3104) == 2 && v4 == 5)
      {
        v2 = 0;
        *(a1 + 3209) = 0;
      }

      else
      {
        v2 = sub_297F05D1C(*(a1 + 3088), *(a1 + 2996), sub_297E5BA84, a1);
      }
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_ReApplyHsuBrCmd: Invalid LIBNFC context!!");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReApplyHsuBrCmd");
  return v2;
}

uint64_t sub_297EF2A1C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigHsuBrSeqComplete");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3104) = 2;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigHsuBrSeqComplete: NFCC Config Baudrate failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_ConfigHsuBrSeqComplete:Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigHsuBrSeqComplete");
  return a2;
}

uint64_t sub_297EF2AF0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StartRfFieldOn");
  if (a1)
  {
    *(a1 + 6052) = 1;
    v2 = sub_297F08690(*(a1 + 3088), 1, sub_297E5BA84, a1);
    if (v2 != 13)
    {
      *(a1 + 6052) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_AntennaTestCmd:Invalid Context");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StartRfFieldOn");
  return v2;
}

uint64_t sub_297EF2BB8(uint64_t a1)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_AntennaTestCmd");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetAntennaTestParams");
    LOBYTE(v6) = v6 & 0xFE | *(a1 + 6036) & 1;
    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetAntennaTestParams");
    v3 = *(a1 + 9792);
    phOsalNfc_Delay();
    v4 = sub_297F08538(*(a1 + 3088), &v6, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 255;
    phOsalNfc_SetMemory();
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_AntennaTestCmd:Invalid Context");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_AntennaTestCmd");
  return v4;
}

uint64_t sub_297EF2CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_AntennaTestResp");
  if (a1)
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (!a2 && a3 && (v7 = *a3) != 0 && *(a3 + 8) == 3)
    {
      if (*v7)
      {
        v8 = "phLibNfc_AntennaTestResp: received failed status";
      }

      else
      {
        if (*(a1 + 6036))
        {
          a2 = 0;
          v10 = v7[1];
          *(a1 + 6048) = v10;
          *(a1 + 6048) = v10 | (v7[2] << 8);
          *(a1 + 6044) |= 1u;
          goto LABEL_10;
        }

        v8 = "phLibNfc_AntennaTestResp: no of configs none";
      }
    }

    else
    {
      v8 = "phLibNfc_AntennaTestResp: Antenna Self Test failed";
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v8);
    a2 = 255;
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_AntennaTestResp");
  return a2;
}

uint64_t sub_297EF2E0C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StopRfFieldOn");
  if (a1)
  {
    v2 = sub_297F08690(*(a1 + 3088), 0, sub_297E5BA84, a1);
    if (v2 == 13)
    {
      *(a1 + 6052) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_AntennaTestCmd:Invalid Context");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StopRfFieldOn");
  return v2;
}

uint64_t sub_297EF2EC4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_AntennaTestSeqComplete");
  if (a1)
  {
    if (a2 == 143)
    {
      v4 = 143;
LABEL_21:
      v5 = sub_297E4F450(*(a1 + 9784), 118, v4, 0, 0);
      goto LABEL_22;
    }

    if (!*(a1 + 6052) || *(a1 + 2960) == &qword_2A1A936C0)
    {
      if (a2)
      {
        v9 = "phLibNfc_AntennaTestSeqComplete: Failed status received from NFCC";
      }

      else
      {
        if (*(a1 + 6036) & 1) == 0 || (*(a1 + 6044))
        {
          v4 = 0;
          goto LABEL_21;
        }

        v9 = "phLibNfc_AntennaTestSeqComplete:TxLDO Current requested,same is not received";
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, v9);
    }

    else
    {
      *(a1 + 2960) = &qword_2A1A936C0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v6 = qword_2A1A936C0;
      if (qword_2A1A936C0)
      {
        v6 = 0;
        v7 = &qword_2A1A936D0;
        do
        {
          ++v6;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }

      *(a1 + 2953) = v6;
      if (sub_297E5588C(a1, 0, 0) == 13)
      {
        v5 = 13;
        goto LABEL_22;
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_AntennaTestSeqComplete: could not start RF Off sequence");
    }

    v4 = 255;
    goto LABEL_21;
  }

  sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_AntennaTestSeqComplete: Invalid LibNfc Ctx received from NCI");
  v5 = 255;
LABEL_22:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_AntennaTestSeqComplete");
  return v5;
}

uint64_t sub_297EF305C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  bzero(v15, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigLoggingCmd");
  if (a1)
  {
    v4 = *(a1 + 104);
    v15[1] = 0x10000;
    v16 = 16;
    v18 = 0;
    v5 = v4 >> 4;
    if ((v4 & 0x5E7F) != 0x5E7F)
    {
      if ((v4 & 0x5E7F) != 0)
      {
        v9 = *(a1 + 2992);
        v7 = *(a1 + 2985);
        v10 = vand_s8(vand_s8(vdup_n_s16(v4 >> 3), 0x200010000400080), vshl_u16(vdup_n_s16((*(a1 + 2986) | v7 | v9)), 0x9000800060007));
        v6 = v10.i32[0] | v10.i32[1] | (v4 >> 1) & 0x3C | ((*&v10 | HIDWORD(*&v10)) >> 16) | v5 & (v9 << 10) & 0x400 | v4 & 3;
      }

      else
      {
        LOWORD(v6) = 0;
        v7 = *(a1 + 2985);
      }

LABEL_12:
      v17 = v6;
      if (*(a1 + 2984) == 1)
      {
        v16 = 1040;
        v18 = BYTE1(v4) & 1;
        if (v7 == 1)
        {
          goto LABEL_22;
        }

        v12 = *(a1 + 2986);
      }

      else
      {
        if (v7 == 1)
        {
          v16 = 1040;
          v18 = BYTE1(v4) & 1;
          goto LABEL_22;
        }

        v12 = *(a1 + 2986);
        if (v12 != 1 && *(a1 + 2992) != 1)
        {
          goto LABEL_21;
        }

        v16 = 1040;
        v18 = BYTE1(v4) & 1;
      }

      if (v12 == 1)
      {
        goto LABEL_22;
      }

LABEL_21:
      if (*(a1 + 2992) != 1)
      {
LABEL_23:
        a2 = sub_297E64020(*(a1 + 3088), v15, sub_297E5BA84, a1);
        goto LABEL_24;
      }

LABEL_22:
      v17 = v6 & 0xF7FF | v5 & 0x800;
      goto LABEL_23;
    }

    v7 = *(a1 + 2985);
    v8 = *(a1 + 2985);
    if (*(a1 + 2984) != 1)
    {
      if (v7 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 2985);
        if (*(a1 + 2986) != 1)
        {
          v8 = *(a1 + 2985);
          if (*(a1 + 2992) != 1)
          {
            LOWORD(v6) = 3;
            goto LABEL_12;
          }
        }
      }
    }

    v11 = *(a1 + 2986) | v8 | *(a1 + 2992);
    LOWORD(v6) = (v11 << 7) | 0x1F | ((*(a1 + 2992) & 1) << 10) | ((v11 & 1) << 6) | ((v11 & 1) << 8) | (32 * (v11 & 1)) | ((v11 & 1) << 9);
    goto LABEL_12;
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigLoggingCmd");
  v13 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_297EF32FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMeasuredFsRssiCfgCmd");
  if (a1)
  {
    if ((*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1) && (*(a1 + 104) & 3) != 0)
    {
      v4 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      *(a1 + 3612) |= 0x10000u;
      *(a1 + 5144) |= 0x40000u;
      a2 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
    }
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMeasuredFsRssiCfgCmd");
  return a2;
}

uint64_t sub_297EF33E8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMeasuredFsRssiCfgProc");
  if (!a1)
  {
    v4 = "phLibNfc_GetMeasuredFsRssiCfgProc:Context is Null";
    v5 = 2;
    v6 = 0;
LABEL_14:
    sub_297E4E0B0(v5, v6, 4u, 1u, v4);
    v7 = 255;
    goto LABEL_15;
  }

  if (a2)
  {
    v4 = "phLibNfc_GetMeasuredFsRssiCfgProc: Status Failed!";
LABEL_13:
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_14;
  }

  if ((*(a1 + 2985) != 1 || *(a1 + 5343) != 4) && (*(a1 + 2986) != 1 || *(a1 + 5343) != 5) && (*(a1 + 2992) != 1 || *(a1 + 5343) != 8))
  {
    v4 = "phLibNfc_GetMeasuredFsRssiCfgProc: Invalid length received!";
    goto LABEL_13;
  }

  v7 = 0;
  *(a1 + 354) = *(a1 + 5331);
  *(a1 + 352) = *(a1 + 5329);
LABEL_15:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMeasuredFsRssiCfgProc");
  return v7;
}

uint64_t sub_297EF3500(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigLoggingSeqComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigLoggingSeqComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigLoggingSeqComp");
  return a2;
}

uint64_t sub_297EF35AC(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  bzero(v6, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigAssertLoggingCmd");
  if (a1)
  {
    v2 = *(a1 + 32);
    v6[1] = 0x10000;
    v6[384] = 32;
    v7 = v2;
    v3 = sub_297E64020(*(a1 + 3088), v6, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigAssertLoggingCmd");
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_297EF36B4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigAssertLoggingSeqComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConfigAssertLoggingSeqComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigAssertLoggingSeqComp");
  return a2;
}

uint64_t sub_297EF3760(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_TriggerRfOnNtf");
  if (a1)
  {
    v2 = sub_297F0888C(*(a1 + 3088), *(a1 + 766), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_TriggerRfOnNtf:Invalid Context");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_TriggerRfOnNtf");
  return v2;
}

uint64_t sub_297EF3808(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_TriggerRfOnNtfProcess");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_TriggerRfOnNtfProcess");
  return a2;
}

uint64_t sub_297EF3870(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_TriggerRfSeqComplete");
  if (a1)
  {
    a2 = sub_297E4F450(*(a1 + 9784), 118, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_TriggerRfSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_TriggerRfSeqComplete");
  return a2;
}

uint64_t sub_297EF3910(uint64_t a1)
{
  v6 = 0;
  v5 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetPageCountCmd");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    LOBYTE(v5) = 0;
    v3 = sub_297F098C8(*(a1 + 3088), &v5, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetPageCountCmd");
  return v3;
}

uint64_t sub_297EF39E0(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetPageCountProc");
  if (a1)
  {
    if (!a2)
    {
      if (a3)
      {
        v6 = *a3;
        if (*a3)
        {
          if (*v6 || *(a3 + 8) != 5)
          {
            v9 = "phLibNfc_GetPageCountProc: received failed status or invalid response length";
          }

          else
          {
            v7 = v6[3];
            *(a1 + 5880) = v7;
            v8 = v7 | (v6[4] << 8);
            *(a1 + 5880) = v8;
            if ((v8 - 65) >= 0xFFFFFFC0)
            {
              if (!*(a1 + 5888))
              {
                v14 = *(a1 + 9792);
                Memory_Typed = phOsalNfc_GetMemory_Typed();
                *(a1 + 5888) = Memory_Typed;
                if (!Memory_Typed)
                {
                  v9 = "phLibNfc_GetPageCountProc: Failed to allocate memory";
                  goto LABEL_11;
                }

                v16 = *(a1 + 9792);
                v17 = *(a1 + 5880);
                phOsalNfc_SetMemory();
              }

              v12 = 0;
              goto LABEL_13;
            }

            v9 = "phLibNfc_GetPageCountProc: Total page count is zero or exceeded maximum number of flash page count ";
          }

LABEL_11:
          v11 = a1 + 9792;
          v10 = 1;
          goto LABEL_12;
        }
      }
    }
  }

  v9 = "phLibNfc_GetPageCountProc: Get page count operation failed";
  v10 = 2;
  v11 = a1;
LABEL_12:
  sub_297E4E0B0(v10, v11, 4u, 1u, v9);
  v12 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetPageCountProc");
  return v12;
}

uint64_t sub_297EF3B30(uint64_t a1)
{
  v6 = 0;
  v5 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetEraseCounterCmd");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    LOBYTE(v5) = 1;
    HIWORD(v5) = *(a1 + 5882);
    v6 = 32;
    if (*(a1 + 5880) - HIWORD(v5) <= 31)
    {
      v6 = *(a1 + 5880) - HIWORD(v5);
    }

    v3 = sub_297F098C8(*(a1 + 3088), &v5, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetEraseCounterCmd");
  return v3;
}

uint64_t sub_297EF3C28(uint64_t a1, int a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetEraseCounterProc");
  if (!a1 || a2 || !a3 || (v6 = *a3) == 0)
  {
    v13 = "phLibNfc_GetEraseCounterProc: Get erase counter operation failed";
    v14 = 2;
    v15 = a1;
LABEL_17:
    sub_297E4E0B0(v14, v15, 4u, 1u, v13);
    v12 = 255;
    goto LABEL_18;
  }

  if (*v6 || (v7 = *(a3 + 2), (v7 - 9) > 0x7D))
  {
    v13 = "phLibNfc_GetEraseCounterProc: received failed status or invalid response length";
LABEL_16:
    v15 = a1 + 9792;
    v14 = 1;
    goto LABEL_17;
  }

  v8 = *(v6 + 1);
  if (v8 != *(a1 + 5882) || (v9 = *(v6 + 3), v9 > *(a1 + 5880) - v8) || v7 - 5 != 4 * v9)
  {
    v13 = "phLibNfc_GetEraseCounterProc: Invalid data received from NFCC";
    goto LABEL_16;
  }

  if (!*(a1 + 5888))
  {
    v13 = "phLibNfc_GetEraseCounterProc: Invalid memory";
    goto LABEL_16;
  }

  v10 = *(a1 + 9792);
  phOsalNfc_MemCopy();
  v11 = *(a1 + 5882) + v9;
  *(a1 + 5882) = v11;
  if (*(a1 + 5880) > v11)
  {
    sub_297E79810(a1, *(a1 + 2960), 1u);
  }

  v12 = 0;
LABEL_18:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetEraseCounterProc");
  return v12;
}

uint64_t sub_297EF3D94(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, sizeof(v24));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetEraseCounterSeqComplete");
  if (a1)
  {
    v4 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetEraseCounterSeqComplete: Failed");
      v5 = 0;
      v6 = 119;
    }

    else
    {
      LODWORD(v24[0]) = 10;
      WORD4(v24[0]) = *(a1 + 5882);
      v8 = WORD4(v24[0]);
      if (WORD4(v24[0]))
      {
        v9 = 0;
        v10 = *(a1 + 5888);
        v11 = 12;
        do
        {
          if (v9 >= 0xFFFEu)
          {
            v12 = v9;
          }

          else
          {
            v12 = v9 + 1;
          }

          if (v9 >= 0xFFFEu)
          {
            LOWORD(v9) = 0;
          }

          v13 = *(v10 + v9);
          v5 = v24;
          *(v24 + v11) = v13;
          if (v12 >= 0xFFFEu)
          {
            v14 = v12;
          }

          else
          {
            v14 = v12 + 1;
          }

          if (v12 >= 0xFFFEu)
          {
            LOWORD(v12) = 0;
          }

          v15 = v13 | (*(v10 + v12) << 8);
          *(v24 + v11) = v15;
          if (v14 >= 0xFFFEu)
          {
            v16 = v14;
          }

          else
          {
            v16 = v14 + 1;
          }

          if (v14 >= 0xFFFEu)
          {
            LOWORD(v14) = 0;
          }

          v17 = v15 | (*(v10 + v14) << 16);
          *(v24 + v11) = v17;
          if (v16 >= 0xFFFEu)
          {
            v18 = 0;
          }

          else
          {
            v18 = v16;
          }

          v19 = *(v10 + v18);
          if (v16 >= 0xFFFEu)
          {
            v9 = v16;
          }

          else
          {
            v9 = v16 + 1;
          }

          *(v24 + v11) = v17 | (v19 << 24);
          v11 += 4;
          --v8;
        }

        while (v8);
      }

      else
      {
        v5 = v24;
      }

      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, v5, 0);
    if (*(a1 + 5888))
    {
      v20 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 5888) = 0;
    }

    v21 = *(a1 + 9792);
    phOsalNfc_SetMemory();
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetEraseCounterSeqComplete:  Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetEraseCounterSeqComplete");
  v22 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297EF3FC8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetProhibitTimerStsCmd");
  if (a1)
  {
    v2 = sub_297F099F4(*(a1 + 3088), 3, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetProhibitTimerStsCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetProhibitTimerStsCmd");
  return v2;
}

uint64_t sub_297EF4070(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(v13, 0, sizeof(v13));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetProhibitTimerStsSeqComplete");
  if (a1 && a3)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetProhibitTimerStsSeqComplete: Failed");
      v6 = 0;
      v7 = 119;
    }

    else
    {
      v9 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v10 = *a3;
      if (v10 <= 0xB && ((1 << v10) & 0xC01) != 0 || v10 == 255)
      {
        a2 = 0;
        LODWORD(v13[0]) = 11;
        DWORD2(v13[0]) = v10;
        HIDWORD(v13[0]) = *(a3 + 2);
        v6 = v13;
        v7 = 118;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetProhibitTimerStsSeqComplete: Failed, Received unknown Timer ID");
        v6 = 0;
        v7 = 119;
        a2 = 255;
      }
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, a2, v6, 0);
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetProhibitTimerStsSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetProhibitTimerStsSeqComplete");
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297EF4238(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StartProhibitTimerCmd");
  if (a1)
  {
    v2 = sub_297F099F4(*(a1 + 3088), 1, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_StartProhibitTimerCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StartProhibitTimerCmd");
  return v2;
}

uint64_t sub_297EF42E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StopProhibitTimerCmd");
  if (a1)
  {
    v2 = sub_297F099F4(*(a1 + 3088), 2, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_StopProhibitTimerCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StopProhibitTimerCmd");
  return v2;
}

uint64_t sub_297EF4388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
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
  v13 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetPowerTrackDataSeqComplete");
  if (a1 && a3)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetPowerTrackDataSeqComplete: Failed");
      v6 = 0;
      v7 = 119;
    }

    else
    {
      v9 = *(a1 + 9792);
      v6 = &v13;
      phOsalNfc_SetMemory();
      LODWORD(v13) = 0;
      *(&v13 + 1) = *a3;
      LODWORD(v14) = *(a3 + 8);
      BYTE4(v14) = *(a3 + 12);
      *(&v14 + 5) = *(a3 + 13);
      *(&v14 + 1) = *(a3 + 16);
      v10 = *(a3 + 24);
      DWORD2(v15) = 0;
      v7 = 118;
      *&v15 = v10;
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, a2, v6, 0);
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetPowerTrackDataSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetPowerTrackDataSeqComplete");
  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297EF4520(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSwio1VoltageCmd");
  if (a1)
  {
    *(a1 + 6077) = 1;
    v2 = sub_297F0969C(*(a1 + 3088), 1, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSwio1VoltageCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSwio1VoltageCmd");
  return v2;
}

uint64_t sub_297EF45D4(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSwioPadVoltageProc");
  if (!a1)
  {
    v7 = "phLibNfc_GetSwioPadVoltageProc: Invalid parameter, Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
    goto LABEL_10;
  }

  if (a2 || !a3 || (v6 = *a3) == 0)
  {
    v7 = "phLibNfc_GetSwioPadVoltageProc: read voltage of SWIO operation failed";
    goto LABEL_8;
  }

  if (*v6)
  {
    v7 = "phLibNfc_GetSwioPadVoltageProc: received failed status";
LABEL_8:
    v8 = a1 + 9792;
    v9 = 1;
LABEL_10:
    sub_297E4E0B0(v9, v8, 4u, 1u, v7);
    goto LABEL_11;
  }

  v12 = *(a1 + 6077);
  if (v12 == 2)
  {
    v10 = 0;
    v14 = v6[1];
    *(a1 + 5618) = v14;
    *(a1 + 5618) = v14 | (v6[2] << 8);
    goto LABEL_12;
  }

  if (v12 == 1)
  {
    v10 = 0;
    v13 = v6[1];
    *(a1 + 5616) = v13;
    *(a1 + 5616) = v13 | (v6[2] << 8);
    goto LABEL_12;
  }

  sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSwioPadVoltageProc: Unknown SWIO pad no");
LABEL_11:
  v10 = 255;
LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSwioPadVoltageProc");
  return v10;
}

uint64_t sub_297EF4718(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSwio2VoltageCmd");
  if (a1)
  {
    *(a1 + 6077) = 2;
    v2 = sub_297F0969C(*(a1 + 3088), 2, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSwio2VoltageCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSwio2VoltageCmd");
  return v2;
}

uint64_t sub_297EF47CC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSwioPadVoltageSeqComplete");
  if (a1)
  {
    v4 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSwioPadVoltageSeqComplete: Failed");
      v5 = 119;
    }

    else
    {
      LODWORD(v10[0]) = 8;
      v7 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v5 = 118;
    }

    v6 = sub_297E4F450(*(a1 + 9784), v5, a2, v10, 0);
    *(a1 + 6077) = 0;
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSwioPadVoltageSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSwioPadVoltageSeqComplete");
  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_297EF4940(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTrimVerCmd");
  if (a1)
  {
    v2 = sub_297F097B8(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSwio1VoltageCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTrimVerCmd");
  return v2;
}

uint64_t sub_297EF49E4(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTrimVerProc");
  if (a1)
  {
    if (!a2 && a3 && (v6 = *a3) != 0)
    {
      if (!*v6)
      {
        v10 = 0;
        v12 = v6[1];
        *(a1 + 5616) = v12;
        *(a1 + 5616) = v12 | (v6[2] << 8);
        goto LABEL_11;
      }

      v7 = "phLibNfc_GetTrimVerProc: received failed status";
    }

    else
    {
      v7 = "phLibNfc_GetTrimVerProc: Get Trim version operation failed";
    }

    v8 = a1 + 9792;
    v9 = 1;
  }

  else
  {
    v7 = "phLibNfc_GetTrimVerProc: Invalid parameter, Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
  }

  sub_297E4E0B0(v9, v8, 4u, 1u, v7);
  v10 = 255;
LABEL_11:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTrimVerProc");
  return v10;
}

uint64_t sub_297EF4AD0(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(v9, 0, sizeof(v9));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetTrimVerSeqComplete");
  if (a1)
  {
    v4 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetTrimVerSeqComplete: Failed");
      v5 = 119;
    }

    else
    {
      LODWORD(v9[0]) = 9;
      WORD4(v9[0]) = *(a1 + 5616);
      v5 = 118;
    }

    v6 = sub_297E4F450(*(a1 + 9784), v5, a2, v9, 0);
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetTrimVerSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetTrimVerSeqComplete");
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_297EF4C28(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSmbLogCmd");
  if (a1)
  {
    v2 = sub_297F09DD8(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSmbLogCmd");
  return v2;
}

uint64_t sub_297EF4CCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
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
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSmbLogProcComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSmbLogProcComplete: Failed");
      v6 = 119;
    }

    else
    {
      v8 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      LODWORD(v16) = 1;
      if (a3 && *(a3 + 2) && *a3)
      {
        LODWORD(v17) = *(a3 + 2);
        v9 = *(a1 + 9792);
        *(&v16 + 1) = phOsalNfc_GetMemory_Typed();
        if (*(&v16 + 1))
        {
          v10 = *(a1 + 9792);
          v11 = *a3;
          v12 = *(a3 + 2);
          phOsalNfc_MemCopy();
        }
      }

      else
      {
        LODWORD(v17) = 0;
        *(&v16 + 1) = 0;
      }

      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, &v16, 0);
    if (*(&v16 + 1))
    {
      v13 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(&v16 + 1) = 0;
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSmbLogProcComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSmbLogProcComplete");
  v14 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297EF4E8C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetDbgLogCmd");
  if (a1)
  {
    v4 = *(a1 + 5608);
    switch(v4)
    {
      case 5:
        v5 = *(a1 + 3088);
        v6 = 0;
        goto LABEL_9;
      case 13:
        v5 = *(a1 + 3088);
        v6 = 2;
        goto LABEL_9;
      case 12:
        v5 = *(a1 + 3088);
        v6 = 1;
LABEL_9:
        a2 = sub_297F09FF8(v5, v6, sub_297E5BA84, a1);
        break;
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetDbgLogCmd : Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetDbgLogCmd");
  return a2;
}

uint64_t sub_297EF4F8C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetHlmDbgLogProcComplete");
  if (!a1)
  {
    v7 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSmbLogProcComplete: Invalid LibNfc Ctx");
    goto LABEL_13;
  }

  v6 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 5608) = 5;
  if (a2 || !a3)
  {
    if (a3)
    {
      v8 = a2;
    }

    else
    {
      v8 = 255;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetHlmDbgLogProcComplete: Failed");
    *(a1 + 5624) = 0;
    v9 = *(a1 + 9784);
    v10 = a1 + 5608;
    v11 = 119;
    v12 = v8;
    goto LABEL_12;
  }

  *(a1 + 5616) = *a3;
  *(a1 + 5617) = *(a3 + 1);
  v14 = *(a3 + 8);
  LODWORD(v15) = *(a3 + 4);
  if (!v15)
  {
    v9 = *(a1 + 9784);
    v10 = a1 + 5608;
    v11 = 118;
    v12 = 0;
LABEL_12:
    v7 = sub_297E4F450(v9, v11, v12, v10, 0);
    goto LABEL_13;
  }

  sub_297EF8D5C(a1, 9, &v14);
  v7 = 0;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetHlmDbgLogProcComplete");
  return v7;
}

uint64_t sub_297EF5104(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetLpcdFalseDetCntCmd");
  if (a1)
  {
    v2 = sub_297F09EE8(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetLpcdFalseDetCntCmd");
  return v2;
}

uint64_t sub_297EF51A8(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetLpcdFalseDetCntProc");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetLpcdFalseDetCntProc: Libnfc Context is Invalid");
LABEL_7:
    v6 = 255;
    goto LABEL_8;
  }

  if (a2 || !a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_GetLpcdFalseDetCntProc: operation failed");
    goto LABEL_7;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetLpcdFalseDetCntProc: operation success");
  v6 = 0;
LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetLpcdFalseDetCntProc");
  return v6;
}

uint64_t sub_297EF5288(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 0, sizeof(v15));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetLpcdFalseDetCntComplete");
  if (a1)
  {
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_GetLpcdFalseDetCntComplete: Failed");
      v10 = 255;
      v11 = 119;
    }

    else
    {
      v6 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      LODWORD(v15[0]) = 3;
      v7 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v8 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v9 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v10 = 0;
      v11 = 118;
    }

    v12 = sub_297E4F450(*(a1 + 9784), v11, v10, v15, 0);
  }

  else
  {
    v12 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetLpcdFalseDetCntComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetLpcdFalseDetCntComplete");
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_297EF542C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetVasCodeCfgCmd");
  if (a1)
  {
    v2 = sub_297F0A54C(*(a1 + 3088), 4, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetVasCodeCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetVasCodeCfgCmd");
  return v2;
}

uint64_t sub_297EF54D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetVasCodeCfgComplete");
  if (a1)
  {
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetVasCodeCfgComplete: Failed");
      a3 = 0;
      v6 = 119;
    }

    else
    {
      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, a3, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSetRfTransRegCfgComplete: Invalid LibNfc Ctx");
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetVasCodeCfgComplete");
  return v7;
}

uint64_t sub_297EF55B8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSuicaSysCodeCmd");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x10000u;
    *(a1 + 5144) |= 0x8000u;
    v3 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSuicaSysCodeCmd : Libnfc Context is Invalid");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSuicaSysCodeCmd");
  return v3;
}

uint64_t sub_297EF568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSuicaSysCodeComplete");
  if (a1)
  {
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSuicaSysCodeComplete: Failed");
      v7 = 119;
    }

    else
    {
      v6 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      *(a1 + 5608) = 6;
      *(a1 + 5616) = *(a3 + 1662);
      *(a1 + 5617) = *(a3 + 1663);
      *(a1 + 5618) = *(a3 + 1664);
      *(a1 + 5620) = *(a3 + 1666);
      v7 = 118;
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, a2, a1 + 5608, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSetRfTransRegCfgComplete: Invalid LibNfc Ctx");
    v8 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSuicaSysCodeComplete");
  return v8;
}

uint64_t sub_297EF57B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSpmiDbgProcComplete");
  if (a1)
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSpmiDbgProcComplete: Failed");
      v7 = *(a1 + 9784);
      v8 = a1 + 5608;
      v9 = 119;
      v10 = a2;
    }

    else
    {
      *(a1 + 5616) = *(a3 + 8);
      *(a1 + 5624) = *(a3 + 4);
      v7 = *(a1 + 9784);
      v8 = a1 + 5608;
      v9 = 118;
      v10 = 0;
    }

    v11 = sub_297E4F450(v7, v9, v10, v8, 0);
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSpmiDbgProcComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSpmiDbgProcComplete");
  return v11;
}

uint64_t sub_297EF58CC(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  bzero(v8, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetSmbCfgCmd");
  if (a1)
  {
    v9 = 0x4000;
    v10 = 1;
    v2 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    if (*(a1 + 5472) == 1)
    {
      v12 = 0;
      v10 |= 6u;
      v3 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v10 |= 8u;
      v4 = *(a1 + 9792);
      phOsalNfc_MemCopy();
    }

    else
    {
      v11 = 0;
    }

    v5 = sub_297E64020(*(a1 + 3088), v8, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetSmbCfgCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetSmbCfgCmd");
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297EF5A64(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetSmbCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_SetSmbCfgComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetSmbCfgComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetSmbCfgComplete");
  return v5;
}

uint64_t sub_297EF5B34(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  bzero(v5, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetHLMCfgCmd");
  if (a1)
  {
    v5[1] = 0x10000;
    v5[384] = 4096;
    v6 = *(a1 + 5472);
    v2 = sub_297E64020(*(a1 + 3088), v5, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetHLMCfgCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetHLMCfgCmd");
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297EF5C3C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_HLMCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_HLMCfgComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_HLMCfgComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_HLMCfgComplete");
  return v5;
}

uint64_t sub_297EF5D0C(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(v8, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetMultiTagCfgCmd");
  if (!a1)
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetMultiTagCfgCmd : Libnfc Context is Invalid");
    goto LABEL_17;
  }

  v8[1] = 0x10000;
  v8[384] = 0x20000;
  v2 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v3 = *(a1 + 5472);
  if ((v3 & 8) != 0)
  {
    v9 |= 1u;
    if ((v3 & 1) == 0)
    {
LABEL_4:
      if ((v3 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 5472) & 1) == 0)
  {
    goto LABEL_4;
  }

  v9 |= 2u;
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 |= 4u;
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 |= 8u;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 |= 0x10u;
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    v9 |= 0x40u;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v9 |= 0x80u;
    goto LABEL_10;
  }

LABEL_23:
  v9 |= 0x20u;
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (v3 < 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v10 = *(a1 + 5476);
  if (*(a1 + 5483) == 1)
  {
    v11 |= 1u;
  }

  v12 = *(a1 + 5484);
  if (*(a1 + 5486) <= 0x9F6u)
  {
    v4 = *(a1 + 5486) / 0xAu;
  }

  else
  {
    v4 = -1;
  }

  v13 = v4;
  v14 = 8;
  v5 = sub_297E64020(*(a1 + 3088), v8, sub_297E5BA84, a1);
LABEL_17:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetMultiTagCfgCmd");
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297EF5F20(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetClearMultiTagCfgComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_SetClearMultiTagCfgComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetClearMultiTagCfgComp: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetClearMultiTagCfgComp");
  return v5;
}

uint64_t sub_297EF5FF0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMultiTagInfoCmd");
  if (a1)
  {
    v2 = sub_297F05F30(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetMultiTagInfoCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMultiTagInfoCmd");
  return v2;
}

uint64_t sub_297EF6094(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMultiTagInfoProc");
  if (!a1)
  {
    v7 = "phLibNfc_GetMultiTagInfoProc : Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
    goto LABEL_11;
  }

  if (a2 || !a3 || (v6 = *a3) == 0 || !*(a3 + 8))
  {
    v7 = "phLibNfc_GetMultiTagInfoProc: operation failed";
    v8 = a1 + 9792;
    goto LABEL_9;
  }

  if (*v6)
  {
    v7 = "phLibNfc_GetMultiTagInfoProc: received failed status";
    v8 = a1 + 9792;
LABEL_9:
    v9 = 1;
LABEL_11:
    sub_297E4E0B0(v9, v8, 4u, 1u, v7);
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetMultiTagInfoProc: Get Multi-tag info response received with success");
  v12 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 5608) = 7;
  *(a1 + 5616) = v6[1];
  v25 = 3;
  v13 = v6[2];
  *(a1 + 5617) = v13;
  v14 = 5 * v13 + 4;
  if (v13)
  {
    if (*(a3 + 8) >= v14)
    {
      v17 = *(a1 + 9792);
      *(a1 + 5624) = phOsalNfc_GetMemory_Typed();
      v18 = *(a1 + 9792);
      v19 = *(a1 + 5617);
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v25, *(a1 + 5617), 0, *(a1 + 5624), a3);
      v10 = 0;
      v16 = v25;
      goto LABEL_20;
    }

    *(a1 + 5624) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetMultiTagInfoProc: Tag of interest detected but partial info received");
    v15 = *(a1 + 5617);
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "bNumTags");
    v10 = 255;
  }

  else
  {
    v10 = 0;
    *(a1 + 5624) = 0;
  }

  v16 = 3;
LABEL_20:
  v25 = v16 + 1;
  v20 = v6[v16];
  *(a1 + 5632) = v20;
  if (!v20)
  {
    *(a1 + 5640) = 0;
    goto LABEL_13;
  }

  if (*(a3 + 8) >= (v20 + v14))
  {
    v22 = *(a1 + 9792);
    *(a1 + 5640) = phOsalNfc_GetMemory_Typed();
    v23 = *(a1 + 9792);
    v24 = *(a1 + 5632);
    phOsalNfc_SetMemory();
    sub_297EFA3B0(a1, &v25, *(a1 + 5632), 1, *(a1 + 5640), a3);
    goto LABEL_13;
  }

  *(a1 + 5640) = 0;
  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetMultiTagInfoProc: Tag of Not interest detected but partial info received");
  v21 = *(a1 + 5632);
  sub_297E50EBC(1, a1 + 9792, 4u, 1u, "bNumTags");
LABEL_12:
  v10 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMultiTagInfoProc");
  return v10;
}

uint64_t sub_297EF6370(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetMultiTagInfoComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetMultiTagInfoComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, a1 + 5608, 0);
    if (*(a1 + 5624))
    {
      v6 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 5624) = 0;
    }

    if (*(a1 + 5640))
    {
      v7 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 5640) = 0;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetMultiTagInfoComp: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetMultiTagInfoComp");
  return v5;
}

uint64_t sub_297EF6474(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ClearMultiTagInfoCmd");
  if (a1)
  {
    v2 = sub_297F06050(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_ClearMultiTagInfoCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ClearMultiTagInfoCmd");
  return v2;
}

uint64_t sub_297EF6518(uint64_t a1)
{
  v4 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestMode");
  if (a1)
  {
    v2 = sub_297F04A7C(*(a1 + 3000), &v4, sub_297E5588C, a1, 0, 0);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigTestMode");
  return v2;
}

uint64_t sub_297EF65D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeRspCb");
  if (a1 && a3)
  {
    v6 = a3[1];
    v7 = a2;
    if (v6 && (v7 = *v6, v7 == 44))
    {
      sub_297E79810(a1, &qword_2A1A93920, 1u);
    }

    else if (!v7)
    {
      v8 = *a3;
      *(a1 + 3088) = *a3;
      if (sub_297EA79F8(a1, v8) || !sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136)))
      {
        a2 = 255;
      }

      else if (*(a1 + 9752) == 1)
      {
        sub_297E79734(a1, *(a1 + 2960), 1);
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeRspCb");
  return a2;
}

uint64_t sub_297EF66C8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      a2 = sub_297F06170(*(a1 + 3088), 38, sub_297EFCAB8, a1);
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to Register phLibNfc_PropMfwRawCtrlMsgNtfHandler");
      }

      v4 = 118;
    }

    sub_297E4F450(*(a1 + 3000), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeComplete");
  return a2;
}

uint64_t sub_297EF6798(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetVasCodeCfgCmd");
  if (a1)
  {
    v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetVasCodeCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetVasCodeCfgCmd");
  return v2;
}

uint64_t sub_297EF6844(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetVasCodeCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_SetVasCodeCfgComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetVasCodeCfgComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetVasCodeCfgComplete");
  return v5;
}

uint64_t sub_297EF6914(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RFParaUpdateCmd");
  if (a1)
  {
    v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_RFParaUpdateCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RFParaUpdateCmd");
  return v2;
}

uint64_t sub_297EF69C0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RFParaUpdateComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_RFParaUpdateComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_RFParaUpdateComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RFParaUpdateComplete");
  return v5;
}

uint64_t sub_297EF6A90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetSuicaEntrySysCodeCmd");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x10000u;
    *(a1 + 5144) |= 0x8000u;
    *(a1 + 5270) = *(a1 + 5472);
    *(a1 + 5272) = *(a1 + 5474);
    v3 = sub_297E64020(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetSuicaEntrySysCodeCmd : Libnfc Context is Invalid");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetSuicaEntrySysCodeCmd");
  return v3;
}

uint64_t sub_297EF6B78(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetSuicaEntrySysCodeComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_SetSuicaEntrySysCodeComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetSuicaEntrySysCodeComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetSuicaEntrySysCodeComplete");
  return v5;
}

uint64_t sub_297EF6C48(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeOff");
  if (a1)
  {
    v2 = sub_297F080D4(*(a1 + 3088), 0, sub_297E5588C, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeOff");
  return v2;
}

uint64_t sub_297EF6CF0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeOffRspCb");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_ConfigTestModeOffRspCb: Failed");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeOffRspCb");
  return a2;
}

uint64_t sub_297EF6D70(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeOffComplete");
  if (a1)
  {
    sub_297E4F450(*(a1 + 3000), 118, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeOffComplete");
  return a2;
}

uint64_t sub_297EF6DEC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgCmd");
  if (a1)
  {
    v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetChipScopeLogCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgCmd");
  return v2;
}

uint64_t sub_297EF6E98(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_SetChipScopeLogCfgComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetChipScopeLogCfgComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgComplete");
  return v5;
}

uint64_t sub_297EF6F68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RawCtrlMsgTrnscvCmd");
  if (a1)
  {
    v5 = sub_297F0A68C(*(a1 + 3088), *(a1 + 6072), sub_297E5BA84, a3, a1);
    if (v5 != 13)
    {
      sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_RawCtrlMsgTrnscvCmd: Sending command failed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_RawCtrlMsgTrnscvCmd: Libnfc Context is Invalid");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RawCtrlMsgTrnscvCmd");
  return v5;
}

uint64_t sub_297EF703C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RawCtrlMsgTrnscvComplete");
  if (a1)
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_RawCtrlMsgTrnscvComplete: Failed");
      v7 = 119;
    }

    else
    {
      if (a3)
      {
        LODWORD(v11) = *(a3 + 2);
        if (v11)
        {
          v10 = *a3;
        }

        else
        {
          v10 = 0;
        }
      }

      v7 = 118;
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, a2, &v10, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_RawCtrlMsgTrnscvComplete: Invalid LibNfc Ctx");
    v8 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RawCtrlMsgTrnscvComplete");
  return v8;
}

uint64_t sub_297EF7158(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetCWRFCfgCmd");
  if (!a1)
  {
    v4 = "phLibNfc_SetCWRFCfgCmd:Invalid Context";
    v5 = 2;
    v6 = 0;
LABEL_11:
    sub_297E4E0B0(v5, v6, 4u, 1u, v4);
    v7 = 255;
    goto LABEL_12;
  }

  if (*(a1 + 5472) == 1)
  {
    v2 = *(a1 + 5476);
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (v2 == 2);
    }
  }

  else
  {
    v3 = 0;
  }

  if (sub_297F08690(*(a1 + 3088), v3, sub_297E5BA84, a1) != 13)
  {
    v4 = "phLibNfc_SetCWRFCfgCmd:Sending command failed";
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_11;
  }

  v7 = 13;
LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetCWRFCfgCmd");
  return v7;
}

uint64_t sub_297EF7250(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetCWRFCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_SetCWRFCfgComplete: Failed status received from NFCC");
      v4 = 255;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_297E4F450(*(a1 + 9784), 118, v4, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetCWRFCfgComplete: Invalid LibNfc Ctx received from NCI");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetCWRFCfgComplete");
  return v5;
}

uint64_t sub_297EF7320(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CalcFieldStrength");
  if (a3)
  {
    v7 = *(a1 + 352);
    if (*(a1 + 352))
    {
      LOBYTE(v6) = *(a1 + 354);
      v7 = ((((v6 * 1000.0) * 0.0625) * a2) / v7);
    }

    *a3 = v7;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CalcFieldStrength");
}

uint64_t sub_297EF73D8(_BYTE *a1, unsigned int a2, float *a3, float *a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ApcCalculation3_0");
  v8 = 0;
  if (a3 && a4)
  {
    if (a1[2985] == 1 || a1[2986] == 1 || a1[2992] == 1)
    {
      v8 = 0;
      *a4 = vcvts_n_f32_u32(HIWORD(a2) & 0x7FF, 2uLL);
      v9 = BYTE1(a2) / 255.0;
      v10 = (((a2 >> 2) / 10.0) + 1.5) * v9;
      v11 = 1.0;
      if ((a2 & 2) == 0)
      {
        v11 = 2.0;
      }

      *a3 = (v11 * v10) * ((a2 & 1) + 1);
    }

    else
    {
      v8 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ApcCalculation3_0");
  return v8;
}

uint64_t sub_297EF74F4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ComputeL1State");
  if ((a2 - 1) < 0xE)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ComputeL1State");
  return v4;
}

uint64_t sub_297EF7570(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ComputeL1FelicaState");
  if (((a2 - 1) & 0xF8) != 0)
  {
    v4 = 255;
  }

  else
  {
    v4 = (a2 - 1) + 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ComputeL1FelicaState");
  return v4;
}

uint64_t sub_297EF75EC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ComputeL2ClifState");
  if ((a2 - 1) < 0xF)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ComputeL2ClifState");
  return v4;
}

uint64_t sub_297EF7668(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ComputeL2Iso15693ClifState");
  if ((a2 - 1) < 0xA)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ComputeL2Iso15693ClifState");
  return v4;
}

uint64_t sub_297EF76E4(_BYTE *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ComputeLxClifTech");
  switch(a2)
  {
    case 1:
      break;
    case 2:
      a2 = 2;
      break;
    case 3:
      a2 = 3;
      break;
    case 4:
      a2 = 4;
      break;
    case 5:
      a2 = 5;
      break;
    case 6:
      a2 = 6;
      break;
    case 7:
      a2 = 7;
      break;
    case 8:
      a2 = 8;
      break;
    case 9:
      a2 = 9;
      break;
    case 10:
      a2 = 10;
      break;
    case 11:
      a2 = 11;
      break;
    case 12:
      a2 = 12;
      break;
    case 13:
      a2 = 13;
      break;
    case 14:
      a2 = 14;
      break;
    case 15:
      if (a1[2984] == 1 || a1[2985] == 1)
      {
        a2 = 15;
      }

      else
      {
        a2 = 15;
        if (a1[2986] != 1)
        {
          if (a1[2992] == 1)
          {
            a2 = 15;
          }

          else
          {
            a2 = 255;
          }
        }
      }

      break;
    default:
      a2 = 255;
      break;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ComputeLxClifTech");
  return a2;
}

uint64_t sub_297EF7820(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ComputeDataRxFailure");
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
  if ((a2 & 0xFFFFFFBF) == 0x84)
  {
    v4 = *(a1 + 64);
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CheckDpllLock");
    if ((v4 - 8) >= 6)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0x848484FF8484uLL >> (8 * (v4 - 8));
    }

    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CheckDpllLock");
  }

  else
  {
    v6 = *(a1 + 64);
    if (v6 == 5)
    {
      v7 = a2 & 0xBF;
    }

    else
    {
      v7 = -1;
    }

    if (v6 == 7)
    {
      v8 = a2 & 0xBF;
    }

    else
    {
      v8 = -1;
    }

    if (((a2 & 0xBF) + 123) <= 4u)
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ComputeDataRxFailure");
  return v5;
}

uint64_t sub_297EF7950(uint64_t a1, int a2, int a3, int a4, int a5)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ExtractAPCInfo");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ExtractAPCInfo");
  return a2 | (a3 << 8) | (a4 << 16) | (a5 << 24);
}

_DWORD *sub_297EF79D8(_DWORD *a1, unsigned __int8 **a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcSysL1LogStandbyNtf");
  v4 = a1[2448];
  phOsalNfc_SetMemory();
  a1[12] = 1;
  a1[14] = **a2;
  v5 = a1[15] | (*a2)[1];
  a1[15] = v5;
  v6 = v5 | ((*a2)[2] << 8);
  a1[15] = v6;
  v7 = v6 | ((*a2)[3] << 16);
  a1[15] = v7;
  a1[15] = v7 | ((*a2)[4] << 24);
  sub_297E50DB0(1, (a1 + 2448), 4u, 4u, "phLibNfc_ProcSysL1LogStandbyNtf: L1-phNfc_SysL1LogEntry.StandbyEvent");
  v8 = a1[14];
  sub_297E50DB0(1, (a1 + 2448), 4u, 4u, "phLibNfc_ProcSysL1LogStandbyNtf: L1-pSysL1StdbyDbgInfoEntry.eStandByDebgInfoTye");
  sub_297E50DB0(1, (a1 + 2448), 4u, 4u, "\n\nphLibNfc_ProcSysL1LogStandbyNtf: L1-phNfc_sSysL1LoggingEventEntry_t.dwStandbyPrvntnHwRegValue");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcSysL1LogStandbyNtf");
  return a1 + 10;
}

uint64_t sub_297EF7B14(uint64_t a1, _BYTE **a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcSysL1LogDpcEventNtf");
  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 52) = 1;
  *(a1 + 56) = **a2;
  *(a1 + 57) = (*a2)[1];
  *(a1 + 58) = *(*a2 + 1);
  *(a1 + 60) = (*a2)[4];
  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "\n\nphLibNfc_ProcSysL1LogDpcEventNtf: L1-phNfc_sSysL1LoggingEventEntry_t.pSysL1DpcDbgInfoEntry.bDpcVddPaLutIdx");
  v5 = *(a1 + 58);
  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "\n\nphLibNfc_ProcSysL1LogDpcEventNtf: L1-phNfc_sSysL1LoggingEventEntry_t.pSysL1DpcDbgInfoEntry.wDpcVddPaCurrent");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcSysL1LogDpcEventNtf");
  return a1 + 40;
}

uint64_t sub_297EF7C08(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = a3;
  v5 = a1;
  v131 = 0;
  *a3 = 0;
  a3[4] = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Sn100AndAboveProcSysL2LogNtf");
  if (*(a2 + 2))
  {
    v6 = 0;
    v127 = v3;
    v128 = v5;
    while (1)
    {
      v7 = *a2;
      v8 = *(*a2 + v6);
      v9 = v8 >> 4;
      v10 = v8 & 0xF;
      v11 = v6 + 1;
      if (v8 >> 4 > 4)
      {
        break;
      }

      if (v8 >> 4 <= 2)
      {
        if (v9 == 1)
        {
          v40 = *(v3 + 2);
          v41 = *v3;
          v132 = 0;
          sub_297E4E1B4(2, v5, 4u, 5u, "phLibNfc_L2EventProc");
          if (v40)
          {
            v42 = (v7 + v11);
            v43 = (v40 + 52 * v41);
            *(v43 + 11) = 0;
            *(v43 + 8) = 0;
            v44 = *v42;
            *v43 = v44;
            *v43 = v44 | (v42[1] << 8);
            v45 = v42[2];
            v43[1] = v45;
            v43[1] = v45 | (v42[3] << 8);
            if (v5[2985] == 1 || v5[2986] == 1)
            {
              if ((v10 - 9) > 1)
              {
                v46 = 0;
                v47 = 0;
                v48 = 6;
                goto LABEL_79;
              }

LABEL_78:
              v46 = v42[6];
              v47 = v42[7];
              v48 = 8;
            }

            else
            {
              v46 = 0;
              if ((v10 - 9) > 1)
              {
                v48 = 6;
                v47 = 0;
              }

              else
              {
                v48 = 6;
                v47 = 0;
                if (v5[2992] == 1)
                {
                  goto LABEL_78;
                }
              }
            }

LABEL_79:
            v129 = v47;
            v130 = v46;
            v86 = v42[4];
            v87 = v42[5];
            *(v43 + 3) = 255;
            v88 = v42[v48] >> 4;
            v5 = v128;
            *(v43 + 4) = sub_297EF76E4(v128, v88);
            v89 = v42[v48];
            *(v43 + 2) = 0xFF000000FFLL;
            v90 = v89 & 0xF;
            if (v88 == 15)
            {
              *(v43 + 2) = sub_297EF7668(v128, v90);
            }

            else
            {
              *(v43 + 1) = sub_297EF75EC(v128, v90);
            }

            v91 = v86;
            v92 = v87 | (v86 << 8);
            if (v128[2984] == 1 || v128[2985] == 1 || v128[2986] == 1 || v128[2992] == 1)
            {
              v3 = v127;
              if ((v10 - 9) <= 1 && (*(v43 + 4) & 0xFFFFFFF8) == 8 && (v128[2986] == 1 || v128[2992] == 1) && !v128[2994])
              {
                *(v43 + 12) = sub_297EF7950(v128, v91, v87, v130, v129);
              }

              else
              {
                v93 = *(v43 + 1);
                if (v93 == 10 || v93 == 7)
                {
                  if (v128[2985] == 1 || v128[2986] == 1 || (v94 = 0, v95 = 0, v128[2992] == 1))
                  {
                    v96 = sub_297EF7950(v128, v91, v87, v130, v129);
                    if (sub_297EF73D8(v128, v96, &v132 + 1, &v132))
                    {
                      sub_297E4E0B0(1, (v128 + 9792), 4u, 1u, " Vpp Calculation Failed!!!");
                      goto LABEL_124;
                    }

                    v95 = HIDWORD(v132);
                    v94 = v132;
                  }

                  *(v43 + 10) = v95;
                  *(v43 + 11) = v94;
                  v43[12] = -1;
LABEL_104:
                  *(v43 + 7) = 0;
                }

                else
                {
                  *(v43 + 10) = 0;
                  v43[12] = v92;
                  if (v128[2985] != 1 && v128[2986] != 1 && v128[2992] != 1)
                  {
                    goto LABEL_104;
                  }

                  sub_297EF7320(v128, v92, v43 + 7);
                }
              }
            }

            else
            {
              v43[12] = v92;
              *(v43 + 7) = 0;
              v3 = v127;
            }

LABEL_124:
            if ((v10 | 2) == 0xA)
            {
              v112 = v42[v48 | 1];
              if (v10 != 10 || (*(v43 + 4) & 0xFFFFFFF8) != 8 || v128[2986] != 1 && v128[2992] != 1 || v128[2994])
              {
                v113 = *(v43 + 1);
                if (v113 <= 12)
                {
                  if (v113 == 5)
                  {
                    sub_297E4E1B4(2, v128, 4u, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
                    sub_297E4DFAC(2, v128, 4u, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
                  }

                  else if (v113 == 11)
                  {
                    sub_297E4E1B4(2, v128, 4u, 5u, "phLibNfc_ParseWupIotReconfigStage");
                    if (v112 >= 6)
                    {
                      v115 = -1;
                    }

                    else
                    {
                      v115 = 0x504030201FFuLL >> (8 * v112);
                    }

                    sub_297E4DFAC(2, v128, 4u, 5u, "phLibNfc_ParseWupIotReconfigStage");
                    *(v43 + 36) = v115;
                    goto LABEL_152;
                  }
                }

                else
                {
                  if ((v113 - 13) < 3)
                  {
                    *(v43 + 36) = v112;
                    if ((v128[2985] == 1 || v128[2986] == 1 || v128[2992] == 1) && (v113 == 15 && (v112 & 0xFE) == 6 || v113 == 14 && v112 == 8))
                    {
                      v114 = v43[12];
                      *(v43 + 7) = 0;
                      *(v43 + 8) = v114;
                      v43[12] = 0;
                      *(v43 + 5) = 0;
                    }

                    goto LABEL_152;
                  }

                  if (v113 == 255)
                  {
                    v116 = *(v43 + 2);
                    if (v116 != 10 && v116 != 6)
                    {
                      goto LABEL_152;
                    }
                  }
                }
              }

              *(v43 + 36) = v112;
            }

LABEL_152:
            v117 = *v43;
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-wTimeStampMillisec");
            v118 = v43[10];
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-wAmsAgcRegValue");
            v119 = *(v43 + 22);
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-bADCRegValue");
            v120 = v43[1];
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-wTimeStampMicrosec");
            v121 = v43[12];
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-wRssiInterpolatedinfo");
            v122 = *(v43 + 7);
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-dwFieldStrength");
            v123 = *(v43 + 4);
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-eDebMgmtL2Tech");
            v124 = *(v43 + 1);
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-eDebMgmtL2State");
            v125 = *(v43 + 36);
            sub_297E50DB0(1, (v128 + 9792), 4u, 4u, "phLibNfc_L2EventProc: L2-bExtraInfo");
          }

          sub_297E4DFAC(2, v5, 4u, 5u, "phLibNfc_L2EventProc");
          ++*v3;
          LODWORD(v11) = v11 + v10;
          goto LABEL_154;
        }

        if (v9 == 2)
        {
          v12 = *(v3 + 3);
          if (v12)
          {
            v13 = *(v7 + v11);
            v14 = v3[1];
            v15 = v12 + 16 * v14;
            *v15 = v13;
            *v15 = v13 | (*(*a2 + v6 + 2) << 8);
            v16 = *(*a2 + v6 + 3);
            *(v15 + 2) = v16;
            *(v15 + 2) = v16 | (*(*a2 + v6 + 4) << 8);
            v17 = *(*a2 + v6 + 5);
            *(v15 + 4) = v17 << 8;
            v18 = *(*a2 + v6 + 6) | (v17 << 8);
            *(v15 + 4) = v18;
            if (v5[2985] == 1 || v5[2986] == 1 || v5[2992] == 1)
            {
              sub_297EF7320(v5, v18, (v15 + 8));
              v12 = *(v3 + 3);
              v14 = v3[1];
            }

            else
            {
              *(v15 + 8) = 0;
            }

            LODWORD(v11) = v6 + 8;
            v19 = v12 + 16 * v14;
            *(v19 + 12) = *(*a2 + v6 + 7);
            if (v10 == 8)
            {
              v20 = *(*a2 + v11);
              LODWORD(v11) = v6 + 9;
            }

            else
            {
              v20 = -1;
            }

            *(v19 + 13) = v20;
            v3[1] = v14 + 1;
            goto LABEL_154;
          }

          v67 = (v5 + 9792);
          v68 = " FelicaCmdEvent NULL!!!";
          goto LABEL_56;
        }

        goto LABEL_45;
      }

      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v30 = *(v3 + 4);
          if (v30)
          {
            v31 = v30 + 20 * v3[3];
            *(v31 + 16) = 0;
            v32 = *(*a2 + v11);
            *v31 = v32;
            *v31 = v32 | (*(*a2 + v6 + 2) << 8);
            v33 = *(*a2 + v6 + 3);
            *(v31 + 2) = v33;
            *(v31 + 2) = v33 | (*(*a2 + v6 + 4) << 8);
            v34 = sub_297EF7950(v5, *(*a2 + v6 + 5), *(*a2 + v6 + 6), *(*a2 + v6 + 7), *(*a2 + v6 + 8));
            if (sub_297EF73D8(v5, v34, &v131 + 1, &v131))
            {
              sub_297E4E0B0(1, (v5 + 9792), 4u, 1u, " Vpp Calculation Failed!!!");
              v35 = *(v3 + 4);
              v36 = v3[3];
            }

            else
            {
              v35 = *(v3 + 4);
              v36 = v3[3];
              v81 = v35 + 20 * v3[3];
              *(v81 + 12) = HIDWORD(v131);
              *(v81 + 16) = v131;
            }

            v82 = v35 + 20 * v36;
            *(v82 + 4) = *(*a2 + v6 + 9);
            LODWORD(v11) = v6 + 12;
            *(v82 + 6) = *(*a2 + v6 + 11) | (*(*a2 + v6 + 10) << 8);
            if (v10 != 10)
            {
              if (v5[2985] == 1 || v5[2986] == 1)
              {
                if (v10 != 12)
                {
                  v83 = -1;
LABEL_117:
                  *(v35 + 20 * v36 + 8) = v83;
                  v3[3] = v36 + 1;
                  goto LABEL_154;
                }
              }

              else
              {
                v83 = -1;
                if (v10 != 12 || v5[2992] != 1)
                {
                  goto LABEL_117;
                }
              }
            }

            v83 = *(*a2 + v11);
            LODWORD(v11) = v6 + 13;
            goto LABEL_117;
          }

          v67 = (v5 + 9792);
          v68 = "phLibNfc_Sn100AndAboveProcSysL2LogNtf:pFelicaRspEvent NULL!!!";
          goto LABEL_56;
        }

        goto LABEL_45;
      }

      v55 = *(v3 + 5);
      if (!v55)
      {
        v67 = (v5 + 9792);
        v68 = " FelicaSysCode NULL!!!";
LABEL_56:
        sub_297E4E0B0(1, v67, 4u, 2u, v68);
        goto LABEL_154;
      }

      v56 = *(v7 + v11);
      v57 = v3[2];
      v58 = (v55 + 6 * v57);
      *v58 = v56;
      *v58 = v56 | (*(*a2 + v6 + 2) << 8);
      v59 = *(*a2 + v6 + 3);
      v58[1] = v59;
      v58[1] = v59 | (*(*a2 + v6 + 4) << 8);
      v60 = *(*a2 + v6 + 5);
      v58[2] = v60 << 8;
      LODWORD(v11) = v6 + 7;
      v58[2] = *(*a2 + v6 + 6) | (v60 << 8);
      v3[2] = v57 + 1;
LABEL_154:
      v6 = v11;
      if (v11 >= *(a2 + 2))
      {
        return sub_297E4DFAC(2, v5, 4u, 5u, "phLibNfc_Sn100AndAboveProcSysL2LogNtf");
      }
    }

    if (v8 >> 4 > 7)
    {
      if (v9 == 8)
      {
        if (v10 == 8 && (v61 = *(v3 + 10)) != 0)
        {
          v62 = *(v7 + v11);
          v63 = v3[8];
          v64 = v61 + 8 * v63;
          *v64 = v62;
          *v64 = v62 | (*(*a2 + v6 + 2) << 8);
          v65 = *(*a2 + v6 + 3);
          *(v64 + 2) = v65;
          *(v64 + 2) = v65 | (*(*a2 + v6 + 4) << 8);
          v66 = *(*a2 + v6 + 5);
          *(v64 + 4) = v66;
          *(v64 + 4) = v66 | (*(*a2 + v6 + 6) << 8);
          *(v64 + 6) = *(*a2 + v6 + 7);
          LODWORD(v11) = v6 + 9;
          *(v64 + 7) = *(*a2 + v6 + 8);
          v3[8] = v63 + 1;
        }

        else
        {
          v69 = *(v3 + 9);
          if (v69)
          {
            v70 = *(v7 + v11);
            v71 = (v69 + 20 * v3[7]);
            *v71 = v70;
            *v71 = v70 | (*(*a2 + v6 + 2) << 8);
            v72 = *(*a2 + v6 + 3);
            v71[1] = v72;
            v71[1] = v72 | (*(*a2 + v6 + 4) << 8);
            v73 = *(*a2 + v6 + 5) >> 4;
            v74 = sub_297EF76E4(v5, v73);
            v75 = *(v3 + 9) + 20 * v3[7];
            *(v75 + 12) = v74;
            v76 = *(*a2 + v6 + 5);
            *(v75 + 4) = 0xFF000000FFLL;
            v77 = v76 & 0xF;
            if (v73 == 15)
            {
              v78 = sub_297EF7668(v5, v77);
              v79 = *(v3 + 9);
              v80 = v3[7];
              *(v79 + 20 * v3[7] + 8) = v78;
            }

            else
            {
              v84 = sub_297EF75EC(v5, v77);
              v79 = *(v3 + 9);
              v80 = v3[7];
              *(v79 + 20 * v3[7] + 4) = v84;
            }

            v85 = v79 + 20 * v80;
            *(v85 + 16) = *(*a2 + v6 + 6);
            LODWORD(v11) = v6 + 8;
            *(v85 + 17) = *(*a2 + v6 + 7);
            v3[7] = v80 + 1;
          }
        }

        goto LABEL_154;
      }

      if (v9 == 12)
      {
        v37 = *(v3 + 8);
        if (v37)
        {
          v38 = v3[6];
          v39 = (v37 + 16 * v38);
          *v39 = *(v7 + v11);
          v39[1] = *(*a2 + v6 + 2);
          v39[2] = *(*a2 + v6 + 3);
          LODWORD(v11) = v6 + 5;
          v39[3] = *(*a2 + v6 + 4);
          v3[6] = v38 + 1;
        }

        goto LABEL_154;
      }
    }

    else
    {
      if (v9 == 5)
      {
        v49 = *(v3 + 6);
        if (v49)
        {
          v50 = *(v7 + v11);
          v51 = v3[4];
          v52 = v49 + 12 * v3[4];
          *v52 = v50;
          *v52 = v50 | (*(*a2 + v6 + 2) << 8);
          v53 = *(*a2 + v6 + 3);
          *(v52 + 2) = v53;
          *(v52 + 2) = v53 | (*(*a2 + v6 + 4) << 8);
          LODWORD(v11) = v6 + 6;
          *(v52 + 4) = *(*a2 + v6 + 5);
          if (v10 == 6)
          {
            v54 = *(*a2 + v11);
            LODWORD(v11) = v6 + 7;
          }

          else
          {
            v54 = -1;
          }

          *(v49 + 12 * v51 + 8) = v54;
          v3[4] = v51 + 1;
        }

        goto LABEL_154;
      }

      if (v9 == 6)
      {
        v21 = *(v3 + 7);
        if (v21)
        {
          v22 = *(v7 + v11);
          v23 = v3[5];
          v24 = v21 + 28 * v3[5];
          *(v24 + 4) = v22;
          *(v24 + 4) = v22 | (*(*a2 + v6 + 2) << 8);
          v25 = *(*a2 + v6 + 3);
          *(v24 + 6) = v25;
          v26 = v6 + 5;
          *(v24 + 6) = v25 | (*(*a2 + v6 + 4) << 8);
          v27 = *(*a2 + v6 + 7);
          if (v27 <= 3)
          {
            if (v27 == 1)
            {
              v97 = v21 + 28 * v23;
              *v97 = 1;
              v98 = *(*a2 + v26);
              *(v97 + 16) = *(v97 + 16) & 0xFFFE | v98 & 1;
              v99 = *(v3 + 7) + 28 * v3[5];
              *(v99 + 16) = *(v99 + 16) & 0xFFFD | v98 & 2;
              v100 = *(v3 + 7) + 28 * v3[5];
              *(v100 + 16) = *(v100 + 16) & 0xFFFB | v98 & 4;
              v101 = *(v3 + 7) + 28 * v3[5];
              *(v101 + 16) = *(v101 + 16) & 0xFFF7 | v98 & 8;
              v102 = *(v3 + 7) + 28 * v3[5];
              *(v102 + 16) = *(v102 + 16) & 0xFFEF | v98 & 0x10;
              v103 = *(v3 + 7) + 28 * v3[5];
              *(v103 + 16) = *(v103 + 16) & 0xFFDF | v98 & 0x20;
              v104 = *(v3 + 7) + 28 * v3[5];
              *(v104 + 16) = *(v104 + 16) & 0xFFBF | v98 & 0x40;
              v105 = *(v3 + 7) + 28 * v3[5];
              *(v105 + 16) = *(v105 + 16) & 0xFF7F | v98 & 0x80;
              v106 = *(*a2 + v6 + 6);
              v107 = *(v3 + 7) + 28 * v3[5];
              *(v107 + 16) = *(v107 + 16) & 0xFEFF | ((v106 & 1) << 8);
              v108 = *(v3 + 7) + 28 * v3[5];
              *(v108 + 16) = *(v108 + 16) & 0xFDFF | (((v106 >> 1) & 1) << 9);
              goto LABEL_111;
            }

            if (v27 == 2)
            {
              v110 = v21 + 28 * v23;
              *v110 = 2;
              *(v110 + 20) = *(*a2 + v26);
              v111 = *(*a2 + v6 + 6);
              if (v111 > 1)
              {
                if (v111 != 2 && v111 != 3)
                {
                  v111 = 255;
                }
              }

              else if (!*(*a2 + v6 + 6))
              {
                *(v110 + 24) = 0;
                goto LABEL_111;
              }

              *(v110 + 24) = v111;
LABEL_111:
              LODWORD(v11) = v6 + 8;
              ++v3[5];
              goto LABEL_154;
            }

            if (v27 != 3)
            {
              goto LABEL_107;
            }

            v28 = 28 * v23;
            v29 = 3;
          }

          else if (*(*a2 + v6 + 7) > 5u)
          {
            if (v27 == 6)
            {
              *(v21 + 28 * v23) = 6;
              goto LABEL_111;
            }

            if (v27 != 7)
            {
              goto LABEL_107;
            }

            v28 = 28 * v23;
            v29 = 7;
          }

          else
          {
            if (v27 != 4)
            {
              if (v27 == 5)
              {
                v28 = 28 * v23;
                v29 = 5;
                goto LABEL_110;
              }

LABEL_107:
              v109 = (v21 + 28 * v23);
              if ((~v27 & 0xE) != 0)
              {
                *v109 = 8;
                sub_297E50EBC(1, (v5 + 9792), 4u, 2u, " HLM Invalid Event received");
              }

              else
              {
                *v109 = 0;
                *(v21 + 28 * v23 + 8) = (*(*a2 + v26) | (*(*a2 + v6 + 6) << 8)) / 142.2;
                *(*(v3 + 7) + 28 * v3[5] + 12) = sub_297EF76E4(v5, *(*a2 + v6 + 7) >> 4);
              }

              goto LABEL_111;
            }

            v28 = 28 * v23;
            v29 = 4;
          }

LABEL_110:
          *(v21 + v28) = v29;
          goto LABEL_111;
        }

        v67 = (v5 + 9792);
        v68 = " HLM Event NULL!!!";
        goto LABEL_56;
      }
    }

LABEL_45:
    if (v6 >= ~v10)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      LODWORD(v11) = v11 + v10;
    }

    v67 = (v5 + 9792);
    v68 = " phLibNfc_Sn100AndAboveProcSysL2LogNtf : Invalid tag ID !!!";
    goto LABEL_56;
  }

  return sub_297E4DFAC(2, v5, 4u, 5u, "phLibNfc_Sn100AndAboveProcSysL2LogNtf");
}

uint64_t sub_297EF8C70(void *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetRfSettingsInitCb");
  if (a1)
  {
    v4 = a1[769];
    v5 = a1[770];
    *(a1 + 769) = 0u;
    if (v4)
    {
      sub_297E50EBC(1, (a1 + 1224), 4u, 4u, "phLibNfc_SetRfSettingsInitCb:Invoking callback function, wStatus = ");
      sub_297E4D930(1, (a1 + 1224), 4u, 40, "phLibNfc_SetRfSettingsInitCb");
      v4(a1[1223], v5, a2);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetRfSettingsInitCb");
}

uint64_t sub_297EF8D5C(uint64_t a1, int a2, uint64_t *a3)
{
  Memory_Typed = 0;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v100 = 0;
  v101 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_LoggingNtfHandler");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LoggingNtfHandler");
  }

  if (!a3)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LoggingNtfHandler");
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_LoggingNtfHandler: Received Lx debug logging Ntf from NFCC");
  v6 = *a3;
  if (!*a3)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LoggingNtfHandler");
  }

  v7 = *(a3 + 2);
  if (!v7)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LoggingNtfHandler");
  }

  if (a2 == 8 && v7 >= 7)
  {
    *v108 = 0;
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_549ProcSysL1LogNtf");
    v8 = *(a3 + 2);
    v9 = *(a1 + 9792);
    v10 = (a1 + 40);
    phOsalNfc_SetMemory();
    *(a1 + 96) = 0;
    if (v8 - 7 > 1)
    {
      if (v8 - 9 <= 1)
      {
        v11 = *(a1 + 2985);
        if (v11 == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
        {
LABEL_26:
          *(a1 + 40) = *(a1 + 40) & 0xFC | 1;
          v14 = **a3;
          *(a1 + 56) = v14;
          *(a1 + 56) = v14 | (*(*a3 + 1) << 8);
          v15 = *(*a3 + 2);
          *(a1 + 58) = v15;
          *(a1 + 58) = v15 | (*(*a3 + 3) << 8);
          v16 = *(*a3 + 4);
          v17 = *(*a3 + 5);
          *(a1 + 80) = 0;
          *(a1 + 76) = v17 | (v16 << 8);
          v96 = v8 - 9;
          if (v8 >= 9 && (v11 == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1))
          {
            v94 = *(*a3 + 7);
            v95 = *(*a3 + 6);
            v18 = 8;
          }

          else
          {
            v94 = 0;
            v95 = 0;
            v18 = 6;
          }

          *(a1 + 60) = -1;
          v24 = *(*a3 + v18) >> 4;
          v97 = sub_297EF76E4(a1, v24);
          *(a1 + 68) = v97;
          v25 = *(*a3 + v18) & 0xF;
          v26 = *(a1 + 2984);
          if (v26 == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1)
          {
            if (v24 == 10 || v24 == 3)
            {
              goto LABEL_44;
            }

            v28 = v24 == 15;
            if (v24 == 15 && v26 == 1)
            {
              *(a1 + 64) = sub_297EF74F4(a1, v25);
              goto LABEL_45;
            }

            v44 = (a1 + 2985);
            if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1)
            {
              if (v24 == 15)
              {
                goto LABEL_214;
              }

              goto LABEL_217;
            }

            v53 = *(a1 + 2992);
          }

          else
          {
            v53 = *(a1 + 2992);
            if (v24 == 3 && v53 == 1 || v24 == 3)
            {
              goto LABEL_44;
            }

            v44 = (a1 + 2985);
            if (v24 != 15)
            {
              if (v24 == 10)
              {
LABEL_44:
                *(a1 + 84) = sub_297EF7570(a1, v25);
                goto LABEL_45;
              }

              goto LABEL_217;
            }

            v28 = 1;
          }

          if (v28 && v53 == 1)
          {
LABEL_214:
            if (v25 == 8)
            {
              v86 = 8;
            }

            else if (v25 == 2)
            {
              v86 = 2;
            }

            else
            {
              v86 = 255;
            }

            *(a1 + 64) = v86;
            goto LABEL_45;
          }

LABEL_217:
          v93 = v17 | (v16 << 8);
          v87 = v44;
          v88 = sub_297EF74F4(a1, v25);
          *(a1 + 64) = v88;
          if (*(a1 + 2984) != 1 && *v87 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
          {
            goto LABEL_45;
          }

          if (v88 - 8 >= 6 && v88 != 1)
          {
            *(a1 + 76) = v93;
            if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
            {
              sub_297EF7320(a1, v93, (a1 + 80));
              if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
              {
                *(a1 + 44) = 1;
                v90 = (v93 * 1000.0) * 0.00048828;
LABEL_260:
                *(a1 + 92) = v90;
                goto LABEL_45;
              }
            }

            else
            {
              *(a1 + 80) = 0;
            }

            *(a1 + 44) = 1;
            v90 = vcvts_n_f32_u32(v93, 8uLL);
            goto LABEL_260;
          }

          if (*v87 == 1 || *(a1 + 2986) == 1)
          {
            if (v96 > 1)
            {
              goto LABEL_225;
            }
          }

          else
          {
            v89 = 1;
            if (*(a1 + 2992) != 1 || v96 >= 2)
            {
              goto LABEL_244;
            }
          }

          v91 = sub_297EF7950(a1, v16, v17, v95, v94);
          if ((v97 & 0xF8) != 8 || *(a1 + 2986) != 1 && *(a1 + 2992) != 1 || *(a1 + 2994))
          {
            v89 = sub_297EF73D8(a1, v91, &v108[1], v108) == 0;
LABEL_244:
            if ((v97 & 0xF8) == 8 && (*(a1 + 2986) == 1 || *(a1 + 2992) == 1) && !*(a1 + 2994))
            {
              sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_549ProcSysL1LogNtf:In case of Reader Mode Robustness Info, Vpp/APC info should not be assigned");
            }

            else if (v89)
            {
              *(a1 + 44) = 1;
              v92 = *v108;
              *(a1 + 76) = -1;
              *(a1 + 92) = HIDWORD(v92);
              *(a1 + 96) = v92;
            }

            else
            {
              sub_297E4E0B0(1, a1 + 9792, 4u, 1u, " APC Calculation Failed!!!");
            }

LABEL_45:
            if ((v8 | 2) != 0xA)
            {
              *(a1 + 72) = 255;
              v10 = (a1 + 40);
              goto LABEL_100;
            }

            v27 = *(*a3 + v18 + 1);
            v10 = (a1 + 40);
            if (v8 == 10 && (v97 & 0xF8) == 8 && (*(a1 + 2986) == 1 || *(a1 + 2992) == 1) && !*(a1 + 2994))
            {
              goto LABEL_99;
            }

            if (v24 != 3)
            {
              if (v24 == 15)
              {
                if (*(a1 + 64) == 8)
                {
LABEL_99:
                  *(a1 + 88) = v27;
LABEL_100:
                  if (*(a1 + 2984) != 1 && *(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
                  {
                    v10 = (a1 + 56);
                  }

                  v46 = *(a1 + 56);
                  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "\n\nphLibNfc_549ProcSysL1LogNtf: L1-wTimeStampMillisec");
                  v47 = *(a1 + 58);
                  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-wTimeStampMicrosec");
                  v48 = *(a1 + 76);
                  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "\n\nphLibNfc_549ProcSysL1LogNtf: L1-RSSI wRssiInterpolatedinfo");
                  v49 = *(a1 + 80);
                  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "\n\nphLibNfc_549ProcSysL1LogNtf: L1- Calculated Field Strength");
                  v50 = *(a1 + 68);
                  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-eDebMgmtL1Tech");
                  v51 = *(a1 + 64);
                  sub_297E50DB0(1, a1 + 9792, 4u, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-eDebMgmtL1State");
                  if (*(a1 + 64) == 5)
                  {
                    v52 = *(a1 + 72);
                    sub_297E50DB0(1, a1 + 9792, 4u, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-eDebMgmtL1DataRxFailure");
                  }

                  goto LABEL_184;
                }

LABEL_96:
                *(a1 + 72) = sub_297EF7820(a1, v27);
                goto LABEL_100;
              }

              if (v24 != 10)
              {
                v45 = *(a1 + 64);
                if (v45 <= 0xA && ((1 << v45) & 0x5D2) != 0)
                {
                  goto LABEL_99;
                }

                goto LABEL_96;
              }
            }

            if ((*(a1 + 84) - 6) <= 2)
            {
              goto LABEL_99;
            }

            goto LABEL_96;
          }

          *(a1 + 100) = v91;
LABEL_225:
          v89 = 1;
          goto LABEL_244;
        }
      }
    }

    else
    {
      v11 = *(a1 + 2985);
      if (!*(a1 + 2985) || !*(a1 + 2986) || !*(a1 + 2992))
      {
        goto LABEL_26;
      }
    }

    if (v8 != 12 && v8 != 10)
    {
      v10 = 0;
LABEL_184:
      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_549ProcSysL1LogNtf");
      goto LABEL_185;
    }

    *(a1 + 40) = *(a1 + 40) & 0xFC | 2;
    v19 = **a3;
    *(a1 + 56) = v19;
    *(a1 + 56) = v19 | (*(*a3 + 1) << 8);
    v20 = *(*a3 + 2);
    *(a1 + 58) = v20;
    *(a1 + 58) = v20 | (*(*a3 + 3) << 8);
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1)
    {
      if (v8 != 12)
      {
        v21 = 0.0;
        v22 = 6;
LABEL_37:
        v23 = 0.0;
        goto LABEL_122;
      }
    }

    else
    {
      v21 = 0.0;
      v22 = 6;
      if (v8 != 12)
      {
        goto LABEL_37;
      }

      v23 = 0.0;
      if (*(a1 + 2992) != 1)
      {
        goto LABEL_122;
      }
    }

    v54 = sub_297EF7950(a1, *(*a3 + 4), *(*a3 + 5), *(*a3 + 6), *(*a3 + 7));
    if (sub_297EF73D8(a1, v54, &v108[1], v108))
    {
      *(a1 + 44) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, " APC Calculation Failed!!!");
      v22 = 8;
LABEL_123:
      v55 = *(*a3 + v22) >> 4;
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Compute7816ClifTech");
      switch(v55)
      {
        case 1:
          break;
        case 2:
          LODWORD(v55) = 2;
          break;
        case 3:
          LODWORD(v55) = 3;
          break;
        case 4:
          LODWORD(v55) = 4;
          break;
        case 5:
          LODWORD(v55) = 5;
          break;
        case 6:
          LODWORD(v55) = 6;
          break;
        case 7:
          LODWORD(v55) = 7;
          break;
        case 8:
          LODWORD(v55) = 8;
          break;
        case 9:
          LODWORD(v55) = 9;
          break;
        case 10:
          LODWORD(v55) = 10;
          break;
        case 11:
          LODWORD(v55) = 11;
          break;
        case 12:
          LODWORD(v55) = 12;
          break;
        case 13:
          LODWORD(v55) = 13;
          break;
        case 14:
          LODWORD(v55) = 14;
          break;
        case 15:
          if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1)
          {
            LODWORD(v55) = 15;
          }

          else
          {
            LODWORD(v55) = 15;
            if (*(a1 + 2986) != 1)
            {
              if (*(a1 + 2992) == 1)
              {
                LODWORD(v55) = 15;
              }

              else
              {
                LODWORD(v55) = 255;
              }
            }
          }

          break;
        default:
          LODWORD(v55) = 255;
          break;
      }

      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Compute7816ClifTech");
      *(a1 + 64) = v55;
      v73 = *(*a3 + v22 + 2);
      *(a1 + 68) = v73 << 8;
      *(a1 + 68) = *(*a3 + v22 + 3) | (v73 << 8);
      goto LABEL_184;
    }

    v23 = v108[1];
    v21 = v108[0];
    v22 = 8;
LABEL_122:
    *(a1 + 44) = 1;
    *(a1 + 92) = v23;
    *(a1 + 96) = v21;
    goto LABEL_123;
  }

  if (a2 != 8)
  {
    if (a2 != 9)
    {
      goto LABEL_191;
    }

    if (*(a1 + 2984) != 1)
    {
      if (*(a1 + 2985) == 1)
      {
        if (v7 < 5)
        {
          goto LABEL_191;
        }

        goto LABEL_63;
      }

      if (*(a1 + 2986) != 1 && *(a1 + 2992) != 1)
      {
        if ((v7 & 7) != 0)
        {
          goto LABEL_191;
        }

LABEL_160:
        if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
        {
          v10 = &v102;
          sub_297EF7C08(a1, a3, &v102);
        }

        else
        {
          v10 = 0;
        }

        v72 = 63;
LABEL_186:
        LODWORD(v100) = sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136));
        v101 = v10;
        if (*(a1 + 6760) && *(a1 + 5608) == 5)
        {
          *(a1 + 5624) = &v100;
          sub_297E4F450(*(a1 + 9784), 118, v72, a1 + 5608, 0);
        }

        else
        {
          v74 = *(a1 + 6568);
          if (v74)
          {
            v75 = *(a1 + 6576);
            sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_LoggingNtfHandler :pGenericNtfCb[LxDebug Ntf]");
            v74(*(a1 + 9784), v75, v72, &v100);
          }
        }

        goto LABEL_191;
      }
    }

    if (v7 <= 4)
    {
      goto LABEL_191;
    }

LABEL_63:
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = v6[v29];
      v40 = v39 >> 4;
      v41 = v39 & 0xF;
      if (v40 > 4)
      {
        if (v40 > 7)
        {
          if (v40 == 8)
          {
            if (v41 == 8)
            {
              ++v30;
            }

            else
            {
              ++v31;
            }
          }

          else
          {
            if (v40 != 12)
            {
LABEL_210:
              sub_297E4E0B0(1, a1 + 9792, 4u, 2u, " phLibNfc_LoggingNtfHandler : Invalid Type !!!");
              sub_297E4E0B0(1, a1 + 9792, 4u, 1u, " phLibNfc_LoggingNtfHandler : Unknown L2 Message!!!");
              goto LABEL_191;
            }

            ++v32;
          }
        }

        else if (v40 == 5)
        {
          ++v34;
        }

        else
        {
          if (v40 != 6)
          {
            goto LABEL_210;
          }

          ++v33;
        }
      }

      else if (v40 > 2)
      {
        if (v40 == 3)
        {
          ++v36;
        }

        else
        {
          ++v35;
        }
      }

      else if (v40 == 1)
      {
        ++v38;
      }

      else
      {
        if (v40 != 2)
        {
          goto LABEL_210;
        }

        ++v37;
      }

      v29 += v41 + 1;
    }

    while (v29 < v7);
    v98 = v31;
    v99 = v30;
    if (v38)
    {
      v42 = *(a1 + 9792);
      *&v103 = phOsalNfc_GetMemory_Typed();
      if (v103)
      {
        v43 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to allocate memory for L2 debug events");
      }
    }

    if (v37)
    {
      v56 = *(a1 + 9792);
      *(&v103 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v103 + 1))
      {
        v57 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Felica command events");
      }
    }

    if (v36)
    {
      v58 = *(a1 + 9792);
      *(&v104 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v104 + 1))
      {
        v59 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LoggingNtfHandler : Failed to allocate memory for Felica SysCode events");
      }
    }

    if (v35)
    {
      v60 = *(a1 + 9792);
      *&v104 = phOsalNfc_GetMemory_Typed();
      if (v104)
      {
        v61 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Felica Response events");
      }
    }

    if (v34)
    {
      v62 = *(a1 + 9792);
      *&v105 = phOsalNfc_GetMemory_Typed();
      if (v105)
      {
        v63 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Felica Miscellaneous events");
      }
    }

    if (v33)
    {
      v64 = *(a1 + 9792);
      *(&v105 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v105 + 1))
      {
        v65 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to allocate memory for HLM events");
      }
    }

    if (v32)
    {
      v66 = *(a1 + 9792);
      *&v106 = phOsalNfc_GetMemory_Typed();
      if (v106)
      {
        v67 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to allocate memory for LPCD Assist events");
      }
    }

    if (v98)
    {
      v68 = *(a1 + 9792);
      *(&v106 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v106 + 1))
      {
        v69 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to allocate memory for Reader Mode events");
      }
    }

    if (v99)
    {
      v70 = *(a1 + 9792);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        v71 = *(a1 + 9792);
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Dynamic BBA Info events");
      }
    }

    goto LABEL_160;
  }

  if (v7 == 5)
  {
    v12 = *(a1 + 2992);
    if (v12 == 1 && *v6 == 255)
    {
      v13 = sub_297EF7B14(a1, a3);
      goto LABEL_126;
    }

    if (*(a1 + 2985) == 1 || v12 == 1 || *(a1 + 2986) == 1)
    {
      v13 = sub_297EF79D8(a1, a3);
LABEL_126:
      v10 = v13;
LABEL_185:
      v72 = 62;
      goto LABEL_186;
    }
  }

LABEL_191:
  if (v103)
  {
    v76 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (v104)
  {
    v77 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (*(&v103 + 1))
  {
    v78 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (*(&v104 + 1))
  {
    v79 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (v105)
  {
    v80 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (*(&v105 + 1))
  {
    v81 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (v106)
  {
    v82 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (*(&v106 + 1))
  {
    v83 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  if (Memory_Typed)
  {
    v84 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LoggingNtfHandler");
}

uint64_t sub_297EF9EA8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropMultiTagStatNtfHandler");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_PropMultiTagStatNtfHandler- Rxd Failed Status");
LABEL_27:
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_PropMultiTagStatNtfHandler-Corrutped MultiTag NTF received, Reset/Boot MW");
    goto LABEL_28;
  }

  v8 = *(a1 + 9792);
  if (a2 != 35 || a4 == 255)
  {
    v16 = "phLibNfc_PropMultiTagStatNtfHandler- Rxd Failed Status";
    v17 = 1;
    v18 = 2;
    v19 = a1;
LABEL_12:
    sub_297E4E0B0(v18, v19, 4u, 1u, v16);
    v20 = 0;
    goto LABEL_13;
  }

  if (!*(a3 + 8) || (v9 = *a3) == 0)
  {
    v16 = "phLibNfc_PropMultiTagStatNtfHandler- Length Error or Null buffer received";
    v17 = 1;
    v19 = a1 + 9792;
    v18 = 1;
    goto LABEL_12;
  }

  v10 = 1;
  v56 = 1;
  LOBYTE(v52) = *v9;
  if (v52)
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(&v52 + 1) = Memory_Typed;
    if (Memory_Typed)
    {
      v12 = Memory_Typed;
      v13 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v56, v52, 0, v12, a3);
      v14 = 0;
      v15 = 1;
      v10 = v56;
    }

    else
    {
      v15 = 0;
      v14 = 255;
      v10 = 1;
    }
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  v32 = *a3;
  v33 = v10 + 1;
  v56 = v10 + 1;
  v34 = *(v32 + v10);
  LOBYTE(v53) = *(v32 + v10);
  if (v15 && v34)
  {
    v35 = *(a1 + 9792);
    v36 = phOsalNfc_GetMemory_Typed();
    *(&v53 + 1) = v36;
    if (v36)
    {
      v37 = v36;
      v38 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v56, v34, 0, v37, a3);
      v33 = v56;
    }

    else
    {
      v14 = 255;
    }
  }

  v39 = *a3;
  v40 = v33 + 1;
  v56 = v33 + 1;
  v41 = *(v39 + v33);
  LOBYTE(v54) = *(v39 + v33);
  if (!v14 && v41)
  {
    v42 = *(a1 + 9792);
    v43 = phOsalNfc_GetMemory_Typed();
    *(&v54 + 1) = v43;
    if (v43)
    {
      v44 = v43;
      v45 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v56, v41, 0, v44, a3);
      v14 = 0;
      v40 = v56;
    }

    else
    {
      v14 = 255;
    }
  }

  v46 = *a3;
  v56 = v40 + 1;
  v47 = *(v46 + v40);
  LOBYTE(v55) = *(v46 + v40);
  if (!v14 && v47)
  {
    v48 = *(a1 + 9792);
    v49 = phOsalNfc_GetMemory_Typed();
    *(&v55 + 1) = v49;
    if (v49)
    {
      v50 = v49;
      v51 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v56, v47, 1, v50, a3);
      v14 = 0;
    }

    else
    {
      v14 = 255;
    }
  }

  v17 = v14 == 0;
  v20 = 1;
LABEL_13:
  v21 = 0;
  v22 = *(a1 + 3240);
  if (v22 && v22 != 0xFFFFFFFFFFFFLL)
  {
    v23 = *(a1 + 9792);
    phOsalNfc_Timer_Stop();
    *(a1 + 6084) = 0;
    v21 = 1;
    sub_297E687D8(1, a1 + 9792, *(a1 + 3240), 4u, 4u, "phLibNfc_PropMultiTagStatNtfHandler");
    v24 = *(a1 + 9792);
    v25 = *(a1 + 3240);
    phOsalNfc_Timer_Delete();
    *(a1 + 3240) = 0xFFFFFFFFFFFFLL;
  }

  if ((v17 & v20) != 1)
  {
    goto LABEL_27;
  }

  v26 = *(a1 + 6568);
  if (v26)
  {
    v27 = *(a1 + 6576);
    sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_PropMultiTagStatNtfHandler :pGenericNtfCb[Multi-tag Status]");
    v26(*(a1 + 9784), v27, 155, &v52);
  }

  if (*(a1 + 6104))
  {
    if (v21 && !*(a1 + 3264))
    {
      *(a1 + 3264) = 1;
      *(a1 + 2960) = off_2A1A90E88;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v28 = off_2A1A90E88[0];
      if (off_2A1A90E88[0])
      {
        v28 = 0;
        v29 = &qword_2A1A90E98;
        do
        {
          ++v28;
          v30 = *v29;
          v29 += 2;
        }

        while (v30);
      }

      *(a1 + 2953) = v28;
      if (sub_297E5588C(a1, 0, 0) != 13)
      {
        sub_297EFA54C(a1, 255);
      }
    }
  }

  else
  {
    *(a1 + 3264) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_PropMultiTagStatNtfHandler- independent Prop Tag Detect NTF Rxd");
  }

LABEL_28:
  if (*(&v52 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v52 + 1) = 0;
  }

  if (*(&v53 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v53 + 1) = 0;
  }

  if (*(&v54 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v54 + 1) = 0;
  }

  if (*(&v55 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v55 + 1) = 0;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropMultiTagStatNtfHandler");
}

uint64_t sub_297EFA3B0(uint64_t a1, _BYTE *a2, unsigned int a3, int a4, _BYTE *a5, uint64_t *a6)
{
  v23 = 28;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PopulateRxdTagInfo");
  if (a4 == 1)
  {
    if (a3)
    {
      v12 = 0;
      v13 = *a2;
      v14 = a5 + 2;
      do
      {
        v15 = *a6;
        v16 = *(*a6 + v13);
        *(v14 - 1) = (v16 & 0x10) != 0;
        *v14 = *(v15 + *a2) >> 5;
        sub_297EFA674(a1, v16 & 0xF, &v23);
        *(v14 - 2) = v23;
        v13 = *a2;
        if (v13 <= 0xFD)
        {
          *a2 = ++v13;
        }

        ++v12;
        v14 += 3;
      }

      while (v12 < a3);
    }
  }

  else if (a3)
  {
    v17 = 0;
    LOBYTE(v18) = *a2;
    do
    {
      v19 = *a6;
      if (v18 > 0xFDu)
      {
        v18 = 0;
      }

      else
      {
        *a2 = v18 + 1;
        v18 = v18;
      }

      sub_297EFA674(a1, *(v19 + v18), &v23);
      *a5 = v23;
      v20 = *(a1 + 9792);
      v21 = *a6 + *a2;
      phOsalNfc_MemCopy();
      LOBYTE(v18) = *a2 + 4;
      *a2 = v18;
      ++v17;
      a5 += 5;
    }

    while (v17 < a3);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PopulateRxdTagInfo");
}

uint64_t sub_297EFA54C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MultiTagCompleteInit");
  if (!v3 || a2)
  {
    sub_297E4E0B0(2, v3, 4u, 1u, "phLibNfc_MultiTagCompleteInit- GetFwInfoCmd failed");
    sub_297EA3DD8(v3, a2);
    v3 = 0;
    goto LABEL_11;
  }

  v4 = sub_297F052B0(*(v3 + 3000));
  *(v3 + 3088) = v4;
  if (sub_297EA79F8(v3, v4))
  {
    v5 = "phLibNfc_MultiTagCompleteInit- GetNfccFeatures failed";
  }

  else if (sub_297EA3DD8(v3, 0))
  {
    v5 = "phLibNfc_MultiTagCompleteInit- INIT Complete failed";
  }

  else
  {
    if (!sub_297EA5B80(v3, 0))
    {
      goto LABEL_11;
    }

    v5 = "phLibNfc_MultiTagCompleteInit- Static Sequence failed";
  }

  sub_297E4E0B0(1, v3 + 9792, 4u, 1u, v5);
LABEL_11:

  return sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_MultiTagCompleteInit");
}

uint64_t sub_297EFA674(uint64_t a1, int a2, int *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConvertToRemDevType");
  if (a2 <= 9)
  {
    v6 = 10;
    if (a2 <= 2)
    {
      if (!a2)
      {
        goto LABEL_24;
      }

      if (a2 == 1)
      {
        v6 = 17;
        goto LABEL_24;
      }

      if (a2 != 2)
      {
        goto LABEL_22;
      }

LABEL_18:
      v6 = 21;
      goto LABEL_24;
    }

    switch(a2)
    {
      case 3:
        goto LABEL_24;
      case 5:
        goto LABEL_18;
      case 6:
        v6 = 23;
        goto LABEL_24;
    }

LABEL_22:
    v7 = "phLibNfc_ConvertToRemDevType- RF tech Unknown";
    goto LABEL_23;
  }

  if (a2 <= 111)
  {
    switch(a2)
    {
      case 10:
        v6 = 13;
        goto LABEL_24;
      case 11:
        v6 = 14;
        goto LABEL_24;
      case 12:
        v6 = 15;
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if ((a2 - 112) >= 3)
  {
    goto LABEL_22;
  }

  v7 = "phLibNfc_ConvertToRemDevType- RF tech Not supported";
LABEL_23:
  sub_297E4E0B0(2, a1, 4u, 2u, v7);
  v6 = 0;
LABEL_24:
  *a3 = v6;

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConvertToRemDevType");
}

uint64_t sub_297EFA7B8(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_LongVasCwDetNtfHandler");
  if (a2 == 43)
  {
    if (a1)
    {
      if (a4 != 255)
      {
        v7 = a1[821];
        if (v7)
        {
          v8 = a1[822];
          sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_LongVasCwDetNtfHandler :pGenericNtfCb[Prop Vas Long CW Ntf]");
          v7(a1[1223], v8, 78, 0);
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LongVasCwDetNtfHandler");
}

uint64_t sub_297EFA880(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropRdrNtfHandler");
  if (a2 != 10 || !a1 || a4 == 255)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropRdrNtfHandler");
  }

  *(a1 + 1449) = 1;
  v8 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v9 = *a3;
  if (*a3 && (a3[2] - 5) <= 0x14)
  {
    v10 = *v9;
    v11 = v9[1];
    WORD2(v41) = v10 | (v11 << 8);
    v12 = v41 & 0xFE40 | v10 & 0x3F | (v10 >> 6 << 7);
    LOWORD(v41) = v12;
    if ((v10 & 9) != 0)
    {
      if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1 || *(a1 + 2984) == 1 && (*(a1 + 3028) & 0xFEu) >= 0x32)
      {
        LOWORD(v41) = v12 & 0xFFBF | (32 * v11) & 0x40;
        v13 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        v14 = *a3;
        LODWORD(v42) = *(*a3 + 4);
        if ((v42 - 1) > 0x13)
        {
          *(&v41 + 1) = 0;
          LODWORD(v42) = 0;
        }

        else
        {
          *(&v41 + 1) = v14 + 5;
        }
      }

      else
      {
        if (v10)
        {
          LODWORD(v42) = 5;
          *v9 = 106;
          v30 = *a3;
        }

        else
        {
          v30 = 0;
          LODWORD(v42) = 0;
        }

        *(&v41 + 1) = v30;
        v38 = *(a1 + 9792);
        phOsalNfc_MemCopy();
      }
    }

    else
    {
      *(&v41 + 1) = 0;
      LODWORD(v42) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_PropRdrNtfHandler- Not a Prop Reader");
    }
  }

  if ((*(a1 + 1060) & 7) == 0)
  {
    goto LABEL_25;
  }

  v15 = *(a1 + 1408);
  if ((*(a1 + 1060) & 0x38) == 0 && v15 != 6)
  {
    v16 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v17 = *(a1 + 768);
    if (v17 && v17 != 0xFFFFFFFFFFFFLL)
    {
      v18 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 768) = 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v39[0]) = *(a1 + 1408);
    *(a1 + 1408) = 6;
    *(a1 + 1449) = 0;
    v19 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v20 = *(a1 + 6696);
    if (v20)
    {
      v20(*(a1 + 9784), *(a1 + 6704), 24, *(a1 + 440), v39, 0);
    }

    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropRdrNtfHandler");
  }

  if ((*(a1 + 1060) & 0x38) == 0 && v15 == 6 && !*(a1 + 1448) && (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2987) == 1 || *(a1 + 2992) == 1 || *(a1 + 2984) == 1))
  {
    v26 = *(a1 + 768);
    if (v26 && v26 != 0xFFFFFFFFFFFFLL)
    {
      v27 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 768) = 0xFFFFFFFFFFFFLL;
    }

    v28 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    if (v42)
    {
      if (v42 > 0x14)
      {
        LODWORD(v42) = 0;
        sub_297E50EBC(1, a1 + 9792, 4u, 1u, "Received VasUpPayload size exceeded Max vas code length. Hence resetting length");
      }

      else
      {
        v29 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        *(a1 + 1424) = a1 + 1450;
      }
    }

    v31 = *(a1 + 768);
    if (v31 != 0xFFFFFFFFFFFFLL && v31)
    {
      v34 = *(a1 + 9792);
      phOsalNfc_Timer_Stop();
      v33 = *(a1 + 768);
    }

    else
    {
      v32 = *(a1 + 9792);
      v33 = phOsalNfc_Timer_Create();
      *(a1 + 768) = v33;
    }

    if (v33 && v33 != 0xFFFFFFFFFFFFLL)
    {
      v35 = *(a1 + 9792);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E687D8(1, a1 + 9792, *(a1 + 768), 4u, 4u, "phLibNfc_PropRdrNtfHandler");
        sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Vas Inversion Timer started:Waiting for Express Started NTF after reception of VAS");
        return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropRdrNtfHandler");
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Timer Start Failed for VAS NTF timer");
      v36 = *(a1 + 9792);
      v37 = *(a1 + 768);
      phOsalNfc_Timer_Delete();
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Timer Create Failed for VAS NTF timer");
    }

    *(a1 + 768) = 0xFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_25:
    if ((*(a1 + 1060) & 0x10) != 0)
    {
      v21 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      if (v42)
      {
        if (v42 > 0x14)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received VasUpPayload size exceeded Max vas code length");
          LODWORD(v42) = 0;
        }

        else
        {
          v22 = *(a1 + 9792);
          phOsalNfc_MemCopy();
          *(a1 + 1424) = a1 + 1450;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_PropRdrNtfHandler:RF_ON followed by VAS (Exp Non Entry) received hence propagate VAS NTF to upper");
      *(a1 + 1449) = 0;
    }

    v23 = *(a1 + 6568);
    if (v23)
    {
      v24 = *(a1 + 6576);
      sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_PropRdrNtfHandler :pGenericNtfCb[Prop Reader Ntf]");
      v23(*(a1 + 9784), v24, 69, &v41);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropRdrNtfHandler");
}

uint64_t sub_297EFADD8(uint64_t a1, uint64_t a2)
{
  result = sub_297E687D8(2, a2, a1, 4u, 4u, "phLibNfc_eSEExpNtfTimeOutCb");
  if (a2)
  {
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
    if (v6 == a2)
    {
      v7 = *(a2 + 768);
      if (v7 && v7 != 0xFFFFFFFFFFFFLL)
      {
        v8 = *(a2 + 9792);
        phOsalNfc_Timer_Delete();
        *(a2 + 768) = 0xFFFFFFFFFFFFLL;
      }

      sub_297E4E0B0(1, a2 + 9792, 4u, 4u, "Timer STOPPED phLibNfc_eSEExpNtfTimeOutCb");
      *(a2 + 1448) = 0;
      v9 = *(a2 + 6568);
      if (v9)
      {
        v10 = *(a2 + 6576);
        sub_297E54734(1, a2 + 9792, 4u, 4u, "phLibNfc_eSEExpNtfTimeOutCb :pGenericNtfCb[exp ntf timeout]");
        v9(*(a2 + 9784), v10, 69, a2 + 1416);
      }

      *(a2 + 1408) = 6;
      v11 = *(a2 + 9792);
      phOsalNfc_SetMemory();
      v12 = *(a2 + 9792);
      result = phOsalNfc_SetMemory();
      *(a2 + 1449) = 0;
    }
  }

  return result;
}

uint64_t sub_297EFAF18(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PllNtfHandler");
  if (a1)
  {
    v4 = *(a1 + 6568);
    v5 = *(a1 + 6576);
    if (a2 == 12)
    {
      if (*(a1 + 6104))
      {
        *(a1 + 3201) = 1;
        goto LABEL_15;
      }

      if (v4)
      {
        if (*(a1 + 2992) == 1)
        {
          sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_PllNtfHandler :pGenericNtfCb[PLL lost lock]");
          v6 = *(a1 + 9784);
          v7 = v5;
          v8 = 77;
          goto LABEL_13;
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Unknown ntf is received, and dropped ");
      }
    }

    else
    {
      if (a2 != 11)
      {
        goto LABEL_15;
      }

      if (*(a1 + 6104))
      {
        *(a1 + 3200) = 1;
        goto LABEL_15;
      }

      if (v4)
      {
        sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_PllNtfHandler :pGenericNtfCb[PLL UNLOCK]");
        v6 = *(a1 + 9784);
        v7 = v5;
        v8 = 70;
LABEL_13:
        v4(v6, v7, v8, 0);
      }
    }
  }

LABEL_15:

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PllNtfHandler");
}

uint64_t sub_297EFB064(void *a1, int a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RfTxLdoErrorNtfHandler");
  if (a1)
  {
    if (a2 == 13)
    {
      v6 = a1[821];
      if (v6)
      {
        v7 = a1[822];
        if (a3 && *a3 && (v8 = *(a3 + 2)) != 0)
        {
          v13 = *a3;
          LODWORD(v14) = v8;
          sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_RfTxLdoErrorNtfHandler :pGenericNtfCb[TXLDO ERROR]");
          v9 = a1[1223];
          v10 = &v13;
          v11 = v7;
        }

        else
        {
          sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_RfTxLdoErrorNtfHandler :pGenericNtfCb[TXLDO ERROR]");
          v9 = a1[1223];
          v11 = v7;
          v10 = 0;
        }

        v6(v9, v11, 87, v10);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RfTxLdoErrorNtfHandler");
}

uint64_t sub_297EFB174(void *a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ExtTempNormalNtfHandler");
  if (a1)
  {
    if (a2 == 14)
    {
      v4 = a1[821];
      if (v4)
      {
        v5 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_ExtTempNormalNtfHandler :pGenericNtfCb[GPADC Temperature back To Normal Notification]");
        v4(a1[1223], v5, 88, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ExtTempNormalNtfHandler");
}

uint64_t sub_297EFB230(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RfXtalErrNtfHandler");
  if (a1 && a2 == 16)
  {
    if (*(a1 + 6104))
    {
      *(a1 + 3202) = 1;
    }

    else
    {
      v4 = *(a1 + 6568);
      if (v4)
      {
        v5 = *(a1 + 6576);
        sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_RfXtalErrNtfHandler :pGenericNtfCb[XTAL Start Error]");
        v4(*(a1 + 9784), v5, 90, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RfXtalErrNtfHandler");
}

uint64_t sub_297EFB300(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_TotalPollDurationNtfHandler");
  if (a3)
  {
    if (a1)
    {
      if (!a4 && a2 == 17)
      {
        v8 = a1[821];
        if (v8)
        {
          v9 = a1[822];
          sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_TotalPollDurationNtfHandler :pGenericNtfCb[Total POLL Duration]");
          v8(a1[1223], v9, 122, a3);
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_TotalPollDurationNtfHandler");
}

uint64_t sub_297EFB3CC(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_EmvcoRfCollisionDetNtfHandler");
  if (a1)
  {
    if (!a4 && a2 == 18)
    {
      v7 = a1[821];
      if (v7)
      {
        v8 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_EmvcoRfCollisionDetNtfHandler :pGenericNtfCb[EMVCO RF Collision Detected]");
        v7(a1[1223], v8, 123, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EmvcoRfCollisionDetNtfHandler");
}

uint64_t sub_297EFB490(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CrcErrorNtfHandler");
  if (a1 && a2 == 27)
  {
    v7 = a1[821];
    if (v7)
    {
      v8 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_CrcErrorNtfHandler :pGenericNtfCb[CRC Err ntf]");
      v7(a1[1223], v8, a4, 0);
    }

    if (a1[763])
    {
      sub_297EA3DD8(a1, 137);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_CrcErrorNtfHandler: Can not process Crc error - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CrcErrorNtfHandler");
}

uint64_t sub_297EFB588(void *a1, int a2, uint64_t *a3, int a4)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GpadcDebugHandler");
  if (!a1 || a2 != 41 || !a3 || a4)
  {
    v10 = "phLibNfc_GpadcDebugHandler: Can not process Gpadc debug Ntf - Invalid input parameters";
LABEL_9:
    sub_297E4E0B0(2, a1, 4u, 4u, v10);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GpadcDebugHandler");
  }

  v8 = a1[821];
  if (!v8)
  {
    v10 = "phLibNfc_GpadcDebugHandler: Dropping Ntf as there is no registration";
    goto LABEL_9;
  }

  v9 = a1[822];
  v12 = *a3;
  LODWORD(v13) = *(a3 + 2);
  sub_297E54734(2, a1, 4u, 4u, "phLibNfc_GpadcDebugHandler :pGenericNtfCb[Gpadc debug ntf]");
  v8(a1[1223], v9, 85, &v12);
  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GpadcDebugHandler");
}

uint64_t sub_297EFB68C(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_EraseCounterNtfHandler");
  if (a1 && a2 == 42 && a3 && !a4)
  {
    v8 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v9 = *(a1 + 6568);
    if (v9)
    {
      v10 = *(a1 + 6576);
      v12 = *a3;
      LODWORD(v13) = *(a3 + 2);
      sub_297E54734(2, a1, 4u, 4u, "phLibNfc_EraseCounterNtfHandler :pGenericNtfCb[erase counter exceed limit ntf]");
      v9(*(a1 + 9784), v10, 86, &v12);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_EraseCounterNtfHandler: Dropping Ntf as there is no registration");
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_EraseCounterNtfHandler: Can not process Erase counter exceed limit Ntf - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EraseCounterNtfHandler");
}

uint64_t sub_297EFB7B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CustTrimErrorNtfHandler");
  if (a1 && a2 == 30)
  {
    v7 = *(a1 + 6568);
    if (v7)
    {
      v8 = *(a1 + 6576);
      sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_CustTrimErrorNtfHandler :pGenericNtfCb[Trim Err ntf]");
      v7(*(a1 + 9784), v8, a4, 0);
    }

    if (*(a1 + 6296))
    {
      sub_297F08DBC(*(a1 + 3088), 0);
      *(a1 + 2960) = 0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v9 = *(a1 + 6296);
      v10 = *(a1 + 6304);
      *(a1 + 6296) = 0;
      *(a1 + 6304) = 0;
      v9(*(a1 + 9784), v10, 136);
    }

    if (*(a1 + 6104))
    {
      sub_297EA3DD8(a1, 136);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_CustTrimErrorNtfHandler: Can not process Customer Trim error Ntf - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CustTrimErrorNtfHandler");
}

uint64_t sub_297EFB8F0(void *a1, int a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_TrimmingErrorNtfHandler");
  if (a2 == 46 && a1 && a3)
  {
    v6 = a1[821];
    if (v6 && (v7 = *a3) != 0 && (v8 = *(a3 + 2)) != 0)
    {
      v9 = a1[822];
      v11 = v7;
      LODWORD(v12) = v8;
      sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_TrimmingErrorNtfHandler :pGenericNtfCb[Trimming Failure ntf]");
      v6(a1[1223], v9, 89, &v11);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4u, 2u, "phLibNfc_TrimmingErrorNtfHandler: Dropping - Trimming Failure Info Ntf");
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_TrimmingErrorNtfHandler");
}

uint64_t sub_297EFB9EC(void *a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SpmiStsRegInfoNtfHandler");
  if (a1 && a2 == 47)
  {
    v6 = a1[821];
    if (v6)
    {
      v7 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_SpmiStsRegInfoNtfHandler :pGenericNtfCb[Spmi Status RegInfo ntf]");
      if (a3)
      {
        v8 = a1[1223];
        v9 = v7;
        v10 = a3;
      }

      else
      {
        sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_SpmiStsRegInfoNtfHandler: Read Spmi Status Failed - pInfo set to NULL");
        v8 = a1[1223];
        v9 = v7;
        v10 = 0;
      }

      v6(v8, v9, 91, v10);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4u, 2u, "phLibNfc_SpmiStsRegInfoNtfHandler: Dropping - Spmi Status Register Info Ntf");
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SpmiStsRegInfoNtfHandler");
}

uint64_t sub_297EFBB00(void *a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DebugLogInfoNtfHandler");
  if (a2 == 48 && a1 && a3)
  {
    v6 = a1[821];
    if (v6)
    {
      v7 = a1[822];
      v11 = *(a3 + 8);
      LODWORD(v12) = *(a3 + 16);
      v8 = *(a3 + 2);
      if ((v8 - 3) >= 2)
      {
        if (v8 != 1)
        {
          sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_DebugLogInfoNtfHandler: Received unexpected Generic Debug Info Type");
          return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DebugLogInfoNtfHandler");
        }

        v9 = 93;
      }

      else
      {
        v9 = 92;
      }

      sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_DebugLogInfoNtfHandler :pGenericNtfCb[Generic Debug Info ntf]");
      v6(a1[1223], v7, v9, &v11);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4u, 2u, "phLibNfc_DebugLogInfoNtfHandler: Dropping - Generic Debug Log Ntf Info");
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DebugLogInfoNtfHandler");
}

uint64_t sub_297EFBC38(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RssiStatsHandler");
  if (a3 && a1 && !a4)
  {
    v7 = a1[821];
    if (v7)
    {
      v8 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_RssiStatsHandler :pGenericNtfCb[RSSI STATS ntf]");
      v7(a1[1223], v8, 83, a3);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_RssiStatsHandler: Can not process RSSI Stats NTF - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RssiStatsHandler");
}

uint64_t sub_297EFBD18(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_UartCommnErrorHandler");
  if (a1 && a4 == 80)
  {
    if (a3 && (v7 = a1[821]) != 0)
    {
      v8 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_UartCommnErrorHandler :pGenericNtfCb[COMM ERR]");
      v7(a1[1223], v8, 80, a3);
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 1224), 4u, 4u, "phLibNfc_UartCommnErrorHandler: Dropping as no Registrations Exist");
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UartCommnErrorHandler");
}

uint64_t sub_297EFBE00(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
  if (!a1)
  {
    goto LABEL_13;
  }

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
  if (!a3 || v9 != a1)
  {
LABEL_13:
    v11 = "Invalid Params received!!";
    v12 = 2;
    v13 = a1;
LABEL_53:
    sub_297E4E0B0(v12, v13, 4u, 1u, v11);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
  }

  v10 = *a3;
  if (*a3 <= 6)
  {
    if (v10 > 3)
    {
      switch(v10)
      {
        case 4:
          v11 = "Generic error received: phNciNfc_e_NotInitiatlized";
          goto LABEL_52;
        case 5:
          v11 = "Generic error received: phNciNfc_e_SyntaxErr";
          goto LABEL_52;
        case 6:
          v11 = "Generic error received: phNciNfc_e_SemanticErr";
          goto LABEL_52;
      }
    }

    else
    {
      switch(v10)
      {
        case 1:
          v11 = "Generic error received: phNciNfc_e_Rejected";
          goto LABEL_52;
        case 2:
          v11 = "Generic error received: phNciNfc_e_RfFrameCorrupted";
          goto LABEL_52;
        case 3:
          v11 = "Generic error received: phNciNfc_e_Failed";
          goto LABEL_52;
      }
    }
  }

  else if (v10 <= 9)
  {
    switch(v10)
    {
      case 7:
        v11 = "Generic error received: phNciNfc_e_InvalidParam";
        goto LABEL_52;
      case 8:
        v11 = "Generic error received: phNciNfc_e_MsgSizeExceeded";
        goto LABEL_52;
      case 9:
        v11 = "Generic error received: phNciNfc_e_DiscAlreadyStarted";
        goto LABEL_52;
    }
  }

  else if (v10 > 236)
  {
    if (v10 == 237)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Generic error received: phNciNfc_e_CustTrimAreaAssert");
      sub_297EFB7B8(a1, 30, v15, a4);
      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
    }

    if (v10 == 247)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Generic error received: phNciNfc_e_SmbTxBlocked");
      if (*(a1 + 6344) || *(a1 + 6360) || *(a1 + 6536))
      {
        *(a1 + 754) = 1;
      }

      if (*(a1 + 6696))
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_GenericErrorHandler: Independent SMB TX Blocked Received");
        v14 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        LODWORD(v31) = 255;
        sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_GenericErrorHandler:pSeListenerNtfCb[SMB TX BLOCKED]");
        (*(a1 + 6696))(*(a1 + 9784), *(a1 + 6704), 28, *(a1 + 440), v30, 0);
      }

      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
    }
  }

  else
  {
    if (v10 == 10)
    {
      v11 = "Generic error received: phNciNfc_e_DiscTgtActvnFailed";
      goto LABEL_52;
    }

    if (v10 == 11)
    {
      v11 = "Generic error received: phNciNfc_e_DiscTearDown";
LABEL_52:
      v13 = a1 + 9792;
      v12 = 1;
      goto LABEL_53;
    }
  }

  if (a4 != 133)
  {
    v11 = "Generic error received: phNciNfc_e_ErrorNotDefined -Unknown error code";
    goto LABEL_52;
  }

  if (*(a1 + 6568))
  {
    sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_GenericErrorHandler :pGenericNtfCb[GENERIC ERR Ntf]");
    (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 133, a3 + 1);
  }

  v16 = *(a1 + 6104);
  v17 = a3[1];
  if (v16 && (v17 - 229) <= 0x11)
  {
    v18 = 1 << (v17 + 27);
    if ((v18 & 0x43) != 0)
    {
LABEL_62:
      v19 = a1;
      v20 = 137;
      goto LABEL_63;
    }

    if ((v18 & 0x20024) != 0)
    {
      v19 = a1;
      v20 = 136;
LABEL_63:
      sub_297EA3DD8(v19, v20);
      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
    }
  }

  if ((v17 - 251) > 3)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
  }

  v22 = 0;
  v23 = *(a1 + 3240);
  if (v23 && v23 != 0xFFFFFFFFFFFFLL)
  {
    v24 = *(a1 + 9792);
    phOsalNfc_Timer_Stop();
    *(a1 + 6084) = 0;
    v22 = 1;
    sub_297E687D8(1, a1 + 9792, *(a1 + 3240), 4u, 4u, "phLibNfc_GenericErrorHandler");
    v25 = *(a1 + 9792);
    v26 = *(a1 + 3240);
    phOsalNfc_Timer_Delete();
    *(a1 + 3240) = 0xFFFFFFFFFFFFLL;
    v16 = *(a1 + 6104);
  }

  if (!v16)
  {
    *(a1 + 3264) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_PropMultiTagStatNtfHandler- Independent Prop Tag Detect NTF Rxd");
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
  }

  if (a3[1] == 253)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Generic error received: UNEXPECTED MULTI TAG DETECTION ERROR");
    goto LABEL_62;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Generic error received: MULTI_TAG ERROR");
  if (v22 && !*(a1 + 3264))
  {
    *(a1 + 3264) = 1;
    *(a1 + 2960) = off_2A1A90E88;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v27 = off_2A1A90E88[0];
    if (off_2A1A90E88[0])
    {
      v27 = 0;
      v28 = &qword_2A1A90E98;
      do
      {
        ++v27;
        v29 = *v28;
        v28 += 2;
      }

      while (v29);
    }

    *(a1 + 2953) = v27;
    if (sub_297E5588C(a1, 0, 0) != 13)
    {
      sub_297EFA54C(a1, 255);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericErrorHandler");
}

uint64_t sub_297EFC328(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_TriggerAssertCb");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_TriggerAssertCb: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_TriggerAssertCb");
}

unint64_t sub_297EFC3D8(int a1)
{
  v13 = a1;
  sub_297E4E1B4(1, &v13, 4u, 5u, "phLibNfc_FrameDebugParam");
  if (v13)
  {
    if (v13 != 1)
    {
      sub_297E4E0B0(1, &v13, 4u, 1u, "phLibNfc_FrameDebugParam: passed controller type is unknown");
      v11 = 0;
      goto LABEL_7;
    }

    v1 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v1 = &gphNfc_DebugInfo_Prim;
  }

  v3 = *v1;
  v2 = v1[1];
  v4 = vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_297F13880), xmmword_297F13890);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v6 = v5;
  v5.i64[0] = v4.u32[2];
  v5.i64[1] = v4.u32[3];
  v7 = vdupq_n_s32(v2);
  v8 = vshlq_u32(v7, xmmword_297F138C0);
  v8.i32[3] = vshlq_u32(v7, xmmword_297F138E0).i32[3];
  v9 = vorrq_s8(vandq_s8(v8, xmmword_297F138F0), vorrq_s8(vandq_s8(vshlq_u32(v7, xmmword_297F138D0), xmmword_297F13900), vandq_s8(vshlq_u32(v7, xmmword_297F13910), xmmword_297F13920)));
  *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v10 = vorrq_s8(vshlq_u64(v6, xmmword_297F138B0), vshlq_u64(v5, xmmword_297F138A0));
  v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | (16 * v3) & 0xF00000000 | (((v3 >> 18) & 0x1F) << 41) | (((v3 >> 17) & 1) << 46) | (v2 << 31) | (((v3 >> 23) & 0x1F) << 36) | (v2 << 29) & 0x40000000 | (v2 >> 31) | (v2 << 25) & 0x10000000 | (((v2 >> 2) & 1) << 29) | v9.i32[0] | (v2 >> 29) & 2 | v9.i32[1];
LABEL_7:
  sub_297E4DFAC(1, &v13, 4u, 5u, "phLibNfc_FrameDebugParam");
  return v11;
}

uint64_t sub_297EFC5B0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigTestModeEnd");
  if (a1)
  {
    v2 = *(a1 + 3000);
    if (*(a1 + 3224) != 1)
    {
      v3 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      phTmlNfc_IoCtl();
    }

    sub_297ECAE1C(a1);
    v4 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
    sub_297E9F3BC(v2, 0);
  }

  return sub_297E4DFAC(2, 0, 4u, 5u, "phLibNfc_ConfigTestModeEnd");
}

uint64_t sub_297EFC66C(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigNciMode");
  if (!a1)
  {
    v10 = "FAILURE, Libnfc or Download Context is Invalid";
    v11 = 2;
    v12 = 0;
LABEL_15:
    sub_297E4E0B0(v11, v12, 4u, 1u, v10);
    a2 = 255;
    goto LABEL_31;
  }

  v4 = *(a1 + 3000);
  sub_297E67F6C(v4, &v23);
  sub_297E5F164(v4, &v22);
  sub_297E5D114(v4, &v24);
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v4)
    {
      break;
    }

    v6 = 0;
    v9 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v9 = *(v8 + 2) == 1;
LABEL_8:
  if (!v24 || !v23)
  {
    v10 = "FAILURE, IOCTL/DNLD Context is Invalid";
    v12 = a1 + 9792;
    v11 = 1;
    goto LABEL_15;
  }

  v13 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v14 = sub_297E7F0C8(*(v24 + 8), *(v24 + 116), *(v24 + 118));
  if ((v22 & 0xFFFFFFFD) != 4)
  {
    goto LABEL_30;
  }

  if (v14 == 6)
  {
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v14 == 3)
    {
      v15 = *(v24 + 118) == 1;
    }

    else
    {
      v15 = v14 == 7;
    }

    v16 = v15;
    if ((v16 & v9 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  phTmlNfc_IoCtl();
  v17 = phTmlNfc_IoCtl();
  if (v17 != 179 || (sub_297E96914(1, a1 + 9792, 4u, 3u, "phLibNfc_ConfigNciMode: Assert Wakeup Status="), sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigNciMode: NFCSTATUS_SPMI_NACK1"), v18 = *(a1 + 9792), phOsalNfc_Delay(), v17 = phTmlNfc_IoCtl(), v17 != 179))
  {
    a2 = v17;
    sub_297E96914(1, a1 + 9792, 4u, 3u, "phLibNfc_ConfigNciMode: Assert Wakeup Status=");
    if (a2)
    {
      v20 = "phLibNfc_ConfigNciMode Unexpected Driver Error";
      goto LABEL_29;
    }

LABEL_30:
    sub_297E79734(a1, *(a1 + 2960), 1);
    goto LABEL_31;
  }

  sub_297E96914(1, a1 + 9792, 4u, 3u, "phLibNfc_ConfigNciMode: Assert Wakeup Status=");
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigNciMode: NFCSTATUS_SPMI_NACK2");
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigNciMode: NFCSTATUS_SPMI_NACK2");
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigNciMode: Update client-ID to Secondary client ID(0x0B)");
  v19 = phTmlNfc_ConfigureSpmi();
  if (v19)
  {
    a2 = v19;
    v20 = "phLibNfc_ConfigNciMode - client ID update failed";
LABEL_29:
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, v20);
    goto LABEL_31;
  }

  phTmlNfc_ReadAbort();
  phTmlNfc_FlushTxRxBuffers();
  if (!sub_297E56AFC(v4))
  {
    phTmlNfc_WriteAbort();
  }

  *(a1 + 3000) = v4;
  *(a1 + 9784) = v4;
  if (sub_297F04A7C(v4, &v25, sub_297E5588C, a1, 1, 0) == 13)
  {
    a2 = 13;
  }

  else
  {
    a2 = 255;
  }

LABEL_31:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigNciMode");
  return a2;
}

uint64_t sub_297EFCA00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SysConfigInitRspCb");
  if (a1 && a3)
  {
    v6 = a3[1];
    v7 = a2;
    if (v6)
    {
      v7 = *v6;
    }

    if (!v7)
    {
      v8 = *a3;
      *(a1 + 3088) = *a3;
      if (sub_297EA79F8(a1, v8) || !sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136)))
      {
        a2 = 255;
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SysConfigInitRspCb");
  return a2;
}

uint64_t sub_297EFCAB8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
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
    if (a2 == 34 && a3)
    {
      v12 = a1[821];
      if (v12)
      {
        v13 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler :pGenericNtfCb[MFW Raw Control message Ntf]");
        v12(a1[1223], v13, a4, a3);
      }
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 1224), 4u, 2u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler: Failed Invalid Message");
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler: Invalid context");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler");
}

uint64_t sub_297EFCC04(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ParseRfConfigSignedInputBuffer");
  if (!a2 || !a3 || !a4)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v19 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid input parameter");
    goto LABEL_30;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a2 + v10);
    if ((v11 - 160) < 2)
    {
      v12 = 0;
      v13 = *(a2 + v10 + 2);
      v14 = v13 + v8 + 3;
      v8 += v13 + 3;
      if (v14 >= 0x10000)
      {
        v8 = 0;
      }

      ++v9;
      goto LABEL_18;
    }

    if (v11 != 240)
    {
      goto LABEL_26;
    }

    if (*(a2 + v10 + 1) != 2)
    {
      goto LABEL_26;
    }

    if (*(a2 + v10 + 2))
    {
      goto LABEL_26;
    }

    v15 = v10 + 3;
    if (*(a2 + v15) != 8)
    {
      goto LABEL_26;
    }

    if (v10 >= 0xFFFFFFFD)
    {
      v15 = 0;
    }

    v16 = *(a2 + v15);
    if ((v16 + v8 + 4) >> 16 || (v8 + v16 + 4) - 13 >= 0xF2)
    {
      break;
    }

    v8 = 0;
    v12 = 1;
LABEL_18:
    if (v10 <= (v12 ^ 0xFFFFFFFD))
    {
      v17 = v10 + v12;
      v18 = *(a2 + v17 + 2);
      if (v10 <= -4 - v17 - v18)
      {
        v10 = v17 + v18 + 3;
        if (v10 < a3)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  sub_297E4E0B0(2, a1, 4u, 2u, "phLibNfc_ParseRfConfigSignedInputBuffer: Payload Len issue");
LABEL_26:
  if (v10 == a3 && v9)
  {
    v19 = 0;
    *a4 = v9;
  }

  else
  {
    *a4 = 0;
    sub_297E4E0B0(2, a1, 4u, 1u, "Inconsistent input buffer!");
    v19 = 255;
  }

LABEL_30:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ParseRfConfigSignedInputBuffer");
  return v19;
}

uint64_t sub_297EFCE08(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReConfigHsuBrCmd");
  if (a1)
  {
    if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1 || (v2 = *(a1 + 3104), v2 == 2))
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_297F05D1C(*(a1 + 3088), v2, sub_297E5BA84, a1);
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReConfigHsuBrCmd");
  return v3;
}

uint64_t sub_297EFCEBC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ClrRetAssertDataCb");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 9784), v4, a2, a1 + 8, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_ClrRetAssertDataCb:Context is Null");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ClrRetAssertDataCb");
}

uint64_t sub_297EFCF68(unsigned __int8 *a1, unsigned __int8 *a2, int *a3, _DWORD *a4, int *a5, _DWORD *a6)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ParseAssertionData");
  if (!a1)
  {
    goto LABEL_22;
  }

  if (a2[1])
  {
    v12 = "phLibNfc_ParseAssertionData:Failed Status Received From Lower Layer";
LABEL_21:
    sub_297E4E0B0(1, (a1 + 9792), 4u, 1u, v12);
LABEL_22:
    v19 = 255;
    goto LABEL_23;
  }

  v13 = a1[2984];
  if (v13 == 1)
  {
    v14 = 146;
  }

  else if (a1[2986] == 1)
  {
    v14 = 186;
  }

  else if (a1[2994] == 1)
  {
    v14 = 126;
  }

  else
  {
    v14 = 166;
  }

  v15 = *a2;
  if (v14 != v15)
  {
    v12 = "phLibNfc_ParseAssertionData:INvalid Length Received from Lower Layer";
    goto LABEL_21;
  }

  if (v15 >= 3)
  {
    v16 = v14 - 2;
    v17 = a2 + 5;
    v18 = 6;
    while (*(v17 - 2) != 160 || *(v17 - 1) != 26 || *v17 != 4)
    {
      ++v18;
      ++v17;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v19 = 0;
    *a3 = v18;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_19:
    v20 = 64;
    goto LABEL_28;
  }

LABEL_18:
  v19 = 255;
  if (a1[2984])
  {
    goto LABEL_19;
  }

LABEL_25:
  if (a1[2986] == 1)
  {
    v20 = 96;
  }

  else
  {
    v20 = 80;
  }

LABEL_28:
  v22 = *a2;
  if (v22 >= 3)
  {
    v24 = 2;
    while (a2[v24 + 1] != 160 || a2[v24 + 2] != 27 || v20 != a2[v24 + 3])
    {
      if (v22 == ++v24)
      {
        goto LABEL_37;
      }
    }

    v19 = 0;
    *a4 = v24 + 4;
    LODWORD(v22) = *a2;
LABEL_37:
    v23 = v22;
    if (v22 <= 2)
    {
      goto LABEL_43;
    }

    v25 = 2;
    while (a2[v25 + 1] != 160 || a2[v25 + 2] != 28 || a2[v25 + 3] != 44)
    {
      if (v22 == ++v25)
      {
        goto LABEL_43;
      }
    }

    v19 = 0;
    *a6 = v25 + 4;
    LODWORD(v22) = *a2;
  }

  v23 = v22;
LABEL_43:
  if (v13 == 1)
  {
    v26 = 20;
  }

  else
  {
    v26 = 24;
  }

  if (a1[2986] == 1)
  {
    v26 += 4;
  }

  if (a1[2994] == 1)
  {
    v26 -= 8;
  }

  if (v23 >= 3)
  {
    v27 = v22 - 2;
    v28 = a2 + 5;
    v29 = 6;
    while (*(v28 - 2) != 160 || *(v28 - 1) != 39 || *v28 != v26)
    {
      ++v29;
      ++v28;
      if (!--v27)
      {
        goto LABEL_23;
      }
    }

    v19 = 0;
    *a5 = v29;
  }

LABEL_23:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ParseAssertionData");
  return v19;
}

uint64_t sub_297EFD244(void *a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetNfccParamsCallback");
  if (a1)
  {
    v6 = a1[845];
    v7 = a1[846];
    *(a1 + 845) = 0u;
    if (v6)
    {
      sub_297E50EBC(1, (a1 + 1224), 4u, 4u, "phLibNfc_SM_eGetNfcParams: Invoking callback, wStatus = ");
      sub_297E4D930(1, (a1 + 1224), 4u, 131, "phLibNfc_GetNfccParamsCallback");
      v6(a1[1223], v7, a2, a3);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetNfccParamsCallback");
}

uint64_t sub_297EFD338(int a1, uint64_t a2)
{
  v4 = a1;
  sub_297E4E1B4(1, &v4, 4u, 5u, "phLibNfc_StopTimer");
  if (a2 && a2 != 0xFFFFFFFFFFFFLL && phOsalNfc_Timer_Stop())
  {
    sub_297E50EBC(1, &v4, 4u, 4u, "LibNfc Timer_Stop failed,Stat=");
  }

  return sub_297E4DFAC(1, &v4, 4u, 5u, "phLibNfc_StopTimer");
}

uint64_t sub_297EFD3DC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetFwTypeCmd");
  if (a1)
  {
    if (*(a1 + 3264) == 1 || ((v2 = *(a1 + 3028), v3 = *(a1 + 2985), v3 == 1) ? (v4 = v2 > 0xA) : (v4 = 0), v4 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1))
    {
      v5 = sub_297F0A1A0(*(a1 + 3088), sub_297E5BA84, a1);
    }

    else
    {
      if ((v2 & 0xFFFFFFFD) != 0xFC && (v3 == 1 || *(a1 + 2984) == 1))
      {
        v5 = 0;
        if (v2 - 160 > 0x3F)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v5 = 0;
        v7 = 3;
      }

      *(a1 + 3196) = v7;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetFwTypeCmd");
  return v5;
}

uint64_t sub_297EFD50C(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetFwTypeProc");
  if (a1 && a3)
  {
    if (!a2 && *a3 && *(a3 + 2))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetFwTypeProc: operation success");
      v6 = **a3;
      if ((v6 - 1) >= 2)
      {
        **a3 = 3;
        v6 = **a3;
      }

      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetFwTypeProc: operation failed");
      v6 = 3;
    }

    *(a1 + 3196) = v6;
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetFwTypeProc: Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetFwTypeProc");
  return a2;
}

uint64_t sub_297EFD62C(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MultiTagGetFwTypeProc");
  if (a1 && a3)
  {
    if (!a2 && *a3 && *(a3 + 2))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_MultiTagGetFwTypeProc: operation success");
      v7 = *a3;
      v8 = **a3;
      if ((v8 - 1) >= 2)
      {
        *v7 = 3;
        v7 = *a3;
        v8 = **a3;
      }

      a2 = 0;
      *(a1 + 3196) = v8;
      v9 = *(a1 + 3032) | (v7[1] << 24);
      *(a1 + 3032) = v9;
      v10 = v9 | (v7[2] << 16);
      *(a1 + 3032) = v10;
      v11 = v10 | (v7[3] << 8);
      *(a1 + 3032) = v11;
      *(a1 + 3032) = v11 | v7[4];
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_MultiTagGetFwTypeProc: operation failed");
      *(a1 + 3196) = 3;
      *(a1 + 3032) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_MultiTagGetFwTypeProc: Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MultiTagGetFwTypeProc");
  return a2;
}

uint64_t sub_297EFD788(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MultiTagGetFwInfoComplete");
  if (a1)
  {
    sub_297EFA54C(a1, a2);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_MultiTagGetFwInfoComplete: Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, 0, 4u, 5u, "phLibNfc_MultiTagGetFwInfoComplete");
  return a2;
}

uint64_t sub_297EFD81C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropTagRemDetNtfHandler");
  if (a1 && a2 == 31)
  {
    *(a1 + 1475) = 0;
    if (a4 == 120)
    {
      sub_297F0AF34(*(a1 + 3088));
      v7 = sub_297EE1404(*(a1 + 9784));
      v8 = sub_297EE14CC(*(a1 + 9784));
      if ((v7 - 5) > 1)
      {
        sub_297E4F450(*(a1 + 9784), 125, 0, 0, 0);
      }

      else
      {
        *(a1 + 1475) = 1;
        sub_297E4F450(*(a1 + 9784), 125, 0, 0, 0);
        sub_297EE18A8(*(a1 + 9784), 4);
      }

      if (*(a1 + 1475))
      {
        *(a1 + 1475) = 0;
      }

      else
      {
        if (v8 == 2)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_PropTagRemDetNtfHandler: Transition status is invalid");
        }

        sub_297EE1720(*(a1 + 9784), v8);
      }
    }

    v9 = *(a1 + 6280);
    if (v9)
    {
      v10 = *(a1 + 6288);
      sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_PropTagRemDetNtfHandler :RemDevNtfCB[TagRemDetNtf]");
      v9(*(a1 + 9784), v10, 0, 0, a4);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropTagRemDetNtfHandler");
}

uint64_t sub_297EFD9A4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropLpcdDebugNtfHandler");
  if (a3 && a2 == 32 && a1 && !a4 && *(a1 + 6568))
  {
    sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_PropLpcdDebugNtfHandler :pGenericNtfCb[Lpcd Debug Ntf]");
    (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 75, a3);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropLpcdDebugNtfHandler");
}

uint64_t sub_297EFDA70(uint64_t a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RfLpcdAssistExitNtfHandler");
  if (a2 == 45 && a1 && !a4 && *(a1 + 6568))
  {
    sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_RfLpcdAssistExitNtfHandler :pGenericNtfCb[Lpcd Assistance Exit Ntf]");
    (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 79, 0);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RfLpcdAssistExitNtfHandler");
}

uint64_t sub_297EFDB34(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  v17 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RelaydetectionNtfHandler");
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
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
      if (a3 && a2 == 36 && !a4)
      {
        if (a3[2] == 11 && *a3)
        {
          v11 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          v12 = *a3;
          LODWORD(v16) = v16 | **a3 | (*(*a3 + 1) << 8) | (*(*a3 + 2) << 16);
          v13 = HIDWORD(v16) | v12[4];
          LODWORD(v16) = v16 | (v12[3] << 24);
          HIDWORD(v16) = v13;
          HIDWORD(v16) = v13 | (v12[5] << 8) | (v12[6] << 16);
          v14 = v17 | v12[8];
          HIDWORD(v16) |= v12[7] << 24;
          v17 = v14;
          v17 = v14 | (v12[9] << 8) | (v12[10] << 16);
          if (*(a1 + 6568))
          {
            sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_RelaydetectionNtfHandler :pGenericNtfCb[Relay Attack Detection Ntf]");
            (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 159, &v16);
          }

          else
          {
            sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_RelaydetectionNtfHandler: pGenericNtfCb is NULL");
          }
        }

        else
        {
          sub_297E4E0B0(2, a1, 4u, 2u, "phLibNfc_RelaydetectionNtfHandler: Received Length is zero");
        }
      }

      else
      {
        sub_297E50DB0(2, a1, 4u, 1u, "phLibNfc_RelaydetectionNtfHandler: Failed status");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RelaydetectionNtfHandler");
}

uint64_t sub_297EFDD50(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgValReInit");
  if (a1)
  {
    if ((*(a1 + 6076) & 0xFE) == 2 && *(a1 + 6056) && *(a1 + 6064))
    {
      *(a1 + 5464) = 5;
      *(a1 + 5472) = 2;
      *(a1 + 5480) = a1 + 6056;
      v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetChipScopeLogCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgValReInit");
  return v2;
}

uint64_t sub_297EFDE44(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgStartReInit");
  if (a1)
  {
    if (*(a1 + 6076) == 3 && *(a1 + 6056) && *(a1 + 6064))
    {
      *(a1 + 5464) = 5;
      *(a1 + 5472) = 1;
      v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SetChipScopeLogCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetChipScopeLogCfgStartReInit");
  return v2;
}

uint64_t sub_297EFDF28(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropChipScopeLoggingNtfHandler");
  if (a1)
  {
    if (a3 && a2 == 33 && !a4)
    {
      v8 = a1[821];
      if (v8)
      {
        v9 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_PropChipScopeLoggingNtfHandler :pGenericNtfCb[Chip Scope Debug Ntf]");
        v8(a1[1223], v9, 134, a3);
      }
    }

    else
    {
      sub_297E50DB0(1, (a1 + 1224), 4u, 1u, "phLibNfc_PropChipScopeLoggingNtfHandler: Failed status");
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropChipScopeLoggingNtfHandler");
}

uint64_t sub_297EFE01C(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PropSmbLoggingNtfHandler");
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
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
      if (a3 && a2 == 44 && !a4)
      {
        if (*(a3 + 8) && *a3)
        {
          v11 = a1[821];
          if (v11)
          {
            v12 = a1[822];
            sub_297E54734(1, (a1 + 1224), 4u, 4u, "phLibNfc_PropSmbLoggingNtfHandler :pGenericNtfCb[Smb Logging Ntf]");
            v11(a1[1223], v12, 142, a3);
          }
        }

        else
        {
          sub_297E4E0B0(1, (a1 + 1224), 4u, 2u, "phLibNfc_PropSmbLoggingNtfHandler: Received Length is zero");
        }
      }

      else
      {
        sub_297E50DB0(1, (a1 + 1224), 4u, 1u, "phLibNfc_PropSmbLoggingNtfHandler: Failed status");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PropSmbLoggingNtfHandler");
}

uint64_t sub_297EFE17C(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetAssertRegCmd");
  if (a1)
  {
    BYTE8(v5[0]) = 39;
    *&v5[0] = 0xA01CA01BA01AA004;
    v2 = sub_297F067C4(*(a1 + 3088), v5, 9, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetAssertRegCmd: Invalid Libnfc Context");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetAssertRegCmd");
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297EFE28C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetAssertRegRsp");
  if (!a1)
  {
    v6 = "phLibNfc_ClrRetAssertDataCb:Context is Null";
    v7 = 2;
    v8 = 0;
LABEL_10:
    sub_297E4E0B0(v7, v8, 4u, 1u, v6);
    a2 = 255;
    goto LABEL_11;
  }

  if (!a2)
  {
    if (!a3 || !*(a1 + 8))
    {
      v6 = "phLibNfc_ClrRetAssertDataCb:User Buffer is Null";
      goto LABEL_9;
    }

    if (sub_297EFCF68(a1, a3, &v21 + 1, &v21, &v20 + 1, &v20))
    {
      v6 = "phLibNfc_ClrRetAssertDataCb:Parsing Assertion Data Failed";
LABEL_9:
      v8 = a1 + 9792;
      v7 = 1;
      goto LABEL_10;
    }

    if (HIDWORD(v21))
    {
      v11 = *(a1 + 9792);
      v12 = *(a1 + 8);
      phOsalNfc_MemCopy();
      v13 = **(a1 + 8);
      sub_297E50DB0(1, a1 + 9792, 4u, 4u, "Assert Reg Program Counter");
    }

    if (v21)
    {
      if (*(a1 + 2986) != 1)
      {
        *(a1 + 2994);
      }

      v14 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v15 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      sub_297E8DC98(a1, (*(a1 + 8) + 4), v22);
    }

    if (HIDWORD(v20))
    {
      *(a1 + 2986);
      *(a1 + 2994);
      v16 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v17 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      sub_297E8E560(a1, (*(a1 + 8) + 144), v22);
    }

    a2 = v20;
    if (v20)
    {
      v18 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v19 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      sub_297E8E29C(*(a1 + 9792), (*(a1 + 8) + 100), v22);
      a2 = 0;
    }
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetAssertRegRsp");
  v9 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_297EFE520(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetAssertDbgLogCmd");
  if (!a1 || a2)
  {
    v5 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2984) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      *(v4 + 208) = 0;
      *(v4 + 216) = 0;
    }

    v5 = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
  }

  else
  {
    *(a1 + 357) = 3;
    v5 = sub_297F09FF8(*(a1 + 3088), 3, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetAssertDbgLogCmd");
  return v5;
}

uint64_t sub_297EFE604(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSpmiDebugInfoRamCmd");
  if (!a1 || a2)
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetCoreDumpLogCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2992) == 1)
  {
    *(a1 + 357) = 1;
    v4 = sub_297F09FF8(*(a1 + 3088), 1, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSpmiDebugInfoRamCmd");
  return v4;
}

uint64_t sub_297EFE6CC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSpmiDebugInfoFlashCmd");
  if (!a1 || a2)
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetCoreDumpLogCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2992) == 1)
  {
    *(a1 + 357) = 2;
    v4 = sub_297F09FF8(*(a1 + 3088), 2, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSpmiDebugInfoFlashCmd");
  return v4;
}

uint64_t sub_297EFE798(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetCoreDumpLogCmd");
  if (!a1 || a2)
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetCoreDumpLogCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2992) == 1)
  {
    *(a1 + 357) = 4;
    v4 = sub_297F09FF8(*(a1 + 3088), 4, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetCoreDumpLogCmd");
  return v4;
}

uint64_t sub_297EFE864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetGenericDbgLogProc");
  if (!a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetGenericDbgLogProc: Libnfc Context or pDbgInfo is Invalid");
    goto LABEL_6;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetGenericDbgLogProc: operation failed");
    goto LABEL_7;
  }

  v7 = *(a3 + 2);
  if ((v7 - 1) > 3u)
  {
LABEL_19:
    a2 = 0;
    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = a1 + 16 * ((v7 - 1) & 0xF);
  *(v9 + 288) = 0;
  *(v9 + 296) = 0;
  if (*(a3 + 8) && *(a3 + 4))
  {
    if (*(a1 + 357) == v7)
    {
      v10 = *(a1 + 9792);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v9 + 288) = Memory_Typed;
      if (!Memory_Typed)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetGenericDbgLogProc: Failed to allocate memory");
        a2 = 12;
        goto LABEL_7;
      }

      v12 = *(a1 + 9792);
      v13 = *(a3 + 4);
      phOsalNfc_SetMemory();
      v14 = *(a1 + 9792);
      v15 = *(v9 + 288);
      v16 = *(a3 + 8);
      v17 = *(a3 + 4);
      phOsalNfc_MemCopy();
      *(v9 + 296) = *(a3 + 4);
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetGenericDbgLogProc: Operation success");
      goto LABEL_14;
    }

    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_GetGenericDbgLogProc: Mismatch in Log type Received, pDbgInfo->bGenericDbgInfoType");
LABEL_6:
    a2 = 255;
    goto LABEL_7;
  }

LABEL_14:
  a2 = 0;
  if (*(a1 + 6088) && v8)
  {
    v18 = *(a3 + 2);
    if (v18 == 1)
    {
      a2 = 0;
      *(v8 + 176) = *(v9 + 288);
      *(v8 + 184) = *(v9 + 296);
      goto LABEL_7;
    }

    if (v18 == 2)
    {
      a2 = 0;
      *(v8 + 192) = *(v9 + 288);
      *(v8 + 200) = *(v9 + 296);
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetGenericDbgLogProc");
  return a2;
}

uint64_t sub_297EFEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetAssertDbgLogApiProc");
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6 && (*(v6 + 208) = 0, *(v6 + 216) = 0, !a2) && a3)
    {
      if (*(a3 + 8) && *(a3 + 4))
      {
        v7 = *(a1 + 9792);
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        *(a1 + 320) = Memory_Typed;
        if (!Memory_Typed)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetAssertDbgLogApiProc: Failed to allocate memory");
          a2 = 12;
          goto LABEL_12;
        }

        v9 = *(a1 + 9792);
        v10 = *(a3 + 4);
        phOsalNfc_SetMemory();
        v11 = *(a1 + 9792);
        v12 = *(a1 + 320);
        v13 = *(a3 + 8);
        v14 = *(a3 + 4);
        phOsalNfc_MemCopy();
        v15 = *(a3 + 4);
        *(a1 + 328) = v15;
        *(v6 + 208) = *(a1 + 320);
        *(v6 + 216) = v15;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetAssertDbgLogApiProc: Operation success");
      }

      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetAssertDbgLogApiProc: operation failed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetAssertDbgLogApiProc: Libnfc Context is Invalid");
    a2 = 255;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetAssertDbgLogApiProc");
  return a2;
}

uint64_t sub_297EFEBF4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetClrAssertComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetClrAssertComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, a1 + 8, 0);
    if (*(a1 + 320))
    {
      v6 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
    }

    if (*(a1 + 288))
    {
      v7 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
    }

    if (*(a1 + 304))
    {
      v8 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetClrAssertComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetClrAssertComplete");
  return v5;
}

uint64_t sub_297EFED0C(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrMgmtInit");
  if (!a2 || !a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Param(s)..");
    v9 = 1;
    goto LABEL_15;
  }

  if (a4 > 0xA)
  {
    if (*(a1 + 4800) || (v10 = *(a1 + 6524), Memory_Typed = phOsalNfc_GetMemory_Typed(), (*(a1 + 4800) = Memory_Typed) != 0))
    {
      v12 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      if (!sub_297EFEEA0(a1, a2, a3, a4))
      {
        *(a1 + 4552) = a2;
        if (!sub_297E6E69C(a1))
        {
          v9 = 0;
          goto LABEL_15;
        }
      }

      goto LABEL_12;
    }

    v8 = "phNciNfc_RdrMgmtInit:pRdrDataXchgSequence pointer MemAlloc Failed..";
  }

  else
  {
    v8 = "phNciNfc_RdrMgmtInit:Intf Activated Payload Incomplete..";
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v8);
LABEL_12:
  if (*(a1 + 4800))
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RdrMgmtInit:Freeing pRdrDataXchgSequence Memory..");
    v13 = *(a1 + 6524);
    v14 = *(a1 + 4800);
    phOsalNfc_FreeMemory();
    *(a1 + 4800) = 0;
  }

  v9 = 188;
LABEL_15:
  sub_297E934F4(a1, a2);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrMgmtInit");
  return v9;
}

uint64_t sub_297EFEEA0(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateRemDevInfo");
  if (a1 && a2 && a3 && a4)
  {
    *(a2 + 8) = *a3;
    v8 = a3[1];
    *(a2 + 12) = v8;
    if (v8)
    {
      *(a2 + 16) = a3[2];
      v9 = a3[3];
      *(a2 + 20) = v9;
      *(a2 + 24) = a3[4];
      *(a2 + 25) = a3[5];
      v10 = a3[6];
      *(a2 + 26) = v10;
      v11 = &a3[v10];
      *(a2 + 28) = v11[7];
      *(a2 + 32) = v11[8];
      *(a2 + 33) = v11[9];
      if (v9 > 1)
      {
        if (v9 <= 0xC)
        {
          if (((1 << v9) & 0x1C08) != 0)
          {
LABEL_9:
            v12 = sub_297E76E28(a1, a2, a3, a4);
LABEL_20:
            v13 = v12;
            goto LABEL_21;
          }

          if (((1 << v9) & 0x24) != 0)
          {
            v12 = sub_297E9ABE8(a1, a2, a3, a4);
            goto LABEL_20;
          }

          if (v9 == 6)
          {
            v12 = sub_297E9FC28(a1, a2, a3, a4);
            goto LABEL_20;
          }
        }

        if (v9 != 112)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Rf Technology and mode not supported");
          v13 = 255;
          goto LABEL_21;
        }

        v12 = sub_297E77344(a1, a2, a3, a4);
        goto LABEL_20;
      }

      if (v9)
      {
        v12 = sub_297E9618C(a1, a2, a3, a4);
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Interface is NFCEE Direct RF,subsequent payload contents ignored..");
    v13 = 0;
  }

  else
  {
    v13 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, " Invalid Param(s)..");
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateRemDevInfo");
  return v13;
}

uint64_t sub_297EFF0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrMgmtXchgData");
  if (a1)
  {
    if (!a2)
    {
      v10 = " Invalid Device Handle Param..";
      goto LABEL_17;
    }

    if (*(a3 + 16) && *(a3 + 24))
    {
      if (*(a3 + 32) && *(a3 + 40) || *a3 == 4)
      {
        if (a4 && a5)
        {
          if (*(a1 + 4552) != a2)
          {
            v10 = " Device Handle not Valid..";
LABEL_17:
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v10);
            v11 = 6;
            goto LABEL_18;
          }

          v15 = *(a1 + 4800);
          if (!v15)
          {
            v11 = 255;
            goto LABEL_18;
          }

          *(a1 + 4560) = *a3;
          *(a1 + 4564) = *(a3 + 4);
          *(a1 + 4576) = *(a3 + 16);
          *(a1 + 4592) = *(a3 + 32);
          *(a1 + 4566) = *(a3 + 6);
          *(a1 + 4608) = *(a3 + 48);
          *(a1 + 4616) = a4;
          *(a1 + 4624) = a5;
          *(a1 + 3776) = v15;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, v15);
          v11 = sub_297EFF2DC(a1, 0, 0);
          sub_297E50DB0(1, a1 + 6524, 3u, 4u, "RdrDataXchgSeq status received is..");
          if (v11 == 13)
          {
            *(a1 + 6483) = 1;
            goto LABEL_18;
          }

          v12 = "Data Exchange Request Failed..";
          v13 = a1 + 6524;
          goto LABEL_15;
        }

        v12 = "Invalid Upper layer inputs..";
      }

      else
      {
        v12 = "phNciNfc_RdrMgmtXchgData:Invalid Receive Buff Params..";
      }
    }

    else
    {
      v12 = " Invalid Send Buff Params..";
    }

    v11 = 1;
    v13 = a1 + 6524;
LABEL_15:
    sub_297E4E0B0(1, v13, 3u, 4u, v12);
    goto LABEL_18;
  }

  sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
  v11 = 1;
LABEL_18:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrMgmtXchgData");
  return v11;
}

uint64_t sub_297EFF2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrDataXchgSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrDataXchgSequence");
  return v6;
}

uint64_t sub_297EFF370(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrMgmtRelease");
  if (a1)
  {
    if (*(a1 + 4800))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RdrMgmtRelease:Freeing phNciNfc_RdrMgmtXchgData Memory..");
      v2 = *(a1 + 6524);
      v3 = *(a1 + 4800);
      phOsalNfc_FreeMemory();
      v4 = 0;
      *(a1 + 4800) = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrMgmtRelease");
  return v4;
}

uint64_t sub_297EFF438(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteDataXchgSequence");
  if (a1)
  {
    *(a1 + 6676) = 0;
    *(a1 + 6672) = 0;
    *(a1 + 4776) = 0;
    if (*(a1 + 4616))
    {
      sub_297E50DB0(1, a1 + 6524, 3u, 4u, "Status received is...");
      if (!a2)
      {
        goto LABEL_7;
      }

      if (*(a1 + 4640))
      {
        v4 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(a1 + 4640) = 0;
        *(a1 + 4648) = 0;
      }

      if (a2 != 185)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Resetting received length to 0 for this Failed Scenario!!");
        *(a1 + 4600) = 0;
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Invoking upper layer call back function");
        if (a2 == 44 && *(a1 + 4608) == 1)
        {
          *(a1 + 6497) = 1;
        }
      }

      else
      {
LABEL_7:
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Invoking upper layer call back function");
      }

      (*(a1 + 4616))(*(a1 + 4624), a2, a1 + 4592);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Caller Param(s)..");
      a2 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteDataXchgSequence");
  return a2;
}

uint64_t sub_297EFF5D8(uint64_t a1, _WORD *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ChkDataRetransmission");
  if (a1 && a2)
  {
    if (*(a1 + 6672) == 1 && *a2 == 181 && *(a1 + 6676) <= 3u && (sub_297E50EBC(1, a1 + 6524, 3u, 2u, "phNciNfc_ChkDataRetransmission: Re-transmitting Data pkt Attempt.."), (v4 = *(a1 + 3976)) != 0))
    {
      v5 = 0;
      *a2 = 0;
      *(a1 + 4566) = *(a1 + 6680);
      *(a1 + 3976) = v4 - 1;
      ++*(a1 + 6676);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, " phNciNfc_ChkDataRetransmission: Invalid Nci Context or status param");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ChkDataRetransmission");
  return v5;
}

uint64_t sub_297EFF6EC(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TrigRfOnPropCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 40;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = 1;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TrigRfOnPropCmd");
  return v3;
}

uint64_t sub_297EFF7E4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TrigRfOnPropCmdRsp");
  if (!a1)
  {
    v4 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf Invalid Parameter";
    a2 = 1;
    v6 = 2;
    v5 = 0;
    goto LABEL_5;
  }

  if (!a2)
  {
    if (*(a1 + 3808) == 1)
    {
      v8 = **(a1 + 3800);
      if (v8 <= 2)
      {
        if (!**(a1 + 3800))
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf command accepted by NFCC");
          a2 = 0;
          goto LABEL_6;
        }

        if (v8 == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf command rejected by NFCC");
LABEL_17:
          a2 = 147;
          goto LABEL_6;
        }

LABEL_14:
        a2 = 255;
        goto LABEL_6;
      }

      if (v8 != 3)
      {
        if (v8 == 6)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v9 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf command failed by NFCC";
    }

    else
    {
      v9 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf response received with invalid payload length";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v9);
    goto LABEL_14;
  }

  v4 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf response received with failure status";
  v5 = a1 + 6524;
  v6 = 1;
LABEL_5:
  sub_297E4E0B0(v6, v5, 3u, 1u, v4);
LABEL_6:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TrigRfOnPropCmdRsp");
  return a2;
}

uint64_t sub_297EFF948(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TurnRfOnOffPropCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 51;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TurnRfOnOffPropCmd");
  return v3;
}

uint64_t sub_297EFFA40(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TurnRfOnOffPropCmdRsp");
  if (!a1)
  {
    v4 = "Turn RF ON or OFF command Invalid Parameter";
    v5 = 2;
    v6 = 0;
    goto LABEL_11;
  }

  if (!a2)
  {
    if (*(a1 + 3808) == 1)
    {
      v7 = **(a1 + 3800);
      if (v7 == 6)
      {
        v9 = "phNciNfc_TurnRfOnOffPropCmdRsp:Turn RF ON or OFF command Semantic Error";
      }

      else
      {
        if (v7 != 1)
        {
          if (!**(a1 + 3800))
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Turn RF ON or OFF command accepted by NFCC");
            a2 = 0;
            goto LABEL_13;
          }

LABEL_12:
          a2 = 255;
          goto LABEL_13;
        }

        v9 = "Turn RF ON or OFF command rejected by NFCC";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v9);
      a2 = 147;
      goto LABEL_13;
    }

    v4 = "Turn RF ON or OFF response received with invalid payload length";
    v6 = a1 + 6524;
    v5 = 1;
LABEL_11:
    sub_297E4E0B0(v5, v6, 3u, 1u, v4);
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_TurnRfOnOffPropCmdRsp:Turn RF ON or OFF response received with failure status");
LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TurnRfOnOffPropCmdRsp");
  return a2;
}

uint64_t sub_297EFFB8C(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestPropCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 50;
    *&v6 = a1 + 3728;
    DWORD2(v6) = *(a1 + 3738);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestPropCmd");
  return v3;
}

uint64_t sub_297EFFC84(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestPropRsp");
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestPropRsp");
  return a2;
}

uint64_t sub_297EFFCEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestPropSeqComplete");
  if (a1)
  {
    *(a1 + 3738) = 0;
    sub_297E5B994(a1, a2, a1 + 3800);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestPropSeqComplete");
  return a2;
}

uint64_t sub_297EFFD64(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ChkPresExtnCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 17;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297F00660, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ChkPresExtnCmd");
  return v3;
}

uint64_t sub_297EFFE54(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ChkPresExtnRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_13;
  }

  if (!a2)
  {
    if (*(a1 + 3808) == 1)
    {
      v4 = **(a1 + 3800);
      if (v4 != 6)
      {
        if (v4 == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Presence check extension command rejected by NFCC");
          a2 = 147;
          goto LABEL_13;
        }

        if (!**(a1 + 3800))
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Presence check extension command accepted by NFCC");
          a2 = 0;
          goto LABEL_13;
        }

LABEL_12:
        a2 = 255;
        goto LABEL_13;
      }

      v5 = "Presence check extension semantic error received";
    }

    else
    {
      v5 = "Presence check extension response received with invalid payload length";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v5);
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Presence check extension response received with failure status");
LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ChkPresExtnRsp");
  return a2;
}

uint64_t sub_297EFFF94(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteChkPresExtnSeq");
  if (a1)
  {
    if (!a2)
    {
      v18 = 0xF00000003;
      LODWORD(v19) = 17;
      v4 = sub_297E59AEC(a1 + 936, &v18, sub_297F006F4, a1);
      switch(v4)
      {
        case 255:
          v6 = "Check presence extension notification registration failed!";
          break;
        case 53:
          v6 = "Check presence extension notification already registered";
          break;
        case 0:
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Check presence extension notification registered");
          v5 = *(a1 + 4696);
          if (v5 == 0xFFFFFFFFFFFFLL)
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Timer Create had failed\n#\n");
LABEL_28:
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Waiting for Check presence extension notification...");
            a2 = 0;
            goto LABEL_13;
          }

          v8 = *(a1 + 4552);
          if (v8)
          {
            v9 = *(v8 + 4);
            if ((v9 - 5) < 3)
            {
              goto LABEL_18;
            }

            if (v9 == 16)
            {
              v16 = (1 << (*(v8 + 109) >> 4)) * 302.064897 / 1000.0;
              if (v16 >= 0x54)
              {
                LOWORD(v17) = 19796;
              }

              else
              {
                v17 = 236 * v16;
              }

              if ((v17 & 0xFFFCu) > 0x7CF)
              {
                goto LABEL_25;
              }

LABEL_22:
              v12 = "FWT timeout is less than default, hence using default timeout: ";
LABEL_24:
              sub_297E50EBC(1, a1 + 6524, 3u, 4u, v12);
              v5 = *(a1 + 4696);
LABEL_25:
              sub_297E5A304(*(a1 + 6524), v5);
              *(a1 + 6512) = 0;
              v13 = *(a1 + 6524);
              v14 = *(a1 + 4696);
              v15 = phOsalNfc_Timer_Start();
              if (!v15)
              {
                sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_CompleteChkPresExtnSeq");
                *(a1 + 864) = *(a1 + 3424);
                *(a1 + 872) = *(a1 + 3752);
                *(a1 + 3424) = 0;
                sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Chk Pres ntf timer started\n");
                goto LABEL_28;
              }

              a2 = v15;
              sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Chk Pres ntf timer start FAILED\n\n");
              goto LABEL_12;
            }

            if (v9 == 3)
            {
LABEL_18:
              v10 = (1 << (*(v8 + 108) >> 4)) * 302.064897 / 1000.0;
              if (v10 >= 0x54)
              {
                LOWORD(v11) = 19796;
              }

              else
              {
                v11 = 236 * v10;
              }

              if ((v11 & 0xFFFCu) >= 0x7D0)
              {
                goto LABEL_25;
              }

              goto LABEL_22;
            }
          }

          v12 = "Using default timeout: ";
          goto LABEL_24;
        default:
          v6 = "Invalid parameter sent";
          break;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v6);
      a2 = 255;
    }

LABEL_12:
    sub_297E5B994(a1, a2, 0);
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteChkPresExtnSeq");
  return a2;
}

uint64_t sub_297F002D0(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EnableExtnCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 2;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EnableExtnCmd");
  return v3;
}

uint64_t sub_297F003C0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EnableExtnRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_30;
  }

  if (!a2)
  {
    v6 = *(a1 + 3808);
    if (v6 != 1)
    {
      if (v6 == 5)
      {
        v7 = **(a1 + 3800);
        if (v7 <= 2)
        {
          if (!**(a1 + 3800))
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Enabling extension command accepted by NFCC");
            a2 = 0;
            goto LABEL_30;
          }

          if (v7 == 1)
          {
            v8 = "Enabling extension command rejected by NFCC";
            v9 = a1 + 6524;
LABEL_27:
            sub_297E4E0B0(1, v9, 3u, 2u, v8);
            goto LABEL_28;
          }

LABEL_19:
          a2 = 255;
          goto LABEL_30;
        }

        if (v7 != 3)
        {
          if (v7 == 6)
          {
LABEL_28:
            a2 = 147;
            goto LABEL_30;
          }

          goto LABEL_19;
        }

        v11 = "Enabling extension command failed by NFCC";
      }

      else
      {
        v11 = "Enabling extension response received with invalid payload length";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v11);
      goto LABEL_19;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Enabling extension failed!");
    v10 = **(a1 + 3800);
    a2 = 255;
    if (v10 <= 2)
    {
      if (**(a1 + 3800))
      {
        if (v10 != 1)
        {
          goto LABEL_30;
        }

        v8 = "Enabling extension command rejected by NFCC";
LABEL_26:
        v9 = a1 + 6524;
        goto LABEL_27;
      }

      v4 = "Information field missing in Response Payload field";
    }

    else
    {
      switch(v10)
      {
        case 3u:
          v4 = "Enabling extension command failed by NFCC";
          break;
        case 5u:
          v4 = "Enabling extension command Syntax error received";
          break;
        case 6u:
          v8 = "Enabling extension command Semantic error received";
          goto LABEL_26;
        default:
          goto LABEL_30;
      }
    }

    v5 = a1 + 6524;
    goto LABEL_4;
  }

  v4 = "phNciNfc_EnableExtnRsp:Iso-Dep presence check response received with failure status";
  v5 = a1 + 6524;
LABEL_4:
  sub_297E4E0B0(1, v5, 3u, 2u, v4);
LABEL_30:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EnableExtnRsp");
  return a2;
}

uint64_t sub_297F005C0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteEnableExtnSeq");
  if (a1)
  {
    *(a1 + 6728) = -1;
    if (a2 == 44)
    {
      *(a1 + 6728) = 44;
      v4 = a1 + 6728;
      v5 = a1;
      v6 = 0;
    }

    else
    {
      v4 = *(a1 + 3800);
      v5 = a1;
      v6 = a2;
    }

    sub_297E5B994(v5, v6, v4);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteEnableExtnSeq");
  return a2;
}

uint64_t sub_297F00660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_IsoDepPresChkSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_IsoDepPresChkSequence");
  return v6;
}

uint64_t sub_297F006F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ChkPresExtnNtfCb");
  if (!a1 || !a2)
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "Proc pres chk : Invalid input parameters");
    goto LABEL_24;
  }

  if (a3)
  {
    v6 = "phNciNfc_ChkPresExtnNtfCb:Proc Iso-Dep pres chk ntf: Reception failed";
  }

  else
  {
    v7 = *(a1 + 6524);
    v8 = *(a1 + 4696);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_ChkPresExtnNtfCb");
    if (*(a2 + 16) == 1)
    {
      if (**(a2 + 8) == 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ChkPresExtnNtfCb:Target is still in the field");
        a3 = 0;
        goto LABEL_14;
      }

      if (!**(a2 + 8))
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ChkPresExtnNtfCb:Target is not in the field: Target Lost!");
        a3 = 146;
        goto LABEL_14;
      }

      v6 = "ChkPresence Extn: invalid ntf";
    }

    else
    {
      v6 = "Proc Iso-Dep pres chk ntf: Invalid length of payload";
    }
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v6);
  a3 = 255;
LABEL_14:
  *(&v13 + 1) = 4367;
  v14 = a1;
  v15 = sub_297F006F4;
  v9 = sub_297E75DFC(a1 + 936, &v13, 3);
  switch(v9)
  {
    case 255:
      v10 = "De-register pres chk extension ntf call back failed!";
      break;
    case 52:
      v10 = "Pres chk extension ntf call back not registered!";
      break;
    case 0:
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "De-register pres chk extension ntf call back success");
      goto LABEL_22;
    default:
      v10 = "Invalid parameter passed (phNciNfc_ChkPresExtnNtfCb)!";
      break;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v10);
LABEL_22:
  v11 = *(a1 + 864);
  if (v11)
  {
    *(a1 + 864) = 0;
    v11(*(a1 + 872), a3, 0);
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ChkPresExtnNtfCb");
  return a3;
}

uint64_t sub_297F0092C(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  result = sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_ChkPresExtnNtfTimeoutHandler");
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(&unk_2A18BDDC0 + 14 * v6 + 4);
      if (v5)
      {
        break;
      }

      v5 = 1;
      v6 = 1;
    }

    while (v7 != a2);
    if (v7 == a2)
    {
      if (!*(a2 + 6512))
      {
        sub_297E5A304(*(a2 + 6524), *(a2 + 4696));
        v8 = *(a2 + 6524);
        v9 = *(a2 + 4696);
        if (!phOsalNfc_Timer_Start())
        {
          result = sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "Chk Pres ntf timer restarted for extended time\n");
          *(a2 + 6512) = 1;
          return result;
        }

        sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "Chk Pres ntf timer failed to start for extended time\n\n");
      }

      sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_ChkPresExtnNtfTimeoutHandler");
      v10 = *(a2 + 6524);
      v11 = *(a2 + 4696);
      phOsalNfc_Timer_Stop();
      *(a2 + 6512) = 0;
      sub_297F006F4(a2, v12, 255);
      return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_ChkPresExtnNtfTimeoutHandler");
    }
  }

  return result;
}

uint64_t sub_297F00AB4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfTxOnly");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 5);
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
    v11 = 1;
    if (a3)
    {
      if (a2)
      {
        v13 = *a1;
        if (*a1)
        {
          BYTE14(v16) = 1;
          v14 = *(a1 + 2460);
          phOsalNfc_MemCopy();
          *(a1 + 616) = 0;
          if (*a2 == 1)
          {
            v11 = sub_297E57CC8(v13, 2, v15, a3, a4);
            *(v13 + 5430) = 1;
          }

          else
          {
            *(v15 + 4) = 0;
            v11 = sub_297E57CC8(v13, 0, v15, a3, a4);
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    v11 = 1;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfTxOnly");
  return v11;
}

uint64_t sub_297F00C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfUnRegRspNtf");
  v6 = 1;
  if (a1 && a2)
  {
    v11 = a3;
    v7 = *a2;
    if (*a2 == 3 || v7 == 2)
    {
      v8 = *(a2 + 8);
      BYTE1(v10[0]) = *(a2 + 4);
      BYTE2(v10[0]) = v8;
      goto LABEL_8;
    }

    if (!v7)
    {
      BYTE3(v10[0]) = *(a2 + 12);
LABEL_8:
      v6 = sub_297E75DFC(a1, v10, v7);
    }
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfUnRegRspNtf");
  return v6;
}

uint64_t sub_297F00CF4(uint64_t a1, char a2, char a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfSetInitialCredit");
  if (a1)
  {
    v6 = 0;
    *(a1 + 961) = a2;
    *(a1 + 960) = a3;
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfSetInitialCredit");
  return v6;
}

uint64_t sub_297F00D78(uint64_t a1, char a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfSetMaxCtrlPacketSize");
  if (a1)
  {
    v4 = 0;
    *(a1 + 624) = a2;
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfSetMaxCtrlPacketSize");
  return v4;
}

uint64_t sub_297F00DF4(uint64_t a1, int a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfSetMaxDataPacketSize");
  v6 = 1;
  if (a1 && a3)
  {
    if (*(a1 + 961) == a2)
    {
      v6 = 0;
      *(a1 + 962) = a3;
    }

    else
    {
      v6 = 3;
    }
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfSetMaxDataPacketSize");
  return v6;
}

uint64_t sub_297F00E88(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfFlushDataOnLogChnlZero");
  if (a1)
  {
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
    if (v4 == a1)
    {
      v5 = (a1 + 2460);
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Flushing data on ConnID Zero if already present");
      if (sub_297E52660(a1) != 1)
      {
        v6 = 0;
        v7 = a1 + 928;
        while (1)
        {
          v8 = *(v7 + v6);
          if (v8)
          {
            if ((*v8 & 0xEF) == 0)
            {
              break;
            }
          }

          v6 += 8;
          if (v6 == 24)
          {
            goto LABEL_19;
          }
        }

        if (v8 == a1 + 640)
        {
          *(v7 + v6) = 0;
          *(a1 + 904) = 0;
          *(a1 + 900) = 0;
        }

        else
        {
          v9 = *(v8 + 264);
          if (v9)
          {
            do
            {
              v10 = v9;
              v11 = *v5;
              phOsalNfc_FreeMemory();
              v9 = *(v10 + 264);
            }

            while (v9);
          }

          else
          {
            v12 = *(v7 + v6);
          }

          v13 = *v5;
          phOsalNfc_FreeMemory();
          *(v7 + v6) = 0;
        }
      }
    }
  }

LABEL_19:

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfFlushDataOnLogChnlZero");
}

uint64_t sub_297F00FE8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfigSigned");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 44;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5DF3C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfigSigned");
  return v3;
}

uint64_t sub_297F010E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfSignedRsp");
  if (!a1 || (v2 = *(a1 + 3800)) == 0)
  {
    v5 = 1;
    goto LABEL_21;
  }

  if (*(a1 + 3808) < 2u)
  {
LABEL_20:
    v5 = 255;
    goto LABEL_21;
  }

  v3 = *v2;
  if (v3 <= 4)
  {
    if (!v3)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Rf Signed Config response success");
      v5 = 0;
      goto LABEL_21;
    }

    if (v3 != 1)
    {
LABEL_19:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Rf Signed Config response failed!");
      goto LABEL_20;
    }
  }

  else if (v3 != 5 && v3 != 9)
  {
    if (v3 == 242)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Rf Signed Config response signature error");
      v5 = 130;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v6 = *(a1 + 896);
  if (v6 && *(a1 + 904) >= 2u)
  {
    sub_297E4E880(1, a1 + 6524, 3u, 2u, "Rf Signed Config error, Tag ID (All):", v6 + 1);
  }

  v5 = 147;
LABEL_21:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfSignedRsp");
  return v5;
}

uint64_t sub_297F01240(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRtngConfig");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x100000001;
    DWORD2(v5) = 2;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297F01AB0, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRtngConfig");
  return v3;
}

uint64_t sub_297F0132C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteGetRtngConfig");
  if (a1)
  {
    if (!a2)
    {
      v11 = 0x100000003;
      LODWORD(v12) = 2;
      v4 = sub_297E59AEC(a1 + 936, &v11, sub_297F03B88, a1);
      switch(v4)
      {
        case 255:
          v7 = "Get Listen mode routing notification registration failed!";
          break;
        case 53:
          v7 = "Get Listen mode routing notification already registered";
          break;
        case 0:
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get Listen mode routing notification registered");
          *(a1 + 912) = 0;
          *(a1 + 914) = 0;
          *(a1 + 920) = 0;
          *(a1 + 928) = 0;
          v5 = *(a1 + 4696);
          if (v5 == 0xFFFFFFFFFFFFLL)
          {
            a2 = 255;
            v6 = "Timer Create had failed\n#\n";
          }

          else
          {
            sub_297E5A304(*(a1 + 6524), v5);
            *(a1 + 6512) = 0;
            v8 = *(a1 + 6524);
            v9 = *(a1 + 4696);
            a2 = phOsalNfc_Timer_Start();
            if (!a2)
            {
              sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_CompleteGetRtngConfig");
              sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get Listen Mode Ntf Handler timer started\n");
              sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Waiting for Get listen mode routing notification...");
              goto LABEL_16;
            }

            v6 = "Get Listen Mode Ntf Handler timer start FAILED\n\n";
          }

          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v6);
          sub_297F00C28(a1 + 936, &v11, sub_297F03B88);
          goto LABEL_15;
        default:
          v7 = "Invalid parameter sent";
          break;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v7);
      a2 = 255;
    }

LABEL_15:
    sub_297E5B994(a1, a2, 0);
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteGetRtngConfig");
  return a2;
}

uint64_t sub_297F01568(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetRtngConfig");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x100000001;
    DWORD2(v5) = 1;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297F01A1C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetRtngConfig");
  return v3;
}

uint64_t sub_297F0165C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteSetRtngConfig");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (!*(a1 + 912))
    {
      *(a1 + 913) = 0;
      *(a1 + 928) = 0;
    }

    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteSetRtngConfig");
  return a2;
}

uint64_t sub_297F016FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConfigRawRsp");
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConfigRawRsp");
  return a2;
}

uint64_t sub_297F01764(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteGetConfigRaw");
  if (a1)
  {
    v4 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    if (*(a1 + 896))
    {
      v5 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (!a2)
    {
      v6 = *(a1 + 3808);
      *(a1 + 6732) = v6;
      if (v6)
      {
        v7 = *(a1 + 6524);
        v8 = *(a1 + 3800);
        phOsalNfc_MemCopy();
      }
    }

    sub_297E5B994(a1, a2, a1 + 6732);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteGetConfigRaw");
  return a2;
}

uint64_t sub_297F01838(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetTxValue");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 20;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E6147C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter (phNciNfc_SetConfig)\n");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetTxValue");
  return v3;
}

uint64_t sub_297F01930(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetTxValRsp");
  if (a1)
  {
    if (!v2)
    {
      v4 = *(a1 + 3800);
      if (v4)
      {
        v5 = *v4;
        LOWORD(v2) = 255;
        if (v5 > 4)
        {
          if (v5 == 5 || v5 == 9)
          {
LABEL_13:
            sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "GetTransition reg resp failed");
            LOWORD(v2) = 147;
          }
        }

        else
        {
          if (*v4)
          {
            if (v5 != 1)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          v8 = v4[1] - 1;
          if (v8 >= 4u)
          {
            LOWORD(v2) = 255;
          }

          else
          {
            v2 = 0xFF00000000uLL >> (16 * (v8 & 0xFu));
          }
        }
      }
    }
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetTxValRsp");
  return v2;
}

uint64_t sub_297F01A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetRtngConfigSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetRtngConfigSequence");
  return v6;
}

uint64_t sub_297F01AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRtngConfigSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRtngConfigSequence");
  return v6;
}

uint64_t sub_297F01B44(uint64_t a1, uint64_t a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateLstnIsoDepParams");
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    ++*a4;
    ++*a3;
    LOBYTE(v8) = *a2;
    if ((*a2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_9;
  }

  ++*a4;
  v8 = *(a2 + 53) + *a3;
  if (v8 >= 0x10000)
  {
    LOWORD(v8) = 0;
  }

  *a3 = v8;
  LOBYTE(v8) = *a2;
LABEL_9:
  if ((v8 & 4) != 0)
  {
    ++*a4;
    v10 = *(a2 + 102) + *a3;
    if (v10 >= 0x10000)
    {
      LOWORD(v10) = 0;
    }

    *a3 = v10;
    if ((*a2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if ((v8 & 8) != 0)
  {
LABEL_15:
    ++*a4;
    if (*(a2 + 103) <= 6u)
    {
      v9 = 0;
      ++*a3;
      goto LABEL_18;
    }

LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

LABEL_11:
  v9 = 0;
LABEL_18:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnIsoDepParams");
  return v9;
}

uint64_t sub_297F01C80(uint64_t a1, unsigned __int8 *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateSysConfigParams");
  if (!*a2)
  {
    goto LABEL_61;
  }

  sub_297F04710(a1, *a2 & 1, 3, a3, a4);
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ParseSysClkParams");
  v8 = *a2;
  if ((*a2 & 2) != 0)
  {
    ++*a4;
    if (a2[6] >= 3u)
    {
      sub_297F04710(a1, a2[8], 5, a3, a4);
      goto LABEL_57;
    }

    v9 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v9 = 0;
    }

    *a3 = -v9;
    sub_297F04710(a1, a2[8], 5, a3, a4);
    v8 = *a2;
  }

  sub_297F04710(a1, (v8 >> 3) & 1, 2, a3, a4);
  if ((*a2 & 4) == 0)
  {
    goto LABEL_13;
  }

  ++*a4;
  if (!*(a2 + 2) || *(a2 + 3) > 7u)
  {
LABEL_57:
    v20 = "phNciNfc_ParseSysClkParams";
LABEL_60:
    sub_297E4DFAC(2, a1, 3u, 5u, v20);
    goto LABEL_61;
  }

  v10 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v10 = 0;
  }

  *a3 = -v10;
LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ParseSysClkParams");
  v11 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    ++*a4;
    if (a2[20] > 1u)
    {
      goto LABEL_61;
    }

    v12 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v12 = 0;
    }

    *a3 = -v12;
    v11 = *a2;
  }

  if ((v11 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  ++*a4;
  if (a2[21] > 1u)
  {
LABEL_61:
    v19 = 1;
    goto LABEL_62;
  }

  v13 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v13 = 0;
  }

  *a3 = -v13;
  v11 = *a2;
LABEL_23:
  sub_297F04710(a1, (v11 >> 6) & 1, 2, a3, a4);
  sub_297F04710(a1, *a2 >> 7, 65, a3, a4);
  sub_297F04710(a1, (*a2 >> 8) & 1, 3, a3, a4);
  sub_297F04710(a1, (*a2 >> 9) & 1, 3, a3, a4);
  sub_297F04710(a1, (*a2 >> 10) & 1, 2, a3, a4);
  sub_297F04710(a1, (*a2 >> 11) & 1, 2, a3, a4);
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ParseSysParams");
  v14 = *a2;
  if ((*a2 & 0x1000) != 0)
  {
    if (a2[102] > 0x1Fu)
    {
      goto LABEL_59;
    }

    ++*a4;
    *a3 += a2[102] + 1;
    v14 = *a2;
  }

  if ((v14 & 0x2000) != 0)
  {
    if (a2[134] > 0xD6u)
    {
      goto LABEL_59;
    }

    ++*a4;
    *a3 += a2[134] + 1;
    v14 = *a2;
  }

  if ((v14 & 0x4000) != 0)
  {
    if ((*(a2 + 88) | 2) != 2)
    {
      goto LABEL_59;
    }

    ++*a4;
    v15 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v15 = 0;
    }

    *a3 = -v15;
    v14 = *a2;
  }

  if ((v14 & 0x8000) == 0)
  {
    goto LABEL_39;
  }

  if (*(a2 + 89) > 0xAu)
  {
LABEL_59:
    v20 = "phNciNfc_ParseSysParams";
    goto LABEL_60;
  }

  ++*a4;
  v16 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v16 = 0;
  }

  *a3 = -v16;
  v14 = *a2;
LABEL_39:
  if ((v14 & 0x10000) != 0)
  {
    ++*a4;
    v17 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v17 = 0;
    }

    *a3 = -v17;
  }

  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ParseSysAssertParams");
  v18 = *a2;
  if ((*a2 & 0x20000) != 0)
  {
    if (a2[365] - 1 > 3)
    {
      goto LABEL_58;
    }

    ++*a4;
    *a3 += a2[365] + 1;
    v18 = *a2;
  }

  if ((v18 & 0x40000) != 0)
  {
    if (a2[462] - 1 > 0x5F)
    {
      goto LABEL_58;
    }

    ++*a4;
    *a3 += a2[462] + 1;
    v18 = *a2;
  }

  if ((v18 & 0x80000) == 0)
  {
    goto LABEL_52;
  }

  if (a2[491] - 1 > 0x1B)
  {
LABEL_58:
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ParseSysAssertParams");
    goto LABEL_59;
  }

  ++*a4;
  *a3 += a2[491] + 1;
  v18 = *a2;
LABEL_52:
  if ((v18 & 0x100000) != 0)
  {
    if (a2[536] - 1 <= 0x2B)
    {
      ++*a4;
      *a3 += a2[536] + 1;
      goto LABEL_55;
    }

    goto LABEL_58;
  }

LABEL_55:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ParseSysAssertParams");
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ParseSysParams");
  sub_297F04710(a1, (*a2 >> 21) & 1, 2, a3, a4);
  sub_297F04710(a1, (*a2 >> 22) & 1, 7, a3, a4);
  v19 = 0;
LABEL_62:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateSysConfigParams");
  return v19;
}