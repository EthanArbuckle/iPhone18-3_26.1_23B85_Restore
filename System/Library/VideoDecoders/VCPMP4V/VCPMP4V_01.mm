uint64_t DecHeaderVOPshort(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 156);
  *(result + 156) = v3 + 22;
  v4 = *(result + 4);
  if (v4 > 0x15)
  {
    v5 = v4 - 22;
    *(result + 156) = v3 + 30;
    if (v5 <= 7)
    {
      v9 = v5 | 0x18;
      *(result + 4) = v9;
      v10 = *(result + 160);
      v11 = *(result + 8);
      if (v3 + 30 > v10 || 32 * v11 > v10)
      {
        *(result + 8) = v11 + 1;
        *result = 0;
      }

      else
      {
        *result = bswap32(*(*(result + 16) + 4 * v11));
        *(result + 8) = v11 + 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = v4 + 10;
    *(result + 4) = v5;
    v6 = *(result + 160);
    v7 = *(result + 8);
    if (v3 + 22 > v6 || 32 * v7 > v6)
    {
      *(result + 8) = v7 + 1;
      *result = 0;
    }

    else
    {
      *result = bswap32(*(*(result + 16) + 4 * v7));
      *(result + 8) = v7 + 1;
    }
  }

  *(result + 156) = v3 + 31;
  v9 = v5 - 8;
  if (!v9)
  {
    *(result + 4) = 31;
    v13 = *(result + 160);
    v14 = *(result + 8);
    v15 = 29;
    if (v3 + 31 > v13 || 32 * v14 > v13)
    {
      v17 = 0;
LABEL_26:
      *result = v17;
      *(result + 8) = v14 + 1;
      goto LABEL_27;
    }

LABEL_25:
    v17 = bswap32(*(*(result + 16) + 4 * v14));
    goto LABEL_26;
  }

LABEL_22:
  *(result + 156) = v3 + 32;
  if (v9 == 1)
  {
    v17 = 0;
    *(result + 4) = 31;
    v18 = *(result + 160);
    v14 = *(result + 8);
    v15 = 30;
    if (v3 + 32 > v18 || 32 * v14 > v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  *(result + 156) = v3 + 33;
  if (v9 == 2)
  {
    v26 = 0;
    *(result + 4) = 31;
    v27 = *(result + 160);
    v28 = *(result + 8);
    if (v3 + 33 <= v27 && 32 * v28 <= v27)
    {
      v26 = bswap32(*(*(result + 16) + 4 * v28));
    }

    *result = v26;
    *(result + 4) = 30;
    *(result + 8) = v28 + 1;
    v23 = 29;
    goto LABEL_46;
  }

  *(result + 156) = v3 + 34;
  v15 = v9 - 3;
  if (!v15)
  {
    v29 = 0;
    *(result + 4) = 31;
    v30 = *(result + 160);
    v31 = *(result + 8);
    if (v3 + 34 <= v30 && 32 * v31 <= v30)
    {
      v29 = bswap32(*(*(result + 16) + 4 * v31));
    }

    *result = v29;
    *(result + 8) = v31 + 1;
    v23 = 30;
    goto LABEL_46;
  }

LABEL_27:
  *(result + 156) = v3 + 35;
  if (v15 == 1)
  {
    v19 = 0;
    *(result + 4) = 31;
    v20 = *(result + 160);
    v21 = *(result + 8);
    if (v3 + 35 <= v20 && 32 * v21 <= v20)
    {
      v19 = bswap32(*(*(result + 16) + 4 * v21));
    }

    *result = v19;
    *(result + 8) = v21 + 1;
    v22 = 28;
LABEL_51:
    v34 = *result;
    *(a3 + 148) = (*result >> (v22 - 1)) & 1;
    *(result + 156) = v3 + 43;
    if (v22 > 4)
    {
      v36 = v22 - 5;
      *(result + 156) = v3 + 48;
      if (v22 - 5 <= 4)
      {
        v39 = 10 - v22;
        v40 = v22 + 22;
        *(result + 4) = v22 + 22;
        v41 = (v34 << (10 - v22)) & *(result + 44);
        v42 = *(result + 160);
        v43 = *(result + 8);
        if (v3 + 48 > v42 || 32 * v43 > v42)
        {
          v34 = 0;
          *(result + 8) = v43 + 1;
          *result = 0;
        }

        else
        {
          v34 = bswap32(*(*(result + 16) + 4 * v43));
          *result = v34;
          *(result + 8) = v43 + 1;
          v41 |= *(result + 4 * v39 + 24) & (v34 >> v40);
        }

        *(a3 + 160) = v41;
        v44 = v3 + 49;
        goto LABEL_65;
      }
    }

    else
    {
      v36 = (v22 - 1) | 0x1C;
      *(result + 4) = v36;
      v37 = *(result + 160);
      v38 = *(result + 8);
      if (v3 + 43 > v37 || 32 * v38 > v37)
      {
        v34 = 0;
        *(result + 8) = v38 + 1;
        *result = 0;
      }

      else
      {
        v34 = bswap32(*(*(result + 16) + 4 * v38));
        *result = v34;
        *(result + 8) = v38 + 1;
      }
    }

    goto LABEL_64;
  }

  v23 = v15 - 2;
  *(result + 156) = v3 + 38;
  if ((v15 - 2) <= 2)
  {
    v22 = v15 + 27;
    *(result + 4) = v15 + 27;
    v24 = *(result + 160);
    v25 = *(result + 8);
    if (v3 + 38 > v24 || 32 * v25 > v24)
    {
      *(result + 8) = v25 + 1;
      *result = 0;
    }

    else
    {
      *result = bswap32(*(*(result + 16) + 4 * v25));
      *(result + 8) = v25 + 1;
    }

    goto LABEL_51;
  }

LABEL_46:
  *(result + 156) = v3 + 39;
  v22 = v23 - 3;
  if (v23 != 3)
  {
    goto LABEL_51;
  }

  *(result + 4) = 31;
  v32 = *(result + 160);
  v33 = *(result + 8);
  if (v3 + 39 > v32 || 32 * v33 > v32)
  {
    v34 = 0;
    LOBYTE(v35) = 0;
    *result = 0;
    *(result + 8) = v33 + 1;
  }

  else
  {
    v34 = bswap32(*(*(result + 16) + 4 * v33));
    *result = v34;
    *(result + 8) = v33 + 1;
    v35 = v34 >> 31;
  }

  *(a3 + 148) = v35;
  v36 = 27;
LABEL_64:
  v45 = *(result + 44);
  v44 = v3 + 49;
  *(result + 156) = v44;
  v40 = v36 - 5;
  *(a3 + 160) = (v34 >> v40) & v45;
  if (v40)
  {
LABEL_65:
    v46 = v40 - 1;
    goto LABEL_71;
  }

  *(result + 4) = 31;
  v47 = *(result + 160);
  v48 = *(result + 8);
  if (v44 > v47 || 32 * v48 > v47)
  {
    v34 = 0;
    *result = 0;
  }

  else
  {
    v34 = bswap32(*(*(result + 16) + 4 * v48));
    *result = v34;
  }

  *(result + 8) = v48 + 1;
  v46 = 31;
  while (1)
  {
LABEL_71:
    while (1)
    {
      *(result + 156) = v44 + 1;
      if (!v46)
      {
        break;
      }

      v49 = v46 - 1;
      *(result + 4) = v46 - 1;
      if (((v34 >> (v46 - 1)) & 1) == 0)
      {
        return result;
      }

      v44 += 9;
      *(result + 156) = v44;
      if (v46 >= 9)
      {
        goto LABEL_86;
      }

      v46 = v49 | 0x18;
      *(result + 4) = v49 | 0x18;
      v50 = *(result + 160);
      v51 = *(result + 8);
      if (v44 > v50 || 32 * v51 > v50)
      {
        v34 = 0;
        *(result + 8) = v51 + 1;
        *result = 0;
      }

      else
      {
        v34 = bswap32(*(*(result + 16) + 4 * v51));
        *result = v34;
        *(result + 8) = v51 + 1;
      }
    }

    *(result + 4) = 31;
    v53 = *(result + 160);
    v54 = *(result + 8);
    if (v44 + 1 > v53 || 32 * v54 > v53)
    {
      break;
    }

    v34 = bswap32(*(*(result + 16) + 4 * v54));
    *result = v34;
    *(result + 8) = v54 + 1;
    if ((v34 & 0x80000000) == 0)
    {
      return result;
    }

    v44 += 9;
    *(result + 156) = v44;
    v49 = 31;
LABEL_86:
    v46 = v49 - 8;
    *(result + 4) = v49 - 8;
  }

  *result = 0;
  *(result + 8) = v54 + 1;
  return result;
}

uint64_t DecHeaderVideoPacket(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156) + 1;
  *(a1 + 156) = v2;
  v3 = *(a1 + 4);
  if (!v3)
  {
    *(a1 + 4) = 31;
    v6 = *(a1 + 160);
    v7 = *(a1 + 8);
    if (v2 > v6 || 32 * v7 > v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = bswap32(*(*(a1 + 16) + 4 * v7));
    }

    *a1 = v9;
    *(a1 + 8) = v7 + 1;
    v4 = 31;
    v5 = 7;
    goto LABEL_11;
  }

  v4 = v3 - 1;
  *(a1 + 4) = v4;
  v5 = v4 & 7;
  if ((v4 & 7) != 0)
  {
LABEL_11:
    v2 += v5;
    *(a1 + 156) = v2;
    v4 &= 0xFFFFFFF8;
    *(a1 + 4) = v4;
  }

  if (!*(a2 + 148))
  {
    v10 = 17;
LABEL_16:
    v2 += v10;
    *(a1 + 156) = v2;
    v11 = v4 - v10;
    if (v4 >= v10)
    {
      *(a1 + 4) = v11;
      v13 = (*a1 >> (v4 - v10)) & *(a1 + 4 * v10 + 24);
      v4 = v11;
    }

    else
    {
      v12 = v10 - v4;
      v4 = 32 - (v10 - v4);
      *(a1 + 4) = v4;
      if (v12 <= 0x1F)
      {
        v13 = (*a1 << v12) & *(a1 + 4 * v10 + 24);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a1 + 160);
      v15 = *(a1 + 8);
      if (v2 > v14 || 32 * v15 > v14)
      {
        *(a1 + 8) = v15 + 1;
        *a1 = 0;
      }

      else
      {
        v17 = bswap32(*(*(a1 + 16) + 4 * v15));
        *a1 = v17;
        *(a1 + 8) = v15 + 1;
        v13 |= *(a1 + 4 * v12 + 24) & (v17 >> v4);
      }
    }

    if (v13 != 1)
    {
      return 4294965306;
    }

    goto LABEL_28;
  }

  if (*(a2 + 148) != 2)
  {
    v10 = *(a2 + 162) + 16;
    goto LABEL_16;
  }

LABEL_28:
  v18 = *(a2 + 200);
  v19 = v2 + v18;
  *(a1 + 156) = v2 + v18;
  v20 = v4 - v18;
  if (v4 >= v18)
  {
    *(a1 + 4) = v20;
    v23 = *a1;
    v22 = (*a1 >> v20) & *(a1 + 4 * v18 + 24);
  }

  else
  {
    v21 = v18 - v4;
    v20 = 32 - (v18 - v4);
    *(a1 + 4) = v20;
    if (v18 - v4 <= 0x1F)
    {
      v22 = (*a1 << v21) & *(a1 + 4 * v18 + 24);
    }

    else
    {
      v22 = 0;
    }

    v25 = *(a1 + 160);
    v26 = *(a1 + 8);
    if (v19 > v25 || 32 * v26 > v25)
    {
      v23 = 0;
      *(a1 + 8) = v26 + 1;
      *a1 = 0;
    }

    else
    {
      v23 = bswap32(*(*(a1 + 16) + 4 * v26));
      *a1 = v23;
      *(a1 + 8) = v26 + 1;
      v22 |= *(a1 + 4 * v21 + 24) & (v23 >> v20);
    }
  }

  *(a2 + 172) = v22;
  v27 = *(a2 + 48);
  if (v27 != 2)
  {
    v28 = *(a2 + 135);
    v19 += v28;
    *(a1 + 156) = v19;
    v29 = v20 - v28;
    if (v20 >= v28)
    {
      *(a1 + 4) = v29;
      v31 = (v23 >> (v20 - v28)) & *(a1 + 4 * v28 + 24);
      v20 = v29;
    }

    else
    {
      v30 = v28 - v20;
      v20 = 32 - (v28 - v20);
      *(a1 + 4) = v20;
      v31 = v30 <= 0x1F ? (v23 << v30) & *(a1 + 4 * v28 + 24) : 0;
      v32 = *(a1 + 160);
      v33 = *(a1 + 8);
      if (v19 > v32 || 32 * v33 > v32)
      {
        v23 = 0;
        *(a1 + 8) = v33 + 1;
        *a1 = 0;
      }

      else
      {
        v23 = bswap32(*(*(a1 + 16) + 4 * v33));
        *a1 = v23;
        *(a1 + 8) = v33 + 1;
        v31 |= *(a1 + 4 * v30 + 24) & (v23 >> v20);
      }
    }

    *(a2 + 201) = v31;
    *(a2 + 160) = v31;
    if (!v27)
    {
      *(a1 + 156) = ++v19;
      if (v20)
      {
        *(a1 + 4) = --v20;
        v34 = (v23 >> v20) & 1;
      }

      else
      {
        *(a1 + 4) = 31;
        v35 = *(a1 + 160);
        v36 = *(a1 + 8);
        if (v19 > v35 || 32 * v36 > v35)
        {
          v23 = 0;
          LOBYTE(v34) = 0;
          *a1 = 0;
          *(a1 + 8) = v36 + 1;
        }

        else
        {
          v23 = bswap32(*(*(a1 + 16) + 4 * v36));
          *a1 = v23;
          *(a1 + 8) = v36 + 1;
          v34 = v23 >> 31;
        }

        v20 = 31;
      }

      *(a2 + 202) = v34;
    }
  }

  if (*(a2 + 202) != 1)
  {
    return 0;
  }

  v37 = 0;
  for (i = v19 + 2; ; ++i)
  {
    *(a1 + 156) = i - 1;
    if (v20)
    {
      break;
    }

    *(a1 + 4) = 31;
    v39 = *(a1 + 160);
    v40 = *(a1 + 8);
    if (i - 1 > v39 || 32 * v40 > v39)
    {
      v23 = 0;
      *(a2 + 150) = v37;
      *a1 = 0;
      *(a1 + 8) = v40 + 1;
      goto LABEL_78;
    }

    v23 = bswap32(*(*(a1 + 16) + 4 * v40));
    *a1 = v23;
    *(a1 + 8) = v40 + 1;
    if ((v23 & 0x80000000) == 0)
    {
      *(a2 + 150) = v37;
LABEL_78:
      v20 = 31;
LABEL_79:
      v45 = v20 - 1;
      goto LABEL_80;
    }

    v20 = 31;
LABEL_68:
    ++v37;
  }

  if ((v23 >> --v20))
  {
    goto LABEL_68;
  }

  *(a2 + 150) = v37;
  *(a1 + 156) = i;
  if (v20)
  {
    goto LABEL_79;
  }

  *(a1 + 4) = 31;
  v42 = *(a1 + 160);
  v43 = *(a1 + 8);
  if (i > v42 || 32 * v43 > v42)
  {
    v23 = 0;
    *a1 = 0;
  }

  else
  {
    v23 = bswap32(*(*(a1 + 16) + 4 * v43));
    *a1 = v23;
  }

  *(a1 + 8) = v43 + 1;
  v45 = 31;
LABEL_80:
  v46 = *(a2 + 52);
  v47 = i + v46;
  *(a1 + 156) = i + v46;
  v48 = v45 - v46;
  if (v45 >= v46)
  {
    v50 = (v23 >> v48) & *(a1 + 4 * v46 + 24);
  }

  else
  {
    v49 = v46 - v45;
    v48 = 32 - (v46 - v45);
    *(a1 + 4) = v48;
    if (v46 - v45 <= 0x1F)
    {
      v50 = (v23 << v49) & *(a1 + 4 * v46 + 24);
    }

    else
    {
      v50 = 0;
    }

    v51 = *(a1 + 160);
    v52 = *(a1 + 8);
    if (v47 > v51 || 32 * v52 > v51)
    {
      v23 = 0;
      *(a1 + 8) = v52 + 1;
      *a1 = 0;
    }

    else
    {
      v23 = bswap32(*(*(a1 + 16) + 4 * v52));
      *a1 = v23;
      *(a1 + 8) = v52 + 1;
      v50 |= *(a1 + 4 * v49 + 24) & (v23 >> v48);
    }
  }

  *(a2 + 152) = v50;
  *(a1 + 156) = v47 + 1;
  if (!v48)
  {
    v23 = 0;
    *(a1 + 4) = 31;
    v59 = *(a1 + 160);
    v60 = *(a1 + 8);
    if (v47 + 1 <= v59 && 32 * v60 <= v59)
    {
      v23 = bswap32(*(*(a1 + 16) + 4 * v60));
    }

    *a1 = v23;
    *(a1 + 8) = v60 + 1;
    *(a1 + 156) = v47 + 3;
    v53 = 31;
    goto LABEL_98;
  }

  v53 = v48 - 1;
  *(a1 + 156) = v47 + 3;
  if (v48 >= 3)
  {
LABEL_98:
    v55 = v53 - 2;
    *(a1 + 4) = v55;
    v56 = (v23 >> v55) & *(a1 + 32);
    goto LABEL_99;
  }

  v54 = 3 - v48;
  v55 = v53 | 0x1E;
  *(a1 + 4) = v55;
  v56 = (v23 << (3 - v48)) & *(a1 + 32);
  v57 = *(a1 + 160);
  v58 = *(a1 + 8);
  if (v47 + 3 > v57 || 32 * v58 > v57)
  {
    v23 = 0;
    *(a1 + 8) = v58 + 1;
    *a1 = 0;
  }

  else
  {
    v23 = bswap32(*(*(a1 + 16) + 4 * v58));
    *a1 = v23;
    *(a1 + 8) = v58 + 1;
    v56 |= *(a1 + 4 * v54 + 24) & (v23 >> v55);
  }

LABEL_99:
  *(a2 + 148) = v56;
  if (v27 == 2)
  {
    return 0;
  }

  *(a1 + 156) = v47 + 6;
  v61 = v55 - 3;
  if (v55 >= 3)
  {
    *(a1 + 4) = v61;
    v63 = *(a1 + 36);
    v64 = (v23 >> v61) & v63;
  }

  else
  {
    v62 = 3 - v55;
    v61 = v55 + 29;
    *(a1 + 4) = v55 + 29;
    v63 = *(a1 + 36);
    v64 = (v23 << v62) & v63;
    v65 = *(a1 + 160);
    v66 = *(a1 + 8);
    if (v47 + 6 > v65 || 32 * v66 > v65)
    {
      v23 = 0;
      *(a1 + 8) = v66 + 1;
      *a1 = 0;
    }

    else
    {
      v23 = bswap32(*(*(a1 + 16) + 4 * v66));
      *a1 = v23;
      *(a1 + 8) = v66 + 1;
      v64 |= *(a1 + 4 * v62 + 24) & (v23 >> v61);
    }
  }

  *(a2 + 158) = v64;
  if (v56)
  {
    v67 = v47 + 9;
    *(a1 + 156) = v47 + 9;
    v68 = v61 - 3;
    if (v61 >= 3)
    {
      *(a1 + 4) = v68;
      v71 = (v23 >> v68) & v63;
    }

    else
    {
      v69 = 3 - v61;
      v70 = v61 + 29;
      *(a1 + 4) = v61 + 29;
      v71 = (v23 << (3 - v61)) & v63;
      v72 = *(a1 + 160);
      v73 = *(a1 + 8);
      if (v67 > v72 || 32 * v73 > v72)
      {
        *(a1 + 8) = v73 + 1;
        *a1 = 0;
      }

      else
      {
        v74 = bswap32(*(*(a1 + 16) + 4 * v73));
        *a1 = v74;
        *(a1 + 8) = v73 + 1;
        v71 |= *(a1 + 4 * v69 + 24) & (v74 >> v70);
      }
    }

    *(a2 + 162) = v71;
    *(a2 + 163) = 1 << (v71 - 1);
    v75 = 16 << v71;
  }

  else
  {
    *(a2 + 162) = 257;
    LOWORD(v75) = 32;
  }

  result = 0;
  *(a2 + 164) = v75;
  return result;
}

int *DecHeaderGobThingy(int *result, uint64_t a2)
{
  v2 = *(a2 + 156) + 1;
  *(a2 + 156) = v2;
  v3 = *(a2 + 4);
  if (!v3)
  {
    *(a2 + 4) = 31;
    v6 = *(a2 + 160);
    v7 = *(a2 + 8);
    if (v2 > v6 || 32 * v7 > v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = bswap32(*(*(a2 + 16) + 4 * v7));
    }

    *a2 = v9;
    *(a2 + 8) = v7 + 1;
    v4 = 31;
    v5 = 7;
    goto LABEL_11;
  }

  v4 = v3 - 1;
  v5 = (v3 - 1) & 7;
  if ((v4 & 7) != 0)
  {
LABEL_11:
    v2 += v5;
    v4 &= 0xFFFFFFF8;
  }

  *(a2 + 156) = v2 + 5;
  if (v4 > 4)
  {
    v11 = v4 - 5;
    v21 = *a2;
    *result = (*a2 >> (v4 - 5)) & *(a2 + 44);
    *(a2 + 156) = v2 + 7;
    if (v4 - 5 <= 1)
    {
      v16 = 7 - v4;
      v17 = v11 | 0x1E;
      *(a2 + 4) = v11 | 0x1E;
      v18 = (v21 << v16) & *(a2 + 32);
      v19 = *(a2 + 160);
      v20 = *(a2 + 8);
      if (v2 + 7 > v19 || 32 * v20 > v19)
      {
        v21 = 0;
        *(a2 + 8) = v20 + 1;
        *a2 = 0;
      }

      else
      {
        v21 = bswap32(*(*(a2 + 16) + 4 * v20));
        *a2 = v21;
        *(a2 + 8) = v20 + 1;
        v18 |= *(a2 + 4 * v16 + 24) & (v21 >> v17);
      }

      result[1] = v18;
      *(a2 + 156) = v2 + 12;
      goto LABEL_31;
    }
  }

  else
  {
    v10 = 5 - v4;
    v11 = v4 + 27;
    *(a2 + 4) = v4 + 27;
    v12 = (*a2 << (5 - v4)) & *(a2 + 44);
    v13 = *(a2 + 160);
    v14 = *(a2 + 8);
    if (v2 + 5 > v13 || 32 * v14 > v13)
    {
      v21 = 0;
      *(a2 + 8) = v14 + 1;
      *a2 = 0;
    }

    else
    {
      v21 = bswap32(*(*(a2 + 16) + 4 * v14));
      *a2 = v21;
      *(a2 + 8) = v14 + 1;
      v12 |= *(a2 + 4 * v10 + 24) & (v21 >> v11);
    }

    *result = v12;
  }

  v17 = v11 - 2;
  result[1] = (v21 >> (v11 - 2)) & *(a2 + 32);
  v22 = v2 + 12;
  *(a2 + 156) = v2 + 12;
  if (v11 - 2 >= 5)
  {
LABEL_31:
    *(a2 + 4) = v17 - 5;
    v25 = (v21 >> (v17 - 5)) & *(a2 + 44);
    goto LABEL_32;
  }

  v23 = 7 - v11;
  v24 = v11 + 25;
  *(a2 + 4) = v24;
  v25 = (v21 << v23) & *(a2 + 44);
  v26 = *(a2 + 160);
  v27 = *(a2 + 8);
  if (v22 > v26 || 32 * v27 > v26)
  {
    *(a2 + 8) = v27 + 1;
    *a2 = 0;
  }

  else
  {
    v28 = bswap32(*(*(a2 + 16) + 4 * v27));
    *a2 = v28;
    *(a2 + 8) = v27 + 1;
    v25 |= *(a2 + 4 * v23 + 24) & (v28 >> v24);
  }

LABEL_32:
  result[2] = v25;
  return result;
}

int16x4_t DecMotionVectors(int16x4_t *a1, int16x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, int a11, char a12, unsigned __int8 a13, char a14, uint64_t a15, uint64_t a16, int a17)
{
  v18 = a3;
  v20 = a1;
  v21 = 2 * a9;
  v50 = *(a15 + 162);
  v22 = *(a15 + 163);
  v48 = *(a15 + 164);
  if (a12 != 2)
  {
    Predictor1MV = GetPredictor1MV(a9, a11, a3, a5, a17);
    v32 = GetPredictor1MV(a9, a11, a6, a8, a17);
    v33 = HuffmanDecMvd(a16);
    v55[0] = v33;
    if (v33 == -99)
    {
      return result;
    }

    if (v50 < 2)
    {
      v35 = v33;
      v34 = HuffmanDecMvd(a16);
      if (v34 == -99)
      {
        return result;
      }
    }

    else
    {
      DecodeLongVector(a16, v50, v22, v55);
      v54 = HuffmanDecMvd(a16);
      if (v54 == -99)
      {
        return result;
      }

      DecodeLongVector(a16, v50, v22, &v54);
      LOWORD(v34) = v54;
      v35 = v55[0];
    }

    v36 = v32 + v34;
    v37 = VerifyMotionVectorRange(v48, (Predictor1MV + v35));
    v38 = VerifyMotionVectorRange(v48, v36);
    v39 = (2 * v21) | 2;
    *(a4 + v39) = v37;
    *(a4 + 2 * v21) = v37;
    *(a3 + v39) = v37;
    *(a3 + 2 * v21) = v37;
    *(a7 + v39) = v38;
    *(a7 + 2 * v21) = v38;
    *(a6 + v39) = v38;
    *(a6 + 2 * v21) = v38;
    *v20 = vdup_n_s16(v37);
    result = vdup_n_s16(v38);
    *a2 = result;
    return result;
  }

  v46 = *(a15 + 163);
  v23 = 0;
  v44 = v21 - 2;
  v43 = a3 + 2 * v21;
  v42 = a6 + 2 * v21;
  do
  {
    LOBYTE(v40) = a14;
    v20->i16[v23] = GetPredictor4MV(v23, a9, a10, a11, v18, a4, a5, a13, v40, a17);
    LOBYTE(v41) = a14;
    a2->i16[v23] = GetPredictor4MV(v23, a9, a10, a11, a6, a7, a8, a13, v41, a17);
    v25 = HuffmanDecMvd(a16);
    v55[0] = v25;
    if (v25 == -99)
    {
      break;
    }

    if (v50 < 2)
    {
      v28 = v25;
      v27 = HuffmanDecMvd(a16);
      if (v27 == -99)
      {
        return result;
      }
    }

    else
    {
      DecodeLongVector(a16, v50, v46, v55);
      v54 = HuffmanDecMvd(a16);
      if (v54 == -99)
      {
        return result;
      }

      DecodeLongVector(a16, v50, v46, &v54);
      LOWORD(v27) = v54;
      v28 = v55[0];
      v20 = a1;
    }

    v20->i16[v23] += v28;
    a2->i16[v23] += v27;
    v20->i16[v23] = VerifyMotionVectorRange(v48, v20->i16[v23]);
    a2->i16[v23] = VerifyMotionVectorRange(v48, a2->i16[v23]);
    v29 = v20->i16[v23];
    if (v23 > 1)
    {
      v30 = v44 + v23;
      *(a4 + 2 * v30) = v29;
      *(a7 + 2 * v30) = a2->i16[v23];
    }

    else
    {
      *(v43 + 2 * v23) = v29;
      *(v42 + 2 * v23) = a2->i16[v23];
    }

    v18 = a3;
    ++v23;
  }

  while (v23 != 4);
  return result;
}

uint64_t DecodeLongVector(uint64_t result, unsigned int a2, int a3, int *a4)
{
  if (a2 >= 2 && *a4)
  {
    v4 = a2 - 1;
    v5 = *(result + 156) + a2 - 1;
    *(result + 156) = v5;
    v6 = *(result + 4);
    v7 = v6 - (a2 - 1);
    if (v6 >= a2 - 1)
    {
      *(result + 4) = v7;
      v10 = (*result >> v7) & *(result + 4 * v4 + 24);
    }

    else
    {
      v8 = v4 - v6;
      v9 = 32 - (v4 - v6);
      *(result + 4) = v9;
      if (v8 <= 0x1F)
      {
        v10 = (*result << v8) & *(result + 4 * v4 + 24);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(result + 160);
      v12 = *(result + 8);
      if (v5 > v11 || 32 * v12 > v11)
      {
        *(result + 8) = v12 + 1;
        *result = 0;
      }

      else
      {
        v14 = bswap32(*(*(result + 16) + 4 * v12));
        *result = v14;
        *(result + 8) = v12 + 1;
        v10 |= *(result + 4 * v8 + 24) & (v14 >> v9);
      }
    }

    v15 = *a4;
    if (*a4 < 0)
    {
      v15 = -v15;
    }

    v16 = v15 * a3 - a3 + v10;
    if (*a4 >= 0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = ~v16;
    }

    *a4 = v17;
  }

  return result;
}

uint64_t DecMcpbcIVop(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int a4, CBitStreamDeco *a5)
{
  if ((a3 - 1) < 2 || a3 == 3 && a4 == 2)
  {
    do
    {
      v8 = HuffmanDecMcbpcInter(a5);
    }

    while (v8 == 20);
    if (v8 != -99)
    {
      v9 = (v8 >> 2) & 7;
LABEL_11:
      v10 = 0;
      *a1 = v9;
      a2[4] = (v8 & 2) != 0;
      a2[5] = v8 & 1;
      return v10;
    }
  }

  else
  {
    do
    {
      v8 = HuffmanDecMcbpcIntra(a5);
    }

    while (v8 == 8);
    if (v8 != -99)
    {
      v9 = (v8 >> 2) + 3;
      goto LABEL_11;
    }
  }

  return 4294965300;
}

uint64_t DecMcpbcPVop(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int a4, CBitStreamDeco *a5)
{
  if ((a3 - 1) >= 2 && (a3 != 3 || a4 != 2))
  {
    do
    {
      v8 = HuffmanDecMcbpcIntra(a5);
    }

    while (v8 == 8);
    if (v8 != -99)
    {
      v9 = v8 == 20;
      v10 = (v8 >> 2) + 3;
      goto LABEL_9;
    }

    return 4294965300;
  }

  v8 = HuffmanDecMcbpcInter(a5);
  if (v8 == -99)
  {
    return 4294965300;
  }

  v9 = v8 == 20;
  v10 = (v8 >> 2) & 7;
LABEL_9:
  if (v9)
  {
    LOBYTE(v10) = 5;
  }

  v11 = 0;
  *a1 = v10;
  a2[4] = (v8 & 2) != 0;
  a2[5] = v8 & 1;
  return v11;
}

uint64_t DecCbpy(unsigned __int8 *a1, int a2, CBitStreamDeco *a3)
{
  v5 = HuffmanDecCbpy(a3);
  if (v5 == -99)
  {
    return 4294965301;
  }

  v7 = v5;
  result = 0;
  if ((a2 - 5) < 0xFFFFFFFE)
  {
    v7 = ~v7 & 0xF;
  }

  *a1 = v7 >> 3;
  a1[1] = (v7 & 4) != 0;
  a1[2] = (v7 & 2) != 0;
  a1[3] = v7 & 1;
  return result;
}

uint64_t DecDQuant(int *a1, CBitStreamDeco *a2)
{
  v2 = *(a2 + 39) + 2;
  *(a2 + 39) = v2;
  v3 = *(a2 + 1);
  if (v3 >= 2)
  {
    v12 = v3 - 2;
    *(a2 + 1) = v12;
    v6 = (*a2 >> v12) & *(a2 + 8);
  }

  else
  {
    v4 = 2 - v3;
    v5 = v3 | 0x1E;
    *(a2 + 1) = v5;
    v6 = (*a2 << v4) & *(a2 + 8);
    v7 = *(a2 + 40);
    v8 = *(a2 + 2);
    v9 = 32 * v8;
    if (v2 <= v7)
    {
      v10 = v9 >= v7;
      v11 = v9 == v7;
    }

    else
    {
      v10 = 1;
      v11 = 0;
    }

    if (!v11 && v10)
    {
      *(a2 + 2) = v8 + 1;
      *a2 = 0;
    }

    else
    {
      v13 = bswap32(*(*(a2 + 2) + 4 * v8));
      *a2 = v13;
      *(a2 + 2) = v8 + 1;
      v6 |= *(a2 + v4 + 6) & (v13 >> v5);
    }
  }

  if (v6 > 3)
  {
    return 4294965303;
  }

  v14 = 0;
  *a1 = dword_27791E470[v6];
  return v14;
}

uint64_t CBitStreamDeco::BarfBits(uint64_t this, int a2)
{
  v2 = *(this + 4) + a2;
  *(this + 4) = v2;
  if (v2 >= 0x21)
  {
    v3 = v2 - 32;
    v4 = *(this + 8);
    *(this + 4) = v3;
    *(this + 8) = v4 - 1;
    if (*(this + 160) >= (32 * (v4 - 1)))
    {
      *this = bswap32(*(*(this + 16) + 4 * (v4 - 2)));
    }
  }

  *(this + 156) -= a2;
  return this;
}

void CIntraDcDecoder::CIntraDcDecoder(CIntraDcDecoder *this)
{
  *this = 0x9D9D9D9D9D9D9D9DLL;
  *(this + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v1 = &word_27791E482;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = &unk_27791E484;
  v3 = &word_27791E486;
  v4 = 18;
  LOWORD(v5) = 15;
  do
  {
    v7 = v2[3];
    v2 += 3;
    v6 = v7;
    if (v7 < v5)
    {
      v5 = v5;
      v8 = *v1;
      v9 = *v3;
      do
      {
        v10 = this + v5;
        *v10 = v8;
        v10[16] = v9;
        --v5;
      }

      while (v5 > v6);
    }

    v1 += 3;
    v3 += 3;
    LOWORD(v5) = v6;
    v11 = v4 >= 3;
    v4 -= 3;
  }

  while (v4 != 0 && v11);
  *(this + 4) = 0x9D9D9D9D9D9D9D9DLL;
  *(this + 5) = 0x9D9D9D9D9D9D9D9DLL;
  v12 = &word_27791E4AE;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v13 = &unk_27791E4B0;
  v14 = &word_27791E4B2;
  LOWORD(v15) = 15;
  v16 = 15;
  do
  {
    v18 = v13[3];
    v13 += 3;
    v17 = v18;
    if (v18 < v15)
    {
      v15 = v15;
      v19 = *v12;
      v20 = *v14;
      do
      {
        v21 = this + v15;
        v21[32] = v19;
        v21[48] = v20;
        --v15;
      }

      while (v15 > v17);
    }

    v12 += 3;
    v14 += 3;
    LOWORD(v15) = v17;
    v11 = v16 >= 3;
    v16 -= 3;
  }

  while (v16 != 0 && v11);
}

CIntraDcDecoder *CIntraDcDecoder::GrabDcLuminance(CIntraDcDecoder *this, int *a2, CBitStreamDeco *a3)
{
  v13 = 0;
  v5 = CIntraDcDecoder::GrabDcSizeLuminance(this, &v13, a3);
  v6 = v5;
  if (!v5)
  {
    v8 = v13;
    if (v13)
    {
      *a2 = CIntraDcDecoder::GrabDcValue(v5, v13, a3);
      if (v8 >= 9)
      {
        v9 = *(a3 + 39) + 1;
        *(a3 + 39) = v9;
        v10 = *(a3 + 1);
        if (v10)
        {
          *(a3 + 1) = v10 - 1;
        }

        else
        {
          *(a3 + 1) = 31;
          v11 = *(a3 + 40);
          v12 = *(a3 + 2);
          if (v9 > v11 || 32 * v12 > v11)
          {
            *a3 = 0;
          }

          else
          {
            *a3 = bswap32(*(*(a3 + 2) + 4 * v12));
          }

          *(a3 + 2) = v12 + 1;
        }
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  return v6;
}

uint64_t CIntraDcDecoder::GrabDcSizeLuminance(CIntraDcDecoder *this, int *a2, CBitStreamDeco *a3)
{
  v3 = *(a3 + 39);
  v4 = v3 + 4;
  *(a3 + 39) = v3 + 4;
  v5 = *(a3 + 1);
  if (v5 >= 4)
  {
    v7 = v5 - 4;
    *(a3 + 1) = v5 - 4;
    v12 = *a3;
    v8 = (*a3 >> v7) & *(a3 + 10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 4 - v5;
    v7 = v5 | 0x1C;
    *(a3 + 1) = v5 | 0x1C;
    v8 = (*a3 << (4 - v5)) & *(a3 + 10);
    v9 = *(a3 + 40);
    v10 = *(a3 + 2);
    if (v4 > v9 || 32 * v10 > v9)
    {
      v12 = 0;
      *(a3 + 2) = v10 + 1;
      *a3 = 0;
      if (!v8)
      {
LABEL_15:
        *(a3 + 39) = v3 + 5;
        if (v7)
        {
          v20 = v7 - 1;
          *(a3 + 1) = v7 - 1;
          if (((v12 >> (v7 - 1)) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a3 + 1) = 31;
          v21 = *(a3 + 40);
          v22 = *(a3 + 2);
          if (v3 + 5 > v21 || 32 * v22 > v21)
          {
            v12 = 0;
            *a3 = 0;
            *(a3 + 2) = v22 + 1;
            v20 = 31;
            goto LABEL_26;
          }

          v12 = bswap32(*(*(a3 + 2) + 4 * v22));
          *a3 = v12;
          *(a3 + 2) = v22 + 1;
          v20 = 31;
          if ((v12 & 0x80000000) == 0)
          {
LABEL_26:
            v25 = v3 + 6;
            v26 = 6;
            do
            {
              *(a3 + 39) = v25;
              if (v20)
              {
                *(a3 + 1) = --v20;
                v27 = (v12 >> v20) & 1;
              }

              else
              {
                *(a3 + 1) = 31;
                v28 = *(a3 + 40);
                v29 = *(a3 + 2);
                if (v25 > v28 || 32 * v29 > v28)
                {
                  v12 = 0;
                  v27 = 0;
                  *a3 = 0;
                  *(a3 + 2) = v29 + 1;
                }

                else
                {
                  v12 = bswap32(*(*(a3 + 2) + 4 * v29));
                  *a3 = v12;
                  *(a3 + 2) = v29 + 1;
                  v27 = v12 >> 31;
                }

                v20 = 31;
              }

              v24 = v26 + 1;
              if (v27)
              {
                break;
              }

              ++v25;
            }

            while (v26++ < 0xC);
            goto LABEL_39;
          }
        }

        v24 = 6;
LABEL_39:
        if (v24 <= 0xC)
        {
          v14 = v24;
        }

        else
        {
          v14 = 0;
        }

        if (v24 <= 0xC)
        {
          result = 0;
        }

        else
        {
          result = 4294958327;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v12 = bswap32(*(*(a3 + 2) + 4 * v10));
      *a3 = v12;
      *(a3 + 2) = v10 + 1;
      v8 |= *(a3 + v6 + 6) & (v12 >> v7);
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = this + v8;
  v14 = *v13;
  v15 = v13[16];
  v16 = v7 + v15;
  *(a3 + 1) = v16;
  if (v16 >= 0x21)
  {
    v17 = v16 - 32;
    v18 = *(a3 + 2);
    *(a3 + 1) = v17;
    *(a3 + 2) = v18 - 1;
    if (*(a3 + 40) >= (32 * (v18 - 1)))
    {
      *a3 = bswap32(*(*(a3 + 2) + 4 * (v18 - 2)));
    }
  }

  result = 0;
  *(a3 + 39) = v4 - v15;
LABEL_45:
  *a2 = v14;
  return result;
}

uint64_t CIntraDcDecoder::GrabDcValue(CIntraDcDecoder *this, unsigned int a2, CBitStreamDeco *a3)
{
  v3 = a2 - 1;
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v4 = *(a3 + 39) + a2;
    *(a3 + 39) = v4;
    v5 = *(a3 + 1);
    v6 = v5 - a2;
    if (v5 >= a2)
    {
      *(a3 + 1) = v6;
      v8 = (*a3 >> v6) & *(a3 + a2 + 6);
    }

    else
    {
      v7 = a2 - v5;
      *(a3 + 1) = 32 - v7;
      if (v7 <= 0x1F)
      {
        v8 = (*a3 << v7) & *(a3 + a2 + 6);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(a3 + 40);
      v10 = *(a3 + 2);
      if (v4 > v9 || 32 * v10 > v9)
      {
        *(a3 + 2) = v10 + 1;
        *a3 = 0;
      }

      else
      {
        v12 = bswap32(*(*(a3 + 2) + 4 * v10));
        *a3 = v12;
        *(a3 + 2) = v10 + 1;
        v8 |= *(a3 + v7 + 6) & (v12 >> (32 - v7));
      }
    }

    if (((v8 >> v3) & 1) == 0)
    {
      v13 = (-2 << v3) | 1;
      return v13 + v8;
    }
  }

  v13 = 0;
  return v13 + v8;
}

CIntraDcDecoder *CIntraDcDecoder::GrabDcLuminance(CIntraDcDecoder *this, __int16 *a2, CBitStreamDeco *a3)
{
  v13 = 0;
  v5 = CIntraDcDecoder::GrabDcSizeLuminance(this, &v13, a3);
  v6 = v5;
  if (!v5)
  {
    v8 = v13;
    if (v13)
    {
      *a2 = CIntraDcDecoder::GrabDcValue(v5, v13, a3);
      if (v8 >= 9)
      {
        v9 = *(a3 + 39) + 1;
        *(a3 + 39) = v9;
        v10 = *(a3 + 1);
        if (v10)
        {
          *(a3 + 1) = v10 - 1;
        }

        else
        {
          *(a3 + 1) = 31;
          v11 = *(a3 + 40);
          v12 = *(a3 + 2);
          if (v9 > v11 || 32 * v12 > v11)
          {
            *a3 = 0;
          }

          else
          {
            *a3 = bswap32(*(*(a3 + 2) + 4 * v12));
          }

          *(a3 + 2) = v12 + 1;
        }
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  return v6;
}

CIntraDcDecoder *CIntraDcDecoder::GrabDcChrominance(CIntraDcDecoder *this, int *a2, CBitStreamDeco *a3)
{
  v13 = 0;
  v5 = CIntraDcDecoder::GrabDcSizeChrominance(this, &v13, a3);
  v6 = v5;
  if (!v5)
  {
    v8 = v13;
    if (v13)
    {
      *a2 = CIntraDcDecoder::GrabDcValue(v5, v13, a3);
      if (v8 >= 9)
      {
        v9 = *(a3 + 39) + 1;
        *(a3 + 39) = v9;
        v10 = *(a3 + 1);
        if (v10)
        {
          *(a3 + 1) = v10 - 1;
        }

        else
        {
          *(a3 + 1) = 31;
          v11 = *(a3 + 40);
          v12 = *(a3 + 2);
          if (v9 > v11 || 32 * v12 > v11)
          {
            *a3 = 0;
          }

          else
          {
            *a3 = bswap32(*(*(a3 + 2) + 4 * v12));
          }

          *(a3 + 2) = v12 + 1;
        }
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  return v6;
}

uint64_t CIntraDcDecoder::GrabDcSizeChrominance(CIntraDcDecoder *this, int *a2, CBitStreamDeco *a3)
{
  v3 = *(a3 + 39);
  v4 = v3 + 4;
  *(a3 + 39) = v3 + 4;
  v5 = *(a3 + 1);
  if (v5 >= 4)
  {
    v7 = v5 - 4;
    *(a3 + 1) = v5 - 4;
    v12 = *a3;
    v8 = (*a3 >> v7) & *(a3 + 10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 4 - v5;
    v7 = v5 | 0x1C;
    *(a3 + 1) = v5 | 0x1C;
    v8 = (*a3 << (4 - v5)) & *(a3 + 10);
    v9 = *(a3 + 40);
    v10 = *(a3 + 2);
    if (v4 > v9 || 32 * v10 > v9)
    {
      v12 = 0;
      *(a3 + 2) = v10 + 1;
      *a3 = 0;
      if (!v8)
      {
LABEL_15:
        *(a3 + 39) = v3 + 5;
        if (v7)
        {
          v20 = v7 - 1;
          *(a3 + 1) = v7 - 1;
          if (((v12 >> (v7 - 1)) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a3 + 1) = 31;
          v21 = *(a3 + 40);
          v22 = *(a3 + 2);
          if (v3 + 5 > v21 || 32 * v22 > v21)
          {
            v12 = 0;
            *a3 = 0;
            *(a3 + 2) = v22 + 1;
            v20 = 31;
            goto LABEL_26;
          }

          v12 = bswap32(*(*(a3 + 2) + 4 * v22));
          *a3 = v12;
          *(a3 + 2) = v22 + 1;
          v20 = 31;
          if ((v12 & 0x80000000) == 0)
          {
LABEL_26:
            v25 = v3 + 6;
            v26 = 5;
            do
            {
              *(a3 + 39) = v25;
              if (v20)
              {
                *(a3 + 1) = --v20;
                v27 = (v12 >> v20) & 1;
              }

              else
              {
                *(a3 + 1) = 31;
                v28 = *(a3 + 40);
                v29 = *(a3 + 2);
                if (v25 > v28 || 32 * v29 > v28)
                {
                  v12 = 0;
                  v27 = 0;
                  *a3 = 0;
                  *(a3 + 2) = v29 + 1;
                }

                else
                {
                  v12 = bswap32(*(*(a3 + 2) + 4 * v29));
                  *a3 = v12;
                  *(a3 + 2) = v29 + 1;
                  v27 = v12 >> 31;
                }

                v20 = 31;
              }

              v24 = v26 + 1;
              if (v27)
              {
                break;
              }

              ++v25;
            }

            while (v26++ < 0xC);
            goto LABEL_39;
          }
        }

        v24 = 5;
LABEL_39:
        if (v24 <= 0xC)
        {
          v14 = v24;
        }

        else
        {
          v14 = 0;
        }

        if (v24 <= 0xC)
        {
          result = 0;
        }

        else
        {
          result = 4294958327;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v12 = bswap32(*(*(a3 + 2) + 4 * v10));
      *a3 = v12;
      *(a3 + 2) = v10 + 1;
      v8 |= *(a3 + v6 + 6) & (v12 >> v7);
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = this + v8;
  v14 = v13[32];
  v15 = v13[48];
  v16 = v7 + v15;
  *(a3 + 1) = v16;
  if (v16 >= 0x21)
  {
    v17 = v16 - 32;
    v18 = *(a3 + 2);
    *(a3 + 1) = v17;
    *(a3 + 2) = v18 - 1;
    if (*(a3 + 40) >= (32 * (v18 - 1)))
    {
      *a3 = bswap32(*(*(a3 + 2) + 4 * (v18 - 2)));
    }
  }

  result = 0;
  *(a3 + 39) = v4 - v15;
LABEL_45:
  *a2 = v14;
  return result;
}

CIntraDcDecoder *CIntraDcDecoder::GrabDcChrominance(CIntraDcDecoder *this, __int16 *a2, CBitStreamDeco *a3)
{
  v13 = 0;
  v5 = CIntraDcDecoder::GrabDcSizeChrominance(this, &v13, a3);
  v6 = v5;
  if (!v5)
  {
    v8 = v13;
    if (v13)
    {
      *a2 = CIntraDcDecoder::GrabDcValue(v5, v13, a3);
      if (v8 >= 9)
      {
        v9 = *(a3 + 39) + 1;
        *(a3 + 39) = v9;
        v10 = *(a3 + 1);
        if (v10)
        {
          *(a3 + 1) = v10 - 1;
        }

        else
        {
          *(a3 + 1) = 31;
          v11 = *(a3 + 40);
          v12 = *(a3 + 2);
          if (v9 > v11 || 32 * v12 > v11)
          {
            *a3 = 0;
          }

          else
          {
            *a3 = bswap32(*(*(a3 + 2) + 4 * v12));
          }

          *(a3 + 2) = v12 + 1;
        }
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  return v6;
}

uint64_t InitSourceInfo(void *a1, __int16 a2, __int16 a3)
{
  if ((a2 + 16) < 0x11u || (a3 + 16) < 0x11u)
  {
    return 4294958333;
  }

  v8 = MEM_NewClear(40);
  *a1 = v8;
  if (!v8)
  {
    return 4294967188;
  }

  v9 = v8;
  result = 0;
  v9[4] = a2;
  v9[5] = a3;
  v10 = (a3 + 15) >> 4;
  v9[1] = v10;
  v11 = (a2 + 15) >> 4;
  *v9 = v11;
  *(v9 + 1) = v10 * v11;
  *(v9 + 6) = 0;
  *(v9 + 2) = 0;
  return result;
}

uint64_t InitGobHeader(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      return 0;
    }

    else
    {
      v2 = MEM_NewClear(12);
      *v1 = v2;
      if (v2)
      {
        return 0;
      }

      else
      {
        return 4294967188;
      }
    }
  }

  return result;
}

uint64_t InitPictureInfo(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(204);
  *a1 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

uint64_t InitVopComplexityEstimation(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(22);
  *a1 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

uint64_t KillSourceInfo(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t KillGobHeader(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      MEM_Dispose(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t EncodeUMVMVD_Pair(int a1, int a2, _WORD *a3, _WORD *a4, char *a5, char *a6, uint64_t a7)
{
  if (a1 == 1 && a2 == 1)
  {
    result = 0;
    *a3 = 0;
    *a4 = 1;
    *a5 = 3;
    *a6 = 4;
  }

  else
  {
    v12 = EncodeUMVMVD(a1, a3, a5, a7);
    return EncodeUMVMVD(a2, a4, a6, a7) + v12;
  }

  return result;
}

uint64_t EncodeUMVMVD(int a1, _WORD *a2, char *a3, uint64_t a4)
{
  if ((a1 - 64) > 0xFFFFFF80)
  {
    result = 0;
    v8 = (a1 + 63);
    *a2 = *(a4 + 2 * v8);
    *a3 = *(a4 + v8 + 256);
  }

  else
  {
    if (a1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = -a1;
    }

    if (v5 <= 0xFFF)
    {
      v9 = 0;
      v10 = 0;
      v11 = (a1 >> 30) & 2;
      v12 = 3;
      do
      {
        v10 |= ((2 * (v5 & 1)) | 1) << v9;
        v12 += 2;
        v9 += 2;
        v13 = v5 > 3;
        v5 >>= 1;
      }

      while (v13);
      result = 0;
      *a3 = v12;
      v6 = v11 | (4 * v10);
    }

    else
    {
      v6 = 0;
      *a3 = 0;
      result = 1;
    }

    *a2 = v6;
  }

  return result;
}

uint64_t DecodeUMVMVD_Pair(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = DecodeUMVMVD(a3, a4);
  result = DecodeUMVMVD(a3, a4);
  *a2 = result;
  if (*a1 == 1 && result == 1)
  {
    v10 = *(a3 + 156) + 1;
    *(a3 + 156) = v10;
    v11 = *(a3 + 4);
    if (v11)
    {
      *(a3 + 4) = v11 - 1;
    }

    else
    {
      *(a3 + 4) = 31;
      v12 = *(a3 + 160);
      v13 = *(a3 + 8);
      if (v10 > v12 || 32 * v13 > v12)
      {
        *a3 = 0;
      }

      else
      {
        *a3 = bswap32(*(*(a3 + 16) + 4 * v13));
      }

      *(a3 + 8) = v13 + 1;
    }
  }

  return result;
}

uint64_t DecodeUMVMVD(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156);
  v3 = v2 + 11;
  *(a1 + 156) = v2 + 11;
  v4 = *(a1 + 4);
  if (v4 >= 0xB)
  {
    v6 = v4 - 11;
    *(a1 + 4) = v6;
    v11 = *a1;
    v7 = (*a1 >> v6) & *(a1 + 68);
    if ((v7 & 0x400) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = 11 - v4;
    v6 = v4 + 21;
    *(a1 + 4) = v6;
    v7 = (*a1 << v5) & *(a1 + 68);
    v8 = *(a1 + 160);
    v9 = *(a1 + 8);
    if (v3 > v8 || 32 * v9 > v8)
    {
      v11 = 0;
      *(a1 + 8) = v9 + 1;
      *a1 = 0;
      if ((v7 & 0x400) != 0)
      {
LABEL_25:
        *(a1 + 4) = v6 + 10;
        if (v6 >= 0x17)
        {
          v19 = v6 - 22;
          v20 = *(a1 + 8);
          *(a1 + 4) = v19;
          *(a1 + 8) = v20 - 1;
          if (*(a1 + 160) >= (32 * (v20 - 1)))
          {
            *a1 = bswap32(*(*(a1 + 16) + 4 * (v20 - 2)));
          }
        }

        v21 = 0;
        *(a1 + 156) = v2 + 1;
        return v21;
      }
    }

    else
    {
      v11 = bswap32(*(*(a1 + 16) + 4 * v9));
      *a1 = v11;
      *(a1 + 8) = v9 + 1;
      v7 |= *(a1 + 4 * v5 + 24) & (v11 >> v6);
      if ((v7 & 0x400) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  if ((~v7 & 0x155) == 0)
  {
    v12 = *(a2 + 2 * v7);
    for (i = v2 + 13; ; i += 2)
    {
      *(a1 + 156) = i;
      if (v6 >= 2)
      {
        *(a1 + 4) = v6 - 2;
        v15 = (v11 >> (v6 - 2)) & *(a1 + 32);
        v6 -= 2;
        if ((v15 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v14 = 2 - v6;
        v6 |= 0x1Eu;
        *(a1 + 4) = v6;
        v15 = (v11 << v14) & *(a1 + 32);
        v16 = *(a1 + 160);
        v17 = *(a1 + 8);
        if (i > v16 || 32 * v17 > v16)
        {
          v11 = 0;
          *(a1 + 8) = v17 + 1;
          *a1 = 0;
          if ((v15 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v11 = bswap32(*(*(a1 + 16) + 4 * v17));
          *a1 = v11;
          *(a1 + 8) = v17 + 1;
          v15 |= *(a1 + 24 + 4 * v14) & (v11 >> v6);
          if ((v15 & 1) == 0)
          {
LABEL_33:
            if (v15)
            {
              return -v12;
            }

            else
            {
              return v12;
            }
          }
        }
      }

      v12 = (v15 >> 1) | (2 * v12);
    }
  }

  v22 = *(a2 + v7 + 2048);
  v23 = v6 + v22;
  *(a1 + 4) = v23;
  if (v23 >= 0x21)
  {
    v24 = v23 - 32;
    v25 = *(a1 + 8);
    *(a1 + 4) = v24;
    *(a1 + 8) = v25 - 1;
    if (*(a1 + 160) >= (32 * (v25 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 16) + 4 * (v25 - 2)));
    }
  }

  *(a1 + 156) = v3 - v22;
  return *(a2 + 2 * v7);
}

uint64_t InitEncUMVMVDTables(uint64_t *a1)
{
  v2 = MEM_NewClear(384);
  *a1 = v2;
  if (!v2)
  {
    return 4294967188;
  }

  v3 = -63;
  do
  {
    v4 = -v3;
    if (-v3 < 2)
    {
      v9 = 2;
      v7 = 3;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 3;
      do
      {
        v6 |= ((2 * (v4 & 1)) | 1) << v5;
        v7 += 2;
        v5 += 2;
        v8 = v4 > 3;
        LODWORD(v4) = v4 >> 1;
      }

      while (v8);
      v9 = (4 * v6) | 2;
    }

    v10 = *a1;
    *(*a1 + 2 * (v3 + 63)) = v9;
    *(v10 + v3 + 63 + 256) = v7;
  }

  while (!__CFADD__(v3++, 1));
  v12 = *a1;
  v13 = 1;
  *(v12 + 126) = 1;
  *(v12 + 319) = 1;
  do
  {
    if (v13 < 2)
    {
      v18 = 0;
      v16 = 3;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 3;
      v17 = v13;
      do
      {
        v15 |= ((2 * (v17 & 1)) | 1) << v14;
        v16 += 2;
        v14 += 2;
        v8 = v17 > 3;
        v17 >>= 1;
      }

      while (v8);
      v18 = 4 * v15;
    }

    v19 = *a1;
    *(*a1 + 2 * (v13 + 63)) = v18;
    *(v19 + v13 + 63 + 256) = v16;
    ++v13;
  }

  while (v13 != 64);
  return 0;
}

uint64_t InitDecodeUMVMVDTables(uint64_t *a1)
{
  v2 = MEM_NewClear(3072);
  *a1 = v2;
  if (!v2)
  {
    return 4294967188;
  }

  v3 = 65505;
  do
  {
    v4 = -v3;
    if (-v3 < 2u)
    {
      v7 = 3;
      v9 = 2;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 3;
      do
      {
        v8 = v4;
        v6 |= ((2 * (v4 & 1)) | 1) << v5;
        LOWORD(v4) = v4 >> 1;
        v7 += 2;
        v5 += 2;
      }

      while (v8 > 3);
      v9 = (4 * v6) & 0xFFFC | 2;
    }

    v10 = 11 - v7;
    LODWORD(v11) = v9 << (11 - v7);
    if (v7 == 11)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = (v11 & 0xFFFE) + (1 << (11 - v7));
    }

    if (v12 > (v11 & 0xFFFE))
    {
      v11 = v11;
      do
      {
        v13 = *a1;
        *(*a1 + 2 * v11) = v3;
        *(v13 + v11++ + 2048) = v10;
      }

      while (v11 < v12);
    }

    v14 = v3++;
  }

  while (v14 < -1);
  v15 = 1;
  do
  {
    if (v15 < 2)
    {
      v21 = 0;
      v18 = 3;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 3;
      v19 = v15;
      do
      {
        v17 |= ((2 * (v19 & 1)) | 1) << v16;
        v18 += 2;
        v16 += 2;
        v20 = v19 > 3;
        v19 >>= 1;
      }

      while (v20);
      v21 = 4 * (v17 & 0x3FFF);
    }

    v22 = 11 - v18;
    LODWORD(v23) = v21 << (11 - v18);
    if (v18 == 11)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = (v23 & 0xFFFC) + (1 << (11 - v18));
    }

    if (v24 > (v23 & 0xFFFC))
    {
      v23 = v23;
      do
      {
        v25 = *a1;
        *(*a1 + 2 * v23) = v15;
        *(v25 + v23++ + 2048) = v22;
      }

      while (v23 < v24);
    }

    v26 = v15++ >= 0x1F;
  }

  while (!v26);
  v27 = 32;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = v27;
    do
    {
      v29 |= ((2 * (v30 & 1)) | 1) << v28;
      v28 += 2;
      v20 = v30 > 3;
      v30 >>= 1;
    }

    while (v20);
    v31 = *a1;
    *(*a1 + 2 * v29) = v27;
    *(v31 + v29 + 2048) = 0;
    v26 = v27++ >= 0x3F;
  }

  while (!v26);
  return 0;
}

void CIntraPredictor::CIntraPredictor(CIntraPredictor *this)
{
  *(this + 77) = 0;
  *(this + 37) = 0x1050401000302;
  *(this + 76) = 84148739;
}

void *CIntraPredictor::ResetUpPredictors(void *this, int a2, int a3)
{
  v3 = *this + 96 * a2 + 16 * a3;
  *(v3 + 96) = 1024;
  *(v3 + 98) = 0;
  *(v3 + 104) = 0;
  return this;
}

uint64_t CIntraPredictor::ResetLeftPredictors(uint64_t this, int a2)
{
  v2 = this + 16 * a2;
  *(v2 + 8) = 1024;
  *(v2 + 10) = 0;
  *(v2 + 16) = 0;
  return this;
}

uint64_t CIntraPredictor::ResetPredictorsBlock(uint64_t this, int a2, int a3)
{
  v3 = this + 16 * a3;
  *(v3 + 8) = 1024;
  *(v3 + 10) = 0;
  *(v3 + 16) = 0;
  return this;
}

void *CIntraPredictor::ResetUpPredictorsMb(void *this, int a2)
{
  v2 = *this + 96 * a2;
  *(v2 + 96) = 1024;
  *(v2 + 98) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 1024;
  *(v2 + 114) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1024;
  *(v2 + 130) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1024;
  *(v2 + 146) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1024;
  *(v2 + 162) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 1024;
  *(v2 + 184) = 0;
  *(v2 + 178) = 0;
  return this;
}

uint64_t CIntraPredictor::ResetLeftPredictorsMb(uint64_t this)
{
  *(this + 8) = 1024;
  *(this + 10) = 0;
  *(this + 16) = 0;
  *(this + 24) = 1024;
  *(this + 26) = 0;
  *(this + 32) = 0;
  *(this + 40) = 1024;
  *(this + 42) = 0;
  *(this + 48) = 0;
  *(this + 56) = 1024;
  *(this + 58) = 0;
  *(this + 64) = 0;
  *(this + 72) = 1024;
  *(this + 74) = 0;
  *(this + 80) = 0;
  *(this + 88) = 1024;
  *(this + 96) = 0;
  *(this + 90) = 0;
  return this;
}

uint64_t CIntraPredictor::ResetPredictorsMb(uint64_t this, int a2)
{
  v2 = (*this + 96 * a2);
  v2[8] = *(this + 24);
  v2[24] = *(this + 56);
  v2[32] = *(this + 72);
  v2[40] = *(this + 88);
  v2[48] = 1024;
  v2[64] = 1024;
  if (*(this + 308) - 1 == a2)
  {
    v2[56] = 1024;
    v2[72] = 1024;
    v2[80] = 1024;
    v2[88] = 1024;
  }

  *(this + 8) = 1024;
  *(this + 10) = 0;
  *(this + 16) = 0;
  *(this + 24) = 1024;
  *(this + 26) = 0;
  *(this + 32) = 0;
  *(this + 40) = 1024;
  *(this + 42) = 0;
  *(this + 48) = 0;
  *(this + 56) = 1024;
  *(this + 58) = 0;
  *(this + 64) = 0;
  *(this + 72) = 1024;
  *(this + 74) = 0;
  *(this + 80) = 0;
  *(this + 88) = 1024;
  *(this + 96) = 0;
  *(this + 90) = 0;
  return this;
}

uint64_t CIntraPredictor::ResetPredictorsMbAll(uint64_t this)
{
  for (i = 0; i != 96; i += 16)
  {
    v2 = this + i;
    *(v2 + 8) = 1024;
    *(v2 + 10) = 0;
    *(v2 + 16) = 0;
  }

  v3 = *(this + 308);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *this + 2;
    for (j = -1; j != v3; ++j)
    {
      v6 = 6;
      v7 = v4;
      do
      {
        *(v7 - 1) = 1024;
        *v7 = 0;
        *(v7 + 6) = 0;
        v7 += 2;
        --v6;
      }

      while (v6);
      v4 += 96;
    }
  }

  return this;
}

uint64_t CIntraPredictor::DumpUpPredictors(CIntraPredictor *this, char *__filename, int a3)
{
  v5 = fopen(__filename, "a+");
  v6 = 0;
  v7 = 96 * a3 + 96;
  do
  {
    v8 = 8;
    v9 = v7;
    do
    {
      fprintf(v5, "%5d ", *(*this + v9));
      v9 += 2;
      --v8;
    }

    while (v8);
    fwrite("| ", 2uLL, 1uLL, v5);
    ++v6;
    v7 += 16;
  }

  while (v6 != 6);
  fputc(10, v5);

  return fclose(v5);
}

uint64_t CIntraPredictor::DumpLeftPredictors(CIntraPredictor *this, char *__filename)
{
  v3 = fopen(__filename, "a+");
  v4 = 0;
  v5 = this + 8;
  do
  {
    for (i = 0; i != 16; i += 2)
    {
      fprintf(v3, "%5d ", *&v5[i]);
    }

    fwrite("| ", 2uLL, 1uLL, v3);
    ++v4;
    v5 += 16;
  }

  while (v4 != 6);
  fputc(10, v3);

  return fclose(v3);
}

int *ZigZagBlock(int *result, int *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[8];
  a2[3] = result[16];
  a2[4] = result[9];
  a2[5] = result[2];
  a2[6] = result[3];
  a2[7] = result[10];
  a2[8] = result[17];
  a2[9] = result[24];
  a2[10] = result[32];
  a2[11] = result[25];
  a2[12] = result[18];
  a2[13] = result[11];
  a2[14] = result[4];
  a2[15] = result[5];
  a2[16] = result[12];
  a2[17] = result[19];
  a2[18] = result[26];
  a2[19] = result[33];
  a2[20] = result[40];
  a2[21] = result[48];
  a2[22] = result[41];
  a2[23] = result[34];
  a2[24] = result[27];
  a2[25] = result[20];
  a2[26] = result[13];
  a2[27] = result[6];
  a2[28] = result[7];
  a2[29] = result[14];
  a2[30] = result[21];
  a2[31] = result[28];
  a2[32] = result[35];
  a2[33] = result[42];
  a2[34] = result[49];
  a2[35] = result[56];
  a2[36] = result[57];
  a2[37] = result[50];
  a2[38] = result[43];
  a2[39] = result[36];
  a2[40] = result[29];
  a2[41] = result[22];
  a2[42] = result[15];
  a2[43] = result[23];
  a2[44] = result[30];
  a2[45] = result[37];
  a2[46] = result[44];
  a2[47] = result[51];
  a2[48] = result[58];
  a2[49] = result[59];
  a2[50] = result[52];
  a2[51] = result[45];
  a2[52] = result[38];
  a2[53] = result[31];
  a2[54] = result[39];
  a2[55] = result[46];
  a2[56] = result[53];
  a2[57] = result[60];
  a2[58] = result[61];
  a2[59] = result[54];
  a2[60] = result[47];
  a2[61] = result[55];
  a2[62] = result[62];
  a2[63] = result[63];
  return result;
}

__int16 *ZigZagBlockS16(__int16 *result, __int16 *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[8];
  a2[3] = result[16];
  a2[4] = result[9];
  a2[5] = result[2];
  a2[6] = result[3];
  a2[7] = result[10];
  a2[8] = result[17];
  a2[9] = result[24];
  a2[10] = result[32];
  a2[11] = result[25];
  a2[12] = result[18];
  a2[13] = result[11];
  a2[14] = result[4];
  a2[15] = result[5];
  a2[16] = result[12];
  a2[17] = result[19];
  a2[18] = result[26];
  a2[19] = result[33];
  a2[20] = result[40];
  a2[21] = result[48];
  a2[22] = result[41];
  a2[23] = result[34];
  a2[24] = result[27];
  a2[25] = result[20];
  a2[26] = result[13];
  a2[27] = result[6];
  a2[28] = result[7];
  a2[29] = result[14];
  a2[30] = result[21];
  a2[31] = result[28];
  a2[32] = result[35];
  a2[33] = result[42];
  a2[34] = result[49];
  a2[35] = result[56];
  a2[36] = result[57];
  a2[37] = result[50];
  a2[38] = result[43];
  a2[39] = result[36];
  a2[40] = result[29];
  a2[41] = result[22];
  a2[42] = result[15];
  a2[43] = result[23];
  a2[44] = result[30];
  a2[45] = result[37];
  a2[46] = result[44];
  a2[47] = result[51];
  a2[48] = result[58];
  a2[49] = result[59];
  a2[50] = result[52];
  a2[51] = result[45];
  a2[52] = result[38];
  a2[53] = result[31];
  a2[54] = result[39];
  a2[55] = result[46];
  a2[56] = result[53];
  a2[57] = result[60];
  a2[58] = result[61];
  a2[59] = result[54];
  a2[60] = result[47];
  a2[61] = result[55];
  a2[62] = result[62];
  a2[63] = result[63];
  return result;
}

int *ZigZag4x4Block(int *result, int *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[8];
  a2[3] = result[16];
  a2[4] = result[9];
  a2[5] = result[2];
  a2[6] = result[3];
  a2[7] = result[10];
  a2[8] = result[17];
  a2[9] = result[24];
  a2[10] = 0;
  a2[11] = result[25];
  a2[12] = result[18];
  a2[13] = result[11];
  *(a2 + 7) = 0;
  a2[16] = 0;
  a2[17] = result[19];
  a2[18] = result[26];
  *(a2 + 21) = 0;
  *(a2 + 19) = 0;
  a2[23] = 0;
  a2[24] = result[27];
  return result;
}

__int16 *ZigZag4x4BlockS16(__int16 *result, __int16 *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[8];
  a2[3] = result[16];
  a2[4] = result[9];
  a2[5] = result[2];
  a2[6] = result[3];
  a2[7] = result[10];
  a2[8] = result[17];
  a2[9] = result[24];
  a2[10] = 0;
  a2[11] = result[25];
  a2[12] = result[18];
  a2[13] = result[11];
  *(a2 + 7) = 0;
  a2[16] = 0;
  a2[17] = result[19];
  a2[18] = result[26];
  *(a2 + 19) = 0;
  a2[23] = 0;
  a2[24] = result[27];
  return result;
}

double ZigZagDCBlock(int a1, int *a2)
{
  result = 0.0;
  *(a2 + 14) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *a2 = a1;
  return result;
}

double ZigZagDCBlockS16(__int16 a1, __int16 *a2)
{
  result = 0.0;
  *(a2 + 14) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *a2 = a1;
  return result;
}

int *IZigZagBlock8x8(int *result, int *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[32] = result[10];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[4] = result[14];
  a2[5] = result[15];
  a2[12] = result[16];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[33] = result[19];
  a2[40] = result[20];
  a2[48] = result[21];
  a2[41] = result[22];
  a2[34] = result[23];
  a2[27] = result[24];
  a2[20] = result[25];
  a2[13] = result[26];
  a2[6] = result[27];
  a2[7] = result[28];
  a2[14] = result[29];
  a2[21] = result[30];
  a2[28] = result[31];
  a2[35] = result[32];
  a2[42] = result[33];
  a2[49] = result[34];
  a2[56] = result[35];
  a2[57] = result[36];
  a2[50] = result[37];
  a2[43] = result[38];
  a2[36] = result[39];
  a2[29] = result[40];
  a2[22] = result[41];
  a2[15] = result[42];
  a2[23] = result[43];
  a2[30] = result[44];
  a2[37] = result[45];
  a2[44] = result[46];
  a2[51] = result[47];
  a2[58] = result[48];
  a2[59] = result[49];
  a2[52] = result[50];
  a2[45] = result[51];
  a2[38] = result[52];
  a2[31] = result[53];
  a2[39] = result[54];
  a2[46] = result[55];
  a2[53] = result[56];
  a2[60] = result[57];
  a2[61] = result[58];
  a2[54] = result[59];
  a2[47] = result[60];
  a2[55] = result[61];
  a2[62] = result[62];
  a2[63] = result[63];
  return result;
}

__int16 *IZigZagBlock8x8S16(__int16 *result, __int16 *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[32] = result[10];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[4] = result[14];
  a2[5] = result[15];
  a2[12] = result[16];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[33] = result[19];
  a2[40] = result[20];
  a2[48] = result[21];
  a2[41] = result[22];
  a2[34] = result[23];
  a2[27] = result[24];
  a2[20] = result[25];
  a2[13] = result[26];
  a2[6] = result[27];
  a2[7] = result[28];
  a2[14] = result[29];
  a2[21] = result[30];
  a2[28] = result[31];
  a2[35] = result[32];
  a2[42] = result[33];
  a2[49] = result[34];
  a2[56] = result[35];
  a2[57] = result[36];
  a2[50] = result[37];
  a2[43] = result[38];
  a2[36] = result[39];
  a2[29] = result[40];
  a2[22] = result[41];
  a2[15] = result[42];
  a2[23] = result[43];
  a2[30] = result[44];
  a2[37] = result[45];
  a2[44] = result[46];
  a2[51] = result[47];
  a2[58] = result[48];
  a2[59] = result[49];
  a2[52] = result[50];
  a2[45] = result[51];
  a2[38] = result[52];
  a2[31] = result[53];
  a2[39] = result[54];
  a2[46] = result[55];
  a2[53] = result[56];
  a2[60] = result[57];
  a2[61] = result[58];
  a2[54] = result[59];
  a2[47] = result[60];
  a2[55] = result[61];
  a2[62] = result[62];
  a2[63] = result[63];
  return result;
}

int *IZigZagBlock8x4(int *result, int *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[32] = result[10];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[33] = result[19];
  a2[40] = result[20];
  a2[48] = result[21];
  a2[41] = result[22];
  a2[34] = result[23];
  a2[27] = result[24];
  a2[35] = result[32];
  a2[42] = result[33];
  a2[49] = result[34];
  a2[56] = result[35];
  a2[57] = result[36];
  a2[50] = result[37];
  a2[43] = result[38];
  a2[51] = result[47];
  a2[58] = result[48];
  a2[59] = result[49];
  return result;
}

__int16 *IZigZagBlock8x4S16(__int16 *result, __int16 *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[32] = result[10];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[33] = result[19];
  a2[40] = result[20];
  a2[48] = result[21];
  a2[41] = result[22];
  a2[34] = result[23];
  a2[27] = result[24];
  a2[35] = result[32];
  a2[42] = result[33];
  a2[49] = result[34];
  a2[56] = result[35];
  a2[57] = result[36];
  a2[50] = result[37];
  a2[43] = result[38];
  a2[51] = result[47];
  a2[58] = result[48];
  a2[59] = result[49];
  return result;
}

int *IZigZagBlock4x8(int *result, int *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[4] = result[14];
  a2[5] = result[15];
  a2[12] = result[16];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[27] = result[24];
  a2[20] = result[25];
  a2[13] = result[26];
  a2[6] = result[27];
  a2[7] = result[28];
  a2[14] = result[29];
  a2[21] = result[30];
  a2[28] = result[31];
  a2[29] = result[40];
  a2[22] = result[41];
  a2[15] = result[42];
  a2[23] = result[43];
  a2[30] = result[44];
  a2[31] = result[53];
  return result;
}

__int16 *IZigZagBlock4x8S16(__int16 *result, __int16 *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[4] = result[14];
  a2[5] = result[15];
  a2[12] = result[16];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[27] = result[24];
  a2[20] = result[25];
  a2[13] = result[26];
  a2[6] = result[27];
  a2[7] = result[28];
  a2[14] = result[29];
  a2[21] = result[30];
  a2[28] = result[31];
  a2[29] = result[40];
  a2[22] = result[41];
  a2[15] = result[42];
  a2[23] = result[43];
  a2[30] = result[44];
  a2[31] = result[53];
  return result;
}

int *IZigZagBlock4x4(int *result, int *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[27] = result[24];
  return result;
}

__int16 *IZigZagBlock4x4S16(__int16 *result, __int16 *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[27] = result[24];
  return result;
}

_WORD *ScanConvertRaster2Whatever(_WORD *result, _WORD *a2, int a3)
{
  if (a3 == 1)
  {
    return ScanConvertRaster2RowWise(result, a2);
  }

  if (a3)
  {
    return ScanConvertRaster2ColumnWise(result, a2);
  }

  return ScanConvertRaster2ZigZag(result, a2);
}

_WORD *ScanConvertRaster2ZigZag(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[8];
  result[3] = a2[16];
  result[4] = a2[9];
  result[5] = a2[2];
  result[6] = a2[3];
  result[7] = a2[10];
  result[8] = a2[17];
  result[9] = a2[24];
  result[10] = a2[32];
  result[11] = a2[25];
  result[12] = a2[18];
  result[13] = a2[11];
  result[14] = a2[4];
  result[15] = a2[5];
  result[16] = a2[12];
  result[17] = a2[19];
  result[18] = a2[26];
  result[19] = a2[33];
  result[20] = a2[40];
  result[21] = a2[48];
  result[22] = a2[41];
  result[23] = a2[34];
  result[24] = a2[27];
  result[25] = a2[20];
  result[26] = a2[13];
  result[27] = a2[6];
  result[28] = a2[7];
  result[29] = a2[14];
  result[30] = a2[21];
  result[31] = a2[28];
  result[32] = a2[35];
  result[33] = a2[42];
  result[34] = a2[49];
  result[35] = a2[56];
  result[36] = a2[57];
  result[37] = a2[50];
  result[38] = a2[43];
  result[39] = a2[36];
  result[40] = a2[29];
  result[41] = a2[22];
  result[42] = a2[15];
  result[43] = a2[23];
  result[44] = a2[30];
  result[45] = a2[37];
  result[46] = a2[44];
  result[47] = a2[51];
  result[48] = a2[58];
  result[49] = a2[59];
  result[50] = a2[52];
  result[51] = a2[45];
  result[52] = a2[38];
  result[53] = a2[31];
  result[54] = a2[39];
  result[55] = a2[46];
  result[56] = a2[53];
  result[57] = a2[60];
  result[58] = a2[61];
  result[59] = a2[54];
  result[60] = a2[47];
  result[61] = a2[55];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

_WORD *ScanConvertRaster2RowWise(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[8];
  result[5] = a2[9];
  result[6] = a2[16];
  result[7] = a2[17];
  result[8] = a2[10];
  result[9] = a2[11];
  result[10] = a2[4];
  result[11] = a2[5];
  result[12] = a2[6];
  result[13] = a2[7];
  result[14] = a2[15];
  result[15] = a2[14];
  result[16] = a2[13];
  result[17] = a2[12];
  result[18] = a2[19];
  result[19] = a2[18];
  result[20] = a2[24];
  result[21] = a2[25];
  result[22] = a2[32];
  result[23] = a2[33];
  result[24] = a2[26];
  result[25] = a2[27];
  result[26] = a2[20];
  result[27] = a2[21];
  result[28] = a2[22];
  result[29] = a2[23];
  result[30] = a2[28];
  result[31] = a2[29];
  result[32] = a2[30];
  result[33] = a2[31];
  result[34] = a2[34];
  result[35] = a2[35];
  result[36] = a2[40];
  result[37] = a2[41];
  result[38] = a2[48];
  result[39] = a2[49];
  result[40] = a2[42];
  result[41] = a2[43];
  result[42] = a2[36];
  result[43] = a2[37];
  result[44] = a2[38];
  result[45] = a2[39];
  result[46] = a2[44];
  result[47] = a2[45];
  result[48] = a2[46];
  result[49] = a2[47];
  result[50] = a2[50];
  result[51] = a2[51];
  result[52] = a2[56];
  result[53] = a2[57];
  result[54] = a2[58];
  result[55] = a2[59];
  result[56] = a2[52];
  result[57] = a2[53];
  result[58] = a2[54];
  result[59] = a2[55];
  result[60] = a2[60];
  result[61] = a2[61];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

_WORD *ScanConvertRaster2ColumnWise(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[8];
  result[2] = a2[16];
  result[3] = a2[24];
  result[4] = a2[1];
  result[5] = a2[9];
  result[6] = a2[2];
  result[7] = a2[10];
  result[8] = a2[17];
  result[9] = a2[25];
  result[10] = a2[32];
  result[11] = a2[40];
  result[12] = a2[48];
  result[13] = a2[56];
  result[14] = a2[57];
  result[15] = a2[49];
  result[16] = a2[41];
  result[17] = a2[33];
  result[18] = a2[26];
  result[19] = a2[18];
  result[20] = a2[3];
  result[21] = a2[11];
  result[22] = a2[4];
  result[23] = a2[12];
  result[24] = a2[19];
  result[25] = a2[27];
  result[26] = a2[34];
  result[27] = a2[42];
  result[28] = a2[50];
  result[29] = a2[58];
  result[30] = a2[35];
  result[31] = a2[43];
  result[32] = a2[51];
  result[33] = a2[59];
  result[34] = a2[20];
  result[35] = a2[28];
  result[36] = a2[5];
  result[37] = a2[13];
  result[38] = a2[6];
  result[39] = a2[14];
  result[40] = a2[21];
  result[41] = a2[29];
  result[42] = a2[36];
  result[43] = a2[44];
  result[44] = a2[52];
  result[45] = a2[60];
  result[46] = a2[37];
  result[47] = a2[45];
  result[48] = a2[53];
  result[49] = a2[61];
  result[50] = a2[22];
  result[51] = a2[30];
  result[52] = a2[7];
  result[53] = a2[15];
  result[54] = a2[23];
  result[55] = a2[31];
  result[56] = a2[38];
  result[57] = a2[46];
  result[58] = a2[54];
  result[59] = a2[62];
  result[60] = a2[39];
  result[61] = a2[47];
  result[62] = a2[55];
  result[63] = a2[63];
  return result;
}

_BYTE *ScanConvertRaster2ZigZagUInt8(_BYTE *result, _BYTE *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[8];
  result[3] = a2[16];
  result[4] = a2[9];
  result[5] = a2[2];
  result[6] = a2[3];
  result[7] = a2[10];
  result[8] = a2[17];
  result[9] = a2[24];
  result[10] = a2[32];
  result[11] = a2[25];
  result[12] = a2[18];
  result[13] = a2[11];
  result[14] = a2[4];
  result[15] = a2[5];
  result[16] = a2[12];
  result[17] = a2[19];
  result[18] = a2[26];
  result[19] = a2[33];
  result[20] = a2[40];
  result[21] = a2[48];
  result[22] = a2[41];
  result[23] = a2[34];
  result[24] = a2[27];
  result[25] = a2[20];
  result[26] = a2[13];
  result[27] = a2[6];
  result[28] = a2[7];
  result[29] = a2[14];
  result[30] = a2[21];
  result[31] = a2[28];
  result[32] = a2[35];
  result[33] = a2[42];
  result[34] = a2[49];
  result[35] = a2[56];
  result[36] = a2[57];
  result[37] = a2[50];
  result[38] = a2[43];
  result[39] = a2[36];
  result[40] = a2[29];
  result[41] = a2[22];
  result[42] = a2[15];
  result[43] = a2[23];
  result[44] = a2[30];
  result[45] = a2[37];
  result[46] = a2[44];
  result[47] = a2[51];
  result[48] = a2[58];
  result[49] = a2[59];
  result[50] = a2[52];
  result[51] = a2[45];
  result[52] = a2[38];
  result[53] = a2[31];
  result[54] = a2[39];
  result[55] = a2[46];
  result[56] = a2[53];
  result[57] = a2[60];
  result[58] = a2[61];
  result[59] = a2[54];
  result[60] = a2[47];
  result[61] = a2[55];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

_WORD *ScanConvertWhatever2Raster(_WORD *result, _WORD *a2, int a3)
{
  if (a3 == 1)
  {
    return ScanConvertRowWise2Raster(result, a2);
  }

  if (a3)
  {
    return ScanConvertColumnWise2Raster(result, a2);
  }

  return ScanConvertZigZag2Raster(result, a2);
}

_WORD *ScanConvertZigZag2Raster(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[8] = a2[2];
  result[16] = a2[3];
  result[9] = a2[4];
  result[2] = a2[5];
  result[3] = a2[6];
  result[10] = a2[7];
  result[17] = a2[8];
  result[24] = a2[9];
  result[32] = a2[10];
  result[25] = a2[11];
  result[18] = a2[12];
  result[11] = a2[13];
  result[4] = a2[14];
  result[5] = a2[15];
  result[12] = a2[16];
  result[19] = a2[17];
  result[26] = a2[18];
  result[33] = a2[19];
  result[40] = a2[20];
  result[48] = a2[21];
  result[41] = a2[22];
  result[34] = a2[23];
  result[27] = a2[24];
  result[20] = a2[25];
  result[13] = a2[26];
  result[6] = a2[27];
  result[7] = a2[28];
  result[14] = a2[29];
  result[21] = a2[30];
  result[28] = a2[31];
  result[35] = a2[32];
  result[42] = a2[33];
  result[49] = a2[34];
  result[56] = a2[35];
  result[57] = a2[36];
  result[50] = a2[37];
  result[43] = a2[38];
  result[36] = a2[39];
  result[29] = a2[40];
  result[22] = a2[41];
  result[15] = a2[42];
  result[23] = a2[43];
  result[30] = a2[44];
  result[37] = a2[45];
  result[44] = a2[46];
  result[51] = a2[47];
  result[58] = a2[48];
  result[59] = a2[49];
  result[52] = a2[50];
  result[45] = a2[51];
  result[38] = a2[52];
  result[31] = a2[53];
  result[39] = a2[54];
  result[46] = a2[55];
  result[53] = a2[56];
  result[60] = a2[57];
  result[61] = a2[58];
  result[54] = a2[59];
  result[47] = a2[60];
  result[55] = a2[61];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

_WORD *ScanConvertRowWise2Raster(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[8] = a2[4];
  result[9] = a2[5];
  result[16] = a2[6];
  result[17] = a2[7];
  result[10] = a2[8];
  result[11] = a2[9];
  result[4] = a2[10];
  result[5] = a2[11];
  result[6] = a2[12];
  result[7] = a2[13];
  result[15] = a2[14];
  result[14] = a2[15];
  result[13] = a2[16];
  result[12] = a2[17];
  result[19] = a2[18];
  result[18] = a2[19];
  result[24] = a2[20];
  result[25] = a2[21];
  result[32] = a2[22];
  result[33] = a2[23];
  result[26] = a2[24];
  result[27] = a2[25];
  result[20] = a2[26];
  result[21] = a2[27];
  result[22] = a2[28];
  result[23] = a2[29];
  result[28] = a2[30];
  result[29] = a2[31];
  result[30] = a2[32];
  result[31] = a2[33];
  result[34] = a2[34];
  result[35] = a2[35];
  result[40] = a2[36];
  result[41] = a2[37];
  result[48] = a2[38];
  result[49] = a2[39];
  result[42] = a2[40];
  result[43] = a2[41];
  result[36] = a2[42];
  result[37] = a2[43];
  result[38] = a2[44];
  result[39] = a2[45];
  result[44] = a2[46];
  result[45] = a2[47];
  result[46] = a2[48];
  result[47] = a2[49];
  result[50] = a2[50];
  result[51] = a2[51];
  result[56] = a2[52];
  result[57] = a2[53];
  result[58] = a2[54];
  result[59] = a2[55];
  result[52] = a2[56];
  result[53] = a2[57];
  result[54] = a2[58];
  result[55] = a2[59];
  result[60] = a2[60];
  result[61] = a2[61];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

_WORD *ScanConvertColumnWise2Raster(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[8] = a2[1];
  result[16] = a2[2];
  result[24] = a2[3];
  result[1] = a2[4];
  result[9] = a2[5];
  result[2] = a2[6];
  result[10] = a2[7];
  result[17] = a2[8];
  result[25] = a2[9];
  result[32] = a2[10];
  result[40] = a2[11];
  result[48] = a2[12];
  result[56] = a2[13];
  result[57] = a2[14];
  result[49] = a2[15];
  result[41] = a2[16];
  result[33] = a2[17];
  result[26] = a2[18];
  result[18] = a2[19];
  result[3] = a2[20];
  result[11] = a2[21];
  result[4] = a2[22];
  result[12] = a2[23];
  result[19] = a2[24];
  result[27] = a2[25];
  result[34] = a2[26];
  result[42] = a2[27];
  result[50] = a2[28];
  result[58] = a2[29];
  result[35] = a2[30];
  result[43] = a2[31];
  result[51] = a2[32];
  result[59] = a2[33];
  result[20] = a2[34];
  result[28] = a2[35];
  result[5] = a2[36];
  result[13] = a2[37];
  result[6] = a2[38];
  result[14] = a2[39];
  result[21] = a2[40];
  result[29] = a2[41];
  result[36] = a2[42];
  result[44] = a2[43];
  result[52] = a2[44];
  result[60] = a2[45];
  result[37] = a2[46];
  result[45] = a2[47];
  result[53] = a2[48];
  result[61] = a2[49];
  result[22] = a2[50];
  result[30] = a2[51];
  result[7] = a2[52];
  result[15] = a2[53];
  result[23] = a2[54];
  result[31] = a2[55];
  result[38] = a2[56];
  result[46] = a2[57];
  result[54] = a2[58];
  result[62] = a2[59];
  result[39] = a2[60];
  result[47] = a2[61];
  result[55] = a2[62];
  result[63] = a2[63];
  return result;
}

_BYTE *ScanConvertZigZag2RasterUInt8(_BYTE *result, _BYTE *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[8] = a2[2];
  result[16] = a2[3];
  result[9] = a2[4];
  result[2] = a2[5];
  result[3] = a2[6];
  result[10] = a2[7];
  result[17] = a2[8];
  result[24] = a2[9];
  result[32] = a2[10];
  result[25] = a2[11];
  result[18] = a2[12];
  result[11] = a2[13];
  result[4] = a2[14];
  result[5] = a2[15];
  result[12] = a2[16];
  result[19] = a2[17];
  result[26] = a2[18];
  result[33] = a2[19];
  result[40] = a2[20];
  result[48] = a2[21];
  result[41] = a2[22];
  result[34] = a2[23];
  result[27] = a2[24];
  result[20] = a2[25];
  result[13] = a2[26];
  result[6] = a2[27];
  result[7] = a2[28];
  result[14] = a2[29];
  result[21] = a2[30];
  result[28] = a2[31];
  result[35] = a2[32];
  result[42] = a2[33];
  result[49] = a2[34];
  result[56] = a2[35];
  result[57] = a2[36];
  result[50] = a2[37];
  result[43] = a2[38];
  result[36] = a2[39];
  result[29] = a2[40];
  result[22] = a2[41];
  result[15] = a2[42];
  result[23] = a2[43];
  result[30] = a2[44];
  result[37] = a2[45];
  result[44] = a2[46];
  result[51] = a2[47];
  result[58] = a2[48];
  result[59] = a2[49];
  result[52] = a2[50];
  result[45] = a2[51];
  result[38] = a2[52];
  result[31] = a2[53];
  result[39] = a2[54];
  result[46] = a2[55];
  result[53] = a2[56];
  result[60] = a2[57];
  result[61] = a2[58];
  result[54] = a2[59];
  result[47] = a2[60];
  result[55] = a2[61];
  result[62] = a2[62];
  result[63] = a2[63];
  return result;
}

_WORD *ScanConvertWhatever2RasterFirstRowColumnOnly(_WORD *result, _WORD *a2, int a3)
{
  if (a3 == 1)
  {
    return ScanConvertRowWise2RasterFirstRowColumnOnly(result, a2);
  }

  if (a3)
  {
    return ScanConvertColumnWise2RasterFirstRowColumnOnly(result, a2);
  }

  return ScanConvertZigZag2RasterFirstRowColumnOnly(result, a2);
}

_WORD *ScanConvertZigZag2RasterFirstRowColumnOnly(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[8] = a2[2];
  result[16] = a2[3];
  result[2] = a2[5];
  result[3] = a2[6];
  result[24] = a2[9];
  result[32] = a2[10];
  result[4] = a2[14];
  result[5] = a2[15];
  result[40] = a2[20];
  result[48] = a2[21];
  result[6] = a2[27];
  result[7] = a2[28];
  result[56] = a2[35];
  return result;
}

_WORD *ScanConvertRowWise2RasterFirstRowColumnOnly(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[8] = a2[4];
  result[16] = a2[6];
  result[4] = a2[10];
  result[5] = a2[11];
  result[6] = a2[12];
  result[7] = a2[13];
  result[24] = a2[20];
  result[32] = a2[22];
  result[40] = a2[36];
  result[48] = a2[38];
  result[56] = a2[52];
  return result;
}

_WORD *ScanConvertColumnWise2RasterFirstRowColumnOnly(_WORD *result, _WORD *a2)
{
  *result = *a2;
  result[8] = a2[1];
  result[16] = a2[2];
  result[24] = a2[3];
  result[1] = a2[4];
  result[2] = a2[6];
  result[32] = a2[10];
  result[40] = a2[11];
  result[48] = a2[12];
  result[56] = a2[13];
  result[3] = a2[20];
  result[4] = a2[22];
  result[5] = a2[36];
  result[6] = a2[38];
  result[7] = a2[52];
  return result;
}

int32x4_t IDct8x8Yoyo(int16x8_t *a1, __int16 *a2, unsigned int a3)
{
  v3 = a1;
  v163 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x80000000) != 0)
  {
    v53 = 0;
    v5 = &v147;
LABEL_16:
    bzero(v5, (32 * v53 + 256));
    goto LABEL_17;
  }

  v4 = 0;
  v5 = &v147;
  do
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = a2[6];
    v13 = a2[7];
    v14 = v6 << 7;
    v15 = 181 * v7;
    v16 = 181 * v8;
    v17 = 181 * v9;
    v18 = 181 * v10;
    v19 = 181 * v11;
    v20 = 181 * v13;
    v21 = 181 * v6;
    v22 = v7 << 8;
    v23 = v8 << 8;
    v24 = v9 << 8;
    v25 = v10 << 8;
    v26 = v11 << 8;
    v27 = v12 << 8;
    if (v4)
    {
      v20 = v13 << 8;
    }

    else
    {
      v27 = 181 * v12;
    }

    if (v4)
    {
      v28 = v22;
    }

    else
    {
      v26 = v19;
      v25 = v18;
      v24 = v17;
      v23 = v16;
      v28 = v15;
    }

    if (v4)
    {
      v29 = v21;
    }

    else
    {
      v29 = v14;
    }

    v30 = v26 - (v20 + v24) + v28;
    v31 = 2 * (v26 - v20);
    v32 = v24 - v26;
    v33 = (2896 * v20) >> 10;
    v34 = 2 * v32 - v33;
    v35 = (946 * (v33 + 2 * v32)) >> 10;
    v36 = (0x3FFFFFFFE78 * v34) >> 10;
    v37 = (724 * v31) >> 10;
    v38 = v30 - v37;
    LODWORD(v37) = v30 + v37;
    v39 = v37 + v35;
    LODWORD(v35) = v37 - v35;
    v40 = (1004 * v39) >> 10;
    v41 = (569 * (v38 + v36)) >> 10;
    v42 = (0x3FFFFFFFF38 * v35) >> 10;
    v43 = (0x3FFFFFFFCADLL * (v38 - v36)) >> 10;
    v44 = v23 - v27;
    v45 = (1448 * v27) >> 10;
    v46 = v44 - v45;
    v47 = (946 * (v44 + v45)) >> 10;
    v48 = (0x3FFFFFFFE78 * v46) >> 10;
    v49 = (724 * v25) >> 10;
    v50 = v29 - v49;
    LODWORD(v49) = v29 + v49;
    v51 = v49 + v47;
    v52 = v50 - v48;
    v5[1].i32[2] = v50 - v48 + v43;
    v5[1].i32[3] = v49 + v47 - v40;
    LODWORD(v48) = v50 + v48;
    LODWORD(v49) = v49 - v47;
    v5[1].i32[0] = v49 + v42;
    v5[1].i32[1] = v48 - v41;
    v5->i32[2] = v48 + v41;
    v5->i32[3] = v49 - v42;
    v5->i32[0] = v51 + v40;
    v5->i32[1] = v52 - v43;
    v5 += 2;
    ++v4;
    a2 += 8;
  }

  while (a3 + 1 != v4);
  v3 = a1;
  v53 = ~a3;
  if (a3 <= 6)
  {
    goto LABEL_16;
  }

LABEL_17:
  v54 = vsubq_s32(vaddq_s32(v150, v158), vaddq_s32(v154, v162));
  v55 = vsubq_s32(vaddq_s32(v149, v157), vaddq_s32(v153, v161));
  v56 = vsubq_s32(v158, v162);
  v57 = vsubq_s32(v157, v161);
  v58 = vaddq_s32(v57, v57);
  v59 = vaddq_s32(v56, v56);
  v60 = vshlq_n_s32(v162, 2uLL);
  v61 = vshlq_n_s32(v161, 2uLL);
  v62 = vsubq_s32(v154, v158);
  v63 = vsubq_s32(v153, v157);
  v64 = vaddq_s32(v63, v63);
  v65 = vaddq_s32(v62, v62);
  v66 = vdupq_n_s32(0x2D4u);
  v67 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v61.i8, *v66.i8), 0xAuLL), vmull_high_s32(v61, v66), 0xAuLL);
  v68 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v60.i8, *v66.i8), 0xAuLL), vmull_high_s32(v60, v66), 0xAuLL);
  v69 = vsubq_s32(v65, v68);
  v70 = vsubq_s32(v64, v67);
  v71 = vaddq_s32(v65, v68);
  v72 = vaddq_s32(v64, v67);
  v73 = vdupq_n_s32(0x3B2u);
  v74 = vmull_high_s32(v71, v73);
  v75 = vmull_s32(*v71.i8, *v73.i8);
  v76 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v72.i8, *v73.i8), 0xAuLL), vmull_high_s32(v72, v73), 0xAuLL);
  v77 = vshrn_high_n_s64(vshrn_n_s64(v75, 0xAuLL), v74, 0xAuLL);
  v78.i64[0] = v70.i32[0];
  v78.i64[1] = v70.i32[1];
  v79 = v78;
  v78.i64[0] = v70.i32[2];
  v78.i64[1] = v70.i32[3];
  v80 = v78;
  v78.i64[0] = v69.i32[0];
  v78.i64[1] = v69.i32[1];
  v69.i64[0] = 0x3FFFFFFFE78 * v69.i32[2];
  v69.i64[1] = 0x3FFFFFFFE78 * v69.i32[3];
  v70.i64[0] = 0x3FFFFFFFE78 * v78.i64[0];
  v70.i64[1] = 0x3FFFFFFFE78 * v78.i64[1];
  v80.i64[0] *= 0x3FFFFFFFE78;
  v80.i64[1] *= 0x3FFFFFFFE78;
  v79.i64[0] *= 0x3FFFFFFFE78;
  v79.i64[1] *= 0x3FFFFFFFE78;
  v81 = vshrn_high_n_s64(vshrn_n_s64(v79, 0xAuLL), v80, 0xAuLL);
  v82 = vshrn_high_n_s64(vshrn_n_s64(v70, 0xAuLL), v69, 0xAuLL);
  v83 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v59.i8, *v66.i8), 0xAuLL), vmull_high_s32(v59, v66), 0xAuLL);
  v84 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v58.i8, *v66.i8), 0xAuLL), vmull_high_s32(v58, v66), 0xAuLL);
  v85 = vsubq_s32(v55, v84);
  v86 = vsubq_s32(v54, v83);
  v87 = vaddq_s32(v55, v84);
  v88 = vaddq_s32(v54, v83);
  v89 = vaddq_s32(v88, v77);
  v90 = vaddq_s32(v87, v76);
  v91 = vaddq_s32(v86, v82);
  v92 = vaddq_s32(v85, v81);
  v93 = vsubq_s32(v88, v77);
  v94 = vsubq_s32(v87, v76);
  v95 = vsubq_s32(v86, v82);
  v96 = vsubq_s32(v85, v81);
  v97 = vdupq_n_s32(0x3ECu);
  v98 = vmull_high_s32(v89, v97);
  v99 = vmull_s32(*v89.i8, *v97.i8);
  v100 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v90.i8, *v97.i8), 0xAuLL), vmull_high_s32(v90, v97), 0xAuLL);
  v101 = vshrn_high_n_s64(vshrn_n_s64(v99, 0xAuLL), v98, 0xAuLL);
  v102 = vdupq_n_s32(0x239u);
  v103 = vmull_high_s32(v91, v102);
  v104 = vmull_s32(*v91.i8, *v102.i8);
  v105 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v92.i8, *v102.i8), 0xAuLL), vmull_high_s32(v92, v102), 0xAuLL);
  v106 = vshrn_high_n_s64(vshrn_n_s64(v104, 0xAuLL), v103, 0xAuLL);
  v78.i64[1] = v94.i32[1];
  v81.i64[0] = 0x3FFFFFFFF38 * v93.i32[2];
  v81.i64[1] = 0x3FFFFFFFF38 * v93.i32[3];
  v107 = 0x3FFFFFFFF38 * v93.i32[1];
  v93.i64[0] = 0x3FFFFFFFF38 * v93.i32[0];
  v93.i64[1] = v107;
  v91.i64[0] = 0x3FFFFFFFF38 * v94.i32[2];
  v91.i64[1] = 0x3FFFFFFFF38 * v94.i32[3];
  v94.i64[0] = 0x3FFFFFFFF38 * v94.i32[0];
  v94.i64[1] = 0x3FFFFFFFF38 * v78.i64[1];
  v108 = vshrn_high_n_s64(vshrn_n_s64(v94, 0xAuLL), v91, 0xAuLL);
  v109 = vshrn_high_n_s64(vshrn_n_s64(v93, 0xAuLL), v81, 0xAuLL);
  v78.i64[0] = v96.i32[0];
  v78.i64[1] = v96.i32[1];
  v81.i64[0] = 0x3FFFFFFFCADLL * v95.i32[2];
  v81.i64[1] = 0x3FFFFFFFCADLL * v95.i32[3];
  v91.i64[0] = 0x3FFFFFFFCADLL * v95.i32[0];
  v91.i64[1] = 0x3FFFFFFFCADLL * v95.i32[1];
  v96.i64[0] = 0x3FFFFFFFCADLL * v96.i32[2];
  v96.i64[1] = 0x3FFFFFFFCADLL * v96.i32[3];
  v95.i64[0] = 0x3FFFFFFFCADLL * v78.i64[0];
  v95.i64[1] = 0x3FFFFFFFCADLL * v78.i64[1];
  v110 = vshrn_high_n_s64(vshrn_n_s64(v95, 0xAuLL), v96, 0xAuLL);
  v111 = vshrn_high_n_s64(vshrn_n_s64(v91, 0xAuLL), v81, 0xAuLL);
  v112 = vsubq_s32(v151, v159);
  v113 = vsubq_s32(v152, v160);
  v114 = vaddq_s32(v160, v160);
  v115 = vaddq_s32(v159, v159);
  v116 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v115.i8, *v66.i8), 0xAuLL), vmull_high_s32(v115, v66), 0xAuLL);
  v117 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v114.i8, *v66.i8), 0xAuLL), vmull_high_s32(v114, v66), 0xAuLL);
  v118 = vsubq_s32(v113, v117);
  v119 = vsubq_s32(v112, v116);
  v120 = vaddq_s32(v113, v117);
  v121 = vaddq_s32(v112, v116);
  v122 = vmull_high_s32(v120, v73);
  v123 = vmull_s32(*v120.i8, *v73.i8);
  v124 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v121.i8, *v73.i8), 0xAuLL), vmull_high_s32(v121, v73), 0xAuLL);
  v125 = vshrn_high_n_s64(vshrn_n_s64(v123, 0xAuLL), v122, 0xAuLL);
  v78.i64[0] = v119.i32[0];
  v78.i64[1] = v119.i32[1];
  v126 = v78;
  v78.i64[0] = v119.i32[2];
  v78.i64[1] = v119.i32[3];
  v127 = v78;
  v78.i64[0] = v118.i32[0];
  v78.i64[1] = v118.i32[1];
  v118.i64[0] = 0x3FFFFFFFE78 * v118.i32[2];
  v118.i64[1] = 0x3FFFFFFFE78 * v118.i32[3];
  v73.i64[0] = 0x3FFFFFFFE78 * v78.i64[0];
  v73.i64[1] = 0x3FFFFFFFE78 * v78.i64[1];
  v127.i64[0] *= 0x3FFFFFFFE78;
  v127.i64[1] *= 0x3FFFFFFFE78;
  v126.i64[0] *= 0x3FFFFFFFE78;
  v126.i64[1] *= 0x3FFFFFFFE78;
  v128 = vshrn_high_n_s64(vshrn_n_s64(v126, 0xAuLL), v127, 0xAuLL);
  v129 = vshrn_high_n_s64(vshrn_n_s64(v73, 0xAuLL), v118, 0xAuLL);
  v130 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v156.i8, *v66.i8), 0xAuLL), vmull_high_s32(v156, v66), 0xAuLL);
  v131 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v155.i8, *v66.i8), 0xAuLL), vmull_high_s32(v155, v66), 0xAuLL);
  v132 = vsubq_s32(v147, v131);
  v133 = vsubq_s32(v148, v130);
  v134 = vaddq_s32(v147, v131);
  v135 = vaddq_s32(v148, v130);
  v130.i64[0] = 0x20000000200;
  v130.i64[1] = 0x20000000200;
  v136 = vaddq_s32(vaddq_s32(v134, v130), v124);
  v137 = vaddq_s32(vaddq_s32(v135, v130), v125);
  v138 = vaddq_s32(vaddq_s32(v132, v130), v128);
  v139 = vaddq_s32(vaddq_s32(v133, v130), v129);
  v140 = vaddq_s32(vsubq_s32(v134, v124), v130);
  v141 = vaddq_s32(vsubq_s32(v135, v125), v130);
  v142 = vaddq_s32(vsubq_s32(v132, v128), v130);
  v143 = vaddq_s32(vsubq_s32(v133, v129), v130);
  v3[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v142, v110), 0xAuLL), vaddq_s32(v143, v111), 0xAuLL);
  v3[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v136, v100), 0xAuLL), vsubq_s32(v137, v101), 0xAuLL);
  v3[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v140, v108), 0xAuLL), vaddq_s32(v141, v109), 0xAuLL);
  v3[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v138, v105), 0xAuLL), vsubq_s32(v139, v106), 0xAuLL);
  v3[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v138, v105), 0xAuLL), vaddq_s32(v139, v106), 0xAuLL);
  v3[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v140, v108), 0xAuLL), vsubq_s32(v141, v109), 0xAuLL);
  result = vsubq_s32(v143, v111);
  *v3 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v136, v100), 0xAuLL), vaddq_s32(v137, v101), 0xAuLL);
  v3[1] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v142, v110), 0xAuLL), result, 0xAuLL);
  v145 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t IDct8x8Yoyo(unsigned __int8 *a1, __int16 *a2, unsigned int a3, unsigned __int8 *a4)
{
  v98 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x80000000) != 0)
  {
    v57 = 0;
    v8 = v97;
LABEL_16:
    bzero(v8, (32 * v57 + 256));
    goto LABEL_17;
  }

  v6 = 0;
  v96 = ~a3;
  v7 = a3 + 1;
  v8 = v97;
  do
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    v15 = a2[6];
    v16 = a2[7];
    v17 = v9 << 7;
    v18 = 181 * v10;
    v19 = 181 * v11;
    v20 = 181 * v12;
    v21 = 181 * v13;
    v22 = 181 * v15;
    v23 = 181 * v16;
    v24 = 181 * v9;
    v25 = v10 << 8;
    v26 = v11 << 8;
    v27 = v12 << 8;
    v28 = v13 << 8;
    v29 = v14 << 8;
    if (v6)
    {
      v23 = v16 << 8;
      v22 = v15 << 8;
    }

    else
    {
      v29 = 181 * v14;
    }

    if (v6)
    {
      v30 = v25;
    }

    else
    {
      v28 = v21;
      v27 = v20;
      v26 = v19;
      v30 = v18;
    }

    if (v6)
    {
      v31 = v24;
    }

    else
    {
      v31 = v17;
    }

    v32 = v29 - (v23 + v27) + v30;
    v33 = 2 * (v29 - v23);
    v34 = v27 - v29;
    v35 = (2896 * v23) >> 10;
    v36 = 2 * v34 - v35;
    v37 = (946 * (v35 + 2 * v34)) >> 10;
    v38 = (0x3FFFFFFFE78 * v36) >> 10;
    v39 = (724 * v33) >> 10;
    v40 = v32 - v39;
    v41 = v32 + v39;
    LODWORD(v39) = v41 + v37;
    v42 = v40 + v38;
    LODWORD(v37) = v41 - v37;
    v43 = v40 - v38;
    v44 = (1004 * v39) >> 10;
    v45 = (569 * v42) >> 10;
    v46 = (0x3FFFFFFFF38 * v37) >> 10;
    v47 = (0x3FFFFFFFCADLL * v43) >> 10;
    v48 = v26 - v22;
    v49 = (1448 * v22) >> 10;
    v50 = v48 - v49;
    v51 = (946 * (v48 + v49)) >> 10;
    v52 = (0x3FFFFFFFE78 * v50) >> 10;
    v53 = (724 * v28) >> 10;
    v54 = v31 - v53;
    LODWORD(v53) = v31 + v53;
    v55 = v53 + v51;
    v56 = v54 - v52;
    v8[6] = v54 - v52 + v47;
    v8[7] = v53 + v51 - v44;
    LODWORD(v52) = v54 + v52;
    LODWORD(v51) = v53 - v51;
    v8[4] = v51 + v46;
    v8[5] = v52 - v45;
    v8[2] = v52 + v45;
    v8[3] = v51 - v46;
    *v8 = v55 + v44;
    v8[1] = v56 - v47;
    v8 += 8;
    ++v6;
    a2 += 8;
  }

  while (v7 != v6);
  v57 = v96;
  if (a3 < 7)
  {
    goto LABEL_16;
  }

LABEL_17:
  v58 = 0;
  do
  {
    v59 = &v97[v58];
    v60 = &a1[v58];
    v61 = *v59;
    v62 = v59[8];
    v63 = v59[16];
    v64 = v59[24];
    v65 = v59[32];
    v66 = v59[40];
    v67 = v59[56];
    LODWORD(v59) = v59[48];
    v68 = v62 + v66 - (v64 + v67);
    v69 = v66 - v67;
    v70 = v64 - v66;
    v71 = (2896 * v67) >> 10;
    v72 = 2 * v70 - v71;
    v73 = (946 * (v71 + 2 * v70)) >> 10;
    v74 = (0x3FFFFFFFE78 * v72) >> 10;
    v75 = (1448 * v69) >> 10;
    v76 = v68 - v75;
    v77 = v68 + v75;
    LODWORD(v75) = v77 + v73;
    v78 = v77 - v73;
    LODWORD(v73) = v76 + v74;
    v79 = v63 - v59;
    v80 = (1448 * v59) >> 10;
    v81 = v79 - v80;
    v82 = (946 * (v79 + v80)) >> 10;
    v83 = (0x3FFFFFFFE78 * v81) >> 10;
    v84 = v76 - v74;
    v85 = (724 * v65) >> 10;
    v86 = v61 - v85;
    v87 = v61 + v85;
    v88 = (1004 * v75) >> 10;
    LODWORD(v85) = v87 + v82 + 512;
    v89 = v86 + v83 + 512;
    v90 = v87 - v82 + 512;
    result = (569 * v73) >> 10;
    v92 = (0x3FFFFFFFF38 * v78) >> 10;
    *v60 = a4[(v85 + v88) >> 10];
    v60[16] = a4[(v89 + result) >> 10];
    v93 = (0x3FFFFFFFCADLL * v84) >> 10;
    LODWORD(v83) = v86 - v83 + 512;
    v60[32] = a4[(v90 + v92) >> 10];
    v60[48] = a4[(v83 + v93) >> 10];
    v60[56] = a4[(v85 - v88) >> 10];
    v60[40] = a4[(v89 - result) >> 10];
    v60[24] = a4[(v90 - v92) >> 10];
    v60[8] = a4[(v83 - v93) >> 10];
    ++v58;
  }

  while (v58 != 8);
  v94 = *MEMORY[0x277D85DE8];
  return result;
}

void IDct8x8smart(int16x8_t *a1, int16x8_t *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (a3)
  {
    MPEG4_IDCTVec(a1, a2);
    return;
  }

  if (a6 | a5)
  {
    if (a4 == 2)
    {
      if (!a2->i16[0])
      {
        goto LABEL_6;
      }
    }

    else if (a4 != 1)
    {
LABEL_6:
      MPEG4_IDCT(a1->i16, a2->i16, a5);
      return;
    }

    idct1DC1AC(a2, a1->i16, a5, a6);
  }

  else
  {
    v6 = 0;
    v7 = a2->i16[0];
    v8 = v7 - 4;
    if (v7 < 4)
    {
      v8 = v7 + 3;
    }

    v9 = v8 >> 3;
    if (v7 >= 0)
    {
      v10 = (v7 + 4) >> 3;
    }

    else
    {
      v10 = v9;
    }

    v11 = vdupq_n_s32(v10 | (v10 << 16));
    do
    {
      i16 = a1[v6].i16;
      *i16 = v11;
      *(i16 + 1) = v11;
      *(i16 + 2) = v11;
      *(i16 + 3) = v11;
      v6 += 4;
    }

    while (v6 != 8);
  }
}

uint64_t idct1DC1AC(uint64_t result, __int16 *a2, int a3, int a4)
{
  v4 = *(result + 2 * (a4 + 8 * a3));
  v5 = *result;
  if (a3 == 4 && a4 == 4)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = 2 * v6;
      v11 = 8 * v6;
      v12 = 1;
      do
      {
        v13 = v5 + hardcodedsigns[v8 | v10] * v4;
        if (v13 >= 0)
        {
          v14 = (v13 + 4) >> 3;
        }

        else
        {
          v14 = -((4 - v13) >> 3);
        }

        v15 = &a2[v8 | v11];
        *v15 = v14;
        v15[4] = v14;
        v15[32] = v14;
        v15[36] = v14;
        v15[18] = v14;
        v15[22] = v14;
        result = v12;
        v15[50] = v14;
        v15[54] = v14;
        v8 = 1;
        v12 = 0;
      }

      while ((result & 1) != 0);
      v7 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    v16 = 0;
    v17 = vdup_n_s32(v4);
    v18 = vdup_n_s32(v5);
    v19 = 1;
    do
    {
      v20 = vmls_s32(v18, *&hardcodedsigns[2 * v16], v17);
      v21 = vbsl_s8(vcltz_s32(v20), vneg_s32(vshr_n_u32(vsub_s32(0x400000004, v20), 3uLL)), vshr_n_u32(vadd_s32(v20, 0x400000004), 3uLL));
      v22 = &a2[8 * v16];
      v22[3] = v21.i16[2];
      v22[2] = v21.i16[0];
      v22[7] = v21.i16[2];
      v22[6] = v21.i16[0];
      v22[35] = v21.i16[2];
      v23 = v19;
      v22[34] = v21.i16[0];
      v22[39] = v21.i16[2];
      v22[38] = v21.i16[0];
      v22[17] = v21.i16[2];
      v22[16] = v21.i16[0];
      v22[21] = v21.i16[2];
      v22[20] = v21.i16[0];
      v22[49] = v21.i16[2];
      v22[48] = v21.i16[0];
      v22[53] = v21.i16[2];
      v22[52] = v21.i16[0];
      v16 = 1;
      v19 = 0;
    }

    while ((v23 & 1) != 0);
  }

  else
  {
    v24 = (&stuff + 2 * (8 * a4));
    v25 = v5 << 17;
    v26 = (v5 << 17) + 0x80000;
    v27 = (v5 << 17) - 0x80000;
    v28 = (&stuff + 2 * (8 * a3));
    if (a3)
    {
      if (a4)
      {
        if (((a4 & 1) == 0) == (a3 & 1))
        {
          v66 = 0;
          v67 = 0;
          v68 = 112;
          v69 = 14;
          result = 126;
          if (a3)
          {
            do
            {
              v100 = 0;
              v101 = v28[v67];
              v102 = v66;
              v103 = result;
              v104 = v69;
              v105 = v68;
              do
              {
                v106 = ((v101 * v24[v100]) >> 12) * v4;
                if ((v106 + v25) < 0 != __OFADD__(v106, v25))
                {
                  v107 = v27;
                }

                else
                {
                  v107 = v26;
                }

                v41 = __OFADD__(v107, v106);
                v108 = v107 + v106;
                if (v108 < 0 != v41)
                {
                  v108 += 0xFFFFF;
                }

                v109 = v108 >> 20;
                if ((v25 - v106) >= 0)
                {
                  v110 = v26;
                }

                else
                {
                  v110 = v27;
                }

                v111 = (v110 - v106) / 0x100000;
                *(a2 + v102) = v109;
                *(a2 + v104) = v109;
                *(a2 + v105) = v111;
                *(a2 + v103) = v111;
                v105 += 2;
                v104 -= 2;
                ++v100;
                v103 -= 2;
                v102 += 2;
              }

              while (v100 != 4);
              ++v67;
              v68 -= 16;
              v69 += 16;
              result -= 16;
              v66 += 16;
            }

            while (v67 != 4);
          }

          else
          {
            do
            {
              v70 = 0;
              v71 = v28[v67];
              v72 = v66;
              v73 = result;
              v74 = v69;
              v75 = v68;
              do
              {
                v76 = ((v71 * v24[v70]) >> 12) * v4;
                if ((v76 + v25) < 0 != __OFADD__(v76, v25))
                {
                  v77 = v27;
                }

                else
                {
                  v77 = v26;
                }

                v41 = __OFADD__(v77, v76);
                v78 = v77 + v76;
                if (v78 < 0 != v41)
                {
                  v78 += 0xFFFFF;
                }

                v79 = v78 >> 20;
                if ((v25 - v76) >= 0)
                {
                  v80 = v26;
                }

                else
                {
                  v80 = v27;
                }

                v81 = (v80 - v76) / 0x100000;
                *(a2 + v72) = v79;
                *(a2 + v74) = v81;
                *(a2 + v75) = v79;
                *(a2 + v73) = v81;
                v75 += 2;
                v74 -= 2;
                ++v70;
                v73 -= 2;
                v72 += 2;
              }

              while (v70 != 4);
              ++v67;
              v68 -= 16;
              v69 += 16;
              result -= 16;
              v66 += 16;
            }

            while (v67 != 4);
          }
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 112;
          v32 = 14;
          result = 126;
          if (a4)
          {
            do
            {
              v44 = 0;
              v45 = v28[v30];
              v46 = v29;
              v47 = result;
              v48 = v32;
              v49 = v31;
              do
              {
                v50 = ((v45 * v24[v44]) >> 12) * v4;
                if ((v50 + v25) < 0 != __OFADD__(v50, v25))
                {
                  v51 = v27;
                }

                else
                {
                  v51 = v26;
                }

                v41 = __OFADD__(v51, v50);
                v52 = v51 + v50;
                if (v52 < 0 != v41)
                {
                  v52 += 0xFFFFF;
                }

                v53 = v52 >> 20;
                if ((v25 - v50) >= 0)
                {
                  v54 = v26;
                }

                else
                {
                  v54 = v27;
                }

                v55 = (v54 - v50) / 0x100000;
                *(a2 + v46) = v53;
                *(a2 + v48) = v55;
                *(a2 + v49) = v55;
                *(a2 + v47) = v53;
                v49 += 2;
                v48 -= 2;
                ++v44;
                v47 -= 2;
                v46 += 2;
              }

              while (v44 != 4);
              ++v30;
              v31 -= 16;
              v32 += 16;
              result -= 16;
              v29 += 16;
            }

            while (v30 != 4);
          }

          else
          {
            do
            {
              v33 = 0;
              v34 = v28[v30];
              v35 = v29;
              v36 = result;
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = ((v34 * v24[v33]) >> 12) * v4;
                if ((v39 + v25) < 0 != __OFADD__(v39, v25))
                {
                  v40 = v27;
                }

                else
                {
                  v40 = v26;
                }

                v41 = __OFADD__(v40, v39);
                v42 = v40 + v39;
                if (v42 < 0 != v41)
                {
                  v42 += 0xFFFFF;
                }

                v43 = v42 >> 20;
                *(a2 + v35) = v43;
                *(a2 + v37) = v43;
                *(a2 + v38) = v43;
                *(a2 + v36) = v43;
                v38 += 2;
                v37 -= 2;
                ++v33;
                v36 -= 2;
                v35 += 2;
              }

              while (v33 != 4);
              ++v30;
              v31 -= 16;
              v32 += 16;
              result -= 16;
              v29 += 16;
            }

            while (v30 != 4);
          }
        }
      }

      else if (a3 == 4)
      {
        v61 = 0;
        v62 = 56;
        do
        {
          v63 = v5 + hardcodedsigns[v61] * v4;
          if (v63 >= 0)
          {
            v64 = (v63 + 4) >> 3;
          }

          else
          {
            v64 = -((4 - v63) >> 3);
          }

          v65 = vdupq_n_s16(v64);
          *&a2[8 * v61] = v65;
          *&a2[v62] = v65;
          ++v61;
          v62 -= 8;
        }

        while (v61 != 4);
      }

      else
      {
        v92 = 0;
        v93 = *v24;
        v94 = 56;
        do
        {
          v95 = ((v28[v92] * v93) >> 12) * v4;
          if ((v95 + v25) < 0 != __OFADD__(v95, v25))
          {
            v96 = v27;
          }

          else
          {
            v96 = v26;
          }

          v41 = __OFADD__(v96, v95);
          v97 = v96 + v95;
          if (v97 < 0 != v41)
          {
            v97 += 0xFFFFF;
          }

          result = (v97 >> 20);
          if (a3)
          {
            v95 = -v95;
          }

          if ((v95 + v25) < 0 != __OFADD__(v95, v25))
          {
            v98 = v27;
          }

          else
          {
            v98 = v26;
          }

          v41 = __OFADD__(v98, v95);
          v99 = v98 + v95;
          if (v99 < 0 != v41)
          {
            v99 += 0xFFFFF;
          }

          *&a2[8 * v92] = vdupq_n_s16(result);
          *&a2[v94] = vdupq_n_s16(v99 >> 20);
          ++v92;
          v94 -= 8;
        }

        while (v92 != 4);
      }
    }

    else if (a4 == 4)
    {
      v56 = 0;
      v57 = a2 + 39;
      v58 = a2 + 32;
      do
      {
        v59 = v5 + hardcodedsigns[v56] * v4;
        if (v59 >= 0)
        {
          v60 = (v59 + 4) >> 3;
        }

        else
        {
          v60 = -((4 - v59) >> 3);
        }

        *(v58 - 32) = v60;
        *(v58 - 24) = v60;
        *(v58 - 16) = v60;
        *(v58 - 8) = v60;
        *v58 = v60;
        v58[8] = v60;
        v58[16] = v60;
        v58[24] = v60;
        *(v57 - 32) = v60;
        *(v57 - 24) = v60;
        *(v57 - 16) = v60;
        *(v57 - 8) = v60;
        *v57 = v60;
        v57[8] = v60;
        v57[16] = v60;
        v57[24] = v60;
        ++v56;
        --v57;
        ++v58;
      }

      while (v56 != 4);
    }

    else
    {
      v82 = 0;
      v83 = *v28;
      v84 = a2 + 39;
      v85 = a2 + 32;
      do
      {
        v86 = ((v83 * v24[v82]) >> 12) * v4;
        if ((v86 + v25) < 0 != __OFADD__(v86, v25))
        {
          v87 = v27;
        }

        else
        {
          v87 = v26;
        }

        v41 = __OFADD__(v87, v86);
        v88 = v87 + v86;
        if (v88 < 0 != v41)
        {
          v88 += 0xFFFFF;
        }

        v89 = v88 >> 20;
        *(v85 - 32) = v89;
        *(v85 - 24) = v89;
        if (a4)
        {
          v86 = -v86;
        }

        *(v85 - 16) = v89;
        *(v85 - 8) = v89;
        *v85 = v89;
        v85[8] = v89;
        if ((v86 + v25) < 0 != __OFADD__(v86, v25))
        {
          v90 = v27;
        }

        else
        {
          v90 = v26;
        }

        v41 = __OFADD__(v90, v86);
        v91 = v90 + v86;
        v85[16] = v89;
        if (v91 < 0 != v41)
        {
          v91 += 0xFFFFF;
        }

        v85[24] = v89;
        result = (v91 >> 20);
        *(v84 - 32) = result;
        *(v84 - 24) = result;
        *(v84 - 16) = result;
        *(v84 - 8) = result;
        *v84 = result;
        v84[8] = result;
        v84[16] = result;
        v84[24] = result;
        ++v82;
        --v84;
        ++v85;
      }

      while (v82 != 4);
    }
  }

  return result;
}

uint64_t MPEG4_IDCT(__int16 *a1, __int16 *a2, unsigned int a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x80000000) != 0)
  {
    v24 = 0;
    v5 = v57;
LABEL_7:
    bzero(v5, (16 * v24 + 128));
    goto LABEL_8;
  }

  v56 = ~a3;
  v4 = a3 + 1;
  v5 = v57;
  do
  {
    v6 = 370720 * *a2 + 0x4000;
    v7 = 514208 * a2[1] + 0x4000;
    v8 = 484384 * a2[2] + 0x4000;
    v9 = 435936 * a2[3] + 0x4000;
    v10 = 370720 * a2[4] + 0x4000;
    v11 = (435936 * a2[5] + 0x4000) >> 15;
    v12 = 484384 * a2[6] + 0x4000;
    v13 = (514208 * a2[7] + 0x4000) >> 15;
    v14 = ((6518 * (v7 >> 15) + 0x4000) >> 15) - v13;
    v15 = ((0x4000 - 21895 * (v9 >> 15)) >> 15) + v11;
    v16 = ((21895 * v11 + 0x4000) >> 15) + (v9 >> 15);
    v17 = ((6518 * v13 + 0x4000) >> 15) + (v7 >> 15);
    v18 = (v10 >> 15) + (v6 >> 15);
    v19 = (v6 >> 15) - (v10 >> 15);
    v20 = ((13573 * (v8 >> 15) + 0x4000) >> 15) - (v12 >> 15);
    v21 = ((13573 * (v12 >> 15) + 0x4000) >> 15) + (v8 >> 15);
    LOWORD(v8) = v14 + v15;
    v22 = v14 - v15;
    v23 = v17 - v16;
    LOWORD(v16) = v17 + v16;
    LOWORD(v17) = v21 + v18;
    LOWORD(v15) = v20 + v19;
    LOWORD(v19) = v19 - v20;
    LOWORD(v18) = v18 - v21;
    *v5 = v16 + v17;
    v5[1] = v15 + ((23170 * (v23 + v22) + 0x4000) >> 15);
    v5[2] = v19 + ((23170 * (v23 - v22) + 0x4000) >> 15);
    v5[3] = v18 + v8;
    v5[4] = v18 - v8;
    v5[5] = v19 + ((2147460478 * (v23 - v22) + 0x4000) >> 15);
    v5[6] = v15 + ((2147460478 * (v23 + v22) + 0x4000) >> 15);
    v5[7] = v17 - v16;
    a2 += 8;
    v5 += 8;
    --v4;
  }

  while (v4);
  v24 = v56;
  if (a3 < 7)
  {
    goto LABEL_7;
  }

LABEL_8:
  v25 = 0;
  result = 4294944126;
  do
  {
    v27 = (23170 * *&v57[v25] + 0x4000) >> 15;
    v28 = 32138 * *&v57[v25 + 16] + 0x4000;
    v29 = 30274 * *&v57[v25 + 32] + 0x4000;
    v30 = 27246 * *&v57[v25 + 48] + 0x4000;
    v31 = 23170 * *&v57[v25 + 64] + 0x4000;
    v32 = 32138 * *&v57[v25 + 112] + 0x4000;
    v33 = ((6518 * (v28 >> 15) + 0x4000) >> 15) - (v32 >> 15);
    v34 = (27246 * *&v57[v25 + 80] + 0x4000) >> 15;
    v35 = ((0x4000 - 21895 * (v30 >> 15)) >> 15) + v34;
    v36 = ((21895 * v34 + 0x4000) >> 15) + (v30 >> 15);
    v37 = ((6518 * (v32 >> 15) + 0x4000) >> 15) + (v28 >> 15);
    v38 = (v31 >> 15) + v27;
    v39 = v27 - (v31 >> 15);
    v40 = 30274 * *&v57[v25 + 96] + 0x4000;
    v41 = ((13573 * (v29 >> 15) + 0x4000) >> 15) - (v40 >> 15);
    v42 = ((13573 * (v40 >> 15) + 0x4000) >> 15) + (v29 >> 15);
    v43 = &a1[v25 / 2];
    v44 = v33 + v35;
    v45 = v33 - v35;
    v46 = v37 - v36;
    v47 = v37 + v36;
    v48 = v42 + v38;
    v49 = v41 + v39;
    v50 = v39 - v41;
    v51 = v38 - v42;
    v52 = v46 - v45;
    v53 = v46 + v45;
    *v43 = (((v47 + v48) << 9) + 0x4000) >> 15;
    v43[8] = (((v49 + ((23170 * v53 + 0x4000) >> 15)) << 9) + 0x4000) >> 15;
    v43[16] = (((v50 + ((23170 * v52 + 0x4000) >> 15)) << 9) + 0x4000) >> 15;
    v43[24] = (((v51 + v44) << 9) + 0x4000) >> 15;
    v43[32] = (((v51 - v44) << 9) + 0x4000) >> 15;
    v43[40] = (((v50 + ((0x4000 - 23170 * v52) >> 15)) << 9) + 0x4000) >> 15;
    v43[48] = (((v49 + ((0x4000 - 23170 * v53) >> 15)) << 9) + 0x4000) >> 15;
    v43[56] = (((v48 - v47) << 9) + 0x4000) >> 15;
    v25 += 2;
  }

  while (v25 != 16);
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t IDct8x8smart(unint64_t result, int a2, __int16 *a3, unsigned int a4, int a5, unsigned __int8 *a6)
{
  v7 = result;
  v106 = *MEMORY[0x277D85DE8];
  if (a5 | a4)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v59 = 0;
      v10 = v105;
    }

    else
    {
      v8 = 0;
      v104 = ~a4;
      v9 = a4 + 1;
      v10 = v105;
      do
      {
        v11 = *a3;
        v12 = a3[1];
        v13 = a3[2];
        v14 = a3[3];
        v15 = a3[4];
        v16 = a3[5];
        v17 = a3[6];
        v18 = a3[7];
        v19 = v11 << 7;
        v20 = 181 * v12;
        v21 = 181 * v13;
        v22 = 181 * v14;
        v23 = 181 * v15;
        v24 = 181 * v17;
        v25 = 181 * v18;
        v26 = 181 * v11;
        v27 = v12 << 8;
        v28 = v13 << 8;
        v29 = v14 << 8;
        v30 = v15 << 8;
        v31 = v16 << 8;
        if (v8)
        {
          v25 = v18 << 8;
          v24 = v17 << 8;
        }

        else
        {
          v31 = 181 * v16;
        }

        if (v8)
        {
          v32 = v27;
        }

        else
        {
          v30 = v23;
          v29 = v22;
          v28 = v21;
          v32 = v20;
        }

        if (v8)
        {
          v33 = v26;
        }

        else
        {
          v33 = v19;
        }

        v34 = v31 - (v25 + v29) + v32;
        v35 = 2 * (v31 - v25);
        v36 = v29 - v31;
        v37 = (2896 * v25) >> 10;
        v38 = 2 * v36 - v37;
        v39 = (946 * (v37 + 2 * v36)) >> 10;
        v40 = (0x3FFFFFFFE78 * v38) >> 10;
        v41 = (724 * v35) >> 10;
        v42 = v34 - v41;
        v43 = v34 + v41;
        LODWORD(v41) = v43 + v39;
        v44 = v42 + v40;
        LODWORD(v39) = v43 - v39;
        v45 = v42 - v40;
        v46 = (1004 * v41) >> 10;
        v47 = (569 * v44) >> 10;
        v48 = (0x3FFFFFFFF38 * v39) >> 10;
        v49 = (0x3FFFFFFFCADLL * v45) >> 10;
        v50 = v28 - v24;
        v51 = (1448 * v24) >> 10;
        v52 = v50 - v51;
        v53 = (946 * (v50 + v51)) >> 10;
        v54 = (0x3FFFFFFFE78 * v52) >> 10;
        v55 = (724 * v30) >> 10;
        v56 = v33 - v55;
        LODWORD(v55) = v33 + v55;
        v57 = v55 + v53;
        v58 = v56 - v54;
        v10[6] = v56 - v54 + v49;
        v10[7] = v55 + v53 - v46;
        LODWORD(v54) = v56 + v54;
        LODWORD(v53) = v55 - v53;
        v10[4] = v53 + v48;
        v10[5] = v54 - v47;
        v10[2] = v54 + v47;
        v10[3] = v53 - v48;
        *v10 = v57 + v46;
        v10[1] = v58 - v49;
        v10 += 8;
        ++v8;
        a3 += 8;
      }

      while (v9 != v8);
      v59 = v104;
      if (a4 >= 7)
      {
        goto LABEL_26;
      }
    }

    bzero(v10, (32 * v59 + 256));
LABEL_26:
    v67 = 0;
    do
    {
      v68 = &v105[v67];
      v69 = v7 + v67;
      v70 = *v68;
      v71 = v68[8];
      v72 = v68[16];
      v73 = v68[24];
      v74 = v68[32];
      v75 = v68[40];
      v76 = v68[56];
      LODWORD(v68) = v68[48];
      v77 = v71 + v75 - (v73 + v76);
      v78 = v75 - v76;
      v79 = v73 - v75;
      v80 = (2896 * v76) >> 10;
      v81 = 2 * v79 - v80;
      v82 = (946 * (v80 + 2 * v79)) >> 10;
      v83 = (0x3FFFFFFFE78 * v81) >> 10;
      v84 = (1448 * v78) >> 10;
      v85 = v77 - v84;
      v86 = v77 + v84;
      LODWORD(v84) = v86 + v82;
      v87 = v86 - v82;
      LODWORD(v82) = v85 + v83;
      v88 = v72 - v68;
      v89 = (1448 * v68) >> 10;
      v90 = v88 - v89;
      v91 = (946 * (v88 + v89)) >> 10;
      v92 = (0x3FFFFFFFE78 * v90) >> 10;
      v93 = v85 - v83;
      v94 = (724 * v74) >> 10;
      v95 = v70 - v94;
      v96 = v70 + v94;
      v97 = (1004 * v84) >> 10;
      LODWORD(v94) = v96 + v91 + 512;
      v98 = v95 + v92 + 512;
      v99 = v96 - v91 + 512;
      result = (569 * v82) >> 10;
      v100 = (0x3FFFFFFFF38 * v87) >> 10;
      *v69 = a6[(v94 + v97) >> 10];
      v69[16] = a6[(v98 + result) >> 10];
      v101 = (0x3FFFFFFFCADLL * v93) >> 10;
      LODWORD(v92) = v95 - v92 + 512;
      v69[32] = a6[(v99 + v100) >> 10];
      v69[48] = a6[(v92 + v101) >> 10];
      v69[56] = a6[(v94 - v97) >> 10];
      v69[40] = a6[(v98 - result) >> 10];
      v69[24] = a6[(v99 - v100) >> 10];
      v69[8] = a6[(v92 - v101) >> 10];
      ++v67;
    }

    while (v67 != 8);
    goto LABEL_28;
  }

  v60 = *a3;
  v61 = v60 - 4;
  if (v60 < 4)
  {
    v61 = v60 + 3;
  }

  v62 = v61 >> 3;
  if (v60 >= 0)
  {
    v63 = (v60 + 4) >> 3;
  }

  else
  {
    v63 = v62;
  }

  v64 = (a6[v63] << 8) | (a6[v63] << 16) | (a6[v63] << 24) | a6[v63];
  v65 = -2;
  do
  {
    *v7 = v64;
    v7[1] = v64;
    v66 = &v7[a2 / 4];
    *v66 = v64;
    v66[1] = v64;
    v65 += 2;
    v7 += a2 / 2;
  }

  while (v65 < 6);
LABEL_28:
  v102 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t idct8x8(uint64_t result, __int16 *a2)
{
  v2 = 0;
  v66 = *MEMORY[0x277D85DE8];
  do
  {
    v3 = &v65[v2];
    v4 = a2[2];
    v5 = *a2 * 0.7071;
    v6 = a2[1];
    v7 = a2[7];
    v8 = a2[4] * 0.7071;
    v9 = a2[6];
    v10 = a2[5];
    v11 = a2[3];
    v12 = v7 * -0.9808 + v6 * 0.1951;
    v13 = v11 * -0.5556 + v10 * 0.8315;
    v14 = v7 * 0.1951 + v6 * 0.9808;
    *&v7 = v10 * 0.5556 + v11 * 0.8315;
    *&v10 = v5 + v8;
    *&v14 = v14;
    v15 = v5 - v8;
    v16 = v9 * -0.9239 + v4 * 0.3827;
    v17 = v9 * 0.3827 + v4 * 0.9239;
    v18 = v12 + v13;
    v19 = (v12 - v13) * 0.7071;
    v20 = (*&v14 - *&v7) * 0.7071;
    *&v14 = *&v14 + *&v7;
    *&v7 = *&v10 + v17;
    v21 = v15 + v16;
    v22 = v15 - v16;
    v23 = *&v10 - v17;
    *&v10 = v20 - v19;
    v24 = v20 + v19;
    *v3 = *&v7 + *&v14;
    v3[1] = v21 + v24;
    v3[2] = v22 + *&v10;
    v3[3] = v23 + v18;
    v3[4] = v23 - v18;
    v3[5] = v22 - *&v10;
    v3[6] = v21 - v24;
    v3[7] = *&v7 - *&v14;
    a2 += 8;
    v2 += 32;
  }

  while (v2 != 256);
  v25 = 0;
  do
  {
    v26 = &v65[4 * v25];
    v27 = (result + v25);
    v28 = *v26 * 0.7071;
    v29 = v26[32] * 0.7071;
    v30 = v26[8];
    v31 = v26[56];
    v32 = v31 * -0.9808 + v30 * 0.1951;
    v33 = v26[40];
    v34 = v26[24];
    v35 = v34 * -0.5556 + v33 * 0.8315;
    *&v33 = v33 * 0.5556 + v34 * 0.8315;
    *&v30 = v31 * 0.1951 + v30 * 0.9808;
    *&v31 = v28 + v29;
    *&v34 = v28 - v29;
    v36 = v26[16];
    v37 = v26[48];
    v38 = v37 * -0.9239 + v36 * 0.3827;
    v39 = v37 * 0.3827 + v36 * 0.9239;
    v40 = v32 + v35;
    v41 = (v32 - v35) * 0.7071;
    v42 = (*&v30 - *&v33) * 0.7071;
    v43 = *&v30 + *&v33;
    v44 = *&v31 + v39;
    *&v30 = *&v34 + v38;
    v45 = *&v34 - v38;
    v46 = *&v31 - v39;
    *&v31 = v42 - v41;
    v47 = v42 + v41;
    v48 = ((v44 + v43) + 2.0) * 0.25;
    v49 = ((*&v30 + v47) + 2.0) * 0.25;
    v50 = ((v45 + *&v31) + 2.0) * 0.25;
    v51 = ((v46 + v40) + 2.0) * 0.25;
    v52 = ((v46 - v40) + 2.0) * 0.25;
    v53 = ((v45 - *&v31) + 2.0) * 0.25;
    v54 = ((*&v30 - v47) + 2.0) * 0.25;
    v55 = v48;
    if (v48 < 0.0)
    {
      LOBYTE(v55) = 0;
    }

    if (v48 > 255.0)
    {
      LOBYTE(v55) = -1;
    }

    *v27 = v55;
    v56 = v49;
    if (v49 < 1.0)
    {
      LOBYTE(v56) = 0;
    }

    if (v49 > 255.0)
    {
      LOBYTE(v56) = -1;
    }

    v27[8] = v56;
    v57 = v50;
    if (v50 < 2.0)
    {
      LOBYTE(v57) = 0;
    }

    if (v50 > 255.0)
    {
      LOBYTE(v57) = -1;
    }

    v27[16] = v57;
    v58 = v51;
    if (v51 < 3.0)
    {
      LOBYTE(v58) = 0;
    }

    if (v51 > 255.0)
    {
      LOBYTE(v58) = -1;
    }

    v27[24] = v58;
    v59 = v52;
    if (v52 < 0.0)
    {
      LOBYTE(v59) = 0;
    }

    if (v52 > 255.0)
    {
      LOBYTE(v59) = -1;
    }

    v27[32] = v59;
    v60 = v53;
    if (v53 < 0.0)
    {
      LOBYTE(v60) = 0;
    }

    if (v53 > 255.0)
    {
      LOBYTE(v60) = -1;
    }

    v27[40] = v60;
    if (v54 <= 255.0)
    {
      if (v54 >= 0.0)
      {
        v61 = v54;
      }

      else
      {
        LOBYTE(v61) = 0;
      }
    }

    else
    {
      LOBYTE(v61) = -1;
    }

    v62 = ((v44 - v43) + 2.0) * 0.25;
    v27[48] = v61;
    if (v62 <= 255.0)
    {
      if (v62 >= 0.0)
      {
        v63 = v62;
      }

      else
      {
        LOBYTE(v63) = 0;
      }
    }

    else
    {
      LOBYTE(v63) = -1;
    }

    v27[56] = v63;
    ++v25;
  }

  while (v25 != 8);
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

int16x8_t *idct8x8(int16x8_t *result, __int16 *a2)
{
  v2 = 0;
  v161 = *MEMORY[0x277D85DE8];
  do
  {
    v3 = &v145.f32[v2];
    v4 = a2[2];
    v5 = *a2 * 0.7071;
    v6 = a2[1];
    v7 = a2[7];
    v8 = a2[4] * 0.7071;
    v9 = a2[6];
    v10 = a2[5];
    v11 = a2[3];
    v12 = v7 * -0.9808 + v6 * 0.1951;
    v13 = v11 * -0.5556 + v10 * 0.8315;
    v14 = v7 * 0.1951 + v6 * 0.9808;
    *&v7 = v10 * 0.5556 + v11 * 0.8315;
    *&v10 = v5 + v8;
    *&v14 = v14;
    v15 = v5 - v8;
    v16 = v9 * -0.9239 + v4 * 0.3827;
    v17 = v9 * 0.3827 + v4 * 0.9239;
    v18 = v12 + v13;
    v19 = (v12 - v13) * 0.7071;
    v20 = (*&v14 - *&v7) * 0.7071;
    *&v14 = *&v14 + *&v7;
    *&v7 = *&v10 + v17;
    v21 = v15 + v16;
    v22 = v15 - v16;
    v23 = *&v10 - v17;
    *&v10 = v20 - v19;
    v24 = v20 + v19;
    *v3 = *&v7 + *&v14;
    v3[1] = v21 + v24;
    v3[2] = v22 + *&v10;
    v3[3] = v23 + v18;
    v3[4] = v23 - v18;
    v3[5] = v22 - *&v10;
    v3[6] = v21 - v24;
    v3[7] = *&v7 - *&v14;
    a2 += 8;
    v2 += 8;
  }

  while ((v2 * 4) != 256);
  v25 = vdupq_n_s64(0x3FE6A0902DE00D1BuLL);
  v144 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v146.f32), v25)), vmulq_f64(vcvt_hight_f64_f32(v146), v25));
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v145.f32), v25)), vmulq_f64(vcvt_hight_f64_f32(v145), v25));
  v27 = vcvtq_f64_f32(*v147.f32);
  v28 = vcvt_hight_f64_f32(v147);
  v29 = vcvtq_f64_f32(*v148.f32);
  v30 = vcvt_hight_f64_f32(v148);
  v31 = vcvt_hight_f64_f32(v160);
  v32 = vcvtq_f64_f32(*v160.f32);
  v33 = vcvt_hight_f64_f32(v159);
  v34 = vcvtq_f64_f32(*v159.f32);
  v35 = vdupq_n_s64(0xBFEF62B6AE7D566DLL);
  v36 = vmulq_f64(v34, v35);
  v37 = vmulq_f64(v33, v35);
  v38 = vcvtq_f64_f32(*v155.f32);
  v39 = vcvt_hight_f64_f32(v155);
  v40 = vcvtq_f64_f32(*v156.f32);
  v41 = vcvt_hight_f64_f32(v156);
  v42 = vcvt_hight_f64_f32(v152);
  v43 = vcvtq_f64_f32(*v152.f32);
  v44 = vcvt_hight_f64_f32(v151);
  v45 = vcvtq_f64_f32(*v151.f32);
  v46 = vdupq_n_s64(0xBFE1C779A6B50B0FLL);
  v47 = vmulq_f64(v45, v46);
  v48 = vmulq_f64(v44, v46);
  v49 = vmulq_f64(v43, v46);
  v50 = vdupq_n_s64(0x3FEA9BA5E353F7CFuLL);
  v51 = vmlaq_f64(vmulq_f64(v42, v46), v50, v41);
  v52 = vmlaq_f64(v49, v50, v40);
  v53 = vmlaq_f64(v48, v50, v39);
  v54 = vmlaq_f64(v47, v50, v38);
  v55 = vdupq_n_s64(0x3FE1C779A6B50B0FuLL);
  v56 = vmulq_f64(v38, v55);
  v57 = vmulq_f64(v39, v55);
  v58 = vmulq_f64(v40, v55);
  v59 = vmulq_f64(v32, v35);
  v60 = vmlaq_f64(vmulq_f64(v41, v55), v50, v42);
  v61 = vdupq_n_s64(0x3FC8F9096BB98C7EuLL);
  v62 = vmlaq_f64(vmulq_f64(v31, v35), v61, v30);
  v63 = vmlaq_f64(v59, v61, v29);
  v64 = vmlaq_f64(v37, v61, v28);
  v65 = vmlaq_f64(v36, v61, v27);
  v143 = vmlaq_f64(v58, v50, v43);
  v66 = vmlaq_f64(v57, v50, v44);
  v67 = vmlaq_f64(v56, v50, v45);
  v68 = vmulq_f64(v34, v61);
  v69 = vmulq_f64(v33, v61);
  v70 = vmulq_f64(v32, v61);
  v71 = vmulq_f64(v31, v61);
  v72 = vdupq_n_s64(0x3FEF62B6AE7D566DuLL);
  v73 = vmlaq_f64(v71, v72, v30);
  v74 = vmlaq_f64(v70, v72, v29);
  v75 = vmlaq_f64(v69, v72, v28);
  v76 = vmlaq_f64(v68, v72, v27);
  v77 = vcvtq_f64_f32(*v149.f32);
  v78 = vcvt_hight_f64_f32(v149);
  v79 = vcvtq_f64_f32(*v150.f32);
  v80 = vcvt_hight_f64_f32(v150);
  v81 = vcvt_hight_f64_f32(v158);
  v82 = vcvtq_f64_f32(*v158.f32);
  v83 = vcvt_hight_f64_f32(v157);
  v84 = vcvtq_f64_f32(*v157.f32);
  v85 = vdupq_n_s64(0xBFED9096BB98C7E3);
  v86 = vmulq_f64(v84, v85);
  v87 = vmulq_f64(v83, v85);
  v88 = vmulq_f64(v82, v85);
  v89 = vdupq_n_s64(0x3FD87E28240B7803uLL);
  v90 = vmlaq_f64(vmulq_f64(v81, v85), v89, v80);
  v91 = vmlaq_f64(v88, v89, v79);
  v92 = vmlaq_f64(v87, v89, v78);
  v93 = vmlaq_f64(v86, v89, v77);
  v94 = vmulq_f64(v84, v89);
  v95 = vmulq_f64(v83, v89);
  v96 = vmulq_f64(v82, v89);
  v97 = vdupq_n_s64(0x3FED9096BB98C7E3uLL);
  v98 = vmlaq_f64(vmulq_f64(v81, v89), v97, v80);
  v99 = vmlaq_f64(v96, v97, v79);
  v100 = vmlaq_f64(v95, v97, v78);
  v101 = vmlaq_f64(v94, v97, v77);
  v102 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v154.f32), v25)), vmulq_f64(vcvt_hight_f64_f32(v154), v25));
  v103 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v153.f32), v25)), vmulq_f64(vcvt_hight_f64_f32(v153), v25));
  v104 = vaddq_f32(v26, v103);
  v105 = vsubq_f32(v26, v103);
  v106 = vaddq_f32(v144, v102);
  v107 = vsubq_f32(v144, v102);
  v108 = vcvt_hight_f32_f64(vcvt_f32_f64(v93), v92);
  v109 = vcvt_hight_f32_f64(vcvt_f32_f64(v91), v90);
  v110 = vcvt_hight_f32_f64(vcvt_f32_f64(v101), v100);
  *&v77.f64[0] = vcvt_f32_f64(v65);
  *&v58.f64[0] = vcvt_f32_f64(v63);
  *v26.f32 = vcvt_f32_f64(v52);
  v111 = vcvt_hight_f32_f64(vcvt_f32_f64(v99), v98);
  *&v52.f64[0] = vsub_f32(*&v58.f64[0], *v26.f32);
  *&v54.f64[0] = vcvt_f32_f64(v54);
  v112 = vaddq_f32(vcvt_hight_f32_f64(*&v58.f64[0], v62), vcvt_hight_f32_f64(*v26.f32, v51));
  *&v100.f64[0] = vsub_f32(*&v77.f64[0], *&v54.f64[0]);
  v113 = vaddq_f32(vcvt_hight_f32_f64(*&v77.f64[0], v64), vcvt_hight_f32_f64(*&v54.f64[0], v53));
  *&v77.f64[0] = vsub_f32(vcvt_f32_f64(v64), vcvt_f32_f64(v53));
  *&v64.f64[0] = vsub_f32(vcvt_f32_f64(v62), vcvt_f32_f64(v51));
  v114 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*&v100.f64[0]), v25)), vmulq_f64(vcvtq_f64_f32(*&v77.f64[0]), v25));
  *&v77.f64[0] = vcvt_f32_f64(v67);
  *&v53.f64[0] = vcvt_f32_f64(v76);
  v115 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*&v52.f64[0]), v25)), vmulq_f64(vcvtq_f64_f32(*&v64.f64[0]), v25));
  *&v64.f64[0] = vsub_f32(*&v53.f64[0], *&v77.f64[0]);
  v116 = vcvt_hight_f32_f64(*&v77.f64[0], v66);
  *&v77.f64[0] = vcvt_f32_f64(v143);
  v117 = vcvt_hight_f32_f64(*&v53.f64[0], v75);
  *&v74.f64[0] = vcvt_f32_f64(v74);
  *&v66.f64[0] = vsub_f32(vcvt_f32_f64(v75), vcvt_f32_f64(v66));
  *&v75.f64[0] = vsub_f32(*&v74.f64[0], *&v77.f64[0]);
  v118 = vcvt_hight_f32_f64(*&v77.f64[0], v60);
  v119 = vcvt_hight_f32_f64(*&v74.f64[0], v73);
  *&v60.f64[0] = vsub_f32(vcvt_f32_f64(v73), vcvt_f32_f64(v60));
  v120 = vmulq_f64(vcvtq_f64_f32(*&v75.f64[0]), v25);
  v121 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*&v64.f64[0]), v25)), vmulq_f64(vcvtq_f64_f32(*&v66.f64[0]), v25));
  v122 = vcvt_hight_f32_f64(vcvt_f32_f64(v120), vmulq_f64(vcvtq_f64_f32(*&v60.f64[0]), v25));
  v123 = vaddq_f32(v119, v118);
  v124 = vaddq_f32(v117, v116);
  v125 = vaddq_f32(v106, v111);
  v126 = vaddq_f32(v104, v110);
  v127 = vaddq_f32(v107, v109);
  v128 = vaddq_f32(v105, v108);
  v129 = vsubq_f32(v107, v109);
  v130 = vsubq_f32(v105, v108);
  v131 = vsubq_f32(v106, v111);
  v132 = vsubq_f32(v104, v110);
  v133 = vsubq_f32(v122, v115);
  v134 = vsubq_f32(v121, v114);
  v135 = vaddq_f32(v122, v115);
  v136 = vaddq_f32(v121, v114);
  v111.i64[0] = 0x4000000040000000;
  v111.i64[1] = 0x4000000040000000;
  __asm { FMOV            V16.4S, #0.25 }

  *result = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v126, v124), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v125, v123), v111), _Q16)));
  result[1] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v128, v136), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v127, v135), v111), _Q16)));
  result[2] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v130, v134), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v129, v133), v111), _Q16)));
  result[3] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v132, v113), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vaddq_f32(v131, v112), v111), _Q16)));
  result[4] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v132, v113), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v131, v112), v111), _Q16)));
  result[5] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v130, v134), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v129, v133), v111), _Q16)));
  result[6] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v128, v136), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v127, v135), v111), _Q16)));
  result[7] = vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v126, v124), v111), _Q16)), vcvtq_s32_f32(vmulq_f32(vaddq_f32(vsubq_f32(v125, v123), v111), _Q16)));
  v142 = *MEMORY[0x277D85DE8];
  return result;
}

_WORD *SparseIDCT0_W8H8(_WORD *result)
{
  v1 = 0;
  v2 = vdupq_n_s64(0x1000100010001 * ((*result + 4) >> 3));
  do
  {
    v3 = &result[v1];
    *v3 = v2;
    v3[1] = v2;
    v3[2] = v2;
    v3[3] = v2;
    v1 += 32;
  }

  while (v1 != 64);
  return result;
}

uint64_t IDCT_W8H8(uint64_t result, int a2, unsigned __int8 *a3)
{
  v3 = 0;
  v85 = *MEMORY[0x277D85DE8];
  v4 = a2 + 1;
  v5 = 1024;
  v6 = v84;
  v82 = result;
  v7 = result;
  v81 = a2 | (a2 << 8) | ((a2 | (a2 << 8)) << 16);
  if (a2 != -1)
  {
    goto LABEL_2;
  }

LABEL_31:
  if ((v3 & 1) == 0)
  {
    v5 = 0x20000;
    v6 = v82;
    *a3 = v81;
    *(a3 + 1) = v81;
    v7 = v84;
    v4 = 8;
    v3 = 1;
LABEL_2:
    v8 = v6 + 8;
    v9 = (v7 + 64);
    v10 = a3;
    v11 = v4;
    while (1)
    {
      result = (v5 + (*(v9 - 32) << 13));
      v13 = *v10++;
      v12 = v13;
      if (v13 > 2)
      {
        break;
      }

      if (!v12)
      {
        if (v3)
        {
          v42 = (result >> 18) | ((result >> 18) << 16);
        }

        else
        {
          v42 = (result >> 11) & 0xFFFC | (result >> 11 << 16);
        }

        *(v8 - 4) = vdupq_n_s32(v42);
        goto LABEL_27;
      }

      if (v12 == 1)
      {
        v71 = *(v9 - 24);
        v27 = 2260 * v71;
        v28 = 6436 * v71;
        v29 = 9633 * v71;
        v30 = 11363 * v71;
        v22 = v5 + (*(v9 - 32) << 13);
        v23 = v22;
        v21 = v22;
        goto LABEL_23;
      }

      if (v12 != 2)
      {
        goto LABEL_17;
      }

      v24 = *(v9 - 24);
      v25 = *(v9 - 16);
      v26 = 10703 * v25;
      v21 = result - 10703 * v25;
      v22 = 4433 * v25 + result;
      v23 = result - 4433 * v25;
      LODWORD(result) = v26 + result;
      v27 = 2260 * v24;
      v28 = 6436 * v24;
      v29 = 9633 * v24;
      v30 = 11363 * v24;
LABEL_23:
      v72 = result + v30;
      v73 = result - v30;
      v74 = v22 + v29;
      result = (v22 - v29);
      v75 = v23 + v28;
      v76 = v23 - v28;
      v77 = v21 + v27;
      v78 = v21 - v27;
      if (v3)
      {
        *(v8 - 4) = v72 >> 18;
        *(v8 - 3) = v74 >> 18;
        *(v8 - 2) = v75 >> 18;
        *(v8 - 1) = v77 >> 18;
        *v8 = v78 >> 18;
        v8[1] = v76 >> 18;
        v8[2] = result >> 18;
        v79 = v73 >> 18;
      }

      else
      {
        *(v8 - 4) = v72 >> 11;
        *(v8 - 3) = v74 >> 11;
        *(v8 - 2) = v75 >> 11;
        *(v8 - 1) = v77 >> 11;
        *v8 = v78 >> 11;
        v8[1] = v76 >> 11;
        v8[2] = result >> 11;
        v79 = v73 >> 11;
      }

      v8[3] = v79;
LABEL_27:
      v8 += 8;
      ++v9;
      if (!--v11)
      {
        goto LABEL_31;
      }
    }

    if (v12 > 4)
    {
      if (v12 == 5)
      {
        v31 = *(v9 - 24);
        v64 = *(v9 - 16);
        v33 = *(v9 - 8);
        v65 = *v9;
        v35 = v9[8];
        v38 = 4433 * v64;
        v64 *= 10703;
        v66 = result + (v65 << 13);
        v41 = result - (v65 << 13);
        LODWORD(result) = v66 + v64;
        v21 = v66 - v64;
        v22 = v41 + v38;
        goto LABEL_21;
      }

      if (v12 == 6)
      {
        v31 = *(v9 - 24);
        v32 = *(v9 - 16);
        v33 = *(v9 - 8);
        v34 = *v9;
        v35 = v9[8];
        v36 = v9[16];
        v37 = 4433 * (v36 + v32);
        v38 = v37 - 15137 * v36;
        v39 = v37 + 6270 * v32;
        v40 = result + (v34 << 13);
        v41 = result - (v34 << 13);
        LODWORD(result) = v39 + v40;
        v21 = v40 - v39;
        v22 = v38 + v41;
LABEL_21:
        v23 = v41 - v38;
        v67 = 9633 * (v35 + v31 + v33);
        v68 = -20995 * (v35 + v33);
        v69 = v67 - 16069 * v33;
        v70 = v67 - 3196 * (v35 + v31);
        v27 = v69 - 7373 * v31;
        v28 = v68 + 16819 * v35 + v70;
        v29 = v68 + 25172 * v33 + v69;
        v30 = v70 + 4926 * v31;
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 == 3)
      {
        v14 = *(v9 - 24);
        v60 = *(v9 - 16);
        v16 = *(v9 - 8);
        v61 = 10703 * v60;
        v21 = result - 10703 * v60;
        v22 = 4433 * v60 + result;
        v23 = result - 4433 * v60;
        LODWORD(result) = v61 + result;
        goto LABEL_19;
      }

      if (v12 == 4)
      {
        v14 = *(v9 - 24);
        v15 = *(v9 - 16);
        v16 = *(v9 - 8);
        v17 = *v9;
        v18 = 4433 * v15;
        v15 *= 10703;
        v19 = result + (v17 << 13);
        v20 = result - (v17 << 13);
        LODWORD(result) = v19 + v15;
        v21 = v19 - v15;
        v22 = v20 + v18;
        v23 = v20 - v18;
LABEL_19:
        v62 = 6436 * (v16 + v14);
        v63 = 9633 * (v16 + v14);
        v27 = 8697 * v14 - v62;
        v28 = v62 - 17799 * v16;
        v29 = v63 - 11893 * v16;
        v30 = v63 + 1730 * v14;
        goto LABEL_23;
      }
    }

LABEL_17:
    v43 = *(v9 - 24);
    v44 = *(v9 - 16);
    v45 = *(v9 - 8);
    v46 = *v9;
    v47 = v9[8];
    v48 = v9[16];
    v49 = 4433 * (v48 + v44);
    v50 = v9[24];
    v51 = v49 - 15137 * v48;
    v52 = v49 + 6270 * v44;
    v53 = result + (v46 << 13);
    v54 = result - (v46 << 13);
    LODWORD(result) = v52 + v53;
    v21 = v53 - v52;
    v22 = v51 + v54;
    v23 = v54 - v51;
    v55 = 9633 * (v50 + v45 + v47 + v43);
    v56 = -7373 * (v50 + v43);
    v57 = -20995 * (v47 + v45);
    v58 = v55 - 16069 * (v50 + v45);
    v59 = v55 - 3196 * (v47 + v43);
    v27 = v56 + 2446 * v50 + v58;
    v28 = v57 + 16819 * v47 + v59;
    v29 = v57 + 25172 * v45 + v58;
    v30 = v56 + 12299 * v43 + v59;
    goto LABEL_23;
  }

  v80 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Y420ToY422_yuvs(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int *a4, unsigned int a5, unsigned __int16 a6, unsigned int a7, unsigned int a8, int a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (a8 >= 2)
  {
    v11 = 0;
    v12 = a8 - 1;
    v13 = 2 * a5;
    v14 = a5 >> 1;
    v15 = &a4[a9 >> 2];
    v16 = a9 >> 1;
    v17 = a5;
    do
    {
      if (a7 >= 2)
      {
        v18 = 0;
        do
        {
          v19 = a11[a3[v18 >> 1]];
          v20 = (a10[*(result + v18 + v17)] | (a10[*(result + (v18 | 1) + v17)] << 16)) & 0xFF00FF | (v19 << 24) | (a11[a2[v18 >> 1]] << 8);
          v21 = 2 * v18;
          *(a4 + v21) = a10[*(result + v18)] | (a10[*(result + (v18 | 1))] << 16) | (v19 << 24) | (a11[a2[v18 >> 1]] << 8);
          *(v15 + v21) = v20;
          v18 += 2;
        }

        while (v18 < a7 - 1);
      }

      result += v13;
      a2 += v14;
      a3 += v14;
      v11 += 2;
      a4 += v16;
      v15 += v16;
    }

    while (v11 < v12);
  }

  return result;
}

uint64_t Y420ToY422_2vuy(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int *a4, unsigned int a5, unsigned __int16 a6, unsigned int a7, unsigned int a8, int a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (a8 >= 2)
  {
    v11 = 0;
    v12 = a8 - 1;
    v13 = 2 * a5;
    v14 = a5 >> 1;
    v15 = &a4[a9 >> 2];
    v16 = a9 >> 1;
    v17 = a5;
    do
    {
      if (a7 >= 2)
      {
        v18 = 0;
        do
        {
          v19 = a11[a2[v18 >> 1]];
          v20 = (a10[*(result + v18)] << 8) | (a10[*(result + (v18 | 1))] << 24) | v19 | (a11[a3[v18 >> 1]] << 16);
          v21 = (a10[*(result + v18 + v17)] << 8) | (a10[*(result + (v18 | 1) + v17)] << 24) | v19 & 0xFF00FFFF | (a11[a3[v18 >> 1]] << 16);
          v22 = 2 * v18;
          *(a4 + v22) = v20;
          *(v15 + v22) = v21;
          v18 += 2;
        }

        while (v18 < a7 - 1);
      }

      result += v13;
      a2 += v14;
      a3 += v14;
      v11 += 2;
      a4 += v16;
      v15 += v16;
    }

    while (v11 < v12);
  }

  return result;
}

uint64_t MPEG4VideoDecoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  *a3 = 0;
  return v4;
}

uint64_t MPEG4VideoDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = (DerivedStorage + 16);
  if (*(DerivedStorage + 16))
  {
    KillInstanceGlobalsDeco((DerivedStorage + 16));
    *v2 = 0;
  }

  *v1 = 0;
  v3 = v1[1];
  result = FigFormatDescriptionRelease();
  v1[1] = 0;
  return result;
}

__CFString *MPEG4VideoDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<MPEG4VideoDecoder %p>", a1);
  return Mutable;
}

uint64_t MPEG4VideoDecoder_StartSession(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 846624121;
  *DerivedStorage = a2;
  v4 = *(DerivedStorage + 8);
  FigFormatDescriptionRelease();
  v5 = FigFormatDescriptionRetain();
  *(DerivedStorage + 8) = v5;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v5);
  *(DerivedStorage + 24) = 1;
  *(DerivedStorage + 26) = 0;
  v7 = *(DerivedStorage + 8);
  v8 = CMVideoFormatDescriptionGetDimensions(v7);
  inited = InitInstanceGlobalsDecoGenenral((DerivedStorage + 16), LOWORD(v8.width), LOWORD(v8.height), DerivedStorage + 24);
  if (inited)
  {
    return inited;
  }

  v63 = 0;
  v61 = 0u;
  *cf = 0u;
  Extension = CMFormatDescriptionGetExtension(v7, *MEMORY[0x277CC03B0]);
  if (!Extension || (v11 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v11)) || (Value = CFDictionaryGetValue(v11, @"esds")) == 0 || (ValueAtIndex = Value, v15 = CFArrayGetTypeID(), v15 == CFGetTypeID(ValueAtIndex)) && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 1)) == 0 || (v16 = CFDataGetTypeID(), v16 != CFGetTypeID(ValueAtIndex)))
  {
    MPEG4VideoDecoder_StartSession(&v64);
LABEL_23:
    v20 = v64;
    goto LABEL_24;
  }

  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  if (Length >= 0x7FFFFFFF)
  {
    MPEG4VideoDecoder_StartSession(&v64);
    goto LABEL_23;
  }

  if (!BytePtr || Length <= 4)
  {
    MPEG4VideoDecoder_StartSession(&v64);
    goto LABEL_23;
  }

  v19 = (Length - 4);
  v20 = -1;
  if (v19 < 2 || BytePtr[4] != 3)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = 0;
  v23 = &BytePtr[v19 + 4];
  while (1)
  {
    v24 = &BytePtr[v21];
    v25 = BytePtr[v21 + 5] & 0x7F | (v22 << 7);
    if ((BytePtr[v21 + 5] & 0x80) == 0)
    {
      break;
    }

    if (v21 != 3)
    {
      ++v21;
      v22 = v25;
      if ((v24 + 6) < v23)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  v26 = &v24[v25 + 6];
  if (v26 > v23)
  {
    goto LABEL_21;
  }

  if (v25 < 2)
  {
    goto LABEL_21;
  }

  LOWORD(v61) = _byteswap_ushort(*&BytePtr[v21 + 6]);
  if (v25 == 2)
  {
    goto LABEL_21;
  }

  v44 = &BytePtr[v21 + 9];
  BYTE2(v61) = BytePtr[v21 + 8];
  v64 = v44;
  if (SBYTE2(v61) < 0)
  {
    if (v25 < 5)
    {
      goto LABEL_21;
    }

    v44 = &BytePtr[v21 + 11];
    v64 = v44;
  }

  if ((BYTE2(v61) & 0x40) != 0)
  {
    if (v44 + 1 > v26)
    {
      goto LABEL_21;
    }

    v45 = *v44;
    if (*v44)
    {
      v46 = v44 + 2;
      v44 += (v45 - 1) + 2;
      while (v46 <= v26)
      {
        ++v46;
        if (!--v45)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_21;
    }

    ++v44;
LABEL_66:
    v64 = v44;
  }

  if ((BYTE2(v61) & 0x20) != 0)
  {
    v44 += 2;
    if (v44 > v26)
    {
      goto LABEL_21;
    }

    v64 = v44;
  }

  if (*v44 == 4)
  {
    v64 = v44 + 1;
    if (v44 + 1 < v26)
    {
      v47 = 0;
      v48 = 0;
      v20 = -1;
      while (1)
      {
        v48 = v44[v47 + 1] & 0x7F | (v48 << 7);
        v49 = &v44[v47 + 2];
        if ((v44[v47 + 1] & 0x80) == 0)
        {
          break;
        }

        if (v47 != 3)
        {
          ++v47;
          if (v49 < v26)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      v64 = &v44[v47 + 2];
      if (v49 + v48 <= v26)
      {
        if (v48)
        {
          v50 = &v44[v47];
          BYTE8(v61) = v44[v47 + 2];
          v64 = &v44[v47 + 3];
          if (v48 != 1)
          {
            v51 = v50 + 4;
            BYTE9(v61) = v44[v47 + 3];
            v64 = v50 + 4;
            if (v48 >= 5)
            {
              v52 = &v44[v47];
              v53 = &v44[v47 + 7];
              HIDWORD(v61) = (*v51 << 16) | (v44[v47 + 5] << 8) | v44[v47 + 6];
              v64 = v53;
              if (v48 >= 9)
              {
                v54 = &v44[v47];
                BYTE3(cf[0]) = *v53;
                BYTE2(cf[0]) = v54[8];
                BYTE1(cf[0]) = v54[9];
                LOBYTE(cf[0]) = v54[10];
                if (v48 >= 0xD)
                {
                  HIBYTE(cf[0]) = v52[11];
                  BYTE6(cf[0]) = v54[12];
                  BYTE5(cf[0]) = v54[13];
                  BYTE4(cf[0]) = v54[14];
                  v64 = v54 + 15;
                  v55 = v26;
                  v56 = unpack_DecoderSpecificInfo(&v64, &cf[1], v26);
                  v57 = v55;
                  v20 = v56;
                  if (v56)
                  {
                    goto LABEL_24;
                  }

                  v58 = unpack_SLConfigDescriptor(&v64, &v63, v57);
                  v20 = v58;
                  if (v58)
                  {
                    goto LABEL_24;
                  }

                  Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], cf[1]);
                  if (Copy)
                  {
                    v27 = Copy;
                    v20 = 0;
                    goto LABEL_27;
                  }

                  MPEG4VideoDecoder_StartSession(&v64);
                  goto LABEL_23;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v20 = -1;
LABEL_24:
  if (v20 == -1)
  {
    v20 = FigSignalErrorAtGM();
  }

  v27 = 0;
LABEL_27:
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v20)
  {
    if (v27)
    {
      CFRelease(v27);
    }

LABEL_34:
    inited = FigSignalErrorAtGM();
    if (inited)
    {
      return inited;
    }

LABEL_41:
    if (*(DerivedStorage + 32))
    {
      valuePtr = 1630697081;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v35 = Mutable;
      v36 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v36)
      {
        v37 = v36;
        v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        if (v38)
        {
          v39 = v38;
          CFArrayAppendValue(v37, v38);
          CFRelease(v39);
          CFDictionaryAddValue(v35, *MEMORY[0x277CC4E30], v37);
          CFRelease(v37);
          addNumberToDictionary(v35, *MEMORY[0x277CC4EC8], Dimensions.width);
          addNumberToDictionary(v35, *MEMORY[0x277CC4DD8], Dimensions.height);
          v40 = -Dimensions.width;
          v41 = -Dimensions.height & 0xF;
          if ((v40 & 0xF) != 0)
          {
            addNumberToDictionary(v35, *MEMORY[0x277CC4DB8], v40 & 0xF);
          }

          if (v41)
          {
            addNumberToDictionary(v35, *MEMORY[0x277CC4DA0], v41);
          }

          v42 = *DerivedStorage;
          VTDecoderSessionSetPixelBufferAttributes();
          CFRelease(v35);
          return 0;
        }

        CFRelease(v35);
        v43 = v37;
      }

      else
      {
        v43 = v35;
      }

      CFRelease(v43);
    }

    return 4294954392;
  }

  v28 = CFDataGetLength(v27);
  if (v28 > 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v31 = v28;
  v32 = *(DerivedStorage + 16);
  v33 = CFDataGetBytePtr(v27);
  Headers = MPEG4DMPR_ReadHeaders(v32, v33, v31);
  if (v27)
  {
    CFRelease(v27);
  }

  if (!Headers)
  {
    RequestGammaLevel(*(DerivedStorage + 16), 2.0, 2.0);
    S_BuildNewGammaTables(*(DerivedStorage + 16));
    goto LABEL_41;
  }

  return Headers;
}

uint64_t MPEG4VideoDecoder_DecodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, unsigned int *a5)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  dataPointerOut = 0;
  blockBufferOut = 0;
  pixelBufferOut = 0;
  if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
  {
    v10 = CFRetain(DataBuffer);
    blockBufferOut = v10;
  }

  else
  {
    v14 = CMBlockBufferCreateContiguous(*MEMORY[0x277CBECE8], DataBuffer, *MEMORY[0x277CBECE8], 0, 0, DataLength, 0, &blockBufferOut);
    if (v14)
    {
      goto LABEL_7;
    }

    v10 = blockBufferOut;
  }

  CMBlockBufferGetDataPointer(v10, 0, 0, 0, &dataPointerOut);
  v11 = *DerivedStorage;
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  v13 = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBufferOut);
  if (v13)
  {
    v14 = v13;
LABEL_5:
    FigSignalErrorAtGM();
LABEL_7:
    v15 = *DerivedStorage;
    v16 = *a5;
    goto LABEL_8;
  }

  ++*(DerivedStorage + 36);
  if (!(DataLength >> 31))
  {
    v20 = MPEG4DMPR_Decompress(*(DerivedStorage + 16), dataPointerOut, DataLength);
    if (v20)
    {
      v14 = v20;
      goto LABEL_5;
    }

    v21 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    if (v21)
    {
      v14 = v21;
      goto LABEL_5;
    }

    v22 = *(DerivedStorage + 16);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    MPEG4DecoPullDecodedFrame(v22, BaseAddress, BytesPerRow);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x277CC4BC8], *MEMORY[0x277CC4BD0], kCVAttachmentMode_ShouldPropagate);
    v25 = *DerivedStorage;
    v26 = *a5;
    goto LABEL_20;
  }

  v14 = FigSignalErrorAtGM();
  v18 = *DerivedStorage;
  v19 = *a5;
  if (!v14)
  {
LABEL_20:
    v14 = 0;
  }

LABEL_8:
  VTDecoderSessionEmitDecodedFrame();
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  CVPixelBufferRelease(pixelBufferOut);
  return v14;
}

uint64_t unpack_header(const unsigned __int8 **a1, int a2, const unsigned __int8 **a3)
{
  if (**a1 == a2)
  {
    v3 = 0;
    v4 = *a1 + 1;
    *a1 = v4;
    v5 = *a3;
    v6 = 4;
    while (1)
    {
      v7 = -1;
      v8 = v6-- != 0;
      if (!v8 || v4 >= v5)
      {
        break;
      }

      v9 = *v4 & 0x7F | (v3 << 7);
      v10 = v4 + 1;
      *a1 = v4 + 1;
      v11 = *v4++;
      v3 = v9;
      if ((v11 & 0x80000000) == 0)
      {
        v12 = &v10[v9];
        if (v12 > *a3)
        {
          return -1;
        }

        v7 = 0;
        *a3 = v12;
        return v7;
      }
    }
  }

  else
  {
    return -1;
  }

  return v7;
}

uint64_t unpack_SLConfigDescriptor(const unsigned __int8 **a1, _BYTE *a2, unsigned __int8 *a3)
{
  v7 = a3;
  v5 = unpack_header(a1, 6, &v7);
  if (!v5)
  {
    if (*a1 + 1 <= v7)
    {
      LOWORD(v5) = 0;
      *a2 = *(*a1)++;
    }

    else
    {
      LOWORD(v5) = -1;
    }
  }

  return v5;
}

uint64_t unpack_DecoderSpecificInfo(const unsigned __int8 **a1, const __CFData **a2, unsigned __int8 *a3)
{
  v9 = a3;
  result = unpack_header(a1, 5, &v9);
  if (!result)
  {
    v6 = v9 - *a1;
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      memcpy(v7, *a1, v6);
      *a1 += v6;
      *a2 = CFDataCreate(*MEMORY[0x277CBECE8], v8, v6);
      free(v8);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void addNumberToDictionary(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void *MEM_NewClear(int a1)
{
  v1 = a1;
  v2 = malloc_type_malloc(a1, 0x508E8A40uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, v1);
  }

  return v3;
}

void *DeblockFrameFast(void *result, char ***a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = result[8];
  if (*(result + 135) >= 4u)
  {
    v5 = *a2;
    if (*(result + 136) > *(result[2] + 4) / 0x14u)
    {
      S_DeblockPlaneFastSmart(result, v5, *v4, 0);
      S_DeblockPlaneFastSmart(v3, a2[1], v4[1], 4);
      v6 = a2[2];
      v7 = v4[2];

      return S_DeblockPlaneFastSmart(v3, v6, v7, 5);
    }

    S_DeblockPlaneFast(result, v5);
    S_DeblockPlaneFast(v3, a2[1]);
    S_DeblockPlaneFast(v3, a2[2]);
  }

  return CopyFrame(a2, v4);
}

void *S_DeblockPlaneFastSmart(uint64_t a1, char **a2, void *a3, int a4)
{
  v4 = *(a2 + 9);
  v54 = *(a2 + 12);
  v5 = (a1 + 568);
  v6 = 2 * **(a1 + 16);
  if (a4)
  {
    v6 = **(a1 + 16);
  }

  else
  {
    v5 = (a1 + 552);
  }

  v7 = a4 == 4;
  if (a4 == 4)
  {
    v8 = **(a1 + 16);
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v9 = (a1 + 560);
  }

  else
  {
    v9 = v5;
  }

  if (v4 >= 9)
  {
    v10 = 0;
    v11 = *(a2 + 8);
    v12 = *v9;
    v43 = ((v11 - 9) >> 3) + 2;
    v13 = 8 * *(a2 + 12);
    v14 = 8 * (v54 >> 2);
    v15 = 4 * (*(a2 + 12) >> 2) + v13;
    v16 = v13 + 8;
    v17 = v15 + 8;
    v18 = 8;
    v45 = a3;
    v46 = a2;
    v44 = *(a2 + 9);
    v53 = v11;
    v52 = *v9;
    v19 = *(a1 + 540);
    do
    {
      v20 = *a2;
      v21 = &(*a2)[v18 * v54];
      v22 = *a3;
      v23 = &(*a2)[v10];
      v24 = *a3 + v10;
      v25 = -2;
      do
      {
        v26 = *&v23[v15];
        *(v24 + v13) = *&v23[v13];
        *(v24 + v15) = v26;
        v25 += 2;
        v23 += v14;
        v24 += v14;
      }

      while (v25 < 6);
      v27 = v8 + 1;
      if (v11 >= 9)
      {
        v47 = v18;
        v48 = v17;
        v50 = v8;
        v51 = v10;
        v28 = 0;
        v29 = &v22[v16];
        v30 = &v22[v17];
        v49 = v16;
        v31 = &v20[v16];
        v32 = &v20[v17];
        for (i = 8; i < v11; i += 8)
        {
          v21 += 8;
          if (*(v12 + v27))
          {
            v34 = -2;
            v35 = v28;
            do
            {
              v36 = *&v30[v35];
              *&v31[v35] = *&v29[v35];
              *&v32[v35] = v36;
              v34 += 2;
              v35 += v14;
            }

            while (v34 < 6);
          }

          else
          {
            S_DeblockEdge(v21, v54, 1u, v19);
            S_DeblockEdge(v21, 1u, v54, v19);
            v12 = v52;
            v11 = v53;
            v37 = -2;
            v38 = v28;
            do
            {
              v39 = *&v32[v38];
              *&v29[v38] = *&v31[v38];
              *&v30[v38] = v39;
              v37 += 2;
              v38 += v14;
            }

            while (v37 < 6);
          }

          ++v27;
          v28 += 8;
        }

        v27 = v43 + v50;
        a3 = v45;
        a2 = v46;
        v4 = v44;
        v10 = v51;
        v15 = 4 * (v54 >> 2) + 8 * v54;
        v13 = 8 * v54;
        v17 = v48;
        v16 = v49;
        v18 = v47;
      }

      v18 += 8;
      v10 += v13;
      v16 += v13;
      v17 += v13;
      v8 = v27;
    }

    while (v18 < v4);
  }

  v40 = *a3;
  v41 = *a2;

  return memmove(v40, v41, 8 * v54);
}

_BYTE *S_DeblockPlaneFast(_BYTE *result, uint64_t *a2)
{
  v12 = *(a2 + 9);
  if (v12 >= 9)
  {
    v3 = *(a2 + 12);
    v4 = *(result + 135);
    v5 = *(a2 + 8);
    v6 = 8 * *(a2 + 12);
    v7 = v6 + 8;
    for (i = 8; i < v12; i += 8)
    {
      if (v5 >= 9)
      {
        v9 = v7;
        for (j = 8; j < v5; j += 8)
        {
          v11 = *a2;
          S_DeblockEdge((*a2 + v9), v3, 1u, v4);
          result = S_DeblockEdge((v11 + v9), 1u, v3, v4);
          v9 += 8;
        }
      }

      v7 += v6;
    }
  }

  return result;
}

uint64_t nMbsToPostFilter(uint64_t a1)
{
  if (*(a1 + 540) < 4u)
  {
    return 0;
  }

  result = *(*(a1 + 16) + 4);
  if (*(a1 + 544) > result / 0x14)
  {
    if (*(a1 + 943))
    {
      v3 = *(a1 + 544);
    }

    else
    {
      v3 = 0;
    }

    return (result - v3);
  }

  return result;
}

uint8x8_t *DeringFrameFast(uint8x8_t *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *(*result + 18);
  if (v3 >= 0x11)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(*&v2 + 24);
    v50 = *(*&v2 + 16);
    v51 = v3 - 16;
    do
    {
      v52 = v8;
      v53 = v6;
      if (v50 >= 0x11)
      {
        v10 = 0;
        v11 = v8 - 1;
        v59 = v8 | 7;
        v60 = v6 - 1;
        v55 = v8 - 1;
        do
        {
          v12 = 0;
          v13 = 0;
          LOBYTE(v14) = 0;
          v15 = v10 - 1;
          v61 = v7 - 1;
          v16 = v9;
          v17 = *(*v5 + 24);
          v18 = **v5;
          v58 = v10 | 7;
          do
          {
            if (v12 == 2)
            {
              v19 = v59 * v17 + v10 - 1;
            }

            else
            {
              v19 = (v10 | 7) + v59 * v17;
            }

            if (v12)
            {
              v20 = (v10 | 7) + v11 * v17;
            }

            else
            {
              v20 = v11 * v17 + v10 - 1;
            }

            if (v12 > 1)
            {
              v20 = v19;
            }

            v21 = 0;
            v22 = (v18 + v20);
            LOBYTE(v20) = *v22;
            v23 = *v22;
            do
            {
              for (i = 0; i != 10; ++i)
              {
                v25 = v22[i];
                v26 = v23;
                if (v25 < v23)
                {
                  v26 = v22[i];
                }

                if (v25 > v20)
                {
                  v20 = v22[i];
                }

                else
                {
                  v23 = v26;
                  v20 = v20;
                }
              }

              ++v21;
              v22 += v16;
            }

            while (v21 != 10);
            v62[v12] = v20 - v23;
            v27 = (v20 - v23);
            *(&v63 + v12) = (v20 + v23 + 1) >> 1;
            v28 = v27 > v14;
            if (v27 <= v14)
            {
              v14 = v14;
            }

            else
            {
              v14 = (v20 - v23);
            }

            if (v28)
            {
              v13 = v12;
            }

            ++v12;
          }

          while (v12 != 4);
          v29 = 0;
          v33 = v5[1];
          v30 = *(*&v33 + 24);
          v31 = (v61 + v60 * v30);
          v32 = (**&v33 + v31);
          v33.i8[0] = *v32;
          v34 = *v32;
          do
          {
            for (j = 0; j != 10; ++j)
            {
              v36 = v32[j];
              v37 = v34;
              if (v36 < v34)
              {
                v37 = v32[j];
              }

              if (v36 > v33.u8[0])
              {
                v33.i32[0] = v32[j];
              }

              else
              {
                v34 = v37;
                v33.i32[0] = v33.u8[0];
              }
            }

            ++v29;
            v32 += v30;
          }

          while (v29 != 10);
          v38 = 0;
          v57 = v33.i32[0] + v34 + 1;
          v67 = v57 >> 1;
          v62[4] = v33.i8[0] - v34;
          v39 = (**&v5[2] + v31);
          LOBYTE(v31) = *v39;
          v40 = *v39;
          do
          {
            for (k = 0; k != 10; ++k)
            {
              v42 = v39[k];
              v43 = v40;
              if (v42 < v40)
              {
                v43 = v39[k];
              }

              if (v42 > v31)
              {
                LODWORD(v31) = v39[k];
              }

              else
              {
                v40 = v43;
                LODWORD(v31) = v31;
              }
            }

            ++v38;
            v39 += v30;
          }

          while (v38 != 10);
          v56 = (v31 + v40 + 1) >> 1;
          v68 = v56;
          v62[5] = v31 - v40;
          v44 = v15 + v11 * v17;
          if (v14 > 0xF)
          {
            if (v14 >= 0x40)
            {
              v48 = *(&v63 + v13);
              if (v62[0] <= 0x1Fu)
              {
                v63 = v48;
              }

              if (v62[1] <= 0x1Fu)
              {
                v64 = v48;
              }

              if (v62[2] <= 0x1Fu)
              {
                v65 = v48;
              }

              if (v62[3] <= 0x1Fu)
              {
                v66 = v48;
              }
            }

            DeringBlock((v18 + v44), v17, a2[2], v63);
            DeringBlock((**v5 + v58 + v55 * *(*v5 + 24)), v17, a2[6], v64);
            DeringBlock((**v5 + v15 + v59 * *(*v5 + 24)), v17, a2[10], v65);
            DeringBlock((**v5 + v58 + v59 * *(*v5 + 24)), v17, a2[14], v66);
          }

          else
          {
            v45 = a2[2];
            v54 = a2;
            v46 = v11;
            DeringBlockAll(v18 + v44, v17, v45);
            v47 = v58 + v46 * *(*v5 + 24);
            a2 = v54;
            DeringBlockAll(**v5 + v47, v17, v54[6]);
            DeringBlockAll(**v5 + v15 + v59 * *(*v5 + 24), v17, v54[10]);
            DeringBlockAll(**v5 + v58 + v59 * *(*v5 + 24), v17, v54[14]);
          }

          v49 = v5[1];
          v9 = *(*&v49 + 24);
          DeringBlock((**&v49 + v61 + v60 * v9), v9, a2[18], (v57 >> 1));
          result = DeringBlock((**&v5[2] + v61 + v60 * *(*&v5[2] + 24)), v9, a2[22], v56);
          a2 += 24;
          v10 += 16;
          v7 += 8;
          v11 = v55;
        }

        while (v10 < (v50 - 16));
      }

      v8 = v52 + 16;
      v6 = v53 + 8;
    }

    while (v52 + 16 < v51);
  }

  return result;
}

unsigned __int8 *FindMinMax2D(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, int a4, int a5, unsigned int a6)
{
  v6 = *result;
  if (a5)
  {
    v7 = 0;
    v8 = *result;
    do
    {
      if (a4)
      {
        for (i = 0; i != a4; ++i)
        {
          v10 = result[i];
          v11 = v8;
          if (v10 < v8)
          {
            v11 = result[i];
          }

          if (v10 > v6)
          {
            v6 = result[i];
          }

          else
          {
            v8 = v11;
          }
        }
      }

      ++v7;
      result += a6;
    }

    while (v7 != a5);
  }

  else
  {
    v8 = *result;
  }

  *a2 = v8;
  *a3 = v6;
  return result;
}

uint64_t DeringBlockAll(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3 >> 1;
  v7 = -(a3 >> 1);
  v8 = 2 * a2;
  v9 = a2;
  do
  {
    v10 = 0;
    ++v5;
    v11 = v4;
    v12 = &v18[v4];
    do
    {
      v13 = *(result + v9 + v10 + 1);
      v14 = (*(result + (v3 + v10)) + 4 * v13 + *(result + (v3 + v10 + 2)) + *(result + (v8 + v10)) + *(result + (v8 + v10 + 2)) + 2 * (*(result + v9 + v10) + *(result + (v3 + v10 + 1)) + *(result + v9 + v10 + 2) + *(result + (v8 + v10 + 1))) + 8) >> 4;
      if ((v14 - v13) <= v6)
      {
        if ((v14 - v13) < v7)
        {
          LOBYTE(v14) = v13 - v6;
        }
      }

      else
      {
        LOBYTE(v14) = v13 + v6;
      }

      v12[v10++] = v14;
    }

    while (v10 != 8);
    v8 += a2;
    v3 += a2;
    v9 += a2;
    v4 = v11 + 8;
  }

  while (v5 != 8);
  v15 = 0;
  v16 = (result + a2 + 1);
  do
  {
    *v16 = *&v18[v15];
    v16 = (v16 + a2);
    v15 += 8;
  }

  while (v15 != 64);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint8x8_t *DeringBlock(uint8x8_t *result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = 0;
  *&v38[94] = *MEMORY[0x277D85DE8];
  v5 = result[1].u8[0];
  v6 = result[1].u8[1];
  v7 = vdupq_n_s32(a4);
  v8 = vmovl_u8(*result);
  v35 = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(vmovl_u16(*v8.i8), v7), vcgeq_u32(vmovl_high_u16(v8), v7))), 0x101010101010101);
  v36 = v5 >= a4;
  v37 = v6 >= a4;
  v9 = (result + a2);
  v10 = v38;
  do
  {
    v11 = v9->u8[0] >= a4;
    v12 = *(v9 + 1);
    *&v34[v4] = v12;
    *v10 = v11;
    v13 = vmovl_u8(v12);
    *(v10 + 1) = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(vmovl_u16(*v13.i8), v7), vcgeq_u32(vmovl_high_u16(v13), v7))), 0x101010101010101);
    v10[9] = v9[1].u8[1] >= a4;
    v9 = (v9 + a2);
    v10 += 10;
    v4 += 8;
  }

  while (v4 != 64);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = vmovl_u8(*v9);
  v18 = v9[1].u8[0] >= a4;
  v19 = v9[1].u8[1] >= a4;
  *v10 = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(vmovl_u16(*v17.i8), v7), vcgeq_u32(vmovl_high_u16(v17), v7))), 0x101010101010101);
  v20 = a3 >> 1;
  v21 = -(a3 >> 1);
  v10[8] = v18;
  v10[9] = v19;
  v22 = &v38[1];
  v23 = 2 * a2;
  v24 = a2;
  do
  {
    v25 = 0;
    ++v15;
    v26 = v16;
    v27 = &v34[v16];
    do
    {
      v28 = v22[v25];
      if (v22[v25 - 11] == v28 && v22[v25 - 10] == v28 && v22[v25 - 9] == v28 && v22[v25 - 1] == v28 && v22[v25 + 1] == v28 && v22[v25 + 9] == v28 && v22[v25 + 10] == v28 && v22[v25 + 11] == v28)
      {
        v29 = result->u8[v24 + 1 + v25];
        v30 = (result->u8[(v14 + v25)] + result->u8[(v14 + v25 + 2)] + 4 * v29 + result->u8[(v23 + v25)] + result->u8[(v23 + v25 + 2)] + 2 * (result->u8[v24 + v25] + result->u8[(v14 + v25 + 1)] + result->u8[v24 + 2 + v25] + result->u8[(v23 + v25 + 1)]) + 8) >> 4;
        if ((v30 - v29) <= v20)
        {
          if ((v30 - v29) < v21)
          {
            LOBYTE(v30) = v29 - v20;
          }
        }

        else
        {
          LOBYTE(v30) = v29 + v20;
        }

        v27[v25] = v30;
      }

      ++v25;
    }

    while (v25 != 8);
    v16 = v26 + 8;
    v24 += a2;
    v22 += 10;
    v23 += a2;
    v14 += a2;
  }

  while (v15 != 8);
  v31 = 0;
  v32 = (result + a2 + 1);
  do
  {
    *v32 = *&v34[v31];
    v32 = (v32 + a2);
    v31 += 8;
  }

  while (v31 != 64);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *S_DeblockEdge(_BYTE *result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = 0;
  v5 = -4 * a2;
  v71 = *MEMORY[0x277D85DE8];
  v63 = -5 * a2;
  v62 = -3 * a2;
  v61 = -2 * a2;
  v6 = -a2;
  v7 = a2;
  v59 = 4 * a2;
  v60 = 2 * a2;
  v56 = 2 * a4;
  v58 = 3 * a2;
  do
  {
    v8 = result[v63];
    v9 = result[v5];
    v10 = result[v62];
    v11 = result[v61];
    v12 = result[v6];
    v13 = *result;
    v14 = result[v7];
    v15 = result[v60];
    v16 = result[v58];
    v17 = result[v59];
    v18 = v10 - v11;
    v19 = v12 - v13;
    if (byte_27792F66F[(v9 - v10)] + byte_27792F66F[result[v63] - v9] + byte_27792F66F[v10 - v11] + byte_27792F66F[v11 - v12] + byte_27792F66F[v12 - v13] + byte_27792F66F[v13 - v14] + byte_27792F66F[v14 - v15] + byte_27792F66F[v15 - v16] + byte_27792F66F[v16 - v17] > 5)
    {
      if (v9 <= v10)
      {
        v37 = result[v62];
      }

      else
      {
        v37 = result[v5];
      }

      if (v11 <= v12)
      {
        v39 = result[v6];
      }

      else
      {
        v39 = result[v61];
      }

      if (v13 <= v14)
      {
        v41 = result[v7];
      }

      else
      {
        v41 = *result;
      }

      if (v15 <= v16)
      {
        v43 = result[v58];
      }

      else
      {
        v43 = result[v60];
      }

      v38 = ((v11 - v12) & ((v11 - v12) >> 31)) + v12;
      v36 = ((v9 - v10) & ((v9 - v10) >> 31)) + v10;
      v44 = ((v36 - v38) & ((v36 - v38) >> 31)) + v38;
      v42 = ((v15 - v16) & ((v15 - v16) >> 31)) + v16;
      v40 = ((v13 - v14) & ((v13 - v14) >> 31)) + v14;
      v45 = ((v40 - v42) & ((v40 - v42) >> 31)) + v42;
      if (v37 <= v39)
      {
        v46 = v39;
      }

      else
      {
        v46 = v37;
      }

      if (v41 <= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v41;
      }

      v48 = (v44 - v45) & ((v44 - v45) >> 31);
      if (v46 <= v47)
      {
        v46 = v47;
      }

      if (v46 - v45 - v48 < v56)
      {
        v49 = 0;
        v50 = v9 - v8;
        if (v9 - v8 < 0)
        {
          v50 = v8 - v9;
        }

        if ((v50 - a4) >= 0)
        {
          v8 = result[v5];
        }

        if ((v16 - v17) >= 0)
        {
          v51 = v16 - v17;
        }

        else
        {
          v51 = v17 - v16;
        }

        if ((v51 - a4) >= 0)
        {
          v52 = result[v58];
        }

        else
        {
          v52 = result[v59];
        }

        v65 = result[v5];
        v66 = v10;
        v67 = v11;
        v68 = v12;
        v69[0] = v13;
        v69[1] = v14;
        v69[2] = v15;
        v69[3] = v16;
        v64 = 16843009 * v8;
        v70 = 16843009 * v52;
        v53 = v5;
        do
        {
          v54 = *(&v64 + v49 + 2) + v8;
          v8 = *(&v64 + v49 + 4);
          result[v53] = (*(&v64 + v49 + 1) + *(&v64 + v49) + 4 * v8 + v69[v49 - 1] + v69[v49] + 2 * (v54 + *(&v66 + v49) + *(&v67 + v49))) >> 4;
          v53 += v7;
          ++v49;
        }

        while (v49 != 8);
      }
    }

    else
    {
      v20 = 2 * (v11 - v14) - 5 * v19;
      if (v20 >= 0)
      {
        v21 = 2 * (v11 - v14) - 5 * v19;
      }

      else
      {
        v21 = 5 * v19 - 2 * (v11 - v14);
      }

      v22 = (v21 + 4) >> 3;
      if (v22 < a4)
      {
        v23 = v20 >> 31;
        v24 = 2 * (v13 - v16) - 5 * (v14 - v15);
        v25 = 2 * (v9 - v12) - 5 * v18;
        if (v25 < 0)
        {
          v25 = 5 * v18 - 2 * (v9 - v12);
        }

        v26 = (v25 + 4) >> 3;
        if (v24 < 0)
        {
          v24 = 5 * (v14 - v15) - 2 * (v13 - v16);
        }

        v27 = v24 + 4;
        v28 = v22 - (v27 >> 3) + ((v26 - v22) & ((v26 - v22) >> 31));
        v29 = ((v23 + (v27 >> 3) + (v28 & (v28 >> 31))) ^ v23) - ((v22 + v23) ^ v23);
        if (v29 >= 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = -v29;
        }

        v31 = 5 * v30 + 4;
        if (v19 >= 0)
        {
          v32 = v12 - v13;
        }

        else
        {
          v32 = v13 - v12;
        }

        v33 = (((v32 >> 1) - (v31 >> 3)) & (((v32 >> 1) - (v31 >> 3)) >> 31)) + (v31 >> 3);
        if (v29 >> 31 == v19 >> 31)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = (v34 + (v29 >> 31)) ^ (v29 >> 31);
        result[v6] = v12 - v35;
        *result = v13 + v35;
      }
    }

    result += a3;
    ++v4;
  }

  while (v4 != 8);
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t InitIntraPredictor(uint64_t a1, unsigned int a2)
{
  v4 = MEM_NewClear(320);
  *a1 = v4;
  if (v4)
  {
    v4[6] = 0;
    v4[76] = 0;
    v5 = (a2 >> 3) + 2;
    v6 = 16;
    while (1)
    {
      *(*a1 + v6) = MEM_New(2 * v5 + 4);
      if (!*(*a1 + v6))
      {
        break;
      }

      v6 += 8;
      if (v6 == 56)
      {
        *(*a1 + 104) = *(*a1 + 16) + 4;
        *(*a1 + 112) = *(*a1 + 104) + 2;
        *(*a1 + 120) = *(*a1 + 24) + 4;
        *(*a1 + 128) = *(*a1 + 120) + 2;
        *(*a1 + 56) = *(*a1 + 24) + 4;
        *(*a1 + 64) = *(*a1 + 56) + 2;
        *(*a1 + 72) = *(*a1 + 32) + 4;
        *(*a1 + 80) = *(*a1 + 72) + 2;
        *(*a1 + 136) = *(*a1 + 40) + 4;
        *(*a1 + 88) = *(*a1 + 48) + 4;
        *(*a1 + 144) = *(*a1 + 40) + 6;
        *(*a1 + 96) = *(*a1 + 48) + 6;
        *(*a1 + 152) = 0;
        v7 = 32 * v5;
        v8 = 160;
        while (1)
        {
          *(*a1 + v8) = MEM_New(v7 + 64);
          if (!*(*a1 + v8))
          {
            break;
          }

          v8 += 8;
          if (v8 == 184)
          {
            result = 0;
            *(*a1 + 232) = *(*a1 + 160) + 64;
            *(*a1 + 240) = *(*a1 + 232) + 32;
            *(*a1 + 248) = *(*a1 + 168) + 64;
            *(*a1 + 256) = *(*a1 + 248) + 32;
            *(*a1 + 200) = *(*a1 + 232);
            *(*a1 + 208) = *(*a1 + 240);
            *(*a1 + 184) = *(*a1 + 248);
            *(*a1 + 192) = *(*a1 + 256);
            *(*a1 + 264) = *(*a1 + 176) + 64;
            *(*a1 + 272) = *(*a1 + 264) + 32;
            *(*a1 + 216) = *(*a1 + 264);
            *(*a1 + 224) = *(*a1 + 272);
            *(*a1 + 156) = 0;
            return result;
          }
        }

        return 4294967188;
      }
    }
  }

  return 4294967188;
}

uint64_t KillIntraPredictor(void **a1)
{
  if (*a1)
  {
    for (i = 16; i != 56; i += 8)
    {
      v3 = *(*a1 + i);
      if (v3)
      {
        MEM_Dispose(v3);
        *(*a1 + i) = 0;
      }
    }

    for (j = 160; j != 184; j += 8)
    {
      v5 = *(*a1 + j);
      if (v5)
      {
        MEM_Dispose(v5);
        *(*a1 + j) = 0;
      }
    }

    MEM_Dispose(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t DetermineIntraPredictionMode(uint64_t a1, int a2, int a3)
{
  v3 = 2 * a2;
  v4 = a3 & 0xFFFFFFFD;
  if ((a3 & 0xFFFFFFFD) != 0)
  {
    v5 = v4 == 1;
    if (v4 == 1)
    {
      v6 = a3 - 1;
    }

    else
    {
      v6 = a3;
    }

    if (!v5)
    {
      v3 -= 2;
    }
  }

  else
  {
    v6 = a3 | 1;
    v3 -= 2;
  }

  v7 = *(*(a1 + 104 + 8 * v6) + 2 * v3);
  v8 = v7 - *(*(a1 + 104 + 8 * a3) + 4 * a2);
  v9 = *(*(a1 + 8 * v6 + 56) + 2 * v3) - v7;
  if (v8 < 0)
  {
    v8 = -v8;
  }

  if (v9 < 0)
  {
    v9 = -v9;
  }

  if (v9 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  return v10 | *(a1 + 156);
}

uint64_t FindLeftPredictorBlockAndCol(uint64_t result, int a2, int *a3, int *a4)
{
  if ((result & 0xFFFFFFFD) == 0)
  {
    *a3 = result | 1;
LABEL_6:
    a2 -= 2;
    goto LABEL_7;
  }

  if ((result & 0xFFFFFFFD) != 1)
  {
    *a3 = result;
    goto LABEL_6;
  }

  *a3 = result - 1;
LABEL_7:
  *a4 = a2;
  return result;
}

uint64_t PredictAndUpdate(uint64_t result, __int16 *a2, char a3, int a4, int a5, int a6)
{
  v6 = 2 * a4;
  if (*a2 * a6 >= 2047)
  {
    v7 = 2047;
  }

  else
  {
    v7 = *a2 * a6;
  }

  *(*(result + 56 + 8 * a5) + 2 * v6) = v7;
  if (a3)
  {
    v11 = (*(result + 8 * a5 + 104) + 2 * v6);
  }

  else
  {
    v8 = a5 & 0xFFFFFFFD;
    if ((a5 & 0xFFFFFFFD) != 0)
    {
      v9 = v8 == 1;
      if (v8 == 1)
      {
        v10 = a5 - 1;
      }

      else
      {
        v10 = a5;
      }

      if (!v9)
      {
        v6 -= 2;
      }
    }

    else
    {
      v10 = a5 | 1;
      v6 -= 2;
    }

    v11 = (*(result + 56 + 8 * v10) + 2 * v6);
  }

  v12 = *v11;
  v13 = *a2;
  v14 = (2 * v12 + a6) / (2 * a6);
  v9 = v12 >= 0;
  v15 = (a6 - 2 * v12) / (2 * a6);
  if (v9)
  {
    LOWORD(v16) = v14;
  }

  else
  {
    v16 = -v15;
  }

  *(result + 282) = v13;
  *a2 = v13 - v16;
  return result;
}

uint64_t CheapyRecon(uint64_t result, _WORD *a2, char a3)
{
  *a2 = *(result + 282);
  if ((a3 & 4) != 0)
  {
    v3 = 0;
    if (a3)
    {
      do
      {
        a2[v3 + 1] = *(result + 284 + v3 * 2);
        ++v3;
      }

      while (v3 != 7);
    }

    else
    {
      v4 = a2 + 8;
      do
      {
        *v4 = *(result + 300 + v3 * 2);
        v4 += 8;
        ++v3;
      }

      while (v3 != 7);
    }
  }

  return result;
}

uint64_t ReconAndUpdate(uint64_t result, _WORD *a2, char a3, int a4, int a5, int a6, int a7)
{
  v7 = 2 * a4;
  v8 = result + 8 * a5;
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    v14 = (*(v8 + 104) + 2 * v7);
  }

  else
  {
    v9 = a5 & 0xFFFFFFFD;
    if ((a5 & 0xFFFFFFFD) != 0)
    {
      v10 = v7 - 2;
      v11 = v9 == 1;
      if (v9 == 1)
      {
        LODWORD(v12) = a5 - 1;
      }

      else
      {
        LODWORD(v12) = a5;
      }

      if (v11)
      {
        v10 = 2 * a4;
      }
    }

    else
    {
      LODWORD(v12) = a5 | 1;
      v10 = v7 - 2;
    }

    v12 = v12;
    v14 = (*(result + 8 * v12 + 56) + 2 * v10);
    v13 = 16 * v10;
  }

  v15 = *v14;
  if (v15 < 0)
  {
    v15 = -((a6 - 2 * v15) / (2 * a6));
  }

  else
  {
    LOWORD(v15) = (2 * v15 + a6) / (2 * a6);
  }

  v16 = *a2 + v15;
  *a2 = v16;
  v17 = v16 * a6;
  if (v17 >= 2047)
  {
    LOWORD(v17) = 2047;
  }

  *(*(v8 + 56) + 4 * a4) = v17;
  v18 = result + 8 * a5;
  if ((a3 & 4) != 0)
  {
    if (a3)
    {
      v26 = 0;
      v27 = 2 * a7;
      v28 = *(v18 + 232) + 64 * a4 + 18;
      do
      {
        LOWORD(v29) = 0;
        if (a7 && *(v28 + v26 * 2))
        {
          v30 = *(v28 + v26 * 2);
          v31 = 2 * v30;
          if (v30 < 0)
          {
            v29 = -((a7 - v31) / v27);
          }

          else
          {
            v29 = (v31 + a7) / v27;
          }
        }

        a2[++v26] += v29;
      }

      while (v26 != 7);
    }

    else
    {
      v19 = *(result + 8 * v12 + 184) + 2 * v13;
      v20 = 2 * a7;
      v21 = a2 + 8;
      for (i = 2; i != 16; i += 2)
      {
        LOWORD(v23) = 0;
        if (a7 && *(v19 + i))
        {
          v24 = *(v19 + i);
          v25 = 2 * v24;
          if (v24 < 0)
          {
            v23 = -((a7 - v25) / v20);
          }

          else
          {
            v23 = (v25 + a7) / v20;
          }
        }

        *v21 += v23;
        v21 += 8;
      }
    }
  }

  v32 = 0;
  v33 = *(v18 + 184) + (a4 << 6);
  do
  {
    *(v33 + 18 + v32 * 2) = a2[v32 + 1] * a7;
    ++v32;
  }

  while (v32 != 7);
  v34 = a2 + 8;
  for (j = 2; j != 16; j += 2)
  {
    v36 = *v34;
    v34 += 8;
    *(v33 + j) = v36 * a7;
  }

  return result;
}

uint64_t UpdateACUp(uint64_t result, uint64_t a2, int a3, int a4, __int16 a5)
{
  v5 = 0;
  v6 = *(result + 8 * a3 + 184) + 2 * a4 + 18;
  do
  {
    *(v6 + v5) = *(a2 + 2 + v5) * a5;
    v5 += 2;
  }

  while (v5 != 14);
  return result;
}

uint64_t UpdateACLeft(uint64_t result, uint64_t a2, int a3, int a4, __int16 a5)
{
  v5 = *(result + 8 * a3 + 184) + 2 * a4;
  v6 = (a2 + 16);
  for (i = 2; i != 16; i += 2)
  {
    v8 = *v6;
    v6 += 8;
    *(v5 + i) = v8 * a5;
  }

  return result;
}

uint64_t ResetAtBoundaryTop(uint64_t result, int a2)
{
  v2 = 0;
  v3 = *(result + 12);
  v4 = *(result + 152);
  v5 = *(result + 112);
  *(*(result + 104) + 4 * a2) = v3;
  *(v5 + 4 * a2) = v3;
  v6 = *(result + 144);
  *(*(result + 136) + 4 * a2) = v3;
  *(v6 + 4 * a2) = v3;
  v7 = ((32 * a2) >> 5 << 6) | 0x12;
  v8 = *(result + 272) + v7;
  v9 = *(result + 264) + v7;
  v10 = *(result + 240) + v7;
  v11 = *(result + 232) + v7;
  do
  {
    *(v11 + v2) = v4;
    *(v10 + v2) = v4;
    *(v9 + v2) = v4;
    *(v8 + v2) = v4;
    v2 += 2;
  }

  while (v2 != 14);
  return result;
}

uint64_t ResetAtBoundaryLeft(uint64_t result, int a2)
{
  v2 = *(result + 12);
  v3 = *(result + 152);
  v5 = *(result + 96);
  v4 = *(result + 104);
  v6 = v4 + 2;
  v8 = *(result + 64);
  v7 = *(result + 72);
  *(result + 72) = v4;
  *(result + 80) = v4 + 2;
  v9 = v7 + 2;
  *(result + 104) = v7;
  *(result + 112) = v7 + 2;
  v10 = *(result + 88);
  v11 = *(result + 136);
  v12 = *(result + 144);
  v13 = 2 * a2 - 2;
  *(v8 + 2 * v13) = v2;
  *(v6 + 2 * v13) = v2;
  *(v11 + 2 * v13) = v2;
  *(v12 + 2 * v13) = v2;
  *(v9 + 2 * v13) = v2;
  *(result + 88) = v11;
  *(result + 96) = v12;
  v14 = *(result + 192) + 32 * v13;
  v15 = *(result + 208) + 32 * v13;
  v16 = 2;
  *(result + 136) = v10;
  *(result + 144) = v5;
  *(v10 + 2 * v13) = v2;
  *(v5 + 2 * v13) = v2;
  do
  {
    *(v14 + v16) = v3;
    *(v15 + v16) = v3;
    v16 += 2;
  }

  while (v16 != 16);
  v17 = *(result + 216) + 32 * v13;
  v18 = *(result + 224) + 32 * v13;
  for (i = 2; i != 16; i += 2)
  {
    *(v17 + i) = v3;
    *(v18 + i) = v3;
  }

  return result;
}

uint64_t ResetAtInterMB(uint64_t result, int a2)
{
  v2 = 0;
  v3 = *(result + 12);
  do
  {
    *(*(result + 56 + v2) + 4 * a2) = v3;
    v2 += 8;
  }

  while (v2 != 48);
  v4 = 0;
  v5 = *(result + 152);
  v6 = *(result + 184) + (a2 << 6);
  v7 = *(result + 200) + (a2 << 6);
  v8 = *(result + 216) + (a2 << 6);
  do
  {
    *(v6 + v4) = v5;
    *(v7 + v4) = v5;
    *(v8 + v4) = v5;
    v4 += 2;
  }

  while (v4 != 64);
  *(result + 156) = 0;
  return result;
}

uint64_t Set_blockIsOpaque(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 3);
  v4 = 5;
  do
  {
    v5 = v3 & (-33 >> v4);
    v3 |= 1 << v2;
    if (!*(a2 + v2))
    {
      v3 = v5;
    }

    *(result + 3) = v3;
    ++v2;
    --v4;
  }

  while (v2 != 6);
  return result;
}

uint64_t Check_blockIsOpaque(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 6; ++i)
  {
    *(a2 + i) = (*(result + 3) >> i) & 1;
  }

  return result;
}

uint64_t MPEG4DMPR_Decompress(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 80);
  CBitStreamDeco::SetUp(v6, a3, a2);
  if (*(v4 + 21) != 1)
  {
    if (CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u))
    {
      goto LABEL_11;
    }

    v13 = *(v6 + 156);
    *(v6 + 156) = v13 + 24;
    v14 = *(v6 + 4);
    if (v14 > 0x17)
    {
      v15 = v14 - 24;
      v19 = v13 + 32;
      *(v6 + 156) = v13 + 32;
      if ((v14 - 24) < 8)
      {
        v20 = v15 | 0x18;
        *(v6 + 4) = v15 | 0x18;
        v21 = (*v6 << -v14) & *(v6 + 56);
        v22 = *(v6 + 160);
        v23 = *(v6 + 8);
        if (v19 > v22 || 32 * v23 > v22)
        {
          *(v6 + 8) = v23 + 1;
          *v6 = 0;
        }

        else
        {
          v30 = bswap32(*(*(v6 + 16) + 4 * v23));
          *v6 = v30;
          *(v6 + 8) = v23 + 1;
          v21 |= *(v6 + 4 * (32 - v14) + 24) & (v30 >> v20);
        }

LABEL_30:
        if (v21 == 176)
        {
          DecHeaderVOS(v6, a1);
          if (CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u))
          {
            goto LABEL_11;
          }

          v25 = *(v6 + 156);
          *(v6 + 156) = v25 + 24;
          v26 = *(v6 + 4);
          if (v26 > 0x17)
          {
            v27 = v26 - 24;
            v31 = v25 + 32;
            *(v6 + 156) = v25 + 32;
            if ((v26 - 24) < 8)
            {
              v32 = v27 | 0x18;
              *(v6 + 4) = v27 | 0x18;
              v21 = (*v6 << -v26) & *(v6 + 56);
              v33 = *(v6 + 160);
              v34 = *(v6 + 8);
              if (v31 > v33 || 32 * v34 > v33)
              {
                *(v6 + 8) = v34 + 1;
                *v6 = 0;
              }

              else
              {
                v35 = bswap32(*(*(v6 + 16) + 4 * v34));
                *v6 = v35;
                *(v6 + 8) = v34 + 1;
                v21 |= *(v6 + 4 * (32 - v26) + 24) & (v35 >> v32);
              }

              goto LABEL_44;
            }
          }

          else
          {
            v27 = v26 + 8;
            *(v6 + 4) = v26 + 8;
            v28 = *(v6 + 160);
            v29 = *(v6 + 8);
            if (v25 + 24 > v28 || 32 * v29 > v28)
            {
              *(v6 + 8) = v29 + 1;
              *v6 = 0;
            }

            else
            {
              *v6 = bswap32(*(*(v6 + 16) + 4 * v29));
              *(v6 + 8) = v29 + 1;
            }

            *(v6 + 156) = v25 + 32;
          }

          *(v6 + 4) = v27 - 8;
          v21 = (*v6 >> (v27 - 8)) & *(v6 + 56);
        }

LABEL_44:
        if (v21 == 181)
        {
          DecHeaderVO(v6, v4);
          v36 = *(v6 + 156);
          *(v6 + 156) = v36 + 22;
          v37 = *(v6 + 4);
          if (v37 >= 0x16)
          {
            v39 = v37 - 22;
            v40 = (*v6 >> (v37 - 22)) & *(v6 + 112);
          }

          else
          {
            v38 = 22 - v37;
            v39 = v37 + 10;
            *(v6 + 4) = v37 + 10;
            v40 = (*v6 << (22 - v37)) & *(v6 + 112);
            v41 = *(v6 + 160);
            v42 = *(v6 + 8);
            if (v36 + 22 > v41 || 32 * v42 > v41)
            {
              *(v6 + 8) = v42 + 1;
              *v6 = 0;
            }

            else
            {
              v43 = bswap32(*(*(v6 + 16) + 4 * v42));
              *v6 = v43;
              *(v6 + 8) = v42 + 1;
              v40 |= *(v6 + 4 * v38 + 24) & (v43 >> v39);
            }
          }

          *(v6 + 4) = v39 + 22;
          if (v39 >= 0xB)
          {
            v44 = v39 - 10;
            v45 = *(v6 + 8);
            *(v6 + 4) = v44;
            *(v6 + 8) = v45 - 1;
            if (*(v6 + 160) >= (32 * (v45 - 1)))
            {
              *v6 = bswap32(*(*(v6 + 16) + 4 * (v45 - 2)));
            }
          }

          *(v6 + 156) = v36;
          if (v40 == 32)
          {
            *(v4 + 21) = 1;
            goto LABEL_11;
          }

          *(v4 + 21) = 0;
          if (CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u))
          {
            goto LABEL_11;
          }

          CBitStreamDeco::GrabBits(v6, 0x18u);
          v21 = CBitStreamDeco::GrabBits(v6, 8u);
        }

        if (v21 <= 0x1F)
        {
          if (CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u))
          {
            goto LABEL_11;
          }

          CBitStreamDeco::GrabBits(v6, 0x18u);
          v21 = CBitStreamDeco::GrabBits(v6, 8u);
        }

        if ((v21 & 0xFFFFFFF0) == 0x20)
        {
          DecHeaderVOL(v6, a1);
          if (CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u))
          {
            goto LABEL_11;
          }

          CBitStreamDeco::GrabBits(v6, 0x18u);
          v21 = CBitStreamDeco::GrabBits(v6, 8u);
        }

        if (v21 == 179)
        {
          DecHeaderGOV(v6);
          if (CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u) == -1999)
          {
            return 0;
          }

          CBitStreamDeco::GrabBits(v6, 0x18u);
          v21 = CBitStreamDeco::GrabBits(v6, 8u);
        }

        if (v21 == 182 && !DecHeaderVOP(v6, a1))
        {
          v46 = *(a1 + 260);
          *(a1 + 261) = v46;
          v47 = *(v4 + 148);
          if (v47 != 2)
          {
            *(a1 + 260) = *(v4 + 154);
            if (v46)
            {
              *(a1 + 244) = *(a1 + 248);
            }

            *(a1 + 248) = *(a1 + 240);
            if (v47 == 3 && *(v4 + 90) == 2)
            {
              SetGMCWarpingParams(*(v4 + 91), *(v4 + 92), (v4 + 100), (v4 + 116), *(v4 + 56), *(v4 + 58), (a1 + 632));
            }

            if (*(v4 + 149) != 2)
            {
              v48 = *(a1 + 40);
              v8 = *(a1 + 56);
              *(a1 + 48) = v48;
              *(a1 + 40) = v8;
              if (*(v4 + 154) != 1)
              {
                SwapMVrow((a1 + 48), (a1 + 40));
                v8 = *(a1 + 40);
                v7 = *(a1 + 48);
                *(a1 + 544) = *(v5 + 4);
                goto LABEL_3;
              }

              v7 = v48;
              SideExtendFrame(v48);
              if (!ReadSomeVideoPackets(v8, v7, a1))
              {
                goto LABEL_3;
              }
            }
          }
        }

LABEL_11:
        v11 = 4294958327;
        goto LABEL_12;
      }
    }

    else
    {
      v15 = v14 + 8;
      *(v6 + 4) = v14 + 8;
      v16 = *(v6 + 160);
      v17 = *(v6 + 8);
      if (v13 + 24 > v16 || 32 * v17 > v16)
      {
        *(v6 + 8) = v17 + 1;
        *v6 = 0;
      }

      else
      {
        *v6 = bswap32(*(*(v6 + 16) + 4 * v17));
        *(v6 + 8) = v17 + 1;
      }

      *(v6 + 156) = v13 + 32;
    }

    *(v6 + 4) = v15 - 8;
    v21 = (*v6 >> (v15 - 8)) & *(v6 + 56);
    goto LABEL_30;
  }

  DecHeaderVOPshort(v6, v5, v4);
  v7 = 0;
  v8 = 0;
LABEL_3:
  *(a1 + 72) = v8;
  v9 = *(a1 + 608);
  if (*v9 || v9[1] || *(a1 + 942))
  {
    CopyFrame(v8, v7);
    *(a1 + 72) = v7;
    if (**(a1 + 608))
    {
LABEL_8:
      v10 = *(a1 + 520);
      DeblockFrameFast(a1, v7);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v8;
  }

  if (*(a1 + 942))
  {
    goto LABEL_8;
  }

LABEL_9:
  v11 = 0;
  *(v4 + 149) = *(v4 + 148);
LABEL_12:
  CBitStreamDeco::ReleaseBuffer(v6);
  return v11;
}

uint64_t CBitStreamDeco::FindByteAlignedPattern(CBitStreamDeco *this, int a2, unsigned int a3)
{
  v4 = *(this + 39);
  v3 = *(this + 40);
  if (v4 >= v3)
  {
    v11 = 0;
  }

  else
  {
    v5 = *(this + 1);
    v6 = this + 24;
    do
    {
      v7 = v4 + (v5 & 7);
      v8 = v5 & 0xFFFFFFF8;
      *(this + 39) = v7 + a3;
      v9 = (v5 & 0xFFFFFFF8) - a3;
      if (v8 >= a3)
      {
        v11 = (*this >> v9) & *&v6[4 * a3];
      }

      else
      {
        v10 = a3 - v8;
        v9 = 32 - (a3 - v8);
        *(this + 1) = v9;
        if (a3 - v8 <= 0x1F)
        {
          v11 = (*this << v10) & *&v6[4 * a3];
        }

        else
        {
          v11 = 0;
        }

        v12 = *(this + 2);
        if (v7 + a3 > v3 || 32 * v12 > v3)
        {
          *(this + 2) = v12 + 1;
          *this = 0;
        }

        else
        {
          v13 = bswap32(*(*(this + 2) + 4 * v12));
          *this = v13;
          *(this + 2) = v12 + 1;
          v11 |= *&v6[4 * v10] & (v13 >> v9);
        }
      }

      v5 = a3 - 1 + v9;
      *(this + 1) = v5;
      if (v5 >= 0x21)
      {
        v5 -= 32;
        v14 = *(this + 2);
        *(this + 1) = v5;
        *(this + 2) = v14 - 1;
        if (v3 >= 32 * (v14 - 1))
        {
          *this = bswap32(*(*(this + 2) + 4 * (v14 - 2)));
        }
      }

      v4 = v7 + 1;
      *(this + 39) = v4;
    }

    while (v4 < v3 && v11 != a2);
  }

  if (v11 != a2)
  {
    return 4294965297;
  }

  v15 = *(this + 1);
  *(this + 1) = v15 + 1;
  if ((v15 + 1) >= 0x21)
  {
    v16 = v15 - 31;
    v17 = *(this + 2);
    *(this + 1) = v16;
    *(this + 2) = v17 - 1;
    if (v3 >= 32 * (v17 - 1))
    {
      *this = bswap32(*(*(this + 2) + 4 * (v17 - 2)));
    }
  }

  v18 = 0;
  *(this + 39) = v4 - 1;
  return v18;
}

uint64_t *TripleSwapFrame(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = *a2;
  *a2 = *result;
  *result = v3;
  return result;
}

uint64_t ReadSomeVideoPackets(uint64_t **a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 80);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  *(v8 + 172) = 0;
  v9 = (v8 + 172);
  v10 = *(v7 + 4);
  *(v8 + 192) = 0xFFFFFFFFLL;
  *(a3 + 536) = 0;
  *(a3 + 544) = 0;
  if (*(v8 + 147))
  {
LABEL_2:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      ReadAVideoPacket(v9, *(v8 + 143), a1, a2, a3);
      if (v12)
      {
        break;
      }

      if (*v9 >= v10 || *(v6 + 156) >= *(v6 + 160))
      {
        goto LABEL_2;
      }

      if (!*(v8 + 142))
      {
        v12 = DecHeaderVideoPacket(v6, v8);
        if (v12)
        {
          break;
        }

        v13 = *(v8 + 172);
        v14 = *(v8 + 192) + 1;
        if (v13 != v14)
        {
          RecoverMissingVideoPackets(a2, a1, v14, v13, a3);
        }
      }
    }

    v11 = v12;
  }

  v15 = *(v8 + 192) + 1;
  if (v15 != v10)
  {
    RecoverMissingVideoPackets(a2, a1, v15, v10, a3);
  }

  *(a3 + 540) = *(a3 + 536) / *(*(a3 + 16) + 4);
  return v11;
}

uint64_t MPEG4DecoPullDecodedFrame(uint64_t result, int *a2, int a3)
{
  v3 = *(result + 72);
  if (v3)
  {
    return Y420ToY422_2vuy(**v3, **(v3 + 8), **(v3 + 16), a2, *(*v3 + 24), *(*v3 + 18), *(*v3 + 16), *(*v3 + 18), a3, *(result + 896), *(result + 904));
  }

  return result;
}

uint64_t MPEG4DMPR_ReadHeaders(uint64_t a1, unsigned int *a2, signed int a3)
{
  v3 = 4294958327;
  if (!a2 || a3 < 1)
  {
    return v3;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 80);
  CBitStreamDeco::SetUp(v6, a3, a2);
  v7 = v6 + 24;
  while (1)
  {
    ByteAlignedPattern = CBitStreamDeco::FindByteAlignedPattern(v6, 1, 0x18u);
    if (ByteAlignedPattern)
    {
      break;
    }

    v9 = *(v6 + 156);
    *(v6 + 156) = v9 + 24;
    v10 = *(v6 + 4);
    if (v10 > 0x17)
    {
      v11 = v10 - 24;
      v15 = v9 + 32;
      *(v6 + 156) = v9 + 32;
      if ((v10 - 24) < 8)
      {
        v16 = v11 | 0x18;
        *(v6 + 4) = v16;
        v17 = (*v6 << -v10) & *(v6 + 56);
        v18 = *(v6 + 160);
        v19 = *(v6 + 8);
        if (v15 > v18 || 32 * v19 > v18)
        {
          *(v6 + 8) = v19 + 1;
          *v6 = 0;
        }

        else
        {
          v20 = bswap32(*(*(v6 + 16) + 4 * v19));
          *v6 = v20;
          *(v6 + 8) = v19 + 1;
          v17 |= *(v7 + 4 * (32 - v10)) & (v20 >> v16);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v11 = v10 + 8;
      *(v6 + 4) = v10 + 8;
      v12 = *(v6 + 160);
      v13 = *(v6 + 8);
      if (v9 + 24 > v12 || 32 * v13 > v12)
      {
        *(v6 + 8) = v13 + 1;
        *v6 = 0;
      }

      else
      {
        *v6 = bswap32(*(*(v6 + 16) + 4 * v13));
        *(v6 + 8) = v13 + 1;
      }

      *(v6 + 156) = v9 + 32;
    }

    *(v6 + 4) = v11 - 8;
    v17 = (*v6 >> (v11 - 8)) & *(v6 + 56);
LABEL_18:
    if (v17 == 181)
    {
      if (DecHeaderVO(v6, v5))
      {
        goto LABEL_44;
      }

      v21 = *(v6 + 156);
      *(v6 + 156) = v21 + 22;
      v22 = *(v6 + 4);
      if (v22 >= 0x16)
      {
        v24 = v22 - 22;
        v25 = (*v6 >> (v22 - 22)) & *(v6 + 112);
      }

      else
      {
        v23 = 22 - v22;
        v24 = v22 + 10;
        *(v6 + 4) = v22 + 10;
        v25 = (*v6 << (22 - v22)) & *(v6 + 112);
        v26 = *(v6 + 160);
        v27 = *(v6 + 8);
        if (v21 + 22 > v26 || 32 * v27 > v26)
        {
          *(v6 + 8) = v27 + 1;
          *v6 = 0;
        }

        else
        {
          v28 = bswap32(*(*(v6 + 16) + 4 * v27));
          *v6 = v28;
          *(v6 + 8) = v27 + 1;
          v25 |= *(v7 + 4 * v23) & (v28 >> v24);
        }
      }

      *(v6 + 4) = v24 + 22;
      if (v24 >= 0xB)
      {
        v29 = v24 - 10;
        v30 = *(v6 + 8);
        *(v6 + 4) = v29;
        *(v6 + 8) = v30 - 1;
        if (*(v6 + 160) >= (32 * (v30 - 1)))
        {
          *v6 = bswap32(*(*(v6 + 16) + 4 * (v30 - 2)));
        }
      }

      *(v6 + 156) = v21;
      if (v25 == 32)
      {
        *(v5 + 21) = 1;
LABEL_44:
        v3 = 4294958327;
        goto LABEL_45;
      }

      *(v5 + 21) = 0;
    }

    else if (v17 == 176)
    {
      if (DecHeaderVOS(v6, a1))
      {
        goto LABEL_44;
      }
    }

    else if (v17 >= 0x20)
    {
      if ((v17 & 0xFFFFFFF0) == 0x20)
      {
        if (DecHeaderVOL(v6, a1))
        {
          v3 = 4294958327;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_45;
      }

      if (v17 == 179 && DecHeaderGOV(v6))
      {
        goto LABEL_44;
      }
    }
  }

  if (ByteAlignedPattern == -1999)
  {
    v3 = 4294958327;
  }

  else
  {
    v3 = 0;
  }

LABEL_45:
  CBitStreamDeco::ReleaseBuffer(v6);
  return v3;
}

void **RecoverMissingVideoPackets(void **result, uint64_t **a2, int a3, int a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = *(v5 + 1);
  if (v6 >= a4 && v6 >= a3)
  {
    v8 = *(a5 + 544);
    if (a3 < a4)
    {
      v9 = *(a5 + 552);
      v10 = *(a5 + 560);
      v11 = *v5;
      v12 = v9 + 2 * *v5;
      v13 = 4 * v11;
      v14 = *(*a2 + 12) >> 2;
      v15 = *(a2[1] + 12) >> 2;
      v16 = a3;
      v17 = a4;
      v18 = *(a5 + 568);
      v19 = v8 + a4;
      v20 = 8 * v14;
      v21 = 4 * v14;
      v22 = 8 * v15;
      v23 = 4 * v15;
      do
      {
        v24 = **(a5 + 16);
        v25 = v16 / v24;
        v26 = v16 % v24;
        v27 = 16 * (v26 + v25 * *(*a2 + 12));
        v28 = (**a2 + v27);
        v29 = (**result + v27);
        v30 = -2;
        do
        {
          *v28 = *v29;
          *(v28 + v21) = *(v29 + v21);
          v30 += 2;
          v29 = (v29 + v20);
          v28 = (v28 + v20);
        }

        while (v30 < 0xE);
        v31 = a2[1];
        v32 = *v31;
        v33 = 8 * (v26 + v25 * *(v31 + 12));
        v34 = (v32 + v33);
        v35 = (*result[1] + v33);
        v36 = -2;
        do
        {
          v37 = *(v35 + v23);
          *v34 = *v35;
          *(v34 + v23) = v37;
          v36 += 2;
          v35 = (v35 + v22);
          v34 = (v34 + v22);
        }

        while (v36 < 6);
        v38 = (*a2[2] + v33);
        v39 = (*result[2] + v33);
        v40 = -2;
        do
        {
          v41 = *(v39 + v23);
          *v38 = *v39;
          *(v38 + v23) = v41;
          v40 += 2;
          v39 = (v39 + v22);
          v38 = (v38 + v22);
        }

        while (v40 < 6);
        v42 = v13 * v25 + 2 * v26;
        *(v9 + v42) = 1;
        *(v9 + 1 + v42) = 1;
        *(v12 + v42) = 1;
        *(v12 + 1 + v42) = 1;
        *(v10 + v16) = 1;
        *(v18 + v16++) = 1;
      }

      while (v16 != v17);
      v8 = v19 - a3;
    }

    *(a5 + 544) = v8;
  }

  return result;
}

void DecodeMBInter(int a1, int a2, int16x4_t *a3, int16x4_t *a4, int a5, uint64_t a6, uint64_t a7)
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = *(a7 + 960);
  v10 = *(*(a7 + 24) + 155);
  v11 = *(a6 + 128);
  v12 = (16 * a1);
  v13 = 16 * a2;
  if (*(a7 + 969))
  {
    v14 = Reconstruct_8x8Vec;
  }

  else
  {
    v14 = Reconstruct_8x8;
  }

  v70 = *(a6 + 64);
  v15 = *(a6 + 216);
  v73 = *(a6 + 88);
  v60 = a6;
  v76 = *(a6 + 246);
  v77 = v13;
  if (a5 == 2 || !*(a6 + 246))
  {
    v59 = *(a6 + 128);
    v56 = a2;
    v75 = a7;
    v64 = *(*(a7 + 24) + 155);
    v72 = 0;
    LODWORD(v32) = 0;
    v62 = v12;
    v63 = v14;
    if (*(a6 + 246))
    {
      v33 = 3;
    }

    else
    {
      v33 = 1;
    }

    v69 = v33;
    v34 = 1;
    if (*(a6 + 246))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    v65 = *(a7 + 960);
    v67 = v35;
LABEL_22:
    v36 = 0;
    v58 = v34;
    v37 = v32;
    v38 = 8 * v32 + 168;
    v39 = 1;
    v32 = v32;
    while (1)
    {
      v40 = a3;
      v41 = a3->i16[v32];
      v42 = a4;
      v43 = a4->i16[v32];
      v44 = v39;
      v79 = v69 & v41;
      v78 = v69 & v43;
      v81 = v41 >> v67;
      v80 = v43 >> v67;
      v45 = v12;
      v46 = v15;
      VerifyMotionVectorBoarder16Pad(v36 | v12, v15, &v81, &v79);
      VerifyMotionVectorBoarder16Pad(v72 | v77, v73, &v80, &v78);
      v47 = DecodeBlockInterTexture_8x8(v60, v75, v37, v11);
      if (v48)
      {
        break;
      }

      v63(*(v60 + v38 - 152), v70, &v62[v81 + *(v60 + v38) + (v77 + v80) * v46], v46, v11, v79, v78, v76, v47, v64, v65);
      v39 = 0;
      ++v32;
      ++v37;
      v38 += 8;
      v36 = 8;
      v12 = v45;
      a4 = v42;
      a3 = v40;
      v15 = v46;
      if ((v44 & 1) == 0)
      {
        v34 = 0;
        v72 = 8;
        if (v58)
        {
          goto LABEL_22;
        }

LABEL_10:
        v23 = v12;
        v24 = *(v60 + 232);
        v25 = *(v60 + 92);
        if (v76)
        {
          for (i = 0; i != 4; ++i)
          {
            a3->i16[i] = (a3->i16[i] + (a3->i16[i] >> 15)) >> 1;
            a4->i16[i] = (a4->i16[i] + (a4->i16[i] >> 15)) >> 1;
          }
        }

        v27 = a4;
        ChromaVector = GetChromaVector(a3);
        v29 = GetChromaVector(v27);
        v30 = v29 + v77;
        if ((ChromaVector + v23) > -17)
        {
          v31 = v59;
          if ((ChromaVector + v23) > 2 * v24 - 32)
          {
            ChromaVector = 2 * v24 - v23 - 32;
          }
        }

        else
        {
          ChromaVector = -16 - v23;
          v31 = v59;
        }

        if (v30 > -17)
        {
          if (v30 > 2 * v25 - 32)
          {
            v29 = 2 * v25 - v77 - 32;
          }
        }

        else
        {
          v29 = -16 - v77;
        }

        v79 = ChromaVector & 1;
        v78 = v29 & 1;
        v81 = ChromaVector >> 1;
        v80 = v29 >> 1;
        v49 = *(v60 + 80);
        v50 = v31;
        v51 = DecodeBlockInterTexture_8x8(v60, v75, 4, v31);
        if (!v52)
        {
          v63(*(v60 + 48), v49, (*(v60 + 200) + (8 * v56 + v80) * v24 + 8 * a1 + v81), v24, v50, v79, v78, 0, v51, v64, v65);
          v53 = DecodeBlockInterTexture_8x8(v60, v75, 5, v50);
          if (!v54)
          {
            v63(*(v60 + 56), v49, (*(v60 + 208) + (8 * v56 + v80) * v24 + 8 * a1 + v81), v24, v50, v79, v78, 0, v53, v64, v65);
          }
        }

        break;
      }
    }
  }

  else
  {
    v16 = 0;
    v71 = a4;
    v74 = a3;
    v17 = a3->i16[0];
    v68 = v17 & 3;
    v79 = v17 & 3;
    v18 = a4->i16[0];
    v19 = a4->i16[0] & 3;
    v78 = a4->i16[0] & 3;
    v17 >>= 2;
    v81 = v17;
    v80 = v18 >> 2;
    v20 = v15;
    v66 = *(a6 + 16);
    v21 = 16 * a1;
    v61 = (*(a6 + 168) + (v13 + (v18 >> 2)) * v15 + v12 + v17);
    while (1)
    {
      DecodeBlockInterTexture_8x8(a6, a7, v16, v11);
      if (v22)
      {
        break;
      }

      Feed8x8To16x16(v11, v16++, v82);
      a6 = v60;
      if (v16 == 4)
      {
        v59 = v11;
        v56 = a2;
        v75 = a7;
        v63 = v14;
        v65 = v9;
        v64 = v10;
        Reconstruct_16x16(v66, v70, v61, v20, v82, v68, v19, v76, v10, v9);
        LODWORD(v12) = v21;
        a4 = v71;
        a3 = v74;
        goto LABEL_10;
      }
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

double DecodeBlockInterTexture_8x8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(*(a1 + 8) + a3))
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 120);
    if (!GrabBlockAndIQuantise(a1, a3, 0, a2))
    {
      ScanConvertZigZag2Raster(v7, v8);
      IDct8x8smart(a4, v7, *(a2 + 969), *(a1 + 106), *(a1 + 104), *(a1 + 105));
    }
  }

  else
  {
    result = 0.0;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void DecodeMBGMC(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 24);
  v8 = *(v7 + 91);
  v46 = *(v7 + 155);
  v50 = *(a4 + 960);
  v9 = *(a3 + 128);
  v10 = *(a4 + 640);
  v38 = *(a3 + 246) != 0;
  v39 = *(a4 + 632);
  memset(v55, 0, sizeof(v55));
  v11 = *(a4 + 128);
  v12 = *(a4 + 152);
  *v40 = *(a4 + 144);
  v37 = *(a4 + 120);
  *v51 = 0;
  v34 = *(a3 + 16);
  v48 = *(a3 + 168);
  v33 = *(a3 + 64);
  v47 = *(a3 + 216);
  v36 = v8;
  v13 = 16 * a2;
  v43 = *(a3 + 88);
  Warp_Y(v8, (16 * a1), 16 * a2, 16, (a4 + 632), v54, v53);
  GetMVGMC((16 * a1), v13, 16, v39, v10, v54, v53, v38, &v51[1], v51);
  v14 = *(*(a4 + 24) + 164) >> v38;
  v15 = ((v14 - 1 - v51[1]) & ((v14 - 1 - v51[1]) >> 31)) + v51[1];
  v16 = v15 - ((v15 + v14) & ((v15 + v14) >> 31));
  v17 = ((v14 - 1 - v51[0]) & ((v14 - 1 - v51[0]) >> 31)) + v51[0];
  v18 = v17 - ((v17 + v14) & ((v17 + v14) >> 31));
  v51[0] = v18;
  v51[1] = v16;
  v19 = (4 * ((2 * a1) >> 1)) | 2;
  *(v11 + v19) = v16;
  v20 = 4 * a1;
  *(v11 + v20) = v16;
  *(v37 + v19) = v16;
  *(v37 + v20) = v16;
  *(v12 + v19) = v18;
  *(v12 + v20) = v18;
  *(*v40 + v19) = v18;
  *(*v40 + v20) = v18;
  InterpolateWarpedPix(v48, v47, v43, 16, v46, v39, v10, v54, v53, v52);
  if (*(*(a4 + 24) + 176))
  {
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v21 = v50;
LABEL_6:
    AddResidueTo_16x16(v55, v52, v34, v33, v21);
    v24 = (8 * a1);
    v25 = *(a3 + 92);
    v44 = *(a3 + 48);
    v26 = *(a3 + 200);
    v41 = *(a3 + 80);
    v27 = *(a3 + 232);
    v49 = v24;
    Warp_C(v36, v24, 8 * a2, 8, (a4 + 632), v54, v53);
    InterpolateWarpedPix(v26, v27, v25, 8, v46, v39, v10, v54, v53, v52);
    if (*(*(a4 + 24) + 176) || (DecodeBlockInterTexture_8x8(a3, a4, 4, v9), !v30))
    {
      AddResidueTo_8x8(v9, v52, v44, v41, v50);
      v45 = *(a3 + 56);
      v28 = *(a3 + 208);
      v42 = *(a3 + 84);
      v29 = *(a3 + 236);
      Warp_C(v36, v49, 8 * a2, 8, (a4 + 632), v54, v53);
      InterpolateWarpedPix(v28, v29, v25, 8, v46, v39, v10, v54, v53, v52);
      if (*(*(a4 + 24) + 176) || (DecodeBlockInterTexture_8x8(a3, a4, 5, v9), !v31))
      {
        AddResidueTo_8x8(v9, v52, v45, v42, v50);
      }
    }
  }

  else
  {
    v22 = 0;
    v21 = v50;
    while (1)
    {
      DecodeBlockInterTexture_8x8(a3, a4, v22, v9);
      if (v23)
      {
        break;
      }

      Feed8x8To16x16(v9, v22++, v55);
      if (v22 == 4)
      {
        goto LABEL_6;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void ReadAVideoPacket(_DWORD *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v522[8] = *MEMORY[0x277D85DE8];
  v5 = *(a5 + 24);
  v6 = *(v5 + 148);
  if (v6 == 2)
  {
    goto LABEL_366;
  }

  v7 = a5;
  v8 = a4;
  v10 = a1;
  if (!a2)
  {
    v64 = *a1;
    v65 = *(a5 + 16);
    v66 = *v65;
    v485 = *(a5 + 104);
    v67 = *(a5 + 80);
    v68 = *(v5 + 158);
    v474 = *(v5 + 160);
    v480 = *(a5 + 584);
    v69 = *(a5 + 536);
    v70 = *(a5 + 544);
    v71 = *(a5 + 552);
    v437 = *(a5 + 560);
    v432 = *(a5 + 568);
    v72 = v65[1];
    v73 = *(*a3 + 24);
    LODWORD(v65) = *(*a4 + 26);
    v74 = *(*(a3 + 8) + 24);
    v75 = *(a4[1] + 26);
    v507 = *(a5 + 624);
    v506 = v507 + 256;
    v508 = v507 + 128;
    v509 = v507 + 384;
    v499 = *(a3 + 120);
    v500 = *(a3 + 136);
    v516 = *(a4 + 15);
    v517 = a4[17];
    v76 = *(v5 + 140) == 1;
    v501 = v65;
    v502 = v75;
    v77 = *(v5 + 148);
    if (v77 == 2)
    {
LABEL_257:
      *v10 = v64;
      goto LABEL_258;
    }

    v462 = v69;
    v140 = v64 / v66;
    *(a5 + 208) = v77;
    v440 = v70;
    if (v64 / v66 >= v72)
    {
      v482 = 0;
LABEL_249:
      *(*(v7 + 24) + 160) = v474;
      *(v7 + 536) = v462;
      *(v7 + 544) = v440;
      *(v5 + 196) += v482;
      v64 = *v10;
LABEL_258:
      v267 = v64 - 1;
      goto LABEL_365;
    }

    v399 = v76;
    v383 = v72;
    v386 = v68;
    v456 = a3;
    v482 = 0;
    v141 = v71 + 4 * v66 * v140;
    v424 = v141 + 1;
    *v422 = v141 + 2 * v66;
    v416 = 2 * v66;
    v426 = v141;
    *v430 = v140;
    v420 = v141 + ((2 * v66) | 1u);
    v142 = v64 % v66;
    v378 = v74;
    v379 = v73;
    v390 = v67 + 24;
    v380 = (4 * v66);
    v414 = 16 * v140;
    v143 = 8 * (v73 >> 2);
    v144 = 4 * (v73 >> 2);
    v418 = 8 * v140;
    v145 = 8 * (v74 >> 2);
    v146 = 4 * (v74 >> 2);
    v444 = 1;
    v376 = v64;
    v470 = v64;
    v460 = v10;
    v408 = v66;
    while (1)
    {
      SwapMVrow((v7 + 128), (v7 + 112));
      SwapMVrow((v7 + 152), (v7 + 136));
      if (v142 < v66)
      {
        break;
      }

      v225 = 1;
      LODWORD(v148) = v408;
LABEL_245:
      if (v225)
      {
        LODWORD(v66) = v148;
        v142 = 0;
        v426 += v380;
        v424 += v380;
        *v422 += v380;
        v420 += v380;
        v414 += 16;
        v418 += 8;
        ++*v430;
        if (*v430 < v383)
        {
          continue;
        }
      }

      goto LABEL_249;
    }

    v411 = v416 * v430[0];
    v405 = 16 * *v430 * v379;
    v147 = v142;
    v452 = 16 * v142;
    v465 = 8 * v142;
    v403 = 8 * *v430 * v378;
    v148 = v408;
    while (1)
    {
      if (!v147 || v444)
      {
        ResetAtBoundaryLeft(v480, v147);
      }

      if (v482 < v148)
      {
        ResetAtBoundaryTop(v480, v147);
      }

      v149 = *(v5 + 148);
      if (v149 == 1)
      {
        break;
      }

      if (v149 == 3)
      {
        v150 = *(v5 + 90);
        if (v150 == 2)
        {
          break;
        }
      }

      else
      {
        if (v149 == 2)
        {
          goto LABEL_256;
        }

        v150 = *(v5 + 90);
      }

      *(v5 + 176) = 0;
      if (DecMcpbcIVop((v485 + 8), &v520, v149, v150, v67))
      {
        goto LABEL_256;
      }

      LOBYTE(v155) = *(v5 + 176);
LABEL_144:
      *(*(a5 + 216) + v470) = v155;
      if (*(v5 + 176))
      {
        *(v426 + 2 * v147) = 1;
        *(v424 + 2 * v147) = 1;
        *(*v422 + 2 * v147) = 1;
        *(v420 + 2 * v147) = 1;
        *(v437 + v470) = 1;
        *(v432 + v470) = 1;
        *(v485 + 8) = 0;
        if (*(v5 + 148) == 3 && *(v5 + 90) == 2)
        {
          v160 = 8 * v147 + v403;
          v518 = v399;
          v161 = *(v456 + 64);
          v162 = *(v456 + 56) + v160;
          v493 = *(v456 + 24) + 16 * v147 + v405;
          v497 = v162;
          v498 = v161 + v160;
          v7 = a5;
          DecodeMBGMC(v147, v430[0], v490, a5);
          v163 = v440;
        }

        else
        {
          v164 = (v452 + v414 * *(*v456 + 24)) & 0xFFFFFFF0;
          v165 = (**a4 + v164);
          v166 = (**v456 + v164);
          v167 = -2;
          do
          {
            *v166 = *v165;
            *(v166 + v144) = *(v165 + v144);
            v167 += 2;
            v165 = (v165 + v143);
            v166 = (v166 + v143);
          }

          while (v167 < 0xE);
          v168 = *(v456 + 8);
          v169 = *(v168 + 12);
          v170 = *v168;
          v171 = (v465 + v418 * v169) & 0xFFFFFFF8;
          v172 = (*a4[1] + v171);
          v173 = (v170 + v171);
          v174 = -2;
          v163 = v440;
          do
          {
            v175 = *(v172 + v146);
            *v173 = *v172;
            *(v173 + v146) = v175;
            v174 += 2;
            v172 = (v172 + v145);
            v173 = (v173 + v145);
          }

          while (v174 < 6);
          v176 = (v465 + v418 * v169) & 0xFFFFFFF8;
          v177 = (*a4[2] + v176);
          v178 = (**(v456 + 16) + v176);
          v179 = -2;
          do
          {
            v180 = *(v177 + v146);
            *v178 = *v177;
            *(v178 + v146) = v180;
            v179 += 2;
            v177 = (v177 + v145);
            v178 = (v178 + v145);
          }

          while (v179 < 6);
          v181 = *(a5 + 128);
          v182 = (4 * v147) | 2;
          *(v181 + v182) = 0;
          *(v181 + 4 * v147) = 0;
          v183 = *(a5 + 120);
          *(v183 + v182) = 0;
          *(v183 + 4 * v147) = 0;
          v184 = *(a5 + 152);
          *(v184 + v182) = 0;
          *(v184 + 4 * v147) = 0;
          v185 = *(a5 + 144);
          *(v185 + v182) = 0;
          *(v185 + 4 * v147) = 0;
          v7 = a5;
        }

        v186 = *(v7 + 224);
        v187 = 2 * (v147 + v411);
        *(v186 + 2 * v187) = 0;
        v188 = *(v7 + 232);
        *(v188 + 2 * v187) = 0;
        v189 = (4 * (v187 >> 1)) | 2;
        *(v186 + v189) = 0;
        *(v188 + v189) = 0;
        v440 = v163 + 1;
        v190 = v187 + v416;
        *(v186 + 2 * v190) = 0;
        *(v188 + 2 * v190) = 0;
        v191 = (2 * v190) | 2;
        *(v186 + v191) = 0;
        *(v188 + v191) = 0;
        ResetAtInterMB(v480, v147);
        goto LABEL_156;
      }

      *(v426 + 2 * v147) = 0;
      *(v424 + 2 * v147) = 0;
      *(*v422 + 2 * v147) = 0;
      *(v420 + 2 * v147) = 0;
      *(v437 + v470) = 0;
      *(v432 + v470) = 0;
      v393 = 8 * v147;
      *v396 = 16 * v147;
      if (*(v5 + 21) || *(v5 + 148) != 3 || *(v5 + 90) != 2 || *(v485 + 8) > 1u)
      {
        v388 = 0;
        goto LABEL_167;
      }

      v197 = *(v67 + 156) + 1;
      *(v67 + 156) = v197;
      v198 = *(v67 + 4);
      if (v198)
      {
        v199 = *v67;
        v200 = v198 - 1;
        *(v67 + 4) = v200;
        v201 = (v199 >> v200) & 1;
LABEL_242:
        v388 = v201;
        goto LABEL_167;
      }

      *(v67 + 4) = 31;
      v264 = *(v67 + 160);
      v265 = *(v67 + 8);
      if (v197 <= v264 && 32 * v265 <= v264)
      {
        v266 = bswap32(*(*(v67 + 16) + 4 * v265));
        *v67 = v266;
        *(v67 + 8) = v265 + 1;
        v201 = v266 >> 31;
        goto LABEL_242;
      }

      v388 = 0;
      *v67 = 0;
      *(v67 + 8) = v265 + 1;
LABEL_167:
      v202 = *(v485 + 8);
      if ((v202 - 3) <= 1u)
      {
        v203 = *(v67 + 156) + 1;
        *(v67 + 156) = v203;
        v204 = *(v67 + 4);
        if (v204)
        {
          v205 = *v67;
          v206 = v204 - 1;
          *(v67 + 4) = v206;
          v207 = (v205 >> v206) & 1;
        }

        else
        {
          *(v67 + 4) = 31;
          v226 = *(v67 + 160);
          v227 = *(v67 + 8);
          if (v203 > v226 || 32 * v227 > v226)
          {
            v207 = 0;
            *v67 = 0;
            *(v67 + 8) = v227 + 1;
          }

          else
          {
            v228 = bswap32(*(*(v67 + 16) + 4 * v227));
            *v67 = v228;
            *(v67 + 8) = v227 + 1;
            v207 = v228 >> 31;
          }
        }

        SetIntraPredACMode(v480, v207);
        v202 = *(v485 + 8);
      }

      if (DecCbpy(&v520, v202, v67))
      {
        goto LABEL_256;
      }

      v505 = gIntraDcVlcThresholdTable[v386] <= v474;
      v229 = *(v485 + 8);
      if (v229 == 4 || v229 == 1)
      {
        v519.i32[0] = 0;
        if (DecDQuant(&v519, v67))
        {
          goto LABEL_256;
        }

        LOBYTE(v229) = *(v485 + 8);
        v474 += v519.i16[0];
        v230 = v474;
        v148 = v408;
      }

      else
      {
        v230 = v474;
      }

      v231 = *(v456 + 24) + *v396 + v405;
      v232 = *(v456 + 48);
      v233 = *(v456 + 40) + *v396 + v405;
      v494 = *(v456 + 32) + *v396 + v405;
      v495 = v233;
      v234 = *(v456 + 64);
      v235 = *(v456 + 56) + v393 + v403;
      v496 = v232 + *v396 + v405;
      v497 = v235;
      v498 = v234 + v393 + v403;
      v503 = v230;
      v493 = v231;
      v492 = &v520;
      *v490 = v147;
      v491 = v430[0];
      v518 = v399;
      if ((v229 - 3) > 1u)
      {
        v504 = 0;
        v250 = *(v5 + 148);
        v10 = v460;
        v7 = a5;
        if (v250 == 1 || !((v250 != 3) | v388 & 1))
        {
          DecMotionVectors(v521, v522, *(a5 + 120), *(a5 + 128), *(a5 + 112), *(a5 + 144), *(a5 + 152), *(a5 + 136), v147, v430[0], v148, v229, v444, v482 < v148, v5, v67, v482);
          if (v251)
          {
            goto LABEL_256;
          }
        }

        v252 = *(a5 + 224);
        v253 = 2 * (v411 + v147);
        *(v252 + 2 * v253) = v521[0].i16[0];
        v254 = *(a5 + 232);
        *(v254 + 2 * v253) = v522[0].i16[0];
        v255 = (4 * (v253 >> 1)) | 2;
        *(v252 + v255) = v521[0].i16[1];
        *(v254 + v255) = v522[0].i16[1];
        v256 = 2 * (v253 + v416);
        *(v252 + v256) = v521[0].i16[2];
        *(v254 + v256) = v522[0].i16[2];
        v257 = v256 | 2;
        *(v252 + v257) = v521[0].i16[3];
        *(v254 + v257) = v522[0].i16[3];
        ResetAtInterMB(v480, v147);
        v513 = *(a4 + 3);
        v514 = *(a4 + 5);
        v515 = *(a4 + 7);
        v518 = *(*(a5 + 24) + 140) == 1;
        if (((*(v5 + 148) != 0) & v388) != 0)
        {
          DecodeMBGMC(v147, v430[0], v490, a5);
        }

        else
        {
          DecodeMBInter(v147, v430[0], v521, v522, *(v485 + 8), v490, a5);
        }
      }

      else
      {
        v236 = *(a5 + 128);
        v237 = (4 * v147) | 2;
        *(v236 + v237) = 0;
        *(v236 + 4 * v147) = 0;
        v238 = *(a5 + 120);
        *(v238 + v237) = 0;
        *(v238 + 4 * v147) = 0;
        v239 = *(a5 + 152);
        *(v239 + v237) = 0;
        *(v239 + 4 * v147) = 0;
        v240 = *(a5 + 144);
        *(v240 + v237) = 0;
        *(v240 + 4 * v147) = 0;
        v241 = 2 * (v411 + v147);
        v242 = *(a5 + 224);
        *(v242 + 2 * v241) = 0;
        v243 = *(a5 + 232);
        *(v243 + 2 * v241) = 0;
        v244 = (4 * (v241 >> 1)) | 2;
        *(v242 + v244) = 0;
        *(v243 + v244) = 0;
        v245 = v241 + v416;
        *(v242 + 2 * v245) = 0;
        *(v243 + 2 * v245) = 0;
        v246 = (2 * v245) | 2;
        *(v242 + v246) = 0;
        *(v243 + v246) = 0;
        dc_scaler = Get_dc_scaler(v230, 0);
        v248 = Get_dc_scaler(v230, 4);
        v249 = vdupq_n_s32(dc_scaler);
        v7 = a5;
        v510 = v249;
        v511 = v248;
        v512 = v248;
        if (DecodeBlockIntra(0, v490, a5))
        {
          v10 = v460;
LABEL_256:
          v64 = v376;
          goto LABEL_257;
        }

        v10 = v460;
        if (DecodeBlockIntra(1u, v490, a5))
        {
          goto LABEL_256;
        }

        if (DecodeBlockIntra(2u, v490, a5))
        {
          goto LABEL_256;
        }

        if (DecodeBlockIntra(3u, v490, a5))
        {
          goto LABEL_256;
        }

        if (DecodeBlockIntra(4u, v490, a5))
        {
          goto LABEL_256;
        }

        v148 = v408;
        if (DecodeBlockIntra(5u, v490, a5))
        {
          goto LABEL_256;
        }
      }

LABEL_156:
      v192 = *(v67 + 156);
      *(v67 + 156) = v192 + 1;
      v193 = *(v67 + 4);
      if (v193)
      {
        v194 = *v67;
        v195 = (*v67 >> (v193 - 1)) & *(v67 + 28);
        if (v193 >= 0x21)
        {
          v193 -= 32;
          v196 = *(v67 + 8);
          *(v67 + 4) = v193;
          *(v67 + 8) = v196 - 1;
          if (*(v67 + 160) >= (32 * (v196 - 1)))
          {
            v194 = bswap32(*(*(v67 + 16) + 4 * (v196 - 2)));
            *v67 = v194;
          }
        }
      }

      else
      {
        *(v67 + 4) = 31;
        v208 = 2 * *v67;
        v209 = *(v67 + 160);
        v210 = *(v67 + 8);
        if (v192 + 1 > v209 || 32 * v210 > v209)
        {
          v194 = 0;
          *(v67 + 8) = v210 + 1;
          *v67 = 0;
        }

        else
        {
          v194 = bswap32(*(*(v67 + 16) + 4 * v210));
          *v67 = v194;
          *(v67 + 8) = v210 + 1;
          v208 |= v194 >> 31;
        }

        v195 = v208 & *(v67 + 28);
        v193 = 32;
        *(v67 + 4) = 32;
      }

      *(v67 + 156) = v192;
      if (v195)
      {
        goto LABEL_196;
      }

      if ((v193 & 7) != 0)
      {
        v211 = v193 & 7;
      }

      else
      {
        v211 = 8;
      }

      v212 = kStuffedBits[v211];
      *(v67 + 156) = v211 + v192;
      if (v193 >= v211)
      {
        v214 = v193 - v211;
        v215 = *(v390 + 4 * v211) & (v194 >> (v193 - v211));
      }

      else
      {
        v213 = v211 - v193;
        v214 = 32 - (v211 - v193);
        *(v67 + 4) = v214;
        if (v211 - v193 <= 0x1F)
        {
          v215 = *(v390 + 4 * v211) & (v194 << v213);
        }

        else
        {
          v215 = 0;
        }

        v216 = *(v67 + 160);
        v217 = *(v67 + 8);
        if (v211 + v192 > v216 || 32 * v217 > v216)
        {
          v194 = 0;
          *(v67 + 8) = v217 + 1;
          *v67 = 0;
        }

        else
        {
          v194 = bswap32(*(*(v67 + 16) + 4 * v217));
          *v67 = v194;
          *(v67 + 8) = v217 + 1;
          v215 |= *(v390 + 4 * v213) & (v194 >> v214);
        }
      }

      v218 = v214 + v211;
      *(v67 + 4) = v218;
      if (v218 >= 0x21)
      {
        v218 -= 32;
        v219 = *(v67 + 8);
        *(v67 + 4) = v218;
        *(v67 + 8) = v219 - 1;
        if (*(v67 + 160) >= (32 * (v219 - 1)))
        {
          v194 = bswap32(*(*(v67 + 16) + 4 * (v219 - 2)));
          *v67 = v194;
        }
      }

      *(v67 + 156) = v192;
      if (v215 != v212 || (v220 = v211 + 23, v221 = *(v67 + 160), v221 - v192 <= v220))
      {
LABEL_196:
        v225 = 1;
      }

      else
      {
        *(v67 + 156) = v220 + v192;
        v222 = v218 - v220;
        if (v218 >= v220)
        {
          v224 = *(v390 + 4 * v220) & (v194 >> v222);
        }

        else
        {
          v223 = v220 - v218;
          v222 = 32 - v223;
          *(v67 + 4) = 32 - v223;
          if (v223 <= 0x1F)
          {
            v224 = *(v390 + 4 * v220) & (v194 << v223);
          }

          else
          {
            v224 = 0;
          }

          v258 = *(v67 + 8);
          if (v220 + v192 > v221 || 32 * v258 > v221)
          {
            *(v67 + 8) = v258 + 1;
            *v67 = 0;
          }

          else
          {
            v259 = bswap32(*(*(v67 + 16) + 4 * v258));
            *v67 = v259;
            *(v67 + 8) = v258 + 1;
            v224 |= *(v390 + 4 * v223) & (v259 >> v222);
          }
        }

        v260 = v222 + v220;
        *(v67 + 4) = v260;
        if (v260 >= 0x21)
        {
          v261 = v260 - 32;
          v262 = *(v67 + 8);
          *(v67 + 4) = v261;
          *(v67 + 8) = v262 - 1;
          if (v221 >= 32 * (v262 - 1))
          {
            *v67 = bswap32(*(*(v67 + 16) + 4 * (v262 - 2)));
          }
        }

        *(v67 + 156) = v192;
        v225 = v224 & 0x7FFFFF;
        if ((v224 & 0x7FFFFF) != 0)
        {
          if (*(v5 + 148))
          {
            v263 = 7 - *(v5 + 162);
          }

          else
          {
            v263 = 6;
          }

          v225 = v225 >> v263 != 1;
        }
      }

      v444 = 0;
      v462 += v474;
      ++v470;
      ++*v10;
      ++v482;
      if (v225)
      {
        ++v147;
        v452 += 16;
        v465 += 8;
        if (v147 < v148)
        {
          continue;
        }
      }

      goto LABEL_245;
    }

    while (1)
    {
      v151 = *(v67 + 156) + 1;
      *(v67 + 156) = v151;
      v152 = *(v67 + 4);
      if (v152)
      {
        break;
      }

      *(v67 + 4) = 31;
      v156 = *(v67 + 160);
      v157 = *(v67 + 8);
      if (v151 <= v156 && 32 * v157 <= v156)
      {
        v159 = bswap32(*(*(v67 + 16) + 4 * v157));
        *v67 = v159;
        *(v67 + 8) = v157 + 1;
        v155 = v159 >> 31;
LABEL_137:
        *(v5 + 176) = v155;
        if (v155)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      *v67 = 0;
      *(v67 + 8) = v157 + 1;
      *(v5 + 176) = 0;
LABEL_138:
      if (DecMcpbcPVop((v485 + 8), &v520, *(v5 + 148), *(v5 + 90), v67))
      {
        goto LABEL_256;
      }

      LOBYTE(v155) = *(v5 + 176);
      if (v155)
      {
        goto LABEL_144;
      }

      if (*(v485 + 8) != 5)
      {
        LOBYTE(v155) = 0;
        goto LABEL_144;
      }
    }

    v153 = *v67;
    v154 = v152 - 1;
    *(v67 + 4) = v154;
    v155 = (v153 >> v154) & 1;
    goto LABEL_137;
  }

  v11 = *(a5 + 576);
  v12 = *(a5 + 80);
  v481 = *(a5 + 88);
  v461 = *(v5 + 158);
  v13 = *a1;
  v14 = *(a5 + 16);
  v15 = *v14;
  v464 = *(v14 + 1);
  v468 = *(v5 + 160);
  v16 = v14[1];
  *v479 = *(*a3 + 24);
  v484 = *(a5 + 24);
  if (v6 != 1)
  {
    if (*(v5 + 148))
    {
      goto LABEL_363;
    }

    v407 = *a1 / v15;
    v410 = *(a5 + 552);
    v413 = *(a5 + 568);
    *v421 = *(*(a3 + 8) + 24);
    v423 = v14[1];
    v415 = *(a5 + 560);
    v419 = *(a5 + 584);
    v451 = *v14;
    v454 = a3;
    v417 = *(a5 + 544);
    v425 = *(a5 + 536);
    v436 = *a1;
    v447 = a4;
    v458 = a1;
    v17 = 0;
    v18 = (v11 + 4);
    v19 = 1;
    *v428 = *(a5 + 576);
    do
    {
      v20 = v17;
      v21 = v19;
      v22 = v11 + 20 * v17;
      *(v22 + 3) &= ~0x80u;
      if (DecMcpbcIVop((v22 + 2), &v486, v484[148], v484[90], v12))
      {
        goto LABEL_360;
      }

      v23 = 0;
      v24 = *(v22 + 3);
      v25 = 5;
      do
      {
        v26 = v24 & (-33 >> v25);
        v24 |= 1 << v23;
        if (!v487[v23 - 1])
        {
          v24 = v26;
        }

        *(v22 + 3) = v24;
        ++v23;
        --v25;
      }

      while (v23 != 6);
      v27 = v468;
      *v22 = v468;
      v28 = *(v22 + 2);
      if (v28 == 4 || v28 == 1)
      {
        *v490 = 0;
        if (DecDQuant(v490, v12))
        {
          goto LABEL_360;
        }

        LOWORD(v30) = *v22 + *v490;
        *v22 = v30;
        v27 = v468;
      }

      else
      {
        LOWORD(v30) = v468;
      }

      if (v27 >= gIntraDcVlcThresholdTable[v461])
      {
        *(v22 + 16) = 1;
      }

      else
      {
        v31 = 0;
        *(v22 + 16) = 0;
        v32 = v18;
        do
        {
          if (GrabDcFromBitStream(v32, v31, v481, v12))
          {
            goto LABEL_360;
          }

          ++v31;
          ++v32;
        }

        while (v31 != 6);
        LOWORD(v30) = *v22;
        v11 = *v428;
      }

      v33 = *(v12 + 156);
      *(v12 + 156) = v33 + 19;
      v34 = *(v12 + 4);
      if (v34 >= 0x13)
      {
        v36 = v34 - 19;
        v37 = (*v12 >> (v34 - 19)) & *(v12 + 100);
      }

      else
      {
        v35 = 19 - v34;
        v36 = v34 + 13;
        *(v12 + 4) = v34 + 13;
        v37 = (*v12 << (19 - v34)) & *(v12 + 100);
        v38 = *(v12 + 160);
        v39 = *(v12 + 8);
        if (v33 + 19 > v38 || 32 * v39 > v38)
        {
          *(v12 + 8) = v39 + 1;
          *v12 = 0;
        }

        else
        {
          v40 = bswap32(*(*(v12 + 16) + 4 * v39));
          *v12 = v40;
          *(v12 + 8) = v39 + 1;
          v37 |= *(v12 + 24 + 4 * v35) & (v40 >> v36);
        }
      }

      *(v12 + 4) = v36 + 19;
      if (v36 >= 0xE)
      {
        v41 = v36 - 13;
        v42 = *(v12 + 8);
        *(v12 + 4) = v41;
        *(v12 + 8) = v42 - 1;
        if (*(v12 + 160) >= (32 * (v42 - 1)))
        {
          *v12 = bswap32(*(*(v12 + 16) + 4 * (v42 - 2)));
        }
      }

      v468 = v30;
      v17 = v20 + 1;
      *(v12 + 156) = v33;
      v19 = v21 + 1;
      v18 += 10;
    }

    while (v37 != 438273 && v17 < v464);
    if (v464 > v20)
    {
      v401 = v20 + 1;
      v5 = v484;
      if (CBitStreamDeco::GrabBits(v12, 0x13u) != 438273)
      {
        goto LABEL_363;
      }

      v44 = 0;
      v45 = vdupq_n_s64(6uLL);
      v46 = vdupq_n_s64(2uLL);
      v469 = v46;
      *v473 = v45;
      while (1)
      {
        v47 = *v428 + 20 * v44;
        v48 = *(v12 + 156) + 1;
        *(v12 + 156) = v48;
        v49 = *(v12 + 4);
        if (v49)
        {
          v50 = *v12;
          v51 = v49 - 1;
          *(v12 + 4) = v51;
          v52 = (v50 >> v51) & 1;
        }

        else
        {
          *(v12 + 4) = 31;
          v53 = *(v12 + 160);
          v54 = *(v12 + 8);
          if (v48 > v53 || 32 * v54 > v53)
          {
            *v12 = 0;
            *(v12 + 8) = v54 + 1;
            goto LABEL_50;
          }

          v56 = bswap32(*(*(v12 + 16) + 4 * v54));
          *v12 = v56;
          *(v12 + 8) = v54 + 1;
          v52 = v56 >> 31;
        }

        if (v52)
        {
          v57 = *(v47 + 3) | 0x40;
          goto LABEL_51;
        }

LABEL_50:
        v57 = *(v47 + 3) & 0xBF;
LABEL_51:
        *(v47 + 3) = v57;
        v58 = 0;
        v59 = xmmword_27792F770;
        do
        {
          if (vmovn_s64(vcgtq_u64(v45, v59)).u8[0])
          {
            v487[v58 - 1] = (v57 >> v58) & 1;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v59)).i32[1])
          {
            v487[v58] = ((v57 >> v58) & 2) != 0;
          }

          v58 += 2;
          v59 = vaddq_s64(v59, v46);
        }

        while (v58 != 6);
        if (DecCbpy(&v486, *(v47 + 2), v12))
        {
          goto LABEL_361;
        }

        v60 = 0;
        v61 = *(v47 + 3);
        v62 = 5;
        do
        {
          v63 = v61 & (-33 >> v62);
          v61 |= 1 << v60;
          if (!v487[v60 - 1])
          {
            v61 = v63;
          }

          *(v47 + 3) = v61;
          ++v60;
          --v62;
        }

        while (v60 != 6);
        ++v44;
        v46 = v469;
        v45 = *v473;
        if (v44 == v21)
        {
          v11 = *v428;
          goto LABEL_302;
        }
      }
    }

LABEL_252:
    v5 = v484;
    goto LABEL_363;
  }

  v410 = *(a5 + 552);
  v413 = *(a5 + 568);
  *v421 = *(*(a3 + 8) + 24);
  v423 = v14[1];
  v415 = *(a5 + 560);
  v419 = *(a5 + 584);
  v417 = *(a5 + 544);
  v425 = *(a5 + 536);
  v78 = 0;
  v79 = a4[1];
  v80 = *(*a4 + 24);
  v451 = *v14;
  v81 = v13 % v15;
  v82 = *(*a4 + 8);
  v83 = a4[2];
  v475 = &v82[*(*a4 + 28)];
  v398 = (*(v79 + 8) + *(v79 + 28));
  v402 = *(v79 + 8);
  v389 = (*(v83 + 8) + *(v83 + 28));
  v392 = *(v83 + 8);
  v404 = v12 + 24;
  v395 = *(v79 + 24);
  v84 = 1;
  v85 = 1;
  v407 = *a1 / v15;
  v86 = v407;
  do
  {
    v443 = v86;
    v448 = v78;
    v433 = v84;
    v490[0] = 0;
    v439 = v81;
    v87 = 2 * v81;
    v88 = v11 + 20 * v78;
    do
    {
      v89 = *(v12 + 156) + 1;
      *(v12 + 156) = v89;
      v90 = *(v12 + 4);
      if (v90)
      {
        v91 = *v12;
        v92 = v90 - 1;
        *(v12 + 4) = v92;
        if ((v91 >> v92))
        {
          goto LABEL_94;
        }
      }

      else
      {
        *(v12 + 4) = 31;
        v93 = *(v12 + 160);
        v94 = *(v12 + 8);
        if (v89 > v93 || 32 * v94 > v93)
        {
          *v12 = 0;
          *(v12 + 8) = v94 + 1;
        }

        else
        {
          v96 = bswap32(*(*(v12 + 16) + 4 * v94));
          *v12 = v96;
          *(v12 + 8) = v94 + 1;
          if (v96 < 0)
          {
LABEL_94:
            *(v88 + 3) |= 0x80u;
            *(v88 + 2) = 0;
            v102 = *(a5 + 120);
            v103 = *(a5 + 128);
            v104 = *(a5 + 144);
            v105 = *(a5 + 152);
LABEL_95:
            v86 = v443;
            v122 = (2 * v87) | 2;
            *(v103 + v122) = 0;
            *(v103 + 2 * v87) = 0;
            *(v102 + v122) = 0;
            *(v102 + 2 * v87) = 0;
            *(v105 + v122) = 0;
            *(v105 + 2 * v87) = 0;
            *(v104 + v122) = 0;
            *(v104 + 2 * v87) = 0;
            v10 = a1;
            v121 = v439;
            goto LABEL_96;
          }
        }
      }

      if (DecMcpbcPVop(v490, &v486, v484[148], v484[90], v12))
      {
        goto LABEL_251;
      }

      v97 = v490[0];
    }

    while (v490[0] == 5);
    v98 = 0;
    v99 = *(v88 + 3) & 0x7F;
    *(v88 + 3) = v99;
    *(v88 + 2) = v97;
    v100 = 5;
    do
    {
      v101 = v99 & (-33 >> v100);
      v99 |= 1 << v98;
      if (!v487[v98 - 1])
      {
        v99 = v101;
      }

      *(v88 + 3) = v99;
      ++v98;
      --v100;
    }

    while (v98 != 6);
    v102 = *(a5 + 120);
    v103 = *(a5 + 128);
    v104 = *(a5 + 144);
    v105 = *(a5 + 152);
    if ((v97 - 3) < 2u)
    {
      goto LABEL_95;
    }

    DecMotionVectors(&v520, &v519, v102, v103, *(a5 + 112), v104, v105, *(a5 + 136), v439, v443, v451, v97, v85, v448 < v451, *(a5 + 24), v12, v448);
    if (v106)
    {
      goto LABEL_251;
    }

    *v429 = v11;
    v438 = v13;
    v107 = v8;
    v108 = 0;
    LODWORD(v109) = 0;
    v381 = 8 * v443;
    v385 = 8 * v439;
    v110 = 16 * v439;
    v111 = 1;
    v112 = 16 * v443;
    do
    {
      v113 = 0;
      v455 = v111;
      v114 = v108 | v112;
      v109 = v109;
      v115 = 2;
      v116 = (v108 | v112) * *v479 + v110;
      do
      {
        if (MC_8x8((**a3 + v116 + v113), v479[0], (**v107 + v80 * (v114 + (v519.i16[v109] >> 1)) + v110 + (v520.i16[v109] >> 1) + v113), v80, v520.i16[v109] & 1, v519.i16[v109] & 1, v484[155], v82, v475))
        {
          goto LABEL_250;
        }

        ++v109;
        v113 = 8;
        --v115;
      }

      while (v115);
      v111 = 0;
      v108 = 8;
      v112 = 16 * v443;
    }

    while ((v455 & 1) != 0);
    ChromaVector = GetChromaVector(&v520);
    v118 = GetChromaVector(&v519);
    v119 = v381 + (v118 >> 1);
    v382 = v381 * *v421 + v385;
    v387 = v118;
    if (MC_8x8((**(a3 + 8) + v382), v421[0], (*v107[1] + v395 * v119 + v385 + (ChromaVector >> 1)), v395, ChromaVector & 1, v118 & 1, v484[155], v402, v398))
    {
LABEL_250:
      v13 = v438;
      goto LABEL_251;
    }

    v120 = MC_8x8((**(a3 + 16) + v382), v421[0], (*v107[2] + v395 * v119 + v385 + (ChromaVector >> 1)), v395, ChromaVector & 1, v387 & 1, v484[155], v392, v389);
    v10 = a1;
    v8 = v107;
    v13 = v438;
    v11 = *v429;
    v86 = v443;
    v121 = v439;
    if (v120)
    {
LABEL_251:
      v5 = v484;
      v10 = a1;
LABEL_363:
      *v10 = v13;
      goto LABEL_364;
    }

LABEL_96:
    v81 = v121 + 1;
    if (v81 >= v451)
    {
      SwapMVrow((a5 + 128), (a5 + 112));
      v86 = (v86 + 1);
      SwapMVrow((a5 + 152), (a5 + 136));
      v81 = 0;
    }

    v123 = *(v12 + 156);
    v124 = v123 + 17;
    *(v12 + 156) = v123 + 17;
    v125 = *(v12 + 4);
    if (v125 >= 0x11)
    {
      v127 = v125 - 17;
      v128 = *(v12 + 92);
      v132 = *v12;
      v129 = (*v12 >> v127) & v128;
    }

    else
    {
      v126 = 17 - v125;
      v127 = v125 + 15;
      *(v12 + 4) = v125 + 15;
      v128 = *(v12 + 92);
      v129 = (*v12 << v126) & v128;
      v130 = *(v12 + 160);
      v131 = *(v12 + 8);
      if (v124 > v130 || 32 * v131 > v130)
      {
        v132 = 0;
        *(v12 + 8) = v131 + 1;
        *v12 = 0;
      }

      else
      {
        v132 = bswap32(*(*(v12 + 16) + 4 * v131));
        *v12 = v132;
        *(v12 + 8) = v131 + 1;
        v129 |= *(v404 + 4 * v126) & (v132 >> v127);
      }
    }

    v133 = v127 + 17;
    *(v12 + 4) = v127 + 17;
    if (v127 >= 0x10)
    {
      v133 = v127 - 15;
      v134 = *(v12 + 8);
      *(v12 + 4) = v133;
      *(v12 + 8) = v134 - 1;
      if (*(v12 + 160) >= (32 * (v134 - 1)))
      {
        v132 = bswap32(*(*(v12 + 16) + 4 * (v134 - 2)));
        *v12 = v132;
      }
    }

    v78 = v448 + 1;
    *(v12 + 156) = v123;
    if (v129 == 126977)
    {
      break;
    }

    if (v78 >= v464)
    {
      break;
    }

    v85 = 0;
    v84 = v433 + 1;
  }

  while (v86 < *(*(a5 + 16) + 2));
  if (v464 <= v448)
  {
    goto LABEL_252;
  }

  v401 = v448 + 1;
  *(v12 + 156) = v124;
  v135 = v133 - 17;
  v5 = v484;
  if (v133 >= 0x11)
  {
    *(v12 + 4) = v135;
    v136 = (v132 >> v135) & v128;
  }

  else
  {
    *(v12 + 4) = v133 + 15;
    v136 = (v132 << (17 - v133)) & v128;
    v137 = *(v12 + 160);
    v138 = *(v12 + 8);
    if (v124 > v137 || 32 * v138 > v137)
    {
      *(v12 + 8) = v138 + 1;
      *v12 = 0;
    }

    else
    {
      v139 = bswap32(*(*(v12 + 16) + 4 * v138));
      *v12 = v139;
      *(v12 + 8) = v138 + 1;
      v136 |= *(v404 + 4 * (17 - v133)) & (v139 >> (v133 + 15));
    }
  }

  v30 = v468;
  if (v136 != 126977)
  {
    goto LABEL_363;
  }

  v436 = v13;
  v454 = a3;
  v268 = 0;
  v445 = v433;
  v447 = v8;
  v269 = (v11 + 4);
  v270 = vdupq_n_s64(6uLL);
  v271 = vdupq_n_s64(2uLL);
  v441 = v270;
  v434 = v271;
  while (2)
  {
    v272 = (v11 + 20 * v268);
    v273 = *(v272 + 3);
    *v272 = v30;
    if ((v273 & 0x80000000) == 0)
    {
      v466 = v268;
      v273 = v273;
      v274 = *(v272 + 2);
      if ((v274 - 3) <= 1u)
      {
        v275 = *(v12 + 156) + 1;
        *(v12 + 156) = v275;
        v276 = *(v12 + 4);
        if (v276)
        {
          v277 = *v12;
          v278 = v276 - 1;
          *(v12 + 4) = v278;
          v279 = (v277 >> v278) & 1;
          goto LABEL_272;
        }

        *(v12 + 4) = 31;
        v280 = *(v12 + 160);
        v281 = *(v12 + 8);
        if (v275 > v280 || 32 * v281 > v280)
        {
          *v12 = 0;
          *(v12 + 8) = v281 + 1;
        }

        else
        {
          v283 = bswap32(*(*(v12 + 16) + 4 * v281));
          *v12 = v283;
          *(v12 + 8) = v281 + 1;
          v279 = v283 >> 31;
LABEL_272:
          if (v279)
          {
            v273 = v273 | 0x40;
            goto LABEL_275;
          }
        }

        v273 &= 0x3Fu;
LABEL_275:
        *(v272 + 3) = v273;
      }

      v284 = 0;
      v285 = xmmword_27792F770;
      do
      {
        if (vmovn_s64(vcgtq_u64(v270, v285)).u8[0])
        {
          v487[v284 - 1] = (v273 >> v284) & 1;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v285)).i32[1])
        {
          v487[v284] = ((v273 >> v284) & 2) != 0;
        }

        v284 += 2;
        v285 = vaddq_s64(v285, v271);
      }

      while (v284 != 6);
      v476 = v269;
      if (DecCbpy(&v486, v274, v12))
      {
        goto LABEL_362;
      }

      v286 = 0;
      v287 = *(v272 + 3);
      v288 = 5;
      do
      {
        v289 = v287 & (-33 >> v288);
        v287 |= 1 << v286;
        if (!v487[v286 - 1])
        {
          v287 = v289;
        }

        *(v272 + 3) = v287;
        ++v286;
        --v288;
      }

      while (v286 != 6);
      v290 = *(v272 + 2);
      if (v290 == 4 || v290 == 1)
      {
        *v490 = 0;
        if (DecDQuant(v490, v12))
        {
          goto LABEL_362;
        }

        v292 = *v272 + *v490;
        *v272 = v292;
        v30 = v292;
        v290 = *(v272 + 2);
      }

      v269 = v476;
      v270 = v441;
      v271 = v434;
      if ((v290 - 3) <= 1 && gIntraDcVlcThresholdTable[v461] > *v272)
      {
        v471 = v30;
        v293 = v11;
        v294 = 0;
        v295 = v476;
        while (!GrabDcFromBitStream(v295, v294, v481, v12))
        {
          ++v294;
          ++v295;
          if (v294 == 6)
          {
            v11 = v293;
            v30 = v471;
            v268 = v466;
            v269 = v476;
            v270 = v441;
            v271 = v434;
            goto LABEL_301;
          }
        }

        goto LABEL_362;
      }

      v268 = v466;
    }

LABEL_301:
    ++v268;
    v269 += 10;
    if (v268 != v445)
    {
      continue;
    }

    break;
  }

LABEL_302:
  *(*(a5 + 24) + 160) = v30;
  v296 = **(a5 + 16);
  v297 = *v10 / v296;
  v298 = v447;
  v299 = v454;
  if (v297 < v423)
  {
    LODWORD(v300) = 0;
    v301 = v451;
    v302 = v410 + 4 * v451 * v407;
    v463 = v302 + ((2 * v451) | 1u);
    v467 = v302 + 1;
    v303 = *v10 % v296;
    v435 = 16 * v297;
    v304 = 8 * (*v479 >> 2);
    v305 = v297;
    v412 = 8 * v297;
    v306 = 8 * (*v421 >> 2);
    v307 = v11 + 4;
    v375 = vdupq_n_s64(2uLL);
    v377 = vdupq_n_s64(6uLL);
    v442 = v436;
    v308 = 1;
    v472 = v302;
    v446 = v302 + 2 * v451;
    v384 = (4 * v451);
    v309 = v425;
    while (v303 >= v301)
    {
LABEL_356:
      if (v300 < v401)
      {
        v303 = 0;
        v472 += v384;
        v467 += v384;
        v446 += v384;
        v463 += v384;
        ++v305;
        v435 += 16;
        v412 += 8;
        if (v305 < v423)
        {
          continue;
        }
      }

      goto LABEL_368;
    }

    v458 = v10;
    v370 = v307;
    v371 = v305;
    *v397 = 16 * v305;
    v310 = v303;
    v477 = v307 + 20 * v300;
    v300 = v300;
    v372 = 8 * v305 * *v421;
    v311 = v308 != 0;
    v391 = 4 * (*v479 >> 2) + 16 * v303;
    v394 = 16 * v303;
    v409 = 8 * v303;
    v406 = 4 * (*v421 >> 2) + v409;
    *v431 = v11;
    v453 = v301;
    while (1)
    {
      v457 = v300;
      v483 = v310;
      if (!v310 || v311)
      {
        ResetAtBoundaryLeft(v419, v310);
        v310 = v483;
        v300 = v457;
      }

      v427 = v309;
      if (v300 < v301)
      {
        ResetAtBoundaryTop(v419, v483);
        v310 = v483;
        v300 = v457;
      }

      v312 = (v11 + 20 * v300);
      v313 = *v312;
      if ((*(v312 + 3) & 0x80000000) == 0)
      {
        break;
      }

      *(v472 + 2 * v310) = 1;
      *(v467 + 2 * v310) = 1;
      *(v446 + 2 * v310) = 1;
      *(v463 + 2 * v310) = 1;
      *(v415 + v442) = 1;
      *(v413 + v442) = 1;
      v330 = **v298;
      v331 = v435 * *(*v299 + 12);
      v332 = v330 + v394;
      v333 = **v299;
      v334 = v330 + v391;
      v335 = v333 + v394;
      v336 = v333 + v391;
      v337 = -2;
      do
      {
        *(v335 + v331) = *(v332 + v331);
        *(v336 + v331) = *(v334 + v331);
        v337 += 2;
        v332 += v304;
        v334 += v304;
        v335 += v304;
        v336 += v304;
      }

      while (v337 < 0xE);
      v338 = v299[1];
      v339 = *v298[1];
      v340 = v412 * *(v338 + 12);
      v341 = v339 + v409;
      v342 = *v338;
      v343 = v339 + v406;
      v344 = v342 + v409;
      v345 = v342 + v406;
      v346 = -2;
      do
      {
        v347 = *(v343 + v340);
        *(v344 + v340) = *(v341 + v340);
        *(v345 + v340) = v347;
        v346 += 2;
        v341 += v306;
        v343 += v306;
        v344 += v306;
        v345 += v306;
      }

      while (v346 < 6);
      v348 = *v298[2];
      v349 = v348 + v409;
      v350 = *v299[2];
      v351 = v348 + v406;
      v352 = v350 + v409;
      v353 = v350 + v406;
      v354 = -2;
      do
      {
        v355 = *(v351 + v340);
        *(v352 + v340) = *(v349 + v340);
        *(v353 + v340) = v355;
        v354 += 2;
        v349 += v306;
        v351 += v306;
        v352 += v306;
        v353 += v306;
      }

      while (v354 < 6);
      ++v417;
      ResetAtInterMB(v419, v310);
LABEL_333:
      v309 = v427 + v313;
      ++v442;
      ++*v458;
      v300 = v457 + 1;
      v301 = v453;
      if (v457 + 1 < v401)
      {
        v311 = 0;
        v310 = v483 + 1;
        v391 += 16;
        v394 += 16;
        v409 += 8;
        v406 += 8;
        v477 += 20;
        if (v483 + 1 < v453)
        {
          continue;
        }
      }

      v308 = 0;
      v10 = v458;
      v307 = v370;
      v305 = v371;
      goto LABEL_356;
    }

    v373 = 8 * v310;
    *(v472 + 2 * v310) = 0;
    *(v467 + 2 * v310) = 0;
    *(v446 + 2 * v310) = 0;
    *(v463 + 2 * v310) = 0;
    *(v415 + v442) = 0;
    v400 = 16 * v310;
    *(v413 + v442) = 0;
    if (*(v312 + 2) - 3 > 1)
    {
      ResetAtInterMB(v419, v310);
      v356 = 0;
      v357 = *(v312 + 3);
      v358 = v487;
      v359 = xmmword_27792F770;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v359)).u8[0])
        {
          *(v358 - 1) = (v357 >> v356) & 1;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v359)).i32[1])
        {
          *v358 = ((v357 >> v356) & 2) != 0;
        }

        v356 += 2;
        v359 = vaddq_s64(v359, vdupq_n_s64(2uLL));
        v358 += 2;
      }

      while (v356 != 6);
      v360 = v299;
      v361 = v298;
      v362 = 0;
      LODWORD(v363) = 0;
      v364 = 1;
LABEL_343:
      v365 = 0;
      v366 = v364;
      v363 = v363;
      v367 = 2;
      v368 = (v362 | *v397) * *v479 + v400;
      while (!v487[v363 - 1] || !DecodeBlockInterDataPartitioned(**v360 + v368 + v365, v521, v490, v479[0], v363, v313, a5))
      {
        ++v363;
        v365 = 8;
        if (!--v367)
        {
          v364 = 0;
          v362 = 8;
          if (v366)
          {
            goto LABEL_343;
          }

          if (v488 && DecodeBlockInterDataPartitioned(*v360[1] + v372 + v373, v521, v490, v421[0], 4, v313, a5))
          {
            break;
          }

          if (!v489)
          {
            v5 = v484;
            v298 = v361;
            v299 = v360;
            v11 = *v431;
            goto LABEL_333;
          }

          v329 = DecodeBlockInterDataPartitioned(*v360[2] + v372 + v373, v521, v490, v421[0], 5, v313, a5);
          v5 = v484;
          v298 = v361;
          v299 = v360;
LABEL_352:
          v11 = *v431;
          if (!v329)
          {
            goto LABEL_333;
          }

          goto LABEL_361;
        }
      }
    }

    else
    {
      SetIntraPredACMode(v419, (*(v312 + 3) >> 6) & 1);
      v314 = Get_dc_scaler(v313, 0);
      v315 = 0;
      v316 = *(v312 + 3);
      v317 = v487;
      v318 = xmmword_27792F770;
      do
      {
        if (vmovn_s64(vcgtq_u64(v377, v318)).u8[0])
        {
          *(v317 - 1) = (v316 >> v315) & 1;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v318)).i32[1])
        {
          *v317 = ((v316 >> v315) & 2) != 0;
        }

        v315 += 2;
        v318 = vaddq_s64(v318, v375);
        v317 += 2;
      }

      while (v315 != 6);
      v319 = v299;
      v450 = v298;
      v320 = 0;
      LODWORD(v321) = 0;
      v322 = v314;
      v323 = 1;
LABEL_320:
      v324 = 0;
      v374 = v323;
      v321 = v321;
      v325 = 2;
      v326 = (v320 | *v397) * *v479 + v400;
      while (1)
      {
        v521[0].i16[0] = *(v477 + 2 * v321);
        if (DecodeBlockIntraDataPartitioned((**v319 + v326 + v324), v490, v521, v522, v479[0], v483, v321, v313, v322, v487[v321 - 1], *(v312 + 4), a5, v12))
        {
          break;
        }

        ++v321;
        v324 = 8;
        if (!--v325)
        {
          v323 = 0;
          v320 = 8;
          if (v374)
          {
            goto LABEL_320;
          }

          v327 = Get_dc_scaler(v313, 4);
          v521[0].i16[0] = v312[6];
          v328 = v327;
          if (!DecodeBlockIntraDataPartitioned((*v319[1] + v372 + v373), v490, v521, v522, v421[0], v483, 4, v313, v327, v488, *(v312 + 4), a5, v12))
          {
            v521[0].i16[0] = v312[7];
            v299 = v319;
            v329 = DecodeBlockIntraDataPartitioned((*v319[2] + v372 + v373), v490, v521, v522, v421[0], v483, 5, v313, v328, v489, *(v312 + 4), a5, v12);
            v5 = v484;
            v298 = v450;
            goto LABEL_352;
          }

          break;
        }
      }
    }

LABEL_360:
    v5 = v484;
LABEL_361:
    v10 = v458;
LABEL_362:
    v13 = v436;
    goto LABEL_363;
  }

  LODWORD(v300) = 0;
  v309 = v425;
LABEL_368:
  *(a5 + 536) = v309;
  *(a5 + 544) = v417;
  *(v5 + 196) += v300;
  v13 = *v10;
LABEL_364:
  v267 = v13 - 1;
LABEL_365:
  *(v5 + 192) = v267;
LABEL_366:
  v369 = *MEMORY[0x277D85DE8];
}