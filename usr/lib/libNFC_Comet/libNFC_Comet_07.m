uint64_t sub_297EADD24(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_TrigNfccAssertionTrans");
  sub_297E4F0E8(v11, &v10);
  if (!a4 || !v10)
  {
    v8 = "phLibNfc_SM_TrigNfccAssertionTrans: Invalid input parameters";
LABEL_7:
    v7 = 1;
    sub_297E4E0B0(0, &v11, 4u, 1u, v8);
    goto LABEL_8;
  }

  if (*a4 > 2u)
  {
    v8 = "phLibNfc_SM_TrigNfccAssertionTrans:Invalid Assertion type";
    goto LABEL_7;
  }

  v7 = sub_297F091DC(*(v10 + 3088), *a4, a5, sub_297EFC328, v10);
LABEL_8:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_TrigNfccAssertionTrans");
  return v7;
}

uint64_t sub_297EADE04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v31 = 0;
  v32 = a1;
  sub_297E4E1B4(0, &v32, 4u, 5u, "phLibNfc_SM_GetClrAssertRegsTrans");
  sub_297E4F0E8(v32, &v31);
  if (!a4 || !v31)
  {
    goto LABEL_7;
  }

  v8 = *a4;
  if (!a5)
  {
    if (!v8)
    {
      v9 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v10 = "phLibNfc_SM_GetClrAssertRegsTrans: Invalid input parameters";
    goto LABEL_8;
  }

  v9 = v8 == 1;
  if (v8 > 1)
  {
    v10 = "phLibNfc_SM_GetClrAssertRegsTrans:Invalid Assertion Config type";
LABEL_8:
    v11 = 1;
    sub_297E4E0B0(0, &v32, 4u, 1u, v10);
    goto LABEL_9;
  }

LABEL_11:
  v13 = *(v31 + 9792);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    v15 = Memory_Typed;
    v16 = *(v31 + 9792);
    phOsalNfc_SetMemory();
    v17 = v31;
    *(v31 + 16) = v8;
    *(v17 + 24) = v15;
    *(v17 + 8) = a5;
    if (v9)
    {
      *(v17 + 2960) = &qword_2A1A910C8;
      *(v17 + 2952) = 0;
      *(v17 + 2954) = 0;
      v18 = qword_2A1A910C8;
      if (qword_2A1A910C8)
      {
        v18 = 0;
        v19 = off_2A1A910D8;
        do
        {
          ++v18;
          v20 = *v19;
          v19 += 2;
        }

        while (v20);
      }

      *(v17 + 2953) = v18;
      v11 = sub_297E5588C(v17, a3, 0);
      if (v11 != 13)
      {
        v21 = *(v31 + 9792);
        phOsalNfc_FreeMemory();
        *(v31 + 24) = 0;
      }
    }

    else
    {
      *(v15 + 4) |= 0x1000u;
      *(v15 + 580) |= 0x20000u;
      *(v15 + 945) = 4;
      v22 = *(v17 + 9792);
      phOsalNfc_SetMemory();
      *(v15 + 580) |= 0x40000u;
      v23 = v31;
      if (*(v31 + 2984))
      {
        v24 = 64;
      }

      else if (*(v31 + 2986) == 1)
      {
        v24 = 96;
      }

      else if (*(v31 + 2994) == 1)
      {
        v24 = 48;
      }

      else
      {
        v24 = 80;
      }

      *(v15 + 1042) = v24;
      v25 = *(v23 + 9792);
      phOsalNfc_SetMemory();
      v26 = v31;
      if (*(v31 + 2984) == 1)
      {
        v27 = 20;
      }

      else
      {
        v27 = 24;
      }

      if (*(v31 + 2986) == 1)
      {
        v27 += 4;
      }

      if (*(v31 + 2994) == 1)
      {
        v27 -= 8;
      }

      *(v15 + 580) |= 0x80000u;
      *(v15 + 1071) = v27;
      v28 = *(v26 + 9792);
      phOsalNfc_SetMemory();
      *(v15 + 580) |= 0x100000u;
      *(v15 + 1116) = 44;
      v29 = *(v31 + 9792);
      phOsalNfc_SetMemory();
      v11 = sub_297E64020(*(v31 + 3088), v15, sub_297EFCEBC, v31);
      if (v11 != 13)
      {
        v30 = *(v31 + 9792);
        phOsalNfc_FreeMemory();
      }
    }
  }

  else
  {
    sub_297E4E0B0(0, &v32, 4u, 1u, "phLibNfc_SM_GetClrAssertRegsTrans: INSUFFICIENT_RESOURCE");
    v11 = 12;
  }

LABEL_9:
  sub_297E4DFAC(0, &v32, 4u, 5u, "phLibNfc_SM_GetClrAssertRegsTrans");
  return v11;
}

uint64_t sub_297EAE118(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigLogTrans");
  sub_297E4F0E8(v12, &v11);
  v5 = 1;
  if (a4)
  {
    v6 = v11;
    if (v11)
    {
      *(v11 + 104) = *a4;
      *(v6 + 2960) = off_2A1A93700;
      *(v6 + 2952) = 0;
      *(v6 + 2954) = 0;
      v7 = off_2A1A93700[0];
      if (off_2A1A93700[0])
      {
        v7 = 0;
        v8 = off_2A1A93710;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      *(v6 + 2953) = v7;
      v5 = sub_297E5588C(v6, 0, 0);
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigLogTrans");
  return v5;
}

uint64_t sub_297EAE1E8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigAssertionLogTrans");
  sub_297E4F0E8(v12, &v11);
  if (a4 && (v5 = v11) != 0)
  {
    *(v11 + 32) = *a4;
    *(v5 + 2960) = off_2A1A93AC0;
    *(v5 + 2952) = 0;
    *(v5 + 2954) = 0;
    v6 = off_2A1A93AC0[0];
    if (off_2A1A93AC0[0])
    {
      v6 = 0;
      v7 = &qword_2A1A93AD0;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    *(v5 + 2953) = v6;
    v9 = sub_297E5588C(v5, 0, 0);
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(0, &v12, 4u, 1u, "phLibNfc_SM_ConfigAssertionLogTrans: Failed");
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigAssertionLogTrans");
  return v9;
}

uint64_t sub_297EAE2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_ValidateEepromTrans");
  sub_297E4F0E8(v10, &v9);
  v4 = v9;
  if (v9)
  {
    *(v9 + 3273) = 0;
    *(v4 + 2960) = off_2A1A935C0;
    *(v4 + 2952) = 0;
    *(v4 + 2954) = 0;
    v5 = off_2A1A935C0[0];
    if (off_2A1A935C0[0])
    {
      v5 = 0;
      v6 = off_2A1A935D0;
      do
      {
        ++v5;
        v7 = *v6;
        v6 += 2;
      }

      while (v7);
    }

    *(v4 + 2953) = v5;
    a3 = sub_297E5588C(v4, 0, 0);
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_ValidateEepromTrans");
  return a3;
}

uint64_t sub_297EAE3A0(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_GetEraseCounterTrans");
  sub_297E4F0E8(v9, &v8);
  if (v8)
  {
    if (*(v8 + 2992) == 1 || *(v8 + 2994) == 1)
    {
      v1 = *(v8 + 9792);
      phOsalNfc_SetMemory();
      v2 = v8;
      *(v8 + 2960) = off_2A1A93800;
      v2[2952] = 0;
      v2[2954] = 0;
      v3 = off_2A1A93800[0];
      if (off_2A1A93800[0])
      {
        v3 = 0;
        v4 = off_2A1A93810;
        do
        {
          ++v3;
          v5 = *v4;
          v4 += 2;
        }

        while (v5);
      }

      v2[2953] = v3;
      v6 = sub_297E5588C(v2, 0, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_GetEraseCounterTrans: Get Erase counter info not supported on this platform");
      v6 = 51;
    }
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_GetEraseCounterTrans: Invalid context");
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_GetEraseCounterTrans");
  return v6;
}

uint64_t sub_297EAE4D8(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetSmbLogTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2985) == 1 || *(v7 + 2986) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A938A0;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A938A0;
      if (qword_2A1A938A0)
      {
        v2 = 0;
        v3 = &qword_2A1A938B0;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetSmbLogTrans: SMB Logging feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetSmbLogTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetSmbLogTrans");
  return v5;
}

uint64_t sub_297EAE600(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_GetProhibitTimerStatusTrans");
  sub_297E4F0E8(v12, &v11);
  v3 = v11;
  if (v11)
  {
    if (*(v11 + 2985) == 1 || *(v11 + 2986) == 1 || *(v11 + 2992) == 1)
    {
      if (a2 == 60)
      {
        *(v11 + 2960) = &qword_2A1A937B0;
        v3[2952] = 0;
        v3[2954] = 0;
        v4 = qword_2A1A937B0;
        if (qword_2A1A937B0)
        {
          v4 = 0;
          v5 = &qword_2A1A937C0;
          do
          {
            ++v4;
            v6 = *v5;
            v5 += 2;
          }

          while (v6);
        }
      }

      else
      {
        *(v11 + 2960) = &qword_2A1A937D0;
        v3[2952] = 0;
        v3[2954] = 0;
        v4 = qword_2A1A937D0;
        if (qword_2A1A937D0)
        {
          v4 = 0;
          v8 = off_2A1A937E0;
          do
          {
            ++v4;
            v9 = *v8;
            v8 += 2;
          }

          while (v9);
        }
      }

      v3[2953] = v4;
      v7 = sub_297E5588C(v3, 0, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v12, 4u, 1u, "phLibNfc_SM_GetProhibitTimerStatusTrans: Get prohibit timer status not supported on this platform");
      v7 = 51;
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(0, &v12, 4u, 1u, "phLibNfc_SM_GetProhibitTimerStatusTrans: Invalid context");
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_GetProhibitTimerStatusTrans");
  return v7;
}

uint64_t sub_297EAE76C(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetLpcdCountTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2985) == 1 || *(v7 + 2986) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A939A0;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A939A0;
      if (qword_2A1A939A0)
      {
        v2 = 0;
        v3 = &qword_2A1A939B0;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetLpcdCountTrans: Get Lpcd False counter feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetLpcdCountTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetLpcdCountTrans");
  return v5;
}

uint64_t sub_297EAE894(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetVasCodeTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2985) == 1 || *(v7 + 2986) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A939C0;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A939C0;
      if (qword_2A1A939C0)
      {
        v2 = 0;
        v3 = &qword_2A1A939D0;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetVasCodeTrans: Feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetVasCodeTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetVasCodeTrans");
  return v5;
}

uint64_t sub_297EAE9BC(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetSuicaSysCodeTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2985) == 1 || *(v7 + 2986) == 1 || *(v7 + 2984) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93A00;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93A00;
      if (qword_2A1A93A00)
      {
        v2 = 0;
        v3 = &qword_2A1A93A10;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetSuicaSysCodeTrans: Feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetSuicaSysCodeTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetSuicaSysCodeTrans");
  return v5;
}

uint64_t sub_297EAEAF0(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetMultiTagInfoTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2987) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93A60;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93A60;
      if (qword_2A1A93A60)
      {
        v2 = 0;
        v3 = &qword_2A1A93A70;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetMultiTagInfoTrans: Feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetMultiTagInfoTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetMultiTagInfoTrans");
  return v5;
}

uint64_t sub_297EAEC0C(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetSwioVoltageTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2986) == 1 || *(v7 + 2987) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93850;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93850;
      if (qword_2A1A93850)
      {
        v2 = 0;
        v3 = off_2A1A93860;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetSwioVoltageTrans: Read SWIO pad voltage not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetSwioVoltageTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetSwioVoltageTrans");
  return v5;
}

uint64_t sub_297EAED34(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_GetTrimVerTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93880;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93880;
      if (qword_2A1A93880)
      {
        v2 = 0;
        v3 = &qword_2A1A93890;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetTrimVerTrans: Get Trim Version not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_GetTrimVerTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_GetTrimVerTrans");
  return v5;
}

uint64_t sub_297EAEE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = a1;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_GetGenericDebugLogTrans");
  sub_297E4F0E8(v13, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = *(v12 + 5608);
    if ((v5 - 12) >= 2)
    {
      if (v5 != 5)
      {
        a3 = 1;
        goto LABEL_15;
      }

      *(v12 + 2960) = &qword_2A1A938E0;
      v4[2952] = 0;
      v4[2954] = 0;
      v6 = qword_2A1A938E0;
      if (qword_2A1A938E0)
      {
        v6 = 0;
        v9 = &qword_2A1A938F0;
        do
        {
          ++v6;
          v10 = *v9;
          v9 += 2;
        }

        while (v10);
      }
    }

    else
    {
      *(v12 + 2960) = &qword_2A1A93B00;
      v4[2952] = 0;
      v4[2954] = 0;
      v6 = qword_2A1A93B00;
      if (qword_2A1A93B00)
      {
        v6 = 0;
        v7 = &qword_2A1A93B10;
        do
        {
          ++v6;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }
    }

    v4[2953] = v6;
    if (!a3)
    {
      a3 = sub_297E5588C(v4, 0, 0);
    }
  }

  else
  {
    a3 = 1;
    sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_GetGenericDebugLogTrans: Failed");
  }

LABEL_15:
  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_GetGenericDebugLogTrans");
  return a3;
}

uint64_t sub_297EAEF84(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_SetSmbNfccParamsTrans");
  sub_297E4F0E8(v9, &v8);
  v1 = v8;
  if (v8)
  {
    v2 = *(v8 + 2985) == 1 && *(v8 + 3028) > 2u;
    if (v2 || *(v8 + 2986) == 1 || *(v8 + 2992) == 1)
    {
      *(v8 + 2960) = &qword_2A1A938C0;
      v1[2952] = 0;
      v1[2954] = 0;
      v3 = qword_2A1A938C0;
      if (qword_2A1A938C0)
      {
        v3 = 0;
        v4 = &qword_2A1A938D0;
        do
        {
          ++v3;
          v5 = *v4;
          v4 += 2;
        }

        while (v5);
      }

      v1[2953] = v3;
      v6 = sub_297E5588C(v1, 0, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetSmbNfccParamsTrans: Feature not supported on this platform");
      v6 = 51;
    }
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetSmbNfccParamsTrans: Failed");
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_SetSmbNfccParamsTrans");
  return v6;
}

uint64_t sub_297EAF0B4(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_SetHLMParamsTrans");
  sub_297E4F0E8(v9, &v8);
  v1 = v8;
  if (v8)
  {
    if (*(v8 + 2985) == 1 || *(v8 + 2986) == 1 || *(v8 + 2992) == 1)
    {
      v2 = *(v8 + 5472) & 0x1E | 1;
      if ((*(v8 + 5472) & 0x1F) == 0)
      {
        v2 = 0;
      }

      *(v8 + 5472) = v2;
      *(v1 + 2960) = off_2A1A93900;
      *(v1 + 2952) = 0;
      *(v1 + 2954) = 0;
      v3 = off_2A1A93900[0];
      if (off_2A1A93900[0])
      {
        v3 = 0;
        v4 = &qword_2A1A93910;
        do
        {
          ++v3;
          v5 = *v4;
          v4 += 2;
        }

        while (v5);
      }

      *(v1 + 2953) = v3;
      v6 = sub_297E5588C(v1, 0, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetHLMParamsTrans: Feature not supported on this platform");
      v6 = 51;
    }
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetHLMParamsTrans: Failed");
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_SetHLMParamsTrans");
  return v6;
}

uint64_t sub_297EAF1EC(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_TrigRfOnNtfTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 2960) = &qword_2A1A936E0;
    v1[2952] = 0;
    v1[2954] = 0;
    v2 = qword_2A1A936E0;
    if (qword_2A1A936E0)
    {
      v2 = 0;
      v3 = &qword_2A1A936F0;
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
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_TrigRfOnNtfTrans: Failed");
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_TrigRfOnNtfTrans");
  return v5;
}

uint64_t sub_297EAF2CC(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_SetVasCodeTrans");
  sub_297E4F0E8(v9, &v8);
  v1 = v8;
  if (!v8)
  {
    v6 = "phLibNfc_SM_SetVasCodeTrans: Failed";
    v5 = 1;
LABEL_40:
    sub_297E4E0B0(v1, &v9, 4u, 1u, v6);
    goto LABEL_41;
  }

  if (v8[5474] >= 0x14u && v8[5496] >= 0x14u && v8[5518] >= 0x14u && v8[5540] >= 0x14u && v8[5562] >= 0x14u && v8[5584] > 0x13u)
  {
    v6 = "phLibNfc_SM_SetVasCodeTrans: Invalid Params";
    v5 = 1;
    LODWORD(v1) = 0;
    goto LABEL_40;
  }

  if (v8[2985] == 1 || v8[2986] == 1 || v8[2992] == 1)
  {
    if (v8[5472] >= 2u)
    {
      v8[5472] = 0;
    }

    if (*(v1 + 5494) >= 2u)
    {
      *(v1 + 5494) = 0;
    }

    if (*(v1 + 5516) >= 2u)
    {
      *(v1 + 5516) = 0;
    }

    if (*(v1 + 5538) >= 2u)
    {
      *(v1 + 5538) = 0;
    }

    if (*(v1 + 5560) >= 2u)
    {
      *(v1 + 5560) = 0;
    }

    if (*(v1 + 5582) >= 2u)
    {
      *(v1 + 5582) = 0;
    }

    if (*(v1 + 5473) >= 2u)
    {
      *(v1 + 5473) = 0;
    }

    if (*(v1 + 5495) >= 2u)
    {
      *(v1 + 5495) = 0;
    }

    if (*(v1 + 5517) >= 2u)
    {
      *(v1 + 5517) = 0;
    }

    if (*(v1 + 5539) >= 2u)
    {
      *(v1 + 5539) = 0;
    }

    if (*(v1 + 5561) >= 2u)
    {
      *(v1 + 5561) = 0;
    }

    if (*(v1 + 5583) >= 2u)
    {
      *(v1 + 5583) = 0;
    }

    *(v1 + 2960) = &qword_2A1A93980;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = qword_2A1A93980;
    if (qword_2A1A93980)
    {
      v2 = 0;
      v3 = &qword_2A1A93990;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetVasCodeTrans: Feature not supported on this platform");
    v5 = 51;
  }

LABEL_41:
  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_SetVasCodeTrans");
  return v5;
}

uint64_t sub_297EAF518(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SetSuicaEntrySysCodeTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 5472) >= 2u && *(v7 + 5473) > 1u)
    {
      v5 = 1;
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_SetSuicaEntrySysCodeTrans: Invalid Params");
    }

    else if (*(v7 + 2985) == 1 || *(v7 + 2986) == 1 || *(v7 + 2984) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A939E0;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A939E0;
      if (qword_2A1A939E0)
      {
        v2 = 0;
        v3 = &qword_2A1A939F0;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_SetSuicaEntrySysCodeTrans: Feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_SetSuicaEntrySysCodeTrans: Failed");
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SetSuicaEntrySysCodeTrans");
  return v5;
}

uint64_t sub_297EAF68C(uint64_t a1)
{
  v20 = 0;
  v21 = a1;
  sub_297E4E1B4(0, &v21, 4u, 5u, "phLibNfc_SM_SetChipScopeCfgTrans");
  sub_297E4F0E8(v21, &v20);
  v1 = v20;
  if (!v20)
  {
    sub_297E4E0B0(0, &v21, 4u, 1u, "phLibNfc_SM_SetChipScopeCfgTrans: Failed");
    v14 = 255;
    goto LABEL_30;
  }

  if (*(v20 + 2985) != 1 && *(v20 + 2986) != 1 && *(v20 + 2992) != 1 || *(v20 + 3196) != 2)
  {
    sub_297E4E0B0(0, &v21, 4u, 1u, "phLibNfc_SM_SetChipScopeCfgTrans: Feature not supported on this platform");
    v14 = 51;
    goto LABEL_30;
  }

  v2 = *(v20 + 5472);
  switch(v2)
  {
    case 0:
      *(v20 + 6076) &= ~1u;
      *(v1 + 2960) = off_2A1A93A20;
      *(v1 + 2952) = 0;
      *(v1 + 2954) = 0;
      v11 = off_2A1A93A20[0];
      if (off_2A1A93A20[0])
      {
        v11 = 0;
        v17 = &qword_2A1A93A30;
        do
        {
          ++v11;
          v18 = *v17;
          v17 += 2;
        }

        while (v18);
      }

      goto LABEL_29;
    case 1:
      *(v20 + 6076) |= 1u;
      *(v1 + 2960) = off_2A1A93A20;
      *(v1 + 2952) = 0;
      *(v1 + 2954) = 0;
      v11 = off_2A1A93A20[0];
      if (off_2A1A93A20[0])
      {
        v11 = 0;
        v15 = &qword_2A1A93A30;
        do
        {
          ++v11;
          v16 = *v15;
          v15 += 2;
        }

        while (v16);
      }

LABEL_29:
      *(v1 + 2953) = v11;
      v14 = sub_297E5588C(v1, 0, 0);
      goto LABEL_30;
    case 2:
      v3 = *(v20 + 5480);
      if (v3)
      {
        if (*v3 && *(v3 + 8))
        {
          if (*(v20 + 6056))
          {
            v4 = *(v20 + 9792);
            phOsalNfc_FreeMemory();
            v1 = v20;
            *(v20 + 6056) = 0;
            v3 = *(v1 + 5480);
          }

          *(v1 + 6064) = 0;
          *(v1 + 6064) = *(v3 + 8);
          v5 = *(v1 + 9792);
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          v7 = v20;
          *(v20 + 6056) = Memory_Typed;
          if (!Memory_Typed)
          {
            v14 = 12;
            goto LABEL_30;
          }

          *(v7 + 6076) = 2;
          v8 = *(v7 + 9792);
          v9 = **(v7 + 5480);
          v10 = *(v7 + 6064);
          phOsalNfc_MemCopy();
          v1 = v20;
          *(v20 + 2960) = off_2A1A93A20;
          *(v1 + 2952) = 0;
          *(v1 + 2954) = 0;
          v11 = off_2A1A93A20[0];
          if (off_2A1A93A20[0])
          {
            v11 = 0;
            v12 = &qword_2A1A93A30;
            do
            {
              ++v11;
              v13 = *v12;
              v12 += 2;
            }

            while (v13);
          }

          goto LABEL_29;
        }
      }

      break;
  }

  v14 = 1;
  sub_297E4E0B0(0, &v21, 4u, 1u, "phLibNfc_SM_SetChipScopeCfgTrans: Invalid Params");
LABEL_30:
  sub_297E4DFAC(0, &v21, 4u, 5u, "phLibNfc_SM_SetChipScopeCfgTrans");
  return v14;
}

uint64_t sub_297EAF90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_RawCtrlMsgTrnscvTrans");
  sub_297E4F0E8(v14, &v13);
  v7 = v13;
  if (v13)
  {
    *(v13 + 6072) = *a5;
    *(v7 + 2960) = off_2A1A93A40;
    *(v7 + 2952) = 0;
    *(v7 + 2954) = 0;
    v8 = off_2A1A93A40[0];
    if (off_2A1A93A40[0])
    {
      v8 = 0;
      v9 = &qword_2A1A93A50;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(v7 + 2953) = v8;
    v11 = sub_297E5588C(v7, 0, a4);
  }

  else
  {
    sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_SM_RawCtrlMsgTrnscvTrans: Failed");
    v11 = 255;
  }

  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_RawCtrlMsgTrnscvTrans");
  return v11;
}

uint64_t sub_297EAF9F8(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SetMultiTagCfgTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2987) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93730;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93730;
      if (qword_2A1A93730)
      {
        v2 = 0;
        v3 = &qword_2A1A93740;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_SetMultiTagCfgTrans: Feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_SetMultiTagCfgTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SetMultiTagCfgTrans");
  return v5;
}

uint64_t sub_297EAFB14(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_ClearMultiTagInfoTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*(v7 + 2987) == 1 || *(v7 + 2992) == 1)
    {
      *(v7 + 2960) = &qword_2A1A93A80;
      v1[2952] = 0;
      v1[2954] = 0;
      v2 = qword_2A1A93A80;
      if (qword_2A1A93A80)
      {
        v2 = 0;
        v3 = &qword_2A1A93A90;
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
      sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_ClearMultiTagInfoTrans: Feature not supported on this platform");
      v5 = 51;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_ClearMultiTagInfoTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_ClearMultiTagInfoTrans");
  return v5;
}

uint64_t sub_297EAFC30(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_SetCWRFCfgTrans");
  sub_297E4F0E8(v9, &v8);
  v1 = v8;
  if (v8)
  {
    if (*(v8 + 2985) == 1 || *(v8 + 2986) == 1 || *(v8 + 2992) == 1)
    {
      v2 = *(v8 + 5472);
      if (v2 > 1 || v2 == 1 && *(v8 + 5476) - 1 >= 2)
      {
        v6 = 1;
        sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetCWRFCfgTrans: Invalid Params");
      }

      else
      {
        *(v8 + 2960) = &qword_2A1A93AA0;
        v1[2952] = 0;
        v1[2954] = 0;
        v3 = qword_2A1A93AA0;
        if (qword_2A1A93AA0)
        {
          v3 = 0;
          v4 = &qword_2A1A93AB0;
          do
          {
            ++v3;
            v5 = *v4;
            v4 += 2;
          }

          while (v5);
        }

        v1[2953] = v3;
        v6 = sub_297E5588C(v1, 0, 0);
      }
    }

    else
    {
      sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetCWRFCfgTrans: Feature not supported on this platform");
      v6 = 51;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SetCWRFCfgTrans: Failed");
    v6 = 255;
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_SetCWRFCfgTrans");
  return v6;
}

uint64_t sub_297EAFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlSetRfConfigTrans");
  sub_297E4F0E8(v13, &v12);
  if (a4 && v12)
  {
    v5 = sub_297E5DAA0(v13, *a4, *(a4 + 8), &v11, 1);
    if (!v5 && v11)
    {
      v6 = v12;
      *(v12 + 3568) = v11;
      *(v6 + 3576) = *a4;
      *(v6 + 2960) = gphLibNfc_IoctlSetRfConfig;
      *(v6 + 2952) = 0;
      *(v6 + 2954) = 0;
      v7 = gphLibNfc_IoctlSetRfConfig[0];
      if (gphLibNfc_IoctlSetRfConfig[0])
      {
        v7 = 0;
        v8 = off_2A1A90988;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      *(v6 + 2953) = v7;
      v5 = sub_297E5588C(v6, 0, 0);
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_IoctlSetRfConfigTrans: Failed");
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlSetRfConfigTrans");
  return v5;
}

uint64_t sub_297EAFEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_IoctlGetRfPropConfigTrans");
  sub_297E4F0E8(v14, &v13);
  if (a4 && a5 && (v7 = v13) != 0)
  {
    *(v13 + 3584) = *a5;
    *(v7 + 3568) = *(a4 + 8);
    *(v7 + 3576) = *a4;
    *(v7 + 3593) = 1;
    *(v7 + 2960) = gphLibNfc_IoctlGetRfConfig;
    *(v7 + 2952) = 0;
    *(v7 + 2954) = 0;
    v8 = gphLibNfc_IoctlGetRfConfig[0];
    if (gphLibNfc_IoctlGetRfConfig[0])
    {
      v8 = 0;
      v9 = &qword_2A1A90968;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(v7 + 2953) = v8;
    v11 = sub_297E5588C(v7, 0, 0);
    if (v11 != 13)
    {
      *(v13 + 3593) = 0;
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_SM_IoctlGetRfPropConfigTrans: Failed");
  }

  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_IoctlGetRfPropConfigTrans");
  return v11;
}

uint64_t sub_297EAFFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_IoctlGetRfPropRegsTrans");
  sub_297E4F0E8(v14, &v13);
  if (a4 && a5 && (v7 = v13) != 0)
  {
    *(v13 + 3584) = *a5;
    *(v7 + 3568) = *(a4 + 8);
    *(v7 + 3576) = *a4;
    *(v7 + 2960) = gphLibNfc_IoctlGetRfRegVal;
    *(v7 + 2952) = 0;
    *(v7 + 2954) = 0;
    v8 = gphLibNfc_IoctlGetRfRegVal[0];
    if (gphLibNfc_IoctlGetRfRegVal[0])
    {
      v8 = 0;
      v9 = &qword_2A1A90A48;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(v7 + 2953) = v8;
    v11 = sub_297E5588C(v7, 0, 0);
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_SM_IoctlGetRfPropRegsTrans: Failed");
  }

  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_IoctlGetRfPropRegsTrans");
  return v11;
}

uint64_t sub_297EB00EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = a1;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlGetSpmiGpioTrans");
  sub_297E5D114(v17, &v15);
  if (v15)
  {
    *(v15 + 80) = a4;
    sub_297E4F0E8(v17, &v16);
    v5 = v15;
    v6 = *(v15 + 80);
    if (!v6 || ((v7 = v16, *v6) ? (v8 = v16 == 0) : (v8 = 1), v8))
    {
      v9 = 1;
      sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlGetSpmiGpioTrans: Failed");
    }

    else
    {
      *(v15 + 216) = -24575;
      v10 = v5 + 216;
      *(v10 + 2) = 49;
      *(v7 + 3568) = 3;
      *(v7 + 3576) = v10;
      *(v10 - 56) = *v6;
      *(v7 + 2960) = gphLibNfc_IoctlGetSpmiGpio;
      *(v7 + 2952) = 0;
      *(v7 + 2954) = 0;
      v11 = gphLibNfc_IoctlGetSpmiGpio[0];
      if (gphLibNfc_IoctlGetSpmiGpio[0])
      {
        v11 = 0;
        v12 = &qword_2A1A909F8;
        do
        {
          ++v11;
          v13 = *v12;
          v12 += 2;
        }

        while (v13);
      }

      *(v7 + 2953) = v11;
      v9 = sub_297E5588C(v7, 0, 0);
    }
  }

  else
  {
    sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlGetSpmiGpioTrans: Invalid IOCTL Context");
    v9 = 255;
  }

  sub_297E4DFAC(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlGetSpmiGpioTrans");
  return v9;
}

uint64_t sub_297EB024C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlConfigDebugModeTrans");
  sub_297E4F0E8(v13, &v12);
  sub_297E5D114(v13, &v11);
  v6 = 1;
  if (a4 && v12 && v11)
  {
    v7 = *a4;
    if (*a4)
    {
      if (*(a4 + 2) == 3 && !*v7)
      {
        v10 = *(v7 + 1);
        if (v10 < 0x7D0)
        {
          sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_IoctlConfigDebugModeTrans: Invalid timeout value");
          a3 = 147;
        }

        else
        {
          *(v12 + 756) = v10;
        }
      }

      else
      {
        a3 = 1;
        sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_IoctlConfigDebugModeTrans: Failed to update SeTransceive Modified Timeout details ");
      }
    }

    v8 = v11;
    v11[2] = 0;
    *v8 = 0;
    v6 = a3;
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlConfigDebugModeTrans");
  return v6;
}

uint64_t sub_297EB0378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17 = a1;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans");
  sub_297E5D114(v17, &v14);
  if (v14)
  {
    sub_297E4F0E8(v17, &v15);
    if (a4 && (v5 = v15) != 0)
    {
      v6 = v14;
      *(v14 + 216) = -608;
      v7 = 1;
      *(v6 + 218) = 1;
      v8 = *(v5 + 9792);
      v9 = *a4;
      v10 = *(a4 + 2);
      phOsalNfc_MemCopy();
      if (v16 <= 0x9F6u)
      {
        v12 = v14;
        v11 = v15;
        *(v14 + 219) = v16 / 0xAu;
        v7 = sub_297E7EDD4(v11, v12 + 216, 4u, 5);
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans: Invalid IOCTL Context");
    v7 = 255;
  }

  sub_297E4DFAC(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans");
  return v7;
}

uint64_t sub_297EB04BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17 = a1;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans");
  sub_297E5D114(v17, &v14);
  if (v14)
  {
    sub_297E4F0E8(v17, &v15);
    if (a4 && (v5 = v15) != 0)
    {
      v6 = v14;
      *(v14 + 216) = -19808;
      v7 = 1;
      *(v6 + 218) = 1;
      v8 = *(v5 + 9792);
      v9 = *a4;
      v10 = *(a4 + 2);
      phOsalNfc_MemCopy();
      if (v16 <= 0x384u)
      {
        v12 = v14;
        v11 = v15;
        *(v14 + 219) = v16 / 0xAu;
        v7 = sub_297E7EDD4(v11, v12 + 216, 4u, 5);
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans: Invalid IOCTL Context");
    v7 = 255;
  }

  sub_297E4DFAC(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans");
  return v7;
}

uint64_t sub_297EB0600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17 = a1;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans");
  sub_297E5D114(v17, &v14);
  if (v14)
  {
    sub_297E4F0E8(v17, &v15);
    if (a4 && (v5 = v15) != 0)
    {
      v6 = v14;
      *(v14 + 216) = -16992;
      v7 = 1;
      *(v6 + 218) = 1;
      v8 = *(v5 + 9792);
      v9 = *a4;
      v10 = *(a4 + 2);
      phOsalNfc_MemCopy();
      if (v16 <= 0x384u)
      {
        v12 = v14;
        v11 = v15;
        *(v14 + 219) = v16 / 0xAu;
        v7 = sub_297E7EDD4(v11, v12 + 216, 4u, 5);
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans: Invalid IOCTL Context");
    v7 = 255;
  }

  sub_297E4DFAC(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans");
  return v7;
}

uint64_t sub_297EB0744(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v17 = a1;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans");
  sub_297E5D114(v17, &v14);
  if (v14)
  {
    sub_297E4F0E8(v17, &v15);
    if (a4 && (v5 = v15) != 0)
    {
      *(v15 + 5449) = 0;
      v6 = v14;
      *(v14 + 216) = 5537;
      v7 = 1;
      *(v6 + 218) = 1;
      v8 = *(v5 + 9792);
      v9 = *a4;
      phOsalNfc_MemCopy();
      if (!v16 || v16 - 4001 >= 0xFFFFF253)
      {
        v10 = 42949673 * v16;
        v12 = v14;
        v11 = v15;
        *(v14 + 219) = v16 / 0x64u;
        if (*(v11 + 2993) == 1 && a4[2] == 3 && *(*a4 + 2) == 1)
        {
          *(v12 + 219) = BYTE4(v10) | 0x40;
        }

        v7 = sub_297E7EDD4(v11, v12 + 216, 4u, 5);
        if (v7 == 13)
        {
          *(v15 + 5449) = 1;
        }
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v17, 4u, 1u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans: Invalid IOCTL Context");
    v7 = 255;
  }

  sub_297E4DFAC(0, &v17, 4u, 5u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans");
  return v7;
}

uint64_t sub_297EB08E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_IoctlSetRfCalDataSignedTrans");
  sub_297E4F0E8(v12, &v11);
  if (a4 && (v5 = v11) != 0)
  {
    *(v11 + 2960) = gphLibNfc_IoctlSetRfCalData;
    v5[2952] = 0;
    v5[2954] = 0;
    v6 = gphLibNfc_IoctlSetRfCalData[0];
    if (gphLibNfc_IoctlSetRfCalData[0])
    {
      v6 = 0;
      v7 = off_2A1A90A68;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    v5[2953] = v6;
    v9 = sub_297E5588C(v5, 0, a4);
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(0, &v12, 4u, 1u, "phLibNfc_SM_IoctlSetRfCalDataSignedTrans: Failed");
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_IoctlSetRfCalDataSignedTrans");
  return v9;
}

uint64_t sub_297EB09CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_IoctlGetRfCalDataSignedTrans");
  sub_297E4F0E8(v12, &v11);
  if (a4 && (v5 = v11) != 0)
  {
    *(v11 + 2960) = gphLibNfc_IoctlGetRfCalData;
    v5[2952] = 0;
    v5[2954] = 0;
    v6 = gphLibNfc_IoctlGetRfCalData[0];
    if (gphLibNfc_IoctlGetRfCalData[0])
    {
      v6 = 0;
      v7 = &qword_2A1A90A98;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    v5[2953] = v6;
    v9 = sub_297E5588C(v5, 0, a4);
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(0, &v12, 4u, 1u, "phLibNfc_SM_IoctlGetRfCalDataSignedTrans: Failed");
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_IoctlGetRfCalDataSignedTrans");
  return v9;
}

uint64_t sub_297EB0AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans");
  sub_297E4F0E8(v16, &v14);
  v5 = 1;
  v6 = "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans: Failed";
  if (!a4)
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    goto LABEL_10;
  }

  v7 = sub_297EFCC04(v14, *a4, *(a4 + 8), &v15);
  v6 = "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans:                                    Buffer is not adhering to semantics of RF_SIGNED_CONFIG_CMD!";
  if (v7 || !v15)
  {
    goto LABEL_10;
  }

  v8 = v14;
  *(v14 + 3296) = v15;
  *(v8 + 3288) = *a4;
  *(v8 + 3556) = *(a4 + 8);
  *(v8 + 3560) = 0;
  *(v8 + 2960) = gphLibNfc_IoctlSetPropConfigSigned;
  *(v8 + 2952) = 0;
  *(v8 + 2954) = 0;
  v9 = gphLibNfc_IoctlSetPropConfigSigned[0];
  if (gphLibNfc_IoctlSetPropConfigSigned[0])
  {
    v9 = 0;
    v10 = off_2A1A90A18;
    do
    {
      ++v9;
      v11 = *v10;
      v10 += 2;
    }

    while (v11);
  }

  *(v8 + 2953) = v9;
  v5 = sub_297E5588C(v8, 0, 0);
  if (v5 != 13)
  {
    v12 = (v14 + 3576);
    *(v14 + 3560) = 0;
    *v12 = 0u;
    v6 = "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans Failed!!!";
LABEL_10:
    sub_297E4E0B0(0, &v16, 4u, 1u, v6);
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans");
  return v5;
}

uint64_t sub_297EB0C04(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v13 = 0;
  v14 = a1;
  v12 = 0;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_IoctlSysPwrTraceConfigTrans");
  sub_297E4F0E8(v14, &v13);
  sub_297E5D114(v14, &v12);
  if (!a4 || (v5 = v13) == 0 || (v6 = v12) == 0)
  {
    v10 = "phLibNfc_SM_IoctlSyPwrTraceConfigTrans: Failed";
LABEL_14:
    v9 = 1;
    sub_297E4E0B0(0, &v14, 4u, 1u, v10);
    goto LABEL_15;
  }

  if (!*a4 || *(a4 + 2) != 1)
  {
    v10 = "phLibNfc_SM_IoctlGetPwrTrackConfigTrans:                                    Buffer is not adhering to semantics of PHLIBNFC_IOCTL_GET_PWR_TRACK_CFG!";
    goto LABEL_14;
  }

  v13[5448] = 0;
  *(v6 + 216) = 28064;
  *(v6 + 218) = 1;
  v7 = **a4;
  if (v5[2985] == 1 || v5[2986] == 1 || v5[2992] == 1)
  {
    v8 = v7 & 3;
  }

  else
  {
    v8 = v7 & 1;
  }

  *(v6 + 219) = v8;
  v9 = sub_297E7EDD4(v5, v6 + 216, 4u, 6);
  if (v9 == 13)
  {
    v13[5448] = 1;
  }

LABEL_15:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_IoctlSysPwrTraceConfigTrans");
  return v9;
}

uint64_t sub_297EB0D60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlCrcChkConfigTrans");
  sub_297E4F0E8(v13, &v11);
  sub_297E5D114(v13, &v12);
  if (!a4 || (v5 = v11) == 0 || (v6 = v12) == 0)
  {
    v9 = "phLibNfc_SM_IoctlCrcChkConfigTrans: Failed";
LABEL_10:
    v8 = 1;
    sub_297E4E0B0(0, &v13, 4u, 1u, v9);
    goto LABEL_11;
  }

  if (!*a4 || *(a4 + 2) != 1)
  {
    v9 = "phLibNfc_SM_IoctlCrcChkConfigTrans:                                    Buffer is not adhering to semantics of PHLIBNFC_IOCTL_SET_CRC_CHK_CFG!";
    goto LABEL_10;
  }

  *(v11 + 5456) = 0;
  *(v6 + 216) = -16480;
  v7 = v6 + 216;
  *(v7 + 2) = 1;
  *(v7 + 3) = **a4;
  *(v5 + 5452) = **a4;
  v8 = sub_297E7EDD4(v5, v7, 4u, 7);
  if (v8 == 13)
  {
    *(v11 + 5456) = 1;
  }

  else
  {
    sub_297E50DB0(0, &v13, 4u, 1u, "phLibNfc_SM_IoctlCrcChkConfigTrans returned with status Rxd=");
  }

LABEL_11:
  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlCrcChkConfigTrans");
  return v8;
}

uint64_t sub_297EB0EB4(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  v7 = 0;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_IoctlEnableDtaModeTrans");
  sub_297E4F0E8(v9, &v8);
  sub_297E5D114(v9, &v7);
  if (v8)
  {
    v1 = v7 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_297F09D58(*(v8 + 3088), 1);
    v2 = v3;
    if (v3)
    {
      sub_297E4E0B0(0, &v9, 4u, 2u, "phLibNfc_SM_IoctlEnableDtaModeTrans: Failed to update NCI DTA flag");
    }

    else
    {
      v4 = v8;
      *(v8 + 2933) = 1;
      *(v4 + 765) = 0;
    }

    v5 = v7;
    v7[2] = 0;
    *v5 = 0;
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_IoctlEnableDtaModeTrans");
  return v2;
}

uint64_t sub_297EB0F9C(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  v7 = 0;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_IoctlDisableDtaModeTrans");
  sub_297E4F0E8(v9, &v8);
  sub_297E5D114(v9, &v7);
  if (v8)
  {
    v1 = v7 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_297F09D58(*(v8 + 3088), 0);
    v2 = v3;
    if (v3)
    {
      sub_297E4E0B0(0, &v9, 4u, 2u, "phLibNfc_SM_IoctlDisableDtaModeTrans: Failed to update NCI DTA flag");
    }

    else
    {
      v4 = v8;
      *(v8 + 2933) = 0;
      *(*(v4 + 6872) + 242) = 0;
      *(v4 + 765) = 3;
    }

    v5 = v7;
    v7[2] = 0;
    *v5 = 0;
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_IoctlDisableDtaModeTrans");
  return v2;
}

uint64_t sub_297EB108C(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_EnableDisableMultiTagTrans");
  sub_297E4F0E8(v12, &v11);
  v9 = sub_297E54988(v11, a2, a3, a4, a5);
  if (!v9)
  {
    v9 = sub_297EE6ACC(v11);
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_EnableDisableMultiTagTrans");
  return v9;
}

uint64_t sub_297EB1140(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_ConfigInitDiscoveryStopTrans");
  sub_297E4F0E8(v16, &v15);
  if (v15)
  {
    a3 = sub_297E54988(v15, a2, a3, a4, a5);
    if (!a3)
    {
      if (a5)
      {
        v9 = v15;
        if (*(a5 + 88) == 1)
        {
          *(v15 + 2960) = &qword_2A1A92F70;
          v9[2952] = 0;
          v9[2954] = 0;
          v10 = qword_2A1A92F70;
          if (qword_2A1A92F70)
          {
            v10 = 0;
            v11 = off_2A1A92F80;
            do
            {
              ++v10;
              v12 = *v11;
              v11 += 2;
            }

            while (v12);
          }

          v9[2953] = v10;
          v13 = sub_297E5588C(v9, 0, 0);
        }

        else
        {
          v13 = sub_297EE6C98(v15, a4);
        }

        a3 = v13;
      }

      else
      {
        a3 = 1;
        sub_297E4E0B0(1, v15 + 9792, 4u, 1u, "phLibNfc_SM_ConfigInitDiscoveryStopTrans: Invalid Input Parameter passed");
      }
    }
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_ConfigInitDiscoveryStopTrans");
  return a3;
}

uint64_t sub_297EB1284(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_DeactivateTrans");
  sub_297E4F0E8(v14, &v13);
  v8 = v13;
  if (v13)
  {
    if (*(v13 + 745) == 1)
    {
      v9 = sub_297EE0A34(*(v13 + 9784), 1);
      v8 = v13;
      if (!v9)
      {
        *(v13 + 560) = v13 + 440;
        *(v8 + 572) = 0;
        sub_297E4E1B4(2, v8, 4u, 5u, "phLibNfc_FindSetModeTransEvent");
        sub_297E4DFAC(2, v8, 4u, 5u, "phLibNfc_FindSetModeTransEvent");
        sub_297E4F450(*(v13 + 9784), 140, a3, 0, 0);
        v8 = v13;
        *(v13 + 745) = 0;
      }
    }

    *(v8 + 1472) = 0;
    if (a2 == 125)
    {
      a3 = 255;
    }

    else
    {
      a3 = a3;
    }

    if (*(v8 + 6200))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 15, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6200))(*(v13 + 9784), *(v13 + 6208), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6200;
    }

    else if (*(v8 + 6264))
    {
      if (a2 == 125 && !*(v8 + 1475))
      {
        goto LABEL_39;
      }

      if (sub_297EE1594(*(v8 + 9784)) == 22)
      {
        a3 = a3;
      }

      else
      {
        a3 = 0;
      }

      sub_297E4D930(1, v13 + 9792, 4u, 130, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6264))(*(v13 + 9784), *(v13 + 6272), 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6264;
    }

    else if (*(v8 + 6472))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 22, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6472))(*(v13 + 9784), *(v13 + 6480), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6472;
    }

    else if (*(v8 + 6312))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 23, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6312))(*(v13 + 9784), *(v13 + 6320), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6312;
    }

    else if (*(v8 + 6408))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 24, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6408))(*(v13 + 9784), *(v13 + 6416), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6408;
    }

    else if (*(v8 + 6424))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 25, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6424))(*(v13 + 9784), *(v13 + 6432), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6424;
    }

    else if (*(v8 + 6824))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 26, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6824))(*(v13 + 9784), *(v13 + 6832), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6824;
    }

    else if (*(v8 + 6440))
    {
      *(v8 + 9796) = 0;
      sub_297E4D930(1, v8 + 9792, 4u, 27, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6440))(*(v13 + 9784), *(v13 + 6448), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6440;
    }

    else if (*(v8 + 6296))
    {
      if (a2 == 125 && !*(v8 + 1475))
      {
        goto LABEL_39;
      }

      sub_297E4D930(1, v8 + 9792, 4u, 114, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6296))(*(v13 + 9784), *(v13 + 6304), 0);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6296;
    }

    else if (*(v8 + 6216))
    {
      sub_297E4D930(1, v8 + 9792, 4u, 16, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6216))(*(v13 + 9784), *(v13 + 6224), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6216;
    }

    else
    {
      if (!*(v8 + 6232))
      {
        if (a5 && *(v8 + 6280) && !*a5)
        {
          sub_297E4E0B0(0, &v14, 4u, 4u, "Invoking pClientNtfRegRespCB with rf deactivated status");
          sub_297E54734(0, &v14, 4u, 4u, "phLibNfc_SM_DeactivateTrans :RemDevNtfCB[De-Activated status]");
          (*(v13 + 6280))(*(v13 + 9784), *(v13 + 6288), 0, 0, a3);
          v8 = v13;
        }

        if (a2 == 125)
        {
          *(v8 + 1475) = 0;
        }

        goto LABEL_39;
      }

      sub_297E4D930(1, v8 + 9792, 4u, 17, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6232))(*(v13 + 9784), *(v13 + 6240), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6232;
    }

    *(v8 + v11) = v10;
LABEL_39:
    sub_297ECF904(v8);
    goto LABEL_40;
  }

  sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_SM_DeactivateTrans: Invalid LIBNFC context!!");
LABEL_40:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_DeactivateTrans");
  return 0;
}

uint64_t sub_297EB1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_IoctlSetSpmiGpioTrans");
  v6 = 1;
  if (a5 && v11)
  {
    v7 = *a5;
    if (v7 <= 9)
    {
      v8 = dword_297F132C8[v7];
      v9 = qword_297F132F0[v7];
    }

    v6 = phTmlNfc_IoCtl();
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_IoctlSetSpmiGpioTrans");
  return v6;
}

uint64_t sub_297EB1930(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_IoctlTrigVgpioDbgLogCfgTrans");
  if (v8)
  {
    v1 = 0;
    v2 = 1;
    while (1)
    {
      v3 = v2;
      v4 = &unk_2A18BDDC0 + 112 * v1;
      if (*v4 == v8)
      {
        break;
      }

      v2 = 0;
      v1 = 1;
      if ((v3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v6 = *(v4 + 2);
LABEL_8:
    v5 = phTmlNfc_IoCtl();
    if (!v5)
    {
      phOsalNfc_Delay();
      v5 = phTmlNfc_IoCtl();
    }
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_IoctlTrigVgpioDbgLogCfgTrans");
  return v5;
}

uint64_t sub_297EB1A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_GetSpmiErrorRegsTrans");
  sub_297E5D114(v9, &v8);
  if (v8)
  {
    v6 = 1;
    if (a5)
    {
      if (v9)
      {
        if (v9 == *(v8 + 8))
        {
          v6 = sub_297EBE8B0(v9);
          if (!v6)
          {
            v6 = phTmlNfc_SpmiDrvErrorStatus();
            sub_297E5AA54(v9, 20);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_GetSpmiErrorRegsTrans");
  return v6;
}

uint64_t sub_297EB1AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_ClearSpmiErrorRegsTrans");
  sub_297E5D114(v9, &v8);
  if (v8)
  {
    v6 = 1;
    if (a5)
    {
      if (v9)
      {
        if (v9 == *(v8 + 8))
        {
          v6 = sub_297EBE8B0(v9);
          if (!v6)
          {
            v6 = phTmlNfc_SpmiDrvErrorStatus();
            sub_297E5AA54(v9, 20);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_ClearSpmiErrorRegsTrans");
  return v6;
}

uint64_t sub_297EB1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_GetSpmiCfgRegsTrans");
  sub_297E5D114(v11, &v10);
  SpmiDrvConfigRegs = 1;
  if (a5)
  {
    if (v10)
    {
      v7 = v11 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v11 == *(v10 + 8))
    {
      SpmiDrvConfigRegs = sub_297EBE8B0(v11);
      if (!SpmiDrvConfigRegs)
      {
        v8 = *(v10 + 8);
        SpmiDrvConfigRegs = phTmlNfc_SetGetSpmiDrvConfigRegs();
        sub_297E5AA54(v11, 20);
      }
    }
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_GetSpmiCfgRegsTrans");
  return SpmiDrvConfigRegs;
}

uint64_t sub_297EB1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_SetSpmiCfgRegsTrans");
  sub_297E5D114(v10, &v9);
  SpmiDrvConfigRegs = 1;
  if (a5)
  {
    if (v9)
    {
      v7 = v10 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v10 == *(v9 + 8))
    {
      SpmiDrvConfigRegs = sub_297EBE8B0(v10);
      if (!SpmiDrvConfigRegs)
      {
        SpmiDrvConfigRegs = phTmlNfc_SetGetSpmiDrvConfigRegs();
        sub_297E5AA54(v10, 20);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_SetSpmiCfgRegsTrans");
  return SpmiDrvConfigRegs;
}

uint64_t sub_297EB1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_IoctlLoopbackTrans");
  sub_297E4F0E8(v16, &v15);
  if (a4 && a5 && (v8 = *a5) != 0 && *a4 && (v9 = v15) != 0)
  {
    if (*(v15 + 9760) == 1)
    {
      v10 = *(a4 + 8);
      if (v10 == *(a5 + 2))
      {
        *(v15 + 2776) = *a4;
        *(v9 + 2784) = v10;
        *(v9 + 2792) = v8;
        *(v9 + 2800) = v10;
        if (!a3)
        {
          *(v9 + 2766) = 2000;
          *(v9 + 2960) = gphLibNfc_IoctlLoopbackSequence;
          *(v9 + 2952) = 0;
          *(v9 + 2954) = 0;
          v11 = gphLibNfc_IoctlLoopbackSequence[0];
          if (gphLibNfc_IoctlLoopbackSequence[0])
          {
            v11 = 0;
            v12 = &qword_2A1A90918;
            do
            {
              ++v11;
              v13 = *v12;
              v12 += 2;
            }

            while (v13);
          }

          *(v9 + 2953) = v11;
          a3 = sub_297E5588C(v9, 0, 0);
        }
      }

      else
      {
        a3 = 3;
      }
    }

    else
    {
      a3 = 58;
    }
  }

  else
  {
    a3 = 1;
    sub_297E4E0B0(0, &v16, 4u, 1u, "phLibNfc_SM_IoctlLoopbackTrans: Failed");
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_IoctlLoopbackTrans");
  return a3;
}

uint64_t sub_297EB1E98(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4u, 5u, "phLibNfc_SM_IoctlSwp1TestTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = sub_297F07DF4(*(v3 + 3088), 0, sub_297E7EEF0, v3);
  }

  else
  {
    v1 = 1;
    sub_297E4E0B0(0, &v4, 4u, 1u, "IoctlSwp1TestTrans: Failed");
  }

  sub_297E4DFAC(0, &v4, 4u, 5u, "phLibNfc_SM_IoctlSwp1TestTrans");
  return v1;
}

uint64_t sub_297EB1F54(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4u, 5u, "phLibNfc_SM_IoctlSwp2TestTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = sub_297F07DF4(*(v3 + 3088), 1, sub_297E7EEF0, v3);
  }

  else
  {
    v1 = 1;
    sub_297E4E0B0(0, &v4, 4u, 1u, "IoctlSwp2TestTrans: Failed");
  }

  sub_297E4DFAC(0, &v4, 4u, 5u, "phLibNfc_SM_IoctlSwp2TestTrans");
  return v1;
}

uint64_t sub_297EB2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_IoctlPrbsTestTrans");
  sub_297E4F0E8(v8, &v7);
  if (a4 && v7 && *a4 && *(a4 + 8) == 6)
  {
    v5 = sub_297F07F1C(*(v7 + 3088), a4, sub_297E7EFDC, v7);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4u, 1u, "phLibNfc_SM_IoctlPrbsTestTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_IoctlPrbsTestTrans");
  return v5;
}

uint64_t sub_297EB20E8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v18 = 0;
  v19 = a1;
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_SM_CfgTestModeOffTrans");
  sub_297E4F0E8(v19, &v18);
  v5 = 1;
  if (a4)
  {
    v6 = v18;
    if (v18)
    {
      *(v18 + 9752) = *a4;
      *(v6 + 2960) = off_2A1A93950;
      *(v6 + 2952) = 0;
      *(v6 + 2954) = 0;
      v7 = off_2A1A93950[0];
      if (off_2A1A93950[0])
      {
        v7 = 0;
        v8 = off_2A1A93960;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      *(v6 + 2953) = v7;
      if (*(v6 + 9760) != 1)
      {
        sub_297E79734(v6, off_2A1A93950, 1);
        v6 = v18;
      }

      v10 = sub_297E5588C(v6, 0, 0);
      if (v10 == 13)
      {
        v5 = 13;
      }

      else
      {
        v11 = v10;
        v12 = v18;
        v13 = *(v18 + 3088);
        if (v13)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = *(&unk_2A18BDDC0 + 14 * v15 + 4);
            if (v14)
            {
              break;
            }

            v14 = 1;
            v15 = 1;
          }

          while (v16 != v13);
          if (v16 == v13)
          {
            sub_297F080D4(*(v18 + 3088), 2, 0, 0);
            v12 = v18;
          }
        }

        *(v12 + 3088) = 0;
        sub_297EFC5B0(v12);
        v18 = 0;
        if (v11 == 143)
        {
          v5 = 143;
        }

        else
        {
          v5 = 255;
        }
      }
    }
  }

  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_SM_CfgTestModeOffTrans");
  return v5;
}

uint64_t sub_297EB2260(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v28 = a1;
  v26 = 0;
  sub_297E4E1B4(0, &v28, 4u, 5u, "phLibNfc_SM_Main_TestModeTransComplete");
  sub_297E4F0E8(v28, &v27);
  sub_297E5D114(v28, &v26);
  if (a3)
  {
    sub_297E96818(v28, a3);
  }

  else
  {
    sub_297E5D398(v28, 0);
  }

  v7 = v27;
  if (!v27)
  {
    goto LABEL_34;
  }

  if (a2 > 67)
  {
    v8 = a2 - 76;
    if ((a2 - 76) > 0x1C)
    {
      goto LABEL_26;
    }

    if (((1 << v8) & 0x17818000) != 0 || ((1 << v8) & 0x3810) != 0)
    {
      sub_297E5FC6C(v26, a4, a3);
      goto LABEL_34;
    }

    if (a2 != 76)
    {
LABEL_26:
      if (a2 != 68)
      {
        if (a2 == 72)
        {
          v23 = v27[855];
          v24 = v27[856];
          *(v27 + 855) = 0u;
          if (v23)
          {
            sub_297E50EBC(0, &v28, 4u, 4u, "phLibNfc_SM_Main_TestModeTransComplete:Invoking callback, wStatus = ");
            sub_297E4D930(1, (v27 + 1224), 4u, 67, "phLibNfc_SM_Main_TestModeTransComplete");
            v23(v27[1223], v24, a4, a3);
          }
        }

        goto LABEL_34;
      }
    }

    v9 = v27[847];
    v10 = v27[848];
    *(v27 + 847) = 0u;
    if (!v9)
    {
      goto LABEL_34;
    }

    sub_297E50EBC(0, &v28, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v11 = (v27 + 1224);
    v12 = 132;
    goto LABEL_32;
  }

  switch(a2)
  {
    case '$':
      v9 = v27[773];
      v15 = v27[774];
      *(v27 + 773) = 0u;
      v16 = *(v7 + 3088);
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *(&unk_2A18BDDC0 + 14 * v18 + 4);
          if (v17)
          {
            break;
          }

          v17 = 1;
          v18 = 1;
        }

        while (v19 != v16);
        if (v19 == v16)
        {
          sub_297F080D4(*(v7 + 3088), 2, 0, 0);
          v7 = v27;
        }
      }

      *(v7 + 3088) = 0;
      sub_297EFC5B0(v7);
      v27 = 0;
      if (v9)
      {
        sub_297E4E0B0(0, &v28, 4u, 4u, "ConfigTestModeCb:Invoking callback function, with status NFCSTATUS_SUCCESS");
        sub_297E4D930(0, &v28, 4u, 33, "phLibNfc_SM_Main_TestModeTransComplete");
        v20 = v28;
        v21 = v15;
        v22 = 0;
LABEL_33:
        v9(v20, v21, v22);
      }

      break;
    case '-':
      v13 = v27[849];
      v14 = v27[850];
      *(v27 + 849) = 0u;
      if (v13)
      {
        sub_297E50EBC(0, &v28, 4u, 4u, "phLibNfc_SM_eAntennaSelfTest:Invoking callback, wStatus = ");
        sub_297E4D930(1, (v27 + 1224), 4u, 42, "phLibNfc_SM_Main_TestModeTransComplete");
        v13(v27[1223], v14, v27 + 6044, a3);
      }

      break;
    case '3':
      v9 = v27[831];
      v10 = v27[832];
      *(v27 + 831) = 0u;
      if (!v9)
      {
        break;
      }

      sub_297E50EBC(0, &v28, 4u, 4u, "phLibNfc_TriggerRfFieldOnNtf:Invoking callback, wStatus = ");
      v11 = (v27 + 1224);
      v12 = 48;
LABEL_32:
      sub_297E4D930(1, v11, 4u, v12, "phLibNfc_SM_Main_TestModeTransComplete");
      v20 = v28;
      v21 = v10;
      v22 = a3;
      goto LABEL_33;
    default:
      break;
  }

LABEL_34:
  sub_297E4DFAC(0, &v28, 4u, 5u, "phLibNfc_SM_Main_TestModeTransComplete");
  return a3;
}

uint64_t sub_297EB2630(uint64_t a1, int a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigReDiscoveryTrans");
  sub_297E4F0E8(v12, &v11);
  v9 = sub_297E54988(v11, a2, a3, a4, a5);
  if (!v9)
  {
    v9 = sub_297EE6B84(v11, a4, a5);
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigReDiscoveryTrans");
  return v9;
}

uint64_t sub_297EB26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_PiccActivatedTrans");
  sub_297E4F0E8(v11, &v10);
  if (v10 && *(v10 + 6280))
  {
    v4 = *(v10 + 856);
    if (v4 && *v4 >= 2u && *(v10 + 1470) == 1)
    {
      sub_297E54734(0, &v11, 4u, 4u, "phLibNfc_SM_PiccActivatedTrans :RemDevNtfCB[Unknown Tag Protocol]");
      v5 = v10;
      *(v10 + 762) = 0;
      a3 = 119;
      (*(v5 + 6280))(*(v5 + 9784), *(v5 + 6288), v5 + 872, 0, 119);
    }

    else
    {
      *(v10 + 1471) = 0;
      sub_297E54734(0, &v11, 4u, 4u, "phLibNfc_SM_PiccActivatedTrans :Received ACTIVATED NTF");
      if (!sub_297EE5DF4(v10))
      {
        v6 = *(v10 + 6280);
        v7 = *(v10 + 9784);
        v8 = *(v10 + 6288);
        if (a3 == 188)
        {
          v6(v7, v8, v10 + 872, 0, 188);
          a3 = 0;
        }

        else
        {
          v6(v7, v8, v10 + 872, *(v10 + 762), a3);
        }
      }
    }
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_PiccActivatedTrans");
  return a3;
}

uint64_t sub_297EB2850(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4u, 5u, "phLibNfc_SM_PcdActivatedTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = sub_297EE5DF4(v3);
  }

  else
  {
    v1 = 1;
  }

  sub_297E4DFAC(0, &v4, 4u, 5u, "phLibNfc_SM_PcdActivatedTrans");
  return v1;
}

uint64_t sub_297EB28EC(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_EMVCoTagRemDetTrans");
  sub_297E4F0E8(v16, &v15);
  if (v15)
  {
    v9 = sub_297E54988(v15, a2, a3, a4, a5);
    if (!v9)
    {
      v10 = v15;
      *(v15 + 2960) = off_2A1A92FB0;
      v10[2952] = 0;
      v10[2954] = 0;
      v11 = off_2A1A92FB0[0];
      if (off_2A1A92FB0[0])
      {
        v11 = 0;
        v12 = &qword_2A1A92FC0;
        do
        {
          ++v11;
          v13 = *v12;
          v12 += 2;
        }

        while (v13);
      }

      v10[2953] = v11;
      v9 = sub_297E5588C(v10, 0, 0);
    }
  }

  else
  {
    v9 = 255;
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_EMVCoTagRemDetTrans");
  return v9;
}

uint64_t sub_297EB29E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = 0;
  v17 = 1;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_SM_ConnectTrans");
  sub_297E4F0E8(v19, &v18);
  if (v18)
  {
    v15 = a4;
    if (sub_297ECD484(v18, &v15, &v16, 1))
    {
      v5 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
LABEL_7:
      sub_297E4E0B0(0, &v19, 4u, 1u, v5);
      v6 = 149;
      goto LABEL_8;
    }

    if (sub_297E8E7EC(v18, v16))
    {
      v5 = "Validation of NCI RemoteDev Handle Failed";
      goto LABEL_7;
    }

    v8 = *(v18 + 1504);
    if (v16 != v8 && v8 != 0)
    {
      sub_297E4E0B0(0, &v19, 4u, 1u, "Connected Handle is not same as passed handle");
      v6 = 255;
      goto LABEL_8;
    }

    if (v16 == v8 && *(v18 + 1512) == v16 && *(v18 + 1470) != 1)
    {
      v14 = sub_297ECD57C(v18, v15, v16);
      goto LABEL_37;
    }

    if (!v16)
    {
LABEL_27:
      v11 = sub_297EE5FD4(v16, (v18 + 760), (v18 + 761));
      v12 = v16;
      v13 = v18;
      *(v18 + 1504) = v16;
      if (!v12 || v11)
      {
        if (v11)
        {
          v6 = 1;
          goto LABEL_8;
        }
      }

      else if ((!*(v12 + 4) && *(v12 + 3) == 1 || *(v13 + 1471) == 1) && *(v13 + 1470) == 1)
      {
        sub_297ECE0E4(v13, 0, v12);
        v6 = 0;
        goto LABEL_8;
      }

      v14 = sub_297ECD6F0(v15, v12, &v17, v13);
LABEL_37:
      v6 = v14;
      goto LABEL_8;
    }

    v10 = *(v16 + 4);
    if (v10 > 127)
    {
      if (v10 == 128 || v10 == 129)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v10 == 4)
      {
        v10 = 2;
        goto LABEL_26;
      }

      if (v10 == 5)
      {
        v10 = 3;
LABEL_26:
        v17 = v10;
        goto LABEL_27;
      }
    }

    v10 = 1;
    goto LABEL_26;
  }

  v6 = 1;
  sub_297E4E0B0(0, &v19, 4u, 1u, "phLibNfc_SM_ConnectTrans: Invalid Param");
LABEL_8:
  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_SM_ConnectTrans");
  return v6;
}

uint64_t sub_297EB2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_DeactivateNtfTrans");
  sub_297E4F0E8(v10, &v9);
  v7 = v9;
  if (a5 && v9 && *(v9 + 6280) && !*a5)
  {
    sub_297E4E0B0(0, &v10, 4u, 4u, "Invoking pClientNtfRegRespCB with rf deactivated status");
    sub_297E54734(0, &v10, 4u, 4u, "phLibNfc_SM_DeactivateNtfTrans :RemDevNtfCB[De-Activate Ntf]");
    (*(v9 + 6280))(*(v9 + 9784), *(v9 + 6288), 0, 0, a3);
    v7 = v9;
  }

  sub_297ECF904(v7);
  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_DeactivateNtfTrans");
  return 0;
}

uint64_t sub_297EB2D1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = a1;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
  sub_297E4F0E8(v20, &v19);
  sub_297E5D114(v20, &v18);
  if (a3)
  {
    sub_297E96818(v20, a3);
  }

  else
  {
    sub_297E5D398(v20, 0);
  }

  v7 = v19;
  if (!v19)
  {
    goto LABEL_35;
  }

  if (a2 > 63)
  {
    if (a2 <= 73)
    {
      if ((a2 - 64) < 3)
      {
        goto LABEL_18;
      }

      if (a2 != 68)
      {
        if (a2 == 72)
        {
          v9 = v19[855];
          v10 = v19[856];
          *(v19 + 855) = 0u;
          if (v9)
          {
            sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_SM_Main_PollDiscoveredTransComplete:Invoking callback, wStatus = ");
            sub_297E4D930(1, (v19 + 1224), 4u, 67, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
            v9(v19[1223], v10, a4, a3);
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v8 = a2 - 74;
      if ((a2 - 74) > 0x24)
      {
        goto LABEL_35;
      }

      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v18, a4, a3);
        goto LABEL_35;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
LABEL_22:
        sub_297E5D1EC(v19, a3);
        goto LABEL_35;
      }

      if (a2 != 74)
      {
        goto LABEL_35;
      }
    }

    v11 = v19[847];
    v12 = v19[848];
    *(v19 + 847) = 0u;
    if (!v11)
    {
      goto LABEL_35;
    }

    sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v13 = v19 + 1224;
    v14 = 132;
    goto LABEL_34;
  }

  if (a2 > 53)
  {
    if ((a2 - 54) >= 7)
    {
      if (a2 != 61)
      {
        if (a2 != 62)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }

      v11 = v19[851];
      v12 = v19[852];
      *(v19 + 851) = 0u;
      if (!v11)
      {
        goto LABEL_35;
      }

      sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_SM_Main_PollDiscoveredTransComplete:Invoking callback, wStatus = ");
      v13 = v19 + 1224;
      v14 = 136;
LABEL_34:
      sub_297E4D930(1, v13, 4u, v14, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
      v11(v19[1223], v12, a3);
      goto LABEL_35;
    }

LABEL_18:
    sub_297EFD244(v19, a4, a3);
    goto LABEL_35;
  }

  if (a2 != 17)
  {
    if (a2 != 41)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  v15 = v19[775];
  v16 = v19[776];
  *(v19 + 775) = 0u;
  if (v15 && *(v7 + 1471) != 1)
  {
    sub_297E4E0B0(0, &v20, 4u, 4u, "Invoking upper layer callback");
    sub_297E4D930(1, (v19 + 1224), 4u, 15, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
    v15(v19[1223], v16, a4, a4, a3);
  }

LABEL_35:
  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
  return a3;
}

uint64_t sub_297EB3088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a1;
  v17 = 0;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_SM_GetTagTypeTrans");
  sub_297E4F0E8(v20, &v19);
  v7 = 1;
  if (a5)
  {
    if (a4)
    {
      v8 = v19;
      if (v19)
      {
        *(v19 + 2816) = a5;
        *(v8 + 2824) = *(a5 + 8);
        v17 = a4;
        v9 = sub_297ECD484(v8, &v17, &v18, 1);
        if (!v9)
        {
          v9 = sub_297E8CCB4(v19, v18);
          if (!v9)
          {
            v10 = *(v17 + 4);
            if (v10 != 16 && v10 != 11)
            {
              v7 = 51;
              goto LABEL_16;
            }

            v12 = v19;
            **(v19 + 2816) = v10;
            *(v12 + 2960) = off_2A1A929E0;
            *(v12 + 2952) = 0;
            *(v12 + 2954) = 0;
            v13 = off_2A1A929E0[0];
            if (off_2A1A929E0[0])
            {
              v13 = 0;
              v14 = off_2A1A929F0;
              do
              {
                ++v13;
                v15 = *v14;
                v14 += 2;
              }

              while (v15);
            }

            *(v12 + 2953) = v13;
            v9 = sub_297E5588C(v12, 0, 0);
          }
        }

        v7 = v9;
      }
    }
  }

LABEL_16:
  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_SM_GetTagTypeTrans");
  return v7;
}

uint64_t sub_297EB31BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v13 = a1;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_RemDevTransceiveTrans");
  sub_297E4F0E8(v13, &v12);
  v7 = 1;
  if (a5 && a4 && v12)
  {
    v10 = a4;
    v8 = sub_297ECD484(v12, &v10, &v11, 1);
    if (!v8)
    {
      v8 = sub_297E8CCB4(v12, v11);
      if (!v8)
      {
        v8 = sub_297EA1630(v12, a5);
      }
    }

    v7 = v8;
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_RemDevTransceiveTrans");
  return v7;
}

uint64_t sub_297EB328C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_DisConnectStopTrans");
  sub_297E4F0E8(v12, &v11);
  if (v11)
  {
    v9 = sub_297EE7D84(v11, a2, a3, a4, a5);
    if (!v9)
    {
      v9 = sub_297E5563C(v11, a4, a5);
    }
  }

  else
  {
    v9 = 255;
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_DisConnectStopTrans");
  return v9;
}

uint64_t sub_297EB3354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_DisConnectReStartTrans");
  sub_297E4F0E8(v12, &v11);
  if (v11)
  {
    v9 = sub_297EE7D84(v11, a2, a3, a4, a5);
    if (!v9)
    {
      v9 = sub_297EE6B84(v11, a4, a5);
    }
  }

  else
  {
    v9 = 255;
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_DisConnectReStartTrans");
  return v9;
}

uint64_t sub_297EB341C(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_DisConnectSleepTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 2960) = &qword_2A1A93000;
    v1[2952] = 0;
    v1[2954] = 0;
    v2 = qword_2A1A93000;
    if (qword_2A1A93000)
    {
      v2 = 0;
      v3 = &qword_2A1A93010;
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
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_DisConnectSleepTrans");
  return v5;
}

uint64_t sub_297EB34E4(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_DisConnectTagRemDetTrans");
  sub_297E4F0E8(v12, &v11);
  v3 = v11;
  if (v11)
  {
    if (a2 == 24)
    {
      *(v11 + 2960) = off_2A1A92FB0;
      v3[2952] = 0;
      v3[2954] = 0;
      v4 = off_2A1A92FB0[0];
      if (off_2A1A92FB0[0])
      {
        v4 = 0;
        v5 = &qword_2A1A92FC0;
        do
        {
          ++v4;
          v6 = *v5;
          v5 += 2;
        }

        while (v6);
      }
    }

    else
    {
      *(v11 + 2960) = &qword_2A1A93100;
      v3[2952] = 0;
      v3[2954] = 0;
      v4 = qword_2A1A93100;
      if (qword_2A1A93100)
      {
        v4 = 0;
        v8 = &qword_2A1A93110;
        do
        {
          ++v4;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }
    }

    v3[2953] = v4;
    v7 = sub_297E5588C(v3, 0, 0);
  }

  else
  {
    v7 = 255;
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_DisConnectTagRemDetTrans");
  return v7;
}

uint64_t sub_297EB35F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_CheckPresenceTrans");
  sub_297E4F0E8(v8, &v7);
  v5 = 1;
  if (a4 && v7)
  {
    v5 = sub_297ECFEBC(v7, a4);
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_CheckPresenceTrans");
  return v5;
}

uint64_t sub_297EB3684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = 0;
  v17 = a1;
  v14 = a4;
  v15 = 0;
  v13 = 0;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_CheckNdefTrans");
  sub_297E4F0E8(v17, &v16);
  v7 = 149;
  if (a5)
  {
    if (a4)
    {
      if (v16)
      {
        v7 = sub_297ECD484(v16, &v14, &v13, 1);
        if (!v7)
        {
          if (v13)
          {
            if (sub_297E8CCB4(v16, v13))
            {
              v7 = 149;
              goto LABEL_11;
            }

            v8 = sub_297E98B4C(v17, v14);
            if (v8)
            {
LABEL_9:
              v7 = v8;
              goto LABEL_11;
            }

            v7 = sub_297E98C58(v17, *(v16 + 2933));
            if (v7)
            {
              goto LABEL_11;
            }

            v10 = *(v14 + 4);
            if (v10 <= 15)
            {
              if ((v10 - 13) >= 3 && (v10 - 10) >= 2)
              {
                if (v10 != 12)
                {
                  goto LABEL_11;
                }

LABEL_29:
                v11 = *(v14 + 68);
                if (v11 <= 0x19 && ((1 << v11) & 0x3000300) != 0)
                {
                  v11 &= 0x18u;
                }

                if (v11 <= 7)
                {
                  if (!v11)
                  {
LABEL_45:
                    v8 = sub_297ED2424(v17, sub_297ECB488, v16);
                    goto LABEL_9;
                  }

                  if (v11 == 1)
                  {
                    goto LABEL_36;
                  }
                }

                else if (v11 == 8 || v11 == 24 || v11 == 136)
                {
LABEL_36:
                  v8 = sub_297ED7828(v17);
                  if (!v8)
                  {
                    v8 = sub_297ED78C8(v17, sub_297ECB488, v16);
                  }

                  goto LABEL_9;
                }

                if (v10 != 12)
                {
                  v7 = 0;
                  goto LABEL_11;
                }

                goto LABEL_45;
              }

              goto LABEL_21;
            }

            if (v10 > 20)
            {
              if (v10 == 23)
              {
                v8 = sub_297E97ED8(v17, sub_297ECB488, v16);
                goto LABEL_9;
              }

              if (v10 != 22)
              {
                if (v10 != 21)
                {
                  goto LABEL_11;
                }

                v8 = sub_297EC1F6C(v17, sub_297ECB488, v16);
                goto LABEL_9;
              }

              v12 = *(v14 + 19);
              if ((v12 & 0xF0) == 0x10)
              {
                if (v12 == 17)
                {
                  v8 = sub_297EE1C94(v17, sub_297ECB488, v16);
                }

                else
                {
                  v8 = sub_297F0AFF8(v17, sub_297ECB488, v16);
                }

                goto LABEL_9;
              }

              goto LABEL_28;
            }

            if (v10 == 16)
            {
              goto LABEL_29;
            }

            if (v10 == 17 || v10 == 19)
            {
LABEL_21:
              sub_297E57170(v17, &v15);
              if (v15)
              {
                *(v15 + 2780) = *a5;
                v8 = sub_297E745F4(v17, sub_297ECB488, v16);
                goto LABEL_9;
              }

              sub_297E4E0B0(0, &v17, 4u, 2u, "phLibNfc_SM_CheckNdefTrans: Unable to Retrieve NDEF context");
LABEL_28:
              v7 = 255;
            }
          }
        }
      }
    }
  }

LABEL_11:
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_CheckNdefTrans");
  return v7;
}

uint64_t sub_297EB396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = a1;
  v21 = 0;
  v22 = a4;
  sub_297E4E1B4(0, &v24, 4u, 5u, "phLibNfc_SM_ReadNdefTrans");
  sub_297E4F0E8(v24, &v23);
  v7 = 1;
  if (!a5)
  {
    goto LABEL_28;
  }

  if (!a4)
  {
    goto LABEL_28;
  }

  v8 = v23;
  if (!v23)
  {
    goto LABEL_28;
  }

  if (!*(v23 + 1504))
  {
    v7 = 148;
    goto LABEL_28;
  }

  v9 = *(v23 + 6904);
  if (v9 == 2)
  {
LABEL_27:
    v7 = 147;
    goto LABEL_28;
  }

  if (v9 == 1 && *(v23 + 6905) == 1)
  {
    sub_297E4E0B0(0, &v24, 4u, 2u, "phLibNfc_Ndef_Read not allowed as Current Ndef message size exceeds Max Tag Ndef message size");
    goto LABEL_27;
  }

  if (*(v23 + 6904))
  {
    if (v9 == 1 && !*(v23 + 6860))
    {
      v11 = *(v23 + 6872);
      if (v11 && *(v11 + 242) == 1 || !sub_297E8DBC8(v23, a4))
      {
        v7 = 0;
        *(a5 + 8) = 0;
        goto LABEL_28;
      }

      v8 = v23;
    }

    v7 = sub_297ECD484(v8, &v22, &v21, 1);
    if (!v7)
    {
      if (v21)
      {
        v7 = sub_297E8CCB4(v23, v21);
        if (!v7)
        {
          v12 = v23;
          **(v23 + 880) = 1;
          *(v12 + 6920) = 1;
          *(v12 + 6888) = a5;
          v13 = *(v22 + 4);
          if (v13 <= 15)
          {
            if ((v13 - 13) >= 3 && (v13 - 10) >= 2)
            {
              if (v13 != 12)
              {
                goto LABEL_28;
              }

              goto LABEL_41;
            }

            goto LABEL_35;
          }

          if (v13 > 20)
          {
            switch(v13)
            {
              case 23:
                v15 = sub_297E97FD0(v24, *a5, (a5 + 8), *(v12 + 6856), sub_297ECB664, v12);
                break;
              case 22:
                v19 = *a5;
                v18 = (a5 + 8);
                v17 = v19;
                v20 = *(v12 + 6856);
                if (*(v22 + 19) == 17)
                {
                  v15 = sub_297EE20FC(v24, v17, v18, v20, sub_297ECB664, v12);
                }

                else
                {
                  v15 = sub_297F0B298(v24, v17, v18, v20, sub_297ECB664, v12);
                }

                break;
              case 21:
                v15 = sub_297EBF88C(v24, *a5, (a5 + 8), *(v12 + 6856), sub_297ECB664, v12);
                break;
              default:
                goto LABEL_28;
            }

            goto LABEL_36;
          }

          if (v13 == 16)
          {
LABEL_41:
            v16 = *(v22 + 68);
            if (v16 <= 0x19 && ((1 << v16) & 0x3000300) != 0)
            {
              v16 &= 0x18u;
            }

            if (v16 <= 7)
            {
              if (!v16)
              {
LABEL_55:
                v15 = sub_297ED11B8(v24, *a5, (a5 + 8), *(v12 + 6856), sub_297ECB664, v12);
                goto LABEL_36;
              }

              if (v16 == 1)
              {
LABEL_48:
                v15 = sub_297ED7FE4(v24, *a5, (a5 + 8), *(v12 + 6856), sub_297ECB664, v12);
                goto LABEL_36;
              }
            }

            else if (v16 == 8 || v16 == 24 || v16 == 136)
            {
              goto LABEL_48;
            }

            if (v13 != 12)
            {
              v7 = 0;
              goto LABEL_28;
            }

            goto LABEL_55;
          }

          if (v13 == 17 || v13 == 19)
          {
LABEL_35:
            v15 = sub_297E738B4(v24, *a5, (a5 + 8), *(v12 + 6856), sub_297ECB664, v12);
LABEL_36:
            v7 = v15;
          }
        }
      }
    }
  }

  else
  {
    v7 = 152;
  }

LABEL_28:
  sub_297E4DFAC(0, &v24, 4u, 5u, "phLibNfc_SM_ReadNdefTrans");
  return v7;
}

uint64_t sub_297EB3CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a1;
  v17 = a4;
  v18 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_SM_WriteNdefTrans");
  sub_297E4F0E8(v20, &v19);
  sub_297E57170(v20, &v18);
  v7 = 1;
  if (!a5 || !a4 || !v19)
  {
    goto LABEL_27;
  }

  if (!*(v19 + 1504))
  {
    v7 = 148;
    goto LABEL_27;
  }

  if (*(v19 + 6904) == 2)
  {
    v7 = 147;
    goto LABEL_27;
  }

  if (!*(v19 + 6904))
  {
    v7 = 152;
    goto LABEL_27;
  }

  if (v18 && (*(v18 + 545) | 2) == 3)
  {
    v7 = 58;
    goto LABEL_27;
  }

  if (*(a5 + 8) > *(v19 + 6900))
  {
    v7 = 31;
    goto LABEL_27;
  }

  v8 = sub_297ECD484(v19, &v17, &v16, 1);
  if (v8 || !v16 || !v18)
  {
    if (v8 == 149)
    {
      v7 = 149;
    }

    else
    {
      v7 = 255;
    }

    goto LABEL_27;
  }

  v7 = sub_297E8CCB4(v19, v16);
  if (v7)
  {
    goto LABEL_27;
  }

  v9 = v19;
  *(v19 + 6888) = a5;
  v10 = *(a5 + 8);
  *(v9 + 6864) = v10;
  *(v9 + 6920) = 2;
  **(v9 + 880) = 1;
  *(v9 + 6896) = v10;
  v11 = *(v17 + 4);
  if (v11 <= 15)
  {
    if ((v11 - 13) >= 3 && (v11 - 10) >= 2)
    {
      if (v11 != 12)
      {
        goto LABEL_34;
      }

LABEL_40:
      v14 = *(v17 + 68);
      if (v14 <= 0x19 && ((1 << v14) & 0x3000300) != 0)
      {
        v14 &= 0x18u;
      }

      if (v14 <= 7)
      {
        if (!v14)
        {
LABEL_54:
          v13 = sub_297ED1528(v20, *a5, (v9 + 6896), 1u, sub_297ECB7F4, v9);
          goto LABEL_33;
        }

        if (v14 == 1)
        {
LABEL_47:
          v13 = sub_297ED8828(v20, *a5, (v9 + 6896), 1, sub_297ECB7F4, v9);
          goto LABEL_33;
        }
      }

      else if (v14 == 8 || v14 == 24 || v14 == 136)
      {
        goto LABEL_47;
      }

      if (v11 != 12)
      {
        v7 = 0;
        goto LABEL_34;
      }

      goto LABEL_54;
    }

    goto LABEL_32;
  }

  if (v11 > 20)
  {
    switch(v11)
    {
      case 23:
        v13 = sub_297E982D8(v20, *a5, (v9 + 6896), 1, sub_297ECB7F4, v9);
        break;
      case 22:
        v15 = *a5;
        if (*(v17 + 19) == 17)
        {
          v13 = sub_297EE2334(v20, v15, (v9 + 6896), 1, sub_297ECB7F4, v9);
        }

        else
        {
          v13 = sub_297F0B8E0(v20, v15, (v9 + 6896), 1, sub_297ECB7F4, v9);
        }

        break;
      case 21:
        v13 = sub_297EC0BA4(v20, *a5, (v9 + 6896), 1u, sub_297ECB7F4, v9);
        break;
      default:
        goto LABEL_34;
    }

LABEL_33:
    v7 = v13;
    goto LABEL_34;
  }

  if (v11 == 16)
  {
    goto LABEL_40;
  }

  if (v11 == 17 || v11 == 19)
  {
LABEL_32:
    *(v18 + 220) = *(v9 + 6868);
    v13 = sub_297E73FB0(v20, *a5, (v9 + 6896), 1, sub_297ECB7F4, v9);
    goto LABEL_33;
  }

LABEL_34:
  if (!*(a5 + 8))
  {
    *(v19 + 6896) = 3;
  }

LABEL_27:
  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_SM_WriteNdefTrans");
  return v7;
}

uint64_t sub_297EB406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = a1;
  v16 = 0;
  v17 = a4;
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_SM_FormatNdefTrans");
  sub_297E4F0E8(v19, &v18);
  v7 = 1;
  if (a5 && a4 && v18)
  {
    if (*(v18 + 1504))
    {
      if (*(v18 + 6904) == 1)
      {
        v7 = 147;
      }

      else
      {
        v7 = 149;
        if (!sub_297ECD484(v18, &v17, &v16, 1) && v16 && !sub_297E8CCB4(v18, v16))
        {
          v8 = v17;
          v9 = v18;
          *(v18 + 6920) = 3;
          *(v9 + 6880) = 252;
          sub_297EA0F28(*(v9 + 6912), *(v9 + 6952), v8, *(v9 + 6944), *(*(v9 + 6872) + 184), (v9 + 6880));
          sub_297EA101C(*(v18 + 6912), 0, sub_297ECB2F4, v18);
          sub_297EA101C(*(v18 + 6912), 1u, sub_297ECB2F4, v18);
          v10 = *(a5 + 8);
          if (v10)
          {
            v11 = 0;
            v12 = *a5 + 1;
            do
            {
              *a5 = v12;
              *(&v14 + v11++) = *(v12++ - 1);
            }

            while (v10 > v11);
          }

          v7 = sub_297EA10B8(*(v18 + 6912), &v14);
        }
      }
    }

    else
    {
      v7 = 148;
    }
  }

  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_SM_FormatNdefTrans");
  return v7;
}

uint64_t sub_297EB4218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v20 = 0;
  v21 = a1;
  v18 = a4;
  v19 = 0;
  v17 = 0;
  sub_297E4E1B4(0, &v21, 4u, 5u, "phLibNfc_SM_ReadOnlyTrans");
  sub_297E4F0E8(v21, &v20);
  sub_297E57170(v21, &v19);
  v7 = 255;
  if (!a4 || !v20)
  {
    goto LABEL_7;
  }

  if (*(v20 + 6904) == 2)
  {
    v7 = 147;
    goto LABEL_7;
  }

  if (!*(v20 + 6904))
  {
    v7 = 152;
    goto LABEL_7;
  }

  if (v19)
  {
    v9 = *(v19 + 545);
    v10 = *(v20 + 9796);
    if (v9 == 2)
    {
      if (v10 == 1)
      {
        v7 = 58;
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 58;
      if (v9 != 1 || v10 != 1)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = 149;
  if (sub_297ECD484(v20, &v18, &v17, 1) || !v17 || sub_297E8CCB4(v20, v17))
  {
    goto LABEL_7;
  }

  v11 = v20;
  *(v20 + 6920) = 4;
  v12 = *(v18 + 4);
  v7 = 51;
  if (v12 <= 15)
  {
    if ((v12 - 13) >= 3 && v12 != 11)
    {
      if (v12 != 12)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

    v13 = sub_297E746B0(v21, sub_297ECB1A4, v11);
LABEL_27:
    v7 = v13;
    goto LABEL_7;
  }

  if (v12 > 21)
  {
    if (v12 == 22)
    {
      v16 = *(v18 + 19);
      if ((v16 & 0xF0) != 0x10)
      {
        v7 = 255;
        goto LABEL_7;
      }

      if (v16 == 17)
      {
        v13 = sub_297EE1F1C(v21, sub_297ECB1A4, v11);
      }

      else
      {
        v13 = sub_297F0B6C4(v21, sub_297ECB1A4, v11);
      }
    }

    else
    {
      if (v12 != 23)
      {
        goto LABEL_7;
      }

      v13 = sub_297E9855C(v21, sub_297ECB1A4, v11);
    }

    goto LABEL_27;
  }

  if (v12 != 16)
  {
    if (v12 != 21)
    {
      goto LABEL_7;
    }

    v13 = sub_297EC0E24(v21, sub_297ECB1A4, v11);
    goto LABEL_27;
  }

LABEL_31:
  if (*(v11 + 9796) == 1)
  {
    goto LABEL_7;
  }

  if (v12 == 12 || !*(v18 + 68))
  {
    v13 = sub_297ED2A48(v21, sub_297ECB1A4, v11);
    goto LABEL_27;
  }

  v7 = 1;
  if (a5 && v19 && *a5 && *(a5 + 2) == 6)
  {
    v14 = *(v11 + 9792);
    v15 = *a5;
    phOsalNfc_MemCopy();
    v13 = sub_297EDD10C(v21, sub_297ECB1A4, v20);
    goto LABEL_27;
  }

LABEL_7:
  sub_297E4E1B4(0, &v21, 4u, 5u, "phLibNfc_SM_ReadOnlyTrans");
  return v7;
}

uint64_t sub_297EB44EC(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_ISO15693_HdrConfigTrans");
  sub_297E4F0E8(v11, &v10);
  if (!v10 || (v1 = *(v10 + 1400)) == 0)
  {
    v5 = 1;
    sub_297E4E0B0(0, &v11, 4u, 1u, "phLibNfc_SM_ISO15693_HdrConfigTrans: Failed");
    goto LABEL_11;
  }

  if (*(v10 + 2986) != 1 && *(v10 + 2992) != 1 || *(v1 + 4) != 23)
  {
    sub_297E4E0B0(0, &v11, 4u, 1u, "phLibNfc_SM_ISO15693_HdrConfigTrans: Feature not supported on this platform or tag");
    v5 = 51;
    goto LABEL_11;
  }

  v2 = sub_297E55558(*(v10 + 3088), *(v10 + 1504));
  v3 = v10;
  v4 = (v10 + 1504);
  if (v2)
  {
    *v4 = 0;
    v4[1] = 0;
LABEL_8:
    sub_297E4E0B0(0, &v11, 4u, 1u, "Target not connected");
    v5 = 148;
    goto LABEL_11;
  }

  if (!*v4)
  {
    goto LABEL_8;
  }

  *(v10 + 2960) = &qword_2A1A93AE0;
  v3[2952] = 0;
  v3[2954] = 0;
  v7 = qword_2A1A93AE0;
  if (qword_2A1A93AE0)
  {
    v7 = 0;
    v8 = &qword_2A1A93AF0;
    do
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
    }

    while (v9);
  }

  v3[2953] = v7;
  v5 = sub_297E5588C(v3, 0, 0);
LABEL_11:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_ISO15693_HdrConfigTrans");
  return v5;
}

uint64_t sub_297EB466C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = 0;
  v33 = a1;
  v31 = 0;
  sub_297E4E1B4(0, &v33, 4u, 5u, "phLibNfc_SM_Main_PollActiveTransComplete");
  sub_297E4F0E8(v33, &v32);
  sub_297E5D114(v33, &v31);
  if (a3)
  {
    sub_297E96818(v33, a3);
  }

  else
  {
    sub_297E5D398(v33, 0);
  }

  v9 = v32;
  if (!v32)
  {
    v10 = 1;
    goto LABEL_47;
  }

  v10 = 1;
  if (a2 <= 106)
  {
    switch(a2)
    {
      case 17:
        goto LABEL_12;
      case 18:
        v19 = v32[777];
        v27 = v32[778];
        *(v32 + 777) = 0u;
        if (!v19)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v33, 4u, 4u, "Get Tag Type:Invoking callback function, wStatus = ");
        sub_297E4D930(1, (v32 + 1224), 4u, 16, "phLibNfc_SM_Main_PollActiveTransComplete");
        v23 = v32[1223];
        v25 = v32[352];
        goto LABEL_35;
      case 19:
        v19 = v32[779];
        v27 = v32[780];
        *(v32 + 779) = 0u;
        if (!v19)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v33, 4u, 4u, "phLibNfc_SM_Main_PollActiveTransComplete:phLibNfc_SM_eRemDevTransceive:Invoking callback function, wStatus = ");
        sub_297E4D930(1, (v32 + 1224), 4u, 17, "phLibNfc_SM_Main_PollActiveTransComplete");
        v23 = v32[1223];
        v25 = v32 + 325;
LABEL_35:
        v26 = v27;
        v24 = a4;
        goto LABEL_36;
      case 20:
      case 21:
      case 24:
        goto LABEL_14;
      case 22:
      case 23:
        v17 = v32[783];
        v18 = v32[784];
        *(v32 + 783) = 0u;
        if (v17)
        {
          sub_297E4D930(1, (v9 + 1224), 4u, 130, "phLibNfc_SM_Main_PollActiveTransComplete");
          v17(v32[1223], v18, 0, a3);
        }

        goto LABEL_46;
      case 25:
        v13 = v32[809];
        v14 = v32[810];
        *(v32 + 809) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        v15 = v9 + 1224;
        v16 = 22;
        goto LABEL_45;
      case 26:
        v19 = v32[789];
        v20 = v32[790];
        *(v32 + 789) = 0u;
        v21 = *(v9 + 2448);
        phOsalNfc_SetMemory();
        if (!v19)
        {
          goto LABEL_46;
        }

        if (a4)
        {
          v22 = *(v32 + 2448);
          phOsalNfc_MemCopy();
        }

        sub_297E4E0B0(0, &v33, 4u, 4u, "Invoking upper layer callback");
        sub_297E4D930(1, (v32 + 1224), 4u, 23, "phLibNfc_SM_Main_PollActiveTransComplete");
        v23 = v32[1223];
        v24 = 0;
        v25 = 0;
        v26 = v20;
LABEL_36:
        v19(v23, v26, v24, v25, a3);
        goto LABEL_46;
      case 27:
        v13 = v32[801];
        v14 = v32[802];
        *(v32 + 801) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v33, 4u, 4u, "Invoking upper layer callback");
        v15 = v32 + 1224;
        v16 = 24;
        goto LABEL_45;
      case 28:
        v13 = v32[803];
        v14 = v32[804];
        *(v32 + 803) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v33, 4u, 4u, "Invoking upper layer callback");
        v15 = v32 + 1224;
        v16 = 25;
        goto LABEL_45;
      case 29:
        v13 = v32[853];
        v14 = v32[854];
        *(v32 + 853) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v33, 4u, 4u, "Invoking upper layer callback");
        v15 = v32 + 1224;
        v16 = 26;
        goto LABEL_45;
      case 30:
        *(v32 + 9796) = 0;
        v13 = v9[805];
        v14 = v9[806];
        *(v9 + 805) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v33, 4u, 4u, "Invoking upper layer callback");
        v15 = v32 + 1224;
        v16 = 27;
        goto LABEL_45;
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 67:
      case 69:
      case 70:
      case 71:
      case 73:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
        goto LABEL_47;
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 62:
      case 64:
      case 65:
      case 66:
        sub_297EFD244(v32, a4, a3);
        goto LABEL_46;
      case 61:
        v13 = v32[851];
        v14 = v32[852];
        *(v32 + 851) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v33, 4u, 4u, "phLibNfc_SM_Main_PollActiveTransComplete:Invoking callback, wStatus = ");
        v15 = v32 + 1224;
        v16 = 136;
        goto LABEL_45;
      case 68:
      case 74:
      case 75:
        v13 = v32[847];
        v14 = v32[848];
        *(v32 + 847) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v33, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
        v15 = v32 + 1224;
        v16 = 132;
LABEL_45:
        sub_297E4D930(1, v15, 4u, v16, "phLibNfc_SM_Main_PollActiveTransComplete");
        v13(v32[1223], v14, a3);
        goto LABEL_46;
      case 72:
        v28 = v32[855];
        v29 = v32[856];
        *(v32 + 855) = 0u;
        if (v28)
        {
          sub_297E50EBC(0, &v33, 4u, 4u, "phLibNfc_SM_Main_PollActiveTransComplete:Invoking callback, wStatus = ");
          sub_297E4D930(1, (v32 + 1224), 4u, 67, "phLibNfc_SM_Main_PollActiveTransComplete");
          v28(v32[1223], v29, a4, a3);
        }

        goto LABEL_46;
      case 90:
      case 91:
      case 92:
        goto LABEL_20;
      default:
        if (a2 == 104)
        {
          goto LABEL_20;
        }

        goto LABEL_47;
    }
  }

  if ((a2 - 109) < 2)
  {
LABEL_14:
    sub_297E5D1EC(v32, a3);
LABEL_46:
    v10 = a3;
    goto LABEL_47;
  }

  if (a2 == 107)
  {
LABEL_20:
    sub_297E5FC6C(v31, a4, a3);
    goto LABEL_46;
  }

  if (a2 == 127)
  {
LABEL_12:
    v11 = v32[775];
    v12 = v32[776];
    *(v32 + 775) = 0u;
    if (v11)
    {
      sub_297E4E0B0(0, &v33, 4u, 4u, "Invoking upper layer callback");
      sub_297E4D930(1, (v32 + 1224), 4u, 15, "phLibNfc_SM_Main_PollActiveTransComplete");
      v11(v32[1223], v12, a4, a5, a3);
    }

    goto LABEL_46;
  }

LABEL_47:
  sub_297E4DFAC(0, &v33, 4u, 5u, "phLibNfc_SM_Main_PollActiveTransComplete");
  return v10;
}

uint64_t sub_297EB4D44(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = a1;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_SM_Main_ListenActiveTransComplete");
  sub_297E4F0E8(v20, &v19);
  sub_297E5D114(v20, &v18);
  if (a3)
  {
    sub_297E96818(v20, a3);
  }

  else
  {
    sub_297E5D398(v20, 0);
  }

  if (!v19)
  {
    v7 = 1;
    goto LABEL_19;
  }

  v7 = 1;
  if (a2 > 67)
  {
    if (a2 > 89)
    {
      v8 = a2 - 90;
      if ((a2 - 90) <= 0x1F)
      {
        if (((1 << v8) & 0x24007) != 0)
        {
          sub_297E5FC6C(v18, a4, a3);
        }

        else if (((1 << v8) & 0x180000) != 0)
        {
          sub_297E5D1EC(v19, a3);
        }

        else
        {
          if (a2 != 121)
          {
            goto LABEL_19;
          }

          v14 = v19[839];
          if (v14)
          {
            v15 = v19[840];
            sub_297E4E0B0(0, &v20, 4u, 4u, "Invoking upper layer callback");
            sub_297E54734(0, &v20, 4u, 4u, "phLibNfc_SM_Main_ListenActiveTransComplete :CEHostNtfCb [Hce Activated Ntf]");
            v14(v19[1223], v15, v19 + 109, *(v19 + 762), a3);
          }
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a2 != 68)
    {
      if (a2 == 72)
      {
        v16 = v19[855];
        v17 = v19[856];
        *(v19 + 855) = 0u;
        if (v16)
        {
          sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_SM_Main_ListenActiveTransComplete:Invoking callback, wStatus = ");
          sub_297E4D930(1, (v19 + 1224), 4u, 67, "phLibNfc_SM_Main_ListenActiveTransComplete");
          v16(v19[1223], v17, a4, a3);
        }

        goto LABEL_18;
      }

      if (a2 != 74)
      {
        goto LABEL_19;
      }
    }

    v10 = v19[847];
    v11 = v19[848];
    *(v19 + 847) = 0u;
    if (!v10)
    {
LABEL_18:
      v7 = a3;
      goto LABEL_19;
    }

    sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v12 = v19 + 1224;
    v13 = 132;
LABEL_32:
    sub_297E4D930(1, v12, 4u, v13, "phLibNfc_SM_Main_ListenActiveTransComplete");
    v10(v19[1223], v11, a3);
    goto LABEL_18;
  }

  if (a2 <= 60)
  {
    if ((a2 - 54) >= 7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ((a2 - 64) < 3)
  {
LABEL_17:
    sub_297EFD244(v19, a4, a3);
    goto LABEL_18;
  }

  if (a2 == 61)
  {
    v10 = v19[851];
    v11 = v19[852];
    *(v19 + 851) = 0u;
    if (!v10)
    {
      goto LABEL_18;
    }

    sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_SM_Main_ListenActiveTransComplete:Invoking callback, wStatus = ");
    v12 = v19 + 1224;
    v13 = 136;
    goto LABEL_32;
  }

  if (a2 == 62)
  {
    goto LABEL_17;
  }

LABEL_19:
  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_SM_Main_ListenActiveTransComplete");
  return v7;
}

uint64_t sub_297EB5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  v9 = 0;
  v10 = a4;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_RemDevReceiveTrans");
  sub_297E4F0E8(v12, &v9);
  v5 = 1;
  if (a4)
  {
    if (v9)
    {
      v5 = sub_297ECD484(v9, &v10, &v11, 1);
      if (!v5)
      {
        if (v11)
        {
          v6 = v9;
          *(v9 + 534) = 0;
          if (*(v6 + 533) == 1)
          {
            v7 = sub_297EDE9B4(v6);
          }

          else
          {
            v7 = sub_297E763CC(*(v6 + 3088), sub_297EDEC34, v6);
          }

          v5 = v7;
        }
      }
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_RemDevReceiveTrans");
  return v5;
}

uint64_t sub_297EB516C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = a1;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_SM_Main_ListenReceiveTransComplete");
  sub_297E4F0E8(v20, &v19);
  sub_297E5D114(v20, &v18);
  if (a3)
  {
    sub_297E96818(v20, a3);
  }

  else
  {
    sub_297E5D398(v20, 0);
  }

  if (!v19)
  {
    v7 = 1;
    goto LABEL_28;
  }

  v7 = 1;
  if (a2 <= 63)
  {
    if (a2 > 60)
    {
      if (a2 == 61)
      {
        v14 = v19[851];
        v15 = v19[852];
        *(v19 + 851) = 0u;
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_SM_Main_ListenReceiveTransComplete:Invoking callback, wStatus = ");
        v16 = v19 + 1224;
        v17 = 136;
        goto LABEL_34;
      }

      if (a2 != 62)
      {
        goto LABEL_28;
      }
    }

    else if ((a2 - 54) >= 7)
    {
      if (a2 != 32)
      {
        goto LABEL_28;
      }

      v9 = v19[843];
      v10 = v19[844];
      *(v19 + 843) = 0u;
      if (!v9)
      {
        goto LABEL_27;
      }

      sub_297E4E0B0(0, &v20, 4u, 4u, "Invoking upper layer callback");
      v11 = v19 + 1224;
      v12 = 30;
LABEL_22:
      sub_297E4D930(1, v11, 4u, v12, "phLibNfc_SM_Main_ListenReceiveTransComplete");
      v9(v19[1223], v10, a4, a3);
      goto LABEL_27;
    }

LABEL_26:
    sub_297EFD244(v19, a4, a3);
    goto LABEL_27;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v18, a4, a3);
        goto LABEL_27;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
        sub_297E5D1EC(v19, a3);
LABEL_27:
        v7 = a3;
        goto LABEL_28;
      }

      if (a2 != 74)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if ((a2 - 64) < 3)
  {
    goto LABEL_26;
  }

  if (a2 == 68)
  {
LABEL_30:
    v14 = v19[847];
    v15 = v19[848];
    *(v19 + 847) = 0u;
    if (!v14)
    {
      goto LABEL_27;
    }

    sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v16 = v19 + 1224;
    v17 = 132;
LABEL_34:
    sub_297E4D930(1, v16, 4u, v17, "phLibNfc_SM_Main_ListenReceiveTransComplete");
    v14(v19[1223], v15, a3);
    goto LABEL_27;
  }

  if (a2 == 72)
  {
    v9 = v19[855];
    v10 = v19[856];
    *(v19 + 855) = 0u;
    if (!v9)
    {
      goto LABEL_27;
    }

    sub_297E50EBC(0, &v20, 4u, 4u, "phLibNfc_SM_Main_ListenReceiveTransComplete:Invoking callback, wStatus = ");
    v11 = v19 + 1224;
    v12 = 67;
    goto LABEL_22;
  }

LABEL_28:
  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_SM_Main_ListenReceiveTransComplete");
  return v7;
}

uint64_t sub_297EB54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = a1;
  v13 = a4;
  v14 = 0;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_RemDevSendTrans");
  sub_297E4F0E8(v16, &v15);
  v7 = 1;
  if (a5)
  {
    if (a4)
    {
      if (v15)
      {
        v7 = sub_297ECD484(v15, &v13, &v14, 1);
        if (!v7)
        {
          if (v14)
          {
            v8 = v15;
            *(v15 + 2960) = off_2A1A92D90;
            v8[2952] = 0;
            v8[2954] = 0;
            v9 = off_2A1A92D90[0];
            if (off_2A1A92D90[0])
            {
              v9 = 0;
              v10 = &qword_2A1A92DA0;
              do
              {
                ++v9;
                v11 = *v10;
                v10 += 2;
              }

              while (v11);
            }

            v8[2953] = v9;
            v7 = sub_297E5588C(v8, 0, a5);
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_RemDevSendTrans");
  return v7;
}

uint64_t sub_297EB55A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a1;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_SM_Main_ListenSendTransComplete");
  sub_297E4F0E8(v18, &v17);
  sub_297E5D114(v18, &v16);
  if (a3)
  {
    sub_297E96818(v18, a3);
  }

  else
  {
    sub_297E5D398(v18, 0);
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v7 = 1;
  if (a2 <= 63)
  {
    if (a2 > 60)
    {
      if (a2 == 61)
      {
        v9 = v17[851];
        v10 = v17[852];
        *(v17 + 851) = 0u;
        if (!v9)
        {
          goto LABEL_25;
        }

        sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_SM_Main_ListenSendTransComplete:Invoking callback, wStatus = ");
        v11 = v17 + 1224;
        v12 = 136;
        goto LABEL_32;
      }

      if (a2 != 62)
      {
        goto LABEL_26;
      }
    }

    else if ((a2 - 54) >= 7)
    {
      if (a2 == 33)
      {
        v9 = v17[841];
        v10 = v17[842];
        *(v17 + 841) = 0u;
        if (!v9)
        {
          goto LABEL_25;
        }

        sub_297E4E0B0(0, &v18, 4u, 4u, "Invoking upper layer callback");
        v11 = v17 + 1224;
        v12 = 31;
LABEL_32:
        sub_297E4D930(1, v11, 4u, v12, "phLibNfc_SM_Main_ListenSendTransComplete");
        v9(v17[1223], v10, a3);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v16, a4, a3);
        goto LABEL_25;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
        sub_297E5D1EC(v17, a3);
LABEL_25:
        v7 = a3;
        goto LABEL_26;
      }

      if (a2 != 74)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((a2 - 64) < 3)
  {
LABEL_24:
    sub_297EFD244(v17, a4, a3);
    goto LABEL_25;
  }

  if (a2 == 68)
  {
LABEL_28:
    v9 = v17[847];
    v10 = v17[848];
    *(v17 + 847) = 0u;
    if (!v9)
    {
      goto LABEL_25;
    }

    sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v11 = v17 + 1224;
    v12 = 132;
    goto LABEL_32;
  }

  if (a2 == 72)
  {
    v13 = v17[855];
    v14 = v17[856];
    *(v17 + 855) = 0u;
    if (v13)
    {
      sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_SM_Main_ListenSendTransComplete:Invoking callback, wStatus = ");
      sub_297E4D930(1, (v17 + 1224), 4u, 67, "phLibNfc_SM_Main_ListenSendTransComplete");
      v13(v17[1223], v14, a4, a3);
    }

    goto LABEL_25;
  }

LABEL_26:
  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_SM_Main_ListenSendTransComplete");
  return v7;
}

uint64_t sub_297EB58D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a1;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_SM_Main_ListenSleepTransComplete");
  sub_297E4F0E8(v18, &v17);
  sub_297E5D114(v18, &v16);
  if (a3)
  {
    sub_297E96818(v18, a3);
  }

  else
  {
    sub_297E5D398(v18, 0);
  }

  if (!v17)
  {
    goto LABEL_28;
  }

  v7 = 1;
  if (a2 <= 63)
  {
    if ((a2 - 54) >= 7)
    {
      if (a2 == 61)
      {
        v11 = v17[851];
        v12 = v17[852];
        *(v17 + 851) = 0u;
        if (!v11)
        {
          goto LABEL_28;
        }

        sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_SM_Main_ListenSleepTransComplete:Invoking callback, wStatus = ");
        v13 = v17 + 1224;
        v14 = 136;
        goto LABEL_27;
      }

      if (a2 != 62)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_16;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v16, a4, a3);
        goto LABEL_28;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
        sub_297E5D1EC(v17, a3);
LABEL_28:
        v7 = a3;
        goto LABEL_29;
      }

      if (a2 == 74)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_29;
  }

  if ((a2 - 64) < 3)
  {
LABEL_16:
    sub_297EFD244(v17, a4, a3);
    goto LABEL_28;
  }

  if (a2 == 68)
  {
LABEL_23:
    v11 = v17[847];
    v12 = v17[848];
    *(v17 + 847) = 0u;
    if (!v11)
    {
      goto LABEL_28;
    }

    sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v13 = v17 + 1224;
    v14 = 132;
LABEL_27:
    sub_297E4D930(1, v13, 4u, v14, "phLibNfc_SM_Main_ListenSleepTransComplete");
    v11(v17[1223], v12, a3);
    goto LABEL_28;
  }

  if (a2 == 72)
  {
    v9 = v17[855];
    v10 = v17[856];
    *(v17 + 855) = 0u;
    if (v9)
    {
      sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_SM_Main_ListenSleepTransComplete:Invoking callback, wStatus = ");
      sub_297E4D930(1, (v17 + 1224), 4u, 67, "phLibNfc_SM_Main_ListenSleepTransComplete");
      v9(v17[1223], v10, a4, a3);
    }

    goto LABEL_28;
  }

LABEL_29:
  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_SM_Main_ListenSleepTransComplete");
  return v7;
}

uint64_t sub_297EB5BA0(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_Main_ShutdownTransComplete");
  sub_297E4F0E8(v10, &v9);
  v5 = v9;
  if (v9)
  {
    switch(a2)
    {
      case '+':
        if (v9[769])
        {
          sub_297EF8C70(v9, a3);
        }

        break;
      case 'r':
        sub_297EB9E80(v9, a3);
        break;
      case 'p':
        v6 = v9[773];
        v7 = v9[774];
        if (a3)
        {
          sub_297E96818(v10, a3);
          v5 = v9;
        }

        sub_297EAAA30(v5);
        v9 = 0;
        if (v6)
        {
          sub_297E50EBC(0, &v10, 4u, 4u, "ShutdownCb:Invoking callback function, wStatus = ");
          sub_297E4D930(0, &v10, 4u, 116, "phLibNfc_SM_Main_ShutdownTransComplete");
          v6(v10, v7, a3);
        }

        break;
      default:
        a3 = 1;
        break;
    }
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_Main_ShutdownTransComplete");
  return a3;
}

uint64_t sub_297EB5CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4u, 5u, "phLibNfc_SM_SE_eSEInitTrans");
  sub_297E4F0E8(v7, &v6);
  if (!v6)
  {
    goto LABEL_5;
  }

  v4 = *(v6 + 366);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      sub_297EE196C(*(v6 + 9784), 1, 5);
      a3 = 214;
      goto LABEL_6;
    }

LABEL_5:
    a3 = 255;
  }

LABEL_6:
  sub_297E4DFAC(0, &v7, 4u, 5u, "phLibNfc_SM_SE_eSEInitTrans");
  return a3;
}

uint64_t sub_297EB5D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4u, 5u, "phLibNfc_SM_SE_eUiccInitTrans");
  sub_297E4F0E8(v7, &v6);
  if (!v6)
  {
    goto LABEL_5;
  }

  v4 = *(v6 + 365);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      sub_297EE196C(*(v6 + 9784), 2, 5);
      a3 = 214;
      goto LABEL_6;
    }

LABEL_5:
    a3 = 255;
  }

LABEL_6:
  sub_297E4DFAC(0, &v7, 4u, 5u, "phLibNfc_SM_SE_eUiccInitTrans");
  return a3;
}

uint64_t sub_297EB5E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4u, 5u, "phLibNfc_SM_SE_eSE2InitTrans");
  sub_297E4F0E8(v7, &v6);
  if (!v6)
  {
    goto LABEL_5;
  }

  v4 = *(v6 + 367);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      sub_297EE196C(*(v6 + 9784), 3, 5);
      a3 = 214;
      goto LABEL_6;
    }

LABEL_5:
    a3 = 255;
  }

LABEL_6:
  sub_297E4DFAC(0, &v7, 4u, 5u, "phLibNfc_SM_SE_eSE2InitTrans");
  return a3;
}

uint64_t sub_297EB5EE8(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetRemovedToOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A934F0;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A934F0[0];
    if (off_2A1A934F0[0])
    {
      v2 = 0;
      v3 = off_2A1A93500;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetRemovedToOffTrans");
  return v5;
}

uint64_t sub_297EB5FB8(uint64_t a1, int a2)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToVirtualTrans");
  sub_297E4F0E8(v14, &v13);
  v3 = v13;
  if (v13)
  {
    if (a2 == 133)
    {
      *(v13 + 568) = 1;
      *(v3 + 2960) = off_2A1A93540;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v4 = off_2A1A93540[0];
      if (off_2A1A93540[0])
      {
        v4 = 0;
        v10 = &qword_2A1A93550;
        do
        {
          ++v4;
          v11 = *v10;
          v10 += 2;
        }

        while (v11);
      }

      goto LABEL_31;
    }

    if (a2 != 150)
    {
      if (a2 == 140)
      {
        if (*(v13 + 2984) != 1 && *(v13 + 2985) != 1 && *(v13 + 2986) != 1 && *(v13 + 2992) != 1)
        {
LABEL_11:
          *(v3 + 1) = 1;
          *(v3 + 568) = 1;
          *(v3 + 2960) = off_2A1A93400;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v4 = off_2A1A93400[0];
          if (off_2A1A93400[0])
          {
            v4 = 0;
            v5 = off_2A1A93410;
            do
            {
              ++v4;
              v6 = *v5;
              v5 += 2;
            }

            while (v6);
          }

LABEL_31:
          *(v3 + 2953) = v4;
          v7 = sub_297E5588C(v3, 0, 0);
          goto LABEL_32;
        }

        if (sub_297EE0928(*(v13 + 9784), 2))
        {
          v3 = v13;
          goto LABEL_11;
        }
      }

      goto LABEL_27;
    }

    if (*(v13 + 2985) == 1 || *(v13 + 2984) == 1 || *(v13 + 2992) == 1 || *(v13 + 2986) == 1)
    {
      if (!sub_297EE0928(*(v13 + 9784), 1) || !sub_297EE0A34(*(v13 + 9784), 1))
      {
LABEL_27:
        v7 = 147;
        goto LABEL_32;
      }

      v3 = v13;
    }

    *(v3 + 568) = 1;
    *(v3 + 2960) = off_2A1A93400;
    *(v3 + 2952) = 0;
    *(v3 + 2954) = 0;
    v4 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v4 = 0;
      v8 = off_2A1A93410;
      do
      {
        ++v4;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    goto LABEL_31;
  }

  v7 = 255;
LABEL_32:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToVirtualTrans");
  return v7;
}

uint64_t sub_297EB61C0(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToApduTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (!v9)
  {
    v7 = 255;
    goto LABEL_15;
  }

  if (a2 != 141)
  {
    goto LABEL_13;
  }

  if (*(v9 + 2984) != 1 && *(v9 + 2985) != 1 && *(v9 + 2986) != 1 && *(v9 + 2992) != 1)
  {
    goto LABEL_9;
  }

  if (!sub_297EE0928(*(v9 + 9784), 2))
  {
LABEL_13:
    v7 = 147;
    goto LABEL_15;
  }

  v3 = v9;
LABEL_9:
  *(v3 + 568) = 1;
  *(v3 + 2960) = off_2A1A93400;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v4 = off_2A1A93400[0];
  if (off_2A1A93400[0])
  {
    v4 = 0;
    v5 = off_2A1A93410;
    do
    {
      ++v4;
      v6 = *v5;
      v5 += 2;
    }

    while (v6);
  }

  *(v3 + 2953) = v4;
  v7 = sub_297E5588C(v3, 0, 0);
LABEL_15:
  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToApduTrans");
  return v7;
}

uint64_t sub_297EB62E4(uint64_t a1, int a2, uint64_t a3)
{
  v20 = 0;
  v21 = a1;
  v18 = 0;
  v19 = 0;
  sub_297E4E1B4(0, &v21, 4u, 5u, "phLibNfc_SM_SE_TransComplete");
  sub_297E4F0E8(v21, &v20);
  if (a3)
  {
    sub_297E96818(v21, a3);
  }

  else
  {
    sub_297E5D398(v21, 0);
  }

  v5 = v20;
  if (!v20)
  {
    goto LABEL_34;
  }

  if (a2 <= 141)
  {
    if ((a2 - 139) >= 3 && (a2 - 132) >= 2 && a2 != 137)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  if ((a2 - 144) > 0xB)
  {
    goto LABEL_22;
  }

  if (((1 << (a2 + 112)) & 0xC60) != 0)
  {
LABEL_20:
    v10 = *(v20 + 6680);
    v11 = *(v20 + 6688);
    *(v20 + 6680) = 0u;
    *(v5 + 568) = 3;
    if (v10)
    {
      sub_297E4D930(1, v5 + 9792, 4u, 134, "phLibNfc_SM_SE_TransComplete");
      v10(*(v20 + 9784), v11, **(v20 + 560), *(v20 + 576), a3);
    }

    goto LABEL_34;
  }

  if (a2 != 144)
  {
    if (a2 == 145)
    {
      v6 = *(v20 + 6536);
      v7 = *(v20 + 6544);
      *(v20 + 6536) = 0u;
      v8 = sub_297F0AE90(*(v5 + 3088));
      v9 = v20;
      if (v8 == 36 && *(v20 + 754) == 1)
      {
        *(v20 + 754) = 0;
        a3 = 218;
      }

      if (v6)
      {
        sub_297E4D930(1, v9 + 9792, 4u, 126, "phLibNfc_SM_SE_TransComplete");
        v6(*(v20 + 9784), v7, *(v20 + 600), a3);
        sub_297E4E0B0(0, &v21, 4u, 4u, "phLibNfc_eSE_GetAtrProc: App layer Callback Invoked");
        v9 = v20;
      }

      if (*(v9 + 600))
      {
        *(v9 + 600) = 0;
      }

      goto LABEL_34;
    }

LABEL_22:
    if ((a2 - 142) < 2)
    {
      v12 = *(v20 + 6344);
      v13 = *(v20 + 6352);
      *(v20 + 6344) = 0u;
      if (sub_297F0AE90(*(v5 + 3088)) == 36 && *(v20 + 754) == 1)
      {
        *(v20 + 754) = 0;
        a3 = 218;
      }

      if (v12)
      {
        sub_297E4D930(1, v20 + 9792, 4u, 124, "phLibNfc_SM_SE_TransComplete");
        v12(*(v20 + 9784), v13, 0, v20 + 624, *(v20 + 644), a3);
        v14 = "phLibNfc_HciDataSendProc:APP Callback Invoked";
LABEL_33:
        sub_297E4E0B0(0, &v21, 4u, 4u, v14);
        *(v20 + 6392) = 0u;
        goto LABEL_34;
      }
    }

    goto LABEL_34;
  }

  v15 = *(v20 + 6360);
  v16 = *(v20 + 6368);
  *(v20 + 6360) = 0u;
  if (sub_297F0AE90(*(v5 + 3088)) == 36 && *(v20 + 754) == 1)
  {
    *(v20 + 754) = 0;
    a3 = 218;
  }

  if (v15)
  {
    v18 = v20 + 680;
    LODWORD(v19) = 16;
    sub_297E4D930(1, v20 + 9792, 4u, 125, "phLibNfc_SM_SE_TransComplete");
    v15(*(v20 + 9784), v16, 0, &v18, a3);
    v14 = "phLibNfc_SM_SE_TransComplete:APP Callback Invoked";
    goto LABEL_33;
  }

LABEL_34:
  sub_297E4DFAC(0, &v21, 4u, 5u, "phLibNfc_SM_SE_TransComplete");
  return a3;
}

uint64_t sub_297EB6664(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToOffTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (v9)
  {
    if (a2 == 154)
    {
      v4 = 147;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 137 && !*v9)
    {
      v9[1] = 1;
      *(v3 + 2960) = off_2A1A93470;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v5 = off_2A1A93470[0];
      if (off_2A1A93470[0])
      {
        v5 = 0;
        v6 = &qword_2A1A93480;
        do
        {
          ++v5;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v3 + 2953) = v5;
      v4 = sub_297E5588C(v3, 0, 0);
    }
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToOffTrans");
  return v4;
}

uint64_t sub_297EB6750(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetOffToPwrOffTrans");
  return v5;
}

uint64_t sub_297EB6820(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToVirtualTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (v9)
  {
    if (a2 == 140 && !*v9)
    {
      v9[1] = 1;
      *(v3 + 2960) = off_2A1A93470;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v5 = off_2A1A93470[0];
      if (off_2A1A93470[0])
      {
        v5 = 0;
        v6 = &qword_2A1A93480;
        do
        {
          ++v5;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v3 + 2953) = v5;
      v4 = sub_297E5588C(v3, 0, 0);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToVirtualTrans");
  return v4;
}

uint64_t sub_297EB6908(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToOffTrans");
  sub_297E4F0E8(v12, &v11);
  if (!v11)
  {
    v5 = 255;
    goto LABEL_23;
  }

  if (*(v11 + 2984) == 1)
  {
    v3 = off_2A1A933B0;
  }

  else
  {
    v3 = off_2A1A93440;
  }

  if (sub_297EE0928(*(v11 + 9784), 1))
  {
    v4 = sub_297EE0A34(*(v11 + 9784), 1);
    if (a2 == 132 && !v4)
    {
      goto LABEL_18;
    }
  }

  else if (a2 == 132)
  {
    goto LABEL_18;
  }

  sub_297E99BD8(*(v11 + 512));
  if (a2 != 132)
  {
    if (a2 != 149)
    {
      if (a2 != 137)
      {
        v5 = 147;
        goto LABEL_23;
      }

      if (*(v11 + 2985) == 1 || *(v11 + 2986) == 1 || *(v11 + 2992) == 1)
      {
        *(v11 + 1) = 1;
        v3 = off_2A1A93470;
      }
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 = off_2A1A93540;
LABEL_19:
  v6 = v11;
  *(v11 + 568) = 0;
  *(v6 + 2960) = v3;
  *(v6 + 2952) = 0;
  *(v6 + 2954) = 0;
  v7 = *v3;
  if (*v3)
  {
    LOBYTE(v7) = 0;
    v8 = (v3 + 2);
    do
    {
      LOBYTE(v7) = v7 + 1;
      v9 = *v8;
      v8 += 2;
    }

    while (v9);
  }

  *(v6 + 2953) = v7;
  v5 = sub_297E5588C(v6, 0, 0);
LABEL_23:
  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToOffTrans");
  return v5;
}

uint64_t sub_297EB6A94(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToPwrOffTrans");
  return v5;
}

uint64_t sub_297EB6B64(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToApduTrans");
  sub_297E4F0E8(v11, &v10);
  v3 = v10;
  if (!v10)
  {
    v4 = 255;
    goto LABEL_15;
  }

  if (a2 != 141)
  {
    v4 = 147;
    goto LABEL_15;
  }

  if (v10[2985] == 1 || v10[2986] == 1 || v10[2992] == 1)
  {
    if (v10[745] == 1)
    {
      v4 = 0;
      *(*(v10 + 70) + 12) = *(v10 + 143);
      goto LABEL_15;
    }

    *(v10 + 142) = 1;
    v5 = off_2A1A93400;
  }

  else
  {
    if (*v10 == v10[1])
    {
      v4 = 0;
      goto LABEL_15;
    }

    v5 = off_2A1A93470;
  }

  *(v3 + 2960) = v5;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v6 = *v5;
  if (*v5)
  {
    LOBYTE(v6) = 0;
    v7 = (v5 + 2);
    do
    {
      LOBYTE(v6) = v6 + 1;
      v8 = *v7;
      v7 += 2;
    }

    while (v8);
  }

  *(v3 + 2953) = v6;
  v4 = sub_297E5588C(v3, 0, 0);
LABEL_15:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_SE_eModeSetVirtualToApduTrans");
  return v4;
}

uint64_t sub_297EB6CAC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_SE_eSETransceiveTrans");
  sub_297E4F0E8(v12, &v11);
  v5 = 255;
  if (a4 && v11)
  {
    v6 = sub_297EE9B6C(v11);
    if (v6)
    {
      v5 = v6;
      sub_297E4E0B0(0, &v12, 4u, 2u, "phLibNfc_eSE_Transceive: Stack BUSY");
    }

    else
    {
      v7 = v11;
      v9 = a4[1];
      v8 = a4[2];
      *(v11 + 38) = *a4;
      *(v7 + 39) = v9;
      *(v7 + 40) = v8;
      v5 = sub_297EE9184(v7);
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_SE_eSETransceiveTrans");
  return v5;
}

uint64_t sub_297EB6D80(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToApduTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (v9)
  {
    if (a2 == 141)
    {
      if (*v9 == v9[1])
      {
        v4 = 0;
      }

      else
      {
        *(v9 + 370) = off_2A1A93470;
        v3[2952] = 0;
        v3[2954] = 0;
        v5 = off_2A1A93470[0];
        if (off_2A1A93470[0])
        {
          v5 = 0;
          v6 = &qword_2A1A93480;
          do
          {
            ++v5;
            v7 = *v6;
            v6 += 2;
          }

          while (v7);
        }

        v3[2953] = v5;
        v4 = sub_297E5588C(v3, 0, 0);
      }
    }

    else
    {
      v4 = 147;
    }
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToApduTrans");
  return v4;
}

uint64_t sub_297EB6E74(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToOffTrans");
  sub_297E4F0E8(v11, &v10);
  if (v10)
  {
    if (*(v10 + 2984) == 1)
    {
      v3 = off_2A1A933B0;
    }

    else
    {
      v3 = off_2A1A93440;
    }

    sub_297E99BD8(*(v10 + 512));
    if (a2 == 137)
    {
      v4 = v10;
      if (*(v10 + 2985) == 1 || *(v10 + 2986) == 1 || *(v10 + 2992) == 1)
      {
        *(v10 + 1) = 1;
        v3 = off_2A1A93470;
      }

      *(v4 + 568) = 0;
      *(v4 + 2960) = v3;
      *(v4 + 2952) = 0;
      *(v4 + 2954) = 0;
      v5 = *v3;
      if (*v3)
      {
        LOBYTE(v5) = 0;
        v6 = (v3 + 2);
        do
        {
          LOBYTE(v5) = v5 + 1;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v4 + 2953) = v5;
      v8 = sub_297E5588C(v4, 0, 0);
    }

    else
    {
      v8 = 147;
    }
  }

  else
  {
    v8 = 255;
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToOffTrans");
  return v8;
}

uint64_t sub_297EB6FA4(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToPwrOffTrans");
  return v5;
}

uint64_t sub_297EB7074(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToVirtualTrans");
  sub_297E4F0E8(v11, &v10);
  v3 = v10;
  if (!v10)
  {
    v4 = 255;
    goto LABEL_15;
  }

  if (a2 != 140)
  {
    v4 = 147;
    goto LABEL_15;
  }

  if (v10[2985] == 1 || v10[2986] == 1 || v10[2992] == 1)
  {
    if (v10[745] == 1)
    {
LABEL_7:
      v4 = 0;
      *(*(v10 + 70) + 12) = *(v10 + 143);
      goto LABEL_15;
    }

    *(v10 + 142) = 1;
    v5 = off_2A1A93400;
  }

  else
  {
    if (*v10 == v10[1])
    {
      goto LABEL_7;
    }

    v5 = off_2A1A93470;
  }

  *(v3 + 2960) = v5;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v6 = *v5;
  if (*v5)
  {
    LOBYTE(v6) = 0;
    v7 = (v5 + 2);
    do
    {
      LOBYTE(v6) = v6 + 1;
      v8 = *v7;
      v7 += 2;
    }

    while (v8);
  }

  *(v3 + 2953) = v6;
  v4 = sub_297E5588C(v3, 0, 0);
LABEL_15:
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_SE_eModeSetApduToVirtualTrans");
  return v4;
}

uint64_t sub_297EB71B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_SE_eSERawTransceiveTrans");
  sub_297E4F0E8(v12, &v11);
  v5 = 255;
  if (a4 && v11)
  {
    v6 = sub_297EE9B6C(v11);
    if (v6)
    {
      v5 = v6;
      sub_297E4E0B0(0, &v12, 4u, 2u, "phLibNfc_eSE_Transceive: Stack BUSY");
    }

    else
    {
      v5 = sub_297EE9FF8(v11, a4);
      if (!v5)
      {
        v7 = v11;
        v9 = *(a4 + 16);
        v8 = *(a4 + 32);
        *(v11 + 41) = *a4;
        *(v7 + 42) = v9;
        *(v7 + 43) = v8;
        v5 = sub_297EEA3AC(v7);
      }
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_SE_eSERawTransceiveTrans");
  return v5;
}

uint64_t sub_297EB729C(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_SE_eSEGetAtrTrans");
  sub_297E4F0E8(v9, &v8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v1 = v8[64];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = sub_297EE9B6C(v8);
  if (!v2)
  {
    v4 = *(v1 + 816);
    if (v4 != 255)
    {
      v5 = *(v1 + 817);
      if (v5 != 255)
      {
        v6 = v8;
        *(v8 + 754) = 0;
        v3 = sub_297E9D208(v6[64], v5, 1u, v4, sub_297EED6C0, v6);
        goto LABEL_10;
      }
    }

    sub_297E4E0B0(0, &v9, 4u, 1u, "phLibNfc_SM_SE_eSEGetAtrTrans:Failed, Pipe Info not Available");
LABEL_9:
    v3 = 255;
    goto LABEL_10;
  }

  v3 = v2;
  sub_297E4E0B0(0, &v9, 4u, 2u, "phLibNfc_SM_SE_eSEGetAtrTrans: Stack BUSY");
LABEL_10:
  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_SE_eSEGetAtrTrans");
  return v3;
}

uint64_t sub_297EB73AC(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*v7)
    {
      v2 = 0;
    }

    else
    {
      v7[1] = 1;
      *(v1 + 2960) = off_2A1A93470;
      *(v1 + 2952) = 0;
      *(v1 + 2954) = 0;
      v3 = off_2A1A93470[0];
      if (off_2A1A93470[0])
      {
        v3 = 0;
        v4 = &qword_2A1A93480;
        do
        {
          ++v3;
          v5 = *v4;
          v4 += 2;
        }

        while (v5);
      }

      *(v1 + 2953) = v3;
      v2 = sub_297E5588C(v1, 0, 0);
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToPwrOffTrans");
  return v2;
}

uint64_t sub_297EB7488(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToVirtualTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 1;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToVirtualTrans");
  return v5;
}

uint64_t sub_297EB7558(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToApduTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 0;
    *(v1 + 568) = 1;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToApduTrans");
  return v5;
}

uint64_t sub_297EB7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v32 = 0;
  v31 = 8;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_297E4E1B4(0, &v33, 4u, 5u, "phLibNfc_SM_Dnld_eUserFwDnldTrans");
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &unk_2A18BDDC0 + 112 * v6;
    if (*v9 == v33)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v10 = 255;
      goto LABEL_6;
    }
  }

  v10 = *(v9 + 2);
LABEL_6:
  sub_297E5F164(v33, &v31);
  sub_297E5D114(v33, &v32);
  sub_297E67EB0(v33, &v28);
  phOsalNfc_SetMemory();
  if (!v32 || !*(v32 + 16))
  {
    a3 = 1;
    sub_297E4E0B0(0, &v33, 4u, 1u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Invalid parameter");
    goto LABEL_18;
  }

  if (!v28)
  {
    if (*(v32 + 192) != 1)
    {
      a3 = phTmlNfc_IoCtl();
      v11 = a3 == 0;
      goto LABEL_10;
    }

    v14 = phTmlNfc_IoCtl();
    if (v14)
    {
      a3 = v14;
    }

    else
    {
      a3 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v33, 4u, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: SPMI Reset Client Retry Status =");
      if (!a3)
      {
        phOsalNfc_Delay();
        v11 = 0;
        goto LABEL_12;
      }
    }
  }

  v11 = 0;
LABEL_10:
  if (a3 != 179 && a3)
  {
    sub_297E4E0B0(0, &v33, 4u, 1u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Failed");
    a3 = 255;
    goto LABEL_18;
  }

LABEL_12:
  if ((v31 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
    goto LABEL_23;
  }

  if (v10 != 1)
  {
LABEL_23:
    if (a3 != 179 && a3)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v12 = phTmlNfc_IoCtl();
  if (v12 == 179 && (sub_297E96914(0, &v33, 4u, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Assert Wakeup Status="), sub_297E4E0B0(0, &v33, 4u, 4u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: NFCSTATUS_SPMI_NACK1"), phOsalNfc_Delay(), v12 = phTmlNfc_IoCtl(), v12 == 179))
  {
    sub_297E96914(0, &v33, 4u, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Assert Wakeup Status=");
    sub_297E4E0B0(0, &v33, 4u, 4u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: NFCSTATUS_SPMI_NACK2");
    sub_297E4E0B0(0, &v33, 4u, 4u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Update Client-ID to Secondary Client                                ID(0x0B)");
    LODWORD(a3) = phTmlNfc_ConfigureSpmi();
  }

  else
  {
    LODWORD(a3) = v12;
    sub_297E96914(0, &v33, 4u, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Assert Wakeup Status=");
  }

  if (a3)
  {
    a3 = 255;
LABEL_31:
    sub_297E50EBC(0, &v33, 4u, 1u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: TML HSU Baud rate failed, Status");
LABEL_60:
    v27 = !v11;
    if (a3 == 13)
    {
      v27 = 1;
    }

    if ((v27 & 1) == 0)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_18;
  }

LABEL_32:
  *(v32 + 120) = 2;
  sub_297ED0A64(v33, v31);
  v15 = v32;
  *(v32 + 92) = 0;
  *(v15 + 88) = 16711680;
  *(v15 + 94) = 0;
  *(v15 + 102) = 0;
  *(v15 + 100) = 0;
  *(v15 + 836) = 0;
  v16 = sub_297E85E24(v33);
  if (v16)
  {
    LODWORD(a3) = v16;
  }

  sub_297E4F0E8(v33, &v30);
  sub_297E67F6C(v33, &v29);
  if (v29)
  {
    v17 = v30 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    LODWORD(a3) = 255;
  }

  if (a3 != 179 && a3)
  {
    sub_297E4E0B0(0, &v33, 4u, 1u, "phLibNfc_SM_IoctlFwDnldTrans: Failed");
    a3 = 255;
LABEL_53:
    if (v30)
    {
      if (!*(v30 + 6078) && !*(v30 + 6081) && !*(v30 + 6082) && !*(v30 + 6079))
      {
        sub_297E7EB8C(v33);
        *(v32 + 91) = 0;
        v26 = *(v30 + 9792);
        phOsalNfc_FreeMemory();
        v30 = 0;
        sub_297E9F3BC(v33, 0);
      }
    }

    else
    {
      sub_297E7EB8C(v33);
    }

    goto LABEL_60;
  }

  sub_297E4E0B0(0, &v33, 4u, 4u, "Firmware Load Library SUCCESS, Now initiating Firmware Download Sequence!!!");
  v18 = v32;
  *(v32 + 168) = 0;
  *(v18 + 184) = a4;
  if (a3 == 179 && *(v18 + 192) == 1)
  {
    v19 = v29;
    *(v30 + 3216) = sub_297E89A5C;
    v20 = sub_297E8B3F8(*(v19 + 48));
  }

  else
  {
    v21 = v30;
    v22 = (v30 + 4096);
    *(v30 + 2960) = off_2A1A92B40;
    v21[2952] = 0;
    v21[2954] = 0;
    v23 = off_2A1A92B40[0];
    if (off_2A1A92B40[0])
    {
      v23 = 0;
      v24 = off_2A1A92B50;
      do
      {
        ++v23;
        v25 = *v24;
        v24 += 2;
      }

      while (v25);
    }

    v21[2953] = v23;
    if (v22[1982] || v22[1985] || v22[1983] != 1 && v22[1986] != 1)
    {
      v20 = sub_297E5588C(v21, 0, 0);
    }

    else
    {
      v20 = sub_297E8B0F8(v21);
    }
  }

  a3 = v20;
  if (v20 != 13)
  {
    goto LABEL_53;
  }

LABEL_18:
  sub_297E4DFAC(0, &v33, 4u, 5u, "phLibNfc_SM_Dnld_eUserFwDnldTrans");
  return a3;
}

uint64_t sub_297EB7BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v29 = 0;
  v30 = 0;
  v28 = 8;
  v26 = 0;
  v27 = 0;
  sub_297E4E1B4(0, &v31, 4u, 5u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans");
  sub_297E5D114(v31, &v30);
  sub_297E5F164(v31, &v28);
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &unk_2A18BDDC0 + 112 * v6;
    if (*v9 == v31)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v10 = *(v9 + 2);
LABEL_6:
  sub_297E67EB0(v31, &v26);
  phOsalNfc_SetMemory();
  if (!a4 || !v30)
  {
    a3 = 1;
    sub_297E4E0B0(0, &v31, 4u, 1u, "phLibNfc_SM_IoctlGetDieIdTrans: Invalid parameter");
    goto LABEL_53;
  }

  if (!v26)
  {
    if (*(v30 + 192) != 1)
    {
      a3 = phTmlNfc_IoCtl();
      v11 = a3 == 0;
      goto LABEL_10;
    }

    v20 = phTmlNfc_IoCtl();
    if (v20)
    {
      a3 = v20;
    }

    else
    {
      a3 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v31, 4u, 3u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans: SPMI Reset Client Retry Status =");
      if (!a3)
      {
        phOsalNfc_Delay();
        v11 = 0;
        goto LABEL_12;
      }
    }
  }

  v11 = 0;
LABEL_10:
  if (a3 != 179 && a3)
  {
    sub_297E4E0B0(0, &v31, 4u, 1u, "phLibNfc_SM_IoctlGetDieIdTrans: Failed");
    a3 = 255;
    goto LABEL_53;
  }

LABEL_12:
  if ((v28 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3 != 179 && a3)
  {
    sub_297E50EBC(0, &v31, 4u, 1u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans: TML Config Baudrate failed status");
LABEL_49:
    v24 = !v11;
    if (a3 == 13)
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_53;
  }

  sub_297ED0A64(v31, v28);
  v12 = v30;
  *(v30 + 91) = 0;
  *(v12 + 88) = 0;
  *(v12 + 836) = 0;
  *(v12 + 94) = 0;
  *(v12 + 64) = 0;
  phOsalNfc_SetMemory();
  v13 = sub_297E85E24(v31);
  if (v13)
  {
    LODWORD(a3) = v13;
  }

  sub_297E4F0E8(v31, &v29);
  sub_297E67F6C(v31, &v27);
  v14 = v29;
  v15 = v27;
  if (v27)
  {
    v16 = v29 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 255;
  }

  else
  {
    v17 = a3;
  }

  if (v17 != 179 && v17)
  {
    sub_297E4E0B0(0, &v31, 4u, 1u, "phLibNfc_SM_IoctlGetDieIdTrans: Failed");
    a3 = 255;
    goto LABEL_49;
  }

  v18 = v30;
  *(v30 + 64) = v30 + 40;
  if (v17 == 179 && *(v18 + 192) == 1)
  {
    *(v14 + 3216) = sub_297E89C8C;
    v19 = sub_297E8B3F8(*(v15 + 48));
  }

  else
  {
    *(v14 + 2960) = &qword_2A1A92C90;
    *(v14 + 2952) = 0;
    *(v14 + 2954) = 0;
    v21 = qword_2A1A92C90;
    if (qword_2A1A92C90)
    {
      v21 = 0;
      v22 = off_2A1A92CA0;
      do
      {
        ++v21;
        v23 = *v22;
        v22 += 2;
      }

      while (v23);
    }

    *(v14 + 2953) = v21;
    if (*(v14 + 6078) || *(v14 + 6081) || *(v14 + 6079) != 1 && *(v14 + 6082) != 1)
    {
      v19 = sub_297E5588C(v14, 0, 0);
    }

    else
    {
      v19 = sub_297E8B0F8(v14);
    }
  }

  a3 = v19;
  if (v19 != 13)
  {
    if (!v29[6078] && !v29[6081] && !v29[6082] && !v29[6079])
    {
      sub_297E7EB8C(v31);
      *(v30 + 91) = 0;
      phOsalNfc_FreeMemory();
      v29 = 0;
      sub_297E9F3BC(v31, 0);
    }

    goto LABEL_49;
  }

LABEL_53:
  sub_297E4DFAC(0, &v31, 4u, 5u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans");
  return a3;
}

uint64_t sub_297EB7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v31 = a1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 8;
  sub_297E4E1B4(0, &v31, 4u, 5u, "phLibNfc_SM_GetFwVersionTrans");
  sub_297E5D114(v31, &v28);
  sub_297E5F164(v31, &v26);
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v31)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v9 = 255;
      v10 = 255;
      goto LABEL_6;
    }
  }

  v10 = 0;
  v9 = *(v8 + 2);
LABEL_6:
  sub_297E67EB0(v31, &v27);
  phOsalNfc_SetMemory();
  if (!a4 || !v28)
  {
    v13 = 1;
    sub_297E4E0B0(0, &v31, 4u, 1u, "phLibNfc_SM_GetFwVersionTrans Invalid parameter");
    goto LABEL_62;
  }

  sub_297E4F0E8(v31, &v30);
  if (!v30)
  {
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    if (sub_297E56AFC(v31) == 1)
    {
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(v31, 0);
    }

    if (!v27)
    {
      if (*(v28 + 192) != 1)
      {
        v10 = phTmlNfc_IoCtl();
        v11 = v10 == 0;
        goto LABEL_13;
      }

      v14 = phTmlNfc_IoCtl();
      if (v14)
      {
        v10 = v14;
      }

      else
      {
        v10 = phTmlNfc_IoCtl();
        sub_297E96914(0, &v31, 4u, 3u, "phLibNfc_SM_GetFwVersionTrans: SPMI Reset Client Retry Status =");
        if (!v10)
        {
          phOsalNfc_Delay();
          v11 = 0;
          goto LABEL_15;
        }
      }
    }
  }

  v11 = 0;
LABEL_13:
  if (v10 != 179 && v10)
  {
    sub_297E4E0B0(0, &v31, 4u, 1u, "phLibNfc_SM_GetFwVersionTrans: Failed");
    v13 = 255;
    goto LABEL_62;
  }

LABEL_15:
  sub_297E4E0B0(0, &v31, 4u, 4u, "phLibNfc_SM_GetFwVersionTrans: NFCSTATUS_SPMI_NACK1");
  if ((v26 & 0xFFFFFFFD) == 4)
  {
    if (v9 == 1)
    {
      v12 = phTmlNfc_IoCtl();
      if (v12 == 179 && (sub_297E96914(0, &v31, 4u, 3u, "phLibNfc_SM_GetFwVersionTrans: Assert Wakeup Status="), sub_297E4E0B0(0, &v31, 4u, 4u, "phLibNfc_SM_GetFwVersionTrans: NFCSTATUS_SPMI_NACK2"), sub_297E4E0B0(0, &v31, 4u, 4u, "phLibNfc_SM_GetFwVersionTrans: Update Client-ID to Secondary Client ID(0x0B)"), phOsalNfc_Delay(), v12 = phTmlNfc_IoCtl(), v12 == 179))
      {
        sub_297E96914(0, &v31, 4u, 3u, "phLibNfc_SM_GetFwVersionTrans: Assert Wakeup Status=");
        sub_297E4E0B0(0, &v31, 4u, 4u, "phLibNfc_SM_GetFwVersionTrans: NFCSTATUS_SPMI_NACK2");
        v10 = phTmlNfc_ConfigureSpmi();
      }

      else
      {
        v10 = v12;
        sub_297E96914(0, &v31, 4u, 3u, "phLibNfc_SM_GetFwVersionTrans: Assert Wakeup Status=");
      }

      if (v10)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v10 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (v10 == 179 || !v10)
  {
LABEL_32:
    sub_297ED0A64(v31, v26);
    v15 = v28;
    *(v28 + 89) = 0;
    *(v15 + 91) = 0;
    v16 = sub_297E85E24(v31);
    if (v16)
    {
      v10 = v16;
    }

    sub_297E4F0E8(v31, &v30);
    sub_297E67F6C(v31, &v29);
    v18 = v29;
    v17 = v30;
    if (v29)
    {
      v19 = v30 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 255;
    }

    else
    {
      v20 = v10;
    }

    if (!v20)
    {
      goto LABEL_44;
    }

    if (v20 != 179)
    {
      sub_297E4E0B0(0, &v31, 4u, 1u, "phLibNfc_SM_GetFwVersionTrans: Failed");
      v13 = 255;
LABEL_53:
      if (v30)
      {
        if (!*(v30 + 6078) && !*(v30 + 6081) && !*(v30 + 6082) && !*(v30 + 6079))
        {
          sub_297E7EB8C(v31);
          *(v28 + 91) = 0;
          phOsalNfc_FreeMemory();
          v30 = 0;
          sub_297E9F3BC(v31, 0);
        }
      }

      else
      {
        sub_297E7EB8C(v31);
      }

      goto LABEL_60;
    }

    if (*(v28 + 192) == 1)
    {
      *(v30 + 3216) = sub_297E89B74;
      v21 = sub_297E8B3F8(*(v18 + 48));
    }

    else
    {
LABEL_44:
      *(v30 + 2960) = gphLibNfc_GetFwVersionSequence;
      v17[2952] = 0;
      v17[2954] = 0;
      v22 = gphLibNfc_GetFwVersionSequence[0];
      if (gphLibNfc_GetFwVersionSequence[0])
      {
        v22 = 0;
        v23 = &qword_2A1A908F8;
        do
        {
          ++v22;
          v24 = *v23;
          v23 += 2;
        }

        while (v24);
      }

      v17[2953] = v22;
      if (v17[6078] || v17[6081] || v17[6079] != 1 && v17[6082] != 1)
      {
        v21 = sub_297E5588C(v17, 0, 0);
      }

      else
      {
        v21 = sub_297E8B0F8(v17);
      }
    }

    v13 = v21;
    if (v21 == 13)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

LABEL_31:
  sub_297E50EBC(0, &v31, 4u, 1u, "GetFwVersionTrans- Set Default Baud Rate FAILED, Status");
  v13 = 255;
LABEL_60:
  if (v11)
  {
    phTmlNfc_IoCtl();
  }

LABEL_62:
  sub_297E4DFAC(0, &v31, 4u, 5u, "phLibNfc_SM_GetFwVersionTrans");
  return v13;
}

uint64_t sub_297EB8564(uint64_t a1, uint64_t a2, int a3)
{
  v29 = 0;
  v30 = a1;
  v27 = 0;
  Memory_Typed = 0;
  v26 = 0;
  v25 = 8;
  sub_297E4E1B4(0, &v30, 4u, 5u, "phLibNfc_SM_GetMemDumpTrans");
  sub_297E5D114(v30, &v27);
  sub_297E4F0E8(v30, &Memory_Typed);
  sub_297E5F164(v30, &v25);
  sub_297E67EB0(v30, &v26);
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &unk_2A18BDDC0 + 112 * v4;
    if (*v7 == v30)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v8 = 255;
      goto LABEL_6;
    }
  }

  v8 = *(v7 + 2);
LABEL_6:
  if (!v27)
  {
    sub_297E4E0B0(0, &v30, 4u, 1u, "phLibNfc_SM_GetMemDumpTrans: Invalid IOCTL context");
    goto LABEL_13;
  }

  phOsalNfc_SetMemory();
  if ((v25 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3)
  {
    v9 = "GetMemDumpTrans:Set Default Baud Rate FAILED, Status";
LABEL_11:
    sub_297E50EBC(0, &v30, 4u, 1u, v9);
LABEL_13:
    v10 = 255;
    goto LABEL_14;
  }

  if (v26)
  {
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  if (*(v27 + 192) == 1)
  {
    v14 = phTmlNfc_IoCtl();
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v30, 4u, 3u, "phLibNfc_SM_GetMemDumpTrans: SPMI Reset Client Retry Status =");
      if (!v10)
      {
        phOsalNfc_Delay();
        v12 = 0;
        goto LABEL_17;
      }
    }

    v12 = 0;
  }

  else
  {
    v10 = phTmlNfc_IoCtl();
    v12 = v10 == 0;
  }

  if (v10 != 179 && v10)
  {
    v9 = "NFCC NCI Mode Failed!!,phTmlNfc_IoCtl wStatus =";
    goto LABEL_11;
  }

LABEL_17:
  v13 = Memory_Typed;
  if (!Memory_Typed)
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      sub_297E966F4(0, &v30, 4u, 4u, "####phLibNfc_SM_GetMemDumpTrans: DriverHandle");
      sub_297E966F4(0, &v30, 4u, 4u, "####LIBNFC context");
      phOsalNfc_SetMemory();
      sub_297E9F3BC(v30, Memory_Typed);
    }

    else
    {
      sub_297E4E0B0(0, &v30, 4u, 1u, "Failed to allocate memory, Insufficient Resources");
      v10 = 12;
    }

    v13 = Memory_Typed;
    if (!Memory_Typed)
    {
      goto LABEL_56;
    }
  }

  if (v10 != 179 && v10)
  {
LABEL_56:
    if (v12)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_14;
  }

  *v13 = 514;
  v15 = v30;
  *(v13 + 3000) = v30;
  *(v13 + 9784) = v15;
  *(v13 + 9792) = v8;
  v16 = v27;
  *(v13 + 3224) = *(v27 + 192);
  *(v13 + 3104) = 2;
  *(v16 + 89) = 0;
  *(v16 + 91) = 1;
  sub_297ED0A64(v15, v25);
  sub_297E67F6C(v30, &v29);
  if (v29 && !v26 && sub_297F0E83C(*(v29 + 48)) != 13)
  {
    sub_297E4E0B0(0, &v30, 4u, 1u, "phLibNfc_VerifyCtxt : Initial TML read request failed!!");
    v10 = 255;
  }

  if (v10 == 179 || v10 == 0)
  {
    if (v29)
    {
      v18 = *(v29 + 48);
      if (v18)
      {
        if (v10 == 179 && *(v27 + 192) == 1)
        {
          *(Memory_Typed + 3216) = sub_297E89DA4;
          v19 = sub_297E8B3F8(v18);
        }

        else
        {
          v20 = Memory_Typed;
          v21 = (Memory_Typed + 4096);
          *(Memory_Typed + 2960) = gphLibNfc_GetMemDumpSequence;
          v20[2952] = 0;
          v20[2954] = 0;
          v22 = gphLibNfc_GetMemDumpSequence[0];
          if (gphLibNfc_GetMemDumpSequence[0])
          {
            v22 = 0;
            v23 = off_2A1A908C8;
            do
            {
              ++v22;
              v24 = *v23;
              v23 += 2;
            }

            while (v24);
          }

          v20[2953] = v22;
          if (v21[1982] || v21[1985] || v21[1983] != 1 && v21[1986] != 1)
          {
            v19 = sub_297E5588C(v20, 0, 0);
          }

          else
          {
            v19 = sub_297E8B0F8(v20);
          }
        }

        v10 = v19;
      }
    }
  }

  if (v10 != 13)
  {
    if (!*(Memory_Typed + 6078) && !*(Memory_Typed + 6081) && !*(Memory_Typed + 6082) && !*(Memory_Typed + 6079))
    {
      sub_297E7EB8C(v30);
      sub_297E67F6C(v30, &v29);
      sub_297ED0CC8(v29);
      phOsalNfc_FreeMemory();
      Memory_Typed = 0;
      sub_297E9F3BC(v30, 0);
    }

    sub_297E4E0B0(0, &v30, 4u, 1u, "phLibNfc_SM_GetMemDumpTrans failed");
    goto LABEL_56;
  }

LABEL_14:
  sub_297E4DFAC(0, &v30, 4u, 5u, "phLibNfc_SM_GetMemDumpTrans");
  return v10;
}

uint64_t sub_297EB8A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v28 = 0;
  v29 = 0;
  v27 = 8;
  v25 = 0;
  v26 = 0;
  sub_297E4E1B4(0, &v30, 4u, 5u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans");
  if (!v30)
  {
    a3 = 1;
    sub_297E4E0B0(0, &v30, 4u, 1u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Invalid parameter");
    goto LABEL_55;
  }

  sub_297E5D114(v30, &v28);
  sub_297E5F164(v30, &v27);
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &unk_2A18BDDC0 + 112 * v4;
    if (*v7 == v30)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v7 + 2);
LABEL_8:
  sub_297E67EB0(v30, &v25);
  phOsalNfc_SetMemory();
  if (!v28)
  {
    v18 = "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Invalid IOCTL context";
LABEL_35:
    sub_297E4E0B0(0, &v30, 4u, 1u, v18);
    a3 = 255;
    goto LABEL_55;
  }

  if (!v25)
  {
    if (*(v28 + 192) != 1)
    {
      a3 = phTmlNfc_IoCtl();
      v9 = a3 == 0;
      goto LABEL_11;
    }

    v19 = phTmlNfc_IoCtl();
    if (v19)
    {
      a3 = v19;
    }

    else
    {
      a3 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v30, 4u, 3u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: SPMI Reset Client Retry Status =");
      if (!a3)
      {
        phOsalNfc_Delay();
        v9 = 0;
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
LABEL_11:
  if (a3 != 179 && a3)
  {
    v18 = "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Failed";
    goto LABEL_35;
  }

LABEL_13:
  if ((v27 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3 != 179 && a3)
  {
    sub_297E50EBC(0, &v30, 4u, 1u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans : TML Config Baudrate failed status");
LABEL_51:
    v23 = !v9;
    if (a3 == 13)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_55;
  }

  sub_297ED0A64(v30, v27);
  v10 = v28;
  *(v28 + 91) = 0;
  *(v10 + 836) = 0;
  *(v10 + 88) = 0;
  *(v10 + 94) = 0;
  *(v10 + 169) = 0;
  *(v10 + 172) = 0;
  *(v10 + 64) = 0;
  phOsalNfc_SetMemory();
  v11 = sub_297E85E24(v30);
  if (v11)
  {
    LODWORD(a3) = v11;
  }

  sub_297E4F0E8(v30, &v29);
  sub_297E67F6C(v30, &v26);
  v12 = v29;
  v13 = v26;
  if (v26)
  {
    v14 = v29 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 255;
  }

  else
  {
    v15 = a3;
  }

  if (v15 != 179 && v15)
  {
    sub_297E4E0B0(0, &v30, 4u, 1u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Failed");
    a3 = 255;
    goto LABEL_51;
  }

  v16 = v28;
  *(v28 + 64) = v28 + 40;
  if (v15 == 179 && *(v16 + 192) == 1)
  {
    *(v12 + 3216) = sub_297E89EBC;
    v17 = sub_297E8B3F8(*(v13 + 48));
  }

  else
  {
    *(v12 + 2960) = &qword_2A1A92CE0;
    *(v12 + 2952) = 0;
    *(v12 + 2954) = 0;
    v20 = qword_2A1A92CE0;
    if (qword_2A1A92CE0)
    {
      v20 = 0;
      v21 = off_2A1A92CF0;
      do
      {
        ++v20;
        v22 = *v21;
        v21 += 2;
      }

      while (v22);
    }

    *(v12 + 2953) = v20;
    if (*(v12 + 6078) || *(v12 + 6081) || *(v12 + 6079) != 1 && *(v12 + 6082) != 1)
    {
      v17 = sub_297E5588C(v12, 0, 0);
    }

    else
    {
      v17 = sub_297E8B0F8(v12);
    }
  }

  a3 = v17;
  if (v17 != 13)
  {
    if (!v29[6078] && !v29[6081] && !v29[6082] && !v29[6079])
    {
      sub_297E7EB8C(v30);
      *(v28 + 91) = 0;
      phOsalNfc_FreeMemory();
      sub_297E9F3BC(v30, 0);
      v29 = 0;
    }

    goto LABEL_51;
  }

LABEL_55:
  sub_297E4DFAC(0, &v30, 4u, 5u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans");
  return a3;
}

uint64_t sub_297EB8EA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_Dnld_TransComplete");
  sub_297E4F0E8(v13, &v11);
  sub_297E5D114(v13, &v12);
  if (!v12)
  {
    sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_Dnld_TransComplete: Invalid IOCTL/LIBNFC context");
    a3 = 255;
    goto LABEL_15;
  }

  if (a3)
  {
    sub_297E96818(v13, a3);
  }

  else
  {
    sub_297E5D398(v13, 0);
  }

  if (a2 <= 181)
  {
    if (a2 != 180)
    {
      if (a2 == 181)
      {
        sub_297E7EA7C(v12, v11, a3);
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_297E5FC6C(v12, a4, a3);
    goto LABEL_15;
  }

  if (a2 == 184)
  {
    goto LABEL_14;
  }

  if (a2 != 183)
  {
    if (a2 != 182)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = v12;
  v9 = v12[3];
  v10 = *v12;
  v12[3] = 0;
  *v8 = 0;
  if (v9)
  {
    sub_297E50EBC(0, &v13, 4u, 4u, "Get Memory Dump:Invoking callback function, wStatus = ");
    sub_297E4D930(0, &v13, 4u, 10, "phLibNfc_SM_Dnld_TransComplete");
    v9(v12[1], v10, a4, a3);
  }

LABEL_15:
  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_Dnld_TransComplete");
  return a3;
}

uint64_t sub_297EB904C(uint64_t a1, uint64_t a2, int a3, int *a4, _DWORD *a5)
{
  v38 = 0;
  v39 = a1;
  v37 = 0;
  v36 = 8;
  v34 = 0;
  v35 = 0;
  sub_297E4E1B4(0, &v39, 4u, 5u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans");
  sub_297E5F164(v39, &v36);
  sub_297E5D114(v39, &v35);
  sub_297E4F0E8(v39, &v38);
  sub_297E67F6C(v39, &v37);
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    v11 = &unk_2A18BDDC0 + 112 * v8;
    if (*v11 == v39)
    {
      break;
    }

    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }
  }

  v12 = *(v11 + 2);
  if (!a5)
  {
LABEL_17:
    sub_297E4E0B0(0, &v39, 4u, 1u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed");
    v14 = 255;
    goto LABEL_70;
  }

LABEL_7:
  if (!a4 || !v39)
  {
    goto LABEL_17;
  }

  if (!v38 && v35)
  {
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    if (sub_297E56AFC(v39) == 1)
    {
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(v39, 0);
    }

    phOsalNfc_SetMemory();
    if (*(v35 + 192) == 1)
    {
      v13 = phTmlNfc_IoCtl();
      if (!v13)
      {
        a3 = phTmlNfc_IoCtl();
        sub_297E96914(0, &v39, 4u, 3u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: SPMI Reset Client Retry Status =");
        if (!a3)
        {
          phOsalNfc_Delay();
        }

        goto LABEL_20;
      }
    }

    else
    {
      v13 = phTmlNfc_IoCtl();
    }

    a3 = v13;
LABEL_20:
    if ((v36 & 0xFFFFFFFD) != 4)
    {
      a3 = phTmlNfc_ConfigHsuBaudRate();
    }

    if (a3 == 179 || !a3)
    {
      sub_297ED0A64(v39, v36);
      *(v35 + 91) = 0;
      v15 = sub_297E85E24(v39);
      sub_297E4F0E8(v39, &v38);
      if (v15)
      {
        a3 = v15;
      }
    }
  }

  v16 = a3 == 179 || a3 == 0;
  v17 = "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed";
  if (v16 && v38 && v35)
  {
    sub_297E67EB0(v39, &v34);
    v18 = v34;
    if (v34)
    {
      v19 = v37;
    }

    else
    {
      v20 = sub_297F101A8(v39);
      if (v20)
      {
        v21 = v20;
        sub_297E4E0B0(0, &v39, 4u, 1u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed to initialize DNLD eSE core context ");
        a3 = v21;
      }

      sub_297E4F0E8(v39, &v38);
      sub_297E67F6C(v39, &v37);
      sub_297E67EB0(v39, &v34);
      v19 = v37;
      v18 = v34;
      if (v34)
      {
        v22 = v37 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22 || v38 == 0)
      {
        a3 = 255;
      }
    }

    v24 = a3 == 179 || a3 == 0;
    v17 = "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed";
    if (v24 && v18 && v19)
    {
      if (*a5 == 2)
      {
        v28 = *a4;
        *(v18 + 20) = *a4;
        if (v28 == 1)
        {
          *(v18 + 24) = 4178177;
          *(v18 + 28) = 0;
        }

        else
        {
          phOsalNfc_SetMemory();
        }

        if (a3 == 179)
        {
          v32 = v35;
          v33 = v38;
          if (*(v35 + 192) == 1)
          {
            *(v38 + 3216) = phDnldNfc_eSESmbCfgVenResetTimeoutCb;
            v27 = *(v37 + 48);
            goto LABEL_77;
          }
        }

        else
        {
          v33 = v38;
          v32 = v35;
        }

        v31 = phLibNfc_DnldEseSmbCfgSeq(v33, v32);
LABEL_80:
        v14 = v31;
        if (v31 == 13)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      if (*a5 == 1)
      {
        *(v18 + 18) = *a4;
        if (a3 == 179)
        {
          v25 = v35;
          v26 = v38;
          if (*(v35 + 192) == 1)
          {
            *(v38 + 3216) = phDnldNfc_eSEPwrCfgVenResetTimeoutCb;
            v27 = *(v19 + 48);
LABEL_77:
            v31 = sub_297E8B3F8(v27);
            goto LABEL_80;
          }
        }

        else
        {
          v26 = v38;
          v25 = v35;
        }

        v31 = phLibNfc_DnldEsePwrCfgSeq(v26, v25);
        goto LABEL_80;
      }

      v17 = "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Invalid config type param";
    }
  }

  sub_297E4E0B0(0, &v39, 4u, 1u, v17);
  v14 = 255;
LABEL_61:
  if (v38)
  {
    if (!*(v38 + 6078) && !*(v38 + 6081) && !*(v38 + 6082) && !*(v38 + 6079))
    {
      sub_297E7EB8C(v39);
      if (v35)
      {
        *(v35 + 91) = 0;
      }

      v29 = *(v38 + 9792);
      phOsalNfc_FreeMemory();
      v38 = 0;
      sub_297E9F3BC(v39, 0);
    }
  }

  else
  {
    sub_297E7EB8C(v39);
  }

LABEL_70:
  sub_297E4DFAC(0, &v39, 4u, 5u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans");
  return v14;
}

uint64_t sub_297EB94F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a1;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_SM_Dnld_eSE_CfgTransCmplt");
  sub_297E4F0E8(v15, &v12);
  sub_297E67EB0(v15, &v14);
  sub_297E5D114(v15, &v13);
  if (a3)
  {
    sub_297E96818(v15, a3);
  }

  else
  {
    sub_297E5D398(v15, 0);
  }

  v4 = v14;
  if (v14)
  {
    v5 = v14[87];
    v6 = v14[88];
    *(v14 + 87) = 0u;
    if (v5)
    {
      sub_297E4D930(0, &v15, 4u, 84, "phLibNfc_SM_Dnld_eSE_CfgTransCmplt");
      v5(*v14, v6, a3);
      v4 = v14;
    }
  }

  else
  {
    a3 = 1;
  }

  if (v12)
  {
    if (v4)
    {
      if (v13)
      {
        v7 = v12 + 4096;
        *(v12 + 6079) = 0;
        if (*(v7 + 1982) != 1)
        {
          v8 = 0;
          *(v4 + 85) = 0u;
          do
          {
            sub_297F10718(v14, v8);
            v14[v8++ + 19] = 0;
          }

          while (v8 != 8);
          if (!*v13 && !*(v12 + 6081))
          {
            *(v13 + 116) = 0;
            v9 = *v14;
            phTmlNfc_ReadAbort();
            v10 = *v14;
            phTmlNfc_FlushTxRxBuffers();
            sub_297F12CB0(v14);
            sub_297EA7418(v12);
            sub_297E7EB8C(v15);
            if (*(v13 + 91) == 1)
            {
              *(v13 + 91) = 0;
              if (v12)
              {
                sub_297EA9F80(v12);
                v12 = 0;
                sub_297E9F3BC(v15, 0);
              }
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_SM_Dnld_eSE_CfgTransCmplt");
  return a3;
}

uint64_t sub_297EB96EC(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4u, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    SmbCmd = phDnldNfc_DnldEseGetSmbCmd(v3);
  }

  else
  {
    SmbCmd = 255;
  }

  sub_297E4DFAC(0, &v4, 4u, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTrans");
  return SmbCmd;
}

uint64_t sub_297EB9780(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_Dnld_RecoveryTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 2960) = &qword_2A1A92C50;
    v1[2952] = 0;
    v1[2954] = 0;
    v2 = qword_2A1A92C50;
    if (qword_2A1A92C50)
    {
      v2 = 0;
      v3 = off_2A1A92C60;
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
    v5 = 1;
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_Dnld_RecoveryTrans");
  return v5;
}

uint64_t sub_297EB9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = a1;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTransCmplt");
  sub_297E4F0E8(v18, &v15);
  sub_297E67EB0(v18, &v17);
  sub_297E5D114(v18, &v16);
  if (a3)
  {
    sub_297E96818(v18, a3);
  }

  else
  {
    sub_297E5D398(v18, 0);
  }

  if (v15)
  {
    v4 = v17;
    if (v17)
    {
      if (v16)
      {
        v5 = v17[81];
        v6 = v17[82];
        *(v17 + 81) = 0u;
        if (a3 == 214)
        {
          v7 = 0;
          *(v4 + 680) = 0uLL;
          do
          {
            sub_297F10718(v17, v7);
            v17[v7++ + 19] = 0;
          }

          while (v7 != 8);
        }

        if (v5)
        {
          v5(*v17, v6, v17[1], (v17 + 8), *(v16 + 820), a3);
          sub_297E4E0B0(0, &v18, 4u, 4u, "phLibNfc_SM_Dnld_eSE_TrnscvTransCmplt:APP Callback Invoked");
          v8 = v17;
          *(v17 + 83) = 0u;
          v9 = *(v8 + 1368);
          phOsalNfc_SetMemory();
          if (a3 == 217)
          {
            for (i = 0; i != 8; ++i)
            {
              sub_297F10718(v17, i);
              v17[i + 19] = 0;
            }
          }

          if (a3 == 214)
          {
            v11 = 0;
            *(v17 + 85) = 0u;
            do
            {
              sub_297F10718(v17, v11);
              v17[v11++ + 19] = 0;
            }

            while (v11 != 8);
            if (!*v16 && !*(v15 + 6081))
            {
              v12 = *v17;
              phTmlNfc_ReadAbort();
              v13 = *v17;
              phTmlNfc_FlushTxRxBuffers();
              sub_297F12CB0(v17);
              sub_297EA7418(v15);
              sub_297E7EB8C(v18);
              if (*(v16 + 91) == 1)
              {
                *(v16 + 91) = 0;
                if (v15)
                {
                  sub_297EA9F80(v15);
                  v15 = 0;
                  sub_297E9F3BC(v18, 0);
                }
              }
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTransCmplt");
  return a3;
}

uint64_t sub_297EB9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTrans");
  sub_297E4F0E8(v9, &v8);
  v6 = 255;
  if (a4 && v8)
  {
    v6 = sub_297E87F60(v8, a3, a4);
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTrans");
  return v6;
}

uint64_t sub_297EB9B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a1;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_SM_Dnld_eSE_SmbCfgTransCmplt");
  sub_297E4F0E8(v15, &v12);
  sub_297E67EB0(v15, &v14);
  sub_297E5D114(v15, &v13);
  if (a3)
  {
    sub_297E96818(v15, a3);
  }

  else
  {
    sub_297E5D398(v15, 0);
  }

  v4 = v14;
  if (v14)
  {
    v5 = v14[89];
    v6 = v14[90];
    *(v14 + 89) = 0u;
    if (v5)
    {
      v5(*v4, v6, a3);
      sub_297E4E0B0(0, &v15, 4u, 4u, "phLibNfc_SM_Dnld_eSE_SmbCfgTransCmplt:APP Callback Invoked");
      v4 = v14;
    }
  }

  else
  {
    a3 = 1;
  }

  if (v12)
  {
    if (v4)
    {
      v7 = v13;
      if (v13)
      {
        v8 = v12 + 4096;
        *(v12 + 6082) = 0;
        if (*(v8 + 1985) != 1 && !*v7 && !*(v8 + 1982))
        {
          *(v7 + 116) = 0;
          v9 = *v4;
          phTmlNfc_ReadAbort();
          v10 = *v14;
          phTmlNfc_FlushTxRxBuffers();
          sub_297F12CB0(v14);
          sub_297EA7418(v12);
          sub_297E7EB8C(v15);
          if (*(v13 + 91) == 1)
          {
            *(v13 + 91) = 0;
            if (v12)
            {
              sub_297EA9F80(v12);
              v12 = 0;
              sub_297E9F3BC(v15, 0);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_SM_Dnld_eSE_SmbCfgTransCmplt");
  return a3;
}

uint64_t sub_297EB9CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  v10 = 0;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTransCmplt");
  sub_297E4F0E8(v12, &v10);
  sub_297E67EB0(v12, &v11);
  if (a3)
  {
    sub_297E96818(v12, a3);
  }

  else
  {
    sub_297E5D398(v12, 0);
  }

  if (v10)
  {
    v6 = v11;
    if (v11)
    {
      *(v10 + 6083) = 0;
      v7 = v6[91];
      v8 = v6[92];
      *(v6 + 91) = 0u;
      if (v7)
      {
        v7(*v6, v8, a4, a3);
        sub_297E4E0B0(0, &v12, 4u, 4u, "phLibNfc_SM_Dnld_eSE_GetSmbTransCmplt:host Callback Invoked");
      }
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTransCmplt");
  return a3;
}

uint64_t sub_297EB9DE4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SM_SE_Initialize");
  if (a1)
  {
    for (i = 0; i != 4; ++i)
    {
      sub_297E4F450(*(a1 + 9784), dword_297F132B8[i], 0, a1 + 9784, a1);
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SM_SE_Initialize");
  return 0;
}

uint64_t sub_297EB9E80(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_NfccResetNtf_CB");
  if (v3)
  {
    v16 = *(v3 + 9784);
    v4 = *(v3 + 6104);
    if ((a2 & 0xFFFE) == 0x88)
    {
      v5 = a2;
    }

    else
    {
      v5 = 48;
    }

    sub_297E8EACC(v3, v5);
    v6 = *(v3 + 6568);
    if (v6)
    {
      v7 = *(v3 + 6576);
      if (*(v3 + 356) == 161)
      {
        sub_297E54734(0, &v16, 4u, 4u, "NfccResetNtf_CB :pGenericNtfCb[RESET NTF PROHIBIT TEMPERATURE]");
        v8 = *(v3 + 9784);
        v9 = v7;
        v10 = 209;
        v11 = 0;
      }

      else
      {
        sub_297E54734(0, &v16, 4u, 4u, "NfccResetNtf_CB :pGenericNtfCb[RESET NTF]");
        v8 = *(v3 + 9784);
        v11 = v3 + 112;
        v9 = v7;
        v10 = 48;
      }

      v6(v8, v9, v10, v11);
    }

    *(v3 + 3208) = 0;
    if (v4)
    {
      sub_297EA7418(v3);
      sub_297F080D4(*(v3 + 3088), 2, 0, 0);
      *(v3 + 3088) = 0;
      v12 = *(v3 + 3000);
      phTmlNfc_ReadAbort();
      v13 = *(v3 + 3000);
      phTmlNfc_FlushTxRxBuffers();
      v14 = *(v3 + 3000);
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(v3 + 3000), 0);
      *(v3 + 2960) = 0;
      sub_297EA9F80(v3);
      sub_297E9F3BC(v16, 0);
      v3 = 0;
    }
  }

  return sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_NfccResetNtf_CB");
}

uint64_t sub_297EB9FF8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ModeSet");
  if (a1)
  {
    *(a1 + 6480) = 0;
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x200000001;
    DWORD2(v5) = 1;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297EBA944, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ModeSet");
  return v3;
}

uint64_t sub_297EBA0DC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessModeSetRsp");
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_12;
    }

    *(a1 + 6480) = 1;
    v4 = *(a1 + 3800);
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = *v4;
    if (v5 == 241)
    {
      a2 = 81;
      goto LABEL_13;
    }

    if (!v5)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "NFCEE Mode Set process Success");
      v6 = *(a1 + 3992);
      if (v6)
      {
        if (*(v6 + 1) == 1 && !*(a1 + 3988))
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Updating closed logical connection channel info");
          if (sub_297E8BC94(a1, a1 + 4008))
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed to update closed connection info");
          }
        }
      }

      a2 = 0;
    }

    else
    {
LABEL_12:
      a2 = 255;
    }
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessModeSetRsp");
  return a2;
}

uint64_t sub_297EBA200(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteModeSetSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CompleteModeSetSequence: Set Mode failed!!");
    }

    else
    {
      v5 = *(a1 + 3992);
      if (!v5 || *(a1 + 3988) == 1 && *(v5 + 1) == 1)
      {
        a2 = 0;
      }

      else
      {
        v6 = *(a1 + 4704);
        if (v6 && v6 != 0xFFFFFFFFFFFFLL)
        {
          v7 = *(a1 + 6524);
          phOsalNfc_Timer_Stop();
          v8 = *(a1 + 6524);
          v9 = *(a1 + 4704);
          phOsalNfc_Timer_Delete();
          *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
        }

        v10 = *(a1 + 6524);
        v11 = phOsalNfc_Timer_Create();
        *(a1 + 4704) = v11;
        if (v11 != 0xFFFFFFFFFFFFLL && v11)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Set Mode Notification Timer Created Successfully");
          v12 = *(a1 + 6524);
          v13 = *(a1 + 4704);
          a2 = phOsalNfc_Timer_Start();
          if (!a2)
          {
            sub_297E687D8(1, a1 + 6524, *(a1 + 4704), 3u, 4u, "phNciNfc_CompleteModeSetSequence");
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Set Mode ntf timer started\n");
            goto LABEL_19;
          }

          v14 = *(a1 + 6524);
          v15 = *(a1 + 4704);
          phOsalNfc_Timer_Stop();
          v16 = *(a1 + 6524);
          v17 = *(a1 + 4704);
          phOsalNfc_Timer_Delete();
          *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Set Mode ntf timer start FAILED\n\n");
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Set Mode Notification Timer Create failed!!");
          a2 = 12;
        }
      }
    }

    *(a1 + 816) = 0u;
    sub_297E5B994(a1, a2, 0);
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteModeSetSequence");
  return a2;
}

uint64_t sub_297EBA42C(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeDiscover");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x200000001;
    DWORD2(v5) = 0;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297EBA944, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeDiscover");
  return v3;
}

uint64_t sub_297EBA504(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessNfceeDiscoverRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (!v4 || *(a1 + 3808) > 2u)
    {
      goto LABEL_8;
    }

    v5 = *v4;
    if (v5 == 241)
    {
      a2 = 81;
      goto LABEL_9;
    }

    if (v5)
    {
LABEL_8:
      a2 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "NFCEE Discovery process Started");
      *(a1 + 3985) = *(*(a1 + 3800) + 1);
      *(a1 + 4000) = *(a1 + 4528);
      sub_297E50DB0(1, a1 + 6524, 3u, 4u, "Number of NFCEE Connected with NFCC");
      a2 = 0;
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessNfceeDiscoverRsp");
  return a2;
}

uint64_t sub_297EBA5F8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteNfceeDiscoverSequence");
  if (a1)
  {
    if (!*(a1 + 3800))
    {
      goto LABEL_13;
    }

    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      goto LABEL_13;
    }

    if (*(a1 + 4528) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Registering for Nfcee Discover Notification");
      BYTE5(v8) = 2;
      LODWORD(v8) = 0;
      v7 = 0x200000003;
      a2 = sub_297E59AEC(a1 + 936, &v7, sub_297EBAB70, a1);
      if (a2)
      {
        v5 = "phNciNfc_CompleteNfceeDiscoverSequence:Registering for Nfcee Discover Notification Failed";
LABEL_12:
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v5);
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CompleteNfceeDiscoverSequence:De-Registering for Nfcee Discover Notification");
      LODWORD(v8) = 0;
      v7 = 0x200000003;
      a2 = sub_297F00C28(a1 + 936, &v7, sub_297EBAB70);
      if (a2)
      {
        v5 = "phNciNfc_CompleteNfceeDiscoverSequence:De-Registering for Nfcee Discover Notification Failed";
        goto LABEL_12;
      }
    }

LABEL_13:
    sub_297E5B994(a1, a2, 0);
    goto LABEL_14;
  }

  a2 = 255;
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteNfceeDiscoverSequence");
  return a2;
}

uint64_t sub_297EBA794(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SvddOnCtrlCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 41;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297EBA944, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SvddOnCtrlCmd");
  return v3;
}

uint64_t sub_297EBA870(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SvddOnCtrlRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (v4 && !*v4 && *(a1 + 3808) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Svdd On Control Successful");
      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Svdd On Control  failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SvddOnCtrlRsp");
  return a2;
}

uint64_t sub_297EBA944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeDiscoverSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeDiscoverSequence");
  return v6;
}

uint64_t sub_297EBA9D8(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_NfceeMgmtSetModeTimeOutHandler");
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_NfceeMgmtSetModeTimeOutHandler");
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
  if (v5 == a2)
  {
    sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "#######Set Mode notification TIMEOUT########\n");
    v7 = *(a2 + 4704);
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      v8 = *(a2 + 6524);
      phOsalNfc_Timer_Stop();
      v9 = *(a2 + 6524);
      v10 = *(a2 + 4704);
      phOsalNfc_Timer_Delete();
      *(a2 + 4704) = 0xFFFFFFFFFFFFLL;
    }

    if (*(a2 + 4835) == 1 || *(a2 + 4834) == 1)
    {
      v11 = 47;
    }

    else
    {
      v11 = 47;
      if (*(a2 + 4833) != 1)
      {
        if (*(a2 + 4828) == 1)
        {
          v11 = 47;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    v12 = *(a2 + 816);
    if (v12)
    {
      v13 = *(a2 + 824);
      *(a2 + 816) = 0;
      *(a2 + 824) = 0;
      v12(v13, v11, 0);
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_NfceeMgmtSetModeTimeOutHandler)\n");
  }

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_NfceeMgmtSetModeTimeOutHandler");
}

uint64_t sub_297EBAB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeDiscNtfHandler");
  if (a3)
  {
    goto LABEL_44;
  }

  if (!a1)
  {
    a3 = 49;
    goto LABEL_44;
  }

  if (!a2 || (v6 = *(a2 + 8)) == 0 || (v7 = *(a2 + 16)) == 0)
  {
    a3 = 1;
    goto LABEL_44;
  }

  v8 = 0;
  v9 = *v6;
  v10 = 1;
  a3 = 1;
  if (*v6 && v9 != 255)
  {
    v11 = v6[1];
    if (v11 > 2)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_34;
    }

    v12 = sub_297E5B838(a1, (a1 + 3984), v9, &v35, 1u);
    a3 = v12;
    v13 = v12 == 255;
    v8 = v11 == 2;
    if (v8)
    {
      if (v12 == 255)
      {
        a3 = sub_297E5B838(a1, (a1 + 3984), *v6, &v35, 0);
        v14 = v35;
        if (!a3)
        {
          *(a1 + 104 * v35 + 4008) = -1;
        }
      }

      else
      {
        v14 = v35;
      }

      LOBYTE(v36) = 0;
      BYTE1(v36) = *v6;
      v37 = a1 + 104 * v14 + 4008;
      sub_297EBB250(a1, v37, v6[(v6[2] + 3)], &v6[(v6[2] + 4)]);
      v10 = 0;
    }

    else
    {
      if (v12 == 255)
      {
        v15 = sub_297E5B838(a1, (a1 + 3984), *v6, &v35, 0);
        if (v15)
        {
          a3 = v15;
          goto LABEL_9;
        }

        *(a1 + 104 * v35 + 4008) = -1;
        v13 = 1;
        goto LABEL_26;
      }

      v13 = 0;
    }

    if (a3)
    {
      goto LABEL_34;
    }

LABEL_26:
    if (v6[1] == 2)
    {
LABEL_27:
      a3 = 0;
      goto LABEL_34;
    }

    v16 = a1 + 4008;
    v17 = v35;
    v18 = (a1 + 4008 + 104 * v35);
    *v18 = -1;
    v18[1] = *v6;
    if (v6[1])
    {
      v19 = 0;
      *v18 = -1;
    }

    else
    {
      v19 = 1;
    }

    *(v16 + 104 * v17 + 4) = v19;
    HIBYTE(v35) = 2;
    if (!sub_297EBB4E4(a1, v18, v6, &v35 + 1))
    {
      if (!(v7 + ~HIBYTE(v35)))
      {
        goto LABEL_49;
      }

      v29 = &v6[HIBYTE(v35)];
      a3 = sub_297EC2C48(a1, (v29 + 1), (v7 + ~HIBYTE(v35)));
      if (a3)
      {
        goto LABEL_33;
      }

      v30 = v16 + 104 * v35;
      *(v30 + 14) = *v29;
      *(v30 + 16) = 0;
      v31 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v16 + 104 * v35 + 16) = Memory_Typed;
      if (!Memory_Typed)
      {
        a3 = 255;
        goto LABEL_33;
      }

      v33 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      if (!sub_297EBB250(a1, v16 + 104 * v35, *v29, *(v16 + 104 * v35 + 16)))
      {
LABEL_49:
        if (v13)
        {
          a3 = 0;
          ++*(a1 + 3984);
          goto LABEL_34;
        }

        goto LABEL_27;
      }
    }

    a3 = 1;
LABEL_33:
    *(v16 + 104 * v35 + 1) = 0;
  }

LABEL_34:
  v20 = a1 + 4008;
  v21 = a1 + 4008 + 104 * v35;
  v22 = *v6;
  if (*(v21 + 1) == v22)
  {
    v23 = *(v21 + 80);
    v43 = *(v21 + 64);
    v44 = v23;
    v45 = *(v21 + 96);
    v24 = *(v21 + 16);
    v39 = *v21;
    v40 = v24;
    v25 = *(v21 + 48);
    v41 = *(v21 + 32);
    v42 = v25;
  }

  else if (v6[1] == 2)
  {
    v34 = 2;
    BYTE1(v39) = v22;
    DWORD1(v39) = 2;
    a3 = sub_297EBB4E4(a1, &v39, v6, &v34);
    BYTE14(v39) = v6[v34];
    v26 = v20 + 104 * v35;
    *v26 = -1;
    *(v26 + 1) = v6[HIBYTE(v35)];
    *(v26 + 4) = 2;
  }

  sub_297E9337C(a1, &v39);
  if (!a3)
  {
    if (!v8)
    {
      LOBYTE(v36) = v10;
      BYTE1(v36) = *(v20 + 104 * v35 + 1);
      v37 = v20 + 104 * v35;
    }

    v27 = *(a1 + 232);
    if (v27)
    {
      v27(*(a1 + 224), 1, &v36, 0);
    }

    a3 = 0;
  }

LABEL_44:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeDiscNtfHandler");
  return a3;
}

uint64_t sub_297EBAFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeModeSetSequence");
  if (a1 && a2)
  {
    *(a1 + 3808) = *(a2 + 16);
    *(a1 + 3800) = *(a2 + 8);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeModeSetSequence");
  return v6;
}

uint64_t sub_297EBB058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v10 = 255;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Nfcee_Connect");
  v8 = 0;
  if (a2 && a3)
  {
    a1[586] = a2;
    LODWORD(v10) = 3;
    WORD2(v10) = 257;
    BYTE6(v10) = 2;
    HIBYTE(v10) = *(a2 + 1);
    LOBYTE(v11) = 1;
    a1[428] = a3;
    a1[469] = a4;
    v8 = sub_297E8B5FC(a1, &v10, sub_297EBB148, a1);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Nfcee_Connect");
  return v8;
}

uint64_t sub_297EBB148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeConnCb");
  if (a1)
  {
    if (!a3)
    {
      v5 = *(a1 + 4688);
      a3 = sub_297E8B9D0(a1, 3, *(v5 + 1), v5);
      if (!a3)
      {
        sub_297E50DB0(1, a1 + 6524, 3u, 4u, "NFCEE connection created for id = ");
        a3 = sub_297E8BB50(a1, v5, &v7);
        if (a3)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_NfceeConnCb:Retrieving logical connection id for secure element failed");
        }
      }
    }

    sub_297E5B994(a1, a3, 0);
  }

  else
  {
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeConnCb");
  return a3;
}

uint64_t sub_297EBB250(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreTlvInfo");
  if (a3)
  {
    LOWORD(v7) = 1;
    v8 = a2;
    if (a3 <= 3)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v7 = 0;
      *(a2 + 24) = a3;
      v12 = a2 + 32;
      v13 = (a2 + 32);
      do
      {
        if (v9 >= a3 || v7)
        {
          break;
        }

        v14 = (a4 + v10);
        v15 = *v14;
        if (v15 == 160)
        {
          v17 = (v10 + 1);
          *v13 = 160;
          if (v17 >= 0xFE)
          {
            v18 = v10 + 1;
          }

          else
          {
            v18 = v10 + 2;
          }

          if (v17 < 0xFE)
          {
            v19 = v10 + 1;
          }

          else
          {
            v19 = 0;
          }

          if (*(a4 + v19) == 1)
          {
            v20 = v12 + 24 * v11;
            *(v20 + 4) = 1;
            if (v18 >= 0xFEu)
            {
              v10 = v18;
            }

            else
            {
              v10 = v18 + 1;
            }

            if (v18 >= 0xFEu)
            {
              v21 = 0;
            }

            else
            {
              v21 = v18;
            }

            *(v20 + 8) = *(a4 + v21);
            v22 = *(a4 + v10);
            if (v22 > 0xF && ((v23 = v22 & 0xF0, (v22 & 0xF) == 0xF) || v22 == 77 || v23 != 64) && (v23 == 32 ? (v24 = (v22 & 0xF) > 0xC) : (v24 = 1), v24))
            {
              *(v20 + 16) = 255;
              v25 = *(a4 + v10);
              *(v20 + 20) = v25;
              if (v25 == 45)
              {
                v26 = "StoreTlvInfo: Received NFCEE removed Ntf with eSE Not present Reason Code";
              }

              else
              {
                v26 = "StoreTlvInfo: Received NFCEE removed Ntf with un-known reason code";
              }

              sub_297E4E0B0(2, a1, 3u, 1u, v26);
              v7 = 0;
              v8 = a2;
            }

            else
            {
              v7 = 0;
              *(v20 + 16) = v22;
              *(v20 + 20) = 0;
            }
          }

          else
          {
            sub_297E4E0B0(2, a1, 3u, 1u, "StoreTlvInfo: Received NFCEE removed Ntf with INVALID type");
            v8 = a2;
            v7 = 0;
            *(a2 + 24) = 0;
            *(v12 + 24 * v11 + 4) = 2;
            v10 = v18;
          }

          goto LABEL_39;
        }

        if (v15 == 1)
        {
          v7 = 0;
          v16 = v12 + 24 * v11;
          *v16 = 1;
        }

        else
        {
          if (*v14)
          {
            *(v8 + 24) = 0;
            v7 = 1;
            goto LABEL_39;
          }

          v7 = 0;
          v16 = v12 + 24 * v11;
          *v16 = 0;
        }

        *(v16 + 8) = v14[1];
        *(v16 + 16) = v14 + 2;
        v10 += v14[1] + 2;
        ++v11;
LABEL_39:
        ++v9;
        v13 += 6;
      }

      while (v11 < 3);
    }
  }

  else
  {
    LOWORD(v7) = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StoreTlvInfo");
  return v7;
}

uint64_t sub_297EBB4E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = *a4;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreNfceeProtocols");
  v9 = *(a3 + v8);
  if (v9 > 5)
  {
    v13 = 1;
  }

  else
  {
    *(a2 + 8) = v9;
    v10 = v8 + 1;
    if (v9)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a3 + v10);
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_VerifyNfceeProtocol");
        if (v12 >= 4 && v12 != 128)
        {
          break;
        }

        sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VerifyNfceeProtocol");
        *(a2 + 9 + v11++) = *(a3 + v10++);
        if (v11 >= *(a2 + 8))
        {
          goto LABEL_7;
        }
      }

      sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VerifyNfceeProtocol");
      v13 = 1;
    }

    else
    {
LABEL_7:
      v13 = 0;
    }

    *a4 = v10;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StoreNfceeProtocols");
  return v13;
}