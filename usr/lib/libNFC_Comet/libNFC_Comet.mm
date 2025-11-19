uint64_t sub_297E4D930(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v9 = qword_2A18BDE80 + 16;
    goto LABEL_17;
  }

  if (!result)
  {
    v8 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v9 = 0;
LABEL_12:
    if (*(v8 + a3 + 16) == 4)
    {
      if (!a5)
      {
        return result;
      }

      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (qword_2A18BDE80)
  {
    v9 = qword_2A18BDE80 + 16;
  }

  else
  {
    v9 = 0;
  }

  if (result == 255)
  {
    v8 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (!v9 || result != 255)
  {
    return result;
  }

LABEL_17:
  v10 = *(v9 + a3);
  if (v10 >= 4 && a5 != 0 && v10 == 4)
  {
LABEL_25:

    return MEMORY[0x2A1C6E668]();
  }

  return result;
}

uint64_t phLibNfc_Mgt_ConfigureDiscovery(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v34 = a2;
  v33 = 0;
  sub_297E4D930(0, &v35, 4u, 114, "phLibNfc_Mgt_ConfigureDiscovery");
  sub_297E4E1B4(0, &v35, 4u, 5u, "phLibNfc_Mgt_ConfigureDiscovery");
  v9 = sub_297E4F050(v35, &v33);
  if (v9 != 111 && v9 != 0)
  {
    v14 = v9;
    LODWORD(v15) = 116;
LABEL_18:
    sub_297E4DFAC(0, &v35, 4u, 5u, "phLibNfc_Mgt_ConfigureDiscovery");
    if (v14 == 13)
    {
      return v14;
    }

    sub_297E4D930(0, &v35, 4u, 114, "phLibNfc_Mgt_ConfigureDiscovery");
    if (!v14)
    {
      return v14;
    }

    goto LABEL_38;
  }

  if (!a4)
  {
    LODWORD(v15) = 116;
    v14 = 1;
LABEL_37:
    sub_297E4DFAC(0, &v35, 4u, 5u, "phLibNfc_Mgt_ConfigureDiscovery");
    sub_297E4D930(0, &v35, 4u, 114, "phLibNfc_Mgt_ConfigureDiscovery");
LABEL_38:
    if (v15 == 116)
    {
      v18 = 109;
    }

    else
    {
      v18 = v15;
    }

    sub_297E5AE60(v35, v18);
    sub_297E96818(v35, v14);
    return v14;
  }

  v11 = v33;
  if (*(v33 + 2994) == 1 || (v12 = *a3, (*a3 & 0x38000) != 0) && *(v33 + 2992) != 1 && *(v33 + 2990) != 1 && *(v33 + 2991) != 1 && (*(v33 + 2987) != 1 || *(v33 + 3136) != 2))
  {
LABEL_36:
    LODWORD(v15) = 116;
    v14 = 51;
    goto LABEL_37;
  }

  v13 = *(v33 + 2985);
  if ((v12 & 0x800) != 0)
  {
    if (v13 == 1)
    {
      goto LABEL_28;
    }

    if (*(v33 + 2984) != 1 && *(v33 + 2992) != 1 && *(v33 + 2986) != 1)
    {
      goto LABEL_36;
    }
  }

  if ((v12 & 0x6000) != 0)
  {
    if (v13 != 1)
    {
      if (*(v33 + 2986) != 1)
      {
        if (*(v33 + 2992) != 1)
        {
          goto LABEL_36;
        }

LABEL_30:
        if (*(v33 + 2992) != 1)
        {
          if (*(a3 + 84) == 1)
          {
            v17 = "LPCD Assistance mode is not applicable for this platform";
            goto LABEL_35;
          }

          if (*(a3 + 85) == 1)
          {
            v17 = "LPCD Assistance Exit Notification is not applicable for this platform";
            goto LABEL_35;
          }
        }
      }

LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }
  }

  else if (v13 != 1)
  {
    if (*(v33 + 2986) != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_28:
  v16 = 1;
LABEL_32:
  if (a2 == 3 && *(v33 + 2987) != 1)
  {
    v17 = "MultiTag feature is not applicable for this platform";
LABEL_35:
    sub_297E4E0B0(0, &v35, 4u, 4u, v17);
    goto LABEL_36;
  }

  if (a2 || (*(a3 + 88) - 1) > 2 || *(v33 + 2986) == 1 || *(v33 + 2992) == 1)
  {
    v20 = *(a3 + 12);
    if ((v20 & 8) == 0)
    {
      goto LABEL_63;
    }

    if ((v16 & 1) == 0 && *(v33 + 2986) != 1 && *(v33 + 2992) != 1 && *(v33 + 2984) != 1)
    {
      v20 &= ~8u;
      *(a3 + 12) = v20;
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if ((v16 & 1) == 0)
  {
    v17 = "Enable/Disable SE based Reader Mode feature is not applicable for this platform";
    goto LABEL_35;
  }

  v20 = *(a3 + 12);
  if ((v20 & 8) != 0)
  {
LABEL_62:
    *(a3 + 9) |= 1u;
    v20 &= 0xF8u;
    *(a3 + 12) = v20;
    v12 &= 0xFFF3FFFF;
    *a3 = v12;
  }

LABEL_63:
  if ((v20 & 7) != 0)
  {
    v12 |= 0x80000u;
    *a3 = v12;
  }

  if ((v12 & 0x800) != 0 || (v12 & 0x1000) != 0 && (*(v11 + 2984) == 1 || *(v11 + 2985) == 1 || *(v11 + 2986) == 1 || *(v11 + 2987) == 1 || *(v11 + 2992) == 1))
  {
    v12 |= 1u;
  }

  *a3 = v12 & 0xFFFFFFBF;
  *(v11 + 1408) = 6;
  *(v11 + 1448) = 0;
  *(v11 + 1470) = 0;
  v21 = *(v11 + 9792);
  phOsalNfc_SetMemory();
  v22 = *(v33 + 9792);
  phOsalNfc_SetMemory();
  v23 = v33;
  *(v33 + 9779) = 0;
  *(v23 + 1474) = 0;
  sub_297E4F1A4(*(v23 + 3088), 0);
  sub_297E4F228(*(v33 + 3088));
  v24 = v33;
  v25 = *(v33 + 768);
  if (v25 && v25 != 0xFFFFFFFFFFFFLL)
  {
    v26 = *(v33 + 9792);
    phOsalNfc_Timer_Delete();
    v24 = v33;
    *(v33 + 768) = 0xFFFFFFFFFFFFLL;
  }

  v27 = sub_297E4F2D4(v24, a3);
  if (a2 == 3)
  {
    v28 = 0;
    v15 = 111;
  }

  else if (v27)
  {
    v28 = 0;
    if (*(a3 + 88) == 3)
    {
      v15 = 41;
    }

    else
    {
      v15 = 110;
    }
  }

  else
  {
    v15 = 109;
    v28 = 1;
  }

  if (*(v33 + 6296))
  {
    sub_297E4E0B0(0, &v35, 4u, 1u, "Discovery API is already ongoing");
    v14 = 111;
    goto LABEL_37;
  }

  v29 = *(v33 + 9792);
  phOsalNfc_MemCopy();
  v14 = sub_297E4F450(v35, v15, 0, &v34, v33 + 1144);
  if (v14 != 13)
  {
    goto LABEL_18;
  }

  v30 = v33;
  *(v33 + 6296) = a4;
  *(v30 + 6304) = a5;
  if (v34 != 1)
  {
    v31 = *(v30 + 9792);
    phOsalNfc_MemCopy();
    v30 = v33;
  }

  v32 = *(v30 + 3088);
  if (v32)
  {
    *(v32 + 6514) = v28;
  }

  sub_297E4DFAC(0, &v35, 4u, 5u, "phLibNfc_Mgt_ConfigureDiscovery");
  return 13;
}

uint64_t sub_297E4DFAC(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + 4 * a3 + 32);
    if (v11 >= a4 && v11 != 0 && a5 != 0 && v11 < 6)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + 4 * a3);
  if (v15 >= a4 && v15 != 0 && a5 != 0 && v15 <= 5)
  {
LABEL_37:

    return MEMORY[0x2A1C6E608]();
  }

  return result;
}

uint64_t sub_297E4E0B0(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + 4 * a3 + 32);
    if (v11 >= a4 && v11 != 0 && a5 != 0 && v11 < 6)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + 4 * a3);
  if (v15 >= a4 && v15 != 0 && a5 != 0 && v15 <= 5)
  {
LABEL_37:

    return MEMORY[0x2A1C6E618]();
  }

  return result;
}

uint64_t sub_297E4E1B4(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + 4 * a3 + 32);
    if (v11 >= a4 && v11 != 0 && a5 != 0 && v11 < 6)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + 4 * a3);
  if (v15 >= a4 && v15 != 0 && a5 != 0 && v15 <= 5)
  {
LABEL_37:

    return MEMORY[0x2A1C6E608]();
  }

  return result;
}

uint64_t sub_297E4E2B8(int a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 255;
  }

  if (a1 == 1)
  {
    if (*a2 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 255;
    }

    if (*a2)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (!a1)
    {
      v4 = 0;
      for (i = 1; ; i = 0)
      {
        v6 = i;
        v7 = &unk_2A18BDDC0 + 112 * v4;
        if (*v7 == *a2)
        {
          break;
        }

        v4 = 1;
        if ((v6 & 1) == 0)
        {
          return 255;
        }
      }

      return *(v7 + 2);
    }

    result = 255;
    if (a3 <= 5)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          if (a1 == 3)
          {
            v35 = 0;
            for (j = 1; ; j = 0)
            {
              v37 = j;
              v7 = &unk_2A18BDDC0 + 112 * v35;
              if (*v7 == *(a2 + 8))
              {
                break;
              }

              v35 = 1;
              if ((v37 & 1) == 0)
              {
                return result;
              }
            }

            return *(v7 + 2);
          }

          if (a1 != 2)
          {
            return result;
          }

          v21 = 0;
          v22 = 0;
          do
          {
            v23 = *(&unk_2A18BDDC0 + 14 * v22 + 2);
            if (v21)
            {
              break;
            }

            v21 = 1;
            v22 = 1;
          }

          while (v23 != a2);
        }

        else
        {
          if (a3 != 5)
          {
            return result;
          }

          if (a1 > 3)
          {
            if (a1 != 4)
            {
              if (a1 != 5)
              {
                if (a1 != 6)
                {
                  return result;
                }

                v10 = 0;
                v11 = 0;
                do
                {
                  v12 = *(&unk_2A18BDDC0 + 14 * v11 + 8);
                  if (v10)
                  {
                    break;
                  }

                  v10 = 1;
                  v11 = 1;
                }

                while (v12 != a2);
LABEL_67:
                if (v12 == a2)
                {
                  return *(a2 + 1368);
                }

                return 255;
              }

              v57 = 0;
              v58 = 0;
              do
              {
                v43 = *(&unk_2A18BDDC0 + 14 * v58 + 6);
                if (v57)
                {
                  break;
                }

                v57 = 1;
                v58 = 1;
              }

              while (v43 != a2);
              goto LABEL_123;
            }

            v55 = 0;
            v56 = 0;
            do
            {
              v18 = *(&unk_2A18BDDC0 + 14 * v56 + 5);
              if (v55)
              {
                break;
              }

              v55 = 1;
              v56 = 1;
            }

            while (v18 != a2);
LABEL_118:
            if (v18 == a2)
            {
              return *(a2 + 2460);
            }

            return 255;
          }

          if (a1 != 2)
          {
            if (a1 != 3)
            {
              return result;
            }

            v32 = 0;
            v33 = 0;
            do
            {
              v34 = *(&unk_2A18BDDC0 + 14 * v33 + 4);
              if (v32)
              {
                break;
              }

              v32 = 1;
              v33 = 1;
            }

            while (v34 != a2);
            goto LABEL_96;
          }

          v59 = 0;
          v60 = 0;
          do
          {
            v23 = *(&unk_2A18BDDC0 + 14 * v60 + 2);
            if (v59)
            {
              break;
            }

            v59 = 1;
            v60 = 1;
          }

          while (v23 != a2);
        }

        if (v23 == a2)
        {
          return *(a2 + 9792);
        }

        return 255;
      }

      if (a1 <= 3)
      {
        if (a1 != 2)
        {
          if (a1 != 3)
          {
            return result;
          }

          v16 = 0;
          v17 = 0;
          do
          {
            v18 = *(&unk_2A18BDDC0 + 14 * v17 + 5);
            if (v16)
            {
              break;
            }

            v16 = 1;
            v17 = 1;
          }

          while (v18 != a2);
          goto LABEL_118;
        }

        v44 = 0;
        v45 = 0;
        do
        {
          v34 = *(&unk_2A18BDDC0 + 14 * v45 + 4);
          if (v44)
          {
            break;
          }

          v44 = 1;
          v45 = 1;
        }

        while (v34 != a2);
LABEL_96:
        if (v34 == a2)
        {
          return *(a2 + 6524);
        }

        return 255;
      }

      if (a1 != 4)
      {
        if (a1 != 5)
        {
          return result;
        }

        v27 = 0;
        v28 = 0;
        do
        {
          v12 = *(&unk_2A18BDDC0 + 14 * v28 + 8);
          if (v27)
          {
            break;
          }

          v27 = 1;
          v28 = 1;
        }

        while (v12 != a2);
        goto LABEL_67;
      }

      v46 = 0;
      v47 = 0;
      do
      {
        v40 = *(&unk_2A18BDDC0 + 14 * v47 + 12);
        if (v46)
        {
          break;
        }

        v46 = 1;
        v47 = 1;
      }

      while (v40 != a2);
LABEL_101:
      if (v40 == a2)
      {
        return *(a2 + 8492);
      }

      return 255;
    }

    if (a3 == 6)
    {
      if (a1 == 2)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          v43 = *(&unk_2A18BDDC0 + 14 * v42 + 6);
          if (v41)
          {
            break;
          }

          v41 = 1;
          v42 = 1;
        }

        while (v43 != a2);
LABEL_123:
        if (v43 == a2)
        {
          return *(a2 + 40);
        }

        return 255;
      }

      if (a1 != 3)
      {
        if (a1 != 4)
        {
          return result;
        }

        v19 = 0;
        v20 = 0;
        do
        {
          v12 = *(&unk_2A18BDDC0 + 14 * v20 + 8);
          if (v19)
          {
            break;
          }

          v19 = 1;
          v20 = 1;
        }

        while (v12 != a2);
        goto LABEL_67;
      }

      v38 = 0;
      v39 = 0;
      do
      {
        v40 = *(&unk_2A18BDDC0 + 14 * v39 + 12);
        if (v38)
        {
          break;
        }

        v38 = 1;
        v39 = 1;
      }

      while (v40 != a2);
      goto LABEL_101;
    }

    if (a3 == 7)
    {
      if (a1 != 2)
      {
        return result;
      }

      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *(&unk_2A18BDDC0 + 14 * v25 + 13);
        if (v24)
        {
          break;
        }

        v24 = 1;
        v25 = 1;
      }

      while (v26 != a2);
      if (v26 == a2)
      {
        return *(a2 + 956);
      }

      return 255;
    }

    if (a3 != 8)
    {
      return result;
    }

    if (a1 <= 3)
    {
      if (a1 == 2)
      {
        v48 = 0;
        for (k = 1; ; k = 0)
        {
          v50 = k;
          v7 = &unk_2A18BDDC0 + 112 * v48;
          if (*v7 == *(a2 + 2712))
          {
            break;
          }

          v48 = 1;
          if ((v50 & 1) == 0)
          {
            return result;
          }
        }
      }

      else
      {
        if (a1 != 3)
        {
          return result;
        }

        v13 = 0;
        for (m = 1; ; m = 0)
        {
          v15 = m;
          v7 = &unk_2A18BDDC0 + 112 * v13;
          if (*v7 == *(a2 + 408))
          {
            break;
          }

          v13 = 1;
          if ((v15 & 1) == 0)
          {
            return result;
          }
        }
      }

      return *(v7 + 2);
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return result;
      }

      v29 = 0;
      for (n = 1; ; n = 0)
      {
        v31 = n;
        v7 = &unk_2A18BDDC0 + 112 * v29;
        if (*v7 == *(a2 + 2632))
        {
          break;
        }

        v29 = 1;
        if ((v31 & 1) == 0)
        {
          return result;
        }
      }

      return *(v7 + 2);
    }

    v51 = *(a2 + 256);
    if (v51)
    {
      v52 = 0;
      v53 = 0;
      do
      {
        v54 = *(&unk_2A18BDDC0 + 14 * v53 + 2);
        if (v52)
        {
          break;
        }

        v52 = 1;
        v53 = 1;
      }

      while (v54 != v51);
      if (v54 == v51)
      {
        return *(v51 + 9792);
      }

      return 255;
    }
  }

  return result;
}

uint64_t sub_297E4E880(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v12 = qword_2A18BDE80 + 32;
    goto LABEL_28;
  }

  if (!result)
  {
    v11 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v12 = 0;
LABEL_12:
    v13 = *(v11 + 4 * a3 + 32);
    if (v13 >= a4 && v13 != 0 && a6 != 0 && a5 != 0 && v13 < 6)
    {
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  if (qword_2A18BDE80)
  {
    v12 = qword_2A18BDE80 + 32;
  }

  else
  {
    v12 = 0;
  }

  if (result == 255)
  {
    v11 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_26:
  if (!v12 || result != 255)
  {
    return result;
  }

LABEL_28:
  v18 = *(v12 + 4 * a3);
  if (v18 >= a4 && v18 != 0 && a6 != 0 && a5 != 0 && v18 <= 5)
  {
LABEL_43:

    return MEMORY[0x2A1C6E610]();
  }

  return result;
}

uint64_t sub_297E4E9A8(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_TmlReadCommonCb");
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
      if (a2 && !*a2)
      {
        v9 = *(a2 + 16) + *(a1 + 2434);
        *(a1 + 2457) = 1;
        if (*(a1 + 2432) <= v9)
        {
          sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "TmlReadCommonCb: Full read length received");
          v13 = *(a1 + 2440);
          *(a1 + 2440) = 0;
          *(a1 + 2432) = 0;
          if (v13)
          {
            sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "TmlReadCommonCb: Invoking proc function");
            *(a2 + 8) = a1 + 640;
            *(a2 + 16) = v9;
            v13(a1, a2);
          }
        }

        else
        {
          sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "TmlReadCommonCb: Partial read length received, Placing new read req");
          v10 = *(a2 + 16);
          v11 = *(a1 + 2434) + v10;
          *(a1 + 2434) = v11;
          if (sub_297E4EF1C(a1, *(a2 + 8) + v10, (*(a1 + 2432) - v11)) != 13)
          {
            sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "TmlReadCommonCb: Failed to place new TML read request");
            v12 = *(a1 + 2440);
            *(a1 + 2440) = 0;
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            *a2 = 255;
            *(a1 + 2432) = 0;
            v12(a1, a2);
          }
        }
      }

      else
      {
        v7 = *(a1 + 2440);
        *(a1 + 2440) = 0;
        v15 = 0;
        LOWORD(v16) = 0;
        LOWORD(v14) = 255;
        sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "TmlReadCommonCb: Received either invalid 'pInfo' or TML Read                                    call back with status failed");
        *(a1 + 2432) = 0;
        v7(a1, &v14);
      }
    }
  }

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_TmlReadCommonCb");
}

uint64_t sub_297E4EBC4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvNciHeaderCb");
  if (!a1)
  {
    goto LABEL_6;
  }

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
  if (v6 != a1 || (v11 = *a1) == 0)
  {
LABEL_6:
    v7 = "phNciNfc_CoreRecvNciHeaderCb: Received invalid NCI context, Stopping TML Read";
    v8 = 2;
    v9 = a1;
    goto LABEL_7;
  }

  if (a2)
  {
    v12 = *(a2 + 16);
    v13 = 1;
    sub_297E4E880(1, v11 + 6524, 3u, 4u, "Pkt Header<-<-", *(a2 + 8));
    if (*(a2 + 16) == 3)
    {
      v14 = *(a2 + 8);
      if (v14)
      {
        if (!*a2)
        {
          v15 = *(v11 + 6281);
          v16 = *(v14 + 2);
          if (v16 | v15)
          {
            sub_297E4EE00(a1, 1, v16 + 2 * (v15 != 0));
            v13 = 0;
          }

          else
          {
            *(a1 + 2336) = v14;
            *(a1 + 2344) = 3;
            *(a1 + 2328) = 0;
            *(a1 + 2288) = 0;
            sub_297E516BC(*(a1 + 2460), 3u, 3u, "Read", v14, 3);
            v20 = *(a1 + 2344);
            sub_297E4E880(1, v11 + 6524, 3u, 4u, "Response packet:", *(a1 + 2336));
            sub_297E51240(a1, 0);
          }
        }
      }
    }
  }

  else
  {
    v13 = 1;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = *(&unk_2A18BDDC0 + 14 * v18 + 5);
    if (v17)
    {
      break;
    }

    v17 = 1;
    v18 = 1;
  }

  while (v19 != a1);
  if (v19 == a1)
  {
    if (*(a1 + 2352) == 1)
    {
      if (*a1)
      {
        sub_297EBDFC0(*a1);
      }

      goto LABEL_8;
    }

    if (!v13 || sub_297E4EE00(a1, 0, 3) == 13)
    {
      goto LABEL_8;
    }

    v7 = "Tml Read request failed!";
    v9 = a1 + 2460;
    v8 = 1;
LABEL_7:
    sub_297E4E0B0(v8, v9, 3u, 1u, v7);
  }

LABEL_8:

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvNciHeaderCb");
}

uint64_t sub_297E4EE00(uint64_t a1, int a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreReqNciPkt");
  if (a1 && a3)
  {
    *(a1 + 2432) = a3;
    *(a1 + 2434) = 0;
    *(a1 + 2457) = 0;
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreReqNciPkt: Requesting Nci Pkt Payload");
      v6 = a1 + 643;
      v7 = sub_297E50FC8;
    }

    else
    {
      v6 = a1 + 640;
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreReqNciPkt: Requesting Nci Pkt Header");
      v7 = sub_297E4EBC4;
    }

    *(a1 + 2440) = v7;
    v8 = sub_297E4EF1C(a1, v6, a3);
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreReqNciPkt");
  return v8;
}

uint64_t sub_297E4EF1C(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRequestTmlRead");
  if (!a1)
  {
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 5);
    if (v6)
    {
      break;
    }

    v6 = 1;
    v7 = 1;
  }

  while (v8 != a1);
  if (a2 && a3 && v8 == a1)
  {
    v9 = *(a1 + 632);
    if (phTmlNfc_Read() == 13)
    {
      v10 = 13;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Tml read request failed");
      sub_297E96818(*(a1 + 632), 195);
      v10 = 255;
    }
  }

  else
  {
LABEL_10:
    v10 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRequestTmlRead");
  return v10;
}

uint64_t sub_297E4F050(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4u, 5u, "phLibNfc_ValidateLibNfcState");
  if (a2)
  {
    sub_297E4F0E8(v6, &v5);
    if (v5)
    {
      v3 = 0;
      *a2 = v5;
    }

    else
    {
      v3 = 49;
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(0, &v6, 4u, 5u, "phLibNfc_ValidateLibNfcState");
  return v3;
}

uint64_t sub_297E4F0E8(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetLibNfcContext");
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
    *a2 = v6[2];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetLibNfcContext");
  return v7;
}

uint64_t sub_297E4F1A4(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EnableDisable_SytaxErrRetry");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6640) = a2;
    *(a1 + 6641) = 0;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EnableDisable_SytaxErrRetry");
  return v4;
}

uint64_t sub_297E4F228(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AbortDataPktRetransmission");
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
    v5 = 0;
    *(a1 + 6672) = 0;
  }

  else
  {
LABEL_6:
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AbortDataPktRetransmission");
  return v5;
}

uint64_t sub_297E4F2D4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkDiscoveryType");
  if (!a2)
  {
    v5 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid input parameters");
    goto LABEL_6;
  }

  if ((*a2 & 0xB83DF) != 0)
  {
    v4 = "Poll is enabled";
  }

  else
  {
    v7 = *(a2 + 6);
    if (!*(a2 + 6) || v7 == 255 || (v7 & 0x77777777) == 0)
    {
      if ((*a2 & 0x40000) != 0)
      {
        if (!*(a2 + 7))
        {
          v4 = "P2P Target mode is enabled";
          goto LABEL_4;
        }

        v8 = *(a2 + 88);
        if (v8 == 1 || v8 == 3)
        {
          v5 = 1;
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "SE reader mode is Disabled or EMVCO tag removal detection is enabled");
          goto LABEL_6;
        }

        if (v8 == 2)
        {
          v4 = "SE reader mode is Enabled";
          goto LABEL_4;
        }
      }

      else if (a1 && *(a1 + 362))
      {
        v4 = "Card emulation is enabled";
        goto LABEL_4;
      }

      v5 = 1;
      goto LABEL_6;
    }

    v4 = "P2P Initiator is enabled";
  }

LABEL_4:
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v4);
  v5 = 0;
LABEL_6:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkDiscoveryType");
  return v5;
}

uint64_t sub_297E4F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  sub_297E4E1B4(0, &v20, 5u, 5u, "phLibNfc_SM_StateHandler");
  if (a2 == 1)
  {
    v9 = a3;
    v20 = a3;
    v10 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v13;
      v15 = &unk_2A18BDDC0 + 112 * v12;
      if (*v15 == v20)
      {
        break;
      }

      v13 = 0;
      v12 = 1;
      if ((v14 & 1) == 0)
      {
        v10 = 255;
        goto LABEL_11;
      }
    }

    v10 = *(v15 + 2);
    if (v10 < 2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_297E4E0B0(0, &v20, 5u, 1u, "Driver handle is not mapped with NFCC type: Critical Failure");
LABEL_12:
    if (a2 > 0xCE)
    {
      v16 = 147;
      goto LABEL_36;
    }

    v9 = v20;
    if ((a2 - 109) <= 5)
    {
      v11 = sub_297E4F684(a2, v20);
      if (v11)
      {
        goto LABEL_21;
      }

      v9 = v20;
    }
  }

  v11 = sub_297E4F950(a2, v9);
  if (!v11)
  {
    if ((a2 - 1) > 0x7E)
    {
      if ((a2 - 130) > 0x2D)
      {
        if (a2 < 0xB2)
        {
          v16 = 147;
          goto LABEL_22;
        }

        v11 = sub_297EE0FE8(v20, a2, a3, a4, a5);
      }

      else
      {
        v11 = sub_297EE0B0C(v20, a2, a3, a4, a5);
      }
    }

    else
    {
      v11 = sub_297E4FBA4(v20, a2, a3, a4, a5);
    }
  }

LABEL_21:
  v16 = v11;
LABEL_22:
  if (v10 <= 1)
  {
    v17 = *(&unk_2A18BDDC0 + 14 * v10 + 10);
    if (v17)
    {
      if (v16)
      {
        v18 = v16 == 13;
      }

      else
      {
        v18 = 1;
      }

      if (!v18 || a2 == 53 || a2 == 114)
      {
        if (!*(v17 + 152) && a2 != 53 && a2 != 114)
        {
          sub_297E5AE60(v20, a2);
        }
      }

      else
      {
        sub_297E5AE60(v20, a2);
        *(v17 + 152) = 0;
      }
    }
  }

LABEL_36:
  sub_297E4DFAC(0, &v20, 5u, 5u, "phLibNfc_SM_StateHandler");
  return v16;
}

uint64_t sub_297E4F684(int a1, uint64_t a2)
{
  v21 = a2;
  sub_297E4E1B4(0, &v21, 5u, 5u, "phLibNfc_HandlePriorityEvent");
  v3 = 0;
  LOBYTE(v4) = 1;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v3;
    if (*v5 == v21)
    {
      break;
    }

    v6 = v4;
    v4 = 0;
    v3 = 1;
    if (!v6)
    {
      v7 = &qword_2A18BE7E0;
      goto LABEL_7;
    }
  }

  v4 = *(v5 + 2) == 1;
  v7 = &qword_2A18BE770;
  if (*(v5 + 2) != 1)
  {
    v7 = &qword_2A18BE7E0;
  }

LABEL_7:
  if ((a1 - 112) > 2)
  {
    if ((a1 - 109) > 1)
    {
      v9 = a1 != 111;
      goto LABEL_47;
    }

    v10 = &qword_2A18BE770;
    v11 = *v7;
    if (v4)
    {
      v12 = &qword_2A18BE770;
    }

    else
    {
      v12 = &qword_2A18BE7E0;
    }

    v13 = *(v12 + 1);
    if ((v11 - 7) <= 1 && v13 == 9 || v11 == 9 && v13 == 8)
    {
      goto LABEL_19;
    }

    if (v11 == 4)
    {
      if (a1 == 110 && v13 == 4)
      {
        if (!v4)
        {
          v10 = &qword_2A18BE7E0;
        }

        *(v10 + 2) = 0;
        *(v12 + 1) = 12;
        v14 = "Stop Discovery priority raised";
        goto LABEL_22;
      }
    }

    else if (v11 == 6 || v11 == 5 && v13 == 6)
    {
LABEL_19:
      if (!v4)
      {
        v10 = &qword_2A18BE7E0;
      }

      *(v10 + 2) = 0;
      *(v12 + 1) = 12;
      v14 = "Discovery priority raised";
      goto LABEL_22;
    }

    v14 = "No change in Discovery priority";
LABEL_22:
    sub_297E4E0B0(0, &v21, 5u, 4u, v14);
    goto LABEL_40;
  }

  v8 = *v7;
  if (*v7 > 2u)
  {
    if (v4)
    {
      v15 = &qword_2A18BE770;
    }

    else
    {
      v15 = &qword_2A18BE7E0;
    }

    if (v8 == 11 && *(v15 + 2) == 1)
    {
      if (a1 == 112)
      {
        v9 = 111;
      }

      else
      {
        v9 = 145;
      }

      sub_297E4E0B0(0, &v21, 5u, 4u, "Shutdown already in progress");
      goto LABEL_47;
    }

    if ((a1 | 2) == 0x72)
    {
      *v7 = 11;
    }

    *(v15 + 2) = 0;
    v16 = 4;
    sub_297E4E0B0(0, &v21, 5u, 4u, "State Machine is ready for shutdown");
    if (v4)
    {
      v17 = &qword_2A18BE770;
    }

    else
    {
      v17 = &qword_2A18BE7E0;
    }

    v18 = v17 + 3;
    do
    {
      *(v18 - 1) = 0x600000000;
      *v18 = 0;
      v18 += 4;
      --v16;
    }

    while (v16);
LABEL_40:
    v9 = 0;
    goto LABEL_47;
  }

  if (a1 == 114)
  {
    v9 = 0;
    *v7 = 1;
  }

  else
  {
    v9 = 49;
    if (a1 != 113 || v8 == 1)
    {
      goto LABEL_47;
    }

    v9 = 0;
  }

  v19 = &qword_2A18BE770;
  if (!v4)
  {
    v19 = &qword_2A18BE7E0;
  }

  *(v19 + 2) = 0;
LABEL_47:
  sub_297E4DFAC(0, &v21, 5u, 5u, "phLibNfc_HandlePriorityEvent");
  return v9;
}

uint64_t sub_297E4F950(int a1, uint64_t a2)
{
  v23 = a2;
  sub_297E4E1B4(0, &v23, 5u, 5u, "phLibNfc_ValidateSMState");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == v23)
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
  v8 = v23;
  if (a1 != 1)
  {
    v8 = v7;
  }

  v9 = &qword_2A18BE770;
  if (v8 != 1)
  {
    v9 = &qword_2A18BE7E0;
  }

  v10 = *v9;
  if (v10 > 2)
  {
    v15 = &dword_2A18BE778;
    if (v8 != 1)
    {
      v15 = &dword_2A18BE7E8;
    }

    v16 = *v15;
    if (v10 == 11 && v16 == 1)
    {
      v18 = &unk_2A18BE77C;
      if (v8 != 1)
      {
        v18 = &dword_2A18BE7EC;
      }

      v19 = *v18;
      if (v19 == 114)
      {
        if (v8 == 1)
        {
          v21 = &qword_2A18BE770 + 4;
        }

        else
        {
          v21 = &qword_2A18BE7E0 + 4;
        }

        v13 = 145;
        v14 = "####### LibNfc Stack Shutdown in progress #######";
        if (a1 != 118 || *v21 != 3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v19 != 112)
        {
          v13 = 145;
          v14 = "####### LibNfc Stack Shutdown in progress #######";
          goto LABEL_46;
        }

        if (v8 == 1)
        {
          v20 = &qword_2A18BE770 + 4;
        }

        else
        {
          v20 = &qword_2A18BE7E0 + 4;
        }

        v13 = 145;
        v14 = "####### LibNfc Stack Shutdown in progress #######";
        if (a1 != 118 || *v20 != 1)
        {
          goto LABEL_46;
        }
      }
    }

    goto LABEL_28;
  }

  v11 = &qword_2A18BE770 + 4;
  if (v8 != 1)
  {
    v11 = &qword_2A18BE7E0 + 4;
  }

  if (*v11 != 3 || (v8 != 1 ? (v12 = &dword_2A18BE7E8) : (v12 = &dword_2A18BE778), *v12 != 1))
  {
LABEL_28:
    v13 = 0;
    goto LABEL_47;
  }

  v13 = 0;
  if (((a1 - 114) > 5 || ((1 << (a1 - 114)) & 0x31) == 0) && a1 != 4)
  {
    v14 = "####### LibNfc Stack Not Initialised #######";
    v13 = 49;
LABEL_46:
    sub_297E4E0B0(0, &v23, 5u, 1u, v14);
  }

LABEL_47:
  sub_297E4DFAC(0, &v23, 5u, 5u, "phLibNfc_ValidateSMState");
  return v13;
}

uint64_t sub_297E4FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  sub_297E4E1B4(0, &v33, 5u, 5u, "phLibNfc_SM_MainStateHandler");
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == v33)
    {
      break;
    }

    v10 = 0;
    v9 = 1;
    if ((v11 & 1) == 0)
    {
      v13 = 255;
      goto LABEL_6;
    }
  }

  v13 = *(v12 + 2);
LABEL_6:
  if (a2 == 1)
  {
    v13 = v33;
    if (v33 == 1)
    {
      v14 = &qword_2A18BE770;
    }

    else
    {
      v14 = &qword_2A18BE7E0;
    }

    v15 = v14->i32[0];
    goto LABEL_15;
  }

  if (v13 == 1)
  {
    v14 = &qword_2A18BE770;
  }

  else
  {
    v14 = &qword_2A18BE7E0;
  }

  v15 = v14->i32[0];
  if (a2 <= 0x73)
  {
LABEL_15:
    if (a2 != 4 && v14[1].i32[0] == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if ((a2 - 118) > 9)
  {
LABEL_17:
    v16 = 111;
    goto LABEL_56;
  }

LABEL_19:
  v34 = v33;
  sub_297E4E1B4(0, &v34, 5u, 5u, "phLibNfc_RetrieveMainTable");
  v17 = qword_29EE86878[2 * v15 + 1];
  sub_297E4DFAC(0, &v34, 5u, 5u, "phLibNfc_RetrieveMainTable");
  v34 = v33;
  sub_297E4E1B4(0, &v34, 5u, 5u, "phLibNfc_SearchTable");
  for (i = *v17; i != 208 && i != a2; i = v20)
  {
    v20 = v17[4];
    v17 += 4;
  }

  sub_297E4DFAC(0, &v34, 5u, 5u, "phLibNfc_SearchTable");
  v21 = *(v17 + 1);
  if (!v21)
  {
    v16 = 147;
    goto LABEL_56;
  }

  if ((a2 - 118) <= 9)
  {
    if (a2 == 119)
    {
      v14[1].i32[0] = 0;
      a2 = v14[1].u32[1];
      if (a2 == 5)
      {
        v14->i32[1] = 12;
      }
    }

    else
    {
      if (a2 == 118)
      {
        v22 = v14->i32[1];
        v17[1] = v22;
        v14->i32[0] = v22;
        v14[1].i32[0] = 0;
        a2 = v14[1].u32[1];
        goto LABEL_47;
      }

      v34 = v33;
      sub_297E4E1B4(0, &v34, 5u, 5u, "phLibNfc_HandleInternalEvent");
      v23 = 0;
      v24 = 1;
      while (1)
      {
        v25 = &unk_2A18BDDC0 + 112 * v23;
        if (*v25 == v34)
        {
          break;
        }

        v26 = v24;
        v24 = 0;
        v27 = 0;
        v23 = 1;
        if ((v26 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v27 = *(v25 + 2) == 1;
LABEL_38:
      if ((a2 - 120) <= 7 && ((1 << (a2 - 120)) & 0x87) != 0)
      {
        v28 = &qword_2A18BE770;
        if (!v27)
        {
          v28 = &qword_2A18BE7E0;
        }

        if (*(v28 + 2))
        {
          v16 = 111;
LABEL_44:
          sub_297E4DFAC(0, &v34, 5u, 5u, "phLibNfc_HandleInternalEvent");
          goto LABEL_56;
        }
      }

      else if ((a2 - 123) >= 4)
      {
        v16 = 147;
        goto LABEL_44;
      }

      sub_297E4DFAC(0, &v34, 5u, 5u, "phLibNfc_HandleInternalEvent");
      v21 = *(v17 + 1);
    }
  }

LABEL_47:
  v29 = v21(v33, a2, a3, a4, a5);
  v16 = v29;
  if (!v29)
  {
    v14->i32[0] = v17[1];
LABEL_51:
    if (a2 != 4)
    {
      v14[1].i32[0] = 0;
    }

    goto LABEL_53;
  }

  if (v29 != 13)
  {
    goto LABEL_51;
  }

  v14->i32[1] = v17[1];
  v14[1].i32[0] = 1;
  v14[1].i32[1] = a2;
LABEL_53:
  v30 = vand_s8(vshl_u32(*v14, 0x1700000012), 0xF800000007C0000);
  v31 = &gphNfc_DebugInfo_Sec;
  if (!v13)
  {
    v31 = &gphNfc_DebugInfo_Prim;
  }

  *v31 = vorr_s8(vdup_lane_s32(v30, 1), v30).u32[0] | *v31 & 0xF001FFFF | ((v14[1].i32[0] & 1) << 17);
LABEL_56:
  sub_297E4DFAC(0, &v33, 5u, 5u, "phLibNfc_SM_MainStateHandler");
  return v16;
}

uint64_t sub_297E4FF9C(uint64_t a1, int a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigDiscoveryStopTrans");
  sub_297E4F0E8(v12, &v11);
  v9 = sub_297E54988(v11, a2, a3, a4, a5);
  if (!v9)
  {
    v9 = sub_297E5563C(v11, a4, a5);
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigDiscoveryStopTrans");
  return v9;
}

uint64_t sub_297E50058(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v17 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SwioPadNtfHandler");
  if (a2 != 39 || !a1 || !a3)
  {
    v13 = "phLibNfc_SwioPadNtfHandler: Can not process SWIO Pad Ntf - Invalid input parameters";
    v14 = 2;
    v15 = a1;
LABEL_13:
    sub_297E4E0B0(v14, v15, 4u, 2u, v13);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SwioPadNtfHandler");
  }

  v6 = *(a1 + 6568);
  v7 = *(a1 + 6576);
  v8 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v9 = *a3;
  if (!*a3 || (v10 = *v9, (v10 - 17) > 1))
  {
    v13 = "phLibNfc_SwioPadNtfHandler: Info buffer not valid";
    v15 = a1 + 9792;
    v14 = 1;
    goto LABEL_13;
  }

  if (v10 == 17)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  LODWORD(v17) = v11;
  v12 = v9[1];
  WORD2(v17) = v12;
  WORD2(v17) = v12 | (v9[2] << 8);
  if (v6)
  {
    v6(*(a1 + 9784), v7, 76, &v17);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SwioPadNtfHandler");
}

uint64_t sub_297E50184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessSwioPadSensrNtf");
  v6 = 1;
  if (a2 && a1 && *(a2 + 8))
  {
    v9 = *(a2 + 8);
    LODWORD(v10) = *(a2 + 16);
    v7 = *(a1 + 568);
    if (v7)
    {
      v7(*(a1 + 560), 39, &v9, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_ProcessSwioPadSensrNtf:pPropSwioPadNtfCb call back is not registered so dropped at NCI");
    }

    v6 = a3;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessSwioPadSensrNtf");
  return v6;
}

uint64_t sub_297E50264(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvManager");
  v8 = 1;
  if (!a1)
  {
    goto LABEL_86;
  }

  if (!a3)
  {
    goto LABEL_86;
  }

  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_86;
  }

  v10 = (v9 + 4096);
  memset(v67, 0, sizeof(v67));
  v11 = (a1 + 2460);
  v12 = *(a1 + 2460);
  if ((a4 & 0xFFFFFFFE) != 2)
  {
    if (!a4)
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreRecvManager:Invoke data call back function if registered");
      v18 = a1 + 2184;
      BYTE3(v67[0]) = a3[12];
LABEL_25:
      v69 = 0;
      LODWORD(v70) = 0;
      if (a2)
      {
LABEL_26:
        *(a1 + 544) = 0;
        goto LABEL_27;
      }

      v8 = sub_297E52A74(a1, &v66, &v65);
      if (v8)
      {
        goto LABEL_85;
      }

      sub_297E50EBC(1, a1 + 2460, 3u, 4u, "Message size received: ");
      if (v65 == 1)
      {
        Memory_Typed = (*(a1 + 8 * *(a1 + 952) + 928) + 3);
        v69 = Memory_Typed;
      }

      else
      {
        v47 = *v11;
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        v69 = Memory_Typed;
        if (!Memory_Typed)
        {
          goto LABEL_26;
        }
      }

      LODWORD(v70) = v66;
      v48 = sub_297E52B84(a1, Memory_Typed, v66);
      if (v48)
      {
        v8 = v48;
        if (Memory_Typed)
        {
          goto LABEL_83;
        }

        goto LABEL_85;
      }

      if (!v66)
      {
        goto LABEL_26;
      }

      v50 = *(a1 + 2336);
      if (!v50)
      {
        goto LABEL_26;
      }

      v51 = *v50;
      if (v51 >> 5 == 3)
      {
        if ((v51 & 0xF) == 0 && (v50[1] & 0x3F) == 8)
        {
          v60 = *(a1 + 2344);
          sub_297E4E880(1, a1 + 2460, 3u, 2u, "Core interface error in Ntf packet", v50);
          goto LABEL_27;
        }
      }

      else if (v51 >> 5 == 2)
      {
        v52 = sub_297E57538(*(a1 + 632), v51 & 0xF, v50[1] & 0x3F);
        v53 = &gphNfc_DebugInfo_Sec;
        if (v52 || *Memory_Typed != 5)
        {
          if (!*(a1 + 2460))
          {
            v53 = &gphNfc_DebugInfo_Prim;
          }

          v53[1] &= ~0x10000000u;
        }

        else
        {
          if (!*v11)
          {
            v53 = &gphNfc_DebugInfo_Prim;
          }

          v53[1] |= 0x10000000u;
          if (!v10[2544])
          {
            v54 = *(a1 + 2344);
            sub_297E4E880(1, a1 + 2460, 3u, 1u, "Syntax error received in response packet", *(a1 + 2336));
            if (sub_297EBEA38(a1, 1) == 13)
            {
              v8 = 13;
              if (Memory_Typed)
              {
LABEL_83:
                if (v65 != 1)
                {
                  phOsalNfc_FreeMemory();
                  LODWORD(v70) = 0;
                }
              }

LABEL_85:
              sub_297E54838(a1);
              goto LABEL_86;
            }
          }
        }

        goto LABEL_26;
      }

      if ((v51 & 0xFFFFFFEF) != 0x60)
      {
        goto LABEL_26;
      }

      v61 = v50[1] & 0x3F;
      if (v61 == 6)
      {
        v63 = "Core credit Ntf packet received";
      }

      else
      {
        if (v61 != 7)
        {
          goto LABEL_26;
        }

        v62 = v50[3];
        if (v62 == 240)
        {
          v10[2188] = 1;
LABEL_27:
          v71 = 0;
          sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreInvokeCb");
          if ((a4 | 2) != 2)
          {
            v27 = 0;
            if (!sub_297E522A0(a1, 0, v18, v67, a4, &v71))
            {
              v35 = 0;
              do
              {
                v36 = v71;
                v37 = v18 + 24 * v71;
                v38 = *(v37 + 16);
                if (v38)
                {
                  v38(*(v37 + 8), &v68, a2);
                  sub_297E4E0B0(3, a1, 3u, 4u, "Registered Ntf call back function invoked");
                  v39 = 0;
                  v40 = 0;
                  do
                  {
                    v41 = *(&unk_2A18BDDC0 + 14 * v40 + 5);
                    if (v39)
                    {
                      break;
                    }

                    v39 = 1;
                    v40 = 1;
                  }

                  while (v41 != a1);
                  if (v41 != a1)
                  {
                    goto LABEL_81;
                  }

                  if (*v37 == 1)
                  {
                    *v37 = 0;
                    v42 = v18 + 24 * v36;
                    *(v42 + 1) = 3843;
                    *(v42 + 8) = 0;
                    *(v42 + 16) = 0;
                    sub_297E4E0B0(3, a1, 3u, 4u, "Notification call back de-registered as auto de-register is enabled");
                  }

                  v27 = 1;
                }

                else
                {
                  sub_297E4E0B0(3, a1, 3u, 4u, "phNciNfc_CoreInvokeCb:Registered Ntf call back function invoked failed-Invalid function pointer");
                  v43 = 0;
                  v44 = 0;
                  do
                  {
                    v45 = *(&unk_2A18BDDC0 + 14 * v44 + 5);
                    if (v43)
                    {
                      break;
                    }

                    v43 = 1;
                    v44 = 1;
                  }

                  while (v45 != a1);
                  if (v45 != a1)
                  {
                    goto LABEL_49;
                  }

                  v27 = 0;
                }

                v71 = v36 + 1;
                if ((v36 + 1) == 48 || v35 >= 0x2F)
                {
                  goto LABEL_48;
                }

                ++v35;
              }

              while (!sub_297E522A0(a1, 0, v18, v67, a4, &v71));
            }

            sub_297E4E0B0(3, a1, 3u, 4u, "End of list reached");
LABEL_48:
            if (!v27)
            {
LABEL_49:
              v8 = 255;
              goto LABEL_82;
            }

LABEL_81:
            v8 = 0;
LABEL_82:
            sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreInvokeCb");
            if (v69)
            {
              goto LABEL_83;
            }

            goto LABEL_85;
          }

          if (sub_297E522A0(a1, 0, v18, v67, a4, &v71))
          {
            sub_297E4E0B0(3, a1, 3u, 4u, "Response/Data call back not registered");
LABEL_30:
            v8 = 255;
            goto LABEL_82;
          }

          v28 = v71;
          v29 = v18 + 24 * v71;
          if (a4 == 2)
          {
            v30 = *(v29 + 16);
            if (v30)
            {
              v31 = *(v29 + 8);
              sub_297E4E0B0(3, a1, 3u, 4u, "Registered Rsp call back function invoked");
              if (*v29 == 1)
              {
                *v29 = 0;
                v32 = v18 + 24 * v28;
                *(v32 + 1) = 3843;
                v33 = (v32 + 8);
                v34 = "Response call back de-registered as auto de-register is enabled";
LABEL_75:
                *v33 = 0;
                v33[1] = 0;
                sub_297E4E0B0(3, a1, 3u, 4u, v34);
                goto LABEL_80;
              }

              goto LABEL_80;
            }

            v55 = "phNciNfc_CoreInvokeCb:Registered Rsp call back function invoke failed-Invalid function pointer!";
          }

          else
          {
            v30 = *(v29 + 16);
            if (v30)
            {
              v31 = *(v29 + 8);
              sub_297E4E0B0(3, a1, 3u, 4u, "Registered Data call back function invoked");
              if (*v29 == 1)
              {
                *v29 = 0;
                v46 = v18 + 24 * v28;
                *(v46 + 1) = 0;
                v33 = (v46 + 8);
                v34 = "Data call back de-registered as auto de-register is enabled";
                goto LABEL_75;
              }

LABEL_80:
              v30(v31, &v68, a2);
              goto LABEL_81;
            }

            v55 = "phNciNfc_CoreInvokeCb:Registered Data call back function invoke failed-Invalid function pointer!";
          }

          sub_297E4E0B0(2, a1, 3u, 1u, v55);
          goto LABEL_30;
        }

        if (v62 != 5)
        {
          goto LABEL_26;
        }

        v10[713] = 1;
        v63 = "Core generic error in Ntf packet before very first reset";
      }

      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, v63);
      goto LABEL_27;
    }

    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Invalid message type!");
    goto LABEL_86;
  }

  if (a4 != 2)
  {
    v15 = *(a1 + 2336);
    if ((*v15 & 0xF) != 0 || ((v20 = v15[1] & 0x3F, v20 != 8) ? (v21 = v20 == 6) : (v21 = 1), !v21))
    {
      v8 = 0;
      goto LABEL_19;
    }

    v8 = 0;
    v22 = *(a1 + 2448);
    if (!v22 || v22 == 0xFFFFFFFFFFFFLL)
    {
LABEL_19:
      BYTE1(v67[0]) = a3[4];
      BYTE2(v67[0]) = a3[8];
      gphNfc_DebugInfo_Prim = gphNfc_DebugInfo_Prim & 0xFFFFFFF | (sub_297E50BC4(v9, BYTE1(v67[0]), BYTE2(v67[0])) << 28);
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreRecvManager:Invoke notification call back function if registered");
      v16 = 1032;
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_86;
    }

    if (*(a1 + 2456) == 1)
    {
      v23 = *(a1 + 2460);
      if (phOsalNfc_Timer_Stop())
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreRecvManager-Failed to Stop De-Assert Wake Up Line Timer");
      }

      v24 = *(a1 + 2460);
      v25 = *(a1 + 2448);
      v8 = phOsalNfc_Timer_Delete();
      if (!v8)
      {
        goto LABEL_113;
      }

      v26 = "phNciNfc_CoreRecvManager-Failed to Delete De-Assert Wake Up Line Timer";
    }

    else
    {
      v56 = *(a1 + 2460);
      if (phOsalNfc_Timer_Stop())
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreRecvManager-Failed to Delete De-Assert Wake Up Line Timer");
      }

      v57 = *(a1 + 2460);
      v58 = *(a1 + 2448);
      v59 = phOsalNfc_Timer_Delete();
      if (v59)
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreRecvManager-Failed to Delete De-Assert Wake Up Line Timer");
      }

      if (*(v9 + 6616) != 1)
      {
        v59 = sub_297E5AA54(*(a1 + 632), 20);
      }

      v8 = 0;
      if (!v59)
      {
        goto LABEL_113;
      }

      v26 = "phNciNfc_CoreRecvManager2-Fialed to Stop De-Assert Wake Up Line";
    }

    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, v26);
LABEL_113:
    *(a1 + 2448) = 0xFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

  v13 = *(a1 + 2448);
  if (v13 && v13 != 0xFFFFFFFFFFFFLL && *(a1 + 2456) == 1 || *(a1 + 2456) != 1 || *(v9 + 6616) == 1 || !sub_297E5AA54(*(a1 + 632), 20))
  {
    v8 = 0;
  }

  else
  {
    if (sub_297E5A99C(*(a1 + 632), &v64))
    {
      v8 = 255;
      v14 = "phNciNfc_CoreSend2-Failed to retrieve bIgnoreWkUpRet";
LABEL_14:
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, v14);
      goto LABEL_22;
    }

    v8 = 0;
    if (!v64)
    {
      v14 = "phNciNfc_CoreRecvManager1-Failed to De-Assert Wake Up Line";
      goto LABEL_14;
    }
  }

LABEL_22:
  v17 = *(a3 + 2);
  BYTE1(v67[0]) = *(a3 + 1);
  BYTE2(v67[0]) = v17;
  sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreRecvManager:Invoke response call back function if registered");
  v16 = 1008;
  if (!v8)
  {
LABEL_23:
    v18 = a1 + v16;
    goto LABEL_25;
  }

LABEL_86:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvManager");
  return v8;
}

uint64_t sub_297E50BC4(uint64_t a1, int a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetNciNtfId");
  if (a2 == 1)
  {
    if (a3 > 7)
    {
      if (a3 == 45)
      {
        v13 = 15;
      }

      else
      {
        v13 = 0;
      }

      if (a3 == 34)
      {
        v14 = 14;
      }

      else
      {
        v14 = v13;
      }

      if (a3 == 10)
      {
        v9 = 12;
      }

      else
      {
        v9 = v14;
      }

      if (a3 == 9)
      {
        v15 = 11;
      }

      else
      {
        v15 = 0;
      }

      if (a3 == 8)
      {
        v11 = 10;
      }

      else
      {
        v11 = v15;
      }

      v12 = a3 <= 9;
    }

    else
    {
      if (a3 == 7)
      {
        v7 = 9;
      }

      else
      {
        v7 = 0;
      }

      if (a3 == 6)
      {
        v8 = 8;
      }

      else
      {
        v8 = v7;
      }

      if (a3 == 5)
      {
        v9 = 7;
      }

      else
      {
        v9 = v8;
      }

      if (a3 == 3)
      {
        v10 = 6;
      }

      else
      {
        v10 = 0;
      }

      if (a3 == 2)
      {
        v11 = 5;
      }

      else
      {
        v11 = v10;
      }

      v12 = a3 <= 4;
    }

    if (v12)
    {
      v6 = v11;
    }

    else
    {
      v6 = v9;
    }
  }

  else if (a2 || a3 >= 9)
  {
    v6 = 0;
  }

  else
  {
    v6 = byte_297F13128[a3];
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetNciNtfId");
  return v6;
}

uint64_t sub_297E50CEC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 3u, 5u, "phNciNfc_CalcCrc16");
  if (a2 && a3)
  {
    v5 = a3;
    v6 = -1;
    do
    {
      v7 = *a2++;
      v6 = word_297F13340[v7 ^ ((v6 & 0xFF00) >> 8)] ^ (v6 << 8);
      --v5;
    }

    while (v5);
  }

  else
  {
    sub_297E4E0B0(0, &v9, 3u, 1u, "Invalid Params supplied!!");
    v6 = -1;
  }

  sub_297E4DFAC(0, &v9, 3u, 5u, "phNciNfc_CalcCrc16");
  return v6;
}

uint64_t sub_297E50DB0(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + 4 * a3 + 32);
    if (v11 >= a4 && v11 != 0 && a5 != 0 && v11 < 6)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + 4 * a3);
  if (v15 >= a4 && v15 != 0 && a5 != 0 && v15 <= 5)
  {
LABEL_37:

    return MEMORY[0x2A1C6E628]();
  }

  return result;
}

uint64_t sub_297E50EBC(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + 4 * a3 + 32);
    if (v11 >= a4 && v11 != 0 && a5 != 0 && v11 < 6)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + 4 * a3);
  if (v15 >= a4 && v15 != 0 && a5 != 0 && v15 <= 5)
  {
LABEL_37:

    return MEMORY[0x2A1C6E620]();
  }

  return result;
}

uint64_t sub_297E50FC8(uint64_t a1, unsigned __int16 *a2)
{
  v14 = 5;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvCb");
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
    if (a2 && v6 == a1 && !sub_297E51180(*(a1 + 632), *a2, &v14))
    {
      v7 = *(a2 + 1);
      *(a1 + 2336) = v7;
      v8 = a2[8] + 3;
      *(a1 + 2344) = v8;
      *(a1 + 2328) = *a2;
      *(a1 + 2288) = 0;
      sub_297E516BC(*(a1 + 2460), 3u, 3u, "Read", v7, v8);
      v9 = *(a1 + 2344);
      sub_297E4E880(1, a1 + 2460, 3u, 4u, "Response packet:", *(a1 + 2336));
      sub_297E51240(a1, v14);
    }

    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&unk_2A18BDDC0 + 14 * v11 + 5);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v12 != a1);
    if (v12 == a1)
    {
      if (*(a1 + 2352) == 1)
      {
        if (*a1)
        {
          sub_297EBDFC0(*a1);
        }
      }

      else if (sub_297E4EE00(a1, 0, 3) != 13)
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Tml Read request failed!");
      }
    }
  }

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvCb");
}

uint64_t sub_297E51180(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = a1;
  sub_297E4E1B4(0, &v6, 3u, 5u, "phNciNfc_CoreRecvConvertStatus2Evt");
  if (a3)
  {
    if (a2)
    {
      sub_297E4E0B0(0, &v6, 3u, 1u, "Unknown Event");
      a2 = 255;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(0, &v6, 3u, 1u, "Invalid parameter!");
  }

  sub_297E4DFAC(0, &v6, 3u, 5u, "phNciNfc_CoreRecvConvertStatus2Evt");
  return a2;
}

uint64_t sub_297E51240(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_RecvStateHandler");
  if (!a1)
  {
    goto LABEL_6;
  }

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
  if (v6 != a1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (a2 > 3 || (v9 = *(a1 + 2256), v9 > 2))
  {
    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Unknown Current State or Event!");
    sub_297E50EBC(1, a1 + 2460, 3u, 1u, "phNciNfc_RecvStateHandler: Invalid Target State");
    sub_297E50EBC(1, a1 + 2460, 3u, 1u, "Receive State Machine: Result");
    sub_297E50EBC(1, a1 + 2460, 3u, 1u, "Receive State Machine: Index");
    v7 = 17;
    goto LABEL_42;
  }

  v7 = 0;
  v10 = dword_297F13548[4 * v9 + a2];
  v11 = &unk_297F13578 + 32 * v9;
  do
  {
    while ((v10 & 0xFFFFFFFC) == 4)
    {
      v12 = v10 - 4;
      v13 = (*(*(a1 + 2264) + 8 * (v10 - 4)))(a1);
      v7 = v13;
      if (v13)
      {
        v10 = *&v11[4 * ((2 * v12) | 1)];
        goto LABEL_16;
      }

      v10 = *&v11[8 * (v12 & 0x7F)];
      if (v10 <= 2)
      {
        goto LABEL_25;
      }
    }

    if (v10 >= 9)
    {
      sub_297E50EBC(1, a1 + 2460, 3u, 1u, "phNciNfc_RecvStateHandler: Invalid Target State");
      sub_297E50EBC(1, a1 + 2460, 3u, 1u, "Receive State Machine: Result");
      sub_297E50EBC(1, a1 + 2460, 3u, 1u, "Receive State Machine: Index");
      goto LABEL_42;
    }

    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Continue... ");
LABEL_16:
    ;
  }

  while (v10 > 2);
  if (v7 == 2)
  {
    v7 = 2;
    goto LABEL_42;
  }

  LOWORD(v13) = v7;
LABEL_25:
  v14 = *(*(a1 + 2272) + 16 * v9 + 8);
  v7 = v13;
  if (v14)
  {
    v7 = v14(a1);
  }

  if (v9 == v10)
  {
    if (v9 == 1)
    {
      sub_297E50DB0(1, a1 + 2460, 3u, 4u, "phNciNfc_RecvStateHandler:CurrState = ");
      sub_297E50DB0(1, a1 + 2460, 3u, 4u, "phNciNfc_RecvStateHandler:TrgtState = ");
      v15 = &unk_2A1A928B8;
      LODWORD(v9) = 1;
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v16 = &unk_2A1A92898 + 24 * v9;
  if (!*&v16[8 * v10])
  {
LABEL_35:
    LODWORD(v9) = v10;
    goto LABEL_36;
  }

  sub_297E50DB0(1, a1 + 2460, 3u, 4u, "phNciNfc_RecvStateHandler:CurrState = ");
  sub_297E50DB0(1, a1 + 2460, 3u, 4u, "phNciNfc_RecvStateHandler:TrgtState = ");
  *(a1 + 2256) = v10;
  v17 = (*&v16[8 * v10])(a1);
  if (v10 != 2)
  {
    v7 = v17;
    goto LABEL_35;
  }

  LODWORD(v9) = sub_297E52660(a1) > 1;
  *(a1 + 2256) = v9;
  v15 = (&unk_2A1A92898 + 8 * v9 + 48);
LABEL_33:
  v7 = (*v15)(a1);
LABEL_36:
  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(&unk_2A18BDDC0 + 14 * v19 + 5);
    if (v18)
    {
      break;
    }

    v18 = 1;
    v19 = 1;
  }

  while (v20 != a1);
  if (v20 == a1)
  {
    v21 = *(*(a1 + 2272) + 16 * v9);
    if (v21)
    {
      v7 = v21(a1);
    }
  }

LABEL_42:
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = *(&unk_2A18BDDC0 + 14 * v23 + 5);
    if (v22)
    {
      break;
    }

    v22 = 1;
    v23 = 1;
  }

  while (v24 != a1);
  if (v24 == a1)
  {
    v25 = *(a1 + 2256);
    sub_297E50EBC(1, a1 + 2460, 3u, 4u, "NCI Receive Current State");
    sub_297E50EBC(1, a1 + 2460, 3u, 4u, "NCI Receive Target State");
  }

LABEL_7:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_RecvStateHandler");
  return v7;
}

uint64_t sub_297E516BC(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result <= 1)
  {
    v6 = result;
    v7 = *(&unk_2A18BDDC0 + 14 * result + 10);
    if (v7)
    {
      v13 = a2;
      v14 = v7[a2 + 16];
      if (v14 >= a3 && a5 != 0 && a4 != 0 && a2 == 1 && v14 == 3)
      {
        result = phOsalNfc_SignPostLogHexData();
      }

      v19 = *&v7[4 * v13 + 32];
      if (v19 >= a3 && v19 - 1 <= 4)
      {
        v21 = *v7;
        if (a2 == 1 && !*v7 || a2 == 3 && v21 == 1 || a2 == 6 && v21 == 2)
        {
          if (!a4 || !a5)
          {
            return result;
          }

          goto LABEL_32;
        }

        if (v21 == 3)
        {
          v22 = a2 == 6 || a2 == 3;
          v23 = v22;
          if (a5 && v23 && a4)
          {
LABEL_32:

            return MEMORY[0x2A1C6E610](v6, a2, a3, a4, a5, a6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_297E5181C(uint64_t a1)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkPktType");
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
LABEL_6:
    v5 = "Critical failure: Invalid Nci Core context!";
    v6 = 1;
    v7 = 3;
    v8 = a1;
LABEL_11:
    sub_297E4E0B0(v7, v8, 3u, 1u, v5);
    goto LABEL_12;
  }

  v9 = *(a1 + 2336);
  if (!v9 || (v10 = *(a1 + 2344), !*(a1 + 2344)) || *(a1 + 2328))
  {
    v5 = "Critical failure: Invalid Tml buffer received or length of payload in                               tml buffer is 0 or Tml read is not success!";
    v6 = 1;
    v8 = a1 + 2460;
    v7 = 1;
    goto LABEL_11;
  }

  v12 = *v9 >> 5;
  if ((v12 - 2) >= 2 && v12 != 0)
  {
    if (v12 != 1)
    {
      v27 = 0;
      if (*(a1 + 2460))
      {
        v28 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v28 = &gphNfc_DebugInfo_Prim;
      }

      v28[1] |= 2u;
      v29 = 1;
      while (1)
      {
        v30 = v29;
        v31 = &unk_2A18BDDC0 + 112 * v27;
        if (*v31 == *(a1 + 632))
        {
          break;
        }

        v29 = 0;
        v27 = 1;
        if ((v30 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      v34 = *(v31 + 2);
      if (v34 <= 1)
      {
        v35 = *(&unk_2A18BDDC0 + 14 * v34 + 10);
        if (v35)
        {
          *(v35 + 152) = 80;
        }
      }

LABEL_59:
      v6 = 1;
      if (v10 > 0xFF)
      {
LABEL_61:
        v21 = 245;
      }

      else
      {
        sub_297E4E880(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreRecvChkPktType:NFCC Sends Unknown Packet Type, dropping...", v9);
        LODWORD(v41) = 1;
        v42 = *(a1 + 2336);
        LODWORD(v43) = *(a1 + 2344);
        v21 = 245;
        sub_297E6E770(*a1, &v41, 245);
      }

      goto LABEL_62;
    }

    if (*(a1 + 2460))
    {
      v22 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v22 = &gphNfc_DebugInfo_Prim;
    }

    v22[1] |= 2u;
    if (v10 <= 0xFF)
    {
      sub_297E4E880(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreRecvChkPktType:NFCC Sends Command Packet Type, dropping...", v9);
      LODWORD(v41) = 1;
      v42 = *(a1 + 2336);
      LODWORD(v43) = *(a1 + 2344);
      sub_297E6E770(*a1, &v41, 245);
    }

    v6 = 0;
    v23 = 1;
    while (1)
    {
      v24 = v23;
      v25 = &unk_2A18BDDC0 + 112 * v6;
      if (*v25 == *(a1 + 632))
      {
        break;
      }

      v23 = 0;
      v6 = 1;
      if ((v24 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    v32 = *(v25 + 2);
    goto LABEL_52;
  }

  v14 = *a1 + 4096;
  if (*(*a1 + 6281))
  {
    LOWORD(v10) = v10 - 2;
    *(a1 + 2344) = v10;
  }

  if (sub_297E51C70(a1, v9, v10))
  {
    if (*(a1 + 2460))
    {
      v15 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v15 = &gphNfc_DebugInfo_Prim;
    }

    v15[1] |= 2u;
    v16 = *(a1 + 2344);
    v17 = 1;
    sub_297E4E880(1, a1 + 2460, 3u, 1u, "Received packet validation failed", *(a1 + 2336));
    v18 = 0;
    while (1)
    {
      v19 = &unk_2A18BDDC0 + 112 * v18;
      if (*v19 == *(a1 + 632))
      {
        break;
      }

      v20 = v17;
      v17 = 0;
      v18 = 1;
      if ((v20 & 1) == 0)
      {
        v21 = 245;
        v6 = 1;
        goto LABEL_62;
      }
    }

    v32 = *(v19 + 2);
LABEL_52:
    if (v32 <= 1)
    {
      v33 = *(&unk_2A18BDDC0 + 14 * v32 + 10);
      if (v33)
      {
        *(v33 + 152) = 80;
      }
    }

    v21 = 245;
    v6 = 1;
    goto LABEL_62;
  }

  if (*(v14 + 2185) && *(v14 + 2186) != 1 && (v26 = sub_297E523FC(a1, *(a1 + 2336), (*(a1 + 2344) + 2)), v26))
  {
    sub_297E6E83C(*a1, 0, v26);
    v21 = 34;
    v6 = 2;
  }

  else
  {
    v6 = 0;
    v21 = 0;
  }

LABEL_62:
  v36 = 0;
  v37 = 0;
  do
  {
    v38 = *(&unk_2A18BDDC0 + 14 * v37 + 5);
    if (v36)
    {
      break;
    }

    v36 = 1;
    v37 = 1;
  }

  while (v38 != a1);
  if (v38 == a1 && (v21 == 245 || v21 == 34))
  {
    sub_297E4E0B0(1, a1 + 2460, 3u, 2u, "phNciNfc_CoreRecvChkPktType:Received corrupted packet from TML,Flush TML TxRx buffers and place header read request");
    v39 = *(a1 + 632);
    phTmlNfc_ReadAbort();
    v40 = *(a1 + 632);
    phTmlNfc_FlushTxRxBuffers();
  }

LABEL_12:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkPktType");
  return v6;
}

uint64_t sub_297E51C70(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreUtilsUpdatePktInfo");
  v6 = 1;
  if (a1 && a2)
  {
    if (a2[2] + 3 == a3)
    {
      v7 = *a2;
      v8 = v7 >> 5;
      if ((v7 >> 5) - 2 >= 2)
      {
        if (v8)
        {
          sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Invalid message type");
          v6 = 250;
          goto LABEL_38;
        }

        *(a1 + 924) = v7 & 0xF;
        *(a1 + 916) = 0;
        goto LABEL_11;
      }

      v9 = v7 & 0xF;
      v10 = a2[1];
      v21 = *(a1 + 632);
      sub_297E4E1B4(0, &v21, 3u, 5u, "phNciNfc_CoreUtilsValidateGID");
      if (((1 << v9) & 0x8007) == 0)
      {
        sub_297E4DFAC(0, &v21, 3u, 5u, "phNciNfc_CoreUtilsValidateGID");
        sub_297E50EBC(3, a1, 3u, 1u, "Unknown GID received");
        v15 = 2;
LABEL_36:
        LODWORD(v17) = v15;
        goto LABEL_37;
      }

      v11 = v10 & 0x3F;
      sub_297E4DFAC(0, &v21, 3u, 5u, "phNciNfc_CoreUtilsValidateGID");
      v20 = *(a1 + 632);
      sub_297E4E1B4(0, &v20, 3u, 5u, "phNciNfc_CoreUtilsValidateCtrlPktOID");
      if (v8 == 2)
      {
        v12 = sub_297E57538(v20, v9, v11);
LABEL_32:
        sub_297E4DFAC(0, &v20, 3u, 5u, "phNciNfc_CoreUtilsValidateCtrlPktOID");
        if (v12)
        {
          LODWORD(v17) = 3;
LABEL_37:
          v18 = *(a1 + 2336);
          LODWORD(v19) = *(a1 + 2344);
          v6 = 245;
          sub_297E6E770(*a1, &v17, 245);
          goto LABEL_38;
        }

        if (sub_297E52010(a1, a2, a3))
        {
          v15 = 4;
          goto LABEL_36;
        }

        *(a1 + 916) = v9;
        *(a1 + 920) = v11;
        *(a1 + 924) = 0;
LABEL_11:
        v6 = 0;
        *(a1 + 912) = v8;
        goto LABEL_38;
      }

      v21 = v20;
      sub_297E4E1B4(0, &v21, 3u, 5u, "phNciNfc_CoreUtilsValidateNtfPktOID");
      v12 = 255;
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          if (v9 != 15)
          {
LABEL_31:
            sub_297E4DFAC(0, &v21, 3u, 5u, "phNciNfc_CoreUtilsValidateNtfPktOID");
            goto LABEL_32;
          }

          v13 = v11 - 3;
          if (v11 - 3 < 0x3C)
          {
            v14 = 0x8BF880BB2306603;
LABEL_21:
            if ((v14 >> v13))
            {
              goto LABEL_30;
            }
          }

LABEL_29:
          sub_297E50EBC(0, &v21, 3u, 1u, "Unknown OID received");
          goto LABEL_30;
        }

        if (v11)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v9)
        {
          v13 = v11 - 2;
          if (v11 - 2 < 0x31)
          {
            v14 = 0x14CCFC00001FBLL;
            goto LABEL_21;
          }

          goto LABEL_29;
        }

        v12 = 0;
        if (v11 - 6 < 3 || !v11)
        {
          goto LABEL_31;
        }

        if (v11 != 52)
        {
          goto LABEL_29;
        }

        sub_297E50EBC(0, &v21, 3u, 4u, "AMS Init MisMatch NTF Not Expected");
      }

LABEL_30:
      v12 = 0;
      goto LABEL_31;
    }

    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Incorrect payload length");
    v6 = 246;
  }

LABEL_38:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreUtilsUpdatePktInfo");
  return v6;
}

uint64_t sub_297E52010(_BYTE **a1, unsigned __int8 *a2, unsigned int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreUtilsValRspLen");
  v6 = *a2;
  v7 = v6 >> 5;
  v8 = v6 & 0xF;
  v9 = a2[1] & 0x3F;
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v10 = 255;
      if (v8 <= 1)
      {
        if (!v8)
        {
          if ((a2[1] & 0x3F) == 0)
          {
            if (a3 < 3)
            {
              goto LABEL_67;
            }

            v11 = a2[2] == 3;
            goto LABEL_45;
          }

LABEL_36:
          v10 = 0;
          goto LABEL_67;
        }

        goto LABEL_44;
      }

      if (v8 == 2)
      {
        if (v9 != 1)
        {
          goto LABEL_36;
        }

        if (a3 < 3)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v8 != 15)
        {
          goto LABEL_67;
        }

        if (v9 != 33)
        {
          if (v9 != 60)
          {
            goto LABEL_36;
          }

          if (a3 >= 4)
          {
            if (a2[2] <= 3u)
            {
              v10 = 255;
            }

            else
            {
              v10 = 0;
            }
          }

          goto LABEL_67;
        }

        if (a3 < 4)
        {
          goto LABEL_67;
        }
      }

      v8 = a2[2];
LABEL_44:
      v11 = v8 == 1;
LABEL_45:
      if (v11)
      {
        v10 = 0;
      }

      else
      {
        v10 = 255;
      }

      goto LABEL_67;
    }

LABEL_66:
    v10 = 255;
    goto LABEL_67;
  }

  v10 = 255;
  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_36;
    }

    if (v9 == 40)
    {
      goto LABEL_13;
    }

    if (v9 != 37)
    {
      if (v9 != 33)
      {
        goto LABEL_36;
      }

LABEL_13:
      v12 = a2[2] == 0;
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  v13 = *a1;
  if (v8 == 2)
  {
    if ((a2[1] & 0x3F) != 0)
    {
      sub_297E50EBC(2, v13, 3u, 1u, "Unknown OID received");
    }

    goto LABEL_36;
  }

  if (v8 != 15)
  {
    goto LABEL_67;
  }

  v10 = 0;
  if ((a2[1] & 0x3Fu) > 0x31)
  {
    if (v9 != 50)
    {
      if (v9 != 56)
      {
        if (v9 == 58)
        {
          if (a2[2] <= 3u)
          {
            v10 = 255;
          }

          else
          {
            v10 = 0;
          }
        }

        goto LABEL_67;
      }

      v12 = a2[2] == 10;
LABEL_49:
      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = 255;
      }

      goto LABEL_67;
    }

LABEL_37:
    v12 = a2[2] == 3;
    goto LABEL_49;
  }

  if (v9 == 24)
  {
    if (a3 >= 3)
    {
      v14 = a2[2];
      v15 = v13[4835] == 1 && v14 == 0;
      if (v15 || v13[4834] == 1 && !a2[2] || v13[4833] == 1 && !a2[2] || v13[4828] == 1 && !a2[2] || !v13[4835] && v14 == 1)
      {
        goto LABEL_36;
      }

      sub_297E4E0B0(1, (v13 + 6524), 3u, 1u, "Length Check for ModeSet Disable Ntf Failed");
    }

    goto LABEL_66;
  }

  if (v9 == 32)
  {
    v10 = 255;
    if (a3 >= 3)
    {
      v11 = a2[2] == 2;
      goto LABEL_45;
    }
  }

LABEL_67:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreUtilsValRspLen");
  return v10;
}

uint64_t sub_297E522A0(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, int a5, _BYTE *a6)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreGetIndex");
  v12 = a5 & 0xFFFFFFFE;
  if (a5 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 48;
  }

  if (v12 == 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 3;
  }

  if (v12 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = *a6;
  if (v14 > v16)
  {
    if (a3)
    {
      v17 = v12 == 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = (a3 + 24 * v16 + 1);
    v20 = (v15 + 24 * v16);
    do
    {
      if (a2)
      {
        if (v18)
        {
          if (!*(v19 - 1))
          {
            goto LABEL_36;
          }
        }

        else if (v15 && !*v20)
        {
LABEL_36:
          v23 = 0;
          *a6 = v16;
          goto LABEL_35;
        }
      }

      else
      {
        if (v18)
        {
          if (!*(v19 - 1) || a4[1] != *v19)
          {
            goto LABEL_33;
          }

          v21 = a4[2];
          v22 = v19[1];
        }

        else
        {
          if (!v15 || !*v20)
          {
            goto LABEL_33;
          }

          v21 = a4[3];
          v22 = v20[1];
        }

        if (v21 == v22)
        {
          goto LABEL_36;
        }
      }

LABEL_33:
      LODWORD(v16) = v16 + 1;
      v19 += 24;
      v20 += 24;
    }

    while (v14 > v16);
  }

  v23 = 255;
LABEL_35:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreGetIndex");
  return v23;
}

uint64_t sub_297E523FC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreUtilsVerifyCrc");
  if (a1 && a2 && a3)
  {
    v6 = a3 - 2;
    v7 = a2[a3 - 1] | (a2[v6] << 8);
    if (v7 == sub_297E50CEC(*(a1 + 632), a2, v6))
    {
      v8 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Incorrect CRC ");
      sub_297E50DB0(1, a1 + 2460, 3u, 1u, "Received CRC: ");
      sub_297E50DB0(1, a1 + 2460, 3u, 1u, "Calculated CRC: ");
      v8 = 34;
    }
  }

  else
  {
    sub_297E4E0B0(3, a1, 3u, 2u, "Invalid parameter received");
    v8 = 1;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreUtilsVerifyCrc");
  return v8;
}

uint64_t sub_297E52534(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkPbfAndUpdate");
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
  if (v4 == a1)
  {
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "NCI Receive Connector - Check PBF & Update");
    if ((**(a1 + 2336) & 0x10) != 0)
    {
      sub_297E677CC(a1);
      v5 = 1;
    }

    else if (sub_297E52660(a1))
    {
      sub_297E677CC(a1);
      v5 = 0;
    }

    else
    {
      v5 = 0;
      *(a1 + 928) = a1 + 640;
      *(a1 + 952) = 0;
    }

    sub_297E5272C(a1, *(a1 + 2344));
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(3, a1, 3u, 1u, "Critical failure: Invalid Core context handle!");
    v5 = 0;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkPbfAndUpdate");
  return v5;
}

uint64_t sub_297E52660(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_GetActiveHeadCount");
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
  if (v4 == a1)
  {
    v6 = 0;
    v5 = 0;
    do
    {
      if (*(a1 + 928 + 8 * v5))
      {
        ++v5;
      }
    }

    while (v6++ < 2);
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_GetActiveHeadCount");
  return v5;
}

uint64_t sub_297E5272C(uint64_t a1, __int16 a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreUpdatePacketLen");
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
      v10 = *(a1 + 8 * *(a1 + 952) + 928);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *(v10 + 264);
        }

        while (v10);
        *(v11 + 260) = a2;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 2u, "List is empty, can not update length");
      }

      goto LABEL_9;
    }

    v7 = "INVALID Nci Core context!";
    v8 = a1;
  }

  else
  {
    v7 = "NULL Nci Core context!";
    v8 = 0;
  }

  sub_297E4E0B0(3, v8, 3u, 1u, v7);
LABEL_9:

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreUpdatePacketLen");
}

uint64_t sub_297E52844(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_StateIdle2Dummy");
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_StateIdle2Dummy");
  return 0;
}

uint64_t sub_297E528A0(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_StateDummy2Idle");
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
LABEL_6:
    sub_297E4E0B0(3, a1, 3u, 1u, "Invalid core context!");
    v5 = 0;
    goto LABEL_7;
  }

  v7 = *a1;
  *(a1 + 2456) = 0;
  v8 = *(v7 + 6524);
  phOsalNfc_SetMemory();
  if (*(a1 + 992) == 1)
  {
    v9 = *(a1 + 968);
    if (v9 == *(a1 + 912))
    {
      if ((v9 - 2) >= 2)
      {
        if (!v9)
        {
          v10 = *(a1 + 980);
          v11 = *(a1 + 924);
LABEL_15:
          if (v10 == v11)
          {
            v12 = *(a1 + 2460);
            v13 = *(a1 + 984);
            phOsalNfc_Timer_Stop();
            *(v7 + 6512) = 0;
            *(a1 + 992) = 0;
            *(a1 + 2456) = 1;
            v14 = &gphNfc_DebugInfo_Sec;
            if (!*(a1 + 2460))
            {
              v14 = &gphNfc_DebugInfo_Prim;
            }

            v14[1] &= ~0x10u;
          }
        }
      }

      else if (*(a1 + 972) == *(a1 + 916))
      {
        v10 = *(a1 + 976);
        v11 = *(a1 + 920);
        goto LABEL_15;
      }
    }
  }

  v5 = *(a1 + 2288);
  v15 = *(a1 + 2460);
  phOsalNfc_MemCopy();
  if (LODWORD(v16[0]) <= 3 && LODWORD(v16[0]) != 1)
  {
    sub_297E50264(a1, v5, v16, v16[0]);
  }

LABEL_7:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_StateDummy2Idle");
  return v5;
}

uint64_t sub_297E52A74(uint64_t a1, int *a2, __int16 *a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreGetDataLength");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 8 * *(a1 + 952) + 928);
    if (v7)
    {
      v8 = *(v7 + 264);
      if (v8)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = *(v7 + 260);
          v7 = v8;
          ++v10;
          v9 += v11;
          v8 = *(v8 + 264);
        }

        while (v8);
        v6 = 0;
        v12 = v9 - (3 * v10) + *(v7 + 260);
      }

      else
      {
        v6 = 0;
        v12 = *(v7 + 260) - 3;
        v10 = 1;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 2u, "Invalid Data in Head!!!");
      v12 = 0;
      v10 = 0;
      v6 = 255;
    }

    *a2 = v12;
    *a3 = v10;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreGetDataLength");
  return v6;
}

uint64_t sub_297E52B84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v13 = 0;
  v12 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreGetData");
  v6 = 1;
  if (a1 && a2)
  {
    v7 = *(a1 + 8 * *(a1 + 952) + 928);
    sub_297E52A74(a1, &v13, &v12);
    if (v7)
    {
      v8 = v13 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || v12 == 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = 8 * (v13 > a3);
      if (v13 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v13;
      }

      sub_297E52C70(a1, v7, v12, a2, v10);
    }
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreGetData");
  return v6;
}

uint64_t sub_297E52C70(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v15 = 255;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreExtractData");
  if (a1)
  {
    v15 = *(a1 + 2460);
  }

  v10 = 0;
  if (a3 && a2 && a4)
  {
    v10 = 0;
    for (i = 0; a3 > i; ++i)
    {
      if (*(a2 + 260) != 3)
      {
        v12 = a5 - v10;
        if (a5 <= v10)
        {
          sub_297E4E0B0(1, &v15, 3u, 4u, "Reached end of user buffer");
          break;
        }

        if (v12 >= (*(a2 + 260) - 3))
        {
          v13 = (*(a2 + 260) - 3);
        }

        else
        {
          v13 = v12;
        }

        phOsalNfc_MemCopy();
        a2 = *(a2 + 264);
        v10 = (v13 + v10);
        if (!a2)
        {
          break;
        }

        a4 += v13;
      }
    }
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreExtractData");
  return v10;
}

uint64_t sub_297E52DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfFieldInfoNtfHandler");
  if (a1)
  {
    if (a2 && (v6 = *(a2 + 8)) != 0)
    {
      if (*(a2 + 16) == 1)
      {
        v7 = *v6;
        if (v7 <= 1)
        {
          if (*v6)
          {
            v8 = "RF Field ON";
          }

          else
          {
            v8 = "RF Field OFF";
          }

          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v8);
          LODWORD(v11) = v7;
          v12 = a1 + 4008;
          v9 = *(a1 + 232);
          if (v9)
          {
            v9(*(a1 + 224), 6, &v11, 0);
          }
        }
      }
    }

    else
    {
      a3 = 1;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfFieldInfoNtfHandler");
  return a3;
}

uint64_t sub_297E52EA4(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 135;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SENtfHandler");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid Context Param received!!");
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SENtfHandler");
  }

  v8 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  if (a2 > 21)
  {
    if (a2 <= 24)
    {
      if (a2 == 22)
      {
        *(a1 + 1448) = 0;
        if (*(a1 + 1472) == 1)
        {
          sub_297E7938C(*(a1 + 3088), (*(a1 + 1060) >> 4) & 1);
          sub_297ECF904(a1);
          *(a1 + 1472) = 0;
        }

        if (*(a1 + 745) == 1 && !sub_297EE0A34(*(a1 + 9784), 1))
        {
          *(a1 + 560) = a1 + 440;
          *(a1 + 572) = 0;
          sub_297EECFCC(a1, 1, 0, &v78);
          sub_297E4F450(*(a1 + 9784), v78, 0, 0, 0);
          *(a1 + 745) = 0;
        }

        if (*(a1 + 2984) == 1)
        {
          v10 = *(a1 + 440);
        }

        else
        {
          v10 = 0;
        }

        v18 = *(a1 + 768);
        if (v18 && v18 != 0xFFFFFFFFFFFFLL)
        {
          v19 = *(a1 + 9792);
          phOsalNfc_Timer_Delete();
          *(a1 + 768) = 0xFFFFFFFFFFFFLL;
        }

        v9 = 1;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: eNciNfc_NciSuicaTxNtf");
        v11 = 21;
        goto LABEL_249;
      }

      if (a2 == 23)
      {
        *(a1 + 1448) = 0;
        *(a1 + 1472) = 0;
        if (*(a1 + 2984) == 1)
        {
          v10 = *(a1 + 440);
        }

        else
        {
          v10 = 0;
        }

        v9 = 1;
        LODWORD(v79) = 1;
        v14 = "NFCEE Notification Type: eNciNfc_NciSuicaModeStartedNtf";
        goto LABEL_84;
      }

      *(a1 + 1448) = 0;
      *(a1 + 1472) = 0;
      v10 = *(a1 + 440);
      LODWORD(v79) = 2;
      v14 = "NFCEE Notification Type: eNciNfc_NciExpressModeStartedNtf";
    }

    else if (a2 > 36)
    {
      if (a2 != 37)
      {
        if (a2 != 38)
        {
          goto LABEL_66;
        }

        if (sub_297EE0928(*(a1 + 9784), 1))
        {
          if (sub_297EE0A34(*(a1 + 9784), 1))
          {
            sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "SE is not active in VAS Express+HCE mode");
          }

          *(a1 + 745) = 0;
        }

        else
        {
          *(a1 + 560) = a1 + 440;
          *(a1 + 745) = 1;
          *(a1 + 572) = 2;
          sub_297EECFCC(a1, 1, 2, &v78);
          sub_297E4F450(*(a1 + 9784), v78, 0, 0, 0);
        }

        v9 = 1;
        *(a1 + 1472) = 1;
        *(a1 + 1448) = 0;
        v10 = *(a1 + 440);
        LODWORD(v79) = 5;
        v14 = "NFCEE Notification Type: eNciNfc_NciExpressModeHceWiredStartedNtf";
LABEL_84:
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v14);
        v11 = 24;
        goto LABEL_249;
      }

      *(a1 + 1448) = 0;
      *(a1 + 1472) = 0;
      v10 = *(a1 + 440);
      LODWORD(v79) = 4;
      v14 = "NFCEE Notification Type: eNciNfc_NciVasExOnlyAModeStartedNtf";
    }

    else
    {
      if (a2 != 25)
      {
        if (a2 == 29)
        {
          v10 = *(a1 + 440);
          v9 = 1;
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: phLibNfc_eSE_EvtSwitchedOff");
          v11 = 22;
          goto LABEL_249;
        }

        goto LABEL_66;
      }

      *(a1 + 1448) = 0;
      v10 = *(a1 + 440);
      LODWORD(v79) = 3;
      v14 = "NFCEE Notification Type: eNciNfc_NciGenericAExpModeStartedNtf";
    }

    v9 = 1;
    goto LABEL_84;
  }

  if (a2 <= 4)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          goto LABEL_66;
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: ACTION");
        if (*(a1 + 534))
        {
          *(a1 + 534) |= 2u;
        }

        v12 = *a3;
        v10 = *(*a3 + 272);
        v13 = *(*a3 + 4);
        v11 = 6;
        v9 = 1;
        if (v13 <= 1)
        {
          if (v13)
          {
            if (v13 == 1)
            {
              *&v80 = v12 + 12;
              DWORD2(v80) = *(v12 + 8);
              v11 = 11;
            }
          }

          else
          {
            *&v79 = v12 + 12;
            DWORD2(v79) = *(v12 + 8);
            v11 = 14;
          }
        }

        else
        {
          switch(v13)
          {
            case 2:
              *&v80 = v12 + 12;
              DWORD2(v80) = *(v12 + 8);
              v11 = 10;
              break;
            case 16:
              *&v80 = v12 + 12;
              DWORD2(v80) = *(v12 + 8);
              v11 = 13;
              break;
            case 32:
              *&v79 = v12 + 12;
              DWORD2(v79) = *(v12 + 8);
              v11 = 20;
              break;
          }
        }

        goto LABEL_249;
      }

      if (a4)
      {
        v10 = 0;
        v11 = 6;
LABEL_63:
        v9 = 1;
        goto LABEL_249;
      }

      sub_297EEC87C(a1, a3);
      v20 = *(a3 + 1);
      BYTE4(v79) = v20[1];
      if (BYTE4(v79) == 192 && (*(a1 + 2986) == 1 || *(a1 + 2985) == 1 || *(a1 + 2992) == 1))
      {
        if (*v20 > 1u)
        {
          LODWORD(v79) = 255;
          v23 = "Dropping eNciNfc_NfceeDiscReqNtf: phNfc_SE_Rdr_Invalid";
        }

        else
        {
          LODWORD(v79) = *v20;
          if (*(v20 + 1) > 1u)
          {
            DWORD2(v79) = 255;
            v23 = "Dropping eNciNfc_NfceeDiscReqNtf: phNfc_NFC_Invalid TechMode";
          }

          else
          {
            DWORD2(v79) = *(v20 + 1);
            if (*(v20 + 2) == 4)
            {
              v10 = 0;
              a4 = 0;
              HIDWORD(v79) = 4;
              v11 = 25;
              goto LABEL_63;
            }

            HIDWORD(v79) = 0;
            v23 = "Dropping eNciNfc_NfceeDiscReqNtf:                                                            phNfc_e_RfProtocolsUnknownProtocol";
          }
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v23);
      }

      v9 = 0;
      v10 = 0;
      a4 = 0;
      v11 = 25;
      goto LABEL_249;
    }

    v10 = *(a3 + 1);
    v17 = a3[1];
    if (v17 == 2 || v17 == 192 || v17 == 129 && *(a1 + 2984) == 1)
    {
      if (*a3 != 1)
      {
        LODWORD(v79) = 15;
        if (v10 && *(v10 + 24))
        {
          sub_297EECF10(a1, &v79, v10);
        }

        v9 = 1;
        sub_297E50EBC(1, a1 + 9792, 4u, 4u, "NFCEE removed Ntf received with reason code");
        if (*(a1 + 6696))
        {
          v21 = sub_297EE9B6C(a1);
          if (v21 != 111)
          {
            sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_SENtfHandler:Check Trans On Apdu Pipe with status :");
          }

          if (sub_297E56FC8(*(a1 + 9784)) == 4 || sub_297E56FC8(*(a1 + 9784)) == 8 || (v24 = sub_297E56FC8(*(a1 + 9784)), v21 == 111) || (v22 = a4, v24 == 7))
          {
            v22 = a4;
            if (!sub_297EE14CC(*(a1 + 9784)))
            {
              v22 = a4;
              if (!*(a1 + 555))
              {
                v22 = a4;
                if (!*(a1 + 2992))
                {
                  v22 = a4;
                  if (!*(a1 + 6680))
                  {
                    sub_297EE1720(*(a1 + 9784), 1);
                    v22 = 131;
                  }
                }
              }
            }
          }

          sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_SENtfHandler :NFCEE Removed Ntf");
          v11 = 16;
          (*(a1 + 6696))(*(a1 + 9784), *(a1 + 6704), 16, v10, &v79, v22);
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "eSE NFCEE Disc Ntf pSeListenerNtfCb invoked");
          v9 = 0;
        }

        else
        {
          v11 = 16;
        }

LABEL_121:
        sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_UpdateSeInfo");
        if (a4)
        {
          sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_UpdateSeInfo:Invalid Input Parameters");
LABEL_123:
          sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UpdateSeInfo");
          v9 = 0;
          goto LABEL_249;
        }

        v25 = *(a1 + 512);
        if (!*a3 && v25)
        {
          v26 = a3[1];
          if (v26 <= 0x80)
          {
            if (v26 == 1)
            {
              goto LABEL_123;
            }

            if (v26 == 2)
            {
              *(a1 + 424) = *(a3 + 1);
              sub_297EE196C(*(a1 + 9784), 2, 5);
              *(a1 + 432) = 0x400000002;
              v25[834] = -1;
              *(a1 + 553) = 0;
              v27 = *(a3 + 1);
              *(a1 + 424) = v27;
              *(a1 + 365) = 2;
              if (*(a1 + 9792))
              {
                v28 = &gphNfc_DebugInfo_Sec;
              }

              else
              {
                v28 = &gphNfc_DebugInfo_Prim;
              }

              v28[1] = v28[1] & 0xFFCFFFFF | 0x200000;
              sub_297EAA214(a1);
              goto LABEL_247;
            }

LABEL_166:
            sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo:Unknown NFCEE ID");
            goto LABEL_123;
          }

          if (v26 == 129)
          {
            v36 = *(a1 + 2984);
            if (v36 == 1)
            {
              *(a1 + 456) = *(a3 + 1);
              sub_297EE196C(*(a1 + 9784), 3, 5);
              *(a1 + 464) = 0x400000007;
              v25[834] = -1;
              *(a1 + 554) = 0;
              v27 = *(a3 + 1);
              *(a1 + 456) = v27;
              *(a1 + 367) = 2;
              if (*(a1 + 9792))
              {
                v37 = &gphNfc_DebugInfo_Sec;
              }

              else
              {
                v37 = &gphNfc_DebugInfo_Prim;
              }

              *v37 = *v37 & 0xFFFFFFCF | 0x20;
            }

            else
            {
              sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo:Unknown NFCEE ID");
              v27 = 0;
            }

            sub_297EAA214(a1);
            sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UpdateSeInfo");
            if (v36 != 1)
            {
              v9 = 0;
              a4 = 0;
              goto LABEL_249;
            }

LABEL_248:
            a4 = 0;
            v11 = 16;
            v10 = v27;
            goto LABEL_249;
          }

          if (v26 != 192)
          {
            goto LABEL_166;
          }

          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "######## Received eSE Removed Notification ##########");
          *(a1 + 748) = *(a1 + 452);
          *(a1 + 448) = 0x400000001;
          sub_297EE196C(*(a1 + 9784), 1, 5);
          sub_297E96818(*(a1 + 9784), 214);
          v31 = *(a1 + 9792);
          if (v31)
          {
            v32 = &gphNfc_DebugInfo_Sec;
          }

          else
          {
            v32 = &gphNfc_DebugInfo_Prim;
          }

          v32[1] |= 0x80000000;
          *(a1 + 552) = 0;
          v25[818] = -1;
          v25[816] = -1;
          v27 = *(a3 + 1);
          *(a1 + 440) = v27;
          *(a1 + 366) = 2;
          v33 = (*(a1 + 365) & 3) << 20;
          if (v31)
          {
            dword_2A18BE764 = v33 | dword_2A18BE764 & 0xFF0FFFFF | 0x800000;
            if (*(a1 + 2984) == 1)
            {
              gphNfc_DebugInfo_Sec = gphNfc_DebugInfo_Sec & 0xFFFFFFCF | (16 * (*(a1 + 367) & 3));
            }

            else
            {
              gphNfc_DebugInfo_Sec &= 0xFFFFFFCF;
            }
          }

          else
          {
            dword_2A18BE76C = v33 | dword_2A18BE76C & 0xFF0FFFFF | 0x800000;
            if (*(a1 + 2984) == 1)
            {
              gphNfc_DebugInfo_Prim = gphNfc_DebugInfo_Prim & 0xFFFFFFCF | (16 * (*(a1 + 367) & 3));
            }

            else
            {
              gphNfc_DebugInfo_Prim &= 0xFFFFFFCF;
            }
          }

          v44 = a1 + 440;
          v45 = sub_297EE9B6C(a1);
          if (v45 != 111)
          {
            sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo: Check Trans On Apdu Pipe status :");
          }

          if ((sub_297E56FC8(*(a1 + 9784)) == 4 || sub_297E56FC8(*(a1 + 9784)) == 8 || sub_297E56FC8(*(a1 + 9784)) == 7) && !*(a1 + 555) && sub_297EE1B04(*(a1 + 9784), 1) != 1)
          {
            if (*(a1 + 6296))
            {
              v47 = "SE Removed while Discovery API ongoing, ignored";
LABEL_217:
              sub_297E4E0B0(1, a1 + 9792, 4u, 2u, v47);
              sub_297EE1720(*(a1 + 9784), 0);
LABEL_247:
              sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UpdateSeInfo");
              goto LABEL_248;
            }

            if (*(a1 + 2992) != 1)
            {
              sub_297EEC9F4(a1);
              *(a1 + 555) = 1;
              *(a1 + 560) = v44;
              *(a1 + 568) = 0;
              sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo- Virtual Mode = Recovery Started");
              *(a1 + 2960) = off_2A1A93560;
              *(a1 + 2952) = 0;
              *(a1 + 2954) = 0;
              v48 = off_2A1A93560[0];
              if (off_2A1A93560[0])
              {
                v48 = 0;
                v59 = off_2A1A93570;
                do
                {
                  ++v48;
                  v60 = *v59;
                  v59 += 2;
                }

                while (v60);
              }

              goto LABEL_246;
            }
          }

          else
          {
            if (v45 != 111 || *(a1 + 555))
            {
              if (*(a1 + 6664) || *(a1 + 6152))
              {
                goto LABEL_247;
              }

              if (*(a1 + 6104))
              {
                ++*(a1 + 362);
                *(a1 + 440) = *(a3 + 1);
                *(a1 + 448) = 1;
                *(a1 + 366) = 2;
                *(a1 + 752) = 1;
                if (*(a1 + 753) != 1 || (*(a1 + 488) & 0xB) != 2)
                {
                  goto LABEL_247;
                }

                sub_297EA8FA4(*(a1 + 584), a1);
                v46 = "phLibNfc_NfceeNtfDelayCb: Timer stopped due to eSE removed Notification";
                goto LABEL_293;
              }

              if (*(a1 + 6680))
              {
                *(a1 + 2960) = 0;
                *(a1 + 2952) = 0;
                *(a1 + 2954) = 0;
                sub_297E5588C(a1, v45, 0);
                sub_297EE1720(*(a1 + 9784), 0);
                sub_297EBBF98(*(a1 + 3088));
                sub_297EBC0B0(*(a1 + 3088));
                sub_297F08EEC(*(a1 + 3088), 3);
                sub_297F0522C(*(a1 + 3088));
                sub_297EEB8F8(a1, 67);
                goto LABEL_247;
              }

              if (*(a1 + 555) == 1)
              {
                v46 = "phLibNfc_UpdateSeInfo- Second Removed while recovery in Progress Ignored";
LABEL_293:
                sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v46);
                goto LABEL_247;
              }

              v47 = "SE Removed notification, ignored";
              goto LABEL_217;
            }

            if (*(a1 + 2992) != 1)
            {
              sub_297EEC9F4(a1);
              sub_297E99A28(*(a1 + 512));
              *(a1 + 555) = 1;
              *(a1 + 1) = *(a1 + 2) & 1;
              *(a1 + 560) = v44;
              *(a1 + 568) = 0;
              sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo- Wired Mode = Recovery Started");
              *(a1 + 2960) = off_2A1A93490;
              *(a1 + 2952) = 0;
              *(a1 + 2954) = 0;
              v48 = off_2A1A93490[0];
              if (off_2A1A93490[0])
              {
                v48 = 0;
                v49 = off_2A1A934A0;
                do
                {
                  ++v48;
                  v50 = *v49;
                  v49 += 2;
                }

                while (v50);
              }

LABEL_246:
              *(a1 + 2953) = v48;
              sub_297E5588C(a1, 0, 0);
              goto LABEL_247;
            }
          }

          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo:eSE Removed Ntf status propagated to host!!");
          *(a1 + 452) = 4;
          sub_297EE196C(*(a1 + 9784), 1, 5);
          sub_297EE1A38(*(a1 + 9784), 1, 0);
          sub_297EE1720(*(a1 + 9784), 0);
          sub_297EECB48(a1, 214);
          goto LABEL_247;
        }

        if (*a3 != 1)
        {
          goto LABEL_123;
        }

        v29 = a3[1];
        if (v29 > 0x80)
        {
          if (v29 != 129)
          {
            if (v29 == 192)
            {
              if (*(a1 + 9792))
              {
                v34 = &gphNfc_DebugInfo_Sec;
              }

              else
              {
                v34 = &gphNfc_DebugInfo_Prim;
              }

              v34[1] &= ~0x80000000;
              if (*(a1 + 744) == 1)
              {
                if (*(a1 + 366) != 1 && !*(a1 + 555))
                {
                  *(a1 + 552) = 0;
                  ++*(a1 + 362);
                  v35 = *(a3 + 1);
                  *(a1 + 440) = v35;
                  if (v35)
                  {
                    *(a1 + 366) = 1;
                    *(a1 + 448) = 1;
                    *(a1 + 452) = *(*(a3 + 1) + 4) != 1;
                    if (*(a1 + 370) == 2)
                    {
                      if (sub_297EECC30(a1, 3u) != 13)
                      {
                        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, " eSE init sequence could not start!");
                      }

                      *(a1 + 369) = 1;
                    }

                    else
                    {
                      v75 = *(a1 + 369);
                      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo:Initialization in Progress for:");
                    }
                  }

                  v76 = (*(a1 + 366) & 3) << 22;
                  v77 = (*(a1 + 365) & 3) << 20;
                  if (*(a1 + 9792))
                  {
                    dword_2A18BE764 = v76 | v77 | dword_2A18BE764 & 0xFF0FFFFF;
                    if (*(a1 + 2984) == 1)
                    {
                      gphNfc_DebugInfo_Sec = gphNfc_DebugInfo_Sec & 0xFFFFFFCF | (16 * (*(a1 + 367) & 3));
                    }

                    else
                    {
                      gphNfc_DebugInfo_Sec &= 0xFFFFFFCF;
                    }
                  }

                  else
                  {
                    dword_2A18BE76C = v76 | v77 | dword_2A18BE76C & 0xFF0FFFFF;
                    if (*(a1 + 2984) == 1)
                    {
                      gphNfc_DebugInfo_Prim = gphNfc_DebugInfo_Prim & 0xFFFFFFCF | (16 * (*(a1 + 367) & 3));
                    }

                    else
                    {
                      gphNfc_DebugInfo_Prim &= 0xFFFFFFCF;
                    }
                  }
                }

                goto LABEL_123;
              }

              v43 = "NFCEE DISC NTF(eSE,Connected)Received and Dropped";
              goto LABEL_194;
            }

            goto LABEL_173;
          }

          if (*(a1 + 744) != 1)
          {
            v43 = "NFCEE DISC NTF(SE2 Connected)Received and Dropped";
            goto LABEL_194;
          }

          if (*(a1 + 2984) != 1 || *(a1 + 367) == 1)
          {
            goto LABEL_237;
          }

          *(a1 + 554) = 0;
          ++*(a1 + 362);
          v42 = *(a3 + 1);
          *(a1 + 456) = v42;
          if (v42)
          {
            *(a1 + 367) = 1;
            *(a1 + 468) = *(*(a3 + 1) + 4) != 1;
            *(a1 + 464) = 7;
          }

          if (*(a1 + 370) == 2)
          {
            if (sub_297EECC30(a1, 4u) != 13)
            {
              sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "UICC init sequence could not start!");
            }

            *(a1 + 369) = 7;
            goto LABEL_237;
          }
        }

        else
        {
          if (v29 != 1)
          {
            if (v29 == 2)
            {
              if (*(a1 + 744) == 1)
              {
                if (*(a1 + 365) == 1)
                {
                  goto LABEL_123;
                }

                *(a1 + 553) = 0;
                ++*(a1 + 362);
                v30 = *(a3 + 1);
                *(a1 + 424) = v30;
                if (v30)
                {
                  *(a1 + 365) = 1;
                  *(a1 + 436) = *(*(a3 + 1) + 4) != 1;
                  *(a1 + 432) = 2;
                  if (*(a1 + 370) == 2)
                  {
                    if (sub_297EECC30(a1, 2u) != 13)
                    {
                      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "UICC init sequence could not start!");
                    }

                    *(a1 + 369) = 2;
                    goto LABEL_237;
                  }

                  goto LABEL_236;
                }

LABEL_237:
                if (*(a1 + 9792))
                {
                  v58 = &gphNfc_DebugInfo_Sec;
                }

                else
                {
                  v58 = &gphNfc_DebugInfo_Prim;
                }

                v58[1] = ((*(a1 + 366) & 3) << 22) | ((*(a1 + 365) & 3) << 20) | v58[1] & 0xFF0FFFFF;
                if (*(a1 + 2984) == 1)
                {
                  *v58 = *v58 & 0xFFFFFFCF | (16 * (*(a1 + 367) & 3));
                }

                else
                {
                  *v58 &= 0xFFFFFFCF;
                }

                goto LABEL_123;
              }

              v43 = "NFCEE DISC NTF(UICC,Connected)Received and Dropped";
LABEL_194:
              sub_297E4E0B0(1, a1 + 9792, 4u, 2u, v43);
              goto LABEL_123;
            }

LABEL_173:
            sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_UpdateSeInfo:Unkown Nfcee Id");
            *(a1 + 369) = 0;
            goto LABEL_123;
          }

          if (*(a1 + 744) != 1)
          {
            v43 = "NFCEE DISC NTF(HCI N/W,Connected)Received and Dropped";
            goto LABEL_194;
          }

          v38 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          *(a1 + 392) = *(a3 + 1);
          *(a1 + 560) = a1 + 392;
          *(a1 + 363) = 1;
          *(a1 + 400) = 4;
          *(a1 + 369) = 260;
          v39 = *(a1 + 9792);
          if (*(a1 + 512))
          {
            phOsalNfc_SetMemory();
            sub_297E9FB94(*(a1 + 9792), v25);
            v40 = *(a1 + 512);
            v40[99] = *(a1 + 3088);
            v40[120] = a1;
            v41 = *(a1 + 392);
            v40[100] = v41;
          }

          else
          {
            Memory_Typed = phOsalNfc_GetMemory_Typed();
            if (Memory_Typed)
            {
              v52 = Memory_Typed;
              v53 = *(a1 + 9792);
              phOsalNfc_SetMemory();
              sub_297E9FB94(*(a1 + 9792), v52);
              *(v52 + 792) = *(a1 + 3088);
              *(v52 + 960) = a1;
              *(a1 + 512) = v52;
              *(v52 + 152) = 0;
              v41 = *(a1 + 392);
              *(v52 + 800) = v41;
              *(v52 + 968) = 1;
              *(v52 + 1235) = 0;
            }

            else
            {
              if (!*(a1 + 512))
              {
                goto LABEL_237;
              }

              v41 = *(a1 + 392);
            }
          }

          *(a1 + 552) = 0;
          *(a1 + 554) = 0;
          *(a1 + 520) = v41;
          ++*(a1 + 362);
          *(a1 + 2960) = off_2A1A93270;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v54 = off_2A1A93270[0];
          if (off_2A1A93270[0])
          {
            v54 = 0;
            v55 = off_2A1A93280;
            do
            {
              ++v54;
              v56 = *v55;
              v55 += 2;
            }

            while (v56);
          }

          *(a1 + 2953) = v54;
          if (sub_297E5588C(a1, 0, 0) != 13)
          {
            sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Hci init sequence could not start!");
            sub_297EE905C(a1);
          }
        }

LABEL_236:
        v57 = *(a1 + 369);
        sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_UpdateSeInfo:Initialization in Progress for:");
        goto LABEL_237;
      }

      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "NFCEE Disc Ntf Connected ID = ");
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }

    v11 = 6;
    goto LABEL_121;
  }

  if (a2 > 14)
  {
    if (a2 == 15)
    {
      v9 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: eNciNfc_NciRfRapduSentNtf");
      v11 = 18;
      v10 = a3;
      goto LABEL_249;
    }

    if (a2 != 20)
    {
      goto LABEL_66;
    }

    if (*(a1 + 555) == 1)
    {
      v9 = 0;
    }

    else
    {
      if (*a3 && *(a3 + 2))
      {
        *(a1 + 576) = **a3;
      }

      v9 = 1;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: eNciNfc_NciNfceePowerOffNtf");
    v10 = 0;
    v11 = 19;
  }

  else
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v9 = 1;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: RF Field Info");
        v10 = *(a3 + 1);
        if (*a3)
        {
          if (*a3 == 1)
          {
            *(a1 + 1448) = 1;
            v11 = 5;
            goto LABEL_249;
          }
        }

        else
        {
          *(a1 + 1448) = 0;
        }

LABEL_97:
        v11 = 6;
        goto LABEL_249;
      }

LABEL_66:
      v9 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "NFCEE Notification Type: UNKNOWN");
      v10 = 0;
      goto LABEL_97;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Notification Type: ACTIVATED");
    v10 = *a3;
    v15 = *a3;
    if (*(a1 + 534))
    {
      *(a1 + 534) |= 2u;
      v15 = *a3;
    }

    v16 = sub_297E4F450(*(a1 + 9784), 122, 0, v15, 0);
    if (v16)
    {
      v9 = 1;
      if (v16 == 111)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "State machine has returned NFCSTATUS_BUSY ");
        a4 = 111;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "State machine has returned NFCSTATUS_FAILED ");
        a4 = 255;
      }
    }

    else
    {
      v9 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "State machine has returned NFCSTATUS_SUCCESS ");
      a4 = 0;
    }

    v11 = 15;
  }

LABEL_249:
  if ((*(a1 + 1060) & 7) != 0 && (*(a1 + 1060) & 0x38) == 0)
  {
    if (!*(a1 + 1448) && v11 == 24 && *(a1 + 1449) == 1)
    {
      if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2987) == 1 || *(a1 + 2992) == 1 || *(a1 + 2984) == 1)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Vas Inversion Timer Stopped");
        v66 = *(a1 + 9792);
        v67 = *(a1 + 768);
        phOsalNfc_Timer_Stop();
        sub_297E687D8(1, a1 + 9792, *(a1 + 768), 4u, 4u, "phLibNfc_SENtfHandler");
        v68 = *(a1 + 768);
        if (v68 && v68 != 0xFFFFFFFFFFFFLL)
        {
          v69 = *(a1 + 9792);
          phOsalNfc_Timer_Delete();
          *(a1 + 768) = 0xFFFFFFFFFFFFLL;
        }

        goto LABEL_263;
      }
    }

    else
    {
      if (v11 != 24)
      {
        goto LABEL_277;
      }

      if (*(a1 + 2985) == 1)
      {
LABEL_257:
        v61 = *(a1 + 768);
        if (v61 != 0xFFFFFFFFFFFFLL && v61)
        {
          v70 = *(a1 + 9792);
          phOsalNfc_Timer_Stop();
          sub_297E687D8(1, a1 + 9792, *(a1 + 768), 4u, 4u, "phLibNfc_SENtfHandler");
          v63 = *(a1 + 768);
          if (!v63)
          {
LABEL_276:
            v9 = 1;
            sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Timer Create Failed for VAS NTF timer");
            *(a1 + 768) = 0xFFFFFFFFFFFFLL;
            a4 = 12;
            goto LABEL_277;
          }
        }

        else
        {
          v62 = *(a1 + 9792);
          v63 = phOsalNfc_Timer_Create();
          *(a1 + 768) = v63;
          if (!v63)
          {
            goto LABEL_276;
          }
        }

        if (v63 != 0xFFFFFFFFFFFFLL)
        {
          v72 = *(a1 + 9792);
          if (!phOsalNfc_Timer_Start())
          {
            sub_297E687D8(1, a1 + 9792, *(a1 + 768), 4u, 4u, "phLibNfc_SENtfHandler");
            *(a1 + 1408) = v79;
            return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SENtfHandler");
          }

          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Timer Start Failed for VAS NTF timer");
          v73 = *(a1 + 9792);
          v74 = *(a1 + 768);
          phOsalNfc_Timer_Delete();
          *(a1 + 768) = 0xFFFFFFFFFFFFLL;
          a4 = 255;
          goto LABEL_278;
        }

        goto LABEL_276;
      }
    }

    if (*(a1 + 2986) == 1 || *(a1 + 2992) == 1 || *(a1 + 2984) == 1)
    {
      goto LABEL_257;
    }

LABEL_277:
    if (!v9)
    {
      return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SENtfHandler");
    }

    goto LABEL_278;
  }

  if (v11 != 24 || (*(a1 + 1060) & 0x10) == 0)
  {
    goto LABEL_277;
  }

LABEL_263:
  v64 = *(a1 + 9792);
  phOsalNfc_MemCopy();
  v65 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  *(a1 + 1449) = 0;
LABEL_278:
  if (*(a1 + 6696))
  {
    sub_297E54734(1, a1 + 9792, 4u, 4u, "phLibNfc_SENtfHandler :SE notification callback event");
    (*(a1 + 6696))(*(a1 + 9784), *(a1 + 6704), v11, v10, &v79, a4);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SENtfHandler");
}

uint64_t sub_297E54734(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 16;
    goto LABEL_19;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + a3 + 16);
    if (v11 >= a4 && v11 - 1 < 5)
    {
      if (!a5)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 16;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_19:
  v13 = *(v10 + a3);
  if (v13)
  {
    v14 = v13 >= a4;
  }

  else
  {
    v14 = 0;
  }

  if (v14 && a5 != 0 && v13 < 6)
  {
LABEL_32:

    return MEMORY[0x2A1C6E678]();
  }

  return result;
}

uint64_t sub_297E54838(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreDeleteList");
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
  if (v4 == a1)
  {
    v5 = *(a1 + 928 + 8 * *(a1 + 952));
    if (v5 != a1 + 640)
    {
      if (v5)
      {
        v6 = *(a1 + 2460);
        v7 = *(v5 + 264);
        if (v7)
        {
          do
          {
            v8 = v7;
            phOsalNfc_FreeMemory();
            v7 = *(v8 + 264);
          }

          while (v7);
        }

        else
        {
          v9 = *(a1 + 928 + 8 * *(a1 + 952));
        }

        phOsalNfc_FreeMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "List is empty");
      }
    }

    *(a1 + 928 + 8 * *(a1 + 952)) = 0;
    *(a1 + 952) = 0;
    *(a1 + 904) = 0;
    *(a1 + 900) = 0;
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(3, a1, 3u, 4u, "Invalid Core context passed");
  }

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreDeleteList");
}

uint64_t sub_297E54988(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v56 = 0;
  v57 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Process_ConfigDisc");
  v9 = 255;
  if (!a1 || !a4 || !a5)
  {
    goto LABEL_131;
  }

  if (*a4 == 3)
  {
    v10 = 0;
    goto LABEL_8;
  }

  if (*a4 == 1)
  {
    v10 = 0;
    a5 = a1 + 1048;
LABEL_8:
    v11 = 1;
    goto LABEL_10;
  }

  v11 = 0;
  v10 = 1;
LABEL_10:
  v12 = (a1 + 1504);
  if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    if (!*v12)
    {
      goto LABEL_12;
    }

    v57 = *v12;
    sub_297EE6F64(a1);
    v16 = sub_297ECD484(a1, &v56, &v57, 0);
    if (*(v57 + 4) == 23 && !v16)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "P2P Target detected as remote device type, try priority discovery");
      if (*(a1 + 6232))
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Found pClientTranscvCb as valid");
        v17 = *(a1 + 6232);
        v18 = *(a1 + 6240);
        *(a1 + 6232) = 0;
        *(a1 + 6240) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Invoking pClientTranscvCb...");
        sub_297E4D930(1, a1 + 9792, 4u, 17, "phLibNfc_Process_ConfigDisc");
        v17(*(a1 + 9784), v18, v56, 0, 146);
        goto LABEL_45;
      }

      v33 = "In P2P Initiator mode: No P2P Transceive call back found";
LABEL_44:
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v33);
      goto LABEL_45;
    }

    if (*(a1 + 6232) && !v16)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_Process_ConfigDisc:Remote Device Transceive in progress");
      v26 = *(a1 + 6232);
      v27 = *(a1 + 6240);
      *(a1 + 6232) = 0;
      *(a1 + 6240) = 0;
      sub_297F08DBC(*(a1 + 3088), 1);
      sub_297E4D930(1, a1 + 9792, 4u, 17, "phLibNfc_Process_ConfigDisc");
      goto LABEL_36;
    }

    v26 = *(a1 + 6216);
    if (v26)
    {
      v32 = *(a1 + 6224);
      *(a1 + 6216) = 0;
      *(a1 + 6224) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Found pClientNfcIpRxCb as valid, invoking the same");
      sub_297E4D930(1, a1 + 9792, 4u, 16, "phLibNfc_Process_ConfigDisc");
      v28 = *(a1 + 9784);
      v30 = v32;
      v29 = 0;
      goto LABEL_40;
    }

    if (a2 == 110 && *(a1 + 6472) && !v16)
    {
      sub_297F08DBC(*(a1 + 3088), 1);
      v21 = *(a1 + 6472);
      v46 = *(a1 + 6480);
      *(a1 + 6472) = 0;
      *(a1 + 6480) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Aborting Presence Check");
      sub_297E4D930(1, a1 + 9792, 4u, 22, "phLibNfc_Process_ConfigDisc");
      v23 = *(a1 + 9784);
      v24 = v46;
      v25 = 150;
      goto LABEL_32;
    }

    if (a2 == 110 && *(a1 + 6200) && !v16)
    {
      if ((**(a1 + 856) & 0xFE) != 0 && *(a1 + 9776) == 1)
      {
        sub_297F08DBC(*(a1 + 3088), 0);
        *(a1 + 9776) = 0;
      }

      else
      {
        sub_297F08DBC(*(a1 + 3088), 1);
      }

      v50 = *(a1 + 6200);
      v51 = *(a1 + 6208);
      *(a1 + 6200) = 0;
      *(a1 + 6208) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Aborting Connect");
      sub_297E4D930(1, a1 + 9792, 4u, 15, "phLibNfc_Process_ConfigDisc");
      v50(*(a1 + 9784), v51, 0, 0, 150);
      goto LABEL_45;
    }

    if (a2 == 110 && *(a1 + 6312) && !v16)
    {
      sub_297F08DBC(*(a1 + 3088), 1);
      sub_297E8E930(a1);
      v48 = *(a1 + 6312);
      v49 = *(a1 + 6320);
      *(a1 + 6312) = 0;
      *(a1 + 6320) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Aborting Check NDEF");
      sub_297E4D930(1, a1 + 9792, 4u, 23, "phLibNfc_Process_ConfigDisc");
      v48(*(a1 + 9784), v49, 0, 0, 150);
    }

    else
    {
      if (a2 == 110 && *(a1 + 6408) && !v16)
      {
        sub_297F08DBC(*(a1 + 3088), 1);
        sub_297E8E930(a1);
        v52 = *(a1 + 6408);
        v53 = *(a1 + 6416);
        *(a1 + 6408) = 0;
        *(a1 + 6416) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Aborting Read NDEF");
        v54 = a1 + 9792;
        v55 = 24;
      }

      else if (a2 == 110 && *(a1 + 6424) && !v16)
      {
        sub_297F08DBC(*(a1 + 3088), 1);
        sub_297E8E930(a1);
        v52 = *(a1 + 6424);
        v53 = *(a1 + 6432);
        *(a1 + 6424) = 0;
        *(a1 + 6432) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Aborting Write NDEF");
        v54 = a1 + 9792;
        v55 = 25;
      }

      else
      {
        if (a2 != 110 || !*(a1 + 6824) || v16)
        {
          if (!*(a1 + 6248) || v16)
          {
            goto LABEL_45;
          }

          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_Process_ConfigDisc:Internal Remote Device Transceive in progress");
          v26 = *(a1 + 6248);
          v27 = *(a1 + 6256);
          *(a1 + 6248) = 0;
          *(a1 + 6256) = 0;
          sub_297F08DBC(*(a1 + 3088), 1);
          sub_297E8E930(a1);
LABEL_36:
          v28 = *(a1 + 9784);
          v29 = v56;
          v30 = v27;
          if (a2 == 110)
          {
            v31 = 150;
LABEL_41:
            v26(v28, v30, v29, 0, v31);
            goto LABEL_45;
          }

LABEL_40:
          v31 = 146;
          goto LABEL_41;
        }

        sub_297F08DBC(*(a1 + 3088), 1);
        sub_297E8E930(a1);
        v52 = *(a1 + 6824);
        v53 = *(a1 + 6832);
        *(a1 + 6824) = 0;
        *(a1 + 6832) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Aborting Format NDEF");
        v54 = a1 + 9792;
        v55 = 26;
      }

      sub_297E4D930(1, v54, 4u, v55, "phLibNfc_Process_ConfigDisc");
      v52(*(a1 + 9784), v53, 150);
    }

    if (*(a1 + 6248))
    {
      *(a1 + 6248) = 0;
    }

    goto LABEL_45;
  }

  *v12 = 0;
  *(a1 + 1512) = 0;
LABEL_12:
  v13 = *(a1 + 1400);
  if (v13)
  {
    v14 = *(v13 + 4);
    if (v14 <= 0x1B && ((1 << v14) & 0x8000006) != 0)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "P2P Initiator/HCE detected as remote device type, try priority discovery");
      if (sub_297E56FC8(*(a1 + 9784)) == 8 && sub_297EE1404(*(a1 + 9784)) == 9 || sub_297E56FC8(*(a1 + 9784)) == 7 && sub_297EE1404(*(a1 + 9784)) == 9 || sub_297E56FC8(*(a1 + 9784)) == 9 && sub_297EE1404(*(a1 + 9784)) == 8)
      {
        *(a1 + 2952) = 0;
        *(a1 + 2960) = 0;
        v15 = "Discovery priority raised";
      }

      else
      {
        v15 = "No change in Discovery priority";
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v15);
      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EnablePriorityDiscovery");
      sub_297EE6F64(a1);
      v19 = *(a1 + 6744);
      if (v19)
      {
        v20 = *(a1 + 6752);
        *(a1 + 6744) = 0;
        *(a1 + 6752) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Found pClientNfcIpRxCb as valid, invoking the same");
        sub_297E4D930(1, a1 + 9792, 4u, 30, "phLibNfc_Process_ConfigDisc");
        v19(*(a1 + 9784), v20, 0, 146);
        goto LABEL_45;
      }

      v21 = *(a1 + 6728);
      if (v21)
      {
        v22 = *(a1 + 6736);
        *(a1 + 6728) = 0;
        *(a1 + 6736) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Found pClientNfcIpTxCb as valid, invoking the same");
        sub_297E4D930(1, a1 + 9792, 4u, 31, "phLibNfc_Process_ConfigDisc");
        v23 = *(a1 + 9784);
        v24 = v22;
        v25 = 146;
LABEL_32:
        v21(v23, v24, v25);
        goto LABEL_45;
      }

      v33 = "In P2P Target/HCE mode: No P2P Send/Receive call back found";
      goto LABEL_44;
    }
  }

LABEL_45:
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkDiscoveryTypeAndMode");
  if ((*a5 & 0xB83DF) != 0)
  {
    v34 = "Poll is enabled";
LABEL_47:
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v34);
LABEL_48:
    sub_297E56FC8(*(a1 + 9784));
    goto LABEL_49;
  }

  v36 = *(a5 + 6);
  if (*(a5 + 6) && v36 != 255 && (v36 & 0x77777777) != 0)
  {
    v34 = "P2P Initiator is enabled";
    goto LABEL_47;
  }

  if ((*a5 & 0x40000) != 0)
  {
    if (*(a5 + 7))
    {
      v39 = sub_297E56FC8(*(a1 + 9784));
      v40 = a2 - 109;
      if (v40 < 2 && v39 == 4)
      {
        v42 = v10;
      }

      else
      {
        v42 = 0;
      }

      if (v42)
      {
        goto LABEL_48;
      }

      goto LABEL_104;
    }

    if (*(a5 + 8))
    {
      v34 = "P2P Target mode is enabled";
      goto LABEL_47;
    }
  }

  else
  {
    if (*(a1 + 362))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Card emulation is enabled");
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    if (!*(a5 + 9))
    {
      v37 = 2;
    }

    if (!v37)
    {
      goto LABEL_48;
    }

    if (v37 != 2)
    {
      v40 = a2 - 109;
LABEL_104:
      v43 = sub_297E56FC8(*(a1 + 9784));
      if (v40 <= 1 && v43 == 3)
      {
        v45 = v10;
      }

      else
      {
        v45 = 1;
      }

      if ((v45 & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_49;
    }
  }

  if (v10)
  {
    goto LABEL_130;
  }

LABEL_49:
  if (*(a1 + 2984) == 1)
  {
    if ((*(a5 + 80) & 3) == 2)
    {
      v35 = "LPCD Trace mode is wrongly enabled";
LABEL_129:
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v35);
LABEL_130:
      sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkDiscoveryTypeAndMode");
      v9 = 1;
      goto LABEL_131;
    }

    if (*(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
    {
      goto LABEL_71;
    }
  }

  else if (*(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
  {
    if (*(a5 + 12))
    {
      v35 = "SUICA is wrongly enabled";
      goto LABEL_129;
    }

    if ((*(a5 + 12) & 2) != 0)
    {
      v35 = "VAS Express is wrongly enabled";
      goto LABEL_129;
    }

    if ((*(a5 + 12) & 4) != 0)
    {
      v35 = "Generic-A Express is wrongly enabled";
      goto LABEL_129;
    }

    if ((*(a5 + 80) & 3) != 0)
    {
      v35 = "LPCD is wrongly enabled";
      goto LABEL_129;
    }

    goto LABEL_71;
  }

  if ((*(a5 + 80) & 2) != 0)
  {
    v35 = "LPCD Trace mode is not applicable for this platform";
    goto LABEL_129;
  }

LABEL_71:
  if (*(a5 + 84) == 1 && (*a5 & 0x40000) != 0 && !(*a5 & 0x80000 | *(a5 + 12) & 7))
  {
    v35 = "LPCD Assistance mode cannot be enabled without CE/express/RF Detect enabled";
    goto LABEL_129;
  }

  if (*(a5 + 86) > 1u)
  {
    v35 = "Multi-Tag Enable Invalid Input Parameter";
    goto LABEL_129;
  }

  v38 = *(a5 + 88);
  if (v38 == 1 || v38 == 3)
  {
    if ((*a5 & 0xF83DF) != 0x40000 || !*(a5 + 7) || *(a5 + 9))
    {
      goto LABEL_95;
    }
  }

  else if (v38 == 2 && (*a5 & 3) == 0)
  {
LABEL_95:
    v35 = "eSE reader mode Invalid Input Parameter";
    goto LABEL_129;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkDiscoveryTypeAndMode");
  v9 = sub_297E57090(*(a1 + 3088));
  if (!v9)
  {
    *(a1 + 1032) = v11;
  }

LABEL_131:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Process_ConfigDisc");
  return v9;
}

uint64_t sub_297E55558(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_VldtRmtDevConnectedHandle");
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
    v7 = 255;
    if (a2)
    {
      if (v6 == a1)
      {
        v8 = *(a1 + 72);
        if (v8)
        {
          v9 = 0;
          while (*(a1 + 80 + 8 * v9) != a2)
          {
            if (v8 <= ++v9)
            {
              goto LABEL_11;
            }
          }

          v7 = 0;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VldtRmtDevConnectedHandle");
  return v7;
}

uint64_t sub_297E5563C(uint64_t a1, int *a2, uint64_t a3)
{
  v17 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Actv2Init");
  if (a1 && a2 && a3)
  {
    v6 = 0;
    if (*(a1 + 1032))
    {
      v7 = a1 + 1048;
    }

    else
    {
      v7 = a3;
    }

    v8 = *a2;
    *(a1 + 1484) = *a2;
    if (v8 != 2 && v8 != 7)
    {
      if (*(a1 + 9780) == 1)
      {
        *(a1 + 9779) = 1;
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Stop Discovery priority raised");
        v6 = 13;
      }

      else
      {
        if (*(a1 + 2984) == 1)
        {
          *(a1 + 2960) = &qword_2A1A93070;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v10 = qword_2A1A93070;
          if (qword_2A1A93070)
          {
            v10 = 0;
            v11 = off_2A1A93080;
            do
            {
              ++v10;
              v12 = *v11;
              v11 += 2;
            }

            while (v12);
          }
        }

        else if (*(v7 + 88) == 1)
        {
          *(a1 + 2960) = &qword_2A1A92F70;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v10 = qword_2A1A92F70;
          if (qword_2A1A92F70)
          {
            v10 = 0;
            v13 = off_2A1A92F80;
            do
            {
              ++v10;
              v14 = *v13;
              v13 += 2;
            }

            while (v14);
          }
        }

        else
        {
          if (*(a1 + 745) == 1 && !sub_297EE0A34(*(a1 + 9784), 1))
          {
            *(a1 + 560) = a1 + 440;
            *(a1 + 572) = 0;
            sub_297EECFCC(a1, 1, 0, &v17);
            sub_297E4F450(*(a1 + 9784), v17, 1, 0, 0);
            *(a1 + 745) = 0;
          }

          *(a1 + 1472) = 0;
          *(a1 + 2960) = off_2A1A931E0;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v10 = off_2A1A931E0[0];
          if (off_2A1A931E0[0])
          {
            v10 = 0;
            v15 = off_2A1A931F0;
            do
            {
              ++v10;
              v16 = *v15;
              v15 += 2;
            }

            while (v16);
          }
        }

        *(a1 + 2953) = v10;
        v6 = sub_297E5588C(a1, 0, 0);
      }
    }
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid LibNfc context passed or Invalid parameter");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Actv2Init");
  return v6;
}

uint64_t sub_297E5588C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SeqHandler");
  v6 = a1 != 0;
  if (!a1)
  {
    goto LABEL_6;
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
  if (v9 != a1)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v17 = sub_297E55EF8(a1, *(a1 + 2960));
  if (*(a1 + 9792))
  {
    v18 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v18 = &gphNfc_DebugInfo_Prim;
  }

  *v18 = *v18 & 0xFFFE003F | ((v17 & 0x3F) << 11) | ((*(a1 + 2952) & 0x1F) << 6);
  if (a2 == 36 || a2 == 15)
  {
LABEL_68:
    sub_297E8CD74(a1, a2);
    goto LABEL_69;
  }

  if (!a2)
  {
    v19 = *(a1 + 2952);
    v10 = 1;
    if (v19 > *(a1 + 2953) || !*(a1 + 2953))
    {
      goto LABEL_7;
    }

    if (!*(a1 + 2952))
    {
      if (*(a1 + 2954) == 1)
      {
        *(a1 + 2954) = 0;
        v26 = *(a1 + 2960);
      }

      else
      {
        v35 = sub_297E56A50(*(a1 + 3000), *(a1 + 3088));
        v26 = *(a1 + 2960);
        if (v26 != off_2A1A92D90)
        {
          a2 = v35;
          if (v35)
          {
            goto LABEL_69;
          }
        }
      }

      if (!v26)
      {
        goto LABEL_94;
      }

      v27 = v26[2 * *(a1 + 2952)];
      if (!v27)
      {
        goto LABEL_94;
      }

      v28 = (v27)(a1, 0, a3);
      if (!v28)
      {
        v29 = *(a1 + 2952);
        if (*(a1 + 2953) > v29)
        {
          v30 = v29 + 1;
          *(a1 + 2952) = v30;
          v31 = *(*(a1 + 2960) + 16 * v30);
          if (v31)
          {
            v28 = v31(a1, 0, a3);
            if (v28)
            {
              goto LABEL_84;
            }
          }

          while (1)
          {
            v34 = *(a1 + 2952);
            if (*(a1 + 2953) <= v34)
            {
              break;
            }

            v32 = v34 + 1;
            *(a1 + 2952) = v32;
            v33 = *(*(a1 + 2960) + 16 * v32);
            if (v33)
            {
              a2 = v33(a1, 0, a3);
            }

            else
            {
              a2 = 0;
            }

            v10 = 1;
            if (a2)
            {
              goto LABEL_7;
            }
          }
        }

        goto LABEL_94;
      }

      goto LABEL_84;
    }

    v20 = *(a1 + 2960);
    if (v20 && (v21 = *(v20 + 16 * (v19 - 1) + 8)) != 0 && !*(a1 + 2930))
    {
      a2 = v21(a1, a2, a3);
    }

    else
    {
      *(a1 + 2930) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Sync Handler resending in progress");
    }

    if (a2 == 111)
    {
LABEL_16:
      v6 = 1;
      v10 = 1;
      goto LABEL_17;
    }

    if (!a2)
    {
      if (*(a1 + 2952) == *(a1 + 2953))
      {
LABEL_81:
        v36 = *(a1 + 2960);
        if (v36)
        {
          v37 = *(v36 + 16 * *(a1 + 2952));
          if (v37)
          {
            v28 = v37(a1, 0, a3);
            if (v28)
            {
              goto LABEL_84;
            }

            v38 = *(a1 + 2952);
            if (*(a1 + 2953) > v38)
            {
              v39 = v38 + 1;
              *(a1 + 2952) = v39;
              v40 = *(*(a1 + 2960) + 16 * v39);
              if (v40)
              {
                v28 = v40(a1, 0, a3);
                if (v28)
                {
                  goto LABEL_84;
                }
              }

              while (1)
              {
                v43 = *(a1 + 2952);
                if (*(a1 + 2953) <= v43)
                {
                  break;
                }

                v41 = v43 + 1;
                *(a1 + 2952) = v41;
                v42 = *(*(a1 + 2960) + 16 * v41);
                if (v42)
                {
                  a2 = v42(a1, 0, a3);
                }

                else
                {
                  a2 = 0;
                }

                v10 = 1;
                if (a2)
                {
                  goto LABEL_7;
                }
              }
            }
          }
        }

LABEL_94:
        a2 = 0;
        v6 = 1;
        v10 = 1;
        goto LABEL_95;
      }

      if (*(a1 + 2954) == 1)
      {
        *(a1 + 2954) = 0;
        goto LABEL_81;
      }

      v28 = sub_297E56A50(*(a1 + 3000), *(a1 + 3088));
      if (!v28)
      {
        goto LABEL_81;
      }

LABEL_84:
      a2 = v28;
      goto LABEL_69;
    }

    *(a1 + 2952) = *(a1 + 2953);
    if (a2 != 36 && a2 != 15)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  *(a1 + 2952) = *(a1 + 2953);
LABEL_69:
  v10 = 1;
LABEL_7:
  if (a2 && a2 != 13 && a2 != 111)
  {
    v11 = v10 ^ 1;
    if (!a1)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      if (*(a1 + 2952) || *(a1 + 2976))
      {
        *(a1 + 2952) = *(a1 + 2953);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  if (v10 && v6 && a2 == 111)
  {
    if (*(a1 + 2976) > 7u)
    {
      if (*(a1 + 9792))
      {
        v16 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v16 = &gphNfc_DebugInfo_Prim;
      }

      v16[1] |= 0x1000000u;
      *(a1 + 2976) = 0;
      *(a1 + 2952) = *(a1 + 2953);
      v6 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Send Retry Failed - Maximum No Of retries on NCI Send Busy reached");
      sub_297E96818(*(a1 + 9784), 202);
      sub_297E5A3A8(*(a1 + 3000), 0);
    }

    else
    {
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "bResendRetryCount");
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NCI Send busy");
      if (a3)
      {
        *(a1 + 2968) = a3;
      }

      v12 = *(a1 + 2944);
      if (v12 && v12 != 0xFFFFFFFFFFFFLL)
      {
        v13 = *(a1 + 9792);
        phOsalNfc_Timer_Delete();
        *(a1 + 2944) = 0xFFFFFFFFFFFFLL;
      }

      v14 = *(a1 + 9792);
      v15 = phOsalNfc_Timer_Create();
      *(a1 + 2944) = v15;
      if (v15 != 0xFFFFFFFFFFFFLL && v15)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Libnfc sync handler Timer Created Successfully");
        v22 = *(a1 + 9792);
        v23 = *(a1 + 2944);
        if (!phOsalNfc_Timer_Start())
        {
          v6 = 1;
          sub_297E687D8(1, a1 + 9792, *(a1 + 2944), 4u, 4u, "phLibNfc_SeqHandler");
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Libnfc sync handler wait timer started..");
          a2 = 13;
          goto LABEL_98;
        }

        v6 = 1;
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to start Libnfc sync handler wait timer!");
        v24 = *(a1 + 9792);
        v25 = *(a1 + 2944);
        phOsalNfc_Timer_Delete();
        *(a1 + 2944) = 0;
      }

      else
      {
        v6 = 1;
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Libnfc sync handler Timer Create failed!!");
      }

      *(a1 + 2952) = *(a1 + 2953);
      *(a1 + 2976) = 0;
    }

    a2 = 255;
LABEL_98:
    v10 = 1;
    goto LABEL_99;
  }

LABEL_95:
  if (v6 && v10)
  {
    *(a1 + 2976) = 0;
    v6 = 1;
    goto LABEL_98;
  }

LABEL_99:
  if (v6 && v10)
  {
    v44 = *(a1 + 2952);
    if (v44 == *(a1 + 2953))
    {
      v45 = *(a1 + 2960);
      if (v45)
      {
        v46 = *(v45 + 16 * v44 + 8);
        if (v46)
        {
          v46(a1, a2, a3);
        }
      }
    }

    else
    {
      *(a1 + 2952) = v44 + 1;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SeqHandler");
  return a2;
}

uint64_t sub_297E55EF8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetLibNfcSeqId");
  if (a2)
  {
    if (a2 == off_2A1A935C0)
    {
      a2 = 1;
    }

    else if (a2 == off_2A1A93630)
    {
      a2 = 2;
    }

    else if (a2 == off_2A1A93680)
    {
      a2 = 77;
    }

    else if (a2 == &qword_2A1A936C0)
    {
      a2 = 78;
    }

    else if (a2 == &qword_2A1A936E0)
    {
      a2 = 4;
    }

    else if (a2 == off_2A1A93700)
    {
      a2 = 3;
    }

    else if (a2 == off_2A1A90DB8)
    {
      a2 = 5;
    }

    else if (a2 == off_2A1A90EA8)
    {
      a2 = 7;
    }

    else if (a2 == &qword_2A1A91038)
    {
      a2 = 8;
    }

    else if (a2 == &qword_2A1A90FE8)
    {
      a2 = 9;
    }

    else if (a2 == off_2A1A90E88)
    {
      a2 = 10;
    }

    else if (a2 == off_2A1A92E80)
    {
      a2 = 11;
    }

    else if (a2 == &qword_2A1A92EF0)
    {
      a2 = 75;
    }

    else if (a2 == &qword_2A1A93730)
    {
      a2 = 76;
    }

    else if (a2 == &qword_2A1A92FD0)
    {
      a2 = 12;
    }

    else if (a2 == off_2A1A93120)
    {
      a2 = 13;
    }

    else if (a2 == &qword_2A1A93190)
    {
      a2 = 14;
    }

    else if (a2 == &qword_2A1A90BF8)
    {
      a2 = 18;
    }

    else if (a2 == &qword_2A1A93000)
    {
      a2 = 19;
    }

    else if (a2 == &qword_2A1A93020)
    {
      a2 = 20;
    }

    else if (a2 == off_2A1A931E0)
    {
      a2 = 22;
    }

    else if (a2 == off_2A1A93050)
    {
      a2 = 23;
    }

    else if (a2 == off_2A1A930C0)
    {
      a2 = 24;
    }

    else if (a2 == &qword_2A1A93070)
    {
      a2 = 27;
    }

    else if (a2 == &qword_2A1A93100)
    {
      a2 = 26;
    }

    else if (a2 == off_2A1A93270)
    {
      a2 = 28;
    }

    else if (a2 == off_2A1A93360)
    {
      a2 = 29;
    }

    else if (a2 == off_2A1A932E0)
    {
      a2 = 30;
    }

    else if (a2 == &qword_2A1A90CE8)
    {
      a2 = 31;
    }

    else if (a2 == off_2A1A90D58)
    {
      a2 = 32;
    }

    else if (a2 == &qword_2A1A91068)
    {
      a2 = 33;
    }

    else if (a2 == &qword_2A1A910C8)
    {
      a2 = 79;
    }

    else if (a2 == off_2A1A933E0)
    {
      a2 = 34;
    }

    else if (a2 == off_2A1A92B40)
    {
      a2 = 35;
    }

    else if (a2 == &qword_2A1A92C00)
    {
      a2 = 36;
    }

    else if (a2 == &qword_2A1A92C20)
    {
      a2 = 37;
    }

    else if (a2 == &qword_2A1A92C50)
    {
      a2 = 38;
    }

    else if (a2 == &qword_2A1A92C90)
    {
      a2 = 39;
    }

    else if (a2 == off_2A1A92CC0)
    {
      a2 = 40;
    }

    else if (a2 == &qword_2A1A92CE0)
    {
      a2 = 41;
    }

    else if (a2 == gphLibNfc_GetMemDumpSequence)
    {
      a2 = 42;
    }

    else if (a2 == gphLibNfc_GetFwVersionSequence)
    {
      a2 = 43;
    }

    else if (a2 == off_2A1A93400)
    {
      a2 = 44;
    }

    else if (a2 == off_2A1A93440)
    {
      a2 = 45;
    }

    else if (a2 == off_2A1A93470)
    {
      a2 = 46;
    }

    else if (a2 == off_2A1A93490)
    {
      a2 = 47;
    }

    else if (a2 == off_2A1A934F0)
    {
      a2 = 48;
    }

    else if (a2 == off_2A1A93750)
    {
      a2 = 49;
    }

    else if (a2 == off_2A1A93780)
    {
      a2 = 50;
    }

    else if (a2 == &qword_2A1A937B0)
    {
      a2 = 53;
    }

    else if (a2 == &qword_2A1A937D0)
    {
      a2 = 54;
    }

    else if (a2 == &qword_2A1A93520)
    {
      a2 = 51;
    }

    else if (a2 == off_2A1A93800)
    {
      a2 = 52;
    }

    else if (a2 == &qword_2A1A93830)
    {
      a2 = 55;
    }

    else if (a2 == &qword_2A1A93850)
    {
      a2 = 56;
    }

    else if (a2 == &qword_2A1A93880)
    {
      a2 = 57;
    }

    else if (a2 == &qword_2A1A938A0)
    {
      a2 = 58;
    }

    else if (a2 == &qword_2A1A938C0)
    {
      a2 = 60;
    }

    else if (a2 == &qword_2A1A938E0)
    {
      a2 = 59;
    }

    else if (a2 == off_2A1A93900)
    {
      a2 = 61;
    }

    else if (a2 == &qword_2A1A93920)
    {
      a2 = 62;
    }

    else if (a2 == off_2A1A93950)
    {
      a2 = 63;
    }

    else if (a2 == gphLibNfc_IoctlLoopbackSequence)
    {
      a2 = 64;
    }

    else if (a2 == &qword_2A1A93980)
    {
      a2 = 65;
    }

    else if (a2 == &qword_2A1A939A0)
    {
      a2 = 66;
    }

    else if (a2 == &qword_2A1A939C0)
    {
      a2 = 67;
    }

    else if (a2 == &qword_2A1A939E0)
    {
      a2 = 68;
    }

    else if (a2 == &qword_2A1A93A00)
    {
      a2 = 69;
    }

    else if (a2 == off_2A1A93A20)
    {
      a2 = 70;
    }

    else if (a2 == off_2A1A93A40)
    {
      a2 = 71;
    }

    else if (a2 == &qword_2A1A93A60)
    {
      a2 = 73;
    }

    else if (a2 == &qword_2A1A93A80)
    {
      a2 = 74;
    }

    else if (a2 == &qword_2A1A93AA0)
    {
      a2 = 72;
    }

    else if (a2 == off_2A1A93320)
    {
      a2 = 80;
    }

    else if (a2 == gphLibNfc_IoctlSetPropRfConfig)
    {
      a2 = 82;
    }

    else if (a2 == gphLibNfc_IoctlGetRfConfig)
    {
      a2 = 83;
    }

    else if (a2 == gphLibNfc_IoctlSetRfConfig)
    {
      a2 = 84;
    }

    else if (a2 == off_2A1A93210)
    {
      a2 = 93;
    }

    else if (a2 == off_2A1A93AC0)
    {
      a2 = 97;
    }

    else if (a2 == gphLibNfc_SysConfigSeq)
    {
      a2 = 99;
    }

    else if (a2 == gphLibNfc_IoctlGetSpmiGpio)
    {
      a2 = 101;
    }

    else if (a2 == off_2A1A93540)
    {
      a2 = 106;
    }

    else if (a2 == off_2A1A93560)
    {
      a2 = 81;
    }

    else if (a2 == off_2A1A929E0)
    {
      a2 = 104;
    }

    else if (a2 == gphLibNfc_IoctlSetPropConfigSigned)
    {
      a2 = 85;
    }

    else if (a2 == &qword_2A1A92D60)
    {
      a2 = 91;
    }

    else if (a2 == off_2A1A92D90)
    {
      a2 = 94;
    }

    else if (a2 == &qword_2A1A92900)
    {
      a2 = 111;
    }

    else if (a2 == off_2A1A92E00)
    {
      a2 = 110;
    }

    else if (a2 == &qword_2A1A92DB0)
    {
      a2 = 119;
    }

    else if (a2 == off_2A1A92E40)
    {
      a2 = 120;
    }

    else if (a2 == off_2A1A92DE0)
    {
      a2 = 121;
    }

    else if (a2 == off_2A1A92E20)
    {
      a2 = 122;
    }

    else if (a2 == &qword_2A1A928E0)
    {
      a2 = 126;
    }

    else if (a2 == off_2A1A91088)
    {
      a2 = 95;
    }

    else if (a2 == off_2A1A90C18)
    {
      a2 = 96;
    }

    else if (a2 == &qword_2A1A93AE0)
    {
      a2 = 98;
    }

    else if (a2 == gphLibNfc_IoctlGetRfRegVal)
    {
      a2 = 100;
    }

    else if (a2 == gphLibNfc_IoctlSetRfCalData)
    {
      a2 = 102;
    }

    else if (a2 == gphLibNfc_IoctlGetRfCalData)
    {
      a2 = 103;
    }

    else if (a2 == off_2A1A92FB0)
    {
      a2 = 105;
    }

    else if (a2 == &qword_2A1A92AE0)
    {
      a2 = 109;
    }

    else if (a2 == &qword_2A1A92970)
    {
      a2 = 115;
    }

    else if (a2 == &qword_2A1A92E60)
    {
      a2 = 116;
    }

    else if (a2 == off_2A1A92F20)
    {
      a2 = 86;
    }

    else if (a2 == &qword_2A1A92F70)
    {
      a2 = 92;
    }

    else if (a2 == &qword_2A1A92A40)
    {
      a2 = 117;
    }

    else if (a2 == &qword_2A1A92AB0)
    {
      a2 = 118;
    }

    else if (a2 == off_2A1A90C48)
    {
      a2 = 123;
    }

    else if (a2 == off_2A1A92B10)
    {
      a2 = 125;
    }

    else if (a2 == &qword_2A1A929B0)
    {
      a2 = 114;
    }

    else if (a2 == &qword_2A1A90CA8)
    {
      a2 = 107;
    }

    else if (a2 == &qword_2A1A90CC8)
    {
      a2 = 108;
    }

    else if (a2 == off_2A1A90C68)
    {
      a2 = 124;
    }

    else if (a2 == off_2A1A90C88)
    {
      a2 = 112;
    }

    else if (a2 == &qword_2A1A92940)
    {
      a2 = 113;
    }

    else if (a2 == &qword_2A1A93B00)
    {
      a2 = 127;
    }

    else
    {
      a2 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetLibNfcSeqId");
  return a2;
}

uint64_t sub_297E56A50(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 3u, 5u, "phNciNfc_ValidateNciSendState");
  if (sub_297E56AFC(v5) == 1)
  {
    if (!a2 || !*(a2 + 6624))
    {
      a2 = 111;
      goto LABEL_11;
    }

    v3 = 0;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v3 = 111;
  }

  if (*(a2 + 5992))
  {
    a2 = v3;
  }

  else
  {
    a2 = 0;
  }

LABEL_11:
  sub_297E4DFAC(0, &v5, 3u, 5u, "phNciNfc_ValidateNciSendState");
  return a2;
}

uint64_t sub_297E56AFC(uint64_t a1)
{
  v7 = a1;
  sub_297E4E1B4(0, &v7, 5u, 5u, "phUtilNfc_GetMuxState");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (v7 == *v4)
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

  v5 = v4[72];
LABEL_6:
  sub_297E4DFAC(0, &v7, 5u, 5u, "phUtilNfc_GetMuxState");
  return v5;
}

uint64_t sub_297E56BA4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendDeactIdleCmd");
  if (a1)
  {
    sub_297E56C78(*(a1 + 9784));
    v2 = sub_297E56D18(*(a1 + 3088), 0, sub_297E5BA84, a1);
    if (v2 == 13)
    {
      if (*(a1 + 9777) == 1)
      {
        v3 = *(a1 + 3088);
        if (v3)
        {
          v4 = v3[428];
          if (v4)
          {
            v3[98] = v4;
            v3[99] = v3[469];
          }
        }

        *(a1 + 9777) = 0;
      }

      *(a1 + 9778) = 0;
      v2 = 13;
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendDeactIdleCmd");
  return v2;
}

uint64_t sub_297E56C78(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 8u, 5u, "phFriNfc_NDEF_Deinit");
  sub_297E57170(v4, &v3);
  if (v3)
  {
    v1 = *(v3 + 2720);
    phOsalNfc_FreeMemory();
    sub_297E9F46C(v4, 0);
  }

  else
  {
    sub_297E4E0B0(0, &v4, 8u, 4u, "NDEF context is NULL");
  }

  return sub_297E4DFAC(0, &v4, 8u, 5u, "phFriNfc_NDEF_Deinit");
}

uint64_t sub_297E56D18(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Deactivate");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_InterfaceDeactivate)\n");
    v12 = 49;
    goto LABEL_14;
  }

  if (!a3)
  {
    v12 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed (phNciNfc_InterfaceDeactivate)\n");
    goto LABEL_14;
  }

  *(a1 + 3360) = 0;
  v8 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available(phNciNfc_Deactivate)\n");
    v12 = 12;
    goto LABEL_14;
  }

  v10 = Memory_Typed;
  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  v11 = sub_297E5722C(a1, a1 + 48, a2, (a1 + 172));
  if (v11)
  {
    v12 = v11;
LABEL_6:
    v13 = *(a1 + 6524);
    phOsalNfc_FreeMemory();
    *(a1 + 896) = 0;
    *(a1 + 904) = 0;
    goto LABEL_14;
  }

  *(a1 + 6658) = 0;
  if (*(a1 + 4640))
  {
    v14 = *(a1 + 6524);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
  }

  sub_297E57378(a1, a1 + 48);
  *(a1 + 172) = a2;
  *v10 = a2;
  *(a1 + 896) = v10;
  *(a1 + 904) = 1;
  sub_297E56EF8(a1 + 936, 0);
  *(a1 + 3776) = off_2A1A907F8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A907F8);
  v12 = sub_297E57A00(a1, 0, 0);
  if (v12 != 13 && *(a1 + 896))
  {
    goto LABEL_6;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Deactivate");
  return v12;
}

uint64_t sub_297E56EF8(uint64_t a1, int a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvMgrDeRegDataCb");
  if (a1)
  {
    v4 = a1 + 2184;
    v5 = 3;
    do
    {
      if (*(v4 + 16) && *(v4 + 1) == a2)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        sub_297E50EBC(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreRecvMgrDeRegDataCb:De-registered data call back fun registered on                                logical connection");
      }

      v4 += 24;
      --v5;
    }

    while (v5);
  }

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvMgrDeRegDataCb");
}

uint64_t sub_297E56FC8(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5u, 5u, "phLibNfc_SM_GetCurrState");
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
      v5 = qword_2A18BE7E0;
      goto LABEL_8;
    }
  }

  v6 = &qword_2A18BE770;
  if (*(v4 + 2) != 1)
  {
    v6 = &qword_2A18BE7E0;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5u, 5u, "phLibNfc_SM_GetCurrState");
  return v5;
}

uint64_t sub_297E57090(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StopRespWaitTimer");
  if (a1)
  {
    if (*(a1 + 1928) == 1)
    {
      v2 = *(a1 + 6524);
      v3 = *(a1 + 1920);
      phOsalNfc_Timer_Stop();
      *(a1 + 6512) = 0;
      *(a1 + 1928) = 0;
      v4 = 0;
      if (*(a1 + 6524))
      {
        v5 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v5 = &gphNfc_DebugInfo_Prim;
      }

      v5[1] &= ~0x10u;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StopRespWaitTimer");
  return v4;
}

uint64_t sub_297E57170(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetNdefNfcContext");
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
    *a2 = v6[3];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetNdefNfcContext");
  return v7;
}

uint64_t sub_297E5722C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateDeActvType");
  if (*(a1 + 200) == 1 || *(a1 + 6658) == 1)
  {
    goto LABEL_3;
  }

  v13 = *(a2 + 24);
  v12 = (a2 + 24);
  if (!v13)
  {
    if (a3)
    {
      v14 = *(a1 + 3424);
      *(a1 + 792) = *(a1 + 3752);
    }

    else
    {
      v14 = 0;
    }

    *a4 = a3;
    *(a1 + 784) = v14;
    if (!*v12)
    {
      v10 = 0;
      goto LABEL_5;
    }
  }

  v15 = 0;
  if (sub_297E77BBC(a1, v12, 0, &v15, 1))
  {
    v8 = 0;
    *a4 = a3;
LABEL_13:
    v9 = 784;
    goto LABEL_4;
  }

  v10 = sub_297E77A80(a1, v15, a3);
  if (v10)
  {
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v8 = 0;
    *a4 = 4;
    goto LABEL_13;
  }

  *a4 = a3;
LABEL_3:
  *(a1 + 784) = *(a1 + 3424);
  v8 = *(a1 + 3752);
  v9 = 792;
LABEL_4:
  v10 = 0;
  *(a1 + v9) = v8;
LABEL_5:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateDeActvType");
  return v10;
}

uint64_t sub_297E57378(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_HandlePriorityDeactv");
  if (a1 && a2)
  {
    if (*(a2 + 24))
    {
      v8 = 0;
      if (sub_297E77BBC(a1, (a2 + 24), 0, &v8, 1))
      {
        return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_HandlePriorityDeactv");
      }

      v4 = v8;
    }

    else
    {
      v4 = *(a2 + 32);
      if (!v4)
      {
        return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_HandlePriorityDeactv");
      }
    }

    if (*(v4 + 4) == 23)
    {
      BYTE4(v7) = 0;
      LODWORD(v6) = 0;
      sub_297F00C28(a1 + 936, &v6, sub_297EFF2DC);
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_HandlePriorityDeactv");
}

uint64_t sub_297E57450(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_FindMuxNextPktIndex");
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
    v8 = a2;
    while (1)
    {
      if ((v8 + 1) == 6)
      {
        v8 = 0;
      }

      else
      {
        ++v8;
      }

      if (*(a1 + 4888 + 184 * v8 + 172) == 1)
      {
        break;
      }

      if (a2 == v8)
      {
        v8 = 6;
        break;
      }
    }

    v7 = v8;
  }

  else
  {
LABEL_6:
    v7 = 6;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_FindMuxNextPktIndex");
  return v7;
}

uint64_t sub_297E57538(uint64_t a1, int a2, unsigned int a3)
{
  v7 = a1;
  sub_297E4E1B4(0, &v7, 3u, 5u, "phNciNfc_CoreUtilsValidateRspPktOID");
  v5 = 255;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 15)
      {
        goto LABEL_16;
      }

      if (a3 >= 0x40 || ((0xFA9F7F26BA1321CFLL >> a3) & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:
      v5 = 0;
      goto LABEL_16;
    }

    if (a3 < 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    sub_297E50EBC(0, &v7, 3u, 1u, "Unknown OID received");
    goto LABEL_16;
  }

  if (!a2)
  {
    if (a3 < 6)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (a2 == 1)
  {
    if (a3 >= 0xC || ((0x95Fu >> a3) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_16:
  sub_297E4DFAC(0, &v7, 3u, 5u, "phNciNfc_CoreUtilsValidateRspPktOID");
  return v5;
}

uint64_t sub_297E57648(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DeActivateRsp");
  if (!a1 || a2)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 3800);
  if (!v4 || *(a1 + 3808) != 1)
  {
    v7 = "Invalid parameters (phNciNfc_DeActivateRsp)\n";
LABEL_13:
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v7);
    a2 = 255;
    goto LABEL_14;
  }

  v5 = *v4;
  if (v5 == 241)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Suica express transaction ongoing");
    a2 = 81;
    goto LABEL_14;
  }

  if (v5 == 6)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "NFCC is in RFST_IDLE state");
    a2 = 58;
    goto LABEL_14;
  }

  if (*v4)
  {
    v7 = "Invalid response (phNciNfc_DeActivateRsp)\n";
    goto LABEL_13;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Deactivate process success");
  if (*(a1 + 6521) == 1)
  {
    v6 = *(a1 + 3424);
    if (v6)
    {
      *(a1 + 784) = v6;
      *(a1 + 792) = *(a1 + 3752);
    }

    a2 = 0;
    *(a1 + 6521) = 0;
  }

  else
  {
    a2 = 0;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DeActivateRsp");
  return a2;
}

uint64_t sub_297E577AC(uint64_t a1, void *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_getSequenceLength");
  if (a2 && *a2)
  {
    v4 = 0;
    v5 = a2 + 2;
    do
    {
      ++v4;
      v6 = *v5;
      v5 += 2;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_getSequenceLength");
  return v4;
}

uint64_t sub_297E5783C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SeqHandler");
  if (!a1 || a2)
  {
    if (!a1)
    {
      goto LABEL_30;
    }

    v8 = sub_297E6045C(a1, *(a1 + 3776));
    v9 = *(a1 + 3977);
    if (*(a1 + 6524))
    {
      v10 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v10 = &gphNfc_DebugInfo_Prim;
    }

    v10[1] = v10[1] & 0xFFF003FF | ((v8 & 0x1F) << 15) | ((v9 & 0x1F) << 10);
    *(a1 + 3976) = v9;
    if (a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a1 + 3976);
    if (v4 > *(a1 + 3977))
    {
      goto LABEL_24;
    }

    v5 = *(a1 + 3776);
    if (!v5)
    {
      goto LABEL_24;
    }

    if (*(a1 + 3976))
    {
      v6 = *(v5 + 16 * (v4 - 1) + 8);
      if (v6)
      {
        v7 = v6(a1, 0);
        if (v7)
        {
          a2 = v7;
          *(a1 + 3976) = *(a1 + 3977);
LABEL_14:
          if (a2 != 13 && *(a1 + 3976))
          {
            v11 = sub_297E6045C(a1, *(a1 + 3776));
            v12 = *(a1 + 3977);
            if (*(a1 + 6524))
            {
              v13 = &gphNfc_DebugInfo_Sec;
            }

            else
            {
              v13 = &gphNfc_DebugInfo_Prim;
            }

            v13[1] = v13[1] & 0xFFF003FF | ((v11 & 0x1F) << 15) | ((v12 & 0x1F) << 10);
            *(a1 + 3976) = v12;
          }

          goto LABEL_25;
        }

        v5 = *(a1 + 3776);
        v4 = *(a1 + 3976);
      }
    }

    v14 = *(v5 + 16 * v4);
    if (v14)
    {
      a2 = v14(a1);
      if (a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_24:
      a2 = 0;
    }
  }

LABEL_25:
  v15 = *(a1 + 3976);
  if (v15 == *(a1 + 3977) && (v16 = *(a1 + 3776)) != 0)
  {
    v17 = *(v16 + 16 * v15 + 8);
    if (v17)
    {
      v17(a1, a2);
    }
  }

  else
  {
    *(a1 + 3976) = v15 + 1;
  }

LABEL_30:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SeqHandler");
  return a2;
}

uint64_t sub_297E57A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DeactivateSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DeactivateSequence");
  return v6;
}

uint64_t sub_297E57A94(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DeActivateRemDev");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x100000001;
    DWORD2(v5) = 6;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Building Header bytes for Deactivate Command");
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E57A00, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DeActivateRemDev");
  return v3;
}

uint64_t sub_297E57BA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfTxRx");
  v12 = 0;
  if (a1 && a2 && a3 && a5)
  {
    BYTE14(v17) = 0;
    LODWORD(v18) = a4;
    if (*a2 == 1)
    {
      *(a1 + 616) = 0;
      *(a2 + 12) = 0;
      v13 = 2;
    }

    else
    {
      v13 = 0;
      *(a2 + 4) = 0;
      *(a2 + 8) = 0;
    }

    v14 = *(a1 + 2460);
    phOsalNfc_MemCopy();
    v12 = sub_297E57CC8(*a1, v13, v16, a5, a6);
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfTxRx");
  return v12;
}

uint64_t sub_297E57CC8(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_Tx");
  if (a1)
  {
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
    v13 = 1;
    if (a3 && v12 == a1)
    {
      *(a1 + 6515) = 0;
      if (a2 > 2)
      {
        if (a2 != 3)
        {
          if (a2 == 4)
          {
            v15 = sub_297E900FC(*(a1 + 6624), 4u, a3, a4, a5);
            goto LABEL_19;
          }

          if (a2 == 5)
          {
            v15 = sub_297E9048C(*(a1 + 6632), 5u, a3, a4, a5);
            goto LABEL_19;
          }

          goto LABEL_17;
        }
      }

      else if (a2 >= 2)
      {
        if (a2 == 2)
        {
          v14 = *(a1 + 6524);
          phOsalNfc_MemCopy();
          v15 = sub_297E57E80(a1, 2u, a3, a4, a5);
LABEL_19:
          v13 = v15;
          goto LABEL_20;
        }

LABEL_17:
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciCoreMuxNfc_Tx :Unknown Mux Index");
        goto LABEL_20;
      }

      v16 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v15 = sub_297E8FE80(a1, a2, a3, a4, a5);
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_20:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_Tx");
  return v13;
}

uint64_t sub_297E57E80(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_CmdTx");
  if (a1)
  {
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
    v13 = 255;
    if (a3 && v12 == a1)
    {
      if (*(a1 + 184 * a2 + 5060) == 1)
      {
        v13 = 111;
      }

      else
      {
        v15 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 184 * a2 + 5056) = *(a1 + 184 * a2 + 4912);
        *(a1 + 184 * a2 + 5032) = a4;
        *(a1 + 184 * a2 + 5040) = a5;
        *(a1 + 184 * a2 + 5060) = 1;
        if (*(a1 + 5992) == 1)
        {
          v13 = 13;
        }

        else
        {
          *(a1 + 5996) = a2;
          v13 = sub_297E57FC4();
        }
      }
    }
  }

  else
  {
    v13 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_CmdTx");
  return v13;
}

uint64_t sub_297E57FC4()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v115 = *MEMORY[0x29EDCA608];
  bzero(v114, 0x1037uLL);
  sub_297E4E1B4(2, v5, 3u, 5u, "phNciMuxNfc_MuxHandler");
  if (!v5)
  {
    goto LABEL_171;
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

  while (v8 != v5);
  if (v8 != v5)
  {
    goto LABEL_171;
  }

  v9 = *(v5 + 5996);
  if (v9 > 5)
  {
    goto LABEL_171;
  }

  if (v2)
  {
    v10 = *v2;
  }

  else
  {
    v10 = 255;
  }

  v11 = v5 + 4888;
  v12 = 255;
  if (v4 <= 6)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          if (v4 != 6)
          {
            goto LABEL_172;
          }

          v14 = *(v5 + 6624);
          v15 = *(v5 + 6632);
          sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "phNciCoreMuxNfc_eMuxEvtDnldTx");
          if (v9 == 4 && v14)
          {
            v12 = sub_297E90A28(v14);
            if (v12 == 13)
            {
              sub_297E5A3A8(*(v5 + 6528), 1);
              *(v5 + 5992) = 1;
              *(v5 + 5788) = *(v14 + 104);
              goto LABEL_172;
            }

            sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciMuxNfc_MuxHandler : Write Request Failed(eMuxEvtDnldTx)");
            if (v12 == 111)
            {
              v12 = 111;
            }

            else
            {
              v12 = 255;
            }

            if (!*(v5 + 5980))
            {
              v62 = *(v14 + 48);
              phTmlNfc_ReadAbort();
              v63 = *(v14 + 48);
              phTmlNfc_FlushTxRxBuffers();
              if (sub_297F0E83C(v14) != 13)
              {
                sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldTx: Read request failed");
                v12 = 255;
              }
            }

            v64 = v5;
            v65 = v12;
            v66 = 4;
            goto LABEL_191;
          }

          v12 = 0;
          if (v9 != 5 || !v15)
          {
            goto LABEL_172;
          }

          v12 = sub_297E90F60(v5);
          if (v12 == 13)
          {
            sub_297E5A3A8(*(v5 + 6528), 1);
            *(v5 + 5992) = 1;
            *(v5 + 5972) = *(v15 + 94);
            goto LABEL_172;
          }

          sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciMuxNfc_MuxHandler : Write Request Failed(phNciCoreMuxNfc_eMuxEvtDnldTx)");
          if (v12 == 111)
          {
            v12 = 111;
          }

          else
          {
            v12 = 255;
          }

          if (!*(v5 + 5796) && !*(v5 + 5993))
          {
            v82 = *v15;
            phTmlNfc_ReadAbort();
            v83 = *v15;
            phTmlNfc_FlushTxRxBuffers();
            if (sub_297F0E83C(v14) != 13)
            {
              v84 = "phNciCoreMuxNfc_eMuxEvtDnldTx: Read request failed";
              v85 = v5 + 6524;
LABEL_183:
              sub_297E4E0B0(1, v85, 3u, 1u, v84);
              v12 = 255;
            }
          }

LABEL_184:
          v64 = v5;
          v65 = v12;
          v66 = 5;
          goto LABEL_191;
        }

        v22 = *(v5 + 6271);
        v23 = v11 + 184 * *(v5 + 6271);
        v25 = *(v23 + 144);
        v24 = *(v23 + 152);
        sub_297E5B294(v5);
        if (v25)
        {
          v25(v24, v2, 36);
        }

        v26 = sub_297E57450(v5, v22);
        if (v26 == 6)
        {
          goto LABEL_171;
        }

        v27 = v26;
        v12 = sub_297E5920C(v5, v26);
        if (v12 != 13)
        {
          v29 = *(v23 + 144);
          v28 = *(v23 + 152);
          sub_297E5B294(v5);
          if (v29)
          {
            v29(v28, 0, v12);
          }

          goto LABEL_172;
        }

LABEL_146:
        *(v5 + 5996) = v27;
        goto LABEL_172;
      }

      v21 = *(v5 + 6271);
      v20 = v5;
LABEL_65:
      v12 = sub_297E5920C(v20, v21);
      goto LABEL_172;
    }

    if (!v4)
    {
      v20 = v5;
      v21 = *(v5 + 5996);
      goto LABEL_65;
    }

    if (v4 != 1)
    {
      goto LABEL_172;
    }

    *(v5 + 5992) = 0;
    v12 = *(v5 + 1532);
    v19 = v11 + 184 * v9;
    if (*(v19 + 174) == 1)
    {
      if (*(v19 + 168))
      {
        if (v9 != 2)
        {
          goto LABEL_138;
        }

        goto LABEL_86;
      }

      v72 = *(v19 + 144);
      v71 = *(v19 + 152);
      sub_297E5B294(v5);
      if (v72)
      {
        v72(v71, v2, v12);
      }
    }

    else
    {
      if (v9 == 2)
      {
LABEL_86:
        v50 = v5;
LABEL_87:
        sub_297E5B294(v50);
        goto LABEL_138;
      }

      if (!*(v19 + 174) && !*(v19 + 168))
      {
        v50 = v5;
        goto LABEL_87;
      }
    }

LABEL_138:
    v73 = sub_297E57450(v5, v9);
    if (v73 == 6)
    {
      v74 = 0;
      v75 = 0;
      do
      {
        v76 = *(&unk_2A18BDDC0 + 14 * v75 + 4);
        if (v74)
        {
          break;
        }

        v74 = 1;
        v75 = 1;
      }

      while (v76 != v5);
      if (v76 == v5 && *(v5 + 6616) == 1)
      {
        *(v5 + 6616) = 0;
      }

      goto LABEL_172;
    }

    v27 = v73;
    v12 = sub_297E5920C(v5, v73);
    if (v12 != 13)
    {
      v78 = *(v19 + 144);
      v77 = *(v19 + 152);
      sub_297E5B294(v5);
      if (v78)
      {
        v78(v77, 0, v12);
      }

      goto LABEL_172;
    }

    goto LABEL_146;
  }

  if (v4 > 9)
  {
    if (v4 != 10)
    {
      if (v4 != 11)
      {
        if (v4 == 12)
        {
          v12 = 0;
          v16 = *(v5 + 6632);
          if (v16)
          {
            v17 = *(v5 + 6624);
            if (v17)
            {
              if (!*(v5 + 5796) && !*(v5 + 5993))
              {
                v18 = *v16;
                phTmlNfc_WriteAbort();
                *(v5 + 5992) = 0;
                sub_297E5A3A8(*(v5 + 6528), 0);
              }

              sub_297E5A304(*(v17 + 8492), v16[6]);
              *(v16 + 16) = 0;
              sub_297E5A304(*(v17 + 8492), v16[7]);
              sub_297E91214(v5, 36, 5u, v2);
              goto LABEL_171;
            }
          }
        }

        goto LABEL_172;
      }

      v12 = 0;
      v32 = *(v5 + 6632);
      if (!v32)
      {
        goto LABEL_172;
      }

      v30 = *(v5 + 6624);
      if (!v30)
      {
        goto LABEL_172;
      }

      if (*(v5 + 5992))
      {
        if (*(v5 + 5994))
        {
          goto LABEL_171;
        }

        v12 = 0;
        *(v5 + 5994) = 1;
        v33 = *(v30 + 64);
        if (!v33 || v33 == 0xFFFFFFFFFFFFLL)
        {
          goto LABEL_172;
        }

        if (*(v30 + 80))
        {
          goto LABEL_171;
        }

        v34 = *(v30 + 8492);
        if (!phOsalNfc_Timer_Start())
        {
          goto LABEL_232;
        }

        v35 = "phNciCoreMuxNfc_eMuxEvtDnldEseCrdtNtf : Failed to create start timer";
        v36 = v5 + 6524;
        goto LABEL_231;
      }

      sub_297E5A304(*(v30 + 8492), v32[7]);
      v79 = v11 + 184 * v9;
      v81 = *(v79 + 164);
      v80 = (v79 + 164);
      if (!v81)
      {
        goto LABEL_171;
      }

      v12 = sub_297E90F60(v5);
      if (v12 == 13)
      {
        sub_297E5A3A8(*(v5 + 6528), 1);
        *(v5 + 5992) = 1;
        *v80 = *(v32 + 94);
        goto LABEL_172;
      }

      *(v5 + 5994) = 0;
      if (!*(v5 + 5796) && !*(v5 + 5993))
      {
        v90 = *v32;
        phTmlNfc_ReadAbort();
        v91 = *v32;
        phTmlNfc_FlushTxRxBuffers();
        sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciMuxNfc_MuxHandler : Write Request Failed(eMuxEvtDnldEseCrdtNtf)");
        v12 = v12 == 111 ? 111 : 255;
        if (sub_297F0E83C(v30) != 13)
        {
          v84 = "phNciCoreMuxNfc_eMuxEvtDnldRspTo: Read request failed";
          v85 = v5 + 6524;
          goto LABEL_183;
        }
      }

      goto LABEL_184;
    }

    v44 = *(v5 + 6624);
    v45 = *(v5 + 6632);
    sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo");
    if (v9 != 4 || !v44)
    {
      v12 = 0;
      if (v9 != 5 || !v45 || !v44)
      {
        goto LABEL_172;
      }

      sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo: Response Timeout");
      v12 = 44;
      sub_297E96818(*(v5 + 6528), 44);
      *(v5 + 5994) = 0;
      if (!*(v5 + 5796) && !*(v5 + 5993))
      {
        v55 = *v45;
        phTmlNfc_ReadAbort();
        v56 = *v45;
        phTmlNfc_FlushTxRxBuffers();
        v57 = *v45;
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v5 + 6528), 0);
        *(v5 + 5992) = 0;
        if (sub_297F0E83C(v44) != 13)
        {
          sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo: Read request failed");
          v12 = 255;
        }
      }

      sub_297E5A304(*(v44 + 8492), v45[6]);
      *(v45 + 16) = 0;
      sub_297E5A304(*(v44 + 8492), v45[7]);
      v58 = v5;
      v59 = v12;
      v60 = 5;
LABEL_228:
      sub_297E91214(v58, v59, v60, v2);
      goto LABEL_172;
    }

    v46 = *(v44 + 8440);
    if (v46 <= 4)
    {
      sub_297E4E0B0(1, v5 + 6524, 3u, 2u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo: Dnld Response timeout, re-transmit the frame!!");
      ++*(v44 + 8440);
      sub_297E96818(*(v5 + 6528), 44);
      sub_297E5A304(*(v44 + 8492), *(v44 + 56));
      *(v44 + 84) = 1500;
      v47 = *(v44 + 8492);
      v48 = *(v44 + 56);
      v49 = phOsalNfc_Timer_Start();
      if (v49)
      {
LABEL_82:
        v12 = v49;
        sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo : Dnld response timer start failed");
        goto LABEL_83;
      }

      if (*(v5 + 5993) == 1)
      {
LABEL_167:
        v12 = 0;
LABEL_222:
        if (*(v5 + 5993))
        {
          goto LABEL_172;
        }

        sub_297E5A3A8(*(v5 + 6528), 0);
        *(v5 + 5992) = 0;
        sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo: MAX Limit Reached");
        sub_297E96818(*(v5 + 6528), 44);
        sub_297E5A304(*(v44 + 8492), *(v44 + 56));
        if (!*(v5 + 5980) && !*(v5 + 5994))
        {
          v101 = *(v44 + 48);
          phTmlNfc_ReadAbort();
          v102 = *(v44 + 48);
          phTmlNfc_WriteAbort();
          sub_297E5A3A8(*(v5 + 6528), 0);
          *(v5 + 5992) = 0;
          if (sub_297F0E83C(v44) != 13)
          {
            sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo: Read request failed");
          }
        }

        *(v44 + 8440) = 0;
        v12 = 255;
        v58 = v5;
        v59 = 255;
        v60 = 4;
        goto LABEL_228;
      }

      if (*(v5 + 5992))
      {
        v12 = 0;
        *(v5 + 5993) = 1;
        v92 = *(v44 + 64);
        if (!v92 || v92 == 0xFFFFFFFFFFFFLL)
        {
          goto LABEL_222;
        }

        if (!*(v44 + 80))
        {
          v93 = *(v44 + 8492);
          if (phOsalNfc_Timer_Start())
          {
            sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_DnldCmdTx : Failed to create start timer");
            v12 = 255;
          }

          else
          {
            v12 = 0;
            *(v44 + 80) = 1;
          }

          goto LABEL_222;
        }

        goto LABEL_167;
      }

      v98 = *(v44 + 48);
      v99 = *(v44 + 124);
      v100 = phTmlNfc_Write();
      if (v100 == 13)
      {
        goto LABEL_84;
      }

      v12 = v100;
      v70 = "phNciCoreMuxNfc_eMuxEvtDnldRspTo : Write Request Failed";
LABEL_221:
      sub_297E4E0B0(1, v5 + 6524, 3u, 1u, v70);
      goto LABEL_222;
    }

    if (v46 != 5 || *(v44 + 8444) || *(v44 + 8445) || (*(v44 + 8504) | 2) == 6)
    {
      *(v44 + 8440) = 0;
      *(v5 + 5993) = 0;
      if (*(v5 + 5980))
      {
        goto LABEL_222;
      }

      if (*(v5 + 5994))
      {
        goto LABEL_222;
      }

      v67 = *(v44 + 48);
      phTmlNfc_ReadAbort();
      v68 = *(v44 + 48);
      phTmlNfc_FlushTxRxBuffers();
      v69 = *(v44 + 48);
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(v44 + 48), 0);
      *(v5 + 5992) = 0;
      if (sub_297F0E83C(v44) == 13)
      {
        goto LABEL_222;
      }

      v70 = "phNciCoreMuxNfc_eMuxEvtDnldRspTo: Read request failed";
      goto LABEL_221;
    }

    v104 = *(v5 + 6524);
    v105 = *(v44 + 124);
    phOsalNfc_MemCopy();
    *(v44 + 126) = 0;
    v106 = *(v5 + 6524);
    v107 = *(v44 + 124);
    phOsalNfc_MemCopy();
    ++*(v44 + 124);
    sub_297E5A304(*(v44 + 8492), *(v44 + 56));
    *(v44 + 84) = 1500;
    v108 = *(v44 + 8492);
    v109 = *(v44 + 56);
    v49 = phOsalNfc_Timer_Start();
    if (v49)
    {
      goto LABEL_82;
    }

    if (!*(v5 + 5993))
    {
      if (!*(v5 + 5992))
      {
        v112 = *(v44 + 48);
        v113 = *(v44 + 124);
        v12 = phTmlNfc_Write();
        if (v12 != 13)
        {
          sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo : Write Request Failed");
        }

        goto LABEL_236;
      }

      v12 = 0;
      *(v5 + 5993) = 1;
      v110 = *(v44 + 64);
      if (!v110 || v110 == 0xFFFFFFFFFFFFLL)
      {
LABEL_236:
        ++*(v44 + 8440);
        *(v44 + 8444) = 1;
LABEL_83:
        if (v12 == 13)
        {
LABEL_84:
          sub_297E5A3A8(*(v5 + 6528), 1);
          *(v5 + 5992) = 1;
          *(v5 + 5996) = 4;
          v12 = 13;
          goto LABEL_172;
        }

        goto LABEL_222;
      }

      if (!*(v44 + 80))
      {
        v111 = *(v44 + 8492);
        if (phOsalNfc_Timer_Start())
        {
          sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_DnldCmdTx : Failed to create start timer");
          v12 = 255;
        }

        else
        {
          v12 = 0;
          *(v44 + 80) = 1;
        }

        goto LABEL_236;
      }
    }

    v12 = 0;
    goto LABEL_236;
  }

  if (v4 == 7)
  {
    v37 = *(v5 + 6624);
    v38 = *(v5 + 6632);
    sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "phNciCoreMuxNfc_eMuxEvtDnldTxCb");
    *(v5 + 5992) = 0;
    if (v37)
    {
      v39 = *(v37 + 64);
      if (v39)
      {
        if (v39 != 0xFFFFFFFFFFFFLL)
        {
          sub_297E5A304(*(v37 + 8492), v39);
          *(v37 + 80) = 0;
        }
      }
    }

    if (v10 != 179 && v10)
    {
      goto LABEL_217;
    }

    v40 = sub_297E91324(v5, v9);
    v9 = v40;
    if (v37 && v40 == 4)
    {
      v12 = v10;
      if (*(v5 + 5993) != 1)
      {
        goto LABEL_172;
      }

      sub_297E5A304(*(v37 + 8492), *(v37 + 56));
      if (*(v37 + 8440))
      {
        *(v37 + 84) = 1500;
        v41 = *(v37 + 8492);
        v42 = *(v37 + 56);
        v43 = phOsalNfc_Timer_Start();
        if (v43)
        {
          v10 = v43;
          v9 = 4;
LABEL_217:
          sub_297E91160(v5, v10, v9, v2);
          goto LABEL_218;
        }

        v94 = *(v37 + 48);
        v95 = *(v37 + 124);
        v10 = phTmlNfc_Write();
        if (v10 == 13)
        {
          sub_297E5A3A8(*(v5 + 6528), 1);
          v89 = 0;
          *(v5 + 5992) = 1;
          *(v5 + 5788) = *(v37 + 104);
        }

        else
        {
          v89 = 1;
          sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRspTo : Write Request Failed");
        }
      }

      else
      {
        v10 = sub_297E90A28(v37);
        v89 = 1;
        if (v10 == 13)
        {
          sub_297E5A3A8(*(v5 + 6528), 1);
          *(v5 + 5992) = 1;
          *(v5 + 5788) = *(v37 + 104);
          sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "NCI Send busy[DNLD]");
          v89 = 0;
        }
      }

      *(v5 + 5993) = 0;
LABEL_216:
      v12 = v10;
      if (!v89)
      {
        goto LABEL_172;
      }

      goto LABEL_217;
    }

    if (!v37 || v40 != 5 || !v38)
    {
      v12 = v10;
      if (v40 == 6)
      {
        goto LABEL_172;
      }

      goto LABEL_217;
    }

    if (!*(v5 + 5972))
    {
      *(v5 + 5980) = 0;
      goto LABEL_218;
    }

    if (!*(v5 + 5992))
    {
      if (sub_297E90F60(v5) == 13)
      {
        if (!*(v38 + 17))
        {
          sub_297E5A3A8(*(v5 + 6528), 1);
          *(v5 + 5992) = 1;
        }

        v89 = 0;
        *(v5 + 5972) = *(v38 + 376);
        v10 = 13;
      }

      else
      {
        sub_297E5A304(*(v37 + 8492), *(v38 + 48));
        *(v38 + 16) = 0;
        sub_297E5A304(*(v37 + 8492), *(v38 + 56));
        v89 = 1;
        sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldTxCb : Write Request Failed");
        v10 = 255;
      }

      *(v5 + 5994) = 0;
      goto LABEL_216;
    }

    if (*(v5 + 5994))
    {
      sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "DNLD Ese Waiting on Send CB");
LABEL_218:
      v12 = v10;
      goto LABEL_172;
    }

    *(v5 + 5994) = 1;
    v96 = *(v37 + 64);
    if (!v96 || v96 == 0xFFFFFFFFFFFFLL || *(v37 + 80))
    {
      goto LABEL_218;
    }

    v97 = *(v37 + 8492);
    if (!phOsalNfc_Timer_Start())
    {
      *(v37 + 80) = 1;
      goto LABEL_218;
    }

    v35 = "phNciCoreMuxNfc_eMuxEvtDnldTxCb : Failed to create start timer";
    v36 = v5 + 6524;
LABEL_231:
    sub_297E4E0B0(1, v36, 3u, 1u, v35);
    goto LABEL_194;
  }

  if (v4 != 8)
  {
    v13 = *(v5 + 6624);
    sub_297E4E0B0(1, v5 + 6524, 3u, 2u, "phNciCoreMuxNfc_eMuxEvtDnldRxFail");
    if (v9 == 4)
    {
      if (*(v5 + 5980) || *(v5 + 5994))
      {
        goto LABEL_193;
      }
    }

    else if (v9 != 5 || *(v5 + 5796) || *(v5 + 5993))
    {
LABEL_193:
      sub_297E91214(v5, v10, v9, v2);
LABEL_194:
      v12 = 255;
      goto LABEL_172;
    }

    if (v13)
    {
      v61 = *(v13 + 48);
      if (phTmlNfc_WriteAbort())
      {
        sub_297E4E0B0(1, v5 + 6524, 3u, 2u, "MuxEvtDnldRxFail Write Abort failed");
      }

      else
      {
        *(v5 + 5992) = 0;
        sub_297E5A3A8(*(v5 + 6528), 0);
      }
    }

    goto LABEL_193;
  }

  v30 = *(v5 + 6624);
  v31 = *(v5 + 6632);
  sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "phNciCoreMuxNfc_eMuxEvtDnldRx");
  if (v9 != 4 || !v30)
  {
    v12 = 0;
    v51 = 1;
    if (v9 != 5 || !v31)
    {
      goto LABEL_187;
    }

    sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "Send complete, invoke upper layer");
    v52 = *(v31 + 48);
    if (v52 != 0xFFFFFFFFFFFFLL)
    {
      sub_297E5A304(*(v30 + 8492), v52);
      *(v31 + 16) = 0;
    }

    v53 = *(v31 + 56);
    if (v53 == 0xFFFFFFFFFFFFLL)
    {
LABEL_151:
      v12 = 0;
LABEL_187:
      if (!v2 || !v51 || !*(v2 + 1))
      {
        goto LABEL_172;
      }

      v64 = v5;
      v65 = v12;
      v66 = v9;
LABEL_191:
      sub_297E91160(v64, v65, v66, v2);
      goto LABEL_172;
    }

    v54 = *(v30 + 8492);
LABEL_150:
    sub_297E5A304(v54, v53);
    goto LABEL_151;
  }

  *(v30 + 8440) = 0;
  if (!*(v30 + 104))
  {
    v51 = 1;
    sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "Send complete, invoke upper layer");
    v54 = *(v30 + 8492);
    v53 = *(v30 + 56);
    goto LABEL_150;
  }

  if (!*(v5 + 5992))
  {
    sub_297E5A304(*(v30 + 8492), *(v30 + 56));
    v12 = sub_297E90A28(v30);
    v51 = v12 != 13;
    if (v12 == 13)
    {
      sub_297E5A3A8(*(v5 + 6528), 1);
      *(v5 + 5992) = 1;
      *(v5 + 5788) = *(v30 + 104);
    }

    else
    {
      sub_297E4E0B0(1, v5 + 6524, 3u, 1u, "phNciCoreMuxNfc_eMuxEvtDnldRx : Write Request Failed");
    }

    *(v5 + 5993) = 0;
    goto LABEL_187;
  }

  if (*(v5 + 5993))
  {
    sub_297E4E0B0(1, v5 + 6524, 3u, 4u, "DNLD Waiting on Send CB");
LABEL_171:
    v12 = 0;
    goto LABEL_172;
  }

  v12 = 0;
  *(v5 + 5993) = 1;
  v86 = *(v30 + 64);
  if (v86 && v86 != 0xFFFFFFFFFFFFLL)
  {
    if (*(v30 + 80))
    {
      goto LABEL_171;
    }

    v103 = *(v30 + 8492);
    if (phOsalNfc_Timer_Start())
    {
      v35 = "phNciCoreMuxNfc_DnldCmdTx : Failed to create start timer";
      v36 = v5 + 6524;
      goto LABEL_231;
    }

LABEL_232:
    v12 = 0;
    *(v30 + 80) = 1;
  }

LABEL_172:
  sub_297E4DFAC(2, v5, 3u, 5u, "phNciMuxNfc_MuxHandler");
  v87 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_297E5920C(uint64_t a1, unsigned int a2)
{
  v60 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_BuildHciNciPkt");
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
    v7 = 1;
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    *(a1 + 6616) = 0;
    v61[0] = 0;
    v61[1] = 0;
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_BuildCmdPktNci");
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
      v21 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      if (*(a1 + 5430))
      {
        v7 = sub_297E59F54(a1 + 936, a1 + 5256);
        sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Build Control packet returns");
        if (!v7)
        {
          *(a1 + 5424) -= *(a1 + 5280);
        }

        goto LABEL_14;
      }

      v28 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      LODWORD(v61[0]) = 2;
      v29 = sub_297E59AEC(a1 + 936, v61, *(a1 + 5400), *(a1 + 5408));
      if (v29)
      {
        v7 = v29;
      }

      else
      {
        v7 = sub_297E59F54(a1 + 936, a1 + 5256);
        sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Build Control packet returns");
        if (!v7)
        {
          v40 = *(a1 + 1920);
          if (v40 != 0xFFFFFFFFFFFFLL)
          {
            *(a1 + 1556) = 2000;
            v41 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v42 = *(a1 + 1528);
              if (v42 > v41)
              {
                *(a1 + 1556) = 100 * (v42 / v41) + 2000;
              }
            }

            sub_297E5A304(*(a1 + 3396), v40);
            *(a1 + 6512) = 0;
            v43 = *(a1 + 3396);
            v44 = *(a1 + 1920);
            v45 = *(a1 + 1556);
            v46 = phOsalNfc_Timer_Start();
            if (v46)
            {
              v7 = v46;
              *(a1 + 1928) = 0;
              sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Response Timer Start failed!!!");
              goto LABEL_14;
            }

            sub_297E4E0B0(1, a1 + 3396, 3u, 4u, "Response timer started");
            *(a1 + 1928) = 1;
            if (*(a1 + 3396))
            {
              v57 = &gphNfc_DebugInfo_Sec;
            }

            else
            {
              v57 = &gphNfc_DebugInfo_Prim;
            }

            v57[1] &= ~0x10u;
            v58 = *(a1 + 6524);
            phOsalNfc_MemCopy();
          }

          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 255;
    }

LABEL_14:
    v12 = "phNciMuxNfc_BuildCmdPktNci";
LABEL_15:
    sub_297E4DFAC(2, a1, 3u, 5u, v12);
    goto LABEL_36;
  }

  v13 = a1 + 184 * a2;
  v14 = v13 + 4888;
  v15 = *(v13 + 4900);
  if (sub_297E8BF9C(a1, v15, &v60 + 1))
  {
    v16 = 1;
  }

  else
  {
    v16 = HIBYTE(v60) == 0;
  }

  if (!v16)
  {
    if (!a2)
    {
      v22 = a1;
      v23 = 0;
LABEL_35:
      v7 = sub_297E90BEC(v22, v23, v14);
      goto LABEL_36;
    }

    LOBYTE(v61[0]) = 0;
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_BuildDataPktHci");
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(&unk_2A18BDDC0 + 14 * v19 + 4);
      if (v18)
      {
        break;
      }

      v18 = 1;
      v19 = 1;
    }

    while (v20 != a1);
    if (v20 != a1)
    {
      v7 = 1;
LABEL_29:
      v12 = "phNciMuxNfc_BuildDataPktHci";
      goto LABEL_15;
    }

    v30 = *(v14 + 36);
    v31 = *(v14 + 173);
    if (v30 > 0xFD)
    {
      if (!*(v14 + 173))
      {
        if (*(a1 + 6656))
        {
          sub_297E50EBC(1, a1 + 6524, 3u, 4u, "phNciMuxNfc_BuildDataPktHci : Delay Applied");
          v55 = *(a1 + 6524);
          v56 = *(a1 + 6656);
          phOsalNfc_Delay();
        }

        v32 = sub_297E908E4(a1, a2, 253, 0);
        *(v14 + 173) = 1;
        *(v14 + 168) -= 253;
        if (*(a1 + 6616) != 1 || !sub_297E5A824(a1 + 936))
        {
          goto LABEL_103;
        }

        if (sub_297E5A99C(*(a1 + 6528), v61))
        {
          v33 = "phNciMuxNfc_BuildDataPktHci2-Failed to retrieve bIgnoreWkUpRet";
          goto LABEL_102;
        }

        if (LOBYTE(v61[0]) == 1)
        {
          goto LABEL_103;
        }

        v59 = "phNciMuxNfc_BuildDataPktHci2-Failed to Assert Wake Up Line";
LABEL_116:
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v59);
        sub_297E5B294(a1);
        v7 = 255;
        goto LABEL_29;
      }
    }

    else if (!*(v14 + 173))
    {
      v32 = sub_297E908E4(a1, a2, v30, 1);
      *(v14 + 168) = 0;
      if (*(a1 + 6616) != 1 || !sub_297E5A824(a1 + 936))
      {
        goto LABEL_103;
      }

      if (sub_297E5A99C(*(a1 + 6528), v61))
      {
        v33 = "phNciMuxNfc_BuildDataPktHci1-Failed to retrieve bIgnoreWkUpRet";
LABEL_102:
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v33);
        sub_297E5B294(a1);
LABEL_103:
        sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_BuildDataPktHci");
        if (v32)
        {
          v7 = 1;
          goto LABEL_63;
        }

        v22 = a1;
        v23 = a2;
        goto LABEL_35;
      }

      if (LOBYTE(v61[0]) == 1)
      {
        goto LABEL_103;
      }

      v59 = "phNciMuxNfc_BuildDataPktHci1-Failed to Assert Wake Up Line";
      goto LABEL_116;
    }

    if (*(a1 + 6656))
    {
      sub_297E50EBC(1, a1 + 6524, 3u, 4u, "phNciMuxNfc_BuildDataPktHci : Delay Applied");
      v37 = *(a1 + 6524);
      v38 = *(a1 + 6656);
      phOsalNfc_Delay();
    }

    v39 = *(v14 + 168);
    if (v39 > 0xFE)
    {
      v32 = sub_297E907B0(a1, a2, 254, 0);
      *(v14 + 168) -= 254;
    }

    else
    {
      v32 = sub_297E907B0(a1, a2, v39, 1);
      *(v14 + 168) = 0;
    }

    goto LABEL_103;
  }

  v17 = sub_297E8C0C4(a1, v15, sub_297E737A8, a1);
  if (!v17)
  {
    *(a1 + 6271) = a2;
    *(a1 + 6272) = v15;
    v7 = 13;
    goto LABEL_63;
  }

  v7 = v17;
  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Conn Credits Registration failed!!");
LABEL_36:
  if (v7 == 255)
  {
    if (*(a1 + 6616) != 1)
    {
LABEL_62:
      v7 = 255;
      goto LABEL_63;
    }

    if (sub_297E5AA54(*(a1 + 1568), 20))
    {
      if (sub_297E5A99C(*(a1 + 1568), &v60))
      {
        v26 = "phNciMuxNfc_BuildDataPktHci2-Failed to retrieve bIgnoreWkUpRet";
      }

      else
      {
        if (v60)
        {
          goto LABEL_61;
        }

        v26 = "phNciMuxNfc_BuildHciNciPkt2-Fialed to De-Assert Wake Up Line";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v26);
    }

LABEL_61:
    *(a1 + 6616) = 0;
    goto LABEL_62;
  }

  if (!v7)
  {
    *(a1 + 3969) = 0;
    v24 = a1 + 184 * a2;
    *(a1 + 5992) = 1;
    sub_297E5A3A8(*(a1 + 6528), 1);
    *(a1 + 6481) = 0;
    v25 = sub_297E5A458(a1 + 936, *(v24 + 4888));
    if (v25 == 13)
    {
      *(a1 + 5996) = a2;
      if (a2 != 2)
      {
        sub_297E8CA98(a1, *(v24 + 4900));
        *(a1 + 6482) = *(v24 + 4900);
        *(a1 + 6481) = 1;
      }

      v7 = 13;
      goto LABEL_7;
    }

    v7 = v25;
    if (*(a1 + 6616) != 1 || !sub_297E5AA54(*(a1 + 1568), 20))
    {
      goto LABEL_83;
    }

    if (sub_297E5A99C(*(a1 + 1568), &v60))
    {
      v7 = 255;
      v27 = "phNciMuxNfc_BuildDataPktHci1-Failed to retrieve bIgnoreWkUpRet";
    }

    else
    {
      if (v60)
      {
LABEL_83:
        *(a1 + 6616) = 0;
        v47 = *(a1 + 1920);
        if (v47 && v47 != 0xFFFFFFFFFFFFLL)
        {
          v48 = *(a1 + 3396);
          phOsalNfc_Timer_Stop();
          *(a1 + 6512) = 0;
          *(a1 + 1928) = 0;
          v49 = &gphNfc_DebugInfo_Sec;
          if (!*(a1 + 3396))
          {
            v49 = &gphNfc_DebugInfo_Prim;
          }

          v49[1] &= ~0x10u;
        }

        v50 = *(a1 + 3384);
        if (v50 && v50 != 0xFFFFFFFFFFFFLL)
        {
          v51 = *(a1 + 3396);
          if (phOsalNfc_Timer_Stop())
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_CorePktSendToTml-Failed to Stop De-Assert Wake Up Line Timer");
            v7 = 255;
          }

          v52 = *(a1 + 3396);
          v53 = *(a1 + 3384);
          v54 = phOsalNfc_Timer_Delete();
          *(a1 + 3384) = 0xFFFFFFFFFFFFLL;
          if (v54)
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_CorePktSendToTml-Failed to Delete De-Assert Wake Up Line Timer");
            v7 = 255;
          }
        }

        sub_297E5B294(a1);
        sub_297E5A3A8(*(a1 + 6528), 0);
        *(a1 + 5992) = 0;
        goto LABEL_7;
      }

      v27 = "phNciMuxNfc_BuildHciNciPkt1-Failed to De-Assert Wake Up Line";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v27);
    goto LABEL_83;
  }

LABEL_63:
  v34 = *(a1 + 1920);
  if (v34 && v34 != 0xFFFFFFFFFFFFLL)
  {
    v35 = *(a1 + 3396);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    *(a1 + 1928) = 0;
    if (*(a1 + 3396))
    {
      v36 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v36 = &gphNfc_DebugInfo_Prim;
    }

    v36[1] &= ~0x10u;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_BuildHciNciPkt");
  return v7;
}