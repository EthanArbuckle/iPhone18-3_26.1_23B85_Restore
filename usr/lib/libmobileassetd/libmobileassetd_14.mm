uint64_t SaveErrorCode(uint64_t a1, unsigned int a2)
{
  *(a1 + 116) = a2;
  if (a2 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

uint64_t WriteRingBuffer(uint64_t a1, size_t *a2, void **a3, size_t *a4, int a5)
{
  v5 = *(a1 + 88);
  if (*(a1 + 76) >= v5)
  {
    v6 = *(a1 + 88);
  }

  else
  {
    v6 = *(a1 + 76);
  }

  v7 = *(a1 + 376);
  v8 = *(a1 + 368) * v5 - v7;
  v9 = v8 + v6;
  v10 = *a2;
  if (*a2 >= v9)
  {
    v11 = v8 + v6;
  }

  else
  {
    v11 = *a2;
  }

  if ((*(a1 + 264) & 0x80000000) != 0)
  {
    return 4294967287;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v17 = (*(a1 + 120) + (v7 & *(a1 + 92)));
  if (!*a3)
  {
    *a3 = v17;
LABEL_13:
    v18 = v10;
    goto LABEL_14;
  }

  memcpy(*a3, v17, v11);
  *a3 = *a3 + v11;
  v18 = *a2;
LABEL_14:
  *a2 = v18 - v11;
  v20 = *(a1 + 376) + v11;
  *(a1 + 376) = v20;
  if (a4)
  {
    *a4 = v20;
  }

  v21 = *(a1 + 88);
  v22 = 1 << *(a1 + 668);
  if (v10 >= v9)
  {
    if (v21 == v22)
    {
      v24 = *(a1 + 76);
      v25 = __OFSUB__(v24, v21);
      v26 = v24 - v21;
      if (v26 < 0 == v25)
      {
        *(a1 + 76) = v26;
        ++*(a1 + 368);
        *(a1 + 664) = *(a1 + 664) & 0xFFF7 | (8 * (v26 != 0));
      }
    }

    return 1;
  }

  else if (v21 != v22 && a5 == 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t DecodeMetaBlockLength(uint64_t a1, unint64_t *a2)
{
  for (i = *(a1 + 648); ; *(a1 + 648) = i)
  {
    v3 = 4294967265;
    if (i >= 2)
    {
      break;
    }

    if (i)
    {
      if (i != 1)
      {
        return v3;
      }
    }

    else
    {
      v5 = *(a2 + 2);
      if (v5 == 64)
      {
        v6 = a2[3];
        if (!v6)
        {
          return 2;
        }

        v7 = *a2;
        *a2 >>= 8;
        v8 = a2[2];
        *(&v10 + 1) = *v8;
        *&v10 = v7;
        v9 = v10 >> 8;
        *a2 = v9;
        a2[2] = (v8 + 1);
        a2[3] = v6 - 1;
        v5 = 56;
      }

      else
      {
        v9 = *a2;
      }

      *(a2 + 2) = v5 + 1;
      v11 = v9 & (1 << v5);
      v12 = *(a1 + 664) & 0xFFF8;
      if (v11)
      {
        ++v12;
      }

      *(a1 + 264) = 0;
      *(a1 + 664) = v12;
      if (!v11)
      {
        i = 2;
        continue;
      }

      *(a1 + 648) = 1;
    }

    v13 = *(a2 + 2);
    if (v13 == 64)
    {
      v14 = a2[3];
      if (!v14)
      {
        return 2;
      }

      v15 = *a2;
      *a2 >>= 8;
      v16 = a2[2];
      *(&v18 + 1) = *v16;
      *&v18 = v15;
      v17 = v18 >> 8;
      *a2 = v17;
      a2[2] = (v16 + 1);
      a2[3] = v14 - 1;
      v13 = 56;
    }

    else
    {
      v17 = *a2;
    }

    v4 = v13 + 1;
    *(a2 + 2) = v13 + 1;
    if ((v17 >> v13))
    {
      goto LABEL_94;
    }

    *(a1 + 648) = 2;
LABEL_22:
    if ((v4 - 63) >= 2)
    {
      v22 = *a2;
    }

    else
    {
      v19 = a2[3];
      if (!v19)
      {
        return 2;
      }

      v20 = *a2;
      *a2 >>= 8;
      v21 = a2[2];
      *(&v23 + 1) = *v21;
      *&v23 = v20;
      v22 = v23 >> 8;
      *a2 = v22;
      v4 -= 8;
      a2[2] = (v21 + 1);
      a2[3] = v19 - 1;
    }

    v24 = (v22 >> v4) & 3;
    *(a2 + 2) = v4 + 2;
    v25 = *(a1 + 664) & 0xC03F | (v24 << 6);
    v26 = v25 | 0x100;
    *(a1 + 664) = v25 | 0x100;
    *(a1 + 4) = 0;
    if (v24 != 3)
    {
      v28 = 0;
      *(a1 + 648) = 3;
      goto LABEL_40;
    }

    *(a1 + 664) = v25 | 0x104;
    i = 5;
  }

  if (i <= 2)
  {
    v4 = *(a2 + 2);
    goto LABEL_22;
  }

  if (i <= 4)
  {
    if (i == 3)
    {
      v28 = *(a1 + 4);
      v26 = *(a1 + 664);
LABEL_40:
      if (v28 < (v26 >> 6))
      {
        v29 = *(a2 + 2);
        v30 = 4 * v28;
        do
        {
          if ((v29 - 61) >= 4)
          {
            v34 = *a2;
          }

          else
          {
            v31 = a2[3];
            if (!v31)
            {
              goto LABEL_95;
            }

            v32 = *a2;
            *a2 >>= 8;
            v33 = a2[2];
            *(&v35 + 1) = *v33;
            *&v35 = v32;
            v34 = v35 >> 8;
            *a2 = v34;
            v29 -= 8;
            a2[2] = (v33 + 1);
            a2[3] = v31 - 1;
          }

          v36 = (v34 >> v29) & 0xF;
          v29 += 4;
          *(a2 + 2) = v29;
          ++v28;
          v26 = *(a1 + 664);
          v37 = (v26 >> 6);
          v38 = v28 == v37 && v37 >= 5;
          if (v38 && v36 == 0)
          {
            return 0xFFFFFFFFLL;
          }

          *(a1 + 264) |= v36 << v30;
          v30 += 4;
        }

        while (v28 < v37);
      }

      *(a1 + 648) = 4;
      if (v26)
      {
        goto LABEL_64;
      }
    }

    else if (*(a1 + 664))
    {
      goto LABEL_64;
    }

    v40 = *(a2 + 2);
    if (v40 == 64)
    {
      v41 = a2[3];
      if (!v41)
      {
        return 2;
      }

      v42 = *a2;
      *a2 >>= 8;
      v43 = a2[2];
      *(&v45 + 1) = *v43;
      *&v45 = v42;
      v44 = v45 >> 8;
      *a2 = v44;
      a2[2] = (v43 + 1);
      a2[3] = v41 - 1;
      v40 = 56;
    }

    else
    {
      v44 = *a2;
    }

    *(a2 + 2) = v40 + 1;
    *(a1 + 664) = *(a1 + 664) & 0xFFFD | (2 * ((v44 >> v40) & 1));
LABEL_64:
    v53 = *(a1 + 264) + 1;
LABEL_93:
    *(a1 + 264) = v53;
    goto LABEL_94;
  }

  if (i == 5)
  {
    v47 = *(a2 + 2);
    if (v47 == 64)
    {
      v48 = a2[3];
      if (!v48)
      {
        return 2;
      }

      v49 = *a2;
      *a2 >>= 8;
      v50 = a2[2];
      *(&v52 + 1) = *v50;
      *&v52 = v49;
      v51 = v52 >> 8;
      *a2 = v51;
      a2[2] = (v50 + 1);
      a2[3] = v48 - 1;
      v47 = 56;
    }

    else
    {
      v51 = *a2;
    }

    v46 = v47 + 1;
    *(a2 + 2) = v47 + 1;
    if ((v51 >> v47))
    {
      return 4294967294;
    }

    *(a1 + 648) = 6;
    goto LABEL_70;
  }

  if (i == 6)
  {
    v46 = *(a2 + 2);
LABEL_70:
    if ((v46 - 63) >= 2)
    {
      v57 = *a2;
LABEL_74:
      *(a2 + 2) = v46 + 2;
      v59 = (v57 >> v46) & 3;
      if (v59)
      {
        v27 = *(a1 + 664) & 0xC03F | (v59 << 6);
        *(a1 + 664) = *(a1 + 664) & 0xC03F | (v59 << 6);
        *(a1 + 648) = 7;
        goto LABEL_76;
      }

LABEL_94:
      *(a1 + 648) = 0;
      return 1;
    }

    v54 = a2[3];
    if (v54)
    {
      v55 = *a2;
      *a2 >>= 8;
      v56 = a2[2];
      *(&v58 + 1) = *v56;
      *&v58 = v55;
      v57 = v58 >> 8;
      *a2 = v57;
      v46 -= 8;
      a2[2] = (v56 + 1);
      a2[3] = v54 - 1;
      goto LABEL_74;
    }

    return 2;
  }

  if (i != 7)
  {
    return v3;
  }

  v27 = *(a1 + 664);
LABEL_76:
  v28 = *(a1 + 4);
  if (v28 >= (v27 >> 6))
  {
    v71 = *(a1 + 264);
LABEL_92:
    v53 = v71 + 1;
    goto LABEL_93;
  }

  v60 = *(a2 + 2);
  v61 = 8 * v28;
  while (1)
  {
    if ((v60 - 57) >= 8)
    {
      v65 = *a2;
    }

    else
    {
      v62 = a2[3];
      if (!v62)
      {
LABEL_95:
        *(a1 + 4) = v28;
        return 2;
      }

      v63 = *a2;
      *a2 >>= 8;
      v64 = a2[2];
      *(&v66 + 1) = *v64;
      *&v66 = v63;
      v65 = v66 >> 8;
      *a2 = v65;
      v60 -= 8;
      a2[2] = (v64 + 1);
      a2[3] = v62 - 1;
    }

    v67 = (v65 >> v60);
    v60 += 8;
    *(a2 + 2) = v60;
    ++v28;
    v68 = (*(a1 + 664) >> 6);
    v69 = v28 == v68 && v68 >= 2;
    if (v69 && v67 == 0)
    {
      return 4294967293;
    }

    v71 = *(a1 + 264) | (v67 << v61);
    *(a1 + 264) = v71;
    v61 += 8;
    if (v28 >= v68)
    {
      goto LABEL_92;
    }
  }
}

uint64_t BrotliCalculateRingBufferSize(uint64_t result)
{
  v1 = 1 << *(result + 668);
  v2 = *(result + 88);
  if (v2)
  {
    v3 = *(result + 88);
  }

  else
  {
    v3 = 1024;
  }

  if (v2 != v1)
  {
    v4 = *(result + 664);
    if ((v4 & 4) == 0)
    {
      v5 = *(result + 120);
      if (v5)
      {
        LODWORD(v5) = *(result + 76);
      }

      v6 = *(result + 264) + v5;
      if (v3 <= v6)
      {
        v3 = v6;
      }

      if ((v4 & 0x10) != 0)
      {
        do
        {
          v7 = v1;
          v1 >>= 1;
        }

        while (v1 >= v3);
      }

      else
      {
        v7 = 1 << *(result + 668);
      }

      *(result + 672) = v7;
    }
  }

  return result;
}

uint64_t DecodeVarLenUint8(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  v3 = *(a1 + 656);
  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return 4294967265;
      }

      v4 = *a3;
      goto LABEL_18;
    }

    v5 = *(a2 + 2);
  }

  else
  {
    v6 = *(a2 + 2);
    if (v6 == 64)
    {
      v7 = a2[3];
      if (!v7)
      {
        return 2;
      }

      v8 = *a2;
      *a2 >>= 8;
      v9 = a2[2];
      *(&v11 + 1) = *v9;
      *&v11 = v8;
      v10 = v11 >> 8;
      *a2 = v10;
      a2[2] = (v9 + 1);
      a2[3] = v7 - 1;
      v6 = 56;
    }

    else
    {
      v10 = *a2;
    }

    v5 = v6 + 1;
    *(a2 + 2) = v6 + 1;
    if (((v10 >> v6) & 1) == 0)
    {
      *a3 = 0;
      return 1;
    }
  }

  if ((v5 - 62) >= 3)
  {
    v16 = *a2;
    goto LABEL_16;
  }

  v13 = a2[3];
  if (!v13)
  {
    *(a1 + 656) = 1;
    return 2;
  }

  v14 = *a2;
  *a2 >>= 8;
  v15 = a2[2];
  *(&v17 + 1) = *v15;
  *&v17 = v14;
  v16 = v17 >> 8;
  *a2 = v16;
  v5 -= 8;
  a2[2] = (v15 + 1);
  a2[3] = v13 - 1;
LABEL_16:
  *(a2 + 2) = v5 + 3;
  v4 = (v16 >> v5) & 7;
  if (!v4)
  {
    v12 = 1;
    *a3 = 1;
LABEL_26:
    *(a1 + 656) = 0;
    return v12;
  }

  *a3 = v4;
LABEL_18:
  v18 = *(a2 + 2);
  v19 = 64 - v18;
  if (64 - v18 >= v4)
  {
    v23 = *a2;
LABEL_24:
    v25 = (v23 >> v18) & ~(-1 << v4);
    *(a2 + 2) = v18 + v4;
    v12 = 1;
    *a3 = (1 << *a3) + v25;
    goto LABEL_26;
  }

  v20 = a2[3] - 1;
  while (v20 != -1)
  {
    v21 = *a2;
    *a2 >>= 8;
    v22 = a2[2];
    *(&v24 + 1) = *v22;
    *&v24 = v21;
    v23 = v24 >> 8;
    *a2 = v23;
    v18 -= 8;
    *(a2 + 2) = v18;
    a2[2] = (v22 + 1);
    a2[3] = v20--;
    v19 += 8;
    if (v19 >= v4)
    {
      goto LABEL_24;
    }
  }

  v12 = 2;
  *(a1 + 656) = 2;
  return v12;
}

uint64_t ReadHuffmanCode(int a1, unsigned int a2, int *__src, _DWORD *a4, uint64_t a5)
{
  v9 = a5 + 760;
  v10 = *(a5 + 752);
  v11 = a5 + 2506;
  v12 = (a5 + 2488);
  if (!v10)
  {
    v13 = *(a5 + 16);
    if ((v13 - 63) >= 2)
    {
      v17 = *(a5 + 8);
    }

    else
    {
      v14 = *(a5 + 32);
      if (!v14)
      {
        return 2;
      }

      v15 = *(a5 + 8);
      *(a5 + 8) = v15 >> 8;
      v16 = *(a5 + 24);
      *(&v18 + 1) = *v16;
      *&v18 = v15;
      v17 = v18 >> 8;
      *(a5 + 8) = v17;
      v13 -= 8;
      *(a5 + 24) = v16 + 1;
      *(a5 + 32) = v14 - 1;
    }

    v19 = (v17 >> v13) & 3;
    *(a5 + 756) = v19;
    v20 = v13 + 2;
    *(a5 + 16) = v13 + 2;
    if (v19 == 1)
    {
      goto LABEL_38;
    }

    *(a5 + 772) = 0x2000000000;
    *(a5 + 2496) = 0;
    *(a5 + 2504) = 0;
    *v12 = 0;
    *(a5 + 2510) = 0;
    v10 = 4;
    *(a5 + 752) = 4;
  }

  v21 = 4294967265;
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        return v21;
      }

      v28 = *(a5 + 756);
      LODWORD(v29) = *(a5 + 768);
LABEL_43:
      v55 = 32 - __clz(a1 - 1);
      if (a1 == 1)
      {
        v55 = 0;
      }

      if (v28 <= v29)
      {
        v60 = *(a5 + 16);
        while (1)
        {
          v61 = 64 - v60;
          if (64 - v60 < v55)
          {
            break;
          }

          v65 = *(a5 + 8);
LABEL_60:
          v67 = (v65 >> v60) & ~(-1 << v55);
          v60 += v55;
          *(a5 + 16) = v60;
          if (v67 >= a2)
          {
            return 4294967292;
          }

          *(a5 + 920 + 2 * v28++) = v67;
          if (v28 > v29)
          {
            goto LABEL_46;
          }
        }

        v62 = *(a5 + 32) - 1;
        while (v62 != -1)
        {
          v63 = *(a5 + 8);
          *(a5 + 8) = v63 >> 8;
          v64 = *(a5 + 24);
          *(&v66 + 1) = *v64;
          *&v66 = v63;
          v65 = v66 >> 8;
          *(a5 + 8) = v65;
          v60 -= 8;
          *(a5 + 16) = v60;
          *(a5 + 24) = v64 + 1;
          *(a5 + 32) = v62--;
          v61 += 8;
          if (v61 >= v55)
          {
            goto LABEL_60;
          }
        }

        *(a5 + 756) = v28;
        v21 = 2;
        *(a5 + 752) = 2;
        return v21;
      }

LABEL_46:
      if (!v29)
      {
LABEL_112:
        v100 = BrotliBuildSimpleHuffmanTable(__src, 8, (a5 + 920), v29);
        if (a4)
        {
          *a4 = v100;
        }

        goto LABEL_159;
      }

      v56 = 0;
      v57 = a5 + 920;
      while (2)
      {
        v58 = *(v57 + 2 * v56++);
        v59 = v56;
        do
        {
          if (v58 == *(v57 + 2 * v59))
          {
            return 4294967291;
          }

          ++v59;
        }

        while (v59 <= v29);
        if (v56 != v29)
        {
          continue;
        }

        break;
      }

      goto LABEL_17;
    }

    v20 = *(a5 + 16);
LABEL_38:
    if ((v20 - 63) >= 2)
    {
      v53 = *(a5 + 8);
    }

    else
    {
      v50 = *(a5 + 32);
      if (!v50)
      {
        v49 = 1;
LABEL_151:
        *(a5 + 752) = v49;
        return 2;
      }

      v51 = *(a5 + 8);
      *(a5 + 8) = v51 >> 8;
      v52 = *(a5 + 24);
      *(&v54 + 1) = *v52;
      *&v54 = v51;
      v53 = v54 >> 8;
      *(a5 + 8) = v53;
      v20 -= 8;
      *(a5 + 24) = v52 + 1;
      *(a5 + 32) = v50 - 1;
    }

    v28 = 0;
    v29 = (v53 >> v20) & 3;
    *(a5 + 768) = v29;
    *(a5 + 16) = v20 + 2;
    *(a5 + 756) = 0;
    goto LABEL_43;
  }

  if (v10 == 3)
  {
    LODWORD(v29) = *(a5 + 768);
LABEL_17:
    if (v29 != 3)
    {
      goto LABEL_112;
    }

    v30 = *(a5 + 16);
    if (v30 != 64)
    {
      v34 = *(a5 + 8);
      goto LABEL_111;
    }

    v31 = *(a5 + 32);
    if (v31)
    {
      v32 = *(a5 + 8);
      *(a5 + 8) = v32 >> 8;
      v33 = *(a5 + 24);
      *(&v35 + 1) = *v33;
      *&v35 = v32;
      v34 = v35 >> 8;
      *(a5 + 8) = v34;
      *(a5 + 24) = v33 + 1;
      *(a5 + 32) = v31 - 1;
      v30 = 56;
LABEL_111:
      *(a5 + 16) = v30 + 1;
      LODWORD(v29) = ((v34 >> v30) & 1) + 3;
      *(a5 + 768) = v29;
      goto LABEL_112;
    }

    v49 = 3;
    goto LABEL_151;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v129 = a2;
      __srca = __src;
      v128 = a4;
      v22 = *(a5 + 768);
      v23 = *(a5 + 772);
      v24 = *(a5 + 776);
      v25 = *(a5 + 764);
      v26 = *(a5 + 760);
      v27 = *(a5 + 912);
      goto LABEL_71;
    }

    return v21;
  }

  v36 = *(a5 + 772);
  v37 = *(a5 + 776);
  v38 = *(a5 + 756);
  if (v38 <= 0x11)
  {
    v39 = *(a5 + 16);
    while (1)
    {
      v40 = kCodeLengthCodeOrder[v38];
      if ((v39 - 61) >= 4)
      {
        break;
      }

      v41 = *(a5 + 32);
      if (v41)
      {
        v42 = *(a5 + 8);
        *(a5 + 8) = v42 >> 8;
        v43 = *(a5 + 24);
        *(&v45 + 1) = *v43;
        *&v45 = v42;
        v44 = v45 >> 8;
        *(a5 + 8) = v44;
        v39 -= 8;
        *(a5 + 24) = v43 + 1;
        *(a5 + 32) = v41 - 1;
LABEL_27:
        v46 = (v44 >> v39) & 0xF;
        v47 = kCodeLengthPrefixLength[v46];
        goto LABEL_28;
      }

      if (v39 == 64)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(a5 + 8) >> v39;
      }

      v47 = kCodeLengthPrefixLength[v46];
      if (64 - v39 < v47)
      {
        *(a5 + 756) = v38;
        *(a5 + 772) = v36;
        *(a5 + 776) = v37;
        v49 = 4;
        goto LABEL_151;
      }

LABEL_28:
      v48 = kCodeLengthPrefixValue[v46];
      v39 += v47;
      *(a5 + 16) = v39;
      *(v12 + v40) = v48;
      if (((0x1111uLL >> v46) & 1) != 0 || (v37 -= 0x20u >> v48, ++v36, ++*(v11 + 2 * v48), (v37 - 33) >= 0xFFFFFFE0))
      {
        if (++v38 != 18)
        {
          continue;
        }
      }

      goto LABEL_64;
    }

    v44 = *(a5 + 8);
    goto LABEL_27;
  }

LABEL_64:
  if (v36 == 1 || !v37)
  {
    v129 = a2;
    __srca = __src;
    v128 = a4;
    BrotliBuildCodeLengthsHuffmanTable(a5 + 780, v12, v11);
    v68 = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v69 = (v9 + 1600);
    *&v70 = -1;
    *(&v70 + 1) = -1;
    v27 = *(a5 + 912);
    do
    {
      v71 = vdupq_n_s64(v68);
      v72 = vorrq_s8(v71, xmmword_3AD940);
      v73 = vorrq_s8(v71, xmmword_3AD950);
      v74 = vorrq_s8(v71, xmmword_3AD960);
      v75 = vorrq_s8(v71, xmmword_3AD970);
      *v69 = vuzp1q_s32(v75, v74);
      v69[1] = vuzp1q_s32(v73, v72);
      v69 += 2;
      *(v27 + 2 * v75.i64[0]) = v70;
      v68 += 8;
    }

    while (v68 != 16);
    v26 = 0;
    v23 = 0;
    v22 = 0;
    *v9 = xmmword_3AD980;
    v24 = 0x8000;
    *(a5 + 776) = 0x8000;
    *(a5 + 752) = 5;
    v25 = 8;
LABEL_71:
    v76 = a5 + 2360;
    if (BrotliWarmupBitReader((a5 + 8)))
    {
      v77 = v129;
      if (v22 >= v129 || !v24)
      {
LABEL_154:
        *(a5 + 776) = v24;
LABEL_155:
        if (v24)
        {
          return 4294967289;
        }

LABEL_157:
        v125 = BrotliBuildHuffmanTable(__srca, 8, *(a5 + 912), v11);
        if (v128)
        {
          *v128 = v125;
        }

LABEL_159:
        *(a5 + 752) = 0;
        return 1;
      }

      v78 = *(a5 + 32);
      while (1)
      {
        v79 = v78 - 4;
        if (v78 < 4)
        {
          break;
        }

        v80 = *(a5 + 16);
        v81 = *(a5 + 8);
        if (v80 >= 0x20)
        {
          v80 ^= 0x20u;
          *(a5 + 16) = v80;
          v82 = *(a5 + 24);
          *(&v83 + 1) = *v82;
          *&v83 = v81;
          v81 = v83 >> 32;
          *(a5 + 8) = v81;
          *(a5 + 24) = v82 + 1;
          *(a5 + 32) = v79;
          v78 = v79;
        }

        v84 = (a5 + 780 + 4 * ((v81 >> v80) & 0x1F));
        v85 = v80 + *v84;
        *(a5 + 16) = v85;
        v86 = *(v84 + 1);
        if (v86 > 0xF)
        {
          v87 = v86 == 16;
          if (v86 == 16)
          {
            v88 = 2;
          }

          else
          {
            v88 = 3;
          }

          v89 = (v81 >> v85) & ~(-1 << v88);
          *(a5 + 16) = v88 + v85;
          if (v87)
          {
            v90 = v25;
          }

          else
          {
            v90 = 0;
          }

          v91 = (v23 - 2) << v88;
          if (v23)
          {
            v92 = v23;
          }

          else
          {
            v92 = 0;
          }

          if (!v23)
          {
            v91 = 0;
          }

          v93 = v26 == v90;
          if (v26 == v90)
          {
            v94 = v92;
          }

          else
          {
            v26 = v90;
            v94 = 0;
          }

          if (v93)
          {
            v95 = v91;
          }

          else
          {
            v95 = 0;
          }

          v23 = v89 + v95 + 3;
          v96 = v23 - v94;
          v97 = v23 - v94 + v22;
          if (v97 > v129)
          {
            v24 = 0xFFFFF;
            goto LABEL_154;
          }

          if (v26)
          {
            v98 = *(v76 + 4 * v26);
            v99 = v95 + v89 - v94 + 3;
            do
            {
              *(v27 + 2 * v98) = v22;
              v98 = v22++;
              --v99;
            }

            while (v99);
            *(v76 + 4 * v26) = v22 - 1;
            v24 -= v96 << (15 - v26);
            *(v11 + 2 * v26) += v96;
          }

          v22 = v97;
        }

        else
        {
          if (*(v84 + 1))
          {
            *(v27 + 2 * *(v76 + 4 * *(v84 + 1))) = v22;
            *(v76 + 4 * v86) = v22;
            v24 -= 0x8000u >> v86;
            ++*(v11 + 2 * v86);
            v25 = v86;
          }

          v23 = 0;
          ++v22;
        }

        if (v22 >= v129 || !v24)
        {
          goto LABEL_154;
        }
      }

      *(a5 + 768) = v22;
      *(a5 + 772) = v23;
      *(a5 + 764) = v25;
      *(a5 + 760) = v26;
      *(a5 + 776) = v24;
    }

    else
    {
      v22 = *(a5 + 768);
      v24 = *(a5 + 776);
      v77 = v129;
    }

    if (v22 < v77)
    {
      v101 = 0;
      while (1)
      {
        if (!v24)
        {
          goto LABEL_157;
        }

        if (v101)
        {
          v102 = *(a5 + 32);
          if (!v102)
          {
            return 2;
          }

          v103 = *(a5 + 8);
          *(a5 + 8) = v103 >> 8;
          v104 = *(a5 + 24);
          *(&v105 + 1) = *v104;
          *&v105 = v103;
          *(a5 + 8) = v105 >> 8;
          v106 = *(a5 + 16) - 8;
          *(a5 + 16) = v106;
          *(a5 + 24) = v104 + 1;
          *(a5 + 32) = v102 - 1;
        }

        else
        {
          v106 = *(a5 + 16);
        }

        if (v106 == 64)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = *(a5 + 8) >> v106;
        }

        v108 = (a5 + 780 + 4 * (v107 & 0x1F));
        v109 = *v108;
        if (64 - v106 < v109)
        {
          goto LABEL_126;
        }

        v110 = *(v108 + 1);
        if (v110 <= 0xF)
        {
          *(a5 + 16) = v106 + v109;
          v111 = *(a5 + 912);
          *(a5 + 772) = 0;
          if (v110)
          {
            *(v111 + 2 * *(v76 + 4 * v110)) = v22;
            *(v76 + 4 * v110) = v22;
            *(a5 + 764) = v110;
            v24 -= 0x8000u >> v110;
            *(a5 + 776) = v24;
            ++*(v11 + 2 * v110);
          }

          v101 = 0;
          *(a5 + 768) = ++v22;
          goto LABEL_147;
        }

        v112 = v110 - 14;
        v113 = v110 - 14 + v109;
        if (64 - v106 < v113)
        {
LABEL_126:
          v101 = 1;
        }

        else
        {
          *(a5 + 16) = v113 + v106;
          if (v110 == 16)
          {
            v114 = *(a5 + 764);
            v115 = 2;
          }

          else
          {
            v114 = 0;
            v115 = 3;
          }

          if (*(a5 + 760) == v114)
          {
            v116 = *(v9 + 12);
            if (v116)
            {
              v117 = (v116 - 2) << v115;
            }

            else
            {
              v117 = 0;
            }
          }

          else
          {
            v117 = 0;
            v116 = 0;
            *(a5 + 760) = v114;
          }

          v118 = (v107 >> v109) & ~(-1 << v112);
          v119 = *(a5 + 912);
          v120 = v118 + v117 + 3;
          *(v9 + 12) = v120;
          v121 = v120 - v116;
          v122 = v120 - v116 + v22;
          if (v122 > v77)
          {
            *(a5 + 768) = v77;
            *(a5 + 776) = 0xFFFFF;
            return 4294967289;
          }

          if (v114)
          {
            v123 = *(v76 + 4 * v114);
            v124 = v117 + v118 - v116 + 3;
            do
            {
              *(v119 + 2 * v123) = v22;
              v123 = v22++;
              --v124;
            }

            while (v124);
            v101 = 0;
            *(a5 + 768) = v122;
            *(v76 + 4 * v114) = v22 - 1;
            v24 -= v121 << (15 - v114);
            *(a5 + 776) = v24;
            *(v11 + 2 * v114) += v121;
          }

          else
          {
            v101 = 0;
            *(a5 + 768) = v122;
          }

          v22 = v122;
        }

LABEL_147:
        if (v22 >= v77)
        {
          goto LABEL_155;
        }
      }
    }

    goto LABEL_155;
  }

  return 4294967290;
}

uint64_t CopyUncompressedBlockToOutput(size_t *a1, void **a2, size_t *a3, uint64_t a4)
{
  if (!BrotliEnsureRingBuffer(a4))
  {
    return 4294967270;
  }

  for (i = *(a4 + 652); ; i = 0)
  {
    do
    {
      if (i == 1)
      {
        goto LABEL_24;
      }
    }

    while (i);
    v9 = *(a4 + 32);
    v10 = *(a4 + 16);
    if (v9 <= 0x40000000)
    {
      LODWORD(v9) = v9 + ((64 - v10) >> 3);
    }

    else
    {
      LODWORD(v9) = 0x40000000;
    }

    if (*(a4 + 264) < v9)
    {
      LODWORD(v9) = *(a4 + 264);
    }

    v11 = *(a4 + 76);
    v12 = *(a4 + 88);
    if (v11 + v9 > v12)
    {
      LODWORD(v9) = v12 - v11;
    }

    v13 = (*(a4 + 120) + v11);
    v14 = v9;
    if ((v10 - 65) <= 0xFFFFFFF7 && v9)
    {
      v9 = v9;
      do
      {
        *v13++ = *(a4 + 8) >> v10;
        v15 = *(a4 + 16);
        LOBYTE(v10) = v15 + 8;
        *(a4 + 16) = v15 + 8;
        v16 = v9 - 1;
      }

      while ((v15 - 57) <= 0xFFFFFFF7 && v9-- != 1);
    }

    else
    {
      v16 = v9;
    }

    memcpy(v13, *(a4 + 24), v16);
    v18 = *(a4 + 32) - v16;
    *(a4 + 24) += v16;
    *(a4 + 32) = v18;
    v19 = *(a4 + 76) + v14;
    *(a4 + 76) = v19;
    v20 = *(a4 + 264);
    *(a4 + 264) = v20 - v14;
    if (v19 < 1 << *(a4 + 668))
    {
      break;
    }

    *(a4 + 652) = 1;
LABEL_24:
    result = WriteRingBuffer(a4, a1, a2, a3, 0);
    if (result != 1)
    {
      return result;
    }

    if (*(a4 + 88) == 1 << *(a4 + 668))
    {
      *(a4 + 84) = *(a4 + 80);
    }

    *(a4 + 652) = 0;
  }

  if (v20 == v14)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t DecodeContextMap(unsigned int a1, unsigned int *a2, unsigned __int8 **a3, uint64_t a4)
{
  v8 = *(a4 + 748);
  result = 4294967265;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }
    }

    else
    {
      result = DecodeVarLenUint8(a4, (a4 + 8), a2);
      if (result != 1)
      {
        return result;
      }

      ++*a2;
      *(a4 + 2552) = 0;
      v18 = (*(a4 + 40))(*(a4 + 56), a1);
      *a3 = v18;
      if (!v18)
      {
        return 4294967271;
      }

      if (*a2 <= 1)
      {
        bzero(v18, a1);
        return 1;
      }

      *(a4 + 748) = 1;
    }

    v11 = *(a4 + 16);
    if ((v11 - 60) >= 5)
    {
      v15 = *(a4 + 8);
    }

    else
    {
      v12 = *(a4 + 32);
      if (!v12)
      {
        return 2;
      }

      v13 = *(a4 + 8);
      *(a4 + 8) = v13 >> 8;
      v14 = *(a4 + 24);
      *(&v16 + 1) = *v14;
      *&v16 = v13;
      v15 = v16 >> 8;
      *(a4 + 8) = v15;
      v11 -= 8;
      *(a4 + 24) = v14 + 1;
      *(a4 + 32) = v12 - 1;
    }

    v19 = v15 >> v11;
    v20 = (v19 & 1) == 0;
    v17 = ((v19 << 31) >> 31) & (((v19 >> 1) & 0xF) + 1);
    if (v20)
    {
      v21 = v11 + 1;
    }

    else
    {
      v21 = v11 + 5;
    }

    *(a4 + 2556) = v17;
    *(a4 + 16) = v21;
    *(a4 + 748) = 2;
    goto LABEL_21;
  }

  if (v8 == 2)
  {
    v17 = *(a4 + 2556);
LABEL_21:
    result = ReadHuffmanCode(v17 + *a2, v17 + *a2, (a4 + 2564), 0, a4);
    if (result != 1)
    {
      return result;
    }

    v10 = 0xFFFF;
    *(a4 + 2560) = 0xFFFF;
    *(a4 + 748) = 3;
    goto LABEL_23;
  }

  if (v8 == 4)
  {
    goto LABEL_25;
  }

  if (v8 != 3)
  {
    return result;
  }

  v10 = *(a4 + 2560);
LABEL_23:
  v22 = *(a4 + 2552);
  v23 = *(a4 + 2556);
  v24 = *a3;
  v51 = v10;
  v25 = v10 != 0xFFFF;
  if (v22 >= a1 && v10 == 0xFFFF)
  {
LABEL_25:
    v26 = *(a4 + 16);
    if (v26 == 64)
    {
      v27 = *(a4 + 32);
      if (!v27)
      {
        result = 2;
        v32 = 4;
LABEL_32:
        *(a4 + 748) = v32;
        return result;
      }

      v28 = *(a4 + 8);
      *(a4 + 8) = v28 >> 8;
      v29 = *(a4 + 24);
      *(&v31 + 1) = *v29;
      *&v31 = v28;
      v30 = v31 >> 8;
      *(a4 + 8) = v30;
      *(a4 + 24) = v29 + 1;
      *(a4 + 32) = v27 - 1;
      v26 = 56;
    }

    else
    {
      v30 = *(a4 + 8);
    }

    *(a4 + 16) = v26 + 1;
    if ((v30 >> v26))
    {
      InverseMoveToFrontTransform(*a3, a1, a4);
    }

    v32 = 0;
    result = 1;
    goto LABEL_32;
  }

  while (1)
  {
    v33 = *(a4 + 16);
    if (!v25)
    {
      if ((v33 - 50) >= 0xF)
      {
        v37 = *(a4 + 8);
LABEL_40:
        v40 = v37 >> v33;
        v41 = (a4 + 2564 + 4 * (v37 >> v33));
        v42 = *v41;
        if (v42 >= 9)
        {
          v33 += 8;
          v41 += 4 * (BYTE1(v40) & ~(-1 << (v42 - 8)) & 0x7F) + 4 * *(v41 + 1);
          v42 = *v41;
        }

        *(a4 + 16) = v33 + v42;
        v10 = *(v41 + 1);
        v51 = v10;
        if (!v10)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v34 = *(a4 + 32) - 1;
        while (v34 != -1)
        {
          v35 = *(a4 + 8);
          *(a4 + 8) = v35 >> 8;
          v36 = *(a4 + 24);
          *(&v38 + 1) = *v36;
          *&v38 = v35;
          v37 = v38 >> 8;
          *(a4 + 8) = v37;
          v39 = v33 - 8;
          *(a4 + 16) = v33 - 8;
          *(a4 + 24) = v36 + 1;
          *(a4 + 32) = v34--;
          LODWORD(v36) = v33 - 58;
          v33 -= 8;
          if (v36 >= 0xF)
          {
            v33 = v39;
            goto LABEL_40;
          }
        }

        if (!SafeDecodeSymbol((a4 + 2564), a4 + 8, &v51))
        {
          v10 = 0xFFFF;
          goto LABEL_65;
        }

        v10 = v51;
        if (!v51)
        {
LABEL_56:
          v43 = 0;
LABEL_57:
          v24[v22++] = v43;
          goto LABEL_58;
        }
      }

      v43 = v10 - v23;
      if (v10 > v23)
      {
        goto LABEL_57;
      }

      v33 = *(a4 + 16);
    }

    v44 = 64 - v33;
    if (64 - v33 < v10)
    {
      break;
    }

    v48 = *(a4 + 8);
LABEL_51:
    *(a4 + 16) = v33 + v10;
    v50 = ((v48 >> v33) & ~(-1 << v10)) + (1 << v10);
    if (v50 + v22 > a1)
    {
      return 4294967288;
    }

    do
    {
      v24[v22++] = 0;
      --v50;
    }

    while (v50);
LABEL_58:
    v25 = 0;
    if (v22 >= a1)
    {
      goto LABEL_25;
    }
  }

  v45 = *(a4 + 32) - 1;
  while (v45 != -1)
  {
    v46 = *(a4 + 8);
    *(a4 + 8) = v46 >> 8;
    v47 = *(a4 + 24);
    *(&v49 + 1) = *v47;
    *&v49 = v46;
    v48 = v49 >> 8;
    *(a4 + 8) = v48;
    v33 -= 8;
    *(a4 + 16) = v33;
    *(a4 + 24) = v47 + 1;
    *(a4 + 32) = v45--;
    v44 += 8;
    if (v44 >= v10)
    {
      goto LABEL_51;
    }
  }

LABEL_65:
  *(a4 + 2560) = v10;
  *(a4 + 2552) = v22;
  return 2;
}

uint64_t BrotliEnsureRingBuffer(uint64_t a1)
{
  v1 = *(a1 + 672);
  if (*(a1 + 88) == v1)
  {
    return 1;
  }

  v4 = *(a1 + 120);
  result = (*(a1 + 40))(*(a1 + 56), v1 + 42);
  *(a1 + 120) = result;
  if (result)
  {
    *(result + *(a1 + 672) - 2) = 0;
    *(*(a1 + 120) + *(a1 + 672) - 1) = 0;
    if (v4)
    {
      memcpy(*(a1 + 120), v4, *(a1 + 76));
      (*(a1 + 48))(*(a1 + 56), v4);
    }

    v5 = *(a1 + 672);
    *(a1 + 88) = v5;
    *(a1 + 92) = v5 - 1;
    *(a1 + 128) = *(a1 + 120) + v5;
    return 1;
  }

  else
  {
    *(a1 + 120) = v4;
  }

  return result;
}

uint64_t ProcessCommands(uint64_t a1)
{
  v2 = *(a1 + 76);
  LODWORD(v3) = *(a1 + 4);
  if (*(a1 + 32) < 0x1CuLL)
  {
    goto LABEL_9;
  }

  BrotliWarmupBitReader((a1 + 8));
  v4 = *a1;
  result = 4294967265;
  if (*a1 > 8)
  {
    if (v4 == 9)
    {
      goto LABEL_12;
    }

    if (v4 == 10)
    {
      v6 = v2;
      goto LABEL_57;
    }

    return result;
  }

  if (v4 == 7)
  {
    goto LABEL_78;
  }

  if (v4 != 8)
  {
    return result;
  }

LABEL_90:
  v76 = v2;
  if (!*(a1 + 256))
  {
    goto LABEL_111;
  }

  do
  {
    v77 = *(a1 + 16);
    v78 = *(a1 + 8);
    if (v77 >= 0x38)
    {
      *(a1 + 8) = HIBYTE(v78);
      v77 ^= 0x38u;
      *(a1 + 16) = v77;
      v79 = *(a1 + 24);
      v80 = *(a1 + 32);
      *(&v81 + 1) = *v79;
      *&v81 = v78;
      v78 = v81 >> 56;
      *(a1 + 8) = v78;
      *(a1 + 24) = v79 + 7;
      *(a1 + 32) = v80 - 7;
    }

    v82 = 0;
    v83 = (*(a1 + 344) + 4 * (v78 >> v77));
    v84 = *v83;
    v85 = *(v83 + 1);
    v86 = v76;
    while (1)
    {
      if (*(a1 + 32) <= 0x1BuLL)
      {
        goto LABEL_124;
      }

      if (!*(a1 + 272))
      {
        break;
      }

      v87 = *(a1 + 344);
LABEL_97:
      v88 = *(a1 + 16);
      if (v84 >= 9)
      {
        v91 = *(a1 + 8);
        if (v88 >= 0x30)
        {
          *(a1 + 8) = HIWORD(v91);
          v88 ^= 0x30u;
          v103 = *(a1 + 24);
          v104 = *(a1 + 32);
          *(&v105 + 1) = *v103;
          *&v105 = v91;
          v91 = v105 >> 48;
          *(a1 + 8) = v91;
          *(a1 + 24) = v103 + 6;
          *(a1 + 32) = v104 - 6;
        }

        v106 = (v87 + 4 * (v91 >> v88) + 4 * v85 + 4 * (((v91 >> v88) >> 8) & ~(-1 << (v84 - 8))));
        v89 = v88 + *v106 + 8;
        *(a1 + 16) = v89;
        v90 = v106[2];
      }

      else
      {
        v89 = v88 + v84;
        *(a1 + 16) = v89;
        v90 = v85;
        v91 = *(a1 + 8);
      }

      if (v89 >= 0x38)
      {
        *(a1 + 8) = HIBYTE(v91);
        v89 ^= 0x38u;
        *(a1 + 16) = v89;
        v92 = *(a1 + 24);
        v93 = *(a1 + 32);
        *(&v94 + 1) = *v92;
        *&v94 = v91;
        v91 = v94 >> 56;
        *(a1 + 8) = v91;
        *(a1 + 24) = v92 + 7;
        *(a1 + 32) = v93 - 7;
      }

      v95 = (v87 + 4 * (v91 >> v89));
      v84 = *v95;
      v85 = *(v95 + 1);
      *(*(a1 + 120) + v76 + v82) = v90;
      --*(a1 + 272);
      v2 = *(a1 + 88);
      if (v76 + v82 + 1 == v2)
      {
LABEL_128:
        *a1 = 13;
        LODWORD(v3) = ~v82 + v3;
LABEL_76:
        result = 1;
        goto LABEL_10;
      }

      if (v3 == ++v82)
      {
LABEL_125:
        v2 = v76 + v82;
        if (*(a1 + 264) <= 0)
        {
          LODWORD(v3) = 0;
LABEL_66:
          v55 = 14;
LABEL_75:
          *a1 = v55;
          goto LABEL_76;
        }

LABEL_12:
        while (2)
        {
          v7 = v2;
          v8 = *(a1 + 360);
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v8 == 0;
            *(a1 + 260) = v9;
            v10 = *(a1 + 96) - 1;
            *(a1 + 96) = v10;
            v11 = *(a1 + 4 * (v10 & 3) + 100);
            break;
          }

          if (!*(a1 + 280))
          {
            DecodeDistanceBlockSwitch(a1);
          }

          v12 = *(*(a1 + 216) + 8 * *(a1 + 352));
          v13 = *(a1 + 16);
          v14 = *(a1 + 8);
          if (v13 >= 0x30)
          {
            *(a1 + 8) = HIWORD(v14);
            v13 ^= 0x30u;
            v15 = *(a1 + 24);
            v16 = *(a1 + 32);
            *(&v17 + 1) = *v15;
            *&v17 = v14;
            v14 = v17 >> 48;
            *(a1 + 8) = v14;
            *(a1 + 24) = v15 + 6;
            *(a1 + 32) = v16 - 6;
          }

          v18 = v14 >> v13;
          v19 = (v12 + 4 * (v14 >> v13));
          v20 = *v19;
          if (v20 >= 9)
          {
            v13 += 8;
            v19 += 4 * ((v18 >> 8) & ~(-1 << (v20 - 8))) + 4 * *(v19 + 1);
            v20 = *v19;
          }

          v21 = v13 + v20;
          *(a1 + 16) = v21;
          v22 = *(v19 + 1);
          --*(a1 + 280);
          *(a1 + 260) = 0;
          if (v22 > 0xF)
          {
            v25 = *(a1 + 744 + v22);
            if (v21 >= 0x20)
            {
              v21 ^= 0x20u;
              *(a1 + 16) = v21;
              v26 = *(a1 + 24);
              v27 = *(a1 + 32);
              *(&v28 + 1) = *v26;
              *&v28 = v14;
              v14 = v28 >> 32;
              *(a1 + 8) = v14;
              *(a1 + 24) = v26 + 1;
              *(a1 + 32) = v27 - 4;
            }

            v9 = 0;
            *(a1 + 16) = v21 + v25;
            v11 = (((v14 >> v21) & ~(-1 << v25)) << *(a1 + 320)) + *(a1 + 4 * v22 + 1288);
          }

          else
          {
            *(a1 + 360) = v22;
            if (v22 <= 3)
            {
              v23 = ~v22;
              v9 = 1u >> v22;
              *(a1 + 260) = 1u >> v22;
              v24 = *(a1 + 96);
              v11 = *(a1 + 4 * ((v24 + v23) & 3) + 100);
              *(a1 + 360) = v11;
              *(a1 + 96) = v24 - v9;
LABEL_35:
              v32 = *(a1 + 80);
              v31 = *(a1 + 84);
              if (v31 != v32)
              {
                if (v2 >= v32)
                {
                  v31 = *(a1 + 80);
                }

                else
                {
                  v31 = v2;
                }

                *(a1 + 84) = v31;
              }

              v3 = *(a1 + 356);
              if (v11 <= v31)
              {
                v43 = *(a1 + 96);
                v44 = *(a1 + 92) & (v2 - v11);
                v45 = *(a1 + 120);
                v6 = v2;
                v46 = (v45 + v2);
                v47 = (v45 + v44);
                v2 += v3;
                *(a1 + 4 * (v43 & 3) + 100) = v11;
                *(a1 + 96) = v43 + 1;
                *(a1 + 264) -= v3;
                *v46 = *v47;
                v48 = v44 + v3 <= v7 || v2 <= v44;
                if (v48 && ((v49 = *(a1 + 88), v2 < v49) ? (v50 = v44 + v3 < v49) : (v50 = 0), v50))
                {
                  if (v3 >= 17)
                  {
                    if (v3 < 0x21)
                    {
                      v46[1] = v47[1];
                    }

                    else
                    {
                      memcpy(v46 + 1, v47 + 1, (v3 - 16));
                    }
                  }
                }

                else
                {
                  v2 = v7;
LABEL_57:
                  v51 = -v6;
                  v52 = v2 - *(a1 + 88);
                  while (1)
                  {
                    v53 = __OFSUB__(v3, 1);
                    LODWORD(v3) = v3 - 1;
                    if (((v3 & 0x80000000) != 0) != v53)
                    {
                      break;
                    }

                    *(*(a1 + 120) + v6) = *(*(a1 + 120) + ((v6 - *(a1 + 360)) & *(a1 + 92)));
                    ++v6;
                    --v51;
                    if (__CFADD__(v52++, 1))
                    {
                      v2 = -v51;
                      v55 = 16;
                      goto LABEL_75;
                    }
                  }

                  v2 = -v51;
                }
              }

              else
              {
                if (v11 > 2147483644)
                {
                  return 4294967280;
                }

                if ((v3 - 4) > 0x14)
                {
                  return 4294967284;
                }

                v33 = *(a1 + 696);
                v34 = *(a1 + 704);
                v35 = *(v33 + 4 * v3 + 32);
                v36 = *(v33 + v3);
                *(a1 + 96) += v9;
                v37 = *(v33 + 168);
                if (!v37)
                {
                  return 4294967277;
                }

                v38 = v11 + ~v31;
                v39 = v38 >> v36;
                if (v38 >> v36 >= *(v34 + 24))
                {
                  return 4294967285;
                }

                v40 = (*(a1 + 120) + v2);
                v41 = (v37 + v35 + (v38 & ~(-1 << v36)) * v3);
                if (v39 == *(v34 + 48))
                {
                  memcpy(v40, v41, v3);
                  v42 = v3;
                }

                else
                {
                  v42 = BrotliTransformDictionaryWord(v40, v41, v3, v34, v39);
                }

                v2 += v42;
                *(a1 + 264) -= v42;
                if (v2 >= *(a1 + 88))
                {
                  v55 = 15;
                  goto LABEL_75;
                }
              }

              if (*(a1 + 264) <= 0)
              {
                goto LABEL_66;
              }

              while (1)
              {
LABEL_78:
                v56 = *(a1 + 32);
                if (v56 < 0x1C)
                {
                  *a1 = 7;
                  goto LABEL_9;
                }

                v57 = *(a1 + 276);
                if (v57)
                {
                  break;
                }

                DecodeCommandBlockSwitch(a1);
              }

              v58 = *(a1 + 136);
              v59 = *(a1 + 16);
              v60 = *(a1 + 8);
              if (v59 >= 0x30)
              {
                *(a1 + 8) = HIWORD(v60);
                v59 ^= 0x30u;
                v61 = *(a1 + 24);
                *(&v62 + 1) = *v61;
                *&v62 = v60;
                v60 = v62 >> 48;
                *(a1 + 8) = v60;
                v56 -= 6;
                *(a1 + 24) = v61 + 6;
                *(a1 + 32) = v56;
              }

              v63 = v60 >> v59;
              v64 = (v58 + 4 * (v60 >> v59));
              v65 = *v64;
              if (v65 >= 9)
              {
                v59 += 8;
                v64 += 4 * ((v63 >> 8) & ~(-1 << (v65 - 8))) + 4 * *(v64 + 1);
                v65 = *v64;
              }

              v66 = v59 + v65;
              *(a1 + 16) = v66;
              v67 = &kCmdLut + 8 * *(v64 + 1);
              v68 = *v67;
              v69 = v67[1];
              v70 = v67[3];
              *(a1 + 360) = v67[2];
              *(a1 + 260) = v70;
              v71 = *(v67 + 2);
              v72 = *(v67 + 3);
              *(a1 + 352) = *(*(a1 + 160) + v70);
              if (v68)
              {
                if (v66 >= 0x20)
                {
                  v66 ^= 0x20u;
                  *(a1 + 16) = v66;
                  v121 = *(a1 + 24);
                  *(&v122 + 1) = *v121;
                  *&v122 = v60;
                  v60 = v122 >> 32;
                  *(a1 + 8) = v60;
                  v56 -= 4;
                  *(a1 + 24) = v121 + 1;
                  *(a1 + 32) = v56;
                }

                v73 = (v60 >> v66) & ~(-1 << v68);
                v66 += v68;
              }

              else
              {
                v73 = 0;
              }

              if (v66 >= 0x20)
              {
                v66 ^= 0x20u;
                *(a1 + 16) = v66;
                v74 = *(a1 + 24);
                *(&v75 + 1) = *v74;
                *&v75 = v60;
                v60 = v75 >> 32;
                *(a1 + 8) = v60;
                *(a1 + 24) = v74 + 1;
                *(a1 + 32) = v56 - 4;
              }

              *(a1 + 16) = v66 + v69;
              *(a1 + 356) = ((v60 >> v66) & ~(-1 << v69)) + v72;
              *(a1 + 276) = v57 - 1;
              LODWORD(v3) = v73 + v71;
              if (v73 + v71)
              {
                *(a1 + 264) -= v3;
                goto LABEL_90;
              }

              continue;
            }

            v9 = 0;
            if (v22 >= 0xA)
            {
              v29 = -10;
            }

            else
            {
              v29 = -4;
            }

            if (v22 >= 0xA)
            {
              v30 = 2;
            }

            else
            {
              v30 = 3;
            }

            v11 = ((0x605142u >> (4 * (v29 + v22))) & 7) + *(a1 + 4 * ((*(a1 + 96) + v30) & 3) + 100) - 3;
            if (v11 < 1)
            {
              v11 = 0x7FFFFFFF;
            }
          }

          break;
        }

        *(a1 + 360) = v11;
        goto LABEL_35;
      }
    }

    DecodeLiteralBlockSwitch(a1);
    v96 = *(a1 + 16);
    v97 = *(a1 + 8);
    if (v96 >= 0x38)
    {
      *(a1 + 8) = HIBYTE(v97);
      v96 ^= 0x38u;
      *(a1 + 16) = v96;
      v98 = *(a1 + 24);
      v99 = *(a1 + 32);
      *(&v100 + 1) = *v98;
      *&v100 = v97;
      v97 = v100 >> 56;
      *(a1 + 8) = v97;
      *(a1 + 24) = v98 + 7;
      *(a1 + 32) = v99 - 7;
    }

    v101 = *(a1 + 256);
    if (v101)
    {
      v87 = *(a1 + 344);
      v102 = (v87 + 4 * (v97 >> v96));
      v84 = *v102;
      v85 = *(v102 + 1);
      goto LABEL_97;
    }

LABEL_122:
    v76 = v86 + v82;
    LODWORD(v3) = v3 - v82;
  }

  while (v101);
LABEL_111:
  v82 = 0;
  v107 = *(a1 + 120);
  v86 = v76;
  v108 = *(a1 + 92);
  v109 = *(v107 + (v108 & (v76 - 1)));
  v110 = *(v107 + (v108 & (v76 - 2)));
  while (*(a1 + 32) > 0x1BuLL)
  {
    if (!*(a1 + 272))
    {
      DecodeLiteralBlockSwitch(a1);
      v101 = *(a1 + 256);
      if (v101)
      {
        goto LABEL_122;
      }
    }

    v111 = *(*(a1 + 168) + 8 * *(*(a1 + 152) + (*(*(a1 + 144) + v110 + 256) | *(*(a1 + 144) + v109))));
    v112 = *(a1 + 16);
    v113 = *(a1 + 8);
    if (v112 >= 0x30)
    {
      *(a1 + 8) = HIWORD(v113);
      v112 ^= 0x30u;
      v114 = *(a1 + 24);
      v115 = *(a1 + 32);
      *(&v116 + 1) = *v114;
      *&v116 = v113;
      v113 = v116 >> 48;
      *(a1 + 8) = v113;
      *(a1 + 24) = v114 + 6;
      *(a1 + 32) = v115 - 6;
    }

    v117 = v113 >> v112;
    v118 = (v111 + 4 * (v113 >> v112));
    v119 = *v118;
    if (v119 >= 9)
    {
      v112 += 8;
      v118 += 4 * ((v117 >> 8) & ~(-1 << (v119 - 8))) + 4 * *(v118 + 1);
      v119 = *v118;
    }

    *(a1 + 16) = v112 + v119;
    v120 = v118[2];
    *(*(a1 + 120) + v76 + v82) = v120;
    --*(a1 + 272);
    v2 = *(a1 + 88);
    if (v76 + v82 + 1 == v2)
    {
      goto LABEL_128;
    }

    ++v82;
    v110 = v109;
    v109 = v120;
    if (v3 == v82)
    {
      goto LABEL_125;
    }
  }

LABEL_124:
  v2 = v76 + v82;
  *a1 = 8;
  LODWORD(v3) = v3 - v82;
LABEL_9:
  result = 2;
LABEL_10:
  *(a1 + 76) = v2;
  *(a1 + 4) = v3;
  return result;
}

uint64_t SafeProcessCommands(uint64_t a1)
{
  v2 = *(a1 + 76);
  v3 = *a1;
  LODWORD(v4) = *(a1 + 4);
  result = 4294967265;
  if (v3 <= 8)
  {
    if (v3 == 7)
    {
      goto LABEL_15;
    }

    if (v3 != 8)
    {
      return result;
    }

LABEL_45:
    for (i = *(a1 + 256) == 0; ; i = 0)
    {
      *a1 = 8;
      if (!i)
      {
        v69 = v2;
        v70 = *(a1 + 272);
        while (1)
        {
          if (!v70)
          {
            if (!SafeDecodeLiteralBlockSwitch(a1))
            {
              goto LABEL_99;
            }

            if (!*(a1 + 256))
            {
              break;
            }
          }

          v133 = 0;
          v71 = *(a1 + 344);
          v72 = *(a1 + 16);
          if ((v72 - 50) >= 0xF)
          {
            v76 = *(a1 + 8);
LABEL_74:
            v79 = v76 >> v72;
            v80 = &v71[4 * (v76 >> v72)];
            v81 = *v80;
            if (v81 >= 9)
            {
              v72 += 8;
              v80 += 4 * (BYTE1(v79) & ~(-1 << (v81 - 8)) & 0x7F) + 4 * *(v80 + 1);
              v81 = *v80;
            }

            *(a1 + 16) = v72 + v81;
            v82 = *(v80 + 1);
          }

          else
          {
            v73 = *(a1 + 32) - 1;
            while (v73 != -1)
            {
              v74 = *(a1 + 8);
              *(a1 + 8) = v74 >> 8;
              v75 = *(a1 + 24);
              *(&v77 + 1) = *v75;
              *&v77 = v74;
              v76 = v77 >> 8;
              *(a1 + 8) = v76;
              v78 = v72 - 8;
              *(a1 + 16) = v72 - 8;
              *(a1 + 24) = v75 + 1;
              *(a1 + 32) = v73--;
              LODWORD(v75) = v72 - 58;
              v72 -= 8;
              if (v75 >= 0xF)
              {
                v72 = v78;
                goto LABEL_74;
              }
            }

            if (!SafeDecodeSymbol(v71, a1 + 8, &v133))
            {
LABEL_99:
              result = 2;
LABEL_100:
              v2 = v69;
              goto LABEL_156;
            }

            LOBYTE(v82) = v133;
          }

          *(*(a1 + 120) + v69) = v82;
          v70 = *(a1 + 272) - 1;
          *(a1 + 272) = v70;
          ++v69;
          v2 = *(a1 + 88);
          if (v2 == v69)
          {
LABEL_165:
            *a1 = 13;
            LODWORD(v4) = v4 - 1;
LABEL_164:
            result = 1;
LABEL_156:
            *(a1 + 76) = v2;
            *(a1 + 4) = v4;
            return result;
          }

          LODWORD(v4) = v4 - 1;
          if (!v4)
          {
LABEL_85:
            if (*(a1 + 264) <= 0)
            {
              LODWORD(v4) = 0;
              *a1 = 14;
              result = 1;
              goto LABEL_100;
            }

            LODWORD(v4) = 0;
            v2 = v69;
LABEL_88:
            while (2)
            {
              *a1 = 9;
              v83 = *(a1 + 360);
              if ((v83 & 0x80000000) == 0)
              {
                v84 = v83 == 0;
                *(a1 + 260) = v84;
                v85 = *(a1 + 96) - 1;
                *(a1 + 96) = v85;
                v86 = *(a1 + 4 * (v85 & 3) + 100);
                break;
              }

              if (!*(a1 + 280) && !SafeDecodeDistanceBlockSwitch(a1))
              {
                goto LABEL_155;
              }

              v87 = a1 + 744;
              v133 = 0;
              v88 = *(*(a1 + 216) + 8 * *(a1 + 352));
              v12 = *(a1 + 8);
              v13 = *(a1 + 16);
              v14 = *(a1 + 24);
              v15 = *(a1 + 32);
              v89 = v12;
              v90 = v13;
              if ((v13 - 50) > 0xE)
              {
LABEL_95:
                v96 = v89 >> v90;
                v97 = &v88[4 * (v89 >> v90)];
                v98 = *v97;
                if (v98 >= 9)
                {
                  v90 += 8;
                  v97 += 4 * (BYTE1(v96) & ~(-1 << (v98 - 8)) & 0x7F) + 4 * *(v97 + 1);
                  v98 = *v97;
                }

                *(a1 + 16) = v90 + v98;
                v99 = *(v97 + 1);
              }

              else
              {
                v91 = v14 + 1;
                v92 = v15 - 1;
                v89 = *(a1 + 8);
                v93 = *(a1 + 16);
                while (v92 != -1)
                {
                  *(a1 + 8) = v89 >> 8;
                  *(&v94 + 1) = *(v91 - 1);
                  *&v94 = v89;
                  v89 = v94 >> 8;
                  *(a1 + 8) = v89;
                  v90 = v93 - 8;
                  *(a1 + 16) = v93 - 8;
                  *(a1 + 24) = v91;
                  *(a1 + 32) = v92;
                  ++v91;
                  --v92;
                  v95 = v93 - 58;
                  v93 -= 8;
                  if (v95 >= 0xF)
                  {
                    goto LABEL_95;
                  }
                }

                if (!SafeDecodeSymbol(v88, a1 + 8, &v133))
                {
                  goto LABEL_155;
                }

                v99 = v133;
              }

              v100 = *(a1 + 280);
              *(a1 + 280) = v100 - 1;
              *(a1 + 260) = 0;
              if (v99 > 0xF)
              {
                v102 = 0;
                v103 = *(v87 + v99);
                if (*(v87 + v99))
                {
                  v104 = *(a1 + 16);
                  v105 = 64 - v104;
                  if (64 - v104 < v103)
                  {
                    v106 = *(a1 + 32) - 1;
                    while (v106 != -1)
                    {
                      v107 = *(a1 + 8);
                      *(a1 + 8) = v107 >> 8;
                      v108 = *(a1 + 24);
                      *(&v110 + 1) = *v108;
                      *&v110 = v107;
                      v109 = v110 >> 8;
                      *(a1 + 8) = v109;
                      v104 -= 8;
                      *(a1 + 16) = v104;
                      *(a1 + 24) = v108 + 1;
                      *(a1 + 32) = v106--;
                      v105 += 8;
                      if (v105 >= v103)
                      {
                        goto LABEL_122;
                      }
                    }

                    *(a1 + 280) = v100;
                    goto LABEL_154;
                  }

                  v109 = *(a1 + 8);
LABEL_122:
                  v102 = (v109 >> v104) & ~(-1 << v103);
                  *(a1 + 16) = v104 + v103;
                }

                v84 = 0;
                v86 = (v102 << *(a1 + 320)) + *(a1 + 4 * v99 + 1288);
              }

              else
              {
                *(a1 + 360) = v99;
                if (v99 <= 3)
                {
                  v84 = 1u >> v99;
                  *(a1 + 260) = 1u >> v99;
                  v101 = *(a1 + 96);
                  v86 = *(a1 + 4 * ((v101 + ~v99) & 3) + 100);
                  *(a1 + 360) = v86;
                  *(a1 + 96) = v101 - v84;
LABEL_125:
                  v114 = *(a1 + 80);
                  v113 = *(a1 + 84);
                  if (v113 != v114)
                  {
                    if (v2 >= v114)
                    {
                      v113 = *(a1 + 80);
                    }

                    else
                    {
                      v113 = v2;
                    }

                    *(a1 + 84) = v113;
                  }

                  v4 = *(a1 + 356);
                  if (v86 <= v113)
                  {
                    v125 = *(a1 + 96);
                    v126 = *(a1 + 92) & (v2 - v86);
                    v127 = *(a1 + 120);
                    v6 = v2;
                    v128 = (v127 + v2);
                    v129 = (v127 + v126);
                    v130 = v4 + v2;
                    *(a1 + 4 * (v125 & 3) + 100) = v86;
                    *(a1 + 96) = v125 + 1;
                    *(a1 + 264) -= v4;
                    *v128 = *v129;
                    if (v126 + v4 > v2 && v130 > v126)
                    {
                      goto LABEL_8;
                    }

                    v132 = *(a1 + 88);
                    if (v130 >= v132 || v126 + v4 >= v132)
                    {
                      goto LABEL_8;
                    }

                    if (v4 >= 17)
                    {
                      if (v4 < 0x21)
                      {
                        v128[1] = v129[1];
                      }

                      else
                      {
                        memcpy(v128 + 1, v129 + 1, (v4 - 16));
                      }
                    }
                  }

                  else
                  {
                    if (v86 > 2147483644)
                    {
                      return 4294967280;
                    }

                    if ((v4 - 4) > 0x14)
                    {
                      return 4294967284;
                    }

                    v115 = *(a1 + 696);
                    v116 = *(a1 + 704);
                    v117 = *(v115 + 4 * v4 + 32);
                    v118 = *(v115 + v4);
                    *(a1 + 96) += v84;
                    v119 = *(v115 + 168);
                    if (!v119)
                    {
                      return 4294967277;
                    }

                    v120 = v86 + ~v113;
                    v121 = v120 >> v118;
                    if (v120 >> v118 >= *(v116 + 24))
                    {
                      return 4294967285;
                    }

                    v122 = (*(a1 + 120) + v2);
                    v123 = (v119 + v117 + (v120 & ~(-1 << v118)) * v4);
                    if (v121 == *(v116 + 48))
                    {
                      memcpy(v122, v123, v4);
                      v124 = v4;
                    }

                    else
                    {
                      v124 = BrotliTransformDictionaryWord(v122, v123, v4, v116, v121);
                    }

                    v2 += v124;
                    *(a1 + 264) -= v124;
                    if (v2 >= *(a1 + 88))
                    {
                      v11 = 15;
                      goto LABEL_163;
                    }

                    v130 = v2;
                  }

                  if (*(a1 + 264) <= 0)
                  {
                    *a1 = 14;
                    result = 1;
                    v2 = v130;
                    goto LABEL_156;
                  }

                  v2 = v130;
LABEL_15:
                  while (1)
                  {
                    *a1 = 7;
                    if (*(a1 + 276))
                    {
                      break;
                    }

                    if (!SafeDecodeCommandBlockSwitch(a1))
                    {
                      goto LABEL_155;
                    }
                  }

                  v133 = 0;
                  v12 = *(a1 + 8);
                  v13 = *(a1 + 16);
                  v14 = *(a1 + 24);
                  v15 = *(a1 + 32);
                  v16 = *(a1 + 136);
                  v17 = v12;
                  v18 = v13;
                  if ((v13 - 50) > 0xE)
                  {
LABEL_22:
                    v24 = v17 >> v18;
                    v25 = &v16[4 * (v17 >> v18)];
                    v26 = *v25;
                    if (v26 >= 9)
                    {
                      v18 += 8;
                      v25 += 4 * (BYTE1(v24) & ~(-1 << (v26 - 8)) & 0x7F) + 4 * *(v25 + 1);
                      v26 = *v25;
                    }

                    *(a1 + 16) = v18 + v26;
                    v27 = *(v25 + 1);
                    v133 = v27;
                  }

                  else
                  {
                    v19 = v14 + 1;
                    v20 = v15 - 1;
                    v17 = *(a1 + 8);
                    v21 = *(a1 + 16);
                    while (v20 != -1)
                    {
                      *(a1 + 8) = v17 >> 8;
                      *(&v22 + 1) = *(v19 - 1);
                      *&v22 = v17;
                      v17 = v22 >> 8;
                      *(a1 + 8) = v17;
                      v18 = v21 - 8;
                      *(a1 + 16) = v21 - 8;
                      *(a1 + 24) = v19;
                      *(a1 + 32) = v20;
                      ++v19;
                      --v20;
                      v23 = v21 - 58;
                      v21 -= 8;
                      if (v23 >= 0xF)
                      {
                        goto LABEL_22;
                      }
                    }

                    if (!SafeDecodeSymbol(v16, a1 + 8, &v133))
                    {
                      goto LABEL_155;
                    }

                    v27 = v133;
                  }

                  v28 = 0;
                  v29 = &kCmdLut + 8 * v27;
                  v30 = *v29;
                  v31 = v29[1];
                  v32 = v29[2];
                  v33 = v29[3];
                  LODWORD(v4) = *(v29 + 2);
                  v34 = *(v29 + 3);
                  *(a1 + 360) = v32;
                  *(a1 + 260) = v33;
                  *(a1 + 352) = *(*(a1 + 160) + v33);
                  if (v30)
                  {
                    v35 = *(a1 + 16);
                    v36 = 64 - v35;
                    if (64 - v35 < v30)
                    {
                      v37 = *(a1 + 32) - 1;
                      while (v37 != -1)
                      {
                        v38 = *(a1 + 8);
                        *(a1 + 8) = v38 >> 8;
                        v39 = *(a1 + 24);
                        *(&v41 + 1) = *v39;
                        *&v41 = v38;
                        v40 = v41 >> 8;
                        *(a1 + 8) = v40;
                        v35 -= 8;
                        *(a1 + 16) = v35;
                        *(a1 + 24) = v39 + 1;
                        *(a1 + 32) = v37--;
                        v36 += 8;
                        if (v36 >= v30)
                        {
                          goto LABEL_34;
                        }
                      }

                      goto LABEL_154;
                    }

                    v40 = *(a1 + 8);
LABEL_34:
                    v28 = (v40 >> v35) & ~(-1 << v30);
                    *(a1 + 16) = v35 + v30;
                  }

                  v42 = 0;
                  if (v31)
                  {
                    v43 = *(a1 + 16);
                    v44 = 64 - v43;
                    if (64 - v43 < v31)
                    {
                      v45 = *(a1 + 32) - 1;
                      while (v45 != -1)
                      {
                        v46 = *(a1 + 8);
                        *(a1 + 8) = v46 >> 8;
                        v47 = *(a1 + 24);
                        *(&v49 + 1) = *v47;
                        *&v49 = v46;
                        v48 = v49 >> 8;
                        *(a1 + 8) = v48;
                        v43 -= 8;
                        *(a1 + 16) = v43;
                        *(a1 + 24) = v47 + 1;
                        *(a1 + 32) = v45--;
                        v44 += 8;
                        if (v44 >= v31)
                        {
                          goto LABEL_42;
                        }
                      }

LABEL_154:
                      *(a1 + 8) = v12;
                      *(a1 + 16) = v13;
                      *(a1 + 24) = v14;
                      *(a1 + 32) = v15;
LABEL_155:
                      result = 2;
                      goto LABEL_156;
                    }

                    v48 = *(a1 + 8);
LABEL_42:
                    v42 = (v48 >> v43) & ~(-1 << v31);
                    *(a1 + 16) = v43 + v31;
                  }

                  *(a1 + 356) = v42 + v34;
                  --*(a1 + 276);
                  if (v28 + v4)
                  {
                    *(a1 + 264) -= v28 + v4;
                    LODWORD(v4) = v28 + v4;
                    goto LABEL_45;
                  }

                  LODWORD(v4) = 0;
                  continue;
                }

                v84 = 0;
                if (v99 >= 0xA)
                {
                  v111 = 10;
                }

                else
                {
                  v111 = 3;
                }

                if (v99 >= 0xA)
                {
                  v112 = -10;
                }

                else
                {
                  v112 = -4;
                }

                v86 = ((0x605142u >> (4 * (v112 + v99))) & 7) + *(a1 + 4 * ((*(a1 + 96) + v111) & 3) + 100) - 3;
                if (v86 < 1)
                {
                  v86 = 0x7FFFFFFF;
                }
              }

              break;
            }

            *(a1 + 360) = v86;
            goto LABEL_125;
          }
        }

        *a1 = 8;
        v2 = v69;
      }

      v51 = *(a1 + 120);
      v52 = v2;
      v53 = *(a1 + 92);
      v54 = *(v51 + (v53 & (v2 - 1)));
      v55 = *(v51 + (v53 & (v2 - 2)));
      v56 = *(a1 + 272);
      while (1)
      {
        if (!v56)
        {
          if (!SafeDecodeLiteralBlockSwitch(a1))
          {
            goto LABEL_98;
          }

          if (*(a1 + 256))
          {
            break;
          }
        }

        v57 = *(*(a1 + 168) + 8 * *(*(a1 + 152) + (*(*(a1 + 144) + v55 + 256) | *(*(a1 + 144) + v54))));
        v133 = 0;
        v58 = *(a1 + 16);
        if ((v58 - 50) >= 0xF)
        {
          v62 = *(a1 + 8);
LABEL_55:
          v65 = v62 >> v58;
          v66 = &v57[4 * (v62 >> v58)];
          v67 = *v66;
          if (v67 >= 9)
          {
            v58 += 8;
            v66 += 4 * (BYTE1(v65) & ~(-1 << (v67 - 8)) & 0x7F) + 4 * *(v66 + 1);
            v67 = *v66;
          }

          *(a1 + 16) = v58 + v67;
          v68 = v66[2];
        }

        else
        {
          v59 = *(a1 + 32) - 1;
          while (v59 != -1)
          {
            v60 = *(a1 + 8);
            *(a1 + 8) = v60 >> 8;
            v61 = *(a1 + 24);
            *(&v63 + 1) = *v61;
            *&v63 = v60;
            v62 = v63 >> 8;
            *(a1 + 8) = v62;
            v64 = v58 - 8;
            *(a1 + 16) = v58 - 8;
            *(a1 + 24) = v61 + 1;
            *(a1 + 32) = v59--;
            LODWORD(v61) = v58 - 58;
            v58 -= 8;
            if (v61 >= 0xF)
            {
              v58 = v64;
              goto LABEL_55;
            }
          }

          if (!SafeDecodeSymbol(v57, a1 + 8, &v133))
          {
LABEL_98:
            result = 2;
            v2 = v52;
            goto LABEL_156;
          }

          v68 = v133;
        }

        *(*(a1 + 120) + v52) = v68;
        v56 = *(a1 + 272) - 1;
        *(a1 + 272) = v56;
        ++v52;
        v2 = *(a1 + 88);
        if (v2 == v52)
        {
          goto LABEL_165;
        }

        v55 = v54;
        v54 = v68;
        LODWORD(v69) = v52;
        LODWORD(v4) = v4 - 1;
        if (!v4)
        {
          goto LABEL_85;
        }
      }

      v2 = v52;
    }
  }

  if (v3 == 9)
  {
    goto LABEL_88;
  }

  if (v3 == 10)
  {
    v6 = v2;
LABEL_8:
    v7 = -v6;
    v8 = v2 - *(a1 + 88);
    while (1)
    {
      v9 = __OFSUB__(v4, 1);
      LODWORD(v4) = v4 - 1;
      if (((v4 & 0x80000000) != 0) != v9)
      {
        break;
      }

      *(*(a1 + 120) + v6) = *(*(a1 + 120) + ((v6 - *(a1 + 360)) & *(a1 + 92)));
      ++v6;
      --v7;
      if (__CFADD__(v8++, 1))
      {
        v2 = -v7;
        v11 = 16;
        goto LABEL_163;
      }
    }

    v2 = -v7;
    if (*(a1 + 264) > 0)
    {
      goto LABEL_15;
    }

    v11 = 14;
LABEL_163:
    *a1 = v11;
    goto LABEL_164;
  }

  return result;
}

void **WrapRingBuffer(void **result)
{
  if ((result[83] & 8) != 0)
  {
    v1 = result;
    result = memcpy(result[15], v1[16], *(v1 + 19));
    *(v1 + 332) &= ~8u;
  }

  return result;
}

uint64_t SafeDecodeSymbol(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 8);
  if (v3 == 64)
  {
    if (!*a1)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v4 = 64 - v3;
  v5 = *a2 >> v3;
  a1 += 4 * v5;
  v6 = *a1;
  if (v6 > 8)
  {
    if (v4 < 9)
    {
      return 0;
    }

    a1 += 4 * *(a1 + 1) + 4 * ((v5 & ~(-1 << v6)) >> 8);
    v8 = *a1;
    if (56 - v3 < v8)
    {
      return 0;
    }

    v7 = v3 + v8 + 8;
  }

  else
  {
    if (v4 < v6)
    {
      return 0;
    }

    v7 = v3 + v6;
  }

  *(a2 + 8) = v7;
LABEL_12:
  *a3 = *(a1 + 1);
  return 1;
}

unsigned __int8 *InverseMoveToFrontTransform(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 384);
  v7 = (a3 + 392);
  *(a3 + 392) = 50462976;
  if ((v6 + 1) > 2)
  {
    v8 = (v6 + 1);
  }

  else
  {
    v8 = 2;
  }

  v9 = (v8 + 2) & 0x1FFFFFFFCLL;
  v10 = vdupq_n_s64(v8 - 2);
  v11 = xmmword_3A74C0;
  v12 = a3 + 408;
  v13.i64[0] = 0x404040404040404;
  v13.i64[1] = 0x404040404040404;
  v14.i64[0] = 0x1010101010101010;
  v14.i64[1] = 0x1010101010101010;
  do
  {
    v15 = vdupq_n_s64(v5);
    v16 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v15, xmmword_33E760)));
    v17 = vaddq_s32(v11, v13);
    if (vuzp1_s16(v16, *v10.i8).u8[0])
    {
      *(v12 - 12) = v17.i32[0];
    }

    if (vuzp1_s16(v16, *&v10).i8[2])
    {
      *(v12 - 8) = v17.i32[1];
    }

    if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v15, xmmword_3419E0)))).i32[1])
    {
      *(v12 - 4) = v17.i64[1];
    }

    v5 += 4;
    v11 = vaddq_s32(v11, v14);
    v12 += 16;
  }

  while (v9 != v5);
  if (a2)
  {
    v18 = 0;
    v19 = a2;
    do
    {
      v20 = *v4;
      v21 = v7[v20];
      *v4++ = v21;
      *(a3 + 391) = v21;
      result = memmove(v7, (a3 + 391), v20 + 1);
      v18 |= v20;
      --v19;
    }

    while (v19);
    v22 = v18 >> 2;
  }

  else
  {
    v22 = 0;
  }

  *(a3 + 384) = v22;
  return result;
}

uint64_t SafeDecodeCommandBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  v4 = (*(a1 + 240) + 2528);
  v45 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v4[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v45 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!SafeDecodeSymbol(v4, a1 + 8, &v45))
    {
      return 0;
    }
  }

  v46 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = (v3 + 1584);
    v21 = *(a1 + 16);
    if ((v21 - 50) >= 0xF)
    {
      v25 = *(a1 + 8);
LABEL_19:
      v28 = v25 >> v21;
      v29 = &v20[4 * (v25 >> v21)];
      v30 = *v29;
      if (v30 >= 9)
      {
        v21 += 8;
        v29 += 4 * (BYTE1(v28) & ~(-1 << (v30 - 8)) & 0x7F) + 4 * *(v29 + 1);
        v30 = *v29;
      }

      *(a1 + 16) = v21 + v30;
      v19 = *(v29 + 1);
    }

    else
    {
      v22 = *(a1 + 32) - 1;
      while (v22 != -1)
      {
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 >> 8;
        v24 = *(a1 + 24);
        *(&v26 + 1) = *v24;
        *&v26 = v23;
        v25 = v26 >> 8;
        *(a1 + 8) = v25;
        v27 = v21 - 8;
        *(a1 + 16) = v21 - 8;
        *(a1 + 24) = v24 + 1;
        *(a1 + 32) = v22--;
        LODWORD(v24) = v21 - 58;
        v21 -= 8;
        if (v24 >= 0xF)
        {
          v21 = v27;
          goto LABEL_19;
        }
      }

      if (!SafeDecodeSymbol(v20, a1 + 8, &v46))
      {
        goto LABEL_32;
      }

      v19 = v46;
    }
  }

  v31 = (&_kBrotliPrefixCodeRanges + 4 * v19);
  v32 = *(v31 + 2);
  v33 = *v31;
  v34 = *(a1 + 16);
  v35 = 64 - v34;
  if (64 - v34 < v32)
  {
    v36 = *(a1 + 32) - 1;
    while (v36 != -1)
    {
      v37 = *(a1 + 8);
      *(a1 + 8) = v37 >> 8;
      v38 = *(a1 + 24);
      *(&v40 + 1) = *v38;
      *&v40 = v37;
      v39 = v40 >> 8;
      *(a1 + 8) = v39;
      v34 -= 8;
      *(a1 + 16) = v34;
      *(a1 + 24) = v38 + 1;
      *(a1 + 32) = v36--;
      v35 += 8;
      if (v35 >= v32)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v39 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v34 + v32;
  *(a1 + 276) = ((v39 >> v34) & ~(-1 << v32)) + v33;
  *(a1 + 660) = 0;
  if (v45)
  {
    if (v45 == 1)
    {
      v41 = *(a1 + 308) + 1;
    }

    else
    {
      v41 = v45 - 2;
    }
  }

  else
  {
    v41 = *(a1 + 304);
  }

  if (v41 >= v1)
  {
    v43 = v1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v41 - v43;
  *(a1 + 304) = *(a1 + 308);
  *(a1 + 308) = v44;
  *(a1 + 136) = *(*(a1 + 192) + 8 * v44);
  return 1;
}

uint64_t DecodeCommandBlockSwitch(uint64_t result)
{
  v1 = *(result + 288);
  if (v1 >= 2)
  {
    v2 = *(result + 240) + 2528;
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248) + 1584;
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&_kBrotliPrefixCodeRanges + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 276) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 308) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 304);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 304) = *(result + 308);
    *(result + 308) = v28;
    *(result + 136) = *(*(result + 192) + 8 * v28);
  }

  return result;
}

uint64_t SafeDecodeLiteralBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 284);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 240);
  v4 = *(a1 + 248);
  v46 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v3[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v46 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!SafeDecodeSymbol(v3, a1 + 8, &v46))
    {
      return 0;
    }
  }

  v47 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = *(a1 + 16);
    if ((v20 - 50) >= 0xF)
    {
      v24 = *(a1 + 8);
LABEL_19:
      v27 = v24 >> v20;
      v28 = &v4[4 * (v24 >> v20)];
      v29 = *v28;
      if (v29 >= 9)
      {
        v20 += 8;
        v28 += 4 * (BYTE1(v27) & ~(-1 << (v29 - 8)) & 0x7F) + 4 * *(v28 + 1);
        v29 = *v28;
      }

      *(a1 + 16) = v20 + v29;
      v19 = *(v28 + 1);
    }

    else
    {
      v21 = *(a1 + 32) - 1;
      while (v21 != -1)
      {
        v22 = *(a1 + 8);
        *(a1 + 8) = v22 >> 8;
        v23 = *(a1 + 24);
        *(&v25 + 1) = *v23;
        *&v25 = v22;
        v24 = v25 >> 8;
        *(a1 + 8) = v24;
        v26 = v20 - 8;
        *(a1 + 16) = v20 - 8;
        *(a1 + 24) = v23 + 1;
        *(a1 + 32) = v21--;
        LODWORD(v23) = v20 - 58;
        v20 -= 8;
        if (v23 >= 0xF)
        {
          v20 = v26;
          goto LABEL_19;
        }
      }

      if (!SafeDecodeSymbol(v4, a1 + 8, &v47))
      {
        goto LABEL_32;
      }

      v19 = v47;
    }
  }

  v30 = (&_kBrotliPrefixCodeRanges + 4 * v19);
  v31 = *(v30 + 2);
  v32 = *v30;
  v33 = *(a1 + 16);
  v34 = 64 - v33;
  if (64 - v33 < v31)
  {
    v35 = *(a1 + 32) - 1;
    while (v35 != -1)
    {
      v36 = *(a1 + 8);
      *(a1 + 8) = v36 >> 8;
      v37 = *(a1 + 24);
      *(&v39 + 1) = *v37;
      *&v39 = v36;
      v38 = v39 >> 8;
      *(a1 + 8) = v38;
      v33 -= 8;
      *(a1 + 16) = v33;
      *(a1 + 24) = v37 + 1;
      *(a1 + 32) = v35--;
      v34 += 8;
      if (v34 >= v31)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v38 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v33 + v31;
  *(a1 + 272) = ((v38 >> v33) & ~(-1 << v31)) + v32;
  *(a1 + 660) = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      v40 = *(a1 + 300) + 1;
    }

    else
    {
      v40 = v46 - 2;
    }
  }

  else
  {
    v40 = *(a1 + 296);
  }

  if (v40 >= v1)
  {
    v42 = v1;
  }

  else
  {
    v42 = 0;
  }

  v43 = v40 - v42;
  *(a1 + 296) = *(a1 + 300);
  *(a1 + 300) = v43;
  v44 = v43 << 6;
  v45 = *(a1 + 680);
  *(a1 + 152) = v45 + v44;
  *(a1 + 256) = (*(a1 + 4 * (v43 >> 5) + 712) >> v43) & 1;
  *(a1 + 344) = *(*(a1 + 168) + 8 * *(v45 + v44));
  *(a1 + 144) = &_kBrotliContextLookupTable[512 * (*(*(a1 + 688) + v43) & 3)];
  return 1;
}

uint64_t DecodeLiteralBlockSwitch(uint64_t result)
{
  v1 = *(result + 284);
  if (v1 >= 2)
  {
    v2 = *(result + 240);
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248);
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&_kBrotliPrefixCodeRanges + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 272) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 300) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 296);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 296) = *(result + 300);
    *(result + 300) = v28;
    v29 = v28 << 6;
    v30 = *(result + 680);
    *(result + 152) = v30 + v29;
    *(result + 256) = (*(result + 4 * (v28 >> 5) + 712) >> v28) & 1;
    *(result + 344) = *(*(result + 168) + 8 * *(v30 + v29));
    *(result + 144) = &_kBrotliContextLookupTable + 512 * (*(*(result + 688) + v28) & 3);
  }

  return result;
}

uint64_t SafeDecodeDistanceBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 292);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  v4 = (*(a1 + 240) + 5056);
  v46 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v4[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v46 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!SafeDecodeSymbol(v4, a1 + 8, &v46))
    {
      return 0;
    }
  }

  v47 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = (v3 + 3168);
    v21 = *(a1 + 16);
    if ((v21 - 50) >= 0xF)
    {
      v25 = *(a1 + 8);
LABEL_19:
      v28 = v25 >> v21;
      v29 = &v20[4 * (v25 >> v21)];
      v30 = *v29;
      if (v30 >= 9)
      {
        v21 += 8;
        v29 += 4 * (BYTE1(v28) & ~(-1 << (v30 - 8)) & 0x7F) + 4 * *(v29 + 1);
        v30 = *v29;
      }

      *(a1 + 16) = v21 + v30;
      v19 = *(v29 + 1);
    }

    else
    {
      v22 = *(a1 + 32) - 1;
      while (v22 != -1)
      {
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 >> 8;
        v24 = *(a1 + 24);
        *(&v26 + 1) = *v24;
        *&v26 = v23;
        v25 = v26 >> 8;
        *(a1 + 8) = v25;
        v27 = v21 - 8;
        *(a1 + 16) = v21 - 8;
        *(a1 + 24) = v24 + 1;
        *(a1 + 32) = v22--;
        LODWORD(v24) = v21 - 58;
        v21 -= 8;
        if (v24 >= 0xF)
        {
          v21 = v27;
          goto LABEL_19;
        }
      }

      if (!SafeDecodeSymbol(v20, a1 + 8, &v47))
      {
        goto LABEL_32;
      }

      v19 = v47;
    }
  }

  v31 = (&_kBrotliPrefixCodeRanges + 4 * v19);
  v32 = *(v31 + 2);
  v33 = *v31;
  v34 = *(a1 + 16);
  v35 = 64 - v34;
  if (64 - v34 < v32)
  {
    v36 = *(a1 + 32) - 1;
    while (v36 != -1)
    {
      v37 = *(a1 + 8);
      *(a1 + 8) = v37 >> 8;
      v38 = *(a1 + 24);
      *(&v40 + 1) = *v38;
      *&v40 = v37;
      v39 = v40 >> 8;
      *(a1 + 8) = v39;
      v34 -= 8;
      *(a1 + 16) = v34;
      *(a1 + 24) = v38 + 1;
      *(a1 + 32) = v36--;
      v35 += 8;
      if (v35 >= v32)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v39 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v34 + v32;
  *(a1 + 280) = ((v39 >> v34) & ~(-1 << v32)) + v33;
  *(a1 + 660) = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      v41 = *(a1 + 316) + 1;
    }

    else
    {
      v41 = v46 - 2;
    }
  }

  else
  {
    v41 = *(a1 + 312);
  }

  if (v41 >= v1)
  {
    v43 = v1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v41 - v43;
  *(a1 + 312) = *(a1 + 316);
  *(a1 + 316) = v44;
  v45 = *(a1 + 336) + 4 * v44;
  *(a1 + 160) = v45;
  *(a1 + 352) = *(v45 + *(a1 + 260));
  return 1;
}

uint64_t DecodeDistanceBlockSwitch(uint64_t result)
{
  v1 = *(result + 292);
  if (v1 >= 2)
  {
    v2 = *(result + 240) + 5056;
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248) + 3168;
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&_kBrotliPrefixCodeRanges + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 280) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 316) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 312);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 312) = *(result + 316);
    *(result + 316) = v28;
    v29 = *(result + 336) + 4 * v28;
    *(result + 160) = v29;
    *(result + 352) = *(v29 + *(result + 260));
  }

  return result;
}

uint64_t BrotliInitMemoryManager(uint64_t result, void *(*a2)(int a1, size_t __size), void (*a3)(int a1, void *a2), uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = BrotliDefaultAllocFunc;
  }

  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = BrotliDefaultFreeFunc;
  }

  *result = v4;
  *(result + 8) = v5;
  if (a2)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  *(result + 16) = v6;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t BrotliAllocate(uint64_t a1)
{
  v2 = (*a1)(*(a1 + 16));
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3 == 64)
    {
      CollectGarbagePointers(a1);
      v3 = *(a1 + 40);
    }

    *(a1 + 40) = v3 + 1;
    *(a1 + 8 * v3 + 1080) = v2;
  }

  else
  {
    *(a1 + 24) = 1;
  }

  return v2;
}

uint64_t CollectGarbagePointers(unint64_t *a1)
{
  v2 = (a1 + 7);
  SortPointers((a1 + 135), a1[5]);
  SortPointers((a1 + 199), a1[6]);
  result = Annihilate((a1 + 135), a1[5], (a1 + 199), a1[6]);
  v4 = a1[6];
  v5 = a1[5] - result;
  a1[5] = v5;
  a1[6] = v4 - result;
  if (v4 != result)
  {
    result = Annihilate(v2, a1[4], (a1 + 199), v4 - result);
    v5 = a1[5];
    a1[4] -= result;
    a1[6] -= result;
  }

  if (v5)
  {
    memcpy((v2 + 8 * a1[4]), a1 + 135, 8 * v5);
    v6 = a1[4] + a1[5];
    a1[4] = v6;
    a1[5] = 0;

    return SortPointers(v2, v6);
  }

  return result;
}

uint64_t BrotliFree(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = (*(result + 8))(*(result + 16));
    v4 = v3[6];
    if (v4 == 64)
    {
      result = CollectGarbagePointers(v3);
      v4 = v3[6];
    }

    v3[6] = v4 + 1;
    v3[v4 + 199] = a2;
  }

  return result;
}

uint64_t BrotliWipeOutMemoryManager(uint64_t a1)
{
  result = CollectGarbagePointers(a1);
  if (*(a1 + 32))
  {
    v3 = 0;
    do
    {
      result = (*(a1 + 8))(*(a1 + 16), *(a1 + 56 + 8 * v3++));
    }

    while (v3 < *(a1 + 32));
  }

  *(a1 + 32) = 0;
  return result;
}

uint64_t SortPointers(uint64_t result, unint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = SortPointers_gaps[i];
    if (v3 < a2)
    {
      v4 = result + 8 * v3;
      v5 = result;
      v6 = SortPointers_gaps[i];
      do
      {
        v7 = *(result + 8 * v6);
        v8 = v6;
        if (v6 >= v3)
        {
          v9 = 0;
          while (1)
          {
            v10 = *(v5 + 8 * v9);
            if (v7 >= v10)
            {
              break;
            }

            *(v4 + 8 * v9) = v10;
            v9 -= v3;
            v8 = v6 + v9;
            if (v6 + v9 < v3)
            {
              goto LABEL_10;
            }
          }

          v8 = v6 + v9;
        }

LABEL_10:
        *(result + 8 * v8) = v7;
        ++v6;
        v4 += 8;
        v5 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t Annihilate(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  result = 0;
  if (a2 && a4)
  {
    result = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    do
    {
      v10 = *(a1 + 8 * v5);
      v11 = *(a3 + 8 * v6);
      if (v10 == v11)
      {
        ++v5;
        ++v6;
        ++result;
      }

      else if (v10 >= v11)
      {
        ++v6;
        *(a3 + 8 * v8++) = v11;
      }

      else
      {
        ++v5;
        *(a1 + 8 * v7++) = v10;
      }
    }

    while (v5 < a2 && v6 < a4);
  }

  v12 = a2 - v5;
  if (a2 > v5)
  {
    v13 = (a1 + 8 * v7);
    v14 = (a1 + 8 * v5);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v12;
    }

    while (v12);
  }

  v16 = a4 - v6;
  if (a4 > v6)
  {
    v17 = (a3 + 8 * v8);
    v18 = (a3 + 8 * v6);
    do
    {
      v19 = *v18++;
      *v17++ = v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t lzfseDecode(uint64_t a1)
{
  v2 = &__dst[16] + 2;
  v3 = a1 + 3208;
  v4 = a1 + 136;
  v158 = a1 + 1160;
  v159 = a1 + 648;
  v160 = (a1 + 7308);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a1 + 52);
          result = 4294967293;
          if (v5 <= 829978209)
          {
            break;
          }

          if (v5 == 829978210 || v5 == 846755426)
          {
            v8 = *(a1 + 16);
            v9 = v8 > *a1;
            v10 = v8 - *a1;
            if (!v9 || v10 < *(a1 + 76))
            {
              return 0xFFFFFFFFLL;
            }

            result = lzfse_decode_lmd(a1);
            if (result)
            {
              return result;
            }

            *(a1 + 52) = 0;
            *a1 += *(a1 + 76);
          }

          else
          {
            if (v5 != 1853388386)
            {
              return result;
            }

            v18 = *(a1 + 60);
            v19 = *a1;
            v20 = *(a1 + 16);
            if (v18 && v20 <= v19)
            {
              return 0xFFFFFFFFLL;
            }

            *(&__dst[4] + 8) = 0u;
            *(&__dst[3] + 8) = 0u;
            *(&__dst[2] + 8) = 0u;
            v9 = (v20 - v19) <= v18;
            v21 = &v19[v18];
            if (v9)
            {
              v21 = v20;
            }

            *&__dst[0] = v19;
            *(&__dst[0] + 1) = v21;
            v22 = *(a1 + 24);
            __dst[1] = v22;
            *&__dst[2] = *(a1 + 40);
            v23 = *(a1 + 56);
            if (*&__dst[2] - v22 > v23)
            {
              *&__dst[2] = v22 + v23;
            }

            *(&__dst[4] + 1) = *(a1 + 64);
            LODWORD(__dst[5]) = 0;
            result = lzvnDecode(__dst);
            if (result == -3)
            {
              return result;
            }

            v24 = *&__dst[0] - *a1;
            v25 = *(a1 + 60);
            if (v24 > v25)
            {
              return 4294967293;
            }

            v26 = *&__dst[1];
            v27 = *&__dst[1] - *(a1 + 24);
            v28 = *(a1 + 56);
            if (v27 > v28)
            {
              return 4294967293;
            }

            *a1 = *&__dst[0];
            *(a1 + 24) = v26;
            v29 = DWORD2(__dst[4]);
            v30 = __dst[5];
            v31 = v25 - v24;
            *(a1 + 60) = v31;
            *(a1 + 64) = v29;
            *(a1 + 56) = v28 - v27;
            if (v31)
            {
              if (v30)
              {
                v152 = 1;
              }

              else
              {
                v152 = v28 == v27;
              }

              if (v152)
              {
                return 4294967293;
              }

              else
              {
                return 4294967294;
              }
            }

            result = 4294967293;
            if (v28 != v27 || !v30)
            {
              return result;
            }

LABEL_41:
            *(a1 + 52) = 0;
          }
        }

        if (!v5)
        {
          break;
        }

        if (v5 != 762869346)
        {
          return result;
        }

        v11 = *(a1 + 68);
        if (!v11)
        {
          goto LABEL_41;
        }

        v12 = *(a1 + 16);
        v9 = v12 > *a1;
        v13 = v12 - *a1;
        if (!v9)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        v9 = v14 > v15;
        v16 = v14 - v15;
        if (!v9)
        {
          return 4294967294;
        }

        if (v13 >= v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = v13;
        }

        if (v16 >= v11)
        {
          v17 = v11;
        }

        else
        {
          v17 = v16;
        }

        memmove(v15, *a1, v17);
        *a1 += v17;
        *(a1 + 24) += v17;
        *(a1 + 68) -= v17;
      }

      v32 = *a1;
      v33 = (*a1 + 4);
      v34 = *(a1 + 16);
      if (v33 > v34)
      {
        return 0xFFFFFFFFLL;
      }

      v35 = *v32;
      if (*v32 <= 846755425)
      {
        break;
      }

      if (v35 == 846755426)
      {
LABEL_51:
        v157 = *v32;
        if (v35 == 846755426)
        {
          v155 = v3;
          v36 = (v32 + 8);
          if ((v32 + 8) > v34)
          {
            return 0xFFFFFFFFLL;
          }

          v156 = v4;
          v37 = *(v32 + 3);
          if (v37 < 0x20)
          {
            return result;
          }

          v154 = v2;
          v38 = v32 + v37;
          if (v38 > v34)
          {
            return 0xFFFFFFFFLL;
          }

          v153 = v37;
          bzero(&__dst[3], 0x2D4uLL);
          v39 = *(v32 + 1);
          v40 = *(v32 + 2);
          v41 = v32[1];
          LODWORD(__dst[0]) = 829978210;
          DWORD1(__dst[0]) = v41;
          v42 = v40 >> 30;
          v43 = (v40 >> 40) & 0xFFFFF;
          v44 = (v40 >> 60) & 7;
          LOWORD(v45) = v40;
          WORD1(v45) = v40 >> 10;
          WORD2(v45) = v40 >> 20;
          v46 = (v39 >> 20) & 0xFFFFF;
          LODWORD(v45) = v45 & 0x3FF03FF;
          WORD2(v45) &= 0x3FFu;
          HIWORD(v45) = v42 & 0x3FF;
          *&__dst[2] = v45;
          LODWORD(__dst[1]) = (v39 >> 40) & 0xFFFFF;
          *(&__dst[1] + 4) = __PAIR64__(v43, v46);
          HIDWORD(__dst[1]) = ((v39 >> 60) & 7) - 7;
          DWORD2(__dst[2]) = v44 - 7;
          WORD6(__dst[2]) = WORD2(v37) & 0x3FF;
          HIWORD(__dst[2]) = (v37 >> 42) & 0x3FF;
          LOWORD(__dst[3]) = (v37 >> 52) & 0x3FF;
          DWORD2(__dst[0]) = v43 + v46;
          HIDWORD(__dst[0]) = v39 & 0xFFFFF;
          if (v37 != 32)
          {
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v4 = v156;
            while (1)
            {
              if (v36 >= v38 || v144 > 24)
              {
                v146 = v144;
              }

              else
              {
                do
                {
                  v146 = v144 + 8;
                  v147 = *v36++;
                  v145 |= v147 << v144;
                  if (v36 >= v38)
                  {
                    break;
                  }

                  v9 = v144 < 17;
                  v144 += 8;
                }

                while (v9);
              }

              v148 = lzfse_freq_nbits_table[v145 & 0x1F];
              if (v148 == 14)
              {
                v149 = ((v145 >> 4) & 0x3FF) + 24;
              }

              else
              {
                LOWORD(v149) = v148 == 8 ? (v145 >> 4) + 8 : lzfse_freq_value_table[v145 & 0x1F];
              }

              v150 = v148;
              *(&__dst[3] + v143 + 1) = v149;
              v144 = v146 - v148;
              if (v146 < v150)
              {
                return 4294967293;
              }

              v145 >>= v150;
              if (++v143 == 360)
              {
                v151 = v144 <= 7 && v36 == v38;
                v2 = v154;
                v3 = v155;
                v47 = v153;
                if (v151)
                {
                  goto LABEL_59;
                }

                return 4294967293;
              }
            }
          }

          v47 = 32;
          v2 = v154;
          v3 = v155;
          v4 = v156;
        }

        else
        {
          if ((v32 + 193) > v34)
          {
            return 0xFFFFFFFFLL;
          }

          memcpy(__dst, v32, 0x304uLL);
          v46 = DWORD1(__dst[1]);
          v43 = DWORD2(__dst[1]);
          v47 = 772;
        }

LABEL_59:
        v48 = v32 + v47;
        if (&v48[v46 + v43] > v34)
        {
          return 0xFFFFFFFFLL;
        }

        v49 = 0;
        v50 = __dst[1];
        for (i = 50; i != 90; i += 2)
        {
          v49 += *(__dst + i);
        }

        v52 = 0;
        for (j = 90; j != 130; j += 2)
        {
          v52 += *(__dst + j);
        }

        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        do
        {
          v58 = *(__dst + j);
          v59 = vmovl_u16(*v58.i8);
          v60 = vmovl_high_u16(v58);
          v57 = vaddw_high_u32(v57, v60);
          v56 = vaddw_u32(v56, *v60.i8);
          v55 = vaddw_high_u32(v55, v59);
          v54 = vaddw_u32(v54, *v59.i8);
          j += 16;
        }

        while (j != 258);
        v61 = vaddvq_s64(vaddq_s64(vaddq_s64(v54, v56), vaddq_s64(v55, v57)));
        v62 = 0uLL;
        v63 = 258;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v67 = *(__dst + v63);
          v68 = vmovl_u16(*v67.i8);
          v69 = vmovl_high_u16(v67);
          v66 = vaddw_high_u32(v66, v69);
          v65 = vaddw_u32(v65, *v69.i8);
          v64 = vaddw_high_u32(v64, v68);
          v62 = vaddw_u32(v62, *v68.i8);
          v63 += 16;
        }

        while (v63 != 770);
        v70 = vbicq_s8(xmmword_3A6DA0, vmovl_s16(vcgt_u16(0x400040004000400, *&__dst[2])));
        v71 = vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
        v72 = ((vaddvq_s64(vaddq_s64(vaddq_s64(v62, v65), vaddq_s64(v64, v66))) > 0x400) << 13) | ((v61 > 0x100) << 12);
        v73 = ((LOWORD(__dst[3]) > 0xFFu) << 9) | ((HIWORD(__dst[2]) > 0x3Fu) << 8) | ((v52 > 0x40) << 11) | ((v49 > 0x40) << 10);
        if (LODWORD(__dst[0]) == 829978210)
        {
          v74 = v72;
        }

        else
        {
          v74 = v72 + 1;
        }

        if (v71.i32[0] | v71.i32[1] | (2 * (HIDWORD(__dst[0]) > 0x9C40)) | ((WORD6(__dst[2]) > 0x3Fu) << 7) | (4 * (LODWORD(__dst[1]) > 0x2710)) | v73 | v74 || *(a1 + 7304) < HIDWORD(__dst[0]))
        {
          return 4294967293;
        }

        v75 = 0;
        v76 = 0;
        *a1 = v48;
        v77 = v3;
        *(a1 + 72) = v50;
        *(a1 + 76) = v43;
        do
        {
          v78 = *&v2[2 * v75];
          if (*&v2[2 * v75])
          {
            v76 += v78;
            if (v76 > 1024)
            {
              break;
            }

            v79 = 0;
            v80 = __clz(v78);
            v81 = v80 - 21;
            v82 = 0x800u >> (v80 - 21);
            v83 = v82 - v78;
            v84 = v80 - 22;
            v85 = v78 - v82;
            do
            {
              v86 = (v85 + v79) << v84;
              if (v79 < v83)
              {
                v87 = v81;
              }

              else
              {
                v87 = v84;
              }

              if (v79 < v83)
              {
                LOWORD(v86) = ((v78 + v79) << v81) - 1024;
              }

              *v77 = v87;
              *(v77 + 1) = v75;
              *(v77 + 2) = v86;
              v77 += 4;
              ++v79;
            }

            while (v78 != v79);
          }

          ++v75;
        }

        while (v75 != 256);
        v88 = 0;
        v89 = v4;
        do
        {
          v90 = *(&__dst[3] + v88 + 1);
          if (*(&__dst[3] + v88 + 1))
          {
            v91 = 0;
            v92 = __clz(v90);
            v93 = v92 - 25;
            v94 = 0x80u >> (v92 - 25);
            v95 = v94 - v90;
            v96 = kLSymbolVBits[v88];
            v97 = kLSymbolVBase[v88];
            v98 = v92 - 26;
            v99 = v90 - v94;
            do
            {
              v100 = (v99 + v91) << v98;
              if (v91 < v95)
              {
                v101 = v93;
              }

              else
              {
                v101 = v98;
              }

              if (v91 < v95)
              {
                LOWORD(v100) = ((v90 + v91) << v93) - 64;
              }

              *v89 = v96 + v101;
              *(v89 + 1) = v96;
              *(v89 + 2) = v100;
              *(v89 + 4) = v97;
              v89 += 8;
              ++v91;
            }

            while (v90 != v91);
          }

          ++v88;
        }

        while (v88 != 20);
        v102 = 0;
        v103 = v159;
        do
        {
          v104 = *(&__dst[5] + v102 + 5);
          if (*(&__dst[5] + v102 + 5))
          {
            v105 = 0;
            v106 = __clz(v104);
            v107 = v106 - 25;
            v108 = 0x80u >> (v106 - 25);
            v109 = v108 - v104;
            v110 = kMSymbolVBits[v102];
            v111 = kMSymbolVBase[v102];
            v112 = v106 - 26;
            v113 = v104 - v108;
            do
            {
              v114 = (v113 + v105) << v112;
              if (v105 < v109)
              {
                v115 = v107;
              }

              else
              {
                v115 = v112;
              }

              if (v105 < v109)
              {
                LOWORD(v114) = ((v104 + v105) << v107) - 64;
              }

              *v103 = v110 + v115;
              *(v103 + 1) = v110;
              *(v103 + 2) = v114;
              *(v103 + 4) = v111;
              v103 += 8;
              ++v105;
            }

            while (v104 != v105);
          }

          ++v102;
        }

        while (v102 != 20);
        v116 = 0;
        v117 = v158;
        do
        {
          v118 = *(&__dst[8] + v116 + 1);
          if (*(&__dst[8] + v116 + 1))
          {
            v119 = 0;
            v120 = __clz(v118);
            v121 = v120 - 23;
            v122 = 0x200u >> (v120 - 23);
            v123 = v122 - v118;
            v124 = kDSymbolVBits[v116];
            v125 = kDSymbolVBase[v116];
            v126 = v120 - 24;
            v127 = v118 - v122;
            do
            {
              v128 = (v127 + v119) << v126;
              if (v119 < v123)
              {
                v129 = v121;
              }

              else
              {
                v129 = v126;
              }

              if (v119 < v123)
              {
                LOWORD(v128) = ((v118 + v119) << v121) - 256;
              }

              *v117 = v124 + v129;
              *(v117 + 1) = v124;
              *(v117 + 2) = v128;
              *(v117 + 4) = v125;
              v117 += 8;
              ++v119;
            }

            while (v118 != v119);
          }

          ++v116;
        }

        while (v116 != 64);
        v162 = 0;
        v163 = 0;
        v130 = *(a1 + 8);
        v131 = HIDWORD(__dst[1]);
        v132 = *a1 + DWORD1(__dst[1]);
        *a1 = v132;
        if (v131)
        {
          if (v132 < v130 + 8)
          {
            return 4294967293;
          }

          v161 = (v132 - 8);
          v133 = *(v132 - 8);
          v162 = v133;
          v134 = v131 + 64;
          LODWORD(v163) = v131 + 64;
          if (v131 < 0xFFFFFFF8)
          {
            return 4294967293;
          }
        }

        else
        {
          if (v132 < v130 + 7)
          {
            return 4294967293;
          }

          v161 = (v132 - 7);
          v135 = *(v132 - 7);
          *(&v162 + 3) = *(v132 - 4);
          v134 = 56;
          LODWORD(v162) = v135;
          v133 = v162 & 0xFFFFFFFFFFFFFFLL;
          v162 &= 0xFFFFFFFFFFFFFFuLL;
          LODWORD(v163) = 56;
        }

        if (v133 >> v134 || lzfse_decode_literals(v160, v3, HIDWORD(__dst[0]), &v162, &v161, v130, *&__dst[2]) == -3)
        {
          return 4294967293;
        }

        *(a1 + 80) = v160;
        v136 = *a1;
        v137 = *a1 + DWORD2(__dst[1]);
        if (DWORD2(__dst[2]))
        {
          if (DWORD2(__dst[1]) < 8)
          {
            return 4294967293;
          }

          v140 = *(v137 - 8);
          v138 = v137 - 8;
          v139 = v140;
          v141 = DWORD2(__dst[2]) + 64;
        }

        else
        {
          if (DWORD2(__dst[1]) < 7)
          {
            return 4294967293;
          }

          v142 = *(v137 - 7);
          v138 = v137 - 7;
          v139 = v142 | ((*(v138 + 4) | (*(v138 + 6) << 16)) << 32);
          v141 = 56;
        }

        result = 4294967293;
        if ((v141 & 0xFFFFFFF8) != 0x38)
        {
          return result;
        }

        if (v139 >> v141)
        {
          return result;
        }

        *(a1 + 124) = WORD6(__dst[2]);
        *(a1 + 126) = *(&__dst[2] + 14);
        if (v138 < v136)
        {
          return result;
        }

        *(a1 + 116) = 0;
        *(a1 + 120) = v138 - v136;
        *(a1 + 88) = 0;
        *(a1 + 96) = -1;
        *(a1 + 104) = v139;
        *(a1 + 112) = v141;
        *(a1 + 52) = v157;
      }

      else
      {
        if (v35 != 1853388386)
        {
          return result;
        }

        if ((v32 + 3) > v34)
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 56) = v32[1];
        *(a1 + 60) = v32[2];
        *a1 = v32 + 3;
        *(a1 + 52) = 1853388386;
      }
    }

    if (v35 != 762869346)
    {
      break;
    }

    if ((v32 + 2) > v34)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 68) = *v33;
    *a1 = v32 + 2;
    *(a1 + 52) = 762869346;
  }

  if (v35 == 829978210)
  {
    goto LABEL_51;
  }

  if (v35 == 611874402)
  {
    result = 0;
    *a1 = v33;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t BrotliFindAllStaticDictionaryMatches(void *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = a1[5];
  v10 = (506832829 * *a2) >> 17;
  v11 = *(v9 + 2 * v10);
  v12 = a5 + 12;
  v13 = 0;
  if (*(v9 + 2 * v10))
  {
    v14 = a5 + 8;
    v15 = a5 + 16;
    v16 = a5 + 20;
    v232 = a5 + 28;
    v234 = a5 + 4;
    v17 = a1[6];
    v18 = *a1;
    v236 = *a1 + 32;
    do
    {
      v19 = (v17 + 4 * v11);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v19 + 1);
      v23 = *v19 & 0x1F;
      v24 = *(v18 + v23);
      if (v19[1])
      {
        if (v23 <= a4)
        {
          v25 = (*(v18 + 168) + *(v19 + 1) * (*v19 & 0x1F) + *(v236 + 4 * (*v19 & 0x1F)));
          if (v21 == 10)
          {
            v26 = *v25;
            if ((v26 - 97) > 0x19)
            {
              goto LABEL_209;
            }

            if ((*a2 ^ v26) != 0x20)
            {
              goto LABEL_209;
            }

            v220 = v14;
            v222 = v9;
            v226 = v12;
            v228 = v8;
            v230 = a5;
            v224 = v13;
            v217 = v16;
            v218 = v15;
            AllStaticDictionaryMatches_cold_1 = BrotliFindAllStaticDictionaryMatches_cold_1(v25, v20 & 0x1F, a2 + 1);
            v16 = v217;
            v15 = v218;
            v14 = v220;
            v9 = v222;
            v13 = v224;
            v12 = v226;
            v8 = v228;
            a5 = v230;
            if (!AllStaticDictionaryMatches_cold_1)
            {
              goto LABEL_209;
            }

            v28 = 9;
          }

          else
          {
            v56 = a2;
            v57 = v20 & 0x1F;
            if (v23)
            {
              do
              {
                v59 = *v25++;
                v58 = v59;
                v60 = v59 - 97;
                v62 = *v56++;
                v61 = v62;
                if (v60 > 0x19)
                {
                  if (v58 != v61)
                  {
                    goto LABEL_209;
                  }
                }

                else if ((v61 ^ v58) != 0x20)
                {
                  goto LABEL_209;
                }

                --v57;
              }

              while (v57);
            }

            v28 = 44;
          }

          v63 = v23 | (32 * ((v28 << v24) + v22));
          if (*(a5 + 4 * v23) < v63)
          {
            v63 = *(a5 + 4 * v23);
          }

          *(a5 + 4 * v23) = v63;
          v64 = v23 + 1;
          if (v23 + 1 >= a4)
          {
            v13 = 1;
          }

          else
          {
            v65 = &a2[v23];
            v66 = a2[v23];
            v13 = 1;
            if (v66 <= 0x27)
            {
              switch(v66)
              {
                case ' ':
                  v71 = v21 == 10;
                  v55 = 68;
                  v72 = 4;
                  goto LABEL_138;
                case '""':
                  v79 = 87;
                  if (v21 == 10)
                  {
                    v79 = 66;
                  }

                  v80 = v23 | (32 * ((v79 << v24) + v22));
                  if (*(a5 + 4 * v64) < v80)
                  {
                    v80 = *(a5 + 4 * v64);
                  }

                  *(a5 + 4 * v64) = v80;
                  if (v65[1] != 62)
                  {
                    break;
                  }

                  v69 = v21 == 10;
                  v70 = 97;
                  v55 = 69;
                  goto LABEL_203;
                case '\'':
                  v71 = v21 == 10;
                  v55 = 94;
                  v72 = 74;
                  goto LABEL_138;
              }
            }

            else
            {
              if (a2[v23] <= 0x2Du)
              {
                if (v66 != 40)
                {
                  if (v66 != 44)
                  {
                    goto LABEL_209;
                  }

                  v67 = 112;
                  if (v21 == 10)
                  {
                    v67 = 99;
                  }

                  v68 = v23 | (32 * ((v67 << v24) + v22));
                  if (*(a5 + 4 * v64) < v68)
                  {
                    v68 = *(a5 + 4 * v64);
                  }

                  *(a5 + 4 * v64) = v68;
                  if (v65[1] != 32)
                  {
                    goto LABEL_209;
                  }

                  v69 = v21 == 10;
                  v70 = 107;
                  v55 = 58;
                  goto LABEL_203;
                }

                v71 = v21 == 10;
                v55 = 113;
                v72 = 78;
LABEL_138:
                if (v71)
                {
                  v55 = v72;
                }

                v54 = (a5 + 4 * v64);
                goto LABEL_206;
              }

              if (v66 == 46)
              {
                v77 = 101;
                if (v21 == 10)
                {
                  v77 = 79;
                }

                v78 = v23 | (32 * ((v77 << v24) + v22));
                if (*(a5 + 4 * v64) < v78)
                {
                  v78 = *(a5 + 4 * v64);
                }

                *(a5 + 4 * v64) = v78;
                if (v65[1] != 32)
                {
                  goto LABEL_209;
                }

                v69 = v21 == 10;
                v70 = 114;
                v55 = 88;
                goto LABEL_203;
              }

              if (v66 == 61)
              {
                v75 = v65[1];
                if (v75 == 39)
                {
                  v69 = v21 == 10;
                  v70 = 116;
                  v55 = 108;
LABEL_203:
                  if (!v69)
                  {
                    v55 = v70;
                  }

                  goto LABEL_205;
                }

                if (v75 == 34)
                {
                  if (v21 == 10)
                  {
                    v55 = 104;
                  }

                  else
                  {
                    v55 = 105;
                  }

LABEL_205:
                  v54 = (v14 + 4 * v23);
                  goto LABEL_206;
                }
              }
            }
          }
        }
      }

      else
      {
        v29 = *(v18 + 168) + *(v19 + 1) * (*v19 & 0x1F) + *(v236 + 4 * (*v19 & 0x1F));
        if (v23 >= a4)
        {
          v30 = a4;
        }

        else
        {
          v30 = v20 & 0x1F;
        }

        if (v30 < 8)
        {
          v32 = 0;
          v33 = a2;
LABEL_190:
          v88 = v30 & 7;
          if (v88)
          {
            v89 = v32 | v88;
            while (*(v29 + v32) == *v33)
            {
              ++v33;
              ++v32;
              if (!--v88)
              {
                v32 = v89;
                break;
              }
            }
          }
        }

        else
        {
          v31 = 0;
          v32 = v30 & 0x18;
          v33 = &a2[v32];
          while (1)
          {
            v34 = *&a2[v31];
            v35 = *(v29 + v31);
            if (v34 != v35)
            {
              break;
            }

            v31 += 8;
            if ((v30 & 0xFFFFFFFFFFFFFFF8) == v31)
            {
              goto LABEL_190;
            }
          }

          v32 = v31 + (__clz(__rbit64(v35 ^ v34)) >> 3);
        }

        if (v32 == v23)
        {
          v36 = *(a5 + 4 * v23);
          if (v36 >= (v23 | (32 * v22)))
          {
            v36 = v23 | (32 * v22);
          }

          *(a5 + 4 * v23) = v36;
          v13 = 1;
        }

        v37 = v23 - 1;
        if (v32 >= v23 - 1)
        {
          v38 = v23 | (32 * ((12 << v24) + v22));
          if (*(a5 + 4 * v37) < v38)
          {
            v38 = *(a5 + 4 * v37);
          }

          *(a5 + 4 * v37) = v38;
          if (v23 + 2 < a4 && a2[v37] == 105 && a2[v23] == 110 && a2[v23 + 1] == 103 && a2[v23 + 2] == 32)
          {
            v39 = v23 | (32 * ((49 << v24) + v22));
            if (*(v12 + 4 * v23) < v39)
            {
              v39 = *(v12 + 4 * v23);
            }

            *(v12 + 4 * v23) = v39;
          }

          v13 = 1;
        }

        v40 = v23 - 9;
        if (a3 > v23 - 9)
        {
          v40 = a3;
        }

        if (v23 <= 9)
        {
          v41 = a3;
        }

        else
        {
          v41 = v40;
        }

        if (v32 >= v23 - 2)
        {
          v42 = v23 - 2;
        }

        else
        {
          v42 = v32;
        }

        if (v41 <= v42)
        {
          v43 = v8[2];
          v44 = v42 - v41 + 1;
          v45 = 4 * v23 - 4 * v41;
          v46 = 6 * v23 - 6 * v41;
          v47 = (a5 + 4 * v41);
          do
          {
            v48 = v23 | (32 * (((v45 + ((v43 >> v46) & 0x3F)) << v24) + v22));
            if (*v47 < v48)
            {
              v48 = *v47;
            }

            *v47++ = v48;
            v45 -= 4;
            v46 -= 6;
            --v44;
          }

          while (v44);
          v13 = 1;
        }

        if (v32 < v23)
        {
          goto LABEL_209;
        }

        v49 = v23 + 6;
        if (v23 + 6 >= a4)
        {
          goto LABEL_209;
        }

        v50 = &a2[v23];
        v51 = a2[v23];
        if (v51 > 0x3C)
        {
          if (a2[v23] > 0x65u)
          {
            if (a2[v23] > 0x6Bu)
            {
              if (v51 == 108)
              {
                v87 = v50[1];
                if (v87 == 121)
                {
                  if (v50[2] == 32)
                  {
                    v54 = (v12 + 4 * v23);
                    v55 = 61;
                    goto LABEL_206;
                  }
                }

                else if (v87 == 101 && v50[2] == 115 && v50[3] == 115 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 93;
                  goto LABEL_206;
                }
              }

              else if (v51 == 111 && v50[1] == 117 && v50[2] == 115 && v50[3] == 32)
              {
                v54 = (v15 + 4 * v23);
                v55 = 106;
                goto LABEL_206;
              }
            }

            else if (v51 == 102)
            {
              if (v50[1] == 117 && v50[2] == 108 && v50[3] == 32)
              {
                v54 = (v15 + 4 * v23);
                v55 = 90;
                goto LABEL_206;
              }
            }

            else if (v51 == 105)
            {
              v74 = v50[1];
              if (v74 == 122)
              {
                if (v50[2] == 101 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 100;
                  goto LABEL_206;
                }
              }

              else if (v74 == 118 && v50[2] == 101 && v50[3] == 32)
              {
                v54 = (v15 + 4 * v23);
                v55 = 92;
                goto LABEL_206;
              }
            }
          }

          else if (a2[v23] > 0x60u)
          {
            if (v51 == 97)
            {
              if (v50[1] == 108 && v50[2] == 32)
              {
                v54 = (v12 + 4 * v23);
                v55 = 84;
                goto LABEL_206;
              }
            }

            else if (v51 == 101)
            {
              v76 = v50[1];
              if (v76 == 115)
              {
                if (v50[2] == 116 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 95;
                  goto LABEL_206;
                }
              }

              else if (v76 == 114)
              {
                if (v50[2] == 32)
                {
                  v54 = (v12 + 4 * v23);
                  v55 = 82;
                  goto LABEL_206;
                }
              }

              else if (v76 == 100 && v50[2] == 32)
              {
                v54 = (v12 + 4 * v23);
                v55 = 53;
                goto LABEL_206;
              }
            }
          }

          else if (v51 == 61)
          {
            v82 = v50[1];
            if (v82 == 39)
            {
              v54 = (v14 + 4 * v23);
              v55 = 86;
              goto LABEL_206;
            }

            if (v82 == 34)
            {
              v54 = (v14 + 4 * v23);
              v55 = 70;
              goto LABEL_206;
            }
          }

          else if (v51 == 93)
          {
            v54 = (v234 + 4 * v23);
            v55 = 24;
            goto LABEL_206;
          }
        }

        else if (a2[v23] > 0x27u)
        {
          if (a2[v23] <= 0x2Du)
          {
            if (v51 == 40)
            {
              v54 = (v234 + 4 * v23);
              v55 = 57;
            }

            else
            {
              if (v51 != 44)
              {
                goto LABEL_209;
              }

              v73 = v23 | (32 * ((76 << v24) + v22));
              if (*(v234 + 4 * v23) < v73)
              {
                v73 = *(v234 + 4 * v23);
              }

              *(v234 + 4 * v23) = v73;
              if (v50[1] != 32)
              {
                goto LABEL_209;
              }

              v54 = (v14 + 4 * v23);
              v55 = 14;
            }

            goto LABEL_206;
          }

          if (v51 == 46)
          {
            v84 = v23 | (32 * ((20 << v24) + v22));
            if (*(v234 + 4 * v23) < v84)
            {
              v84 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v84;
            if (v50[1] != 32)
            {
              goto LABEL_209;
            }

            v85 = v23 | (32 * ((31 << v24) + v22));
            if (*(v14 + 4 * v23) < v85)
            {
              v85 = *(v14 + 4 * v23);
            }

            *(v14 + 4 * v23) = v85;
            if (v50[2] != 84 || v50[3] != 104)
            {
              goto LABEL_209;
            }

            v86 = v50[4];
            if (v86 == 105)
            {
              if (v50[5] == 115 && v50[6] == 32)
              {
                v54 = (v232 + 4 * v23);
                v55 = 75;
                goto LABEL_206;
              }
            }

            else if (v86 == 101 && v50[5] == 32)
            {
              v54 = (a5 + 4 * v49);
              v55 = 43;
              goto LABEL_206;
            }
          }

          else if (v51 == 58)
          {
            v54 = (v234 + 4 * v23);
            v55 = 51;
            goto LABEL_206;
          }
        }

        else if (a2[v23] > 0x21u)
        {
          if (v51 == 34)
          {
            v83 = v23 | (32 * ((19 << v24) + v22));
            if (*(v234 + 4 * v23) < v83)
            {
              v83 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v83;
            if (v50[1] != 62)
            {
              goto LABEL_209;
            }

            v54 = (v14 + 4 * v23);
            v55 = 21;
            goto LABEL_206;
          }

          if (v51 == 39)
          {
            v54 = (v234 + 4 * v23);
            v55 = 36;
            goto LABEL_206;
          }
        }

        else
        {
          if (v51 == 10)
          {
            v81 = v23 | (32 * ((22 << v24) + v22));
            if (*(v234 + 4 * v23) < v81)
            {
              v81 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v81;
            if (v50[1] != 9)
            {
              goto LABEL_209;
            }

            v54 = (v14 + 4 * v23);
            v55 = 50;
            goto LABEL_206;
          }

          if (v51 == 32)
          {
            v52 = v23 | (32 * ((1 << v24) + v22));
            if (*(v234 + 4 * v23) < v52)
            {
              v52 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v52;
            v53 = v50[1];
            if (v53 > 0x6D)
            {
              if (v50[1] > 0x73u)
              {
                if (v53 == 116)
                {
                  v95 = v50[2];
                  if (v95 == 111)
                  {
                    if (v50[3] == 32)
                    {
                      v54 = (v15 + 4 * v23);
                      v55 = 17;
                      goto LABEL_206;
                    }
                  }

                  else if (v95 == 104)
                  {
                    v96 = v50[3];
                    if (v96 == 97)
                    {
                      if (v50[4] == 116 && v50[5] == 32)
                      {
                        v54 = (a5 + 4 * v49);
                        v55 = 29;
                        goto LABEL_206;
                      }
                    }

                    else if (v96 == 101 && v50[4] == 32)
                    {
                      v54 = (v16 + 4 * v23);
                      v55 = 5;
                      goto LABEL_206;
                    }
                  }
                }

                else if (v53 == 119 && v50[2] == 105 && v50[3] == 116 && v50[4] == 104 && v50[5] == 32)
                {
                  v54 = (a5 + 4 * v49);
                  v55 = 35;
                  goto LABEL_206;
                }
              }

              else if (v53 == 110)
              {
                if (v50[2] == 111 && v50[3] == 116 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 80;
                  goto LABEL_206;
                }
              }

              else if (v53 == 111)
              {
                v90 = v50[2];
                if (v90 == 110)
                {
                  if (v50[3] == 32)
                  {
                    v54 = (v15 + 4 * v23);
                    v55 = 45;
                    goto LABEL_206;
                  }
                }

                else if (v90 == 102 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 8;
                  goto LABEL_206;
                }
              }
            }

            else if (v50[1] > 0x65u)
            {
              if (v53 == 102)
              {
                v94 = v50[2];
                if (v94 == 114)
                {
                  if (v50[3] == 111 && v50[4] == 109 && v50[5] == 32)
                  {
                    v54 = (a5 + 4 * v49);
                    v55 = 37;
                    goto LABEL_206;
                  }
                }

                else if (v94 == 111 && v50[3] == 114 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 25;
                  goto LABEL_206;
                }
              }

              else if (v53 == 105)
              {
                v92 = v50[2];
                if (v92 == 115)
                {
                  if (v50[3] == 32)
                  {
                    v54 = (v15 + 4 * v23);
                    v55 = 47;
                    goto LABEL_206;
                  }
                }

                else if (v92 == 110 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 16;
                  goto LABEL_206;
                }
              }
            }

            else if (v53 == 97)
            {
              v93 = v50[2];
              if (v93 > 0x72)
              {
                if (v93 == 115)
                {
                  if (v50[3] == 32)
                  {
                    v54 = (v15 + 4 * v23);
                    v55 = 46;
                    goto LABEL_206;
                  }
                }

                else if (v93 == 116 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 60;
                  goto LABEL_206;
                }
              }

              else
              {
                if (v93 == 32)
                {
                  v54 = (v12 + 4 * v23);
                  v55 = 28;
                  goto LABEL_206;
                }

                if (v93 == 110 && v50[3] == 100 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 10;
                  goto LABEL_206;
                }
              }
            }

            else if (v53 == 98 && v50[2] == 121 && v50[3] == 32)
            {
              v54 = (v15 + 4 * v23);
              v55 = 38;
LABEL_206:
              v91 = v23 | (32 * ((v55 << v24) + v22));
              if (*v54 < v91)
              {
                v91 = *v54;
              }

              *v54 = v91;
            }
          }
        }
      }

LABEL_209:
      ++v11;
    }

    while ((v20 & 0x80) == 0);
  }

  if (a4 < 5)
  {
    return v13;
  }

  v97 = *a2;
  if (v97 == 46 || v97 == 32)
  {
    v98 = a2 + 1;
    v99 = (506832829 * *(a2 + 1)) >> 17;
    v100 = *(v9 + 2 * v99);
    if (*(v9 + 2 * v99))
    {
      v101 = a4 - 1;
      v102 = *v8;
      v103 = *v8 + 32;
      v104 = v8[6];
      if (v97 == 32)
      {
        v105 = 6;
      }

      else
      {
        v105 = 32;
      }

      if (v97 == 32)
      {
        v106 = 89;
      }

      else
      {
        v106 = 67;
      }

      if (v97 == 32)
      {
        v107 = 2;
      }

      else
      {
        v107 = 77;
      }

      while (1)
      {
        v108 = (v104 + 4 * v100);
        v109 = *v108;
        v110 = v108[1];
        v111 = *(v108 + 1);
        v112 = *v108 & 0x1F;
        v113 = *(v102 + v112);
        if (!v108[1])
        {
          break;
        }

        if (v97 != 32 || v101 < v112)
        {
          goto LABEL_363;
        }

        v114 = (*(v102 + 168) + *(v108 + 1) * (*v108 & 0x1F) + *(v103 + 4 * (*v108 & 0x1F)));
        if (v110 == 10)
        {
          v115 = *v114;
          if ((v115 - 97) > 0x19)
          {
            goto LABEL_363;
          }

          if ((*v98 ^ v115) != 0x20)
          {
            goto LABEL_363;
          }

          v235 = v101;
          v237 = v98;
          v227 = v12;
          v229 = v8;
          v231 = a5;
          v225 = v13;
          v233 = v103;
          v221 = v106;
          v223 = v105;
          v219 = v107;
          v116 = BrotliFindAllStaticDictionaryMatches_cold_1(v114, v109 & 0x1F, a2 + 2);
          v107 = v219;
          v106 = v221;
          v105 = v223;
          v103 = v233;
          v101 = v235;
          v98 = v237;
          v13 = v225;
          v12 = v227;
          v8 = v229;
          a5 = v231;
          if (!v116)
          {
            goto LABEL_363;
          }

          v117 = 30;
        }

        else
        {
          v131 = v98;
          v132 = v109 & 0x1F;
          if (v112)
          {
            do
            {
              v134 = *v114++;
              v133 = v134;
              v135 = v134 - 97;
              v137 = *v131++;
              v136 = v137;
              if (v135 > 0x19)
              {
                if (v133 != v136)
                {
                  goto LABEL_363;
                }
              }

              else if ((v136 ^ v133) != 0x20)
              {
                goto LABEL_363;
              }

              --v132;
            }

            while (v132);
          }

          v117 = 85;
        }

        v138 = v112 + 1;
        v139 = v112 | (32 * ((v117 << v113) + v111));
        if (*(a5 + 4 * (v112 + 1)) < v139)
        {
          v139 = *(a5 + 4 * (v112 + 1));
        }

        *(a5 + 4 * v138) = v139;
        v140 = v112 + 2;
        if (v112 + 2 >= a4)
        {
          goto LABEL_362;
        }

        v141 = &a2[v138];
        v142 = *v141;
        v13 = 1;
        if (v142 <= 0x2D)
        {
          if (v142 == 32)
          {
            v130 = 83;
            if (v110 == 10)
            {
              v130 = 15;
            }

            v129 = (a5 + 4 * v140);
          }

          else
          {
            if (v142 != 44)
            {
              goto LABEL_363;
            }

            if (v110 == 10)
            {
              v143 = v112 | (32 * ((109 << v113) + v111));
              if (*(a5 + 4 * v140) < v143)
              {
                v143 = *(a5 + 4 * v140);
              }

              *(a5 + 4 * v140) = v143;
            }

            if (v141[1] != 32)
            {
              goto LABEL_363;
            }

            v144 = v110 == 10;
            v145 = 111;
            v130 = 65;
LABEL_356:
            if (!v144)
            {
              v130 = v145;
            }

LABEL_358:
            v129 = (v12 + 4 * v112);
          }

LABEL_359:
          v150 = v112 | (32 * ((v130 << v113) + v111));
          if (*v129 < v150)
          {
            v150 = *v129;
          }

          *v129 = v150;
          goto LABEL_362;
        }

        if (v142 == 46)
        {
          v148 = 115;
          if (v110 == 10)
          {
            v148 = 96;
          }

          v149 = v112 | (32 * ((v148 << v113) + v111));
          if (*(a5 + 4 * v140) < v149)
          {
            v149 = *(a5 + 4 * v140);
          }

          *(a5 + 4 * v140) = v149;
          if (v141[1] != 32)
          {
            goto LABEL_363;
          }

          v144 = v110 == 10;
          v145 = 117;
          v130 = 91;
          goto LABEL_356;
        }

        if (v142 == 61)
        {
          v147 = v141[1];
          if (v147 == 39)
          {
            if (v110 == 10)
            {
              v130 = 120;
            }

            else
            {
              v130 = 119;
            }

            goto LABEL_358;
          }

          if (v147 == 34)
          {
            v144 = v110 == 10;
            v145 = 110;
            v130 = 118;
            goto LABEL_356;
          }
        }

LABEL_363:
        ++v100;
        if (v109 < 0)
        {
          goto LABEL_383;
        }
      }

      if (v101 < v112)
      {
        goto LABEL_363;
      }

      v118 = *(v102 + 168) + *(v108 + 1) * (*v108 & 0x1F) + *(v103 + 4 * (*v108 & 0x1F));
      if (v112 < 8)
      {
        v120 = 0;
        v121 = v98;
LABEL_376:
        v153 = v112 & 7;
        if ((v112 & 7) != 0)
        {
          v154 = v120 | v153;
          while (*(v118 + v120) == *v121)
          {
            ++v121;
            ++v120;
            if (!--v153)
            {
              v120 = v154;
              break;
            }
          }
        }
      }

      else
      {
        v119 = 0;
        v120 = v112 & 0x18;
        v121 = &v98[v120];
        while (1)
        {
          v122 = *&v98[v119];
          v123 = *(v118 + v119);
          if (v122 != v123)
          {
            break;
          }

          v119 += 8;
          if (v120 == v119)
          {
            goto LABEL_376;
          }
        }

        v120 = v119 + (__clz(__rbit64(v123 ^ v122)) >> 3);
      }

      if (v120 != v112)
      {
        goto LABEL_363;
      }

      v124 = v112 + 1;
      v125 = v112 | (32 * ((v105 << v113) + v111));
      if (*(a5 + 4 * (v112 + 1)) < v125)
      {
        v125 = *(a5 + 4 * (v112 + 1));
      }

      *(a5 + 4 * v124) = v125;
      v126 = v112 + 2;
      if (v112 + 2 < a4)
      {
        v127 = &a2[v124];
        v128 = *v127;
        if (v128 == 40)
        {
          v129 = (a5 + 4 * v126);
          v130 = v106;
          goto LABEL_359;
        }

        if (v128 == 32)
        {
          v129 = (a5 + 4 * v126);
          v130 = v107;
          goto LABEL_359;
        }

        if (v97 == 32)
        {
          switch(v128)
          {
            case '=':
              v152 = v127[1];
              if (v152 == 39)
              {
                v129 = (v12 + 4 * v112);
                v130 = 98;
                goto LABEL_359;
              }

              if (v152 == 34)
              {
                v129 = (v12 + 4 * v112);
                v130 = 81;
                goto LABEL_359;
              }

              break;
            case '.':
              v151 = v112 | (32 * ((71 << v113) + v111));
              if (*(a5 + 4 * v126) < v151)
              {
                v151 = *(a5 + 4 * v126);
              }

              *(a5 + 4 * v126) = v151;
              if (v127[1] == 32)
              {
                v129 = (v12 + 4 * v112);
                v130 = 52;
                goto LABEL_359;
              }

              break;
            case ',':
              v146 = v112 | (32 * ((103 << v113) + v111));
              if (*(a5 + 4 * v126) < v146)
              {
                v146 = *(a5 + 4 * v126);
              }

              *(a5 + 4 * v126) = v146;
              if (v127[1] == 32)
              {
                v129 = (v12 + 4 * v112);
                v130 = 33;
                goto LABEL_359;
              }

              break;
          }
        }
      }

LABEL_362:
      v13 = 1;
      goto LABEL_363;
    }
  }

LABEL_383:
  if (a4 == 5)
  {
    return v13;
  }

  v155 = a2[1];
  v156 = *a2;
  if (v155 != 32)
  {
    if (v155 != 160 || v156 != 194)
    {
      goto LABEL_427;
    }

    goto LABEL_391;
  }

  if (v156 == 44 || v156 == 101 || v156 == 115)
  {
LABEL_391:
    v157 = v13;
    v158 = a2 + 2;
    v159 = (506832829 * *(a2 + 2)) >> 17;
    v160 = *(v8[5] + 2 * v159);
    if (!*(v8[5] + 2 * v159))
    {
      goto LABEL_428;
    }

    v161 = v8[6];
    v162 = v8;
    v163 = *v8;
    v164 = *v8 + 32;
    while (1)
    {
      v165 = (v161 + 4 * v160);
      v166 = *v165;
      v167 = *v165 & 0x1F;
      if (v165[1])
      {
        v168 = 0;
      }

      else
      {
        v168 = a4 - 2 >= v167;
      }

      if (!v168)
      {
        goto LABEL_419;
      }

      v169 = *(v165 + 1);
      v170 = *(v163 + 168) + v169 * v167 + *(v164 + 4 * v167);
      if (v167 < 8)
      {
        v172 = 0;
        v173 = a2 + 2;
LABEL_422:
        v182 = v167 & 7;
        if ((v167 & 7) != 0)
        {
          v183 = v172 | v182;
          while (*(v170 + v172) == *v173)
          {
            ++v173;
            ++v172;
            if (!--v182)
            {
              v172 = v183;
              break;
            }
          }
        }
      }

      else
      {
        v171 = 0;
        v172 = v167 & 0x18;
        v173 = &v158[v172];
        while (1)
        {
          v174 = *&v158[v171];
          v175 = *(v170 + v171);
          if (v174 != v175)
          {
            break;
          }

          v171 += 8;
          if (v172 == v171)
          {
            goto LABEL_422;
          }
        }

        v172 = v171 + (__clz(__rbit64(v175 ^ v174)) >> 3);
      }

      if (v172 != v167)
      {
        goto LABEL_419;
      }

      v176 = *a2;
      if (v176 == 194)
      {
        break;
      }

      if (v167 + 2 < a4 && a2[v167 + 2] == 32)
      {
        if (v176 == 115)
        {
          v181 = 7;
        }

        else
        {
          v181 = 13;
        }

        if (v176 == 101)
        {
          v177 = 18;
        }

        else
        {
          v177 = v181;
        }

        v178 = 12;
        goto LABEL_407;
      }

LABEL_419:
      ++v160;
      if (v166 < 0)
      {
        goto LABEL_429;
      }
    }

    v177 = 102;
    v178 = 8;
LABEL_407:
    v179 = a5 + v178;
    v180 = v167 | (32 * ((v177 << *(v163 + v167)) + v169));
    if (*(v179 + 4 * v167) < v180)
    {
      v180 = *(v179 + 4 * v167);
    }

    *(v179 + 4 * v167) = v180;
    v157 = 1;
    goto LABEL_419;
  }

LABEL_427:
  v157 = v13;
LABEL_428:
  v162 = v8;
LABEL_429:
  if (a4 < 9)
  {
    return v157;
  }

  v184 = *a2;
  if (v184 == 46)
  {
    v13 = v157;
    if (a2[1] != 99 || a2[2] != 111 || a2[3] != 109 || a2[4] != 47)
    {
      return v13;
    }
  }

  else
  {
    v13 = v157;
    if (v184 != 32 || a2[1] != 116 || a2[2] != 104 || a2[3] != 101 || a2[4] != 32)
    {
      return v13;
    }
  }

  v186 = a2 + 5;
  v187 = (506832829 * *(a2 + 5)) >> 17;
  v188 = *(v162[5] + 2 * v187);
  if (*(v162[5] + 2 * v187))
  {
    v189 = a5 + 36;
    v190 = a5 + 52;
    v191 = *v162;
    v192 = *v162 + 32;
    v193 = v162[6];
    do
    {
      v194 = v13;
      v195 = (v193 + 4 * v188);
      v196 = *v195;
      v197 = *v195 & 0x1F;
      if (v195[1])
      {
        v198 = 0;
      }

      else
      {
        v198 = a4 - 5 >= v197;
      }

      if (v198)
      {
        v199 = *(v195 + 1);
        v200 = *(v191 + 168) + *(v195 + 1) * (*v195 & 0x1F) + *(v192 + 4 * (*v195 & 0x1F));
        if (v197 < 8)
        {
          v202 = 0;
          v203 = a2 + 5;
LABEL_484:
          v215 = v197 & 7;
          if ((v197 & 7) != 0)
          {
            v216 = v202 | v215;
            while (*(v200 + v202) == *v203)
            {
              ++v203;
              ++v202;
              if (!--v215)
              {
                v202 = v216;
                break;
              }
            }
          }
        }

        else
        {
          v201 = 0;
          v202 = v197 & 0x18;
          v203 = &v186[v202];
          while (1)
          {
            v204 = *&v186[v201];
            v205 = *(v200 + v201);
            if (v204 != v205)
            {
              break;
            }

            v201 += 8;
            if (v202 == v201)
            {
              goto LABEL_484;
            }
          }

          v202 = v201 + (__clz(__rbit64(v205 ^ v204)) >> 3);
        }

        if (v202 == v197)
        {
          v206 = *(v191 + v197);
          if (*a2 == 32)
          {
            v207 = 41;
          }

          else
          {
            v207 = 72;
          }

          v208 = (v207 << v206) + v199;
          v209 = v197 + 5;
          v210 = v197 | (32 * v208);
          if (*(a5 + 4 * (v197 + 5)) < v210)
          {
            v210 = *(a5 + 4 * (v197 + 5));
          }

          *(a5 + 4 * v209) = v210;
          if (v209 >= a4)
          {
            v194 = 1;
          }

          else
          {
            v194 = 1;
            if (*a2 == 32 && v197 + 8 < a4)
            {
              v211 = &a2[v209];
              if (*v211 == 32 && v211[1] == 111 && v211[2] == 102 && v211[3] == 32)
              {
                v212 = v197 | (32 * ((62 << v206) + v199));
                if (*(v189 + 4 * v197) < v212)
                {
                  v212 = *(v189 + 4 * v197);
                }

                *(v189 + 4 * v197) = v212;
                if (v197 + 12 < a4 && v211[4] == 116 && v211[5] == 104)
                {
                  v213 = a5;
                  if (v211[6] == 101 && v211[7] == 32)
                  {
                    v214 = v197 | (32 * ((73 << v206) + v199));
                    if (*(v190 + 4 * v197) < v214)
                    {
                      v214 = *(v190 + 4 * v197);
                    }

                    *(v190 + 4 * v197) = v214;
                  }

                  a5 = v213;
                }
              }
            }
          }
        }
      }

      ++v188;
      v13 = v194;
    }

    while ((v196 & 0x80) == 0);
  }

  return v13;
}

BOOL BrotliFindAllStaticDictionaryMatches_cold_1(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v3 = a1 + 1;
  v4 = a2 - 1;
  v5 = (a2 - 1);
  if (v5 < 8)
  {
    v7 = 0;
LABEL_9:
    v11 = v4 & 7;
    if (v11)
    {
      v12 = v7 | v11;
      while (*(v3 + v7) == *a3)
      {
        ++a3;
        ++v7;
        if (!--v11)
        {
          v7 = v12;
          return v7 == v5;
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = v4 & 0xFFFFFFF8;
    while (1)
    {
      v8 = *&a3[v6];
      v9 = *(v3 + v6);
      if (v8 != v9)
      {
        break;
      }

      v6 += 8;
      if ((v5 & 0xFFFFFFF8) == v6)
      {
        a3 += v4 & 0xFFFFFFF8;
        goto LABEL_9;
      }
    }

    v7 = v6 + (__clz(__rbit64(v9 ^ v8)) >> 3);
  }

  return v7 == v5;
}

uint64_t lzfseStreamEncodeInit(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  ScratchSize = lzfseEncodeGetScratchSize(a2);
  v6 = realloc_stream_state(*(a1 + 32), 0, a2, ScratchSize + 1573080, ScratchSize + 1572864);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  v7[8] = 216;
  v7[13] = 786648;
  v7[14] = 786648;
  v7[15] = 1573080;
  v7[2] = 216;
  v7[3] = 786648;
  v7[4] = 1573080;
  return result;
}

uint64_t lzfseStreamEncode(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3 + 64;
  *(v3 + 64) += v3;
  v5 = vdupq_n_s64(v3);
  *(v3 + 104) = vaddq_s64(v5, *(v3 + 104));
  *(v3 + 120) += v3;
  v37 = v5;
  *(v3 + 16) = vaddq_s64(v5, *(v3 + 16));
  *(v3 + 32) += v3;
  if (a2)
  {
    *(v3 + 44) = 1;
  }

  while (1)
  {
    if (*(v3 + 48))
    {
      v6 = 0;
    }

    else
    {
      v7 = *(v3 + 72);
      v8 = *(a1 + 24);
      if (v8 >= 786432 - v7)
      {
        v6 = 786432 - v7;
      }

      else
      {
        v6 = *(a1 + 24);
      }

      if (v6 >= 1)
      {
        memcpy((*(v3 + 16) + v7), *(a1 + 16), v6);
        *(v3 + 72) += v6;
        v8 = *(a1 + 24) - v6;
        *(a1 + 16) += v6;
        *(a1 + 24) = v8;
      }

      if (!v8 && *(v3 + 44))
      {
        *(v3 + 48) = 1;
      }
    }

    v9 = *(v3 + 112);
    v10 = *(v3 + 24);
    if (v9 >= v10 + 393216)
    {
      v11 = *(v3 + 104);
      v12 = v11 - v9;
      if (v11 != v9)
      {
        memmove(v10, v9, v11 - v9);
        v10 = *(v3 + 24);
      }

      *(v3 + 104) = &v10[v12];
      *(v3 + 112) = v10;
    }

    if (*(v3 + 48))
    {
      break;
    }

    if (!*(v3 + 40) && *(v3 + 72) < 4096)
    {
      goto LABEL_42;
    }

LABEL_28:
    if (!*(v3 + 52))
    {
LABEL_29:
      if (*(v3 + 40))
      {
LABEL_30:
        lzfseEncodeSetStateScratch(v4, *(v3 + 32));
      }

      else
      {
LABEL_31:
        lzfseEncodeInitState(v4, *(v3 + 4), *(v3 + 32));
        *(v3 + 40) = 1;
      }

      v25 = *(v3 + 72);
      *(v3 + 96) = v25 - 400;
      if (*(v3 + 48))
      {
        *(v3 + 96) = v25 - 8;
      }

      lzfseEncodeBase(v4);
      if (*(v3 + 48) && *(v3 + 88) >= *(v3 + 72) - 8)
      {
        *(v3 + 52) = 1;
      }

      else if (!*(v3 + 52))
      {
        goto LABEL_42;
      }
    }

LABEL_39:
    if (!*(v3 + 56) && !lzfseEncodeFinish(v4))
    {
      goto LABEL_41;
    }

LABEL_42:
    if (*(v3 + 60))
    {
      if (*(v3 + 56))
      {
        goto LABEL_66;
      }

      v26 = 0;
    }

    else
    {
      v27 = *(v3 + 112);
      if (*(a1 + 8) >= *(v3 + 104) - v27)
      {
        v26 = *(v3 + 104) - v27;
      }

      else
      {
        v26 = *(a1 + 8);
      }

      if (v26 >= 1)
      {
        memcpy(*a1, v27, v26);
        v27 = (*(v3 + 112) + v26);
        *(v3 + 112) = v27;
        v28 = *(a1 + 8) - v26;
        *a1 += v26;
        *(a1 + 8) = v28;
      }

      if (*(v3 + 56))
      {
        if (v27 == *(v3 + 104))
        {
          v32 = 0;
          *(v3 + 60) = 1;
          goto LABEL_68;
        }

        if (*(v3 + 60))
        {
LABEL_66:
          v32 = 0;
          goto LABEL_68;
        }
      }
    }

    v29 = *(v3 + 72);
    if (v29 >= 393216)
    {
      v30 = *(v3 + 88);
      v31 = v30 > 0x80000 ? v30 - 0x40000 : 0;
      if (v31 >= 1)
      {
        lzfseEncodeTranslateState(v4, v31);
        if (v29 > v31)
        {
          memmove(*(v3 + 16), (*(v3 + 16) + v31), v29 - v31);
        }

        *(v3 + 64) = *(v3 + 16);
      }
    }

    v32 = v26 | v6;
    if (!(v26 | v6))
    {
      goto LABEL_68;
    }
  }

  if (*(v3 + 52))
  {
    goto LABEL_39;
  }

  if (*(v3 + 40))
  {
    goto LABEL_30;
  }

  v13 = *(v3 + 72);
  if (v13 > 4095)
  {
    goto LABEL_31;
  }

  v14 = *(v3 + 120);
  v15 = *(v3 + 104);
  if (v14 <= v15 + 16)
  {
    goto LABEL_29;
  }

  v16 = lzvn_encode_scratch_size(2304);
  v17 = malloc(v16);
  if (v17)
  {
    v18 = v17;
    v19 = v14 - v15;
    v20 = lzvn_encode_buffer((*(v3 + 104) + 12), v19 - 16, *(v3 + 64), v13, v17, 2304);
    free(v18);
    if (v20 && v20 < v13)
    {
      v21 = *(v3 + 104);
      *v21 = 1853388386;
      v21[1] = v13;
      v21[2] = v20;
      v22 = &v20[*(v3 + 104)];
      *(v22 + 3) = 611874402;
      v23 = *(v3 + 72);
      *(v3 + 80) = v23;
      *(v3 + 88) = v23;
      v24 = v22 + 16;
LABEL_65:
      *(v3 + 96) = v23;
      *(v3 + 104) = v24;
      *(v3 + 52) = 1;
LABEL_41:
      *(v3 + 56) = 1;
      goto LABEL_42;
    }

    if (v19 >= v13 + 12)
    {
      v33 = *(v3 + 104);
      *v33 = 762869346;
      v33[1] = v13;
      v34 = (*(v3 + 104) + 8);
      *(v3 + 104) = v34;
      memcpy(v34, *(v3 + 64), v13);
      v35 = (*(v3 + 104) + v13);
      *v35 = 611874402;
      v24 = v35 + 1;
      v23 = *(v3 + 72);
      *(v3 + 80) = v23;
      *(v3 + 88) = v23;
      goto LABEL_65;
    }

    goto LABEL_28;
  }

  v32 = 1;
LABEL_68:
  *(v3 + 64) -= v3;
  *(v3 + 104) = vsubq_s64(*(v3 + 104), v37);
  *(v3 + 120) -= v3;
  *(v3 + 16) = vsubq_s64(*(v3 + 16), v37);
  *(v3 + 32) -= v3;
  if (v32)
  {
    return 0xFFFFFFFFLL;
  }

  return *(v3 + 56) && *(v3 + 60);
}

int deflateInit2_(z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size)
{
  if (!version)
  {
    return -6;
  }

  result = -6;
  if (stream_size == 112 && *version == 49)
  {
    if (!strm)
    {
      return -2;
    }

    strm->msg = 0;
    zalloc = strm->zalloc;
    if (!zalloc)
    {
      zalloc = zcalloc;
      strm->zalloc = zcalloc;
      strm->opaque = 0;
    }

    if (!strm->zfree)
    {
      strm->zfree = zcfree;
    }

    v13 = level == -1 ? 6 : level;
    v14 = windowBits - 16;
    if (windowBits > 0xF)
    {
      v15 = 2;
    }

    else
    {
      v14 = windowBits;
      v15 = 1;
    }

    if (windowBits >= 0)
    {
      v16 = v15;
    }

    else
    {
      v14 = -windowBits;
      v16 = 0;
    }

    result = -2;
    if (strategy <= 4 && v13 <= 9 && method == 8 && (memLevel - 10) >= 0xFFFFFFF7 && (v14 - 16) >= 0xFFFFFFF8)
    {
      if (v14 == 8)
      {
        v17 = 9;
      }

      else
      {
        v17 = v14;
      }

      if (zalloc == zcalloc)
      {
        v18 = calloc(1uLL, 0x1730uLL);
      }

      else
      {
        v18 = (zalloc)(strm->opaque, 1, 5936);
      }

      v19 = v18;
      if (v18)
      {
        strm->state = v18;
        *v18 = strm;
        *(v18 + 11) = v16;
        *(v18 + 6) = 0;
        *(v18 + 17) = 1 << v17;
        *(v18 + 18) = v17;
        *(v18 + 19) = (1 << v17) - 1;
        *(v18 + 29) = 128 << memLevel;
        *(v18 + 30) = memLevel + 7;
        *(v18 + 31) = (128 << memLevel) - 1;
        *(v18 + 32) = (memLevel + 9) / 3u;
        v20 = strm->zalloc;
        if (v20 == zcalloc)
        {
          v21 = calloc((1 << v17), 2uLL);
        }

        else
        {
          v21 = (v20)(strm->opaque);
        }

        *(v19 + 10) = v21;
        v22 = strm->zalloc;
        if (v22 == zcalloc)
        {
          v23 = calloc(*(v19 + 17), 2uLL);
        }

        else
        {
          v23 = (v22)(strm->opaque, *(v19 + 17), 2);
        }

        *(v19 + 12) = v23;
        v24 = strm->zalloc;
        if (v24 == zcalloc)
        {
          v25 = calloc(*(v19 + 29), 2uLL);
        }

        else
        {
          v25 = (v24)(strm->opaque, *(v19 + 29), 2);
        }

        *(v19 + 13) = v25;
        *(v19 + 741) = 0;
        *(v19 + 1470) = 64 << memLevel;
        v26 = strm->zalloc;
        if (v26 == zcalloc)
        {
          v27 = calloc((64 << memLevel), 4uLL);
        }

        else
        {
          v27 = (v26)(strm->opaque);
        }

        v28 = *(v19 + 1470);
        *(v19 + 2) = v27;
        *(v19 + 3) = 4 * v28;
        if (*(v19 + 10) && *(v19 + 12) && *(v19 + 13) && v27)
        {
          *(v19 + 736) = &v27[v28 & 0xFFFFFFFE];
          *(v19 + 734) = &v27[3 * v28];
          *(v19 + 45) = v13;
          *(v19 + 46) = strategy;
          *(v19 + 60) = 8;

          return deflateReset(strm);
        }

        *(v19 + 2) = 666;
        strm->msg = "insufficient memory";
        deflateEnd(strm);
      }

      return -4;
    }
  }

  return result;
}

int deflateEnd(z_streamp strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state)
  {
    return -2;
  }

  v3 = *(state + 2);
  v4 = (v3 - 69) > 0x2C || ((1 << (v3 - 69)) & 0x100400400011) == 0;
  if (v4 && v3 != 666 && v3 != 42)
  {
    return -2;
  }

  if (*(state + 2))
  {
    (strm->zfree)(strm->opaque, *(state + 2));
    state = strm->state;
  }

  if (*(state + 13))
  {
    (strm->zfree)(strm->opaque, *(state + 13));
    state = strm->state;
  }

  if (*(state + 12))
  {
    (strm->zfree)(strm->opaque, *(state + 12));
    state = strm->state;
  }

  if (*(state + 10))
  {
    (strm->zfree)(strm->opaque, *(state + 10));
    state = strm->state;
  }

  (strm->zfree)(strm->opaque, state);
  strm->state = 0;
  if (v3 == 113)
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

int deflateReset(z_streamp strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state || !strm->zalloc || !strm->zfree)
  {
    return -2;
  }

  strm->total_in = 0;
  strm->total_out = 0;
  strm->msg = 0;
  strm->data_type = 2;
  *(state + 10) = 0;
  *(state + 4) = *(state + 2);
  v3 = *(state + 11);
  if (v3 < 0)
  {
    v3 = -v3;
    *(state + 11) = v3;
  }

  if (v3)
  {
    v4 = 42;
  }

  else
  {
    v4 = 113;
  }

  *(state + 2) = v4;
  if (v3 == 2)
  {
    v5 = crc32(0, 0, 0);
  }

  else
  {
    v5 = adler32(0, 0, 0);
  }

  strm->adler = v5;
  *(state + 16) = 0;
  _tr_init(state);
  *(state + 11) = 2 * *(state + 17);
  v7 = *(state + 13);
  v8 = 2 * (*(state + 29) - 1);
  *&v7[v8] = 0;
  bzero(v7, v8);
  result = 0;
  v9 = (&configuration_table + 16 * *(state + 45));
  v10 = v9[2];
  *(state + 47) = *v9;
  *(state + 48) = v10;
  v11 = v9[1];
  *(state + 43) = v9[3];
  *(state + 44) = v11;
  *(state + 17) = 0;
  *(state + 164) = 0x200000000;
  *(state + 36) = 2;
  *(state + 19) = 0;
  *(state + 28) = 0;
  return result;
}

int deflate(z_streamp strm, int flush)
{
  if (!strm)
  {
    return -2;
  }

  v2 = *&flush;
  result = -2;
  if (flush <= 5)
  {
    state = strm->state;
    if (state)
    {
      if (!strm->next_out || !strm->next_in && strm->avail_in || (v6 = *(state + 2), flush != 4) && v6 == 666)
      {
        strm->msg = "stream error";
        return result;
      }

      if (!strm->avail_out)
      {
        goto LABEL_136;
      }

      *state = strm;
      v7 = *(state + 16);
      *(state + 16) = flush;
      if (v6 == 42)
      {
        if (*(state + 11) == 2)
        {
          strm->adler = crc32(0, 0, 0);
          v8 = *(state + 2);
          v9 = *(state + 10);
          *(state + 10) = v9 + 1;
          *(v8 + v9) = 31;
          v10 = *(state + 2);
          v11 = *(state + 10);
          *(state + 10) = v11 + 1;
          *(v10 + v11) = -117;
          v12 = *(state + 2);
          v13 = *(state + 10);
          *(state + 10) = v13 + 1;
          *(v12 + v13) = 8;
          v14 = *(state + 6);
          if (!v14)
          {
            v52 = *(state + 2);
            v53 = *(state + 10);
            *(state + 10) = v53 + 1;
            *(v52 + v53) = 0;
            v54 = *(state + 2);
            v55 = *(state + 10);
            *(state + 10) = v55 + 1;
            *(v54 + v55) = 0;
            v56 = *(state + 2);
            v57 = *(state + 10);
            *(state + 10) = v57 + 1;
            *(v56 + v57) = 0;
            v58 = *(state + 2);
            v59 = *(state + 10);
            *(state + 10) = v59 + 1;
            *(v58 + v59) = 0;
            v60 = *(state + 2);
            v61 = *(state + 10);
            *(state + 10) = v61 + 1;
            *(v60 + v61) = 0;
            v62 = *(state + 45);
            if (v62 == 9)
            {
              v63 = 2;
            }

            else if (*(state + 46) > 1 || v62 < 2)
            {
              v63 = 4;
            }

            else
            {
              v63 = 0;
            }

            v112 = *(state + 2);
            v113 = *(state + 10);
            *(state + 10) = v113 + 1;
            *(v112 + v113) = v63;
            v114 = *(state + 2);
            v115 = *(state + 10);
            *(state + 10) = v115 + 1;
            *(v114 + v115) = 7;
LABEL_127:
            *(state + 2) = 113;
            goto LABEL_128;
          }

          v15 = (*v14 != 0) | (2 * (*(v14 + 68) != 0)) | (4 * (*(v14 + 24) != 0)) | (8 * (*(v14 + 40) != 0)) | (16 * (*(v14 + 56) != 0));
          v16 = *(state + 2);
          v17 = *(state + 10);
          *(state + 10) = v17 + 1;
          *(v16 + v17) = v15;
          v18 = *(*(state + 6) + 8);
          v19 = *(state + 2);
          v20 = *(state + 10);
          *(state + 10) = v20 + 1;
          *(v19 + v20) = v18;
          v21 = *(*(state + 6) + 8) >> 8;
          v22 = *(state + 2);
          v23 = *(state + 10);
          *(state + 10) = v23 + 1;
          *(v22 + v23) = v21;
          v24 = *(*(state + 6) + 8) >> 16;
          v25 = *(state + 2);
          v26 = *(state + 10);
          *(state + 10) = v26 + 1;
          *(v25 + v26) = v24;
          v27 = *(*(state + 6) + 8) >> 24;
          v28 = *(state + 2);
          v29 = *(state + 10);
          *(state + 10) = v29 + 1;
          *(v28 + v29) = v27;
          v30 = *(state + 45);
          if (v30 == 9)
          {
            v31 = 2;
          }

          else if (*(state + 46) > 1 || v30 < 2)
          {
            v31 = 4;
          }

          else
          {
            v31 = 0;
          }

          v65 = *(state + 2);
          v66 = *(state + 10);
          *(state + 10) = v66 + 1;
          *(v65 + v66) = v31;
          v67 = *(*(state + 6) + 20);
          v68 = *(state + 2);
          v69 = *(state + 10);
          *(state + 10) = v69 + 1;
          *(v68 + v69) = v67;
          v70 = *(state + 6);
          if (*(v70 + 24))
          {
            v71 = *(v70 + 32);
            v72 = *(state + 2);
            v73 = *(state + 10);
            *(state + 10) = v73 + 1;
            *(v72 + v73) = v71;
            v74 = *(*(state + 6) + 32) >> 8;
            v75 = *(state + 2);
            v76 = *(state + 10);
            *(state + 10) = v76 + 1;
            *(v75 + v76) = v74;
            v70 = *(state + 6);
          }

          if (*(v70 + 68))
          {
            strm->adler = crc32(strm->adler, *(state + 2), *(state + 10));
          }

          *(state + 14) = 0;
          *(state + 2) = 69;
LABEL_49:
          v77 = *(state + 6);
          if (!*(v77 + 24))
          {
            goto LABEL_68;
          }

          v78 = *(state + 10);
          v79 = *(state + 14);
          while (1)
          {
            if (v79 >= *(v77 + 32))
            {
              goto LABEL_63;
            }

            v80 = *(state + 10);
            if (*(state + 3) == v80)
            {
              if (*(v77 + 68))
              {
                v81 = v80 > v78;
              }

              else
              {
                v81 = 0;
              }

              if (v81)
              {
                strm->adler = crc32(strm->adler, (*(state + 2) + v78), v80 - v78);
              }

              flush_pending(strm);
              v80 = *(state + 10);
              v77 = *(state + 6);
              if (*(state + 3) == v80)
              {
                v78 = *(state + 10);
LABEL_63:
                if (*(v77 + 68))
                {
                  v84 = *(state + 10);
                  if (v84 > v78)
                  {
                    strm->adler = crc32(strm->adler, (*(state + 2) + v78), v84 - v78);
                    v77 = *(state + 6);
                  }
                }

                if (*(state + 14) == *(v77 + 32))
                {
                  *(state + 14) = 0;
LABEL_68:
                  *(state + 2) = 73;
LABEL_72:
                  if (*(v77 + 40))
                  {
                    v85 = *(state + 10);
                    do
                    {
                      v86 = *(state + 10);
                      v87 = *(state + 6);
                      if (*(state + 3) == v86)
                      {
                        if (*(v87 + 68))
                        {
                          v88 = v86 > v85;
                        }

                        else
                        {
                          v88 = 0;
                        }

                        if (v88)
                        {
                          strm->adler = crc32(strm->adler, (*(state + 2) + v85), v86 - v85);
                        }

                        flush_pending(strm);
                        v86 = *(state + 10);
                        if (*(state + 3) == v86)
                        {
                          v92 = 0;
                          goto LABEL_86;
                        }

                        v87 = *(state + 6);
                        v85 = *(state + 10);
                      }

                      v89 = *(v87 + 40);
                      v90 = *(state + 14);
                      *(state + 14) = v90 + 1;
                      LODWORD(v89) = *(v89 + v90);
                      v91 = *(state + 2);
                      *(state + 10) = v86 + 1;
                      *(v91 + v86) = v89;
                    }

                    while (v89);
                    v92 = 1;
                    LODWORD(v86) = v85;
LABEL_86:
                    if (*(*(state + 6) + 68))
                    {
                      v93 = *(state + 10);
                      if (v93 > v86)
                      {
                        strm->adler = crc32(strm->adler, (*(state + 2) + v86), v93 - v86);
                      }
                    }

                    if (v92)
                    {
                      *(state + 14) = 0;
                      goto LABEL_91;
                    }

                    v6 = *(state + 2);
LABEL_93:
                    if (v6 != 91)
                    {
                      goto LABEL_114;
                    }
                  }

                  else
                  {
LABEL_91:
                    *(state + 2) = 91;
                  }

                  if (!*(*(state + 6) + 56))
                  {
                    goto LABEL_112;
                  }

                  v94 = *(state + 10);
                  while (1)
                  {
                    v95 = *(state + 10);
                    v96 = *(state + 6);
                    if (*(state + 3) == v95)
                    {
                      if (*(v96 + 68))
                      {
                        v97 = v95 > v94;
                      }

                      else
                      {
                        v97 = 0;
                      }

                      if (v97)
                      {
                        strm->adler = crc32(strm->adler, (*(state + 2) + v94), v95 - v94);
                      }

                      flush_pending(strm);
                      v95 = *(state + 10);
                      if (*(state + 3) == v95)
                      {
                        v101 = 0;
LABEL_108:
                        if (*(*(state + 6) + 68))
                        {
                          v102 = *(state + 10);
                          if (v102 > v95)
                          {
                            strm->adler = crc32(strm->adler, (*(state + 2) + v95), v102 - v95);
                          }
                        }

                        if (v101)
                        {
LABEL_112:
                          *(state + 2) = 103;
                          goto LABEL_115;
                        }

                        v6 = *(state + 2);
LABEL_114:
                        if (v6 == 103)
                        {
LABEL_115:
                          if (!*(*(state + 6) + 68))
                          {
                            goto LABEL_127;
                          }

                          v103 = *(state + 10);
                          v104 = v103 + 2;
                          v105 = *(state + 3);
                          if (v105 < v104)
                          {
                            flush_pending(strm);
                            v103 = *(state + 10);
                            v105 = *(state + 3);
                            v104 = v103 + 2;
                          }

                          if (v105 >= v104)
                          {
                            adler = strm->adler;
                            v107 = *(state + 2);
                            *(state + 10) = v103 + 1;
                            *(v107 + v103) = adler;
                            v108 = strm->adler >> 8;
                            v109 = *(state + 2);
                            v110 = *(state + 10);
                            *(state + 10) = v110 + 1;
                            *(v109 + v110) = v108;
                            strm->adler = crc32(0, 0, 0);
                            goto LABEL_127;
                          }
                        }

LABEL_128:
                        if (*(state + 10))
                        {
                          flush_pending(strm);
                          if (strm->avail_out)
                          {
                            goto LABEL_130;
                          }

LABEL_162:
                          result = 0;
                          *(state + 16) = -1;
                          return result;
                        }

                        if (!strm->avail_in && v2 != 4 && v7 >= v2)
                        {
LABEL_136:
                          strm->msg = "buffer error";
                          return -5;
                        }

LABEL_130:
                        v116 = *(state + 2);
                        avail_in = strm->avail_in;
                        if (v116 != 666)
                        {
                          if (!avail_in)
                          {
                            goto LABEL_138;
                          }

                          goto LABEL_139;
                        }

                        if (avail_in)
                        {
                          goto LABEL_136;
                        }

LABEL_138:
                        if (*(state + 41))
                        {
LABEL_139:
                          v118 = *(state + 46);
                          if (v118 == 3)
                          {
                            v119 = deflate_rle(state, v2);
                          }

                          else if (v118 == 2)
                          {
                            v119 = deflate_huff(state, v2);
                          }

                          else
                          {
                            v119 = (*(&configuration_table + 2 * *(state + 45) + 1))(state, v2);
                          }

                          if ((v119 & 0xFFFFFFFE) == 2)
                          {
                            *(state + 2) = 666;
                          }

                          if ((v119 & 0xFFFFFFFD) != 0)
                          {
                            if (v119 == 1)
                            {
                              if (v2 != 5)
                              {
                                if (v2 == 1)
                                {
                                  _tr_align(state);
                                }

                                else
                                {
                                  _tr_stored_block(state, 0, 0, 0);
                                  if (v2 == 3)
                                  {
                                    v120 = *(state + 13);
                                    v121 = 2 * (*(state + 29) - 1);
                                    *&v120[v121] = 0;
                                    bzero(v120, v121);
                                    if (!*(state + 41))
                                    {
                                      *(state + 39) = 0;
                                      *(state + 17) = 0;
                                    }
                                  }
                                }
                              }

                              flush_pending(strm);
                              if (!strm->avail_out)
                              {
                                goto LABEL_162;
                              }
                            }

                            goto LABEL_160;
                          }

                          if (!strm->avail_out)
                          {
                            goto LABEL_162;
                          }
                        }

                        else if (v2)
                        {
                          if (v116 != 666)
                          {
                            goto LABEL_139;
                          }

LABEL_160:
                          if (v2 == 4)
                          {
                            v122 = *(state + 11);
                            if (v122 < 1)
                            {
                              return 1;
                            }

                            v123 = strm->adler;
                            if (v122 == 2)
                            {
                              v124 = *(state + 2);
                              v125 = *(state + 10);
                              *(state + 10) = v125 + 1;
                              *(v124 + v125) = v123;
                              v126 = strm->adler >> 8;
                              v127 = *(state + 2);
                              v128 = *(state + 10);
                              *(state + 10) = v128 + 1;
                              *(v127 + v128) = v126;
                              v129 = strm->adler >> 16;
                              v130 = *(state + 2);
                              v131 = *(state + 10);
                              *(state + 10) = v131 + 1;
                              *(v130 + v131) = v129;
                              v132 = strm->adler >> 24;
                              v133 = *(state + 2);
                              v134 = *(state + 10);
                              *(state + 10) = v134 + 1;
                              *(v133 + v134) = v132;
                              total_in = strm->total_in;
                              v136 = *(state + 2);
                              v137 = *(state + 10);
                              *(state + 10) = v137 + 1;
                              *(v136 + v137) = total_in;
                              v138 = strm->total_in >> 8;
                              v139 = *(state + 2);
                              v140 = *(state + 10);
                              *(state + 10) = v140 + 1;
                              *(v139 + v140) = v138;
                              v141 = strm->total_in >> 16;
                              v142 = *(state + 2);
                              v143 = *(state + 10);
                              *(state + 10) = v143 + 1;
                              *(v142 + v143) = v141;
                              v144 = strm->total_in >> 24;
                            }

                            else
                            {
                              v145 = v123 >> 16;
                              v146 = *(state + 2);
                              v147 = *(state + 10);
                              *(state + 10) = v147 + 1;
                              *(v146 + v147) = BYTE3(v123);
                              v148 = *(state + 2);
                              v149 = *(state + 10);
                              *(state + 10) = v149 + 1;
                              *(v148 + v149) = v145;
                              v144 = strm->adler;
                              v150 = *(state + 2);
                              v151 = *(state + 10);
                              *(state + 10) = v151 + 1;
                              *(v150 + v151) = BYTE1(v144);
                            }

                            v152 = *(state + 2);
                            v153 = *(state + 10);
                            *(state + 10) = v153 + 1;
                            *(v152 + v153) = v144;
                            flush_pending(strm);
                            v154 = *(state + 11);
                            if (v154 >= 1)
                            {
                              *(state + 11) = -v154;
                            }

                            return *(state + 10) == 0;
                          }
                        }

                        return 0;
                      }

                      v96 = *(state + 6);
                      v94 = *(state + 10);
                    }

                    v98 = *(v96 + 56);
                    v99 = *(state + 14);
                    *(state + 14) = v99 + 1;
                    LODWORD(v98) = *(v98 + v99);
                    v100 = *(state + 2);
                    *(state + 10) = v95 + 1;
                    *(v100 + v95) = v98;
                    if (!v98)
                    {
                      v101 = 1;
                      LODWORD(v95) = v94;
                      goto LABEL_108;
                    }
                  }
                }

                v6 = *(state + 2);
LABEL_70:
                if (v6 == 73)
                {
                  v77 = *(state + 6);
                  goto LABEL_72;
                }

                goto LABEL_93;
              }

              v79 = *(state + 14);
              v78 = *(state + 10);
            }

            v82 = *(*(v77 + 24) + v79);
            v83 = *(state + 2);
            *(state + 10) = v80 + 1;
            *(v83 + v80) = v82;
            v79 = *(state + 14) + 1;
            *(state + 14) = v79;
            v77 = *(state + 6);
          }
        }

        if (*(state + 46) <= 1)
        {
          v33 = *(state + 45);
          if (v33 == 6)
          {
            v34 = 128;
          }

          else
          {
            v34 = 192;
          }

          if (v33 >= 6)
          {
            v35 = v34;
          }

          else
          {
            v35 = 64;
          }

          if (v33 >= 2)
          {
            v32 = v35;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v36 = v32 | ((*(state + 18) << 12) - 30720);
        if (*(state + 39))
        {
          v36 |= 0x20u;
        }

        *(state + 2) = 113;
        v37 = *(state + 2);
        v38 = *(state + 10);
        *(state + 10) = v38 + 1;
        *(v37 + v38) = BYTE1(v36);
        v39 = *(state + 2);
        v40 = *(state + 10);
        *(state + 10) = v40 + 1;
        *(v39 + v40) = ((v36 % 0x1F) | v36) ^ 0x1F;
        if (*(state + 39))
        {
          v41 = strm->adler;
          v42 = v41 >> 16;
          v43 = *(state + 2);
          v44 = *(state + 10);
          *(state + 10) = v44 + 1;
          *(v43 + v44) = BYTE3(v41);
          v45 = *(state + 2);
          v46 = *(state + 10);
          *(state + 10) = v46 + 1;
          *(v45 + v46) = v42;
          v47 = strm->adler;
          v48 = *(state + 2);
          v49 = *(state + 10);
          *(state + 10) = v49 + 1;
          *(v48 + v49) = BYTE1(v47);
          v50 = *(state + 2);
          v51 = *(state + 10);
          *(state + 10) = v51 + 1;
          *(v50 + v51) = v47;
        }

        strm->adler = adler32(0, 0, 0);
        v6 = *(state + 2);
      }

      if (v6 != 69)
      {
        goto LABEL_70;
      }

      goto LABEL_49;
    }
  }

  return result;
}

void *flush_pending(void *result)
{
  v1 = *(result + 7);
  v2 = *(v1 + 40);
  v3 = *(result + 8);
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    v5 = result;
    result = memcpy(*(result + 3), *(v1 + 32), v4);
    v5[3] += v4;
    v6 = v5[7];
    *(v6 + 32) += v4;
    v5[5] += v4;
    *(v5 + 8) -= v4;
    v7 = *(v6 + 40) - v4;
    *(v6 + 40) = v7;
    if (!v7)
    {
      *(v6 + 32) = *(v6 + 16);
    }
  }

  return result;
}

uint64_t deflate_huff(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  while (1)
  {
    if (!*(a1 + 164))
    {
      fill_window(a1);
      if (!*(a1 + 164))
      {
        break;
      }
    }

    *(a1 + 144) = 0;
    v5 = *(*(a1 + 80) + *(a1 + 156));
    v6 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v6) = 0;
    v7 = *(a1 + 5872);
    *(a1 + 5884) = v6 + 1;
    *(v7 + v6) = v5;
    ++*(v4 + 4 * v5);
    LODWORD(v7) = *(a1 + 5884);
    LODWORD(v6) = *(a1 + 5880) - 1;
    --*(a1 + 164);
    v8 = (*(a1 + 156) + 1);
    *(a1 + 156) = v8;
    if (v7 == v6)
    {
      v9 = *(a1 + 136);
      v10 = v9 < 0 ? 0 : (*(a1 + 80) + v9);
      _tr_flush_block(a1, v10, v8 - v9, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(a1 + 136);
  if (v11 < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 80) + v11);
  }

  _tr_flush_block(a1, v12, *(a1 + 156) - v11, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t deflate_rle(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    v6 = *(a1 + 164);
    if (v6 >= 0x102)
    {
      *(a1 + 144) = 0;
      v7 = *(a1 + 156);
      if (!*(a1 + 156))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    fill_window(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x102)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    *(a1 + 144) = 0;
    v7 = *(a1 + 156);
    if (v6 < 3 || !*(a1 + 156))
    {
LABEL_24:
      v18 = *(a1 + 5884);
LABEL_25:
      v19 = *(*(a1 + 80) + v7);
      *(*(a1 + 5888) + 2 * v18) = 0;
      v20 = *(a1 + 5872);
      *(a1 + 5884) = v18 + 1;
      *(v20 + v18) = v19;
      ++*(v4 + 4 * v19);
      v21 = *(a1 + 5884);
      v22 = *(a1 + 5880) - 1;
      --*(a1 + 164);
      v23 = *(a1 + 156) + 1;
      *(a1 + 156) = v23;
      goto LABEL_26;
    }

LABEL_10:
    v8 = (*(a1 + 80) + v7);
    v9 = *(v8 - 1);
    if (v9 != *v8 || v9 != v8[1] || v9 != v8[2])
    {
      goto LABEL_24;
    }

    v10 = 0;
    v11 = v8 + 258;
    while (1)
    {
      v12 = &v8[v10];
      if (v9 != v8[v10 + 3])
      {
        v17 = v12 + 3;
        goto LABEL_39;
      }

      if (v9 != v12[4])
      {
        v17 = v8 + v10 + 4;
        goto LABEL_39;
      }

      v13 = &v8[v10];
      if (v9 != v8[v10 + 5])
      {
        v17 = v13 + 5;
        goto LABEL_39;
      }

      if (v9 != v13[6])
      {
        v17 = v8 + v10 + 6;
        goto LABEL_39;
      }

      v14 = &v8[v10];
      if (v9 != v8[v10 + 7])
      {
        v17 = v14 + 7;
        goto LABEL_39;
      }

      if (v9 != v14[8])
      {
        v17 = v8 + v10 + 8;
        goto LABEL_39;
      }

      v15 = &v8[v10];
      if (v9 != v8[v10 + 9])
      {
        break;
      }

      v16 = v10 + 2;
      v10 += 8;
      if (v16 > 0xF9 || v9 != v15[10])
      {
        v17 = v8 + v10 + 2;
        goto LABEL_39;
      }
    }

    v17 = v15 + 9;
LABEL_39:
    v26 = v17 - v11 + 258;
    if (v26 >= v6)
    {
      v26 = v6;
    }

    *(a1 + 144) = v26;
    v18 = *(a1 + 5884);
    v27 = v26 >= 3;
    v28 = v26 - 3;
    if (!v27)
    {
      goto LABEL_25;
    }

    *(*(a1 + 5888) + 2 * v18) = 1;
    v29 = *(a1 + 5872);
    *(a1 + 5884) = v18 + 1;
    *(v29 + v18) = v28;
    v30 = v4 + 4 * _length_code[v28];
    ++*(v30 + 1028);
    ++*(v5 + 4 * _dist_code[0]);
    v21 = *(a1 + 5884);
    v22 = *(a1 + 5880) - 1;
    LODWORD(v30) = *(a1 + 144);
    *(a1 + 164) -= v30;
    v23 = *(a1 + 156) + v30;
    *(a1 + 156) = v23;
    *(a1 + 144) = 0;
LABEL_26:
    if (v21 == v22)
    {
      v24 = *(a1 + 136);
      v25 = v24 < 0 ? 0 : (*(a1 + 80) + v24);
      _tr_flush_block(a1, v25, v23 - v24, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v32 = *(a1 + 136);
  if (v32 < 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*(a1 + 80) + v32);
  }

  _tr_flush_block(a1, v33, *(a1 + 156) - v32, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t deflate_stored(uint64_t a1, int a2)
{
  if ((*(a1 + 24) - 5) >= 0xFFFF)
  {
    v4 = 0xFFFFLL;
  }

  else
  {
    v4 = *(a1 + 24) - 5;
  }

  while (1)
  {
    v5 = *(a1 + 164);
    if (v5 >= 2)
    {
      v6 = *(a1 + 136);
      goto LABEL_9;
    }

    fill_window(a1);
    v5 = *(a1 + 164);
    if (!(v5 | a2))
    {
      return 0;
    }

    v6 = *(a1 + 136);
    if (!v5)
    {
      break;
    }

LABEL_9:
    v7 = *(a1 + 156) + v5;
    *(a1 + 156) = v7;
    *(a1 + 164) = 0;
    v8 = v6 + v4;
    if (v7)
    {
      v9 = v8 > v7;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      *(a1 + 164) = v7 - v8;
      *(a1 + 156) = v8;
      if (v6 < 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = (*(a1 + 80) + v6);
      }

      _tr_flush_block(a1, v10, v8 - v6, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }

      LODWORD(v7) = *(a1 + 156);
      v6 = *(a1 + 136);
    }

    if (v7 - v6 >= (*(a1 + 68) - 262))
    {
      v11 = v6 < 0 ? 0 : (*(a1 + 80) + v6);
      _tr_flush_block(a1, v11, v7 - v6, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (v6 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(a1 + 80) + v6);
  }

  _tr_flush_block(a1, v13, *(a1 + 156) - v6, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t deflate_fast(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    if (*(a1 + 164) > 0x105u)
    {
      goto LABEL_7;
    }

    fill_window(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    if (v6 < 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = *(a1 + 156);
    v8 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + v7 + 2)) & *(a1 + 124);
    *(a1 + 112) = v8;
    v9 = *(a1 + 104);
    v10 = *(v9 + 2 * v8);
    *(*(a1 + 96) + 2 * (*(a1 + 76) & v7)) = v10;
    *(v9 + 2 * v8) = v7;
    if (!v10 || v7 - v10 > *(a1 + 68) - 262)
    {
LABEL_9:
      v11 = *(a1 + 144);
      goto LABEL_11;
    }

    v11 = longest_match(a1, v10);
    *(a1 + 144) = v11;
LABEL_11:
    if (v11 < 3)
    {
      v32 = *(*(a1 + 80) + *(a1 + 156));
      v33 = *(a1 + 5884);
      *(*(a1 + 5888) + 2 * v33) = 0;
      v34 = *(a1 + 5872);
      *(a1 + 5884) = v33 + 1;
      *(v34 + v33) = v32;
      ++*(v4 + 4 * v32);
      v19 = *(a1 + 5884);
      v20 = *(a1 + 5880) - 1;
      --*(a1 + 164);
      v31 = *(a1 + 156) + 1;
LABEL_20:
      *(a1 + 156) = v31;
      goto LABEL_22;
    }

    v12 = *(a1 + 156) - *(a1 + 160);
    v13 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v13) = v12;
    v14 = *(a1 + 5872);
    *(a1 + 5884) = v13 + 1;
    *(v14 + v13) = v11 - 3;
    v15 = v12 - 1;
    v16 = v4 + 4 * _length_code[(v11 - 3)];
    ++*(v16 + 1028);
    v17 = (v15 >> 7) + 256;
    if ((v15 & 0xFF00) == 0)
    {
      v17 = v15;
    }

    v18 = 4 * _dist_code[v17];
    ++*(v5 + v18);
    v19 = *(a1 + 5884);
    v20 = *(a1 + 5880) - 1;
    v21 = *(a1 + 144);
    v22 = *(a1 + 164) - v21;
    *(a1 + 164) = v22;
    if (v21 <= *(a1 + 176) && v22 >= 3)
    {
      *(a1 + 144) = v21 - 1;
      v23 = *(a1 + 80);
      v25 = *(a1 + 124);
      v24 = *(a1 + 128);
      v27 = *(a1 + 96);
      v26 = *(a1 + 104);
      v28 = *(a1 + 76);
      v29 = *(a1 + 112);
      v30 = v21 - 2;
      v31 = *(a1 + 156) + 1;
      do
      {
        *(a1 + 156) = v31;
        v29 = ((v29 << v24) ^ *(v23 + v31 + 2)) & v25;
        *(a1 + 112) = v29;
        *(v27 + 2 * (v28 & v31)) = *(v26 + 2 * v29);
        *(v26 + 2 * v29) = v31;
        *(a1 + 144) = v30--;
        ++v31;
      }

      while (v30 != -1);
      goto LABEL_20;
    }

    v31 = *(a1 + 156) + v21;
    *(a1 + 156) = v31;
    *(a1 + 144) = 0;
    v35 = *(a1 + 80);
    v36 = *(v35 + v31);
    *(a1 + 112) = v36;
    *(a1 + 112) = ((v36 << *(a1 + 128)) ^ *(v35 + v31 + 1)) & *(a1 + 124);
LABEL_22:
    if (v19 == v20)
    {
      v37 = *(a1 + 136);
      v38 = v37 < 0 ? 0 : (*(a1 + 80) + v37);
      _tr_flush_block(a1, v38, v31 - v37, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v40 = *(a1 + 136);
  if (v40 < 0)
  {
    v41 = 0;
  }

  else
  {
    v41 = (*(a1 + 80) + v40);
  }

  _tr_flush_block(a1, v41, *(a1 + 156) - v40, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t deflate_slow(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    if (*(a1 + 164) >= 0x106u)
    {
      v7 = *(a1 + 144);
      v8 = *(a1 + 160);
      goto LABEL_9;
    }

    fill_window(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 144);
    v8 = *(a1 + 160);
    if (v6 <= 2)
    {
      *(a1 + 168) = v7;
      v9 = 2;
      *(a1 + 144) = 2;
      *(a1 + 148) = v8;
      goto LABEL_19;
    }

LABEL_9:
    v10 = *(a1 + 156);
    v11 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + v10 + 2)) & *(a1 + 124);
    *(a1 + 112) = v11;
    v12 = *(a1 + 104);
    v13 = *(v12 + 2 * v11);
    *(*(a1 + 96) + 2 * (*(a1 + 76) & v10)) = v13;
    *(v12 + 2 * v11) = v10;
    *(a1 + 168) = v7;
    v9 = 2;
    *(a1 + 144) = 2;
    *(a1 + 148) = v8;
    if (!v13)
    {
      goto LABEL_19;
    }

    if (v7 < *(a1 + 176) && v10 - v13 <= *(a1 + 68) - 262)
    {
      v9 = longest_match(a1, v13);
      *(a1 + 144) = v9;
      if (v9 <= 5)
      {
        if (*(a1 + 184) != 1)
        {
          if (v9 != 3)
          {
            goto LABEL_18;
          }

          if ((*(a1 + 156) - *(a1 + 160)) <= 0x1000)
          {
            v9 = 3;
            goto LABEL_18;
          }
        }

        v9 = 2;
        *(a1 + 144) = 2;
      }
    }

LABEL_18:
    v7 = *(a1 + 168);
LABEL_19:
    v14 = v7 - 3;
    if (v7 < 3 || v9 > v7)
    {
      if (*(a1 + 152))
      {
        v31 = *(*(a1 + 80) + (*(a1 + 156) - 1));
        v32 = *(a1 + 5884);
        *(*(a1 + 5888) + 2 * v32) = 0;
        v33 = *(a1 + 5872);
        *(a1 + 5884) = v32 + 1;
        *(v33 + v32) = v31;
        ++*(v4 + 4 * v31);
        if (*(a1 + 5884) == *(a1 + 5880) - 1)
        {
          v34 = *(a1 + 136);
          if (v34 < 0)
          {
            v35 = 0;
          }

          else
          {
            v35 = (*(a1 + 80) + v34);
          }

          _tr_flush_block(a1, v35, *(a1 + 156) - v34, 0);
          *(a1 + 136) = *(a1 + 156);
          flush_pending(*a1);
        }

        ++*(a1 + 156);
        --*(a1 + 164);
        goto LABEL_40;
      }

      v36 = *(a1 + 156) + 1;
      *(a1 + 152) = 1;
      *(a1 + 156) = v36;
      --*(a1 + 164);
    }

    else
    {
      v15 = *(a1 + 156);
      v16 = v15 + *(a1 + 164) - 3;
      v17 = v15 + ~*(a1 + 148);
      v18 = *(a1 + 5884);
      *(*(a1 + 5888) + 2 * v18) = v17;
      v19 = *(a1 + 5872);
      *(a1 + 5884) = v18 + 1;
      *(v19 + v18) = v14;
      v20 = v17 - 1;
      v21 = v4 + 4 * _length_code[v14];
      ++*(v21 + 1028);
      v22 = (v20 >> 7) + 256;
      if ((v20 & 0xFF00) == 0)
      {
        v22 = v20;
      }

      v26 = 4 * _dist_code[v22];
      ++*(v5 + v26);
      v23 = *(a1 + 5884);
      v24 = *(a1 + 5880) - 1;
      LODWORD(v26) = *(a1 + 168);
      *(a1 + 164) = *(a1 + 164) - v26 + 1;
      *(a1 + 168) = v26 - 2;
      v25 = v26 - 3;
      LODWORD(v26) = *(a1 + 156) + 1;
      do
      {
        *(a1 + 156) = v26;
        if (v26 <= v16)
        {
          v27 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + (v26 + 2))) & *(a1 + 124);
          *(a1 + 112) = v27;
          v28 = *(a1 + 104);
          *(*(a1 + 96) + 2 * (*(a1 + 76) & v26)) = *(v28 + 2 * v27);
          *(v28 + 2 * v27) = v26;
        }

        *(a1 + 168) = v25--;
        v26 = (v26 + 1);
      }

      while (v25 != -1);
      *(a1 + 144) = 2;
      *(a1 + 152) = 0;
      *(a1 + 156) = v26;
      if (v23 == v24)
      {
        v29 = *(a1 + 136);
        if (v29 < 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = (*(a1 + 80) + v29);
        }

        _tr_flush_block(a1, v30, v26 - v29, 0);
        *(a1 + 136) = *(a1 + 156);
        flush_pending(*a1);
LABEL_40:
        if (!*(*a1 + 32))
        {
          return 0;
        }
      }
    }
  }

  if (*(a1 + 152))
  {
    v38 = *(*(a1 + 80) + (*(a1 + 156) - 1));
    v39 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v39) = 0;
    v40 = *(a1 + 5872);
    *(a1 + 5884) = v39 + 1;
    *(v40 + v39) = v38;
    ++*(v4 + 4 * v38);
    *(a1 + 152) = 0;
  }

  v41 = *(a1 + 136);
  if (v41 < 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = (*(a1 + 80) + v41);
  }

  _tr_flush_block(a1, v42, *(a1 + 156) - v41, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

void fill_window(uint64_t *a1)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 41);
  v4 = vdup_n_s32(v2);
  while (1)
  {
    v5 = *(a1 + 39);
    v6 = *(a1 + 22) - (v3 + v5);
    if (v5 >= v2 - 262 + *(a1 + 17))
    {
      memcpy(a1[10], (a1[10] + v2), v2);
      v7 = vsub_s32(*(a1 + 156), v4);
      *(a1 + 156) = v7;
      a1[17] -= v2;
      v8 = *(a1 + 29);
      v9 = (a1[13] + 2 * v8 - 2);
      do
      {
        v10 = *v9;
        v11 = v10 >= v2;
        v12 = v10 - v2;
        if (!v11)
        {
          v12 = 0;
        }

        *v9-- = v12;
        LODWORD(v8) = v8 - 1;
      }

      while (v8);
      v13 = (a1[12] + 2 * v2 - 2);
      v14 = v2;
      do
      {
        v15 = *v13;
        v11 = v15 >= v2;
        v16 = v15 - v2;
        if (!v11)
        {
          v16 = 0;
        }

        *v13-- = v16;
        --v14;
      }

      while (v14);
      v6 += v2;
      v5 = v7.i32[0];
    }

    v17 = *a1;
    v18 = *(*a1 + 8);
    if (!v18)
    {
      break;
    }

    v19 = *(a1 + 41);
    if (v18 >= v6)
    {
      v20 = v6;
    }

    else
    {
      v20 = v18;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    v21 = a1[10];
    *(v17 + 8) = v18 - v20;
    v22 = *(*(v17 + 56) + 44);
    if (v22 == 2)
    {
      v23 = crc32(*(v17 + 96), *v17, v20);
      goto LABEL_21;
    }

    if (v22 == 1)
    {
      v23 = adler32(*(v17 + 96), *v17, v20);
LABEL_21:
      *(v17 + 96) = v23;
    }

    memcpy((v21 + v5 + v19), *v17, v20);
    *v17 += v20;
    *(v17 + 16) += v20;
    LODWORD(v19) = *(a1 + 41);
LABEL_23:
    v3 = v19 + v20;
    *(a1 + 41) = v19 + v20;
    if ((v19 + v20) >= 3 && (v24 = a1[10], v25 = *(a1 + 39), v26 = *(v24 + v25), *(a1 + 28) = v26, *(a1 + 28) = ((v26 << *(a1 + 32)) ^ *(v24 + (v25 + 1))) & *(a1 + 31), v3 > 0x105) || !*(*a1 + 8))
    {
      v27 = a1[741];
      v28 = a1[11];
      if (v28 <= v27)
      {
        return;
      }

      v29 = *(a1 + 39) + v3;
      if (v27 >= v29)
      {
        if (v29 + 258 <= v27)
        {
          return;
        }

        if (v29 + 258 - v27 >= v28 - v27)
        {
          v32 = v28 - v27;
        }

        else
        {
          v32 = v29 + 258 - v27;
        }

        bzero((a1[10] + v27), v32);
        v31 = a1[741] + v32;
      }

      else
      {
        if (v28 - v29 >= 0x102)
        {
          v30 = 258;
        }

        else
        {
          v30 = v28 - v29;
        }

        bzero((a1[10] + v29), v30);
        v31 = v30 + v29;
      }

      a1[741] = v31;
      return;
    }
  }
}

uint64_t longest_match(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 172);
  v3 = *(a1 + 168);
  v4 = *(a1 + 80);
  v5 = *(a1 + 156);
  v6 = (v4 + v5);
  v7 = *(a1 + 68) - 262;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 76);
  v12 = *(a1 + 164);
  v13 = v6[v3 - 1];
  v14 = v6[v3];
  v15 = *(a1 + 192);
  if (v3 >= *(a1 + 188))
  {
    v2 >>= 2;
  }

  if (v15 >= v12)
  {
    v15 = *(a1 + 164);
  }

  while (1)
  {
    v16 = (v4 + a2);
    v17 = &v16[v3];
    if (*v17 != v14 || *(v17 - 1) != v13 || *v16 != *v6 || v16[1] != v6[1])
    {
      goto LABEL_32;
    }

    v18 = 0;
    v19 = v4 + 5 + a2;
    while (1)
    {
      v20 = &v6[v18];
      if (v6[v18 + 3] != *(v19 + v18 - 2))
      {
        v26 = v20 + 3;
        goto LABEL_29;
      }

      if (v20[4] != *(v19 + v18 - 1))
      {
        v26 = v6 + v18 + 4;
        goto LABEL_29;
      }

      v21 = &v6[v18];
      if (v6[v18 + 5] != *(v19 + v18))
      {
        v26 = v21 + 5;
        goto LABEL_29;
      }

      if (v21[6] != *(v19 + v18 + 1))
      {
        v26 = v6 + v18 + 6;
        goto LABEL_29;
      }

      v22 = &v6[v18];
      if (v6[v18 + 7] != *(v19 + v18 + 2))
      {
        v26 = v22 + 7;
        goto LABEL_29;
      }

      if (v22[8] != *(v19 + v18 + 3))
      {
        v26 = v6 + v18 + 8;
        goto LABEL_29;
      }

      v23 = &v6[v18];
      if (v6[v18 + 9] != *(v19 + v18 + 4))
      {
        break;
      }

      v24 = v18 + 8;
      if ((v18 + 2) <= 0xF9)
      {
        v25 = *(v19 + v18 + 5);
        v18 += 8;
        if (v23[10] == v25)
        {
          continue;
        }
      }

      v26 = v6 + v24 + 2;
      goto LABEL_29;
    }

    v26 = v23 + 9;
LABEL_29:
    v27 = v26 - (v6 + 258);
    v28 = v26 - v6;
    if (v28 <= v3)
    {
      goto LABEL_32;
    }

    *(a1 + 160) = a2;
    if (v28 >= v15)
    {
      break;
    }

    v13 = v6[v27 + 257];
    v14 = v6[v28];
    LODWORD(v3) = v28;
LABEL_32:
    a2 = *(v10 + 2 * (a2 & v11));
    --v2;
    if (v9 >= a2 || v2 == 0)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v3) = v28;
LABEL_37:
  if (v3 >= v12)
  {
    return v12;
  }

  else
  {
    return v3;
  }
}

uint64_t BrotliBuildHistogramsWithContext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 24);
  v45 = v16;
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a5 + 24);
  v42 = v18;
  if (v18)
  {
    v19 = *v18;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v19 = 0;
    if (!a2)
    {
      return result;
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = a10;
  v27 = a9;
  v44 = 0;
  do
  {
    if (!v17)
    {
      ++v23;
      v22 = *(*(a4 + 16) + v23);
      v17 = v45[v23];
    }

    v28 = (result + 16 * v20);
    v29 = a13 + 2832 * v22;
    v30 = *(v28 + 6);
    ++*(v29 + 4 * v30);
    ++*(v29 + 2816);
    v31 = *v28;
    if (v31)
    {
      do
      {
        v32 = v27;
        if (!v15)
        {
          ++v25;
          v24 = *(*(a3 + 16) + v25);
          v15 = v14[v25];
        }

        v33 = v24;
        if (a11)
        {
          v34 = &_kBrotliContextLookupTable + (*(a11 + 4 * v24) << 9);
          v33 = (v24 << 6) + (v34[v26 + 256] | v34[v32]);
        }

        v35 = a12 + 1040 * v33;
        --v15;
        ++*(v35 + 4 * *(a6 + (a7 & a8)));
        ++*(v35 + 1024);
        v27 = *(a6 + (a7++ & a8));
        v26 = v32;
        --v31;
      }

      while (v31);
    }

    else
    {
      v32 = v26;
    }

    v36 = v28[1] & 0x1FFFFFF;
    a7 += v36;
    if (v36)
    {
      v32 = *(a6 + ((a7 - 2) & a8));
      v27 = *(a6 + ((a7 - 1) & a8));
      if (v30 >= 0x80)
      {
        if (v19)
        {
          v37 = v21;
        }

        else
        {
          v37 = *(*(a5 + 16) + ++v44);
          v19 = v42[v44];
        }

        --v19;
        v38 = v30 >> 6;
        LODWORD(v30) = v30 & 7;
        if (v30 >= 3)
        {
          v30 = 3;
        }

        else
        {
          v30 = v30;
        }

        if (v38 != 4 && v38 != 2 && v38 != 7)
        {
          v30 = 3;
        }

        v21 = v37;
        v41 = a14 + 2192 * (v30 | (4 * v37));
        ++*(v41 + 4 * (*(v28 + 7) & 0x3FF));
        ++*(v41 + 2176);
      }
    }

    --v17;
    ++v20;
    v26 = v32;
  }

  while (v20 != a2);
  return result;
}

uint64_t adler32_vec(uint64_t a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + (a2 << 32);
  if (a4 >= 5552)
  {
    v5 = a4 - 5552;
    do
    {
      v6 = *a3;
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, vec_table[2]), *a3, *&vec_table[2]);
      v6.i16[0] = vaddlvq_u8(*a3);
      v7.i32[0] = vaddlvq_u16(v7);
      ++a3;
      v8 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v6.i8, *v7.i8));
      v9 = 173;
      do
      {
        v10 = *a3;
        v11 = a3[1];
        v12 = vshld_n_s64(v8, 0x25uLL);
        v13 = (v8 + *&v12);
        v10.i16[0] = vaddlvq_u8(*a3);
        v12.i16[0] = vaddlvq_u8(v11);
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, vec_table[0]), *a3, *vec_table), *v11.i8, vec_table[2]), v11, *&vec_table[2]);
        v14.i32[0] = vaddlvq_u16(v14);
        a3 += 2;
        v8 = vadd_s32(v13, vzip1_s32(*&vaddl_u16(*v10.i8, v12), *v14.i8));
        v15 = __OFSUB__(v9--, 1);
      }

      while (!((v9 < 0) ^ v15 | (v9 == 0)));
      v16 = vshrq_n_u64(vmull_lane_u32(v8, 0x800780710000FFF1, 1), 0x2FuLL);
      v16.i32[1] = v16.i32[2];
      v4 = vmls_lane_s32(v8, *v16.i8, 0x800780710000FFF1, 0);
      v15 = __OFSUB__(v5, 5552);
      v5 -= 5552;
    }

    while (v5 < 0 == v15);
    a4 = v5 + 5552;
  }

  v15 = __OFSUB__(a4, 32);
  for (i = a4 - 32; i < 0 == v15; i -= 32)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = vshld_n_s64(v4, 0x25uLL);
    v21 = (v4 + *&v20);
    v18.i16[0] = vaddlvq_u8(*a3);
    v20.i16[0] = vaddlvq_u8(v19);
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, vec_table[0]), *a3, *vec_table), *v19.i8, vec_table[2]), v19, *&vec_table[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, vec_table[2]), *a3, *&vec_table[2]);
    v23.i16[0] = vaddlvq_u8(*a3);
    v24.i32[0] = vaddlvq_u16(v24);
    ++a3;
    v4 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v23.i8, *v24.i8));
  }

  for (j = i & 0xF; j; v4 += v26 + vshld_n_s64(v4 + v26, 0x20uLL))
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    --j;
  }

  v27 = vshrq_n_u64(vmull_lane_u32(v4, 0x800780710000FFF1, 1), 0x2FuLL);
  v27.i32[1] = v27.i32[2];
  v28 = vmls_lane_s32(v4, *v27.i8, 0x800780710000FFF1, 0);
  return (v28.i32[0] + (v28.i32[1] << 16));
}

uint64_t lzfseStreamDecodeInit(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v6 = realloc_stream_state(v5, 1, a2, 0x18B940u, 0x180000u);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  if (a2 == 2193)
  {
    v9 = 15000;
  }

  else
  {
    v9 = 40000;
  }

  v7[1838] = v9;
  *(v7 + 16) -= v7;
  *(v7 + 10) = 833856;
  *(v7 + 11) = 1620288;
  *(v7 + 6) = 47424;
  *(v7 + 7) = 47424;
  *(v7 + 8) = 47424;
  *(v7 + 9) = 833856;
  *(v7 + 2) = 47424;
  *(v7 + 3) = 833856;
  *(v7 + 4) = 833856;
  return result;
}

uint64_t lzfseStreamDecode(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 128) += v4;
  v6 = vdupq_n_s64(v4);
  *(v4 + 48) = vaddq_s64(v6, v5);
  v7 = vaddq_s64(v6, *(v4 + 80));
  *(v4 + 64) = vaddq_s64(v6, *(v4 + 64));
  *(v4 + 80) = v7;
  v28 = v6;
  v8 = vaddq_s64(v6, *(v4 + 16));
  *(v4 + 16) = v8;
  *(v4 + 32) += v4;
  v9 = v8.i64[0];
  while (1)
  {
    v10 = *(v4 + 64);
    if (*(a1 + 24) >= &v9[-v10 + 786432])
    {
      v11 = &v9[-v10 + 786432];
    }

    else
    {
      v11 = *(a1 + 24);
    }

    if (v11)
    {
      memcpy(*(v4 + 64), *(a1 + 16), v11);
      *(v4 + 64) += v11;
      v12 = *(a1 + 24) - v11;
      *(a1 + 16) += v11;
      *(a1 + 24) = v12;
    }

    v14 = *(v4 + 24);
    v13 = *(v4 + 32);
    if (v13 >= v14 + 393216)
    {
      v15 = *(v4 + 72);
      v16 = v15 - 0x40000;
      if (v13 < (v15 - 0x40000))
      {
        v16 = *(v4 + 32);
      }

      if (v16 >= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = *(v4 + 24);
      }

      if (v17 > v14)
      {
        if (v15 != v17)
        {
          memmove(*(v4 + 80), v17, v15 - v17);
          v13 = *(v4 + 32);
          v15 = *(v4 + 72);
        }

        *(v4 + 32) = v13 + v14 - v17;
        *(v4 + 72) = &v15[v14 - v17];
      }
    }

    if (!*(v4 + 40) && *(v4 + 72) < *(v4 + 88))
    {
      v18 = lzfseDecode(v4 + 48);
      if (v18 == -1)
      {
        if (a2)
        {
LABEL_46:
          v25 = 1;
          goto LABEL_41;
        }
      }

      else if (v18 == -3)
      {
        goto LABEL_46;
      }

      if (*(v4 + 96))
      {
        *(v4 + 40) = 1;
      }
    }

    if (*(v4 + 44))
    {
      goto LABEL_40;
    }

    v19 = *(v4 + 32);
    if (*(a1 + 8) >= *(v4 + 72) - v19)
    {
      v20 = *(v4 + 72) - v19;
    }

    else
    {
      v20 = *(a1 + 8);
    }

    if (v20)
    {
      memcpy(*a1, v19, v20);
      v19 = (*(v4 + 32) + v20);
      *(v4 + 32) = v19;
      v21 = *(a1 + 8) - v20;
      *a1 += v20;
      *(a1 + 8) = v21;
    }

    if (*(v4 + 40) && v19 == *(v4 + 72))
    {
      break;
    }

    if (*(v4 + 44))
    {
LABEL_40:
      v25 = 0;
LABEL_41:
      v26 = *(v4 + 72);
      v19 = *(v4 + 32);
      goto LABEL_42;
    }

    v22 = *(v4 + 48);
    v9 = *(v4 + 16);
    if (v22 >= v9 + 393216)
    {
      v23 = *(v4 + 64);
      v24 = v23 - v22;
      if (v23 - v22 >= 1)
      {
        memmove(v9, v22, v23 - v22);
        v9 = *(v4 + 16);
      }

      *(v4 + 48) = v9;
      *(v4 + 64) = &v9[v24];
    }

    v25 = v20 | v11;
    if (!(v20 | v11))
    {
      goto LABEL_41;
    }
  }

  v25 = 0;
  *(v4 + 44) = 1;
  v26 = v19;
LABEL_42:
  *(v4 + 128) -= v4;
  *(v4 + 48) = vsubq_s64(*(v4 + 48), v28);
  *(v4 + 64) -= v4;
  *(v4 + 72) = &v26[-v4];
  *(v4 + 80) = vsubq_s64(*(v4 + 80), v28);
  *(v4 + 16) = vsubq_s64(*(v4 + 16), v28);
  *(v4 + 32) = &v19[-v4];
  if (v25)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v4 + 44) != 0;
  }
}

size_t lzma_xz_buffer_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = 0;
  if (a4 >= 0xC && a5)
  {
    if (*a3 != 1484404733 || *(a3 + 4) != 90)
    {
      return 0;
    }

    v12 = *(a3 + 8);
    if (v12 != xz_simple_crc32((a3 + 6), 2))
    {
      return 0;
    }

    if (*(a3 + 6))
    {
      return 0;
    }

    v13 = *(a3 + 7);
    if (v13 > 0xF)
    {
      return 0;
    }

    result = 0;
    if (*(a3 + 7) > 3u)
    {
      if (v13 == 4)
      {
        v13 = 8;
      }

      else
      {
        if (v13 != 10)
        {
          return result;
        }

        v13 = 32;
      }
    }

    else if (*(a3 + 7))
    {
      if (v13 != 1)
      {
        return result;
      }

      v13 = 4;
    }

    if (a4 < 0xD)
    {
      return 0;
    }

    v14 = 0;
    v15 = 12;
    v32 = v13;
    while (1)
    {
      v16 = (a3 + v15);
      v17 = *(a3 + v15);
      v18 = v15 + 1;
      if (!*(a3 + v15))
      {
        break;
      }

      v33 = 4 * v17 + 4;
      v34 = v14;
      v19 = v33 + v18;
      if (v33 + v18 <= a4)
      {
        v20 = v15;
        v21 = *&v16[4 * v17];
        if (v21 == xz_simple_crc32(v16, 4 * v17))
        {
          v38 = v20 + 2;
          v22 = *(a3 + v18);
          if ((v22 & 0x3F) == 0 && ((*(a3 + v18) & 0x40) == 0 || (xz_read_multi_byte(a3, v19, &v38, &v37) & 0x80000000) == 0) && ((v22 & 0x80) == 0 || (xz_read_multi_byte(a3, v19, &v38, &v37) & 0x80000000) == 0))
          {
            v35 = 0;
            v36 = 0;
            if ((xz_read_multi_byte(a3, v19, &v38, &v36) & 0x80000000) == 0 && (xz_read_multi_byte(a3, v19, &v38, &v35) & 0x80000000) == 0 && v36 == 33 && v35 == 1 && v38 < v19 && *(a3 + v38) <= 0x28u)
            {
              v23 = v33 + v20;
              v38 = 0;
              v24 = lzma2_block_decode(a1 + v34, a2 - v34, a3 + v23, a4 - v23, &v38, a5);
              if (v24)
              {
                if (v38)
                {
                  v15 = v23 + v32 + ((v38 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                  v14 = v24 + v34;
                  if (v15 < a4)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }
      }

      return 0;
    }

    v37 = 0;
    v38 = v15 + 1;
    if ((xz_read_multi_byte(a3, a4, &v38, &v37) & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = v37;
    if (v37)
    {
      while ((xz_read_multi_byte(a3, a4, &v38, &v36) & 0x80000000) == 0 && (xz_read_multi_byte(a3, a4, &v38, &v36) & 0x80000000) == 0)
      {
        if (!--v25)
        {
          goto LABEL_44;
        }
      }

      return 0;
    }

LABEL_44:
    v26 = (v38 - v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = v26 + 4;
    if (&v16[v26 + 4] > a3 + a4)
    {
      return 0;
    }

    v28 = *&v16[v26];
    if (v28 != xz_simple_crc32((a3 + v15), v26))
    {
      return 0;
    }

    v29 = v27 + v15;
    if (v27 + v15 + 12 > a4)
    {
      return 0;
    }

    v30 = (a3 + v29);
    if (*(a3 + v29 + 8) != *(a3 + 6) || *(v30 + 5) != 23129)
    {
      return 0;
    }

    v31 = *v30;
    if (v31 == xz_simple_crc32(v30 + 4, 6))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t xz_simple_crc32(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    v3 = *a1++;
    v4 = crc32_lut4[(v2 ^ v3) & 0xF];
    v2 = (v4 >> 4) ^ (v2 >> 8) ^ crc32_lut4[(v4 ^ ((v2 ^ v3) >> 4)) & 0xF];
    --a2;
  }

  while (a2);
  return ~v2;
}

uint64_t xz_read_multi_byte(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 < a2)
  {
    if (v4 + 9 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4 + 9;
    }

    v6 = *(a1 + v4);
    v7 = v6 & 0x7F;
    v8 = v4 + 1;
    if ((v6 & 0x80) == 0)
    {
LABEL_6:
      result = 0;
      *a3 = v8;
      *a4 = v7;
      return result;
    }

    v10 = 7;
    while (v5 != v8)
    {
      v11 = *(a1 + v8);
      if (!v11)
      {
        break;
      }

      v7 |= (v11 & 0x7F) << v10;
      v10 += 7;
      ++v8;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

size_t compression_decode_scratch_buffer_size(compression_algorithm algorithm)
{
  if (algorithm - 512 >= 0xA)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = COMPRESSION_ZLIB;
  }

  if (v1 - 1280 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1285;
  }

  if (v2 > 2192)
  {
    if (v2 > 3071)
    {
      if ((v2 - 3072) <= 0x20 && ((1 << v2) & 0x100010001) != 0)
      {
        return smb_decode_scratch_size(v2);
      }

      return 0;
    }

    if ((v2 - 2304) < 2)
    {
      return lzma_encode_scratch_size();
    }

    if (v2 != 2193)
    {
      if (v2 == 2209)
      {
        return lzfse_decode_buffer_scratch_size_iboot();
      }

      return 0;
    }

    return lzfse_decode_scratch_size(v2);
  }

  if (v2 > 1284)
  {
    if ((v2 - 1792) < 3)
    {
      return lzbitmap_decode_scratch_size();
    }

    if ((v2 - 2049) >= 2)
    {
      if (v2 != 1285)
      {
        return 0;
      }

      return zlib_decode_scratch_size();
    }

    return lzfse_decode_scratch_size(v2);
  }

  switch(v2)
  {
    case 517:
      return zlib_decode_scratch_size();
    case 774:
      return lzma_xz_buffer_decode_scratch_size();
    case 1031:
      return lzx_decode_scratch_size();
  }

  return 0;
}

size_t compression_encode_scratch_buffer_size(compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = 2584;
  }

  if (v1 - 512 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 517;
  }

  if ((v2 - 1280) >= 0xA)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1285;
  }

  if (v3 > 2048)
  {
    if (v3 <= 2303)
    {
      if ((v3 - 2049) < 2 || v3 == 2193 || v3 == 2209)
      {
        return lzfse_encode_scratch_size(v3);
      }

      return 0;
    }

    if ((v3 - 3072) <= 0x20 && ((1 << v3) & 0x100010001) != 0)
    {
      return smb_encode_scratch_size(v3);
    }

    if ((v3 - 2304) < 2)
    {
      return lzvn_encode_scratch_size(v3);
    }

    if (v3 != 2584)
    {
      return 0;
    }

    return lz24_encode_scratch_buffer_size();
  }

  else
  {
    if (v3 > 1284)
    {
      if ((v3 - 1536) < 3)
      {
        return lzbitmap_fast_encode_scratch_size(v3 & 0xF);
      }

      if ((v3 - 1792) < 3)
      {
        return lzbitmap_encode_scratch_size(v3 & 0xF);
      }

      if (v3 != 1285)
      {
        return 0;
      }

      return zlib_encode_scratch_size();
    }

    if (v3 <= 773)
    {
      if ((v3 - 256) < 2)
      {
        return 0x8000;
      }

      if (v3 != 517)
      {
        return 0;
      }

      return zlib_encode_scratch_size();
    }

    if (v3 != 774)
    {
      return 0;
    }

    return lzma_encode_scratch_size();
  }
}

size_t compression_encode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  v6 = algorithm;
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 >= 0xA)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 & 0xF;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 >= 0xA)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11 & 0xF;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11 & 0xF;
  }

  if (v11 - 1280 >= 0xA)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1285;
  }

  v16 = compression_encode_scratch_buffer_size(v15);
  v17 = v16;
  if (scratch_buffer)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 == 0;
  }

  v19 = v18;
  if (!v18)
  {
    scratch_buffer = malloc(v16);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v31 = v19;
  v20 = 0;
  if (v15 <= 2048)
  {
    if (v15 <= 1284)
    {
      if (v15 <= 516)
      {
        if (v15 == COMPRESSION_LZ4)
        {
          v21 = lz4_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        else
        {
          if (v15 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_66;
          }

          v21 = lz4raw_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_65;
      }

      if (v15 != COMPRESSION_ZLIB)
      {
        if (v15 != COMPRESSION_LZMA)
        {
          goto LABEL_66;
        }

        v21 = lzma_encode_buffer();
        goto LABEL_65;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 0;
    }

    else
    {
      if (v15 - 1536 < 3)
      {
        v21 = lzbitmap_fast_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
        goto LABEL_65;
      }

      if (v15 - 1792 < 3)
      {
        v21 = lzbitmap_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
LABEL_65:
        v20 = v21;
        goto LABEL_66;
      }

      if (v15 != 1285)
      {
        goto LABEL_66;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 1;
    }

    v21 = zlib_encode_buffer(v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_65;
  }

  if (v15 > 2583)
  {
    if (v15 - 3072 > 0x20 || ((1 << v15) & 0x100010001) == 0)
    {
      if (v15 == 2584)
      {
        v21 = lz24_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v6);
      }

      else
      {
        if (v15 != COMPRESSION_BROTLI)
        {
          goto LABEL_66;
        }

        v21 = brotli_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
      }
    }

    else
    {
      v21 = smb_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    }

    goto LABEL_65;
  }

  if (v15 > 2208)
  {
    if (v15 - 2304 < 2)
    {
      v21 = lzvn_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
      goto LABEL_65;
    }

    if (v15 != 2209)
    {
      goto LABEL_66;
    }

LABEL_60:
    v21 = lzfse_encode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    goto LABEL_65;
  }

  if (v15 - 2049 < 2 || v15 == 2193)
  {
    goto LABEL_60;
  }

LABEL_66:
  if ((v31 & 1) == 0)
  {
    memset_s(scratch_buffer, v17, 0, v17);
    free(scratch_buffer);
  }

  return v20;
}

size_t compression_decode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1285;
  }

  v13 = compression_decode_scratch_buffer_size(v12);
  v16 = v13;
  if (scratch_buffer)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13 == 0;
  }

  v18 = v17;
  if (!v17)
  {
    scratch_buffer = malloc(v13);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v19 = 0;
  if (v12 <= 2048)
  {
    if (v12 <= 1284)
    {
      if (v12 <= 516)
      {
        if (v12 == COMPRESSION_LZ4)
        {
          v20 = lz4_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
        }

        else
        {
          if (v12 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_60;
          }

          v20 = lz4raw_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
        }

        goto LABEL_59;
      }

      if (v12 != COMPRESSION_ZLIB)
      {
        if (v12 == COMPRESSION_LZMA)
        {
          v19 = lzma_xz_buffer_decode(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
          if (v19)
          {
            goto LABEL_60;
          }

          v20 = lzma_decode_buffer();
        }

        else
        {
          if (v12 != 1031)
          {
            goto LABEL_60;
          }

          v20 = lzx_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_59;
      }

      v22 = dst_buffer;
      v23 = dst_size;
      v24 = src_buffer;
      v25 = src_size;
      v26 = scratch_buffer;
      v27 = 0;
      goto LABEL_57;
    }

    if (v12 - 1536 < 3)
    {
      v20 = lzbitmap_fast_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, v14);
    }

    else
    {
      if (v12 - 1792 >= 3)
      {
        if (v12 != 1285)
        {
          goto LABEL_60;
        }

        v22 = dst_buffer;
        v23 = dst_size;
        v24 = src_buffer;
        v25 = src_size;
        v26 = scratch_buffer;
        v27 = 1;
LABEL_57:
        v20 = zlib_decode_buffer(v22, v23, v24, v25, v26, v27);
        goto LABEL_59;
      }

      v20 = lzbitmap_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v14, v15);
    }

LABEL_59:
    v19 = v20;
    goto LABEL_60;
  }

  if (v12 > 2583)
  {
    if (v12 - 3072 > 0x20 || ((1 << v12) & 0x100010001) == 0)
    {
      if (v12 == 2584)
      {
        v20 = lz24_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
      }

      else
      {
        if (v12 != COMPRESSION_BROTLI)
        {
          goto LABEL_60;
        }

        v20 = brotli_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
      }
    }

    else
    {
      v20 = smb_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    }

    goto LABEL_59;
  }

  if (v12 > 2208)
  {
    if (v12 - 2304 >= 2)
    {
      if (v12 != 2209)
      {
        goto LABEL_60;
      }

      v20 = lzfse_decode_buffer_iboot(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
    }

    else
    {
      v20 = lzvn_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
    }

    goto LABEL_59;
  }

  if (v12 - 2049 < 2 || v12 == 2193)
  {
    v20 = lzfse_decode_buffer(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    goto LABEL_59;
  }

LABEL_60:
  if ((v18 & 1) == 0)
  {
    memset_s(scratch_buffer, v16, 0, v16);
    free(scratch_buffer);
  }

  return v19;
}

unint64_t BrotliStoreHuffmanTree(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v33 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  BrotliWriteHuffmanTree(a1, a2, &v33, v40, v39);
  v8 = v33;
  if (v33)
  {
    v9 = v40;
    do
    {
      v10 = *v9++;
      ++*(v34 + v10);
      --v8;
    }

    while (v8);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (!*(v34 + v13))
  {
LABEL_8:
    if (++v13 == 18)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    v12 = 1;
    v11 = v13;
    goto LABEL_8;
  }

  v12 = 2;
LABEL_11:
  v14 = 18;
  BrotliCreateHuffmanTree(v34, 18, 5, a3, v37);
  result = BrotliConvertBitDepthsToSymbols(v37, 18, v36);
  if (v12 >= 2)
  {
    v16 = &dword_10 + 1;
    while (!*(v37 + BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kStorageOrder[v16]))
    {
      if (--v16 == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }
    }

    v14 = v16 + 1;
  }

LABEL_17:
  v17 = 2;
  if (!BYTE3(v37[0]))
  {
    v17 = 3;
  }

  if (BYTE1(v37[0]) | BYTE2(v37[0]))
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = *a4;
  *(a5 + (*a4 >> 3)) = (v18 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
  v20 = v19 + 2;
  *a4 = v20;
  v21 = v14 - v18;
  if (v14 > v18)
  {
    v22 = &BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kStorageOrder[v18];
    do
    {
      v23 = *v22++;
      v24 = *(v37 + v23);
      v25 = BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kHuffmanBitLengthHuffmanCodeBitLengths[v24];
      result = v20 & 7;
      *(a5 + (v20 >> 3)) = (BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kHuffmanBitLengthHuffmanCodeSymbols[v24] << (v20 & 7)) | *(a5 + (v20 >> 3));
      v20 += v25;
      --v21;
    }

    while (v21);
    *a4 = v20;
  }

  if (v12 == 1)
  {
    *(v37 + v11) = 0;
  }

  v26 = v33;
  if (v33)
  {
    v27 = v39;
    v28 = v40;
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *(v37 + v30);
      result = *(a5 + (v20 >> 3));
      *(a5 + (v20 >> 3)) = (v36[v30] << (v20 & 7)) | result;
      v20 += v31;
      if (v30 == 16)
      {
        break;
      }

      if (v29 == 17)
      {
        v32 = 3;
LABEL_34:
        result = v20 & 7;
        *(a5 + (v20 >> 3)) = (*v27 << (v20 & 7)) | *(a5 + (v20 >> 3));
        v20 += v32;
      }

      ++v27;
      if (!--v26)
      {
        *a4 = v20;
        return result;
      }
    }

    v32 = 2;
    goto LABEL_34;
  }

  return result;
}

uint64_t BrotliBuildAndStoreHuffmanTreeFast(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v89 = 0u;
  v90 = 0u;
  if (!a3)
  {
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  v16 = 8;
  do
  {
    v17 = *(a2 + 4 * v15);
    if (v17)
    {
      if (v14 <= 3)
      {
        *(&v89 + v14) = v15;
      }

      ++v14;
      a3 -= v17;
    }

    ++v15;
    v16 += 16;
  }

  while (a3);
  v18 = v14 - 1;
  if (v14 <= 1)
  {
LABEL_9:
    v19 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v19 += 4;
    *a7 = v19;
    v20 = v89;
    *(a8 + (v19 >> 3)) = (v89 << (v19 & 7)) | *(a8 + (v19 >> 3));
    *a7 = v19 + a4;
    a5[v20] = 0;
    *(a6 + 2 * v20) = 0;
    return result;
  }

  v88 = result;
  bzero(a5, v15);
  result = BrotliAllocate(v88);
  if (!*(v88 + 24))
  {
    v21 = result;
    v87 = a6;
    v22 = 1;
    do
    {
      if (v15)
      {
        v23 = v15 - 1;
        v24 = v21;
        do
        {
          v25 = *(a2 + 4 * v23);
          if (v25)
          {
            if (v25 < v22)
            {
              v25 = v22;
            }

            *v24 = v25;
            *(v24 + 4) = -1;
            *(v24 + 6) = v23;
            v24 += 8;
          }

          --v23;
        }

        while (v23 != -1);
      }

      else
      {
        v24 = v21;
      }

      v26 = ((v24 - v21) >> 3);
      if (v26 > 0xC)
      {
        v32 = 2 * (v26 < 0x39);
        do
        {
          v33 = kBrotliShellGaps[v32];
          if (v33 < v26)
          {
            v34 = 0;
            v35 = kBrotliShellGaps[v32];
            do
            {
              v36 = *(v21 + 8 * v35);
              v37 = v35;
              if (v35 >= v33)
              {
                v38 = v34;
                v39 = v35;
                while (*(v21 + v38) > v36)
                {
                  v37 = v39 - v33;
                  *(v21 + 8 * v39) = *(v21 + v38);
                  v38 -= 8 * v33;
                  v39 = v37;
                  if (v37 < v33)
                  {
                    goto LABEL_38;
                  }
                }

                v37 = v39;
              }

LABEL_38:
              *(v21 + 8 * v37) = v36;
              ++v35;
              v34 += 8;
            }

            while (v35 != v26);
          }

          ++v32;
        }

        while (v32 != 6);
      }

      else if (v26 >= 2)
      {
        v27 = 0;
        for (i = 1; i != v26; ++i)
        {
          v29 = *(v21 + 8 * i);
          v30 = v27;
          v31 = i;
          do
          {
            if (*(v21 + v30) <= v29)
            {
              break;
            }

            *(v21 + 8 * v31) = *(v21 + v30);
            v30 -= 8;
            --v31;
          }

          while (v31);
          *(v21 + 8 * v31) = v29;
          v27 += 8;
        }
      }

      v40 = (v24 - v21) >> 3;
      *v24 = -1;
      *(v24 + 8) = -1;
      if (v40 >= 2)
      {
        v41 = 0;
        v42 = v40 + 1;
        v43 = (v24 + 16);
        v44 = v40 + 1;
        do
        {
          v45 = *(v21 + 8 * v41);
          v46 = *(v21 + 8 * v42);
          v47 = v45 > v46;
          if (v45 > v46)
          {
            v48 = v41;
          }

          else
          {
            v48 = v41 + 1;
          }

          if (v47)
          {
            v49 = v42 + 1;
          }

          else
          {
            v49 = v42;
          }

          if (v47)
          {
            v50 = v42;
          }

          else
          {
            v50 = v41;
          }

          v51 = *(v21 + 8 * v48);
          v52 = *(v21 + 8 * v49);
          v53 = v51 > v52;
          if (v51 > v52)
          {
            v41 = v48;
          }

          else
          {
            v41 = v48 + 1;
          }

          if (v53)
          {
            v42 = v49 + 1;
          }

          else
          {
            v42 = v49;
          }

          if (v53)
          {
            v48 = v49;
          }

          *(v43 - 2) = *(v21 + 8 * v48) + *(v21 + 8 * v50);
          *(v43 - 2) = v50;
          *(v43 - 1) = v48;
          *v43++ = -1;
          --v44;
        }

        while (v44 > 2);
      }

      v22 *= 2;
    }

    while (!BrotliSetDepth(2 * v40 - 1, v21, a5, 14));
    BrotliFree(v88, v21);
    result = BrotliConvertBitDepthsToSymbols(a5, v15, v87);
    if (v14 <= 4)
    {
      v54 = 0;
      v55 = *a7;
      *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
      *a7 = v55 + 2;
      *(a8 + ((v55 + 2) >> 3)) = (v18 << ((v55 + 2) & 7)) | *(a8 + ((v55 + 2) >> 3));
      v56 = v55 + 4;
      *a7 = v56;
      v57 = &v89 + 8;
      do
      {
        v58 = v54 + 1;
        if (v54 + 1 < v14)
        {
          v59 = *(&v89 + v54);
          v60 = v57;
          v61 = v18;
          do
          {
            v62 = *v60;
            result = a5[v59];
            if (a5[*v60] < result)
            {
              *v60 = v59;
              *(&v89 + v54) = v62;
              v59 = v62;
            }

            ++v60;
            --v61;
          }

          while (v61);
        }

        --v18;
        v57 += 8;
        ++v54;
      }

      while (v58 != v14);
      v63 = v89;
      v64 = v56 >> 3;
      v65 = v89 << (v56 & 7);
      v66 = v56 + a4;
      v67 = (v56 + a4) >> 3;
      v68 = v66 & 7;
      v69 = v66 + a4;
      if (v14 == 3)
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        v83 = v90;
        *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        *a7 = v69;
        *(a8 + (v69 >> 3)) = (v83 << (v69 & 7)) | *(a8 + (v69 >> 3));
        v69 += a4;
      }

      else
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        if (v14 == 2)
        {
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        }

        else
        {
          v84 = v90;
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
          *a7 = v69;
          *(a8 + (v69 >> 3)) = (v84 << (v69 & 7)) | *(a8 + (v69 >> 3));
          v85 = v69 + a4;
          *a7 = v85;
          *(a8 + (v85 >> 3)) = (*(&v90 + 1) << (v85 & 7)) | *(a8 + (v85 >> 3));
          v86 = v85 + a4;
          *a7 = v86;
          *(a8 + (v86 >> 3)) = ((a5[v63] == 1) << (v86 & 7)) | *(a8 + (v86 >> 3));
          v69 = v86 + 1;
        }
      }

      *a7 = v69;
      return result;
    }

    v70 = *a7;
    *(a8 + (*a7 >> 3)) = (0xFF55555554 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v71 = v70 + 40;
    *a7 = v71;
    if (!v15)
    {
      return result;
    }

    v72 = 0;
    result = 8;
    do
    {
      v73 = a5[v72];
      if (v72 + 1 >= v15)
      {
        ++v72;
        v75 = 1;
        if (!v73)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v74 = v72 - v15 + 1;
        v75 = 1;
        while (a5[v72 + v75] == v73)
        {
          ++v75;
          if (__CFADD__(v74++, 1))
          {
            v75 = v15 - v72;
            break;
          }
        }

        v72 += v75;
        if (!v73)
        {
LABEL_90:
          v80 = kZeroRepsDepth[v75];
          *(a8 + (v71 >> 3)) = (kZeroRepsBits[v75] << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v80;
          goto LABEL_93;
        }
      }

      if (result != v73)
      {
        v77 = kCodeLengthDepth[v73];
        *(a8 + (v71 >> 3)) = (kCodeLengthBits[v73] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v77;
        *a7 = v71;
        --v75;
      }

      if (v75 > 2)
      {
        v81 = v75 - 3;
        v82 = kNonZeroRepsDepth[v75 - 3];
        *(a8 + (v71 >> 3)) = (kNonZeroRepsBits[v81] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v82;
      }

      else
      {
        if (!v75)
        {
          result = v73;
          continue;
        }

        v78 = kCodeLengthDepth[v73];
        v79 = kCodeLengthBits[v73];
        do
        {
          *(a8 + (v71 >> 3)) = (v79 << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v78;
          --v75;
        }

        while (v75);
      }

      result = v73;
LABEL_93:
      *a7 = v71;
    }

    while (v72 < v15);
  }

  return result;
}

uint64_t BrotliStoreMetaBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, unsigned int *a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t *a14, uint64_t a15)
{
  v15 = a8;
  LODWORD(v92) = a6;
  v19 = a14;
  v20 = a9[19];
  v95 = a9[18];
  StoreCompressedMetaBlockHeader(a8, a4, a14, a15);
  result = BrotliAllocate(a1);
  if (!*(a1 + 24))
  {
    v22 = result;
    v23 = a13;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    memset(v106, 0, sizeof(v106));
    v105 = 0u;
    *v104 = 0u;
    memset(v98, 0, sizeof(v98));
    v96 = 0u;
    v97 = 0u;
    v25 = *(a13 + 16);
    v24 = *(a13 + 24);
    v26 = *a13;
    v27 = *(a13 + 8);
    v112[0] = 256;
    v112[1] = v26;
    v112[2] = v25;
    v112[3] = v24;
    v142 = 0;
    v112[4] = v27;
    v113 = xmmword_33BC90;
    v143 = 0;
    if (v27)
    {
      v28 = *v24;
    }

    else
    {
      v28 = 0;
    }

    v144 = v28;
    v145 = 0;
    v147 = 0;
    v146 = 0;
    v30 = *(a13 + 64);
    v29 = *(a13 + 72);
    v31 = *(a13 + 48);
    v32 = *(a13 + 56);
    v104[0] = 704;
    v104[1] = v31;
    *&v105 = v30;
    *(&v105 + 1) = v29;
    *&v106[0] = v32;
    *(v106 + 8) = xmmword_33BC90;
    v107 = 0;
    if (v32)
    {
      v33 = *v29;
    }

    else
    {
      v33 = 0;
    }

    v108 = v33;
    v109 = 0;
    v111 = 0;
    v110 = 0;
    v35 = *(a13 + 112);
    v34 = *(a13 + 120);
    v36 = *(a13 + 96);
    v37 = *(a13 + 104);
    *&v96 = v20;
    *(&v96 + 1) = v36;
    *&v97 = v35;
    *(&v97 + 1) = v34;
    *&v98[0] = v37;
    *(v98 + 8) = xmmword_33BC90;
    v99 = 0;
    if (v37)
    {
      v38 = *v34;
    }

    else
    {
      v38 = 0;
    }

    v100 = v38;
    v101 = 0;
    v103 = 0;
    v102 = 0;
    BuildAndStoreBlockSwitchEntropyCodes(v112, result, a14, a15);
    BuildAndStoreBlockSwitchEntropyCodes(v104, v22, a14, a15);
    BuildAndStoreBlockSwitchEntropyCodes(&v96, v22, a14, a15);
    v39 = *a14;
    v40 = a9[16];
    v41 = a9[17];
    *(a15 + (*a14 >> 3)) = (v40 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
    *a14 = v39 + 2;
    *(a15 + ((v39 + 2) >> 3)) = ((v41 >> v40) << ((v39 + 2) & 7)) | *(a15 + ((v39 + 2) >> 3));
    v42 = v39 + 6;
    *a14 = v42;
    if (*a13)
    {
      v43 = 0;
      do
      {
        *(a15 + (v42 >> 3)) = (a10 << (v42 & 7)) | *(a15 + (v42 >> 3));
        v42 += 2;
        *a14 = v42;
        ++v43;
      }

      while (v43 < *a13);
    }

    v44 = *(a13 + 152);
    if (v44)
    {
      result = EncodeContextMap(a1, *(a13 + 144), v44, *(a13 + 184), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      StoreTrivialContextMap(*(a13 + 184), 6uLL, v22, a14, a15);
    }

    v45 = *(a13 + 168);
    if (v45)
    {
      result = EncodeContextMap(a1, *(a13 + 160), v45, *(a13 + 216), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      StoreTrivialContextMap(*(a13 + 216), 2uLL, v22, a14, a15);
    }

    v85 = v15;
    v47 = *(a13 + 176);
    v46 = *(a13 + 184);
    if (v112[0] * v46)
    {
      v146 = BrotliAllocate(a1);
      result = BrotliAllocate(a1);
    }

    else
    {
      result = 0;
      v146 = 0;
    }

    v147 = result;
    v48 = *(a1 + 24);
    v91 = a1;
    if (v46 && !v48)
    {
      for (i = 0; i != v46; ++i)
      {
        result = BuildAndStoreHuffmanTree(v47, v112[0], 256, v22, (v146 + v112[0] * i), v147 + 2 * v112[0] * i, a14, a15);
        v47 += 1040;
      }

      a1 = v91;
      v48 = *(v91 + 24);
    }

    if (!v48)
    {
      v51 = *(a13 + 192);
      v50 = *(a13 + 200);
      if (v104[0] * v50)
      {
        v110 = BrotliAllocate(a1);
        result = BrotliAllocate(a1);
        v52 = *(a1 + 24);
      }

      else
      {
        v52 = 0;
        result = 0;
        v110 = 0;
      }

      v111 = result;
      if (v50 && !v52)
      {
        for (j = 0; j != v50; ++j)
        {
          result = BuildAndStoreHuffmanTree(v51, v104[0], 704, v22, (v110 + v104[0] * j), v111 + 2 * v104[0] * j, a14, a15);
          v51 += 2832;
        }

        a1 = v91;
        v52 = *(v91 + 24);
      }

      if (!v52)
      {
        result = BuildAndStoreEntropyCodesDistance(a1, &v96, *(a13 + 208), *(a13 + 216), v95, v22, a14, a15);
        if (!*(a1 + 24))
        {
          BrotliFree(a1, v22);
          if (a12)
          {
            v54 = 0;
            v92 = v92;
            v55 = a7;
            do
            {
              v90 = v54;
              v56 = (a11 + 16 * v54);
              v57 = *v56;
              v58 = v56[1];
              v86 = *(v56 + 7);
              v87 = v56[2];
              v88 = *(v56 + 6);
              StoreSymbol(v104, v88, v19, a15);
              LOWORD(v59) = v57;
              if (v57 >= 6)
              {
                if (v57 > 0x81)
                {
                  if (v57 > 0x841)
                  {
                    v61 = 22;
                    if (v57 >= 0x5842)
                    {
                      v61 = 23;
                    }

                    LOWORD(v59) = 21;
                    if (v57 >> 1 >= 0xC21)
                    {
                      LOWORD(v59) = v61;
                    }
                  }

                  else
                  {
                    LODWORD(v59) = (__clz(v57 - 66) ^ 0x1F) + 10;
                  }
                }

                else
                {
                  v60 = (__clz(v57 - 2) ^ 0x1F) - 1;
                  v59 = ((v57 - 2) >> v60) + 2 * v60 + 2;
                }
              }

              v89 = v58 & 0x1FFFFFF;
              v62 = (v58 & 0x1FFFFFF) + (HIBYTE(v58) & 0x80 | (v58 >> 25));
              if (v62 > 9)
              {
                v64 = a5;
                if (v62 > 0x85)
                {
                  LODWORD(v63) = (__clz(v62 - 70) ^ 0x1F) + 12;
                  if (v62 > 0x845)
                  {
                    LOWORD(v63) = 23;
                  }
                }

                else
                {
                  v65 = (__clz(v62 - 6) ^ 0x1F) - 1;
                  v63 = ((v62 - 6) >> v65) + 2 * v65 + 4;
                }
              }

              else
              {
                LOWORD(v63) = v58 + (HIBYTE(v58) & 0x80 | (v58 >> 25)) - 2;
                v64 = a5;
              }

              v66 = v59;
              v67 = kBrotliInsExtra[v66];
              v68 = v63;
              v69 = ((v62 - *(&kBrotliCopyBase + v68 * 4)) << v67) | (v57 - *(&kBrotliInsBase + v66 * 4));
              v70 = kBrotliCopyExtra[v68] + v67;
              v71 = *v19;
              *(a15 + (*v19 >> 3)) = (v69 << (*v19 & 7)) | *(a15 + (*v19 >> 3));
              *v19 = v71 + v70;
              if (v23[19])
              {
                v72 = v64;
                v73 = v55;
                v74 = v23;
                v75 = v92;
                if (v57)
                {
                  do
                  {
                    v73 = v75;
                    v76 = _kBrotliContextLookupTable[512 * a10 + 256 + v55] | _kBrotliContextLookupTable[512 * a10 + v75];
                    v75 = *(a2 + (a3 & v72));
                    StoreSymbolWithContext(v112, v75, v76, v23[18], a14, a15, 6);
                    ++a3;
                    v55 = v73;
                    --v57;
                  }

                  while (v57);
                }
              }

              else
              {
                if (v57)
                {
                  do
                  {
                    StoreSymbol(v112, *(a2 + (a3++ & v64)), v19, a15);
                    --v57;
                  }

                  while (v57);
                }

                v73 = v55;
                v74 = v23;
                v75 = v92;
              }

              v92 = v75;
              a3 += v89;
              a1 = v91;
              v23 = v74;
              v19 = a14;
              if (v89)
              {
                v73 = *(a2 + ((a3 - 2) & a5));
                v92 = *(a2 + ((a3 - 1) & a5));
                if (v88 >= 0x80)
                {
                  if (v23[21])
                  {
                    v77 = v88 >> 6;
                    if ((v88 & 7u) >= 3)
                    {
                      v78 = 3;
                    }

                    else
                    {
                      v78 = v88 & 7;
                    }

                    if (v77 == 4 || v77 == 2 || v77 == 7)
                    {
                      v81 = v78;
                    }

                    else
                    {
                      v81 = 3;
                    }

                    v82 = v86;
                    StoreSymbolWithContext(&v96, v86 & 0x3FF, v81, v23[20], a14, a15, 2);
                  }

                  else
                  {
                    v82 = v86;
                    StoreSymbol(&v96, v86 & 0x3FF, a14, a15);
                  }

                  v83 = *a14;
                  *(a15 + (*a14 >> 3)) = (v87 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
                  *a14 = v83 + (v82 >> 10);
                }
              }

              v54 = v90 + 1;
              v55 = v73;
            }

            while (v90 + 1 != a12);
          }

          BrotliFree(a1, v102);
          v102 = 0;
          BrotliFree(a1, v103);
          v103 = 0;
          BrotliFree(a1, v110);
          v110 = 0;
          BrotliFree(a1, v111);
          v111 = 0;
          BrotliFree(a1, v146);
          v146 = 0;
          result = BrotliFree(a1, v147);
          if (v85)
          {
            v84 = *v19 + 7;
            *v19 = v84 & 0xFFFFFFF8;
            *(a15 + (v84 >> 3)) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t StoreCompressedMetaBlockHeader(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(a4 + (*a3 >> 3)) = (result << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  v5 = v4 + 1;
  *a3 = v4 + 1;
  if (result)
  {
    *(a4 + (v5 >> 3)) = *(a4 + (v5 >> 3));
    *a3 = v4 + 2;
    if (a2 == 1 || (v6 = __clz(a2 - 1) ^ 0x1F, v6 <= 0xE))
    {
      v7 = 4;
    }

    else
    {
      v7 = (v6 + 4) >> 2;
    }

    *(a4 + ((v4 + 2) >> 3)) = ((v7 - 4) << ((v4 + 2) & 7)) | *(a4 + ((v4 + 2) >> 3));
    v10 = v4 + 4;
    *a3 = v10;
    *(a4 + (v10 >> 3)) = ((a2 - 1) << (v10 & 7)) | *(a4 + (v10 >> 3));
    v11 = v10 + 4 * v7;
  }

  else
  {
    if (a2 == 1 || (v8 = __clz(a2 - 1) ^ 0x1F, v8 <= 0xE))
    {
      v9 = 4;
    }

    else
    {
      v9 = (v8 + 4) >> 2;
    }

    *(a4 + (v5 >> 3)) = ((v9 - 4) << (v5 & 7)) | *(a4 + (v5 >> 3));
    v12 = v4 + 3;
    *a3 = v12;
    *(a4 + (v12 >> 3)) = ((a2 - 1) << (v12 & 7)) | *(a4 + (v12 >> 3));
    v13 = v12 + 4 * v9;
    *a3 = v13;
    *(a4 + (v13 >> 3)) = *(a4 + (v13 >> 3));
    v11 = v13 + 1;
  }

  *a3 = v11;
  return result;
}

unint64_t BuildAndStoreBlockSwitchEntropyCodes(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  bzero(v40, 4 * (v9 + 2));
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v10[v11];
      if (v11)
      {
        if (v12 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14 + 2;
        }

        if (v13 + 1 == v14)
        {
          v15 = 1;
        }

        ++v40[v15];
      }

      v16 = v7[v11];
      if (v16 <= 0x2F0)
      {
        v17 = 14;
      }

      else
      {
        v17 = 20;
      }

      if (v16 <= 0x28)
      {
        v18 = 0;
      }

      else
      {
        v18 = 7;
      }

      if (v16 <= 0xB0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = (&_kBrotliPrefixCodeRanges + 4 * v19 + 4);
      do
      {
        v21 = v19;
        if (v19 == 25)
        {
          break;
        }

        ++v19;
        v22 = *v20;
        v20 += 2;
      }

      while (v16 >= v22);
      ++*(v38 + v21);
      ++v11;
      v12 = v13;
      v13 = v14;
    }

    while (v11 != v8);
  }

  result = StoreVarLenUint8(v9 - 1, a3, a4);
  if (v9 >= 2)
  {
    BuildAndStoreHuffmanTree(v40, v9 + 2, v9 + 2, a2, (a1 + 56), a1 + 314, a3, a4);
    result = BuildAndStoreHuffmanTree(v38, 0x1AuLL, 26, a2, (a1 + 830), a1 + 856, a3, a4);
    v24 = *v7;
    v25 = *(a1 + 40);
    *(a1 + 40) = *v10;
    *(a1 + 48) = v25;
    v26 = 14;
    if (v24 > 0x2F0)
    {
      v26 = 20;
    }

    v27 = 7;
    if (v24 <= 0x28)
    {
      v27 = 0;
    }

    if (v24 <= 0xB0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = (&_kBrotliPrefixCodeRanges + 4 * v28 + 4);
    do
    {
      v30 = v28;
      if (v28 == 25)
      {
        break;
      }

      ++v28;
      v31 = *v29;
      v29 += 2;
    }

    while (v24 >= v31);
    v32 = (&_kBrotliPrefixCodeRanges + 4 * v30);
    v33 = *(v32 + 2);
    v34 = *(a1 + 830 + v30);
    v35 = *a3;
    v36 = v24 - *v32;
    *(a4 + (*a3 >> 3)) = (*(a1 + 856 + 2 * v30) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    *a3 = v35 + v34;
    *(a4 + ((v35 + v34) >> 3)) = (v36 << ((v35 + v34) & 7)) | *(a4 + ((v35 + v34) >> 3));
    *a3 = v35 + v34 + v33;
  }

  return result;
}

uint64_t StoreTrivialContextMap(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  result = StoreVarLenUint8(a1 - 1, a4, a5);
  if (a1 >= 2)
  {
    v11 = a2 - 1;
    v12 = a2 - 1 + a1;
    bzero(v25, 4 * v12);
    v13 = *a4;
    *(a5 + (*a4 >> 3)) = (1 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
    *a4 = v13 + 1;
    *(a5 + ((v13 + 1) >> 3)) = ((a2 - 2) << ((v13 + 1) & 7)) | *(a5 + ((v13 + 1) >> 3));
    *a4 = v13 + 5;
    v25[a2 - 1] = a1;
    v25[0] = 1;
    if (v12 > a2)
    {
      memset_pattern16(&v25[a2], &unk_3A78F0, 4 * a1 - 4);
    }

    BuildAndStoreHuffmanTree(v25, a2 - 1 + a1, a2 - 1 + a1, a3, v24, v23, a4, a5);
    v14 = 0;
    v15 = v24[v11];
    v16 = v23[v11];
    v17 = a2 - 1;
    v18 = *a4;
    do
    {
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = v24[v19];
      result = v18 & 7;
      *(a5 + (v18 >> 3)) = (v23[v19] << (v18 & 7)) | *(a5 + (v18 >> 3));
      v21 = v18 + v20;
      *a4 = v21;
      *(a5 + (v21 >> 3)) = (v16 << (v21 & 7)) | *(a5 + (v21 >> 3));
      v22 = v21 + v15;
      *a4 = v21 + v15;
      *(a5 + ((v21 + v15) >> 3)) = (~(-1 << (a2 - 1)) << ((v21 + v15) & 7)) | *(a5 + ((v21 + v15) >> 3));
      v18 = v22 + v11;
      *a4 = v22 + v11;
      --v14;
      ++v17;
    }

    while (-a1 != v14);
    *(a5 + (v18 >> 3)) = (1 << (v18 & 7)) | *(a5 + (v18 >> 3));
    *a4 = v22 + a2;
  }

  return result;
}

uint64_t EncodeContextMap(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  result = StoreVarLenUint8(a4 - 1, a6, a7);
  if (a4 == 1)
  {
    return result;
  }

  result = BrotliAllocate(a1);
  if (*(a1 + 24))
  {
    return result;
  }

  v15 = result;
  v16 = *a2;
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = a2 + 1;
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 > v16)
      {
        v16 = v19;
      }

      --v17;
    }

    while (v17);
  }

  v21 = 0;
  v22 = xmmword_3B2840;
  v23 = xmmword_3B2850;
  v24 = xmmword_3B2860;
  v25 = xmmword_3B2870;
  v26 = xmmword_3419C0;
  v27 = xmmword_3419D0;
  v28 = xmmword_3419E0;
  v29 = vdupq_n_s64(v16);
  v30 = xmmword_33E760;
  v31 = vdupq_n_s64(0x10uLL);
  do
  {
    v32 = vmovn_s64(vcgeq_u64(v29, v30));
    if (vuzp1_s8(vuzp1_s16(v32, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 - 1] = v21;
    }

    if (vuzp1_s8(vuzp1_s16(v32, *&v22), *&v22).i8[1])
    {
      v72[v21] = v21 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v28))), *&v22).i8[2])
    {
      v72[v21 + 1] = v21 | 2;
      v72[v21 + 2] = v21 | 3;
    }

    v33 = vmovn_s64(vcgeq_u64(v29, v27));
    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i32[1])
    {
      v72[v21 + 3] = v21 | 4;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i8[5])
    {
      v72[v21 + 4] = v21 | 5;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v26)))).i8[6])
    {
      v72[v21 + 5] = v21 | 6;
      v72[v21 + 6] = v21 | 7;
    }

    v34 = vmovn_s64(vcgeq_u64(v29, v25));
    if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 + 7] = v21 | 8;
    }

    if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
    {
      v72[v21 + 8] = v21 | 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v24))), *&v22).i8[2])
    {
      v72[v21 + 9] = v21 | 0xA;
      v72[v21 + 10] = v21 | 0xB;
    }

    v35 = vmovn_s64(vcgeq_u64(v29, v23));
    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
    {
      v72[v21 + 11] = v21 | 0xC;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
    {
      v72[v21 + 12] = v21 | 0xD;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v22)))).i8[6])
    {
      v72[v21 + 13] = v21 | 0xE;
      v72[v21 + 14] = v21 | 0xF;
    }

    v27 = vaddq_s64(v27, v31);
    v21 += 16;
    v28 = vaddq_s64(v28, v31);
    v30 = vaddq_s64(v30, v31);
    v26 = vaddq_s64(v26, v31);
    v25 = vaddq_s64(v25, v31);
    v24 = vaddq_s64(v24, v31);
    v23 = vaddq_s64(v23, v31);
    v22 = vaddq_s64(v22, v31);
  }

  while (((v16 + 16) & 0x1FFFFFFF0) != v21);
  v68 = a5;
  if (!a3)
  {
    goto LABEL_68;
  }

  v36 = 0;
  v37 = v16 + 1;
  LOBYTE(v38) = __src;
  do
  {
    if (v37)
    {
      v39 = 0;
      v38 = LOBYTE(a2[v36]);
      while (v72[v39 - 1] != v38)
      {
        if (v37 == ++v39)
        {
          *(v15 + 4 * v36) = v37;
          LOBYTE(v38) = v72[v37 - 1];
          v39 = v37;
          goto LABEL_43;
        }
      }

      *(v15 + 4 * v36) = v39;
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_43:
      memmove(v72, &__src, v39);
    }

    else
    {
      *(v15 + 4 * v36) = 0;
    }

LABEL_44:
    __src = v38;
    ++v36;
  }

  while (v36 != a3);
  v40 = 0;
  v41 = 0;
  do
  {
    if (a3 <= v41 + 1)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = a3;
    }

    v43 = (v15 + 4 * v41);
    while (*(v15 + 4 * v41))
    {
      ++v41;
      ++v43;
      if (v42 == v41)
      {
        v47 = 0;
LABEL_64:
        if (v47 > v40)
        {
          v40 = v47;
        }

        goto LABEL_66;
      }
    }

    if (a3 <= v41)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      while (!*v43++)
      {
        if (v41 - a3 == --v44)
        {
          v47 = a3 - v41;
          goto LABEL_64;
        }
      }

      v41 -= v44;
      v46 = -v44;
    }

    if (v46 > v40)
    {
      v40 = v46;
    }
  }

  while (v41 < a3);
LABEL_66:
  if (v40)
  {
    v48 = __clz(v40) ^ 0x1F;
  }

  else
  {
LABEL_68:
    v48 = 0;
  }

  if (v48 >= 6)
  {
    v49 = 6;
  }

  else
  {
    v49 = v48;
  }

  if (!a3)
  {
    bzero(&__src, 0x440uLL);
    v50 = 0;
LABEL_96:
    v58 = 1;
    goto LABEL_97;
  }

  v50 = 0;
  v51 = 0;
  v52 = 2 << v49;
  do
  {
    v53 = *(v15 + 4 * v51);
    if (v53)
    {
      *(v15 + 4 * v50) = v53 + v49;
      ++v51;
LABEL_76:
      ++v50;
      continue;
    }

    if (v51 + 1 >= a3)
    {
      v54 = 1;
      ++v51;
      goto LABEL_87;
    }

    v54 = a3 - v51;
    v55 = 1;
    while (!*(v15 + 4 * v51 + 4 * v55))
    {
      if (a3 - v51 == ++v55)
      {
        goto LABEL_86;
      }
    }

    v54 = v55;
LABEL_86:
    v51 += v54;
    if (v54)
    {
LABEL_87:
      while (1)
      {
        v56 = v54 - v52;
        if (v54 < v52)
        {
          break;
        }

        *(v15 + 4 * v50++) = v49 | (~(-1 << v49) << 9);
        v54 = v56 + 1;
        if (v56 == -1)
        {
          goto LABEL_77;
        }
      }

      v57 = __clz(v54);
      *(v15 + 4 * v50) = v57 ^ 0x1F | (((-1 << (v57 ^ 0x1F)) + v54) << 9);
      goto LABEL_76;
    }

LABEL_77:
    ;
  }

  while (v51 < a3);
  bzero(&__src, 0x440uLL);
  v58 = v50 == 0;
  if (!v50)
  {
    goto LABEL_96;
  }

  for (i = 0; i != v50; ++i)
  {
    v60 = *(v15 + 4 * i) & 0x1FF;
    ++*&v72[4 * v60 - 1];
  }

LABEL_97:
  v61 = *a6;
  *(a7 + (*a6 >> 3)) = ((v48 != 0) << (*a6 & 7)) | *(a7 + (*a6 >> 3));
  *a6 = v61 + 1;
  if (v48)
  {
    *(a7 + ((v61 + 1) >> 3)) = ((v49 - 1) << ((v61 + 1) & 7)) | *(a7 + ((v61 + 1) >> 3));
    *a6 = v61 + 5;
  }

  BuildAndStoreHuffmanTree(&__src, a4 + v49, a4 + v49, v68, v70, v69, a6, a7);
  v62 = *a6;
  if (!v58)
  {
    v63 = v15;
    do
    {
      v65 = *v63++;
      v64 = v65;
      v66 = v65 & 0x1FF;
      v67 = v70[v66];
      *(a7 + (v62 >> 3)) = (v69[v66] << (v62 & 7)) | *(a7 + (v62 >> 3));
      v62 += v67;
      *a6 = v62;
      if (v66 - 1 < v49)
      {
        *(a7 + (v62 >> 3)) = (v64 >> 9 << (v62 & 7)) | *(a7 + (v62 >> 3));
        v62 += v66;
        *a6 = v62;
      }

      --v50;
    }

    while (v50);
  }

  *(a7 + (v62 >> 3)) = (1 << (v62 & 7)) | *(a7 + (v62 >> 3));
  *a6 = v62 + 1;
  return BrotliFree(a1, v15);
}

unint64_t BuildAndStoreEntropyCodesDistance(uint64_t a1, size_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (*a2 * a4)
  {
    a2[117] = BrotliAllocate(a1);
    result = BrotliAllocate(a1);
  }

  else
  {
    result = 0;
    a2[117] = 0;
  }

  a2[118] = result;
  if (!*(a1 + 24) && a4)
  {
    v17 = 0;
    do
    {
      result = BuildAndStoreHuffmanTree(a3, *a2, a5, a6, (a2[117] + *a2 * v17), a2[118] + 2 * *a2 * v17, a7, a8);
      ++v17;
      a3 += 2192;
    }

    while (a4 != v17);
  }

  return result;
}

void *StoreSymbol(void *result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = result[115];
  if (!v4)
  {
    v5 = result[114] + 1;
    result[114] = v5;
    v6 = *(result[3] + 4 * v5);
    v7 = *(result[2] + v5);
    result[115] = v6;
    result[116] = *result * v7;
    v8 = result[5];
    if (v8 + 1 == v7)
    {
      v9 = 1;
    }

    else if (result[6] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 + 2;
    }

    result[5] = v7;
    result[6] = v8;
    v10 = *(result + v9 + 56);
    v11 = *(result + v9 + 157);
    v12 = *a3;
    *(a4 + (*a3 >> 3)) = (v11 << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    v13 = v12 + v10;
    *a3 = v13;
    v14 = 14;
    if (v6 > 0x2F0)
    {
      v14 = 20;
    }

    v15 = 7;
    if (v6 <= 0x28)
    {
      v15 = 0;
    }

    if (v6 <= 0xB0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = (&_kBrotliPrefixCodeRanges + 4 * v16 + 4);
    do
    {
      v18 = v16;
      if (v16 == 25)
      {
        break;
      }

      ++v16;
      v19 = *v17;
      v17 += 2;
    }

    while (v6 >= v19);
    v20 = (&_kBrotliPrefixCodeRanges + 4 * v18);
    v21 = *(v20 + 2);
    v22 = v6 - *v20;
    v23 = *(result + v18 + 830);
    *(a4 + (v13 >> 3)) = (*(result + v18 + 428) << (v13 & 7)) | *(a4 + (v13 >> 3));
    v24 = v13 + v23;
    *a3 = v24;
    *(a4 + (v24 >> 3)) = (v22 << (v24 & 7)) | *(a4 + (v24 >> 3));
    *a3 = v24 + v21;
    v4 = result[115];
  }

  result[115] = v4 - 1;
  v25 = result[116] + a2;
  v26 = *(result[117] + v25);
  v27 = *a3;
  *(a4 + (*a3 >> 3)) = (*(result[118] + 2 * v25) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  *a3 = v27 + v26;
  return result;
}

void *StoreSymbolWithContext(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, char a7)
{
  v7 = result[115];
  if (!v7)
  {
    v8 = result[114] + 1;
    result[114] = v8;
    v9 = *(result[3] + 4 * v8);
    v10 = *(result[2] + v8);
    result[115] = v9;
    result[116] = v10 << a7;
    v11 = result[5];
    if (v11 + 1 == v10)
    {
      v12 = 1;
    }

    else if (result[6] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2;
    }

    result[5] = v10;
    result[6] = v11;
    v13 = *(result + v12 + 56);
    v14 = *(result + v12 + 157);
    v15 = *a5;
    *(a6 + (*a5 >> 3)) = (v14 << (*a5 & 7)) | *(a6 + (*a5 >> 3));
    v16 = v15 + v13;
    *a5 = v16;
    v17 = 14;
    if (v9 > 0x2F0)
    {
      v17 = 20;
    }

    v18 = 7;
    if (v9 <= 0x28)
    {
      v18 = 0;
    }

    if (v9 <= 0xB0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = (&_kBrotliPrefixCodeRanges + 4 * v19 + 4);
    do
    {
      v21 = v19;
      if (v19 == 25)
      {
        break;
      }

      ++v19;
      v22 = *v20;
      v20 += 2;
    }

    while (v9 >= v22);
    v23 = (&_kBrotliPrefixCodeRanges + 4 * v21);
    v24 = *(v23 + 2);
    v25 = v9 - *v23;
    v26 = *(result + v21 + 830);
    *(a6 + (v16 >> 3)) = (*(result + v21 + 428) << (v16 & 7)) | *(a6 + (v16 >> 3));
    v27 = v16 + v26;
    *a5 = v27;
    *(a6 + (v27 >> 3)) = (v25 << (v27 & 7)) | *(a6 + (v27 >> 3));
    *a5 = v27 + v24;
    v7 = result[115];
  }

  result[115] = v7 - 1;
  v28 = a2 + *result * *(a4 + 4 * result[116] + 4 * a3);
  v29 = *(result[117] + v28);
  v30 = *a5;
  *(a6 + (*a5 >> 3)) = (*(result[118] + 2 * v28) << (*a5 & 7)) | *(a6 + (*a5 >> 3));
  *a5 = v30 + v29;
  return result;
}

uint64_t BrotliStoreMetaBlockTrivial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v29 = *(v23 + 72);
  StoreCompressedMetaBlockHeader(v14, v24, a10, a11);
  bzero(v34, 0x408uLL);
  v34[129] = 0x7FF0000000000000;
  bzero(v32, 0xB08uLL);
  v33 = 0x7FF0000000000000;
  bzero(v30, 0x888uLL);
  v31 = 0x7FF0000000000000;
  BuildHistograms(v21, v19, v17, v13, a9, v34, v32, v30);
  v25 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v25 + 13;
  result = BrotliAllocate(v22);
  if (!*(v22 + 24))
  {
    v27 = result;
    BuildAndStoreHuffmanTree(v34, 0x100uLL, 256, result, v40, v39, a10, a11);
    BuildAndStoreHuffmanTree(v32, 0x2C0uLL, 704, v27, v38, v37, a10, a11);
    BuildAndStoreHuffmanTree(v30, 0x8CuLL, v29, v27, v36, v35, a10, a11);
    BrotliFree(v22, v27);
    result = StoreDataWithHuffmanCodes(v21, v19, v17, v13, a9, v40, v39, v38, v37, v36, v35, a10, a11);
    if (v15)
    {
      v28 = *a10 + 7;
      *a10 = v28 & 0xFFFFFFF8;
      *(a11 + (v28 >> 3)) = 0;
    }
  }

  return result;
}

uint64_t BuildHistograms(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 0;
    v9 = *(a7 + 2816);
    do
    {
      v10 = (a4 + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v10 + 6);
      v14 = *(v10 + 7);
      ++*(a7 + 4 * v13);
      *(a7 + 2816) = ++v9;
      if (v12)
      {
        v15 = *(a6 + 1024) + 1;
        do
        {
          ++*(a6 + 4 * *(result + (a2 & a3)));
          *(a6 + 1024) = v15;
          ++a2;
          ++v15;
          --v12;
        }

        while (v12);
      }

      v16 = v11 & 0x1FFFFFF;
      if (v16)
      {
        if (v13 >= 0x80)
        {
          ++*(a8 + 4 * (v14 & 0x3FF));
          ++*(a8 + 2176);
        }
      }

      a2 += v16;
      ++v8;
    }

    while (v8 != a5);
  }

  return result;
}

unint64_t BuildAndStoreHuffmanTree(unint64_t result, size_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v14 = result;
  v41 = 0u;
  v42 = 0u;
  if (a2)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (*(result + 4 * v15))
      {
        if (v16 > 3)
        {
          if (v16 != 4)
          {
            break;
          }
        }

        else
        {
          *(&v41 + v16) = v15;
        }

        ++v16;
      }

      ++v15;
    }

    while (a2 != v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = 64 - __clz(a3 - 1);
  if (a3 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v16 - 1;
  if (v16 <= 1)
  {
    v20 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v20 += 4;
    *a7 = v20;
    v21 = v41;
    *(a8 + (v20 >> 3)) = (v41 << (v20 & 7)) | *(a8 + (v20 >> 3));
    *a7 = v20 + v18;
    a5[v21] = 0;
    *(a6 + 2 * v21) = 0;
    return result;
  }

  bzero(a5, a2);
  BrotliCreateHuffmanTree(v14, a2, 15, a4, a5);
  result = BrotliConvertBitDepthsToSymbols(a5, a2, a6);
  if (v16 <= 4)
  {
    v22 = 0;
    v23 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    *a7 = v23 + 2;
    *(a8 + ((v23 + 2) >> 3)) = (v19 << ((v23 + 2) & 7)) | *(a8 + ((v23 + 2) >> 3));
    v24 = v23 + 4;
    *a7 = v24;
    v25 = &v41 + 8;
    do
    {
      v26 = v22 + 1;
      if (v22 + 1 < v16)
      {
        v27 = *(&v41 + v22);
        v28 = v25;
        v29 = v19;
        do
        {
          v30 = *v28;
          result = a5[v27];
          if (a5[*v28] < result)
          {
            *v28 = v27;
            *(&v41 + v22) = v30;
            v27 = v30;
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      --v19;
      v25 += 8;
      ++v22;
    }

    while (v26 != v16);
    v31 = v41;
    v32 = v24 >> 3;
    v33 = v41 << (v24 & 7);
    v34 = v24 + v18;
    if (v16 == 3)
    {
      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      v35 = v42;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
      v34 += v18;
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (v35 << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    else
    {
      if (v16 != 2)
      {
        *(a8 + v32) = v33 | *(a8 + v32);
        *a7 = v34;
        v37 = v42;
        *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
        v38 = v34 + v18;
        *a7 = v38;
        *(a8 + (v38 >> 3)) = (v37 << (v38 & 7)) | *(a8 + (v38 >> 3));
        v39 = v38 + v18;
        *a7 = v39;
        *(a8 + (v39 >> 3)) = (*(&v42 + 1) << (v39 & 7)) | *(a8 + (v39 >> 3));
        v40 = v39 + v18;
        *a7 = v40;
        *(a8 + (v40 >> 3)) = ((a5[v31] == 1) << (v40 & 7)) | *(a8 + (v40 >> 3));
        v36 = v40 + 1;
        goto LABEL_33;
      }

      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    v36 = v34 + v18;
LABEL_33:
    *a7 = v36;
    return result;
  }

  return BrotliStoreHuffmanTree(a5, a2, a4, a7, a8);
}

uint64_t StoreDataWithHuffmanCodes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, uint64_t a13)
{
  if (a5)
  {
    v13 = 0;
    v14 = *a12;
    do
    {
      v15 = (a4 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v15 + 6);
      v20 = *(v15 + 7);
      v21 = *(a8 + v19);
      *(a13 + (v14 >> 3)) = (*(a9 + 2 * v19) << (v14 & 7)) | *(a13 + (v14 >> 3));
      v22 = v14 + v21;
      *a12 = v22;
      LOWORD(v23) = v16;
      if (v16 >= 6)
      {
        if (v16 > 0x81)
        {
          if (v16 > 0x841)
          {
            if (v16 >> 1 >= 0xC21)
            {
              if (v16 < 0x5842)
              {
                LOWORD(v23) = 22;
              }

              else
              {
                LOWORD(v23) = 23;
              }
            }

            else
            {
              LOWORD(v23) = 21;
            }
          }

          else
          {
            LODWORD(v23) = (__clz(v16 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v24 = (__clz(v16 - 2) ^ 0x1F) - 1;
          v23 = ((v16 - 2) >> v24) + 2 * v24 + 2;
        }
      }

      v25 = HIBYTE(v17) & 0x80 | (v17 >> 25);
      v26 = v17 & 0x1FFFFFF;
      v27 = (v26 + v25);
      if (v27 > 9)
      {
        if (v27 > 0x85)
        {
          v30 = (__clz(v27 - 70) ^ 0x1F) + 12;
          if (v27 <= 0x845)
          {
            LOWORD(v28) = v30;
          }

          else
          {
            LOWORD(v28) = 23;
          }
        }

        else
        {
          v29 = (__clz(v27 - 6) ^ 0x1F) - 1;
          v28 = ((v27 - 6) >> v29) + 2 * v29 + 4;
        }
      }

      else
      {
        LOWORD(v28) = v26 + v25 - 2;
      }

      v31 = 4 * v23;
      v32 = *(&kBrotliInsExtra + v31);
      v33 = 4 * v28;
      v34 = ((v27 - *(&kBrotliCopyBase + v33)) << v32) | (v16 - *(&kBrotliInsBase + v31));
      v35 = (*(&kBrotliCopyExtra + v33) + v32);
      *(a13 + (v22 >> 3)) = (v34 << (v22 & 7)) | *(a13 + (v22 >> 3));
      v14 = v22 + v35;
      *a12 = v14;
      if (v16)
      {
        do
        {
          v36 = *(result + (a2 & a3));
          v37 = *(a6 + v36);
          *(a13 + (v14 >> 3)) = (*(a7 + 2 * v36) << (v14 & 7)) | *(a13 + (v14 >> 3));
          v14 += v37;
          *a12 = v14;
          ++a2;
          --v16;
        }

        while (v16);
      }

      if (v26)
      {
        if (v19 >= 0x80)
        {
          v38 = *(a10 + (v20 & 0x3FF));
          *(a13 + (v14 >> 3)) = (*(a11 + 2 * (v20 & 0x3FF)) << (v14 & 7)) | *(a13 + (v14 >> 3));
          *a12 = v14 + v38;
          *(a13 + ((v14 + v38) >> 3)) = (v18 << ((v14 + v38) & 7)) | *(a13 + ((v14 + v38) >> 3));
          v14 += v38 + (v20 >> 10);
          *a12 = v14;
        }
      }

      a2 += v26;
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

uint64_t BrotliStoreMetaBlockFast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v24 = *(v23 + 72);
  StoreCompressedMetaBlockHeader(v14, v25, a10, a11);
  v26 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v26 + 13;
  if (a9 > 0x80)
  {
    bzero(v36, 0x408uLL);
    v38 = 0x7FF0000000000000;
    bzero(v48, 0xB08uLL);
    v50 = 0x7FF0000000000000;
    bzero(v45, 0x888uLL);
    v47 = 0x7FF0000000000000;
    BuildHistograms(v21, v19, v17, v13, a9, v36, v48, v45);
    result = BrotliBuildAndStoreHuffmanTreeFast(v22, v36, *v37, 8, v44, v43, a10, a11);
    if (!*(v22 + 24))
    {
      result = BrotliBuildAndStoreHuffmanTreeFast(v22, v48, *v49, 10, v42, v41, a10, a11);
      if (!*(v22 + 24))
      {
        result = BrotliBuildAndStoreHuffmanTreeFast(v22, v45, *v46, (__clz(v24 - 1) ^ 0x1F) + 1, v40, v39, a10, a11);
        if (!*(v22 + 24))
        {
          result = StoreDataWithHuffmanCodes(v21, v19, v17, v13, a9, v44, v43, v42, v41, v40, v39, a10, a11);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    bzero(v48, 0x400uLL);
    if (a9)
    {
      v27 = 0;
      v28 = 0;
      v29 = v19;
      do
      {
        v30 = (v13 + 16 * v27);
        v31 = *v30;
        if (v31)
        {
          v32 = *v30;
          do
          {
            ++v48[*(v21 + (v29++ & v17))];
            --v32;
          }

          while (v32);
        }

        v28 += v31;
        v29 += v30[1] & 0x1FFFFFF;
        ++v27;
      }

      while (v27 != a9);
    }

    else
    {
      v28 = 0;
    }

    result = BrotliBuildAndStoreHuffmanTreeFast(v22, v48, v28, 8, v41, v45, a10, a11);
    if (!*(v22 + 24))
    {
      v34 = *a10;
      *(a11 + (*a10 >> 3)) = (0x92624416307003 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      *a10 = v34 + 56;
      *(a11 + ((v34 + 56) >> 3)) = *(a11 + ((v34 + 56) >> 3));
      *a10 = v34 + 59;
      *(a11 + ((v34 + 59) >> 3)) = (57269251 << ((v34 + 59) & 7)) | *(a11 + ((v34 + 59) >> 3));
      *a10 = v34 + 87;
      result = StoreDataWithHuffmanCodes(v21, v19, v17, v13, a9, v41, v45, &kStaticCommandCodeDepth, &kStaticCommandCodeBits, &kStaticDistanceCodeDepth, &kStaticDistanceCodeBits, a10, a11);
LABEL_16:
      if (v15)
      {
        v35 = *a10 + 7;
        *a10 = v35 & 0xFFFFFFF8;
        *(a11 + (v35 >> 3)) = 0;
      }
    }
  }

  return result;
}

void *BrotliStoreUncompressedMetaBlock(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t *a6, uint64_t a7)
{
  v9 = a5;
  v12 = a4 & a3;
  v13 = *a6;
  *(a7 + (*a6 >> 3)) = *(a7 + (*a6 >> 3));
  if (a5 == 1 || (v14 = __clz(a5 - 1) ^ 0x1F, v14 <= 0xE))
  {
    v15 = 4;
  }

  else
  {
    v15 = (v14 + 4) >> 2;
  }

  *(a7 + ((v13 + 1) >> 3)) = ((v15 - 4) << ((v13 + 1) & 7)) | *(a7 + ((v13 + 1) >> 3));
  v16 = v13 + 3;
  *(a7 + (v16 >> 3)) = ((a5 - 1) << (v16 & 7)) | *(a7 + (v16 >> 3));
  v17 = v16 + 4 * v15;
  *(a7 + (v17 >> 3)) = (1 << (v17 & 7)) | *(a7 + (v17 >> 3));
  v18 = v17 + 8;
  v19 = v18 & 0xFFFFFFF8;
  v20 = (a7 + (v19 >> 3));
  *v20 = 0;
  v21 = a4 + 1;
  if (v12 + a5 <= a4 + 1)
  {
    v23 = v18 >> 3;
  }

  else
  {
    v22 = v21 - v12;
    memcpy(v20, (a2 + v12), v21 - v12);
    v12 = 0;
    v19 += 8 * v22;
    v9 -= v22;
    v23 = v19 >> 3;
  }

  result = memcpy((a7 + v23), (a2 + v12), v9);
  v25 = v19 + 8 * v9;
  *a6 = v25;
  *(a7 + (v25 >> 3)) = 0;
  if (a1)
  {
    *(a7 + (v25 >> 3)) = 1 << (v19 & 7);
    *(a7 + ((v25 + 1) >> 3)) = (1 << ((v25 + 1) & 7)) | *(a7 + ((v25 + 1) >> 3));
    v26 = v25 + 9;
    *a6 = v26 & 0xFFFFFFF8;
    *(a7 + (v26 >> 3)) = 0;
  }

  return result;
}

uint64_t StoreVarLenUint8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v3 = __clz(result) ^ 0x1F;
    v4 = *a2;
    *(a3 + (*a2 >> 3)) = (1 << (*a2 & 7)) | *(a3 + (*a2 >> 3));
    *a2 = v4 + 1;
    *(a3 + ((v4 + 1) >> 3)) = (v3 << ((v4 + 1) & 7)) | *(a3 + ((v4 + 1) >> 3));
    v4 += 4;
    *a2 = v4;
    *(a3 + (v4 >> 3)) = (((-1 << v3) + result) << (v4 & 7)) | *(a3 + (v4 >> 3));
    v5 = v4 + v3;
  }

  else
  {
    v6 = *a2;
    *(a3 + (*a2 >> 3)) = *(a3 + (*a2 >> 3));
    v5 = v6 + 1;
  }

  *a2 = v5;
  return result;
}

compression_status compression_stream_init(compression_stream *stream, compression_stream_operation operation, compression_algorithm algorithm)
{
  if (algorithm > 2192)
  {
    if (algorithm - 2304 < 2)
    {
      return lzvn_stream_init(stream, operation, algorithm, 0);
    }

    if (algorithm == COMPRESSION_BROTLI)
    {
      return brotli_stream_init(stream, operation);
    }

    if (algorithm == 2193)
    {
      return lzfse_stream_init(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm > 2048)
  {
    if (algorithm - 2049 < 2)
    {
      return lzfse_stream_init(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm == COMPRESSION_LZ4)
  {
    return lz4_stream_init(stream, operation, 0);
  }

  if (algorithm != COMPRESSION_ZLIB)
  {
    if (algorithm == COMPRESSION_LZMA)
    {
      lzma_stream_init(stream, operation);
      return result;
    }

    return -1;
  }

  return zlib_stream_init(stream, operation, 0);
}

compression_status compression_stream_process(compression_stream *stream, int flags)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v3 = flags;
  src_ptr = stream->src_ptr;
  dst_ptr = stream->dst_ptr;
  v7 = state[1];
  result = COMPRESSION_STATUS_ERROR;
  if (v7 > 2192)
  {
    if ((v7 - 2304) < 2)
    {
      result = lzvn_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 == 2818)
    {
      result = brotli_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 != 2193)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v7 > 2048)
  {
    if ((v7 - 2049) >= 2)
    {
      return result;
    }

LABEL_15:
    result = lzfse_stream_process(stream, flags);
    if (result)
    {
      return result;
    }

    goto LABEL_24;
  }

  switch(v7)
  {
    case 256:
      result = lz4_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    case 517:
      result = zlib_stream_process(&stream->dst_ptr, flags);
      if (result)
      {
        return result;
      }

      break;
    case 774:
      result = lzma_stream_process(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    default:
      return result;
  }

LABEL_24:
  if ((v3 & 1) != 0 && stream->src_ptr == src_ptr && stream->dst_ptr == dst_ptr)
  {
    return -1;
  }

  return result;
}

compression_status compression_stream_destroy(compression_stream *stream)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v2 = state[1];
  if (v2 <= 2192)
  {
    if (v2 <= 2048)
    {
      if (v2 != 256 && v2 != 517)
      {
        if (v2 == 774)
        {
          return lzma_stream_end(stream);
        }

        return -1;
      }

      return lzvn_stream_end(stream);
    }

    if ((v2 - 2049) < 2)
    {
      return lzvn_stream_end(stream);
    }

    return -1;
  }

  if ((v2 - 2304) < 2)
  {
    return lzvn_stream_end(stream);
  }

  if (v2 != 2818)
  {
    if (v2 == 2193)
    {
      return lzvn_stream_end(stream);
    }

    return -1;
  }

  return brotli_stream_end(stream);
}

uint64_t compression_stream_identify_algorithm(int *a1)
{
  if (lzfse_stream_identify_algorithm(a1))
  {
    return 2049;
  }

  if (repositoryDownloadsAreRestricted())
  {
    return 517;
  }

  if (lzma_stream_identify_algorithm(a1))
  {
    return 774;
  }

  if (lz4_stream_identify_algorithm(a1))
  {
    return 256;
  }

  if (lzvn_stream_identify_algorithm(a1))
  {
    return 2304;
  }

  if (lzbitmap_stream_identify_algorithm(a1))
  {
    return 1794;
  }

  return 0xFFFFFFFFLL;
}

_DWORD *realloc_stream_state(_DWORD *a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v6 = a4;
  v9 = a1;
  if (a1 && a1[3] >= a4)
  {
    v6 = a1[3];
  }

  else
  {
    free(a1);
    v9 = malloc(v6);
    if (!v9)
    {
      return v9;
    }
  }

  if (v6 > a5)
  {
    bzero(v9, v6 - a5);
  }

  *v9 = a2;
  v9[1] = a3;
  v9[2] = -1412628475;
  v9[3] = v6;
  return v9;
}

void BrotliEstimateBitCostsForLiterals(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v61 = v8;
  if (BrotliIsMostlyUTF8(v4, v1, v6, v8, 0.75))
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    if (v9)
    {
      v11 = 0;
      v12 = v10;
      v13 = v9;
      do
      {
        if (*(v5 + (v12 & v7)) < 0)
        {
          v15 = 2 * (v11 > 0xDF);
          if (*(v5 + (v12 & v7)) <= 0xBFu)
          {
            v14 = v15;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 0;
        }

        v11 = *(v5 + (v12 & v7));
        ++*(&v63 + v14);
        ++v12;
        --v13;
      }

      while (v13);
      v16 = (v64 + v65) > 0x18;
      bzero(&v63, 0x1800uLL);
      v17 = 0;
      v18 = 0;
      v19 = 495;
      if (v9 < 0x1EF)
      {
        v19 = v9;
      }

      memset(v62, 0, sizeof(v62));
      v20 = v10;
      do
      {
        v21 = *(v5 + (v20 & v7));
        v22 = *(v5 + (v20 & v7));
        ++*(&v63 + 256 * v18 + v22);
        ++v62[v18];
        v18 = v17 >= 0xE0 && v16;
        if (v21 > 0xBFu)
        {
          v18 = v16;
        }

        if (v21 >= 0)
        {
          v18 = 0;
        }

        ++v20;
        v17 = v22;
        --v19;
      }

      while (v19);
      v23 = 0;
      v24 = 2000;
      do
      {
        if (v23 >= 0x1EF)
        {
          if (v23 == 495)
          {
            v25 = 0;
          }

          else
          {
            v26 = v10 + v23;
            v27 = v23 < 0x1F1 || *(v5 + ((v26 - 497) & v7)) < 0xE0u;
            v28 = *(v5 + ((v26 - 496) & v7));
            v29 = !v27 && v16;
            if (v28 > 0xBF)
            {
              v29 = v16;
            }

            v25 = (v28 & 0x80) != 0 && v29;
          }

          v30 = *(v5 + ((v10 + v23 - 495) & v7));
          --*(&v63 + 256 * v25 + v30);
          --v62[v25];
        }

        if (v23 + 495 < v9)
        {
          v31 = *(v5 + ((v10 + v23 + 493) & v7)) >= 0xE0u && v16;
          if (*(v5 + ((v10 + v23 + 494) & v7)) > 0xBFu)
          {
            v31 = v16;
          }

          if (*(v5 + ((v10 + v23 + 494) & v7)) >= 0)
          {
            v31 = 0;
          }

          v32 = *(v5 + ((v10 + v23 + 495) & v7));
          ++*(&v63 + 256 * v31 + v32);
          ++v62[v31];
        }

        if (v23)
        {
          v33 = v10 + v23;
          v34 = v23 == 1 || *(v5 + ((v33 - 2) & v7)) < 0xE0u;
          v36 = *(v5 + ((v33 - 1) & v7));
          v37 = !v34 && v16;
          if (v36 > 0xBF)
          {
            v37 = v16;
          }

          v35 = (v36 & 0x80) != 0 && v37;
        }

        else
        {
          v35 = 0;
        }

        v38 = *(v5 + ((v10 + v23) & v7));
        v39 = &v63 + 256 * v35;
        v40 = v39[v38];
        if (v40 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v39[v38];
        }

        v42 = v62[v35];
        if (v42 > 0xFF)
        {
          v43 = log2(v42);
        }

        else
        {
          v43 = kBrotliLog2Table[v42];
        }

        if (v40 > 0xFF)
        {
          v44 = log2(v41);
        }

        else
        {
          v44 = kBrotliLog2Table[v41];
        }

        v9 = v61;
        v45 = v43 - v44 + 0.02905;
        if (v45 < 1.0)
        {
          v45 = v45 * 0.5 + 0.5;
        }

        if (v23 <= 0x7CF)
        {
          v45 = v24 / -2000.0 * 0.35 + 0.7 + v45;
        }

        v46 = v45;
        v3[v23++] = v46;
        --v24;
      }

      while (v61 != v23);
    }
  }

  else
  {
    bzero(&v63, 0x800uLL);
    if (v9 >= 0x7D0)
    {
      v47 = 2000;
    }

    else
    {
      v47 = v9;
    }

    if (v9)
    {
      v48 = v10;
      v49 = v47;
      do
      {
        ++*(&v63 + *(v5 + (v48++ & v7)));
        --v49;
      }

      while (v49);
      v50 = 0;
      do
      {
        if (v50 >= 0x7D0)
        {
          v51 = *(v5 + ((v10 - 2000) & v7));
          --*(&v63 + v51);
          --v47;
        }

        v52 = v50 + 2000;
        if (v50 + 2000 < v9)
        {
          v53 = *(v5 + ((v10 + 2000) & v7));
          ++*(&v63 + v53);
          ++v47;
        }

        v54 = *(v5 + (v10 & v7));
        v55 = *(&v63 + v54);
        if (v55 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = *(&v63 + v54);
        }

        if (v47 > 0xFF)
        {
          v57 = log2(v47);
        }

        else
        {
          v57 = kBrotliLog2Table[v47];
        }

        if (v55 > 0xFF)
        {
          v58 = log2(v56);
        }

        else
        {
          v58 = kBrotliLog2Table[v56];
        }

        v9 = v61;
        v59 = v57 - v58 + 0.029;
        if (v59 < 1.0)
        {
          v59 = v59 * 0.5 + 0.5;
        }

        v60 = v59;
        *v3++ = v60;
        ++v10;
        v50 = v52 - 1999;
      }

      while (v52 - 1999 != v61);
    }
  }
}

size_t lzma2_block_decode(unint64_t a1, size_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v32 = 0u;
  v33 = 0u;
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    v12 = a3 + v10;
    v13 = *(a3 + v10);
    if ((*(a3 + v10) & 0x80000000) == 0)
    {
      break;
    }

    v19 = v10 + 5;
    if (v10 + 5 > a4)
    {
      return 0;
    }

    v20 = *(a3 + v11);
    v21 = *(v12 + 2);
    v22 = *(v12 + 3);
    v23 = (v13 >> 5) & 3;
    if ((v23 - 2) < 2)
    {
      if (v19 >= a4)
      {
        return 0;
      }

      v24 = *(a3 + v19);
      if (v24 > 0xE0)
      {
        return 0;
      }

      v25 = *(a3 + v19) / 9u;
      BYTE10(v33) = v24 - 9 * v25;
      BYTE8(v33) = (((v24 - ((109 * v24) >> 8)) >> 1) + ((109 * v24) >> 8)) >> 5;
      BYTE9(v33) = v25 - 5 * ((52 * v25) >> 8);
      BYTE11(v33) = ~(-1 << SBYTE9(v33));
      BYTE12(v33) = ~(-1 << SBYTE8(v33));
      if ((BYTE9(v33) + BYTE10(v33)) > 4u)
      {
        goto LABEL_31;
      }

      v19 = v10 + 6;
LABEL_21:
      lzma1_model_reset(&v32, a6);
      goto LABEL_22;
    }

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_22:
    v26 = (((v21 | (v20 << 8)) & 0xFFE0FFFF | ((v13 & 0x1F) << 16)) + 1);
    v10 = __rev16(v22) + 1 + v19;
    v27 = v10 > a4 || v9 + v26 > a2;
    if (v27 || lzma1_chunk_decode(&v32, a1, (a1 + v9), v26 + a1 + v9, a1 + a2, (a3 + v19), a4 - v19) != v26)
    {
      return 0;
    }

    v9 += v26;
LABEL_28:
    if (v10 >= a4)
    {
      return 0;
    }
  }

  if (*(a3 + v10))
  {
    v14 = v10 + 3;
    if (v13 > 2 || v14 > a4)
    {
      return 0;
    }

    v16 = (*(v12 + 2) | (*(a3 + v11) << 8)) + 1;
    v10 = v16 + v14;
    v17 = v16 + v9;
    if (v16 + v14 > a4 || v17 > a2)
    {
      return 0;
    }

    memcpy((a1 + v9), (a3 + v14), v16);
    v9 = v17;
    goto LABEL_28;
  }

  *a5 = v11;
LABEL_31:
  if ((v13 & 0x80) != 0)
  {
    return 0;
  }

  return v9;
}

uint64_t BrotliBuildCodeLengthsHuffmanTable(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = 0;
  v4 = a3[1] - 1;
  v5 = v4 + a3[2] + a3[3];
  v43[2] = v4 + a3[2];
  v43[3] = v5;
  v6 = v5 + a3[4];
  v7 = v6 + a3[5];
  v43[4] = v6;
  v43[5] = v7;
  v43[0] = 17;
  v43[1] = v4;
  v8 = a2 + 17;
  do
  {
    v9 = *(v8 + v3);
    v10 = v43[v9];
    v44[v10] = v3 + 17;
    v43[v9] = v10 - 1;
    v11 = *(v8 + v3 - 1);
    v12 = v43[v11];
    v43[v11] = v12 - 1;
    v13 = *(v8 + v3 - 2);
    v14 = v43[v13];
    v44[v12] = v3 + 16;
    v44[v14] = v3 + 15;
    v43[v13] = v14 - 1;
    v15 = *(v8 + v3 - 3);
    v16 = v43[v15];
    v43[v15] = v16 - 1;
    v17 = *(v8 + v3 - 4);
    v18 = v43[v17];
    v44[v16] = v3 + 14;
    v44[v18] = v3 + 13;
    v43[v17] = v18 - 1;
    v19 = *(v8 + v3 - 5);
    v20 = v43[v19];
    v43[v19] = v20 - 1;
    v44[v20] = v3 + 12;
    v3 -= 6;
  }

  while (v3 != -18);
  if (v43[0])
  {
    v21 = 0;
    LODWORD(v22) = 0;
    v23 = result + 128;
    v24 = 2;
    v25 = 0x8000000000000000;
    for (i = 1; i != 6; ++i)
    {
      v27 = a3[i];
      if (a3[i])
      {
        v28 = -v24;
        v22 = v22;
        v29 = 0x1FuLL / v24;
        result = (v29 + 4) & 0x3C;
        v30 = vdupq_n_s64(v29);
        do
        {
          v31 = 0;
          v32 = i | (v44[v22] << 16);
          v33 = __rbit64(v21);
          v34 = 4 * v33;
          v35 = 12 * v28 + 4 * v33;
          v36 = 8 * v28 + 4 * v33;
          v37 = v28 + v33;
          v38 = v23 - 4 * v24;
          do
          {
            v39 = vdupq_n_s64(v31);
            v40 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_33E760)));
            if (vuzp1_s16(v40, 2).u8[0])
            {
              *(v38 + v34) = v32;
            }

            if (vuzp1_s16(v40, 2).i8[2])
            {
              *(v38 + 4 * v37) = v32;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_3419E0)))).i32[1])
            {
              *(v38 + v36) = v32;
              *(v38 + v35) = v32;
            }

            v31 += 4;
            v38 += 16 * v28;
          }

          while (result != v31);
          ++v22;
          v21 += v25;
          --v27;
        }

        while (v27);
      }

      v24 *= 2;
      v25 >>= 1;
    }
  }

  else
  {
    v41 = 0;
    v42 = vdupq_n_s32(v44[0] << 16);
    do
    {
      *(result + v41) = v42;
      v41 += 16;
    }

    while (v41 != 128);
  }

  return result;
}

uint64_t BrotliBuildHuffmanTable(char *__src, int a2, uint64_t a3, uint64_t a4)
{
  v8 = (a3 - 2);
  v9 = 16;
  do
  {
    v10 = *v8--;
    --v9;
  }

  while (v10 == -1);
  v11 = 0;
  v12 = 1;
  v13 = (1 << a2);
  if (v9 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v9;
  }

  if (v9 >= a2)
  {
    v15 = 1 << a2;
  }

  else
  {
    v15 = 1 << v9;
  }

  v16 = v14;
  v17 = 2;
  v18 = 0x8000000000000000;
  do
  {
    v19 = *(a4 + 2 * v12);
    if (*(a4 + 2 * v12))
    {
      v20 = v12 - 16;
      do
      {
        v20 = *(a3 + 2 * v20);
        v21 = &__src[4 * __rbit64(v11)];
        v22 = v15;
        do
        {
          *&v21[4 * (v22 - v17)] = v12 | (v20 << 16);
          v22 -= v17;
        }

        while (v22 > 0);
        v11 += v18;
        --v19;
      }

      while (v19);
    }

    v17 *= 2;
    v18 >>= 1;
  }

  while (v12++ < v16);
  if (v13 != v15)
  {
    do
    {
      memcpy(&__src[4 * v15], __src, 4 * v15);
      v24 = v13 == 2 * v15;
      v15 *= 2;
    }

    while (!v24);
  }

  if (v9 > a2)
  {
    v25 = 0;
    v26 = a2;
    v27 = v9;
    v28 = a2 + 1;
    v29 = 0x8000000000000000;
    v30 = 2;
    v31 = __src;
    v32 = 1 << a2;
    do
    {
      v33 = v26 + 1;
      if (*(a4 + 2 * (v26 + 1)))
      {
        v34 = v26 - 15;
        do
        {
          if (!v25)
          {
            v35 = v26 + 1;
            if (v26 <= 13)
            {
              v36 = v26;
              v35 = v28;
              v37 = 1 << (v33 - a2);
              while (1)
              {
                v38 = v37 - *(a4 + 2 + 2 * v36);
                if (v38 < 1)
                {
                  break;
                }

                v37 = 2 * v38;
                ++v35;
                if (++v36 >= 14)
                {
                  v35 = 15;
                  break;
                }
              }
            }

            v31 += 4 * v32;
            v32 = 1 << (v35 - a2);
            v13 = (v32 + v13);
            v39 = __rbit64(v11);
            v11 += 0x8000000000000000 >> (a2 - 1);
            *&__src[4 * v39] = v35 | ((((v31 - __src) >> 2) - v39) << 16);
          }

          v34 = *(a3 + 2 * v34);
          v40 = &v31[4 * __rbit64(v25)];
          v41 = v32;
          do
          {
            *&v40[4 * (v41 - v30)] = (v33 - a2) | (v34 << 16);
            v41 -= v30;
          }

          while (v41 > 0);
          v25 += v29;
          v42 = *(a4 + 2 * v33) - 1;
          *(a4 + 2 * v33) = v42;
        }

        while (v42);
      }

      v30 *= 2;
      v29 >>= 1;
      ++v28;
      ++v26;
    }

    while (v33 < v27);
  }

  return v13;
}

uint64_t BrotliBuildSimpleHuffmanTable(int *__src, char a2, unsigned __int16 *a3, int a4)
{
  v5 = 1;
  v6 = (1 << a2);
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = a3[1];
        v15 = *a3;
        if (v14 <= v15)
        {
          *__src = (v14 << 16) | 1;
          v16 = (*a3 << 16) | 1;
        }

        else
        {
          *__src = (v15 << 16) | 1;
          v16 = (a3[1] << 16) | 1;
        }

        __src[1] = v16;
        v5 = 2;
      }
    }

    else
    {
      *__src = *a3 << 16;
      v5 = 1;
    }
  }

  else
  {
    if (a4 == 2)
    {
      *__src = (*a3 << 16) | 1;
      __src[2] = (*a3 << 16) | 1;
      v17 = a3[2];
      v18 = a3[1];
      if (v17 > v18)
      {
        __src[1] = (v18 << 16) | 2;
        v19 = (a3[2] << 16) | 2;
LABEL_24:
        __src[3] = v19;
        v5 = 4;
        goto LABEL_28;
      }

      __src[1] = (v17 << 16) | 2;
      v13 = a3[1];
LABEL_23:
      v19 = (v13 << 16) | 2;
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      if (a4 != 3)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v8 = 2;
      do
      {
        v9 = v7++;
        v10 = a3[v9];
        v11 = v8;
        do
        {
          v12 = *(a3 + v11);
          if (v12 < v10)
          {
            *(a3 + v11) = v10;
            a3[v9] = v12;
            v10 = v12;
          }

          v11 += 2;
        }

        while (v11 != 8);
        v8 += 2;
      }

      while (v7 != 3);
      *__src = (*a3 << 16) | 2;
      __src[2] = (a3[1] << 16) | 2;
      __src[1] = (a3[2] << 16) | 2;
      v13 = a3[3];
      goto LABEL_23;
    }

    v20 = a3[3];
    v21 = a3[2];
    if (v20 < v21)
    {
      a3[3] = v21;
      a3[2] = v20;
    }

    *__src = (*a3 << 16) | 1;
    __src[1] = (a3[1] << 16) | 2;
    __src[2] = (*a3 << 16) | 1;
    __src[3] = (a3[2] << 16) | 3;
    __src[4] = (*a3 << 16) | 1;
    __src[5] = (a3[1] << 16) | 2;
    __src[6] = (*a3 << 16) | 1;
    __src[7] = (a3[3] << 16) | 3;
    v5 = 8;
  }

LABEL_28:
  while (v5 != v6)
  {
    memcpy(&__src[v5], __src, 4 * v5);
    v5 *= 2;
  }

  return v6;
}

void _hashCFType_cold_1()
{
  v1 = _MADLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0_0(&dword_0, v2, v3, "Received a request to hash a value that is too large, possible malicious behavior - aborting", v4, v5, v6, v7, 0);
  }

  abort();
}

void _hashCFString_cold_1()
{
  v1 = _MADLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0_0(&dword_0, v2, v3, "Received a request to hash a multibyte value that is too large, possible malicious behavior - aborting", v4, v5, v6, v7, 0);
  }

  abort();
}

void _hashCFString_cold_2()
{
  v1 = _MADLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0_0(&dword_0, v2, v3, "Received a request to hash a value but could not get a C string. Possible malicious behavior - aborting", v4, v5, v6, v7, 0);
  }

  abort();
}

void __os_cleanup_iorelease_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_ioclose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_close_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DownloadManager.m" lineNumber:88 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t aks_get_dsme_key(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  OUTLINED_FUNCTION_43(__stack_chk_guard);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = OUTLINED_FUNCTION_5(aks_client_connection, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 3992, "", "");
    OUTLINED_FUNCTION_32();
  }

  OUTLINED_FUNCTION_52(__src);
  return v6;
}

uint64_t aks_migrate_path(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_4();
  bzero(v15, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v4, v15))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3 | 0x18;
  if ((v3 & 0x1C) != 0)
  {
    v5 = v3;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = __aks_migrate_path_block_invoke;
  v11[3] = &__block_descriptor_tmp;
  v12 = v5;
  v13 = v2;
  v14 = v1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = __aks_migrate_path_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_16;
  v8 = v2;
  v9 = v5;
  v10 = v1;
  _iterate_path(v15, v11, v7);
  return 0;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, char **a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_3();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1_1(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = (a2 + 96);
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_1();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void *DERImg4DecodePayloadProperties(void *result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return (&dword_4 + 2);
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && result[1])
    {
      OUTLINED_FUNCTION_0_3();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return (&dword_0 + 2);
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_1();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

void *DERImg4DecodeRestoreInfo(void *result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return (&dword_4 + 2);
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && result[1])
    {
      OUTLINED_FUNCTION_0_3();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return (&dword_0 + 2);
      }
    }

    return 0;
  }

  return result;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t ccec_generate_scalar_legacy_ws(uint64_t a1, uint64_t *a2, size_t a3, void *__src, void *__dst)
{
  v7 = a2 + 4;
  v6 = *a2;
  v8 = 8 * *a2;
  if (v8 > a3)
  {
    return 4294967276;
  }

  v12 = &v7[5 * v6];
  memcpy(__dst, __src, v8);
  v13 = cczp_bitlen(&v7[5 * *a2]);
  if ((v13 & 0x3F) != 0)
  {
    *(__dst + v6 - 1) &= 0xFFFFFFFFFFFFFFFFLL >> -(v13 & 0x3F);
  }

  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v6);
  v16 = cczp_prime(v12);
  v17 = ccn_sub_ws(a1, v6, v15, __dst, v16);
  ccn_mux(v6, !v17, __dst, v15, __dst);
  result = 0;
  *(a1 + 16) = v14;
  return result;
}

uint64_t ccecdh_compute_shared_secret_ws(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t *a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v11 = *a2;
  v31 = *(a1 + 16);
  v12 = 3 * **a2;
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = *a4;
  *a4 = 0;
  v16 = ccn_write_uint_size_internal(*v11, v11 + 3);
  if (v15 < v16 || *a2 != *a3 || (v17 = v16, ccec_validate_point_and_projectify_ws(a1, v11, v14, (a3 + 2))) || ccec_validate_scalar(v11, &a2[3 * **a2 + 2]) || (v18 = OUTLINED_FUNCTION_0_4(), ccec_mult_blinded_ws(v18, v19, v20, v21, v14, a6)))
  {
    v28 = 0xFFFFFFFFLL;
    v24 = v31;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_4();
    v24 = v31;
    if (!ccec_is_point_projective_ws(v22, v23) || (v25 = OUTLINED_FUNCTION_0_4(), ccec_affinify_x_only_ws(v25, v26, v27, v13)))
    {
      v28 = 0xFFFFFFFFLL;
    }

    else
    {
      ccn_write_uint_padded_ct_internal(*v11, v13, v17, a5);
      v28 = 0;
      *a4 = v17;
    }
  }

  cc_clear(24 * *v11, v13);
  cc_clear(24 * *v11, v14);
  *(a1 + 16) = v24;
  return v28;
}

uint64_t ccec_generate_scalar_fips_retry_ws(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *), void *a4)
{
  v8 = a2 + 4;
  v9 = &a2[5 * *a2 + 4];
  v10 = cczp_n(v9);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = cczp_prime(v9);
  ccn_set(v10, v12, v13);
  *v12 &= ~1uLL;
  v14 = 100;
  while (1)
  {
    v15 = cczp_bitlen(&v8[5 * *a2]);
    result = ccn_random_bits_fips(v15, a4, a3);
    if (result)
    {
      break;
    }

    if ((ccn_cmp_public_value(v10, a4, v12) & 0x80000000) != 0)
    {
      ccn_add1_ws(a1, v10, a4, a4, 1);
      result = 0;
      break;
    }

    if (!--v14)
    {
      result = 4294967281;
      break;
    }
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t ccec_sign_internal_inner_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t (**a10)(void, uint64_t, uint64_t *))
{
  v15 = *a2;
  v16 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  v17 = (*(a1 + 24))(a1, 3 * v15);
  result = ccec_mult_blinded_ws(a1, a2, v17, a5, a6, a10);
  if (!result)
  {
    result = ccec_affinify_x_only_ws(a1, a2, v17, v17);
    if (!result)
    {
      v37 = v16;
      v19 = &a2[5 * v15];
      v20 = cczp_prime((v19 + 4));
      v21 = ccn_sub_ws(a1, v15, a8, v17, v20);
      v22 = cczp_prime((v19 + 4));
      ccn_cond_add(v15, v21, a8, a8, v22);
      if (ccn_n(v15, a8))
      {
        v23 = OUTLINED_FUNCTION_0_5();
        cczp_mul_ws(v23, v24);
        v25 = OUTLINED_FUNCTION_0_5();
        cczp_mul_ws(v25, v26);
        v27 = OUTLINED_FUNCTION_0_5();
        cczp_mul_ws(v27, v28);
        v29 = OUTLINED_FUNCTION_0_5();
        cczp_mul_ws(v29, v30);
        v31 = OUTLINED_FUNCTION_0_5();
        cczp_add_ws(v31, v32);
        v33 = OUTLINED_FUNCTION_0_5();
        result = cczp_inv_ws(v33, v34);
        if (!result)
        {
          v35 = OUTLINED_FUNCTION_0_5();
          cczp_mul_ws(v35, v36);
          if (ccn_n(v15, a9))
          {
            result = 0;
          }

          else
          {
            result = 4294967131;
          }
        }
      }

      else
      {
        result = 4294967131;
      }

      v16 = v37;
    }
  }

  *(a1 + 16) = v16;
  return result;
}

uint64_t ccec_generate_scalar_fips_extrabits_ws(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, char *a5)
{
  v10 = a2 + 4;
  v11 = &a2[5 * *a2 + 4];
  v12 = cczp_n(v11);
  v13 = *(a1 + 16);
  if (a3 < (cczp_bitlen(&v10[5 * *a2]) + 71) >> 3)
  {
    result = 4294967276;
  }

  else if (a3 > 0x80)
  {
    result = 4294967289;
  }

  else
  {
    v14 = (*(a1 + 24))(a1, 16);
    v15 = (*(a1 + 24))(a1, v12);
    v16 = cczp_prime(v11);
    ccn_set(v12, v15, v16);
    *v15 &= ~1uLL;
    result = ccn_read_uint_internal(16, v14, a3, a4);
    if (!result)
    {
      ccn_divmod_ws(a1, (a3 + 7) >> 3, v14, 0, 0, v12, a5, v15);
      ccn_add1_ws(a1, v12, a5, a5, 1);
      result = 0;
    }
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t generate_2(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  memset(__s, 0, sizeof(__s));
  v23[0] = 0;
  v23[1] = 0;
  v8 = (cczp_n(*(a1 + 56)) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v22 - v8;
  bzero(v22 - v8, v8);
  if (a2 > 0x10000)
  {
    goto LABEL_22;
  }

  if (*(a1 + 72) && *(a1 + 48) > 0x1000000000000uLL)
  {
    v16 = 4294967234;
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  if (*(a1 + 80))
  {
    if (a4 <= 0x10000)
    {
      v15 = derive(a1, __s, 1u, v10, v11, v12, v13, v14, a4);
      if (v15)
      {
        v16 = v15;
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_22:
    v16 = 4294967233;
    goto LABEL_21;
  }

  if (*(a1 + 64) + 16 < a4)
  {
    goto LABEL_22;
  }

  cc_clear(0x30uLL, __s);
  __memcpy_chk();
LABEL_11:
  update(a1, __s);
LABEL_12:
  v22[1] = v22;
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  for (i = -a2; a2; a2 -= v18)
  {
    if (a2 >= 0x80)
    {
      v18 = 128;
    }

    else
    {
      v18 = a2;
    }

    ccctr_update_internal(*(a1 + 56), v9, v18, &zeros, a3);
    a3 += v18;
  }

  ccctr_update_internal(*(a1 + 56), v9, i & 0xF, &zeros, v23);
  cc_clear(i & 0xF, v23);
  if (a4)
  {
    v19 = __s;
  }

  else
  {
    v19 = &zeros;
  }

  update_with_ctr(a1, v9, v19);
  v20 = cczp_n(*(a1 + 56));
  cc_clear(v20, v9);
  v16 = 0;
  ++*(a1 + 48);
LABEL_21:
  cc_clear(0x30uLL, __s);
  return v16;
}

uint64_t reseed(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  memset(__s, 0, sizeof(__s));
  if (!a1[10])
  {
    v14 = a1[8] + 16;
    if (v14 < a4 || v14 != a2)
    {
      return 4294967233;
    }

    __memcpy_chk();
    for (; v9; --v9)
    {
      *(&v16 + v9 + 7) ^= *(a5 - 1 + v9);
    }

    goto LABEL_6;
  }

  v11 = 4294967233;
  if (a2 <= 0x10000 && a4 <= 0x10000 && *(a1[7] + 16) <= a2)
  {
    HIBYTE(v16) = HIBYTE(a5);
    v12 = derive(a1, __s, 2u, a4, a5, a6, a7, a8, a2);
    if (v12)
    {
      v11 = v12;
      goto LABEL_7;
    }

LABEL_6:
    update(a1, __s);
    v11 = 0;
    a1[6] = 1;
LABEL_7:
    cc_clear(a1[8] + 16, __s);
  }

  return v11;
}

uint64_t ccec_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v5 = **a2;
  v6 = *(a1 + 16);
  (*(a1 + 24))(a1, v5);
  (*(a1 + 24))(a1, v5);
  ccsha256_di();
  v7 = OUTLINED_FUNCTION_0_6();
  result = ccec_sign_composite_msg_ws(v7, v8, v9, v10, v11, v12, v13, a3);
  if (!result)
  {
    v23[0] = 0;
    v23[1] = 0;
    ccsha256_di();
    v15 = OUTLINED_FUNCTION_0_6();
    result = ccec_verify_composite_msg_ws(v15, v16, v17, v18, v19, v20, v21, v22);
    if (!result)
    {
      cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v23);
      result = 0;
    }
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t ccec_generate_key_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, void *), uint64_t **a4)
{
  v7 = *(a1 + 16);
  result = ccec_generate_key_internal_fips_ws(a1, a2, a3, a4);
  if (!result)
  {
    if (ccec_pairwise_consistency_check_ws(a1, a4, a3))
    {
      result = 4294967278;
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_x963_import_priv_ws(uint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  v5 = *a4;
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xD0;
  if (v6 || v7 == 0)
  {
    return 4294967289;
  }

  v14 = a2 + 4;
  if (a3 < (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = cczp_bitlen(&v14[5 * *a2]);
  result = ccec_x963_import_pub_ws(a1, a2, a3 - ((v16 + 7) >> 3), a4, a5);
  if (!result)
  {
    v18 = *a2;
    v19 = &a5[3 * **a5];
    v20 = (cczp_bitlen(&v14[5 * *a2]) + 7) >> 3;
    v21 = cczp_bitlen(a2);
    result = ccn_read_uint_internal(v18, v19 + 2, v20, &a4[((v21 + 7) >> 2) | 1]);
  }

  *(a1 + 16) = v15;
  return result;
}

uint64_t drbg_reseed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  if (v10)
  {
    os_unfair_lock_assert_owner(v10);
  }

  result = ccdrbg_reseed(a1[4], a1[5], a2, a3, a4, a5);
  if (!result)
  {
    a1[10] = a1[8];
  }

  return result;
}

uint64_t ccec_generate_key_deterministic_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), int a6, uint64_t **a7)
{
  *a7 = a2;
  if ((~a6 & 0x19) != 0)
  {
    if (a6)
    {
      v18 = OUTLINED_FUNCTION_0_7();
      result = ccec_generate_scalar_fips_extrabits_ws(v18, v19, v20, v21, v22);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if ((a6 & 4) == 0)
      {
        return 4294967275;
      }

      v23 = OUTLINED_FUNCTION_0_7();
      result = ccec_generate_scalar_legacy_ws(v23, v24, v25, v26, v27);
      if (result)
      {
        return result;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_1_2();
    result = ccec_make_pub_from_priv_ws(a1, a2, a5, v28 + 16, 0, a7);
    if (!result)
    {
      if ((~a6 & 9) == 0)
      {
        ccec_compact_transform_key_ws(a1, a7);
      }

      if (ccec_pairwise_consistency_check_ws(a1, a7, a5))
      {
        return 4294967278;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  memset(v29, 0, sizeof(v29));
  v14 = ((cczp_bitlen(a2) + 62) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v15 = (a3 - v14);
  if (v15 < 10 * (((cczp_bitlen(&a2[5 * *a2 + 4]) + 63) >> 3) & 0x1FFFFFFFFFFFFFF8))
  {
    return 4294967286;
  }

  result = ccrng_sequence_non_repeat_init(v29, v15, (a4 + v14));
  if (!result)
  {
    OUTLINED_FUNCTION_1_2();
    result = ccec_generate_scalar_fips_retry_ws(a1, a2, v29, (v17 + 16));
    if (!result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t ccmode_gcm_aad(uint64_t a1, unint64_t a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  if (*(a1 + 80) != 2)
  {
    return 4294967228;
  }

  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 88);
  v13 = v12 & 0xF;
  if ((v12 & 0xF) != 0)
  {
    v14 = 16 - v13;
    if (a2 < v14)
    {
      goto LABEL_9;
    }

    v15 = (v12 & 0xF) + a1 + 15;
    v16 = 16 - v13;
    do
    {
      *(v15 + v16) ^= a3[-1].u8[v16 + 15];
      --v16;
    }

    while (v16);
    ccmode_gcm_mult_h(a1, (a1 + 16), a4, a5, a6, a7, a8, a9);
    v10 -= v14;
    v9 = (v9 + v14);
    *(a1 + 88) += v14;
  }

  if (v10 >= 0x10)
  {
    v17 = v10 & 0xFFFFFFFFFFFFFFF0;
    gcm_ghash((a1 + 16), (a1 + 128), v9, v10 & 0xFFFFFFFFFFFFFFF0);
    v13 = 0;
    v9 = (v9 + (v10 & 0xFFFFFFFFFFFFFFF0));
    v10 &= 0xFu;
    *(a1 + 88) += v17;
LABEL_9:
    if (v10)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v13 = 0;
  if (!v10)
  {
    return 0;
  }

LABEL_10:
  v18 = a1 + v13 + 15;
  v19 = v10;
  do
  {
    *(v18 + v19) ^= v9[-1].u8[v19 + 15];
    --v19;
  }

  while (v19);
  result = 0;
  *(a1 + 88) += v10;
  return result;
}

uint64_t ccmode_gcm_init(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 8) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  a2[6].i64[1] = v2;
  a2[7].i64[0] = a2[24].i64;
  a2[7].i32[2] = *(a1 + 8);
  (*(v2 + 16))(v2);
  a2[5].i16[1] = 0;
  ccmode_gcm_reset(a2);
  v4 = (*(v2 + 24))(a2[7].i64[0], 1, a2 + 1, a2);
  gcm_init(a2 + 8, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

uint64_t ccmode_gcm_set_iv(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (*(a1 + 80) != 1 || (*(a1 + 82) & 1) != 0)
  {
    return 4294967228;
  }

  v4 = a2;
  result = 4294967228;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (a2 == 12)
      {
        v7 = *a3;
        *(a1 + 40) = *(a3 + 2);
        *(a1 + 32) = v7;
        *(a1 + 44) = 0x1000000;
      }

      else
      {
        v17 = 0uLL;
        cc_clear(8uLL, &v17);
        v17.i64[1] = bswap64(8 * v4);
        cc_clear(0x10uLL, (a1 + 32));
        if (v4 < 0x10)
        {
          goto LABEL_20;
        }

        do
        {
          for (i = 0; i != -16; --i)
          {
            *(a1 + i + 47) ^= *(v6 + i + 15);
          }

          v8 = ccmode_gcm_mult_h(a1, (a1 + 32), v8, v9, v10, v11, v12, v13);
          v6 += 2;
          v4 -= 16;
        }

        while (v4 > 0xF);
        if (v4)
        {
LABEL_20:
          do
          {
            *(a1 + v4 + 31) ^= *(v6 + v4 - 1);
            --v4;
          }

          while (v4);
          ccmode_gcm_mult_h(a1, (a1 + 32), v8, v9, v10, v11, v12, v13);
        }

        v15 = *v17.i64;
        v16 = veorq_s8(v17, *(a1 + 32));
        *(a1 + 32) = v16;
        ccmode_gcm_mult_h(a1, (a1 + 32), *v16.i64, v15, v10, v11, v12, v13);
      }

      *(a1 + 48) = *(a1 + 32);
      ccmode_gcm_update_pad(a1);
      result = 0;
      *(a1 + 80) = 2;
    }
  }

  return result;
}

uint64_t ccec_make_pub_from_priv_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t **a6)
{
  *a6 = a2;
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *a2);
  if (ccec_validate_scalar(a2, a4))
  {
    result = 4294967274;
    goto LABEL_10;
  }

  if (a5)
  {
    result = ccec_validate_point_and_projectify_ws(a1, a2, v14, a5);
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = ccec_projectify_ws(a1, a2);
    if (result)
    {
      goto LABEL_10;
    }
  }

  v16 = OUTLINED_FUNCTION_0_8();
  if (ccec_mult_blinded_ws(v16, v17, v18, a4, v14, a3))
  {
    result = 4294967280;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_0_8();
    if (ccec_is_point_projective_ws(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_0_8();
      if (ccec_affinify_ws(v21, v22))
      {
        result = 4294967279;
      }

      else
      {
        ccn_seti(v12, &a6[2 * **a6 + 2], 1);
        result = 0;
      }
    }

    else
    {
      result = 4294967277;
    }
  }

LABEL_10:
  *(a1 + 16) = v13;
  return result;
}

uint64_t ccec_raw_import_pub(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  if ((((cczp_bitlen(a1) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  v8 = (cczp_bitlen(a1) + 7) >> 3;
  *a4 = a1;
  v9 = a4 + 2;
  if (ccn_read_uint_public_value(v7, a4 + 2, v8, a3) || ccn_read_uint_public_value(v7, &v9[**a4], v8, &a3[v8]))
  {
    return 0xFFFFFFFFLL;
  }

  ccn_seti(*a1, &v9[2 * **a4], 1);
  return 0;
}

void ccn_random_bits(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v4 = (a1 + 63) >> 6;
  if (!(*a3)(a3, 8 * v4, a2))
  {
    OUTLINED_FUNCTION_0_9();
    *(a2 + 8 * v4 - 8) &= v5;
  }
}

uint64_t ccn_random_bits_fips(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v4 = (a1 + 63) >> 6;
  if ((a1 + 63) > 0x7F)
  {
    v5 = (*a3)(a3, 8 * v4, a2);
  }

  else
  {
    v9 = 0;
    __src = 0;
    v5 = (*a3)(a3, 12uLL, &__src);
    memcpy(a2, &__src, 8 * v4);
    cc_clear(8 * v4, &__src);
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_0_9();
    *(a2 + v4 - 1) &= v6;
  }

  return v5;
}

uint64_t ccrng_process_init(uint64_t a1, uint64_t (*a2)(void), uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  ccrng_schedule_timer_init(a1 + 128, a2, 5000000000);
  ccrng_schedule_atomic_flag_init(a1 + 168);
  ccrng_schedule_tree_init(a1 + 96, a1 + 128, a1 + 168);
  result = cc_lock_init((a1 + 208));
  if (!result)
  {
    result = ccentropy_rng_init((a1 + 192), a3);
    if (!result)
    {
      v7 = ccaes_cbc_encrypt_mode();
      result = ccdrbg_df_bc_init_internal((a1 + 224), v7, 0x20uLL);
      if (!result)
      {
        v8 = ccaes_ctr_crypt_mode();
        v9 = xmmword_33D110;
        DWORD2(v9) = 1;
        v10 = a1 + 224;
        ccdrbg_factory_nistctr((a1 + 768), &v8);
        memset(v12, 0, sizeof(v12));
        result = (*a3)(a3, 32, v12);
        if (!result)
        {
          a2();
          strcpy(v11, "corecrypto process rng");
          result = ccdrbg_init_internal(a1 + 768);
          if (!result)
          {
            result = ccrng_crypto_init((a1 + 8), a1 + 192, a1 + 96, a1 + 208, a1 + 768, a1 + 824, 4096, 0x20uLL, 256, a1 + 2104);
            if (!result)
            {
              *a1 = generate_1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccec_verify_composite_digest_ws(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v22 = 0uLL;
  v14 = **a2;
  v21 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v14);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = ccec_signature_r_s_size(a2);
  if (ccn_read_uint_internal(v14, v15, v17, a5) || (v18 = ccec_signature_r_s_size(a2), ccn_read_uint_internal(v14, v16, v18, a6)))
  {
    result = 4294967289;
    goto LABEL_9;
  }

  result = ccec_verify_internal_ws(a1, a2, a3, a4, v15, v16, &v22);
  if (!a7)
  {
LABEL_9:
    v20 = v21;
    goto LABEL_10;
  }

  v20 = v21;
  if (!result)
  {
    *a7 = v22;
  }

LABEL_10:
  *(a1 + 16) = v20;
  return result;
}

uint64_t ccec_verify_composite_msg_ws(uint64_t a1, uint64_t *a2, unint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  memset(v15, 0, sizeof(v15));
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_verify_composite_digest_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t cccmac_final_generate_internal(char *__s, size_t a2, void *a3)
{
  __src[0] = 0;
  __src[1] = 0;
  v4 = *(__s + 8);
  v5 = *(__s + 6);
  v6 = *(__s + 7) + v5;
  *(__s + 7) = v6;
  if (v5 > 0x10)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    v9 = !v8;
    v10 = 0xFFFFFFFFLL;
    if (a2 - 17 >= 0xFFFFFFFFFFFFFFF0 && (v9 & 1) == 0)
    {
      v12 = __s + 32;
      v13 = __s;
      if (v5 != 16)
      {
        v13 = __s + 16;
        cc_clear(16 - v5, &v12[v5]);
        v12[v5] = 0x80;
      }

      for (i = 0; i != -16; --i)
      {
        __s[i + 47] ^= v13[i + 15];
      }

      cccbc_update_internal(v4, (__s + 72), &__s[*v4 + 72], 1, (__s + 32), __src);
      memcpy(a3, __src, a2);
      v10 = 0;
      v4 = *(__s + 8);
    }
  }

  cc_clear(v4[1] + *v4 + 80, __s);
  return v10;
}

uint64_t cccmac_final_generate()
{
  timingsafe_enable_if_supported();
  v0 = OUTLINED_FUNCTION_0_10();
  internal = cccmac_final_generate_internal(v0, v1, v2);
  cc_disable_dit_with_sb(&v5);
  return internal;
}

uint64_t ccaes_vng_gcm_encrypt(uint64_t a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1, a5, a6, a7, a8, a9, a10);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v23 = *(a1 + 96);
  result = 4294967229;
  if (!__CFADD__(v23, a2) && v23 + a2 <= 0xFFFFFFFE0)
  {
    v25 = v14 & 0xF;
    if ((v14 & 0xF) != 0)
    {
      v26 = 16 - v25;
      if (a2 < v26)
      {
LABEL_19:
        if (!a2)
        {
          return 0;
        }

        v40 = v25;
        v41 = &a4[-1].i8[15];
        v42 = a1 + v25 + 63;
        v43 = a2;
        do
        {
          v41[v43] = *(v42 + v43) ^ a3[-1].i8[v43 + 15];
          --v43;
        }

        while (v43);
        v44 = v40 + a1 + 15;
        v45 = a2;
        do
        {
          *(v44 + v45) ^= v41[v45];
          --v45;
        }

        while (v45);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v27 = &a4[-1].i8[15];
      v28 = v26;
      do
      {
        v27[v28] = *((v14 & 0xF) + a1 + 63 + v28) ^ a3[-1].i8[v28 + 15];
        --v28;
      }

      while (v28);
      v29 = v26;
      do
      {
        *((v14 & 0xF) + a1 + 15 + v29) ^= v27[v29];
        --v29;
      }

      while (v29);
      ccmode_gcm_mult_h(a1, (a1 + 16), v17, v18, v19, v20, v21, v22);
      a2 -= v26;
      a3 = (a3 + v26);
      a4 = (a4 + v26);
      *(a1 + 96) += v26;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      gcmEncrypt(a3, a4, a1, a2 & 0xFFFFFFF0, (a1 + 128), *(a1 + 112), v15, v16, v46, v47);
      v30 = a2 & 0xFFFFFFF0;
      a2 &= 0xFFFFFFFF0000000FLL;
      a3 = (a3 + v30);
      a4 = (a4 + v30);
      v31 = *(a1 + 104);
      *(a1 + 96) += v30;
      (*(v31 + 24))(*(a1 + 112), 1, a1 + 32, a1 + 64);
      if (a2 >= 0x10)
      {
        do
        {
          for (i = 0; i != -16; --i)
          {
            a4->i8[i + 15] = *(a1 + i + 79) ^ a3->i8[i + 15];
          }

          for (j = 0; j != -16; --j)
          {
            *(a1 + j + 31) ^= a4->u8[j + 15];
          }

          ccmode_gcm_mult_h(a1, (a1 + 16), v32, v33, v34, v35, v36, v37);
          a2 -= 16;
          ++a3;
          ++a4;
          *(a1 + 96) += 16;
          ccmode_gcm_update_pad(a1);
        }

        while (a2 > 0xF);
      }
    }

    v25 = 0;
    goto LABEL_19;
  }

  return result;
}

uint64_t ccec_validate_scalar(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = cczp_prime(&a1[5 * *a1 + 4]);
  if ((ccn_cmp_public_value(v4, a2, v5) & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (ccn_n(*a1, a2))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ccec_import_affine_point_ws(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  if (!a4)
  {
    return 4294967289;
  }

  v11 = *a2;
  if (a4 == 1 && !*a5)
  {
    return 4294967136;
  }

  switch(a3)
  {
    case 4:
      v12 = 4294967124;
      if (a4 != (cczp_bitlen(a2) + 7) >> 3)
      {
        return v12;
      }

LABEL_22:
      v15 = *(a1 + 16);
      v16 = (*(a1 + 24))(a1, v11);
      if (a3 == 4)
      {
        v17 = a5;
      }

      else
      {
        v17 = a5 + 1;
      }

      v18 = cczp_bitlen(a2);
      uint_public_value = ccn_read_uint_public_value(v11, a6, (v18 + 7) >> 3, v17);
      if (!uint_public_value)
      {
        if (ccn_cmp_public_value(v11, a6, a2 + 3) != -1)
        {
LABEL_38:
          *(a1 + 16) = v15;
          return v12;
        }

        if ((a3 - 3) > 1)
        {
          v22 = &a5[(cczp_bitlen(a2) + 7) >> 3];
          v23 = &a6[*a2];
          v24 = cczp_bitlen(a2);
          uint_public_value = ccn_read_uint_public_value(v11, v23, (v24 + 7) >> 3, v22 + 1);
          if (!uint_public_value)
          {
            if (a3 == 2)
            {
              OUTLINED_FUNCTION_0_11();
              if (!v14)
              {
                v12 = 4294967125;
                goto LABEL_38;
              }
            }

            goto LABEL_37;
          }
        }

        else
        {
          uint_public_value = ccec_affine_point_from_x_ws(a1, a2, a6, a6);
          if (!uint_public_value)
          {
            cczp_negate(a2, v16, &a6[*a2]);
            v20 = &a6[*a2];
            if (a3 == 4)
            {
              v21 = ccn_cmp_public_value(v11, v16, v20) >> 31;
            }

            else
            {
              OUTLINED_FUNCTION_0_11();
              if (v14)
              {
                LOBYTE(v21) = 0;
              }

              else
              {
                LOBYTE(v21) = 1;
              }
            }

            ccn_mux(v11, v21, v20, v16, v20);
LABEL_37:
            v12 = 0;
            goto LABEL_38;
          }
        }
      }

      v12 = uint_public_value;
      goto LABEL_38;
    case 1:
      cczp_bitlen(a2);
      OUTLINED_FUNCTION_1_3();
      if (v14)
      {
        v12 = 4294967126;
        if (*a5 == 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        return 4294967126;
      }

      break;
    case 2:
      cczp_bitlen(a2);
      OUTLINED_FUNCTION_1_3();
      if (v14)
      {
        v13 = *a5 - 8;
        v12 = 4294967125;
LABEL_17:
        if (v13 < 0xFFFFFFFE)
        {
          return v12;
        }

        goto LABEL_22;
      }

      return 4294967125;
    case 3:
      if (ccec_compressed_x962_export_pub_size(a2) != a4)
      {
        return 4294967135;
      }

      v13 = *a5 - 4;
      v12 = 4294967135;
      goto LABEL_17;
    default:
      return 4294967289;
  }

  return v12;
}

uint64_t ccec_export_affine_point_public_value(uint64_t *a1, int a2, uint64_t *a3, unint64_t *a4, char *a5)
{
  v10 = ccec_export_affine_point_size(a1, a2);
  if (!v10)
  {
    return 4294967289;
  }

  if (*a4 < v10)
  {
    return 4294967133;
  }

  *a4 = v10;
  v11 = a2 - 1;
  if ((a2 - 1) <= 2)
  {
    *a5 = 0x20604u >> (8 * v11);
  }

  v12 = *a1;
  if (a2 == 4)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 + 1;
  }

  v14 = cczp_bitlen(a1);
  if ((ccn_write_uint_padded_ct_internal(v12, a3, (v14 + 7) >> 3, v13) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 <= 1)
  {
    v15 = &v13[(cczp_bitlen(a1) + 7) >> 3];
    v16 = &a3[*a1];
    v17 = cczp_bitlen(a1);
    if ((ccn_write_uint_padded_ct_internal(v12, v16, (v17 + 7) >> 3, v15) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    *a5 |= a3[*a1] & 1;
  }

  return result;
}

void ccec_verify_internal_with_base_ws_cold_1(uint64_t a1)
{
  v2 = cc_log_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_fault_impl(&dword_0, v2, OS_LOG_TYPE_FAULT, "Digest should be at least 128 bits long: argument digest_len = %lu", &v3, 0xCu);
  }
}

uint64_t ccec_sign_composite_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v14 = **a2;
  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, v14);
  v18 = ccec_sign_internal_ws(a1, a2, a3, a4, v16, v17, a7);
  if (!v18)
  {
    v19 = **a2;
    v20 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v19, v16, v20, a5);
    v21 = **a2;
    v22 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v21, v17, v22, a6);
  }

  *(a1 + 16) = v15;
  return v18;
}

uint64_t ccec_sign_composite_msg_ws(uint64_t a1, uint64_t **a2, unint64_t *a3, size_t a4, char *a5, char *a6, char *a7, uint64_t (**a8)(void, unint64_t, void *))
{
  memset(v15, 0, sizeof(v15));
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_sign_composite_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccaes_vng_gcm_decrypt(uint64_t a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1, a5, a6, a7, a8, a9, a10);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v21 = *(a1 + 96);
  result = 4294967229;
  if (!__CFADD__(v21, a2) && v21 + a2 <= 0xFFFFFFFE0)
  {
    v23 = v14 & 0xF;
    if ((v14 & 0xF) != 0)
    {
      v24 = 16 - v23;
      if (a2 < v24)
      {
LABEL_19:
        if (!a2)
        {
          return 0;
        }

        v39 = v23;
        v40 = &a3[-1].i8[15];
        v41 = a1 + v23 + 15;
        v42 = a2;
        do
        {
          *(v41 + v42) ^= v40[v42];
          --v42;
        }

        while (v42);
        v43 = v39 + a1 + 63;
        v44 = a2;
        do
        {
          a4[-1].i8[v44 + 15] = *(v43 + v44) ^ v40[v44];
          --v44;
        }

        while (v44);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v25 = v14 & 0xF;
      v26 = &a3[-1].i8[15];
      v27 = 16 - v23;
      do
      {
        *(v25 + a1 + 15 + v27) ^= v26[v27];
        --v27;
      }

      while (v27);
      ccmode_gcm_mult_h(a1, (a1 + 16), v15, v16, v17, v18, v19, v20);
      v28 = v24;
      do
      {
        a4[-1].i8[v28 + 15] = *(v25 + a1 + 63 + v28) ^ v26[v28];
        --v28;
      }

      while (v28);
      a2 -= v24;
      a3 = (a3 + v24);
      a4 = (a4 + v24);
      *(a1 + 96) += v24;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      gcmDecrypt(a3, a4, a1, a2 & 0xFFFFFFF0, (a1 + 128), *(a1 + 112));
      v29 = a2 & 0xFFFFFFF0;
      a2 &= 0xFFFFFFFF0000000FLL;
      a3 = (a3 + v29);
      a4 = (a4 + v29);
      v30 = *(a1 + 104);
      *(a1 + 96) += v29;
      (*(v30 + 24))(*(a1 + 112), 1, a1 + 32, a1 + 64);
      if (a2 >= 0x10)
      {
        do
        {
          for (i = 0; i != -16; --i)
          {
            *(a1 + i + 31) ^= a3->u8[i + 15];
          }

          ccmode_gcm_mult_h(a1, (a1 + 16), v31, v32, v33, v34, v35, v36);
          for (j = 0; j != -16; --j)
          {
            a4->i8[j + 15] = *(a1 + j + 79) ^ a3->i8[j + 15];
          }

          a2 -= 16;
          ++a3;
          ++a4;
          *(a1 + 96) += 16;
          ccmode_gcm_update_pad(a1);
        }

        while (a2 > 0xF);
      }
    }

    v23 = 0;
    goto LABEL_19;
  }

  return result;
}

uint64_t ccdrbg_df_bc_derive_keys(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = (*v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v45 - v11;
  bzero(&v45 - v11, v11);
  v13 = (v10[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v45 - v13;
  v15 = 0;
  if (a2)
  {
    v16 = (a3 + 8);
    v17 = a2;
    do
    {
      v18 = *v16;
      v16 += 2;
      v15 += v18;
      --v17;
    }

    while (v17);
  }

  bzero(v14, v13);
  v54[0] = 0;
  v54[1] = 0;
  v55 = bswap32(v15);
  v56 = bswap32(a4);
  v53 = xmmword_33D7D0;
  memset(v52, 0, sizeof(v52));
  v19 = *(a1 + 16);
  __src[0] = 0;
  __src[1] = 0;
  v49 = v19 + 16;
  if (v19 != -16)
  {
    v20 = 0;
    v21 = 0;
    v45 = 16 - (v15 & 0xF ^ 8);
    v46 = a3 + 8;
    v47 = a2;
    v48 = v12;
    while (1)
    {
      OUTLINED_FUNCTION_1_4();
      LODWORD(v54[0]) = bswap32(v21);
      v50 = 0;
      OUTLINED_FUNCTION_0_12();
      updated = update_0(v22, v23, v14, v24, v25, 0x18uLL, v54);
      if (updated)
      {
        goto LABEL_29;
      }

      v27 = v46;
      v28 = v47;
      if (v47)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_12();
          v35 = update_0(v29, v30, v14, v31, v32, v33, v34);
          if (v35)
          {
            break;
          }

          v27 += 16;
          if (!--v28)
          {
            goto LABEL_10;
          }
        }

        v43 = v35;
        v12 = v48;
        goto LABEL_27;
      }

LABEL_10:
      OUTLINED_FUNCTION_0_12();
      updated = update_0(v36, v37, v14, v38, v39, v45, &v53);
      v12 = v48;
      if (updated)
      {
        goto LABEL_29;
      }

      ++v21;
      v20 += 16;
      if (v20 >= v49)
      {
        v10 = *(a1 + 8);
        break;
      }
    }
  }

  updated = cccbc_init_internal(v10);
  if (updated)
  {
LABEL_29:
    v43 = updated;
    goto LABEL_27;
  }

  if (a4)
  {
    v40 = v52 + *(a1 + 16);
    do
    {
      OUTLINED_FUNCTION_1_4();
      v41 = (a4 <= 0xF ? __src : a5);
      updated = cccbc_update_internal(*(a1 + 8), v12, v14, 1, v40, v41);
      if (updated)
      {
        goto LABEL_29;
      }

      if (a4 <= 0xF)
      {
        memcpy(a5, __src, a4);
      }

      if (a4 >= 0x10)
      {
        v42 = 16;
      }

      else
      {
        v42 = a4;
      }

      a5 = (a5 + v42);
      v40 = v41;
      a4 -= v42;
    }

    while (a4);
  }

  v43 = 0;
LABEL_27:
  cc_clear(**(a1 + 8), v12);
  OUTLINED_FUNCTION_1_4();
  return v43;
}

uint64_t update_0(int a1, int a2, int a3, uint64_t a4, void *a5, size_t __n, char *__src)
{
  v7 = __src;
  v8 = __n;
  v11 = 16 - *a5;
  if (*a5)
  {
    v12 = __n >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    memcpy((a4 + *a5), __src, 16 - *a5);
    v13 = OUTLINED_FUNCTION_2_0();
    result = cccbc_update_internal(v13, v14, v15, v16, a4, a4);
    if (result)
    {
      return result;
    }

    v8 -= v11;
    v7 += v11;
    *a5 = 0;
  }

  if (v8 < 0x10)
  {
LABEL_11:
    if (v8)
    {
      memcpy((a4 + *a5), v7, v8);
      result = 0;
      *a5 += v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v18 = OUTLINED_FUNCTION_2_0();
      result = cccbc_update_internal(v18, v19, v20, v21, v7, a4);
      if (result)
      {
        break;
      }

      v8 -= 16;
      v7 += 16;
      if (v8 <= 0xF)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t ccdrbg_df_bc_init_internal(void *a1, void *a2, unint64_t a3)
{
  v3 = 4294967291;
  if (a3 <= 0x20 && *a2 <= 0x200uLL)
  {
    if (a2[1] == 16)
    {
      *a1 = ccdrbg_df_bc_derive_keys;
      a1[1] = a2;
      a1[2] = a3;
      return cccbc_init_internal(a2);
    }

    else
    {
      return 4294967291;
    }
  }

  return v3;
}

uint64_t ccchacha20poly1305_setnonce_internal(int32x4_t *a1, __int32 *a2)
{
  if (a1[15].i8[8] != 1)
  {
    return 1;
  }

  memset(v4, 0, sizeof(v4));
  a1[3].i32[1] = *a2;
  a1[3].i32[2] = a2[1];
  a1[3].i32[3] = a2[2];
  _ccchacha20_xor(a1, 0x40uLL, v4, kZero64);
  ccpoly1305_init_internal(&a1[8].i64[1], v4);
  result = 0;
  a1[15].i8[8] = 2;
  return result;
}

uint64_t ccchacha20poly1305_aad(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  v9 = timingsafe_enable_if_supported();
  if (*(a2 + 248) == 2)
  {
    ccpoly1305_update_internal((a2 + 136), a3, a4);
    v7 = 0;
    *(a2 + 232) += a3;
  }

  else
  {
    v7 = 1;
  }

  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccchacha20poly1305_encrypt_internal()
{
  OUTLINED_FUNCTION_2_1();
  if (v4)
  {
    ccpoly1305_update_internal((v0 + 136), -*(v0 + 232) & 0xFLL, kZero64);
    *(v0 + 248) = 3;
  }

  else if (v3 != 3)
  {
    return 1;
  }

  v5 = *(v0 + 240);
  result = 1;
  if (!__CFADD__(v5, v1) && v5 + v1 <= 0x3FFFFFFFC0)
  {
    OUTLINED_FUNCTION_5_0();
    ccpoly1305_update_internal((v0 + 136), v1, v2);
    return OUTLINED_FUNCTION_3();
  }

  return result;
}

uint64_t ccchacha20poly1305_decrypt_internal()
{
  OUTLINED_FUNCTION_2_1();
  if (v4)
  {
    ccpoly1305_update_internal((v0 + 136), -*(v0 + 232) & 0xFLL, kZero64);
    *(v0 + 248) = 4;
  }

  else if (v3 != 4)
  {
    return 1;
  }

  v5 = *(v0 + 240);
  result = 1;
  if (!__CFADD__(v5, v1) && v5 + v1 <= 0x3FFFFFFFC0)
  {
    ccpoly1305_update_internal((v0 + 136), v1, v2);
    OUTLINED_FUNCTION_5_0();
    return OUTLINED_FUNCTION_3();
  }

  return result;
}

uint64_t ccec_generate_key_internal_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, uint64_t), uint64_t **a4)
{
  v8 = *a2;
  *a4 = a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_bitlen(a2);
  result = (*a3)(a3, ((v11 + 62) >> 3) & 0x1FFFFFFFFFFFFFF8, v10);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_0_13();
    result = ccec_generate_scalar_fips_retry_ws(v13, v14, v15, v16);
    if (!result)
    {
      v17 = OUTLINED_FUNCTION_0_13();
      result = ccec_make_pub_from_priv_ws(v17, v18, v19, v20, 0, a4);
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_validate_point_and_projectify_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = cczp_prime(a2);
  if (ccn_cmp_public_value(v8, v9, a4) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a2;
  v11 = a4 + 8 * *a2;
  v12 = cczp_prime(a2);
  if (ccn_cmp_public_value(v10, v12, v11) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = ccec_projectify_ws(a1, a2);
  if (!result)
  {
    if (ccec_is_point_ws(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 4294967289;
    }
  }

  return result;
}

uint64_t ccec_compact_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  v8 = *(a1 + 16);
  *a5 = a2;
  v9 = a5 + 2;
  result = ccec_import_affine_point_ws(a1, a2, 4, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &v9[2 * **a5], 1);
    v11 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v11, (a5 + 2));
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t lz4_decode(void **a1, unint64_t a2, char *a3, unsigned __int8 **a4, unint64_t a5)
{
  v7 = *a1;
  v8 = *a4;
  if (*a1 < a3 && v8 < a5)
  {
    while (1)
    {
      *a4 = v8;
      *a1 = v7;
      v15 = *v8++;
      v14 = v15;
      v16 = v15 >> 4;
      if (v15 >> 4 == 15)
      {
        while (v8 < a5)
        {
          v26 = *v8++;
          v16 += v26;
          if (v26 != 255)
          {
            goto LABEL_8;
          }
        }

        return 1;
      }

LABEL_8:
      if (a5 - v8 < v16)
      {
        return 1;
      }

      v17 = v16;
      if (a3 - v7 < v16)
      {
        memcpy(v7, v8, a3 - v7);
        v7 = a3;
        goto LABEL_6;
      }

      memcpy(v7, v8, v16);
      v8 += v17;
      v18 = &v7[v17];
      if (v8 >= a5)
      {
        v7 += v17;
        goto LABEL_6;
      }

      if (a5 - v8 < 2)
      {
        return 1;
      }

      v20 = *v8;
      v8 += 2;
      v19 = v20;
      if (!v20 || &v18[-v19] < a2)
      {
        return 1;
      }

      v21 = (v14 & 0xF) + 4;
      if ((v14 & 0xF) == 0xF)
      {
        while (v8 < a5)
        {
          v27 = *v8++;
          v21 += v27;
          if (v27 != 255)
          {
            goto LABEL_15;
          }
        }

        return 1;
      }

LABEL_15:
      v22 = a3 - v18;
      if (a3 - v18 < v21)
      {
        break;
      }

      if (v21)
      {
        v23 = -v19;
        v24 = &v7[v17];
        v25 = v21;
        do
        {
          *v24 = v24[v23];
          ++v24;
          --v25;
        }

        while (v25);
      }

      v7 = &v18[v21];
      if (v8 >= a5)
      {
        goto LABEL_6;
      }
    }

    if (v18 != a3)
    {
      if (v22 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v22;
      }

      v29 = -v19;
      v30 = &v7[v17];
      do
      {
        *v30 = v30[v29];
        ++v30;
        --v28;
      }

      while (v28);
    }

    v7 = &v18[v22];
  }

LABEL_6:
  result = 0;
  *a1 = v7;
  *a4 = v8;
  return result;
}

unsigned __int16 *lzma1_chunk_decode(unsigned int *a1, unint64_t a2, _BYTE *a3, _BYTE *a4, unint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v7 = *(a1 + 2);
  if (!v7)
  {
    return v7;
  }

  if (!a7)
  {
    return 0;
  }

  v8 = *(a1 + 29);
  if (a7 < 1)
  {
    v10 = 0;
    v9 = a6;
  }

  else
  {
    v9 = a6 + 1;
    v10 = *a6 != 0;
  }

  v11 = 0;
  v604 = *(a1 + 28);
  v601 = *(a1 + 27);
  v12 = &a6[a7];
  v13 = 4;
  v602 = *(a1 + 26);
  do
  {
    if (v9 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v15 = *v9++;
      v14 = v15;
    }

    v11 = v14 | (v11 << 8);
    --v13;
  }

  while (v13);
  if (v11 == -1)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v594 = a3;
  if (a3 >= a4)
  {
    v206 = a3;
    goto LABEL_837;
  }

  v600 = v7 + 1956;
  v599 = 8 - v602;
  v598 = v7 + 204;
  v595 = v7 + 420;
  v596 = v7 + 1220;
  v597 = v7 + 690;
  v17 = v7 + 1940;
  v18 = -1;
  while (1)
  {
    if (!HIBYTE(v18))
    {
      if (v9 >= v12)
      {
        v19 = 0;
      }

      else
      {
        v20 = *v9++;
        v19 = v20;
      }

      v18 <<= 8;
      v11 = v19 | (v11 << 8);
    }

    v21 = a3 - a2;
    v22 = v604 & (a3 - a2);
    v23 = &v7[16 * v8 + v22];
    v24 = *v23;
    v25 = (v18 >> 11) * v24;
    v26 = v11 - v25;
    if (v11 < v25)
    {
      break;
    }

    v53 = v18 - v25;
    v54 = v7 + 192;
LABEL_212:
    *v23 = v24 - (v24 >> 5);
    if (!HIBYTE(v53))
    {
      if (v9 >= v12)
      {
        v157 = 0;
      }

      else
      {
        v158 = *v9++;
        v157 = v158;
      }

      v53 <<= 8;
      v26 = v157 | (v26 << 8);
    }

    v159 = v54[v8];
    v160 = (v53 >> 11) * v159;
    v11 = v26 - v160;
    if (v26 >= v160)
    {
      v54[v8] -= v54[v8] >> 5;
      if (a3 == a2)
      {
        return 0;
      }

      v195 = v53 - v160;
      if (!((v53 - v160) >> 24))
      {
        if (v9 >= v12)
        {
          v196 = 0;
        }

        else
        {
          v197 = *v9++;
          v196 = v197;
        }

        v195 <<= 8;
        v11 = v196 | (v11 << 8);
      }

      v198 = v598[v8];
      v199 = (v195 >> 11) * v198;
      v200 = v11 - v199;
      if (v11 >= v199)
      {
        v239 = v195 - v199;
        v598[v8] -= v598[v8] >> 5;
        if (HIBYTE(v239))
        {
          v240 = v7 + 408;
        }

        else
        {
          v240 = v7 + 408;
          if (v9 >= v12)
          {
            v241 = 0;
          }

          else
          {
            v242 = *v9++;
            v241 = v242;
          }

          v239 <<= 8;
          v200 = v241 | (v200 << 8);
        }

        v284 = v240[v8];
        v283 = (v239 >> 11) * v284;
        v285 = v200 - v283;
        if (v200 >= v283)
        {
          v286 = v239 - v283;
          v240[v8] -= v240[v8] >> 5;
          if (HIBYTE(v286))
          {
            v200 -= v283;
          }

          else
          {
            if (v9 >= v12)
            {
              v287 = 0;
            }

            else
            {
              v288 = *v9++;
              v287 = v288;
            }

            v286 <<= 8;
            v200 = v287 | (v285 << 8);
          }

          v433 = v595[v8];
          v283 = (v286 >> 11) * v433;
          v434 = v200 - v283;
          if (v200 >= v283)
          {
            v283 = v286 - v283;
            v435 = v433 - (v433 >> 5);
            LODWORD(v203) = a1[3];
            a1[3] = a1[2];
            v200 = v434;
          }

          else
          {
            v435 = v433 + ((2048 - v433) >> 5);
            LODWORD(v203) = a1[2];
          }

          v595[v8] = v435;
          a1[2] = a1[1];
        }

        else
        {
          v240[v8] = v284 + ((2048 - v284) >> 5);
          LODWORD(v203) = a1[1];
        }

        v436 = *a1;
        *a1 = v203;
        a1[1] = v436;
      }

      else
      {
        v598[v8] = v198 + ((2048 - v198) >> 5);
        if (!HIBYTE(v199))
        {
          if (v9 >= v12)
          {
            v201 = 0;
          }

          else
          {
            v202 = *v9++;
            v201 = v202;
          }

          v199 <<= 8;
          v11 = v201 | (v11 << 8);
        }

        v203 = *a1;
        v204 = &v7[16 * v8 + 216];
        v205 = *(v204 + 2 * v22);
        v18 = (v199 >> 11) * v205;
        v200 = v11 - v18;
        if (v11 < v18)
        {
          *(v204 + 2 * v22) = v205 + ((2048 - v205) >> 5);
          *a3 = a3[-v203];
          v206 = a3 + 1;
          v8 = lzma_fsm_lut[v8 + 48];
          goto LABEL_779;
        }

        v283 = v199 - v18;
        *(v204 + 2 * v22) = v205 - (v205 >> 5);
      }

      v437 = v7[962];
      if (!HIBYTE(v283))
      {
        if (v9 >= v12)
        {
          v438 = 0;
        }

        else
        {
          v439 = *v9++;
          v438 = v439;
        }

        v283 <<= 8;
        v200 = v438 | (v200 << 8);
      }

      v440 = (v283 >> 11) * v437;
      v441 = v200 - v440;
      if (v200 >= v440)
      {
        v473 = v283 - v440;
        v7[962] -= v7[962] >> 5;
        if (!((v283 - v440) >> 24))
        {
          if (v9 >= v12)
          {
            v474 = 0;
          }

          else
          {
            v475 = *v9++;
            v474 = v475;
          }

          v473 <<= 8;
          v441 = v474 | (v441 << 8);
        }

        v476 = v7[963];
        v477 = (v473 >> 11) * v476;
        v478 = v441 - v477;
        if (v441 >= v477)
        {
          v508 = v473 - v477;
          v7[963] -= v7[963] >> 5;
          if (!((v473 - v477) >> 24))
          {
            if (v9 >= v12)
            {
              v509 = 0;
            }

            else
            {
              v510 = *v9++;
              v509 = v510;
            }

            v508 <<= 8;
            v478 = v509 | (v478 << 8);
          }

          v511 = v7[1221];
          v512 = (v508 >> 11) * v511;
          v513 = v511 + ((2048 - v511) >> 5);
          v514 = v508 - v512;
          v515 = v511 - (v511 >> 5);
          v516 = v478 >= v512;
          if (v478 >= v512)
          {
            v517 = 3;
          }

          else
          {
            v517 = 2;
          }

          if (v478 >= v512)
          {
            v518 = v478 - v512;
          }

          else
          {
            v514 = v512;
            v518 = v478;
          }

          if (!v516)
          {
            LOWORD(v515) = v513;
          }

          v7[1221] = v515;
          if (!HIBYTE(v514))
          {
            if (v9 >= v12)
            {
              v519 = 0;
            }

            else
            {
              v520 = *v9++;
              v519 = v520;
            }

            v514 <<= 8;
            v518 = v519 | (v518 << 8);
          }

          v521 = v596[v517];
          v522 = (v514 >> 11) * v521;
          v523 = v521 + ((2048 - v521) >> 5);
          LODWORD(v524) = (2 * v517) | 1;
          v525 = v514 - v522;
          v526 = v518 - v522;
          v527 = v521 - (v521 >> 5);
          v528 = v518 >= v522;
          if (v518 >= v522)
          {
            v524 = v524;
          }

          else
          {
            v524 = (2 * v517);
          }

          if (v518 >= v522)
          {
            v522 = v525;
          }

          if (v528)
          {
            v518 = v526;
          }

          if (!v528)
          {
            LOWORD(v527) = v523;
          }

          v596[v517] = v527;
          v529 = v596[v524];
          if (!HIBYTE(v522))
          {
            if (v9 >= v12)
            {
              v530 = 0;
            }

            else
            {
              v531 = *v9++;
              v530 = v531;
            }

            v522 <<= 8;
            v518 = v530 | (v518 << 8);
          }

          v532 = (v522 >> 11) * v529;
          LODWORD(v533) = 2 * v524;
          v534 = v529 + ((2048 - v529) >> 5);
          v535 = v522 - v532;
          v536 = v529 - (v529 >> 5);
          if (v518 >= v532)
          {
            v533 = (2 * v524) | 1u;
          }

          else
          {
            v533 = v533;
          }

          if (v518 >= v532)
          {
            v537 = v535;
          }

          else
          {
            v537 = v532;
          }

          if (v518 >= v532)
          {
            v538 = v518 - v532;
          }

          else
          {
            v538 = v518;
          }

          if (v518 >= v532)
          {
            v539 = v536;
          }

          else
          {
            v539 = v534;
          }

          v596[v524] = v539;
          v540 = v596[v533];
          if (!HIBYTE(v537))
          {
            if (v9 >= v12)
            {
              v541 = 0;
            }

            else
            {
              v542 = *v9++;
              v541 = v542;
            }

            v537 <<= 8;
            v538 = v541 | (v538 << 8);
          }

          v543 = (v537 >> 11) * v540;
          v544 = 2 * v533;
          v545 = v538 - v543;
          if (v538 >= v543)
          {
            v544 |= 1u;
            v543 = v537 - v543;
            v538 = v545;
            v546 = v540 - (v540 >> 5);
          }

          else
          {
            v546 = v540 + ((2048 - v540) >> 5);
          }

          v596[v533] = v546;
          v547 = v544 ^ 0x10u;
          v548 = &v7[16 * v547 + 1236];
          v549 = *(v548 + 2);
          if (!HIBYTE(v543))
          {
            if (v9 >= v12)
            {
              v550 = 0;
            }

            else
            {
              v551 = *v9++;
              v550 = v551;
            }

            v543 <<= 8;
            v538 = v550 | (v538 << 8);
          }

          v552 = (v543 >> 11) * v549;
          v553 = v549 + ((2048 - v549) >> 5);
          v554 = v543 - v552;
          v555 = v549 - (v549 >> 5);
          if (v538 >= v552)
          {
            v556 = 3;
          }

          else
          {
            v556 = 2;
          }

          if (v538 >= v552)
          {
            v557 = v538 - v552;
          }

          else
          {
            v554 = v552;
            v557 = v538;
          }

          if (v538 >= v552)
          {
            v558 = v555;
          }

          else
          {
            v558 = v553;
          }

          *(v548 + 2) = v558;
          v559 = *(v548 + 2 * v556);
          if (!HIBYTE(v554))
          {
            if (v9 >= v12)
            {
              v560 = 0;
            }

            else
            {
              v561 = *v9++;
              v560 = v561;
            }

            v554 <<= 8;
            v557 = v560 | (v557 << 8);
          }

          v562 = (v554 >> 11) * v559;
          v563 = v559 + ((2048 - v559) >> 5);
          v564 = v554 - v562;
          v565 = v559 - (v559 >> 5);
          v566 = v557 >= v562;
          if (v557 >= v562)
          {
            v567 = (2 * v556) | 1u;
          }

          else
          {
            v567 = (2 * v556);
          }

          if (v557 >= v562)
          {
            v557 -= v562;
          }

          else
          {
            v564 = v562;
          }

          if (v566)
          {
            v568 = v565;
          }

          else
          {
            v568 = v563;
          }

          *(v548 + 2 * v556) = v568;
          v569 = *(v548 + 2 * v567);
          if (!HIBYTE(v564))
          {
            if (v9 >= v12)
            {
              v570 = 0;
            }

            else
            {
              v571 = *v9++;
              v570 = v571;
            }

            v564 <<= 8;
            v557 = v570 | (v557 << 8);
          }

          v572 = (v564 >> 11) * v569;
          v573 = v569 + ((2048 - v569) >> 5);
          v574 = v564 - v572;
          v575 = v569 - (v569 >> 5);
          if (v557 >= v572)
          {
            v576 = (2 * v567) | 1u;
          }

          else
          {
            v576 = (2 * v567);
          }

          if (v557 >= v572)
          {
            v11 = v557 - v572;
          }

          else
          {
            v574 = v572;
            v11 = v557;
          }

          if (v557 >= v572)
          {
            v577 = v575;
          }

          else
          {
            v577 = v573;
          }

          *(v548 + 2 * v567) = v577;
          v578 = *(v548 + 2 * v576);
          if (!HIBYTE(v574))
          {
            if (v9 >= v12)
            {
              v579 = 0;
            }

            else
            {
              v580 = *v9++;
              v579 = v580;
            }

            v574 <<= 8;
            v11 = v579 | (v11 << 8);
          }

          v18 = (v574 >> 11) * v578;
          v581 = 2 * v576;
          v582 = v11 - v18;
          if (v11 >= v18)
          {
            v581 |= 1u;
            v18 = v574 - v18;
            v11 = v582;
            v583 = v578 - (v578 >> 5);
          }

          else
          {
            v583 = v578 + ((2048 - v578) >> 5);
          }

          *(v548 + 2 * v576) = v583;
          v243 = (v581 ^ 0x10) + 16 * v547 + 18;
        }

        else
        {
          v7[963] = v476 + ((2048 - v476) >> 5);
          if (!HIBYTE(v477))
          {
            if (v9 >= v12)
            {
              v479 = 0;
            }

            else
            {
              v480 = *v9++;
              v479 = v480;
            }

            v477 <<= 8;
            v441 = v479 | (v441 << 8);
          }

          v481 = &v7[8 * v22 + 1092];
          v482 = *(v481 + 2);
          v483 = (v477 >> 11) * v482;
          v484 = v482 + ((2048 - v482) >> 5);
          v485 = v477 - v483;
          v486 = v482 - (v482 >> 5);
          if (v441 >= v483)
          {
            v487 = 3;
          }

          else
          {
            v487 = 2;
          }

          if (v441 >= v483)
          {
            v488 = v485;
          }

          else
          {
            v488 = v483;
          }

          if (v441 >= v483)
          {
            v489 = v441 - v483;
          }

          else
          {
            v489 = v441;
          }

          if (v441 < v483)
          {
            LOWORD(v486) = v484;
          }

          *(v481 + 2) = v486;
          if (!HIBYTE(v488))
          {
            if (v9 >= v12)
            {
              v490 = 0;
            }

            else
            {
              v491 = *v9++;
              v490 = v491;
            }

            v488 <<= 8;
            v489 = v490 | (v489 << 8);
          }

          v492 = *(v481 + 2 * v487);
          v493 = (v488 >> 11) * v492;
          LODWORD(v494) = 2 * v487;
          v495 = v492 + ((2048 - v492) >> 5);
          v496 = v488 - v493;
          v497 = v492 - (v492 >> 5);
          v498 = v489 >= v493;
          if (v489 >= v493)
          {
            v494 = (2 * v487) | 1u;
          }

          else
          {
            v494 = v494;
          }

          if (v489 >= v493)
          {
            v489 -= v493;
          }

          else
          {
            v496 = v493;
          }

          if (!v498)
          {
            LOWORD(v497) = v495;
          }

          *(v481 + 2 * v487) = v497;
          v499 = *(v481 + 2 * v494);
          if (!HIBYTE(v496))
          {
            if (v9 >= v12)
            {
              v500 = 0;
            }

            else
            {
              v501 = *v9++;
              v500 = v501;
            }

            v496 <<= 8;
            v489 = v500 | (v489 << 8);
          }

          v502 = (v496 >> 11) * v499;
          v503 = 2 * v494;
          v504 = v499 + ((2048 - v499) >> 5);
          v505 = v496 - v502;
          v506 = v499 - (v499 >> 5);
          if (v489 < v502)
          {
            v18 = v502;
          }

          else
          {
            v503 = (2 * v494) | 1;
            v18 = v505;
          }

          if (v489 >= v502)
          {
            v11 = v489 - v502;
          }

          else
          {
            v11 = v489;
          }

          if (v489 >= v502)
          {
            v507 = v506;
          }

          else
          {
            v507 = v504;
          }

          *(v481 + 2 * v494) = v507;
          v243 = (v503 ^ 8) + 10;
        }
      }

      else
      {
        v7[962] = v437 + ((2048 - v437) >> 5);
        if (!HIBYTE(v440))
        {
          if (v9 >= v12)
          {
            v442 = 0;
          }

          else
          {
            v443 = *v9++;
            v442 = v443;
          }

          v440 <<= 8;
          v200 = v442 | (v200 << 8);
        }

        v444 = &v7[8 * v22 + 964];
        v445 = *(v444 + 2);
        v446 = (v440 >> 11) * v445;
        v447 = v445 + ((2048 - v445) >> 5);
        v448 = v440 - v446;
        v449 = v200 - v446;
        v450 = v445 - (v445 >> 5);
        v451 = v200 >= v446;
        if (v200 >= v446)
        {
          v452 = 3;
        }

        else
        {
          v452 = 2;
        }

        if (v200 >= v446)
        {
          v446 = v448;
        }

        if (v451)
        {
          v453 = v449;
        }

        else
        {
          v453 = v200;
        }

        if (!v451)
        {
          LOWORD(v450) = v447;
        }

        *(v444 + 2) = v450;
        if (!HIBYTE(v446))
        {
          if (v9 >= v12)
          {
            v454 = 0;
          }

          else
          {
            v455 = *v9++;
            v454 = v455;
          }

          v446 <<= 8;
          v453 = v454 | (v453 << 8);
        }

        v456 = *(v444 + 2 * v452);
        v457 = (v446 >> 11) * v456;
        v458 = v456 + ((2048 - v456) >> 5);
        v459 = v446 - v457;
        v460 = v456 - (v456 >> 5);
        v461 = v453 >= v457;
        if (v453 >= v457)
        {
          v462 = (2 * v452) | 1u;
        }

        else
        {
          v462 = (2 * v452);
        }

        if (v453 >= v457)
        {
          v463 = v459;
        }

        else
        {
          v463 = v457;
        }

        if (v453 >= v457)
        {
          v453 -= v457;
        }

        if (!v461)
        {
          LOWORD(v460) = v458;
        }

        *(v444 + 2 * v452) = v460;
        v464 = *(v444 + 2 * v462);
        if (!HIBYTE(v463))
        {
          if (v9 >= v12)
          {
            v465 = 0;
          }

          else
          {
            v466 = *v9++;
            v465 = v466;
          }

          v463 <<= 8;
          v453 = v465 | (v453 << 8);
        }

        v467 = (v463 >> 11) * v464;
        v468 = 2 * v462;
        v469 = v464 + ((2048 - v464) >> 5);
        v470 = v463 - v467;
        v471 = v464 - (v464 >> 5);
        if (v453 < v467)
        {
          v18 = v467;
        }

        else
        {
          v468 = (2 * v462) | 1;
          v18 = v470;
        }

        if (v453 >= v467)
        {
          v11 = v453 - v467;
        }

        else
        {
          v11 = v453;
        }

        if (v453 >= v467)
        {
          v472 = v471;
        }

        else
        {
          v472 = v469;
        }

        *(v444 + 2 * v462) = v472;
        v243 = (v468 ^ 8) + 2;
      }

      v8 = lzma_fsm_lut[v8 + 36];
    }

    else
    {
      v54[v8] = v159 + ((2048 - v159) >> 5);
      if (!HIBYTE(v160))
      {
        if (v9 >= v12)
        {
          v161 = 0;
        }

        else
        {
          v162 = *v9++;
          v161 = v162;
        }

        v160 <<= 8;
        v26 = v161 | (v26 << 8);
      }

      v163 = v7[432];
      v164 = (v160 >> 11) * v163;
      v165 = v26 - v164;
      if (v26 >= v164)
      {
        v207 = v160 - v164;
        v7[432] -= v7[432] >> 5;
        if (!((v160 - v164) >> 24))
        {
          if (v9 >= v12)
          {
            v208 = 0;
          }

          else
          {
            v209 = *v9++;
            v208 = v209;
          }

          v207 <<= 8;
          v165 = v208 | (v165 << 8);
        }

        v210 = v7[433];
        v211 = (v207 >> 11) * v210;
        v212 = v165 - v211;
        if (v165 >= v211)
        {
          v244 = v207 - v211;
          v7[433] -= v7[433] >> 5;
          if (!((v207 - v211) >> 24))
          {
            if (v9 >= v12)
            {
              v245 = 0;
            }

            else
            {
              v246 = *v9++;
              v245 = v246;
            }

            v244 <<= 8;
            v212 = v245 | (v212 << 8);
          }

          v247 = v7[691];
          v248 = (v244 >> 11) * v247;
          v249 = v247 + ((2048 - v247) >> 5);
          v250 = v244 - v248;
          v251 = v247 - (v247 >> 5);
          v252 = v212 >= v248;
          if (v212 >= v248)
          {
            v253 = 3;
          }

          else
          {
            v253 = 2;
          }

          if (v212 >= v248)
          {
            v254 = v212 - v248;
          }

          else
          {
            v250 = v248;
            v254 = v212;
          }

          if (!v252)
          {
            LOWORD(v251) = v249;
          }

          v7[691] = v251;
          if (!HIBYTE(v250))
          {
            if (v9 >= v12)
            {
              v255 = 0;
            }

            else
            {
              v256 = *v9++;
              v255 = v256;
            }

            v250 <<= 8;
            v254 = v255 | (v254 << 8);
          }

          v257 = v597[v253];
          v258 = (v250 >> 11) * v257;
          v259 = v257 + ((2048 - v257) >> 5);
          LODWORD(v260) = (2 * v253) | 1;
          v261 = v250 - v258;
          v262 = v254 - v258;
          v263 = v257 - (v257 >> 5);
          v264 = v254 >= v258;
          if (v254 >= v258)
          {
            v260 = v260;
          }

          else
          {
            v260 = (2 * v253);
          }

          if (v254 >= v258)
          {
            v258 = v261;
          }

          if (v264)
          {
            v254 = v262;
          }

          if (!v264)
          {
            LOWORD(v263) = v259;
          }

          v597[v253] = v263;
          v265 = v597[v260];
          if (!HIBYTE(v258))
          {
            if (v9 >= v12)
            {
              v266 = 0;
            }

            else
            {
              v267 = *v9++;
              v266 = v267;
            }

            v258 <<= 8;
            v254 = v266 | (v254 << 8);
          }

          v268 = (v258 >> 11) * v265;
          LODWORD(v269) = 2 * v260;
          v270 = v265 + ((2048 - v265) >> 5);
          v271 = v258 - v268;
          v272 = v265 - (v265 >> 5);
          if (v254 >= v268)
          {
            v269 = (2 * v260) | 1u;
          }

          else
          {
            v269 = v269;
          }

          if (v254 >= v268)
          {
            v273 = v271;
          }

          else
          {
            v273 = v268;
          }

          if (v254 >= v268)
          {
            v274 = v254 - v268;
          }

          else
          {
            v274 = v254;
          }

          if (v254 >= v268)
          {
            v275 = v272;
          }

          else
          {
            v275 = v270;
          }

          v597[v260] = v275;
          v276 = v597[v269];
          if (!HIBYTE(v273))
          {
            if (v9 >= v12)
            {
              v277 = 0;
            }

            else
            {
              v278 = *v9++;
              v277 = v278;
            }

            v273 <<= 8;
            v274 = v277 | (v274 << 8);
          }

          v279 = (v273 >> 11) * v276;
          v280 = 2 * v269;
          v281 = v274 - v279;
          if (v274 >= v279)
          {
            v280 |= 1u;
            v279 = v273 - v279;
            v274 = v281;
            v282 = v276 - (v276 >> 5);
          }

          else
          {
            v282 = v276 + ((2048 - v276) >> 5);
          }

          v597[v269] = v282;
          v289 = v280 ^ 0x10u;
          v290 = &v7[16 * v289 + 706];
          v291 = *(v290 + 2);
          if (!HIBYTE(v279))
          {
            if (v9 >= v12)
            {
              v292 = 0;
            }

            else
            {
              v293 = *v9++;
              v292 = v293;
            }

            v279 <<= 8;
            v274 = v292 | (v274 << 8);
          }

          v294 = (v279 >> 11) * v291;
          v295 = v291 + ((2048 - v291) >> 5);
          v296 = v279 - v294;
          v297 = v291 - (v291 >> 5);
          if (v274 >= v294)
          {
            v298 = 3;
          }

          else
          {
            v298 = 2;
          }

          if (v274 >= v294)
          {
            v299 = v274 - v294;
          }

          else
          {
            v296 = v294;
            v299 = v274;
          }

          if (v274 >= v294)
          {
            v300 = v297;
          }

          else
          {
            v300 = v295;
          }

          *(v290 + 2) = v300;
          v301 = *(v290 + 2 * v298);
          if (!HIBYTE(v296))
          {
            if (v9 >= v12)
            {
              v302 = 0;
            }

            else
            {
              v303 = *v9++;
              v302 = v303;
            }

            v296 <<= 8;
            v299 = v302 | (v299 << 8);
          }

          v304 = (v296 >> 11) * v301;
          v305 = v301 + ((2048 - v301) >> 5);
          v306 = v296 - v304;
          v307 = v301 - (v301 >> 5);
          v308 = v299 >= v304;
          if (v299 >= v304)
          {
            v309 = (2 * v298) | 1u;
          }

          else
          {
            v309 = (2 * v298);
          }

          if (v299 >= v304)
          {
            v299 -= v304;
          }

          else
          {
            v306 = v304;
          }

          if (v308)
          {
            v310 = v307;
          }

          else
          {
            v310 = v305;
          }

          *(v290 + 2 * v298) = v310;
          v311 = *(v290 + 2 * v309);
          if (!HIBYTE(v306))
          {
            if (v9 >= v12)
            {
              v312 = 0;
            }

            else
            {
              v313 = *v9++;
              v312 = v313;
            }

            v306 <<= 8;
            v299 = v312 | (v299 << 8);
          }

          v314 = (v306 >> 11) * v311;
          v315 = v311 + ((2048 - v311) >> 5);
          v316 = v306 - v314;
          v187 = v299 - v314;
          v317 = v311 - (v311 >> 5);
          if (v299 >= v314)
          {
            v318 = (2 * v309) | 1u;
          }

          else
          {
            v318 = (2 * v309);
          }

          if (v299 >= v314)
          {
            v319 = v316;
          }

          else
          {
            v319 = v314;
          }

          if (v299 >= v314)
          {
            v320 = v317;
          }

          else
          {
            v187 = v299;
            v320 = v315;
          }

          *(v290 + 2 * v309) = v320;
          v321 = *(v290 + 2 * v318);
          if (!HIBYTE(v319))
          {
            if (v9 >= v12)
            {
              v322 = 0;
            }

            else
            {
              v323 = *v9++;
              v322 = v323;
            }

            v319 <<= 8;
            v187 = v322 | (v187 << 8);
          }

          v191 = (v319 >> 11) * v321;
          v324 = 2 * v318;
          v325 = v187 - v191;
          if (v187 >= v191)
          {
            v324 |= 1u;
            v191 = v319 - v191;
            v187 = v325;
            v326 = v321 - (v321 >> 5);
          }

          else
          {
            v326 = v321 + ((2048 - v321) >> 5);
          }

          *(v290 + 2 * v318) = v326;
          v243 = (v324 ^ 0x10) + 16 * v289 + 18;
        }

        else
        {
          v7[433] = v210 + ((2048 - v210) >> 5);
          if (!HIBYTE(v211))
          {
            if (v9 >= v12)
            {
              v213 = 0;
            }

            else
            {
              v214 = *v9++;
              v213 = v214;
            }

            v211 <<= 8;
            v165 = v213 | (v165 << 8);
          }

          v215 = &v7[8 * v22 + 562];
          v216 = *(v215 + 2);
          v217 = (v211 >> 11) * v216;
          v218 = v216 + ((2048 - v216) >> 5);
          v219 = v211 - v217;
          v220 = v216 - (v216 >> 5);
          if (v165 >= v217)
          {
            v221 = 3;
          }

          else
          {
            v221 = 2;
          }

          if (v165 >= v217)
          {
            v222 = v219;
          }

          else
          {
            v222 = v217;
          }

          if (v165 >= v217)
          {
            v223 = v165 - v217;
          }

          else
          {
            v223 = v165;
          }

          if (v165 < v217)
          {
            LOWORD(v220) = v218;
          }

          *(v215 + 2) = v220;
          if (!HIBYTE(v222))
          {
            if (v9 >= v12)
            {
              v224 = 0;
            }

            else
            {
              v225 = *v9++;
              v224 = v225;
            }

            v222 <<= 8;
            v223 = v224 | (v223 << 8);
          }

          v226 = *(v215 + 2 * v221);
          v227 = (v222 >> 11) * v226;
          LODWORD(v228) = 2 * v221;
          v229 = v226 + ((2048 - v226) >> 5);
          v230 = v222 - v227;
          v187 = v223 - v227;
          v231 = v226 - (v226 >> 5);
          if (v223 >= v227)
          {
            v228 = (2 * v221) | 1u;
          }

          else
          {
            v228 = v228;
          }

          if (v223 >= v227)
          {
            v232 = v230;
          }

          else
          {
            v232 = v227;
          }

          if (v223 < v227)
          {
            v187 = v223;
            LOWORD(v231) = v229;
          }

          *(v215 + 2 * v221) = v231;
          v233 = *(v215 + 2 * v228);
          if (!HIBYTE(v232))
          {
            if (v9 >= v12)
            {
              v234 = 0;
            }

            else
            {
              v235 = *v9++;
              v234 = v235;
            }

            v232 <<= 8;
            v187 = v234 | (v187 << 8);
          }

          v191 = (v232 >> 11) * v233;
          v236 = 2 * v228;
          v237 = v187 - v191;
          if (v187 >= v191)
          {
            v236 |= 1u;
            v191 = v232 - v191;
            v187 = v237;
            v238 = v233 - (v233 >> 5);
          }

          else
          {
            v238 = v233 + ((2048 - v233) >> 5);
          }

          *(v215 + 2 * v228) = v238;
          v243 = (v236 ^ 8) + 10;
        }
      }

      else
      {
        v7[432] = v163 + ((2048 - v163) >> 5);
        if (!HIBYTE(v164))
        {
          if (v9 >= v12)
          {
            v166 = 0;
          }

          else
          {
            v167 = *v9++;
            v166 = v167;
          }

          v164 <<= 8;
          v26 = v166 | (v26 << 8);
        }

        v168 = &v7[8 * v22 + 434];
        v169 = *(v168 + 2);
        v170 = (v164 >> 11) * v169;
        v171 = v169 + ((2048 - v169) >> 5);
        v172 = v164 - v170;
        v173 = v26 - v170;
        v174 = v169 - (v169 >> 5);
        v175 = v26 >= v170;
        if (v26 >= v170)
        {
          v176 = 3;
        }

        else
        {
          v176 = 2;
        }

        if (v26 >= v170)
        {
          v170 = v172;
        }

        if (v175)
        {
          v177 = v173;
        }

        else
        {
          v177 = v26;
        }

        if (!v175)
        {
          LOWORD(v174) = v171;
        }

        *(v168 + 2) = v174;
        if (!HIBYTE(v170))
        {
          if (v9 >= v12)
          {
            v178 = 0;
          }

          else
          {
            v179 = *v9++;
            v178 = v179;
          }

          v170 <<= 8;
          v177 = v178 | (v177 << 8);
        }

        v180 = *(v168 + 2 * v176);
        v181 = (v170 >> 11) * v180;
        v182 = v180 + ((2048 - v180) >> 5);
        v183 = v170 - v181;
        v184 = v180 - (v180 >> 5);
        if (v177 >= v181)
        {
          v185 = (2 * v176) | 1u;
        }

        else
        {
          v185 = (2 * v176);
        }

        if (v177 >= v181)
        {
          v186 = v183;
        }

        else
        {
          v186 = v181;
        }

        if (v177 >= v181)
        {
          v187 = v177 - v181;
        }

        else
        {
          v187 = v177;
        }

        if (v177 < v181)
        {
          LOWORD(v184) = v182;
        }

        *(v168 + 2 * v176) = v184;
        v188 = *(v168 + 2 * v185);
        if (!HIBYTE(v186))
        {
          if (v9 >= v12)
          {
            v189 = 0;
          }

          else
          {
            v190 = *v9++;
            v189 = v190;
          }

          v186 <<= 8;
          v187 = v189 | (v187 << 8);
        }

        v191 = (v186 >> 11) * v188;
        v192 = 2 * v185;
        v193 = v187 - v191;
        if (v187 >= v191)
        {
          v192 |= 1u;
          v191 = v186 - v191;
          v187 = v193;
          v194 = v188 - (v188 >> 5);
        }

        else
        {
          v194 = v188 + ((2048 - v188) >> 5);
        }

        *(v168 + 2 * v185) = v194;
        v243 = (v192 ^ 8) + 2;
      }

      v327 = v243 - 2;
      if (v243 >= 6)
      {
        v327 = 3;
      }

      v328 = &v7[80 * v327 + 1492];
      v329 = *(v328 + 130);
      if (!HIBYTE(v191))
      {
        if (v9 >= v12)
        {
          v330 = 0;
        }

        else
        {
          v331 = *v9++;
          v330 = v331;
        }

        v191 <<= 8;
        v187 = v330 | (v187 << 8);
      }

      v332 = v328 + 128;
      v333 = (v191 >> 11) * v329;
      v334 = v329 + ((2048 - v329) >> 5);
      v335 = v329 - (v329 >> 5);
      if (v187 >= v333)
      {
        v336 = 3;
      }

      else
      {
        v336 = 2;
      }

      if (v187 >= v333)
      {
        v337 = v191 - v333;
      }

      else
      {
        v337 = v333;
      }

      if (v187 >= v333)
      {
        v338 = v187 - v333;
      }

      else
      {
        v338 = v187;
      }

      if (v187 >= v333)
      {
        v339 = v335;
      }

      else
      {
        v339 = v334;
      }

      *(v328 + 130) = v339;
      v340 = *(v332 + 2 * v336);
      if (!HIBYTE(v337))
      {
        if (v9 >= v12)
        {
          v341 = 0;
        }

        else
        {
          v342 = *v9++;
          v341 = v342;
        }

        v337 <<= 8;
        v338 = v341 | (v338 << 8);
      }

      v343 = (v337 >> 11) * v340;
      v344 = v340 + ((2048 - v340) >> 5);
      v345 = v337 - v343;
      v346 = v340 - (v340 >> 5);
      v347 = v338 >= v343;
      if (v338 >= v343)
      {
        v348 = (2 * v336) | 1u;
      }

      else
      {
        v348 = (2 * v336);
      }

      if (v338 >= v343)
      {
        v349 = v345;
      }

      else
      {
        v349 = v343;
      }

      if (v338 >= v343)
      {
        v338 -= v343;
      }

      if (v347)
      {
        v350 = v346;
      }

      else
      {
        v350 = v344;
      }

      *(v332 + 2 * v336) = v350;
      v351 = *(v332 + 2 * v348);
      if (!HIBYTE(v349))
      {
        if (v9 >= v12)
        {
          v352 = 0;
        }

        else
        {
          v353 = *v9++;
          v352 = v353;
        }

        v349 <<= 8;
        v338 = v352 | (v338 << 8);
      }

      v354 = (v349 >> 11) * v351;
      v355 = v351 + ((2048 - v351) >> 5);
      v356 = v349 - v354;
      v357 = v351 - (v351 >> 5);
      if (v338 >= v354)
      {
        v358 = (2 * v348) | 1u;
      }

      else
      {
        v358 = (2 * v348);
      }

      if (v338 >= v354)
      {
        v359 = v356;
      }

      else
      {
        v359 = v354;
      }

      if (v338 >= v354)
      {
        v360 = v338 - v354;
      }

      else
      {
        v360 = v338;
      }

      if (v338 >= v354)
      {
        v361 = v357;
      }

      else
      {
        v361 = v355;
      }

      *(v332 + 2 * v348) = v361;
      v362 = *(v332 + 2 * v358);
      if (!HIBYTE(v359))
      {
        if (v9 >= v12)
        {
          v363 = 0;
        }

        else
        {
          v364 = *v9++;
          v363 = v364;
        }

        v359 <<= 8;
        v360 = v363 | (v360 << 8);
      }

      v365 = (v359 >> 11) * v362;
      v366 = 2 * v358;
      v367 = v362 + ((2048 - v362) >> 5);
      v368 = v359 - v365;
      v369 = v360 - v365;
      v370 = v362 - (v362 >> 5);
      v371 = v360 >= v365;
      if (v360 < v365)
      {
        v368 = v365;
      }

      else
      {
        v366 = (2 * v358) | 1;
      }

      if (v360 >= v365)
      {
        v372 = v370;
      }

      else
      {
        v372 = v367;
      }

      *(v332 + 2 * v358) = v372;
      if (v371)
      {
        v373 = v369;
      }

      else
      {
        v373 = v360;
      }

      v374 = (4 * v366) ^ 0x40;
      v375 = v328 + 2 * v374;
      v376 = *(v375 + 2);
      if (!HIBYTE(v368))
      {
        if (v9 >= v12)
        {
          v377 = 0;
        }

        else
        {
          v378 = *v9++;
          v377 = v378;
        }

        v368 <<= 8;
        v373 = v377 | (v373 << 8);
      }

      v379 = (v368 >> 11) * v376;
      v380 = v376 + ((2048 - v376) >> 5);
      v381 = v368 - v379;
      v382 = v376 - (v376 >> 5);
      v383 = v373 >= v379;
      if (v373 >= v379)
      {
        v384 = 3;
      }

      else
      {
        v384 = 2;
      }

      if (v373 >= v379)
      {
        v385 = v381;
      }

      else
      {
        v385 = v379;
      }

      if (v373 >= v379)
      {
        v373 -= v379;
      }

      if (v383)
      {
        v386 = v382;
      }

      else
      {
        v386 = v380;
      }

      *(v375 + 2) = v386;
      v387 = *(v375 + 2 * v384);
      if (!HIBYTE(v385))
      {
        if (v9 >= v12)
        {
          v388 = 0;
        }

        else
        {
          v389 = *v9++;
          v388 = v389;
        }

        v385 <<= 8;
        v373 = v388 | (v373 << 8);
      }

      v390 = (v385 >> 11) * v387;
      v391 = v387 + ((2048 - v387) >> 5);
      v392 = v385 - v390;
      v393 = v387 - (v387 >> 5);
      if (v373 >= v390)
      {
        v394 = (2 * v384) | 1;
      }

      else
      {
        v394 = 2 * v384;
      }

      if (v373 >= v390)
      {
        v18 = v392;
      }

      else
      {
        v18 = v390;
      }

      if (v373 >= v390)
      {
        v11 = v373 - v390;
      }

      else
      {
        v11 = v373;
      }

      if (v373 >= v390)
      {
        v395 = v393;
      }

      else
      {
        v395 = v391;
      }

      *(v375 + 2 * v384) = v395;
      v396 = (v394 ^ 4) + v374;
      if (v366 != 16)
      {
        v397 = v396 >> 1;
        v398 = (v396 >> 1) - 1;
        v399 = (v394 & 1 | 2) << ((v396 >> 1) - 1);
        if (v396 > 0xD)
        {
          v414 = v397 - 5;
          if (v397 != 5)
          {
            v415 = 0;
            do
            {
              if (!HIBYTE(v18))
              {
                if (v9 >= v12)
                {
                  v416 = 0;
                }

                else
                {
                  v417 = *v9++;
                  v416 = v417;
                }

                v18 <<= 8;
                v11 = v416 | (v11 << 8);
              }

              v418 = v11 >= v18 >> 1;
              v18 >>= 1;
              v419 = v418;
              if (v418)
              {
                v420 = v18;
              }

              else
              {
                v420 = 0;
              }

              v11 -= v420;
              v415 = v419 | (2 * v415);
              --v414;
            }

            while (v414);
            v414 = 16 * v415;
          }

          v421 = 0;
          v422 = 0;
          v423 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v424 = 0;
              }

              else
              {
                v425 = *v9++;
                v424 = v425;
              }

              v18 <<= 8;
              v11 = v424 | (v11 << 8);
            }

            v426 = v423;
            v427 = v17[v423];
            v428 = v427 + ((2048 - v427) >> 5);
            v429 = (v18 >> 11) * v427;
            v423 *= 2;
            v430 = v427 - (v427 >> 5);
            v431 = v11 >= v429;
            if (v11 < v429)
            {
              v18 = v429;
            }

            else
            {
              v423 |= 1u;
              v18 -= v429;
            }

            if (v11 >= v429)
            {
              v11 -= v429;
            }

            if (v431)
            {
              v432 = 1;
            }

            else
            {
              LOWORD(v430) = v428;
              v432 = 0;
            }

            v17[v426] = v430;
            v422 += v432 << v421++;
          }

          while (v421 != 4);
          v401 = v422 + v414;
        }

        else if (v396 < 4)
        {
          v401 = 0;
        }

        else
        {
          v400 = 0;
          v401 = 0;
          v402 = &v7[v399 + 1812];
          if (v398 <= 1)
          {
            v403 = 1;
          }

          else
          {
            v403 = v398;
          }

          v404 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v405 = 0;
              }

              else
              {
                v406 = *v9++;
                v405 = v406;
              }

              v18 <<= 8;
              v11 = v405 | (v11 << 8);
            }

            v407 = v404;
            v408 = *(v402 + 2 * v404);
            v409 = v408 + ((2048 - v408) >> 5);
            v410 = (v18 >> 11) * v408;
            v404 *= 2;
            v411 = v408 - (v408 >> 5);
            v412 = v11 >= v410;
            if (v11 < v410)
            {
              v18 = v410;
            }

            else
            {
              v404 |= 1u;
              v18 -= v410;
            }

            if (v11 >= v410)
            {
              v11 -= v410;
            }

            if (v412)
            {
              v413 = 1;
            }

            else
            {
              LOWORD(v411) = v409;
              v413 = 0;
            }

            *(v402 + 2 * v407) = v411;
            v401 += v413 << v400++;
          }

          while (v403 != v400);
        }

        v396 = v401 + v399;
      }

      if (&a3[-a2] <= v396)
      {
        return 0;
      }

      v8 = lzma_fsm_lut[v8 + 24];
      a1[3] = a1[2];
      *(a1 + 1) = *a1;
      LODWORD(v203) = v396 + 1;
      *a1 = v396 + 1;
    }

    v206 = &a3[v243];
    if ((v206 + 47) > a5)
    {
      if (v206 > a4)
      {
        return 0;
      }

      do
      {
        *a3 = a3[-v203];
        ++a3;
      }

      while (a3 < v206);
    }

    else if (v203 > 0xF)
    {
      v590 = &a3[-v203];
      if (v203 >= v243 + 47)
      {
        v592 = v590[1];
        *a3 = *v590;
        *(a3 + 1) = v592;
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (i = 48; i < v243; i += 16)
          {
            *&a3[i] = v590[i / 0x10];
          }
        }
      }

      else
      {
        *a3 = *v590;
        *(a3 + 1) = v590[1];
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (j = 48; j < v243; j += 16)
          {
            *&a3[j] = v590[j / 0x10];
          }
        }
      }
    }

    else
    {
      v584 = &a3[-v203];
      v585 = vqtbl1q_s8(*v584, lzma_copy_with_pattern[(v203 - 1)]);
      v586 = lzma_copy_with_pattern[(v203 - 1)];
      v587 = &v584->i8[v586];
      *a3 = v585;
      *(a3 + 1) = *v587;
      *(a3 + 2) = *(v587 + 1);
      if (v243 >= 0x31)
      {
        v588 = v586 - v203 + 32;
        for (k = 48; k < v243; k += 16)
        {
          *&a3[k] = *&a3[v588];
          v588 += 16;
        }
      }
    }

LABEL_779:
    a3 = v206;
    if (v206 >= a4)
    {
      goto LABEL_837;
    }
  }

  *v23 = v24 + ((2048 - v24) >> 5);
  if (a3 <= a2)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a3 - 1);
  }

  v28 = &v600[816 * ((v27 >> v599) | ((v21 & v601) << v602))];
  if (!lzma_fsm_lut[v8])
  {
    v29 = 0;
    v30 = a3[-*a1];
    v31 = v28 + 768;
    v32 = v30 & 0xF0;
    v33 = 1;
    do
    {
      if (v29 > 3)
      {
        break;
      }

      v34 = 2 * v33;
      v35 = ((2 * v33) | (v32 >> 7) & 1) + 16;
      if (!HIBYTE(v25))
      {
        if (v9 >= v12)
        {
          v36 = 0;
        }

        else
        {
          v37 = *v9++;
          v36 = v37;
        }

        v25 <<= 8;
        v11 = v36 | (v11 << 8);
      }

      v38 = v31[v35];
      v39 = (v32 >> 7) & 1;
      v40 = (v25 >> 11) * v38;
      v41 = v38 + ((2048 - v38) >> 5);
      v25 -= v40;
      v42 = v38 - (v38 >> 5);
      v43 = v11 >= v40;
      v33 = v11 >= v40 ? v34 | 1 : v34;
      if (v11 >= v40)
      {
        v11 -= v40;
      }

      else
      {
        v25 = v40;
      }

      if (v43)
      {
        v44 = 1;
      }

      else
      {
        LOWORD(v42) = v41;
        v44 = 0;
      }

      v31[v35] = v42;
      if (v44 == v39)
      {
        ++v29;
      }

      else
      {
        if (v29 == 3)
        {
          break;
        }

        do
        {
          if (!HIBYTE(v25))
          {
            if (v9 >= v12)
            {
              v45 = 0;
            }

            else
            {
              v46 = *v9++;
              v45 = v46;
            }

            v25 <<= 8;
            v11 = v45 | (v11 << 8);
          }

          v47 = v33;
          v48 = v31[v33];
          v49 = (v25 >> 11) * v48;
          v33 *= 2;
          v50 = v48 + ((2048 - v48) >> 5);
          v25 -= v49;
          v51 = v48 - (v48 >> 5);
          v52 = v11 >= v49;
          if (v11 < v49)
          {
            v25 = v49;
          }

          else
          {
            v33 |= 1u;
          }

          if (v11 >= v49)
          {
            v11 -= v49;
          }

          if (!v52)
          {
            LOWORD(v51) = v50;
          }

          v31[v47] = v51;
          ++v29;
        }

        while (v29 < 3);
        v29 = 4;
      }

      v32 *= 2;
    }

    while (v44 == v39);
    v55 = 16 * (v33 ^ 0x10);
    if ((v30 ^ v55) <= 0xF)
    {
      v56 = 0;
      v57 = &v28[48 * (v33 ^ 0x10)];
      v58 = 16 * v30;
      v59 = 1;
      do
      {
        if (v56 > 3)
        {
          break;
        }

        v60 = 2 * v59;
        v61 = ((2 * v59) | (v58 >> 7) & 1) + 16;
        if (!HIBYTE(v25))
        {
          if (v9 >= v12)
          {
            v62 = 0;
          }

          else
          {
            v63 = *v9++;
            v62 = v63;
          }

          v25 <<= 8;
          v11 = v62 | (v11 << 8);
        }

        v64 = v57[v61];
        v65 = (v58 >> 7) & 1;
        v66 = (v25 >> 11) * v64;
        v67 = v64 + ((2048 - v64) >> 5);
        v59 = v60 | 1;
        v25 -= v66;
        v68 = v64 - (v64 >> 5);
        v69 = v11 >= v66;
        if (v11 >= v66)
        {
          v11 -= v66;
        }

        else
        {
          v59 = v60;
          v25 = v66;
        }

        if (v69)
        {
          v70 = 1;
        }

        else
        {
          LOWORD(v68) = v67;
          v70 = 0;
        }

        v57[v61] = v68;
        if (v70 == v65)
        {
          ++v56;
        }

        else
        {
          if (v56 == 3)
          {
            break;
          }

          do
          {
            if (!HIBYTE(v25))
            {
              if (v9 >= v12)
              {
                v71 = 0;
              }

              else
              {
                v72 = *v9++;
                v71 = v72;
              }

              v25 <<= 8;
              v11 = v71 | (v11 << 8);
            }

            v73 = v59;
            v74 = v57[v59];
            v75 = (v25 >> 11) * v74;
            v59 *= 2;
            v76 = v74 + ((2048 - v74) >> 5);
            v25 -= v75;
            v77 = v74 - (v74 >> 5);
            v78 = v11 >= v75;
            if (v11 < v75)
            {
              v25 = v75;
            }

            else
            {
              v59 |= 1u;
            }

            if (v11 >= v75)
            {
              v11 -= v75;
            }

            if (!v78)
            {
              LOWORD(v77) = v76;
            }

            v57[v73] = v77;
            ++v56;
          }

          while (v56 < 3);
          v56 = 4;
        }

        v58 *= 2;
      }

      while (v70 == v65);
      v79 = v59 ^ 0x10;
      goto LABEL_152;
    }

    goto LABEL_100;
  }

  while (1)
  {
    v120 = v28 + 768;
    v121 = v28[769];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v122 = 0;
      }

      else
      {
        v123 = *v9++;
        v122 = v123;
      }

      v25 <<= 8;
      v11 = v122 | (v11 << 8);
    }

    v124 = (v25 >> 11) * v121;
    v125 = v121 + ((2048 - v121) >> 5);
    v126 = v121 - (v121 >> 5);
    if (v11 >= v124)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    if (v11 >= v124)
    {
      v128 = v25 - v124;
    }

    else
    {
      v128 = v124;
    }

    if (v11 >= v124)
    {
      v129 = v11 - v124;
    }

    else
    {
      v129 = v11;
    }

    if (v11 >= v124)
    {
      v130 = v126;
    }

    else
    {
      v130 = v125;
    }

    v28[769] = v130;
    v131 = v120[v127];
    if (!HIBYTE(v128))
    {
      if (v9 >= v12)
      {
        v132 = 0;
      }

      else
      {
        v133 = *v9++;
        v132 = v133;
      }

      v128 <<= 8;
      v129 = v132 | (v129 << 8);
    }

    v134 = (v128 >> 11) * v131;
    v135 = v131 + ((2048 - v131) >> 5);
    v136 = v128 - v134;
    v137 = v131 - (v131 >> 5);
    v138 = v129 >= v134;
    if (v129 >= v134)
    {
      v139 = (2 * v127) | 1u;
    }

    else
    {
      v139 = (2 * v127);
    }

    if (v129 >= v134)
    {
      v140 = v136;
    }

    else
    {
      v140 = v134;
    }

    if (v129 >= v134)
    {
      v129 -= v134;
    }

    if (v138)
    {
      v141 = v137;
    }

    else
    {
      v141 = v135;
    }

    v120[v127] = v141;
    v142 = v120[v139];
    if (!HIBYTE(v140))
    {
      if (v9 >= v12)
      {
        v143 = 0;
      }

      else
      {
        v144 = *v9++;
        v143 = v144;
      }

      v140 <<= 8;
      v129 = v143 | (v129 << 8);
    }

    v145 = (v140 >> 11) * v142;
    v146 = v142 + ((2048 - v142) >> 5);
    v147 = v140 - v145;
    v148 = v142 - (v142 >> 5);
    if (v129 >= v145)
    {
      v149 = (2 * v139) | 1u;
    }

    else
    {
      v149 = (2 * v139);
    }

    if (v129 >= v145)
    {
      v11 = v129 - v145;
    }

    else
    {
      v147 = v145;
      v11 = v129;
    }

    if (v129 >= v145)
    {
      v150 = v148;
    }

    else
    {
      v150 = v146;
    }

    v120[v139] = v150;
    v151 = v120[v149];
    if (!HIBYTE(v147))
    {
      if (v9 >= v12)
      {
        v152 = 0;
      }

      else
      {
        v153 = *v9++;
        v152 = v153;
      }

      v147 <<= 8;
      v11 = v152 | (v11 << 8);
    }

    v25 = (v147 >> 11) * v151;
    v154 = 2 * v149;
    v155 = v11 - v25;
    if (v11 >= v25)
    {
      v154 |= 1u;
      v25 = v147 - v25;
      v11 = v155;
      v156 = v151 - (v151 >> 5);
    }

    else
    {
      v156 = v151 + ((2048 - v151) >> 5);
    }

    v120[v149] = v156;
    v55 = (16 * v154) ^ 0x100;
LABEL_100:
    v80 = &v28[3 * v55];
    v81 = v80[1];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v82 = 0;
      }

      else
      {
        v83 = *v9++;
        v82 = v83;
      }

      v25 <<= 8;
      v11 = v82 | (v11 << 8);
    }

    v84 = (v25 >> 11) * v81;
    v85 = v81 + ((2048 - v81) >> 5);
    v86 = v81 - (v81 >> 5);
    if (v11 >= v84)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    if (v11 >= v84)
    {
      v88 = v25 - v84;
    }

    else
    {
      v88 = v84;
    }

    if (v11 >= v84)
    {
      v89 = v11 - v84;
    }

    else
    {
      v89 = v11;
    }

    if (v11 >= v84)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v80[1] = v90;
    v91 = v80[v87];
    if (!HIBYTE(v88))
    {
      if (v9 >= v12)
      {
        v92 = 0;
      }

      else
      {
        v93 = *v9++;
        v92 = v93;
      }

      v88 <<= 8;
      v89 = v92 | (v89 << 8);
    }

    v94 = (v88 >> 11) * v91;
    v95 = v91 + ((2048 - v91) >> 5);
    v96 = v88 - v94;
    v97 = v91 - (v91 >> 5);
    v98 = v89 >= v94;
    if (v89 >= v94)
    {
      v99 = (2 * v87) | 1u;
    }

    else
    {
      v99 = (2 * v87);
    }

    if (v89 >= v94)
    {
      v100 = v96;
    }

    else
    {
      v100 = v94;
    }

    if (v89 >= v94)
    {
      v89 -= v94;
    }

    if (v98)
    {
      v101 = v97;
    }

    else
    {
      v101 = v95;
    }

    v80[v87] = v101;
    v102 = v80[v99];
    if (!HIBYTE(v100))
    {
      if (v9 >= v12)
      {
        v103 = 0;
      }

      else
      {
        v104 = *v9++;
        v103 = v104;
      }

      v100 <<= 8;
      v89 = v103 | (v89 << 8);
    }

    v105 = (v100 >> 11) * v102;
    v106 = v102 + ((2048 - v102) >> 5);
    v107 = v100 - v105;
    v108 = v102 - (v102 >> 5);
    if (v89 >= v105)
    {
      v109 = (2 * v99) | 1u;
    }

    else
    {
      v109 = (2 * v99);
    }

    if (v89 >= v105)
    {
      v11 = v89 - v105;
    }

    else
    {
      v107 = v105;
      v11 = v89;
    }

    if (v89 >= v105)
    {
      v110 = v108;
    }

    else
    {
      v110 = v106;
    }

    v80[v99] = v110;
    v111 = v80[v109];
    if (!HIBYTE(v107))
    {
      if (v9 >= v12)
      {
        v112 = 0;
      }

      else
      {
        v113 = *v9++;
        v112 = v113;
      }

      v107 <<= 8;
      v11 = v112 | (v11 << 8);
    }

    v25 = (v107 >> 11) * v111;
    v114 = 2 * v109;
    v115 = v11 - v25;
    if (v11 >= v25)
    {
      v114 |= 1u;
      v25 = v107 - v25;
      v11 = v115;
      v116 = v111 - (v111 >> 5);
    }

    else
    {
      v116 = v111 + ((2048 - v111) >> 5);
    }

    v80[v109] = v116;
    v79 = v114 ^ 0x10;
LABEL_152:
    v54 = v7 + 192;
    v8 = lzma_fsm_lut[v8 + 12];
    *a3++ = v79 + v55;
    if (a3 == a4)
    {
      break;
    }

    v22 = ++v21 & v604;
    v23 = &v7[16 * v8 + (v21 & v604)];
    v24 = *v23;
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v117 = 0;
      }

      else
      {
        v118 = *v9++;
        v117 = v118;
      }

      v25 <<= 8;
      v11 = v117 | (v11 << 8);
    }

    v119 = (v25 >> 11) * v24;
    v26 = v11 - v119;
    if (v11 >= v119)
    {
      v53 = v25 - v119;
      goto LABEL_212;
    }

    *v23 = v24 + ((2048 - v24) >> 5);
    v28 = &v600[816 * (((v21 & v601) << v602) | ((v79 + v55) >> v599))];
    v25 = (v25 >> 11) * v24;
  }

  v206 = a4;
LABEL_837:
  v7 = 0;
  if (!v11 && v206 == a4)
  {
    *(a1 + 29) = v8;
    return (a4 - v594);
  }

  return v7;
}