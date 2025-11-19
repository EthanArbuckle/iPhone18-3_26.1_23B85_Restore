uint64_t sub_2775BEEC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v3 = 2 * a2;
    v4 = a2 - (result >> 1);
    if (result)
    {
      v5 = a2 + ((result + 1) >> 1);
    }

    else
    {
      v5 = a2 - (result >> 1);
    }

    if (result <= 2 * (~a2 + a3))
    {
      v6 = v5;
    }

    else
    {
      v6 = ~result + a3;
    }

    if (result)
    {
      v4 = a2 + ((result + 1) >> 1);
    }

    if (v3 < result)
    {
      v4 = result;
    }

    if (v3 < a3)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (a3 - 1 <= a2)
    {
      return (~result + a3);
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_2775BEF24(unsigned __int8 a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(a2 + 722);
  v6 = *(a2 + 713);
  v7 = *(a2 + 715);
  v8 = *(a2 + 714);
  v9 = *(a2 + 717);
  v10 = *(a2 + 716);
  v11 = (a2 + 726);
  v12 = (a4 + 6);
  v13 = &unk_2775EF70C + 1024 * a1;
  result = 255;
  do
  {
    v15 = a3;
    if (v5)
    {
      v16 = *v11 + a3;
      if (v16 >= 0xFF)
      {
        v17 = 255;
      }

      else
      {
        v17 = *v11 + a3;
      }

      if (v16 >= 0)
      {
        v15 = v17;
      }

      else
      {
        v15 = 0;
      }
    }

    if ((v15 + v6) >= 0xFF)
    {
      v18 = 255;
    }

    else
    {
      v18 = v15 + v6;
    }

    if (v15 + v6 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if ((v15 + v7) >= 0xFF)
    {
      v20 = 255;
    }

    else
    {
      v20 = v15 + v7;
    }

    if (v15 + v7 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if ((v15 + v8) >= 0xFF)
    {
      v22 = 255;
    }

    else
    {
      v22 = v15 + v8;
    }

    if (v15 + v8 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if ((v15 + v9) >= 0xFF)
    {
      v24 = 255;
    }

    else
    {
      v24 = v15 + v9;
    }

    if (v15 + v9 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if ((v15 + v10) >= 0xFF)
    {
      v26 = 255;
    }

    else
    {
      v26 = v15 + v10;
    }

    *(v12 - 3) = *&v13[4 * v19];
    *(v12 - 2) = *&v13[4 * v15 + 2];
    if (v15 + v10 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    *(v12 - 1) = *&v13[4 * v23];
    *v12 = *&v13[4 * v21 + 2];
    v12[1] = *&v13[4 * v27];
    v12[2] = *&v13[4 * v25 + 2];
    if (!v5)
    {
      break;
    }

    v12 += 6;
    v11 += 5;
  }

  while (v4++ < 7);
  return result;
}

uint64_t sub_2775BF050(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, int a8)
{
  v12 = a1;
  v13 = 0;
  v69 = (a1 + 13440);
  v67 = (a1 + 8768);
  v14 = *(a1 + 16);
  v74 = a4;
  v75 = a3 + 11;
  v15 = *(a3 + 11 + a4);
  v16 = __clz(v15) ^ 0x1F;
  v17 = v16;
  do
  {
    --v17;
    sub_2775845E0();
    v13 = v18 | (2 * v13);
  }

  while (v17);
  v68 = (4 * a7);
  v19 = (2 << v16) - v15;
  if (v13 >= v19)
  {
    sub_2775845E0();
    LOBYTE(v13) = v20 - v19 + 2 * v13;
  }

  *v69 = v13;
  v22 = v74;
  v21 = v75;
  if (!((a6 + a5 < 0) ^ __OFADD__(a6, a5) | (a6 + a5 == 0)))
  {
    v63 = a2;
    v64 = a8;
    v23 = v12 + 8256;
    v24 = v14 + 560 * v74 + 80 * *(v75 + v74) + 3616;
    v25 = 4 * (a6 + a5);
    v26 = (4 * a5);
    LODWORD(v27) = 4 * a6;
    v28 = v68 - 1;
    v61 = v26;
    v62 = v12;
    v66 = v26;
    if (v25 <= 3)
    {
      v25 = 3;
    }

    v70 = (v25 - 1);
    v71 = v26 - 1;
    v65 = v12 + 13440;
    v29 = 1;
    v73 = 4 * a6;
    while (1)
    {
      if (v29 >= v71)
      {
        v30 = v71;
      }

      else
      {
        v30 = v29;
      }

      if (v29 >= v71)
      {
        v31 = v71;
      }

      else
      {
        v31 = v29;
      }

      v32 = v29 - v27;
      if (v29 - v27 < 0)
      {
        v32 = -1;
      }

      v33 = (v31 - v32);
      if (v31 > v32)
      {
        break;
      }

LABEL_55:
      ++v29;
      v27 = v73;
      if (v29 == v70)
      {
        a8 = v64;
        v12 = v62;
        a2 = v63;
        v58 = v61;
        goto LABEL_58;
      }
    }

    v34 = 0;
    v35 = v67;
    v36 = (v65 + v30 + v68 * (v29 - v30));
    v37 = &v69[(v29 - v31) * v68 + v31];
    v38 = v29 >= v66;
    while (1)
    {
      v39 = (v23 + 8 * v34);
      if (v31 <= 0)
      {
        v67[v34] = 0;
        v48 = v37[-v68];
      }

      else
      {
        if (v38)
        {
          v40 = v37[-v68];
          v41 = *(v37 - 1);
          v42 = v37[~v68];
          if (v41 == v42 && v40 == v41 && v40 == v42)
          {
            v67[v34] = 4;
            *(v23 + 8 * v34) = v41;
            v47 = 1;
            v46 = 1 << v40;
          }

          else
          {
            v45 = 1 << v42;
            if (v40 == v41)
            {
              v67[v34] = 3;
              *v39 = v41;
              v39[1] = v42;
              v46 = v45 | (1 << v40);
              v47 = 2;
            }

            else if (v40 == v42 || v41 == v42)
            {
              v47 = 2;
              v67[v34] = 2;
              *v39 = v42;
              if (v40 == v42)
              {
                LOBYTE(v40) = v41;
              }

              v39[1] = v40;
              v46 = (1 << v40) | v45;
            }

            else
            {
              v67[v34] = 1;
              if (v40 >= v41)
              {
                v52 = v41;
              }

              else
              {
                v52 = v40;
              }

              *v39 = v52;
              v53 = 1 << v52;
              if (v40 <= v41)
              {
                LOBYTE(v40) = v41;
              }

              v39[1] = v40;
              v39[2] = v42;
              v46 = v53 | (1 << v40) | v45;
              v47 = 3;
            }
          }

          goto LABEL_33;
        }

        v67[v34] = 0;
        v48 = *(v37 - 1);
      }

      *(v23 + 8 * v34) = v48;
      v47 = 1;
      v46 = 1 << v48;
LABEL_33:
      v49 = 0;
      v50 = 1;
      do
      {
        if ((v50 & v46) == 0)
        {
          v39[v47++] = v49;
        }

        v50 *= 2;
        ++v49;
      }

      while (v49 != 8);
      --v31;
      ++v34;
      v37 += v28;
      v38 = 1;
      if (v34 == v33)
      {
        v54 = v32;
        v55 = v23;
        do
        {
          v56 = *v35++;
          sub_27758428C(v14 + 13824, (v24 + 16 * v56), *(v21 + v22) - 1);
          v22 = v74;
          v21 = v75;
          *v36 = *(v55 + v57);
          --v30;
          v36 += v28;
          v55 += 8;
        }

        while (v30 > v54);
        goto LABEL_55;
      }
    }
  }

  v58 = (4 * a5);
  v27 = (4 * a6);
LABEL_58:
  v59 = *(*v12 + 62992);

  return v59(a2, v69, v68, (4 * a8), v58, v27);
}

uint64_t sub_2775BF40C(uint64_t a1, _WORD *a2, int16x4_t *a3, int a4, double a5, double a6, double a7, double a8, uint16x8_t a9)
{
  result = sub_2775840FC(*(a1 + 16) + 13824, (*(a1 + 16) + 13504), 3, a5, a6, a7, a8, a9);
  if (result == 1)
  {
LABEL_5:
    result = sub_2775C1AB8(*(*(*(a1 + 8) + 24) + 428), *(a1 + 16), a3 + 16, a4);
    a2[1] += result;
    return result;
  }

  if (result != 2)
  {
    if (result != 3)
    {
      return result;
    }

    *a2 += sub_2775C1AB8(*(*(*(a1 + 8) + 24) + 428), *(a1 + 16), a3, a4);
    goto LABEL_5;
  }

  result = sub_2775C1AB8(*(*(*(a1 + 8) + 24) + 428), *(a1 + 16), a3, a4);
  *a2 += result;
  return result;
}

void sub_2775BF4E4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = *(a1 + 8);
  v8 = a3;
  v9 = &byte_277601B40[4 * a3];
  v10 = *v9;
  v11 = v9[1];
  v37 = 0;
  v12 = byte_2775EF68D[4 * a3];
  *(a2 + 26) = v12;
  v13 = *(v7 + 24);
  if (*(a2 + 6))
  {
    if (*(v13 + 884) == 2)
    {
      if (v11 > 7)
      {
        switch(v11)
        {
          case 8:
            *(a1 + a5 + 480) = 0x101010101010101 * v9[3];
            break;
          case 16:
            v31 = 0x101010101010101 * v9[3];
            v32 = a1 + a5;
            *(v32 + 480) = v31;
            *(v32 + 488) = v31;
            break;
          case 32:
            v28 = 0x101010101010101 * v9[3];
            v29 = (a1 + a5);
            v29[60] = v28;
            v29[61] = v28;
            v29[62] = v28;
            v29[63] = v28;
            break;
        }
      }

      else
      {
        switch(v11)
        {
          case 1:
            *(a1 + a5 + 480) = v9[3];
            break;
          case 2:
            *(a1 + a5 + 480) = v9[3] | (v9[3] << 8);
            break;
          case 4:
            *(a1 + a5 + 480) = 16843009 * v9[3];
            break;
        }
      }

      if (v10 > 7)
      {
        switch(v10)
        {
          case 8:
            *(*(a1 + 656) + a4 + 448) = 0x101010101010101 * v9[2];
            break;
          case 16:
            v34 = 0x101010101010101 * v9[2];
            *(*(a1 + 656) + a4 + 448) = v34;
            *(*(a1 + 656) + a4 + 456) = v34;
            break;
          case 32:
            v33 = 0x101010101010101 * v9[2];
            *(*(a1 + 656) + a4 + 448) = v33;
            *(*(a1 + 656) + a4 + 456) = v33;
            *(*(a1 + 656) + a4 + 464) = v33;
            *(*(a1 + 656) + a4 + 472) = v33;
            break;
        }
      }

      else
      {
        switch(v10)
        {
          case 1:
            *(*(a1 + 656) + a4 + 448) = v9[2];
            break;
          case 2:
            *(*(a1 + 656) + a4 + 448) = v9[2] | (v9[2] << 8);
            break;
          case 4:
            *(*(a1 + 656) + a4 + 448) = 16843009 * v9[2];
            break;
        }
      }
    }

    goto LABEL_62;
  }

  if (*(v13 + *(a2 + 4) + 808))
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (!v14)
  {
    if (*(v13 + 884) == 2)
    {
      if ((v10 < 0x11 || v11 <= 0x10) && v11 == 0)
      {
        v27 = 0;
        v26 = 0;
        v17 = 0;
        v25 = *(a1 + 28);
      }

      else
      {
        v36 = a3;
        v17 = 0;
        v18 = 0;
        v19 = &unk_277601B98 + 8 * v12;
        do
        {
          if (v10)
          {
            v20 = 0;
            v21 = 0;
            do
            {
              sub_2775C1700(a1, *(a2 + 26), 0, &v37, v20, v18);
              v22 = *v19;
              v23 = *(a1 + 24) + v22;
              *(a1 + 24) = v23;
              v21 += v22;
              ++v20;
            }

            while (v21 < v10);
          }

          else
          {
            v21 = 0;
            v23 = *(a1 + 24);
          }

          v24 = v19[1];
          v25 = *(a1 + 28) + v24;
          *(a1 + 24) = v23 - v21;
          *(a1 + 28) = v25;
          v17 += v24;
          ++v18;
        }

        while (v17 < v11);
        v26 = v37;
        v27 = HIWORD(v37);
        v8 = v36;
      }

      *(a1 + 28) = v25 - v17;
      goto LABEL_63;
    }

LABEL_62:
    v27 = 0;
    v26 = 0;
LABEL_63:
    *(a2 + 7) = byte_2775EF68D[4 * v8 + *(v7 + 2168)];
    goto LABEL_64;
  }

  *(a2 + 7) = 0;
  *(a2 + 26) = 0;
  if (*(*(v7 + 24) + 884) != 2)
  {
    v27 = 0;
    v26 = 0;
    goto LABEL_64;
  }

  if (v11 > 7)
  {
    if (v11 == 8)
    {
      v35 = a1 + a5;
    }

    else
    {
      if (v11 != 16)
      {
        if (v11 == 32)
        {
          v30 = a1 + a5;
          *(v30 + 480) = 0u;
          *(v30 + 496) = 0u;
        }

        goto LABEL_71;
      }

      v35 = a1 + a5;
      *(v35 + 488) = 0;
    }

    *(v35 + 480) = 0;
  }

  else
  {
    switch(v11)
    {
      case 1:
        *(a1 + a5 + 480) = 0;
        break;
      case 2:
        *(a1 + a5 + 480) = 0;
        break;
      case 4:
        *(a1 + a5 + 480) = 0;
        break;
    }
  }

LABEL_71:
  v27 = 0;
  if (v10 > 7)
  {
    if (v10 == 8)
    {
      v27 = 0;
      v26 = 0;
      *(*(a1 + 656) + a4 + 448) = 0;
    }

    else if (v10 == 16)
    {
      v27 = 0;
      v26 = 0;
      *(*(a1 + 656) + a4 + 448) = 0;
      *(*(a1 + 656) + a4 + 456) = 0;
    }

    else
    {
      v26 = 0;
      if (v10 == 32)
      {
        v27 = 0;
        v26 = 0;
        *(*(a1 + 656) + a4 + 448) = 0;
        *(*(a1 + 656) + a4 + 456) = 0;
        *(*(a1 + 656) + a4 + 464) = 0;
        *(*(a1 + 656) + a4 + 472) = 0;
      }
    }
  }

  else if (v10 == 1)
  {
    v27 = 0;
    v26 = 0;
    *(*(a1 + 656) + a4 + 448) = 0;
  }

  else if (v10 == 2)
  {
    v27 = 0;
    v26 = 0;
    *(*(a1 + 656) + a4 + 448) = 0;
  }

  else
  {
    v26 = 0;
    if (v10 == 4)
    {
      v27 = 0;
      v26 = 0;
      *(*(a1 + 656) + a4 + 448) = 0;
    }
  }

LABEL_64:
  *(a2 + 29) = v26;
  *(a2 + 30) = v27;
}

uint64_t sub_2775BF9F8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  if (!a5)
  {
    if (!a6)
    {
      return 1;
    }

    if (*(a2 + a3 + 256))
    {
      return 3;
    }

    v7 = a2 + a3;
    return *(v7 + 288) > 3;
  }

  if (!a6)
  {
    if (*(a1 + a4 + 256))
    {
      return 3;
    }

    v7 = a1 + a4;
    return *(v7 + 288) > 3;
  }

  if (*(a1 + a4 + 256))
  {
    if (*(a2 + a3 + 256))
    {
      return 4;
    }

    v8 = a2 + a3;
  }

  else
  {
    if (!*(a2 + a3 + 256))
    {
      return (*(a2 + a3 + 288) > 3) ^ (*(a1 + a4 + 288) > 3);
    }

    v8 = a1 + a4;
  }

  if (*(v8 + 288) <= 3u)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_2775BFAB8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  if (a5 && a6)
  {
    v6 = *(a1 + a4 + 224);
    v7 = *(a2 + a3 + 224);
    if (*(a1 + a4 + 224))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return 2;
    }

    if (v6 | v7)
    {
      v9 = v6 == 0;
      if (*(a1 + a4 + 224))
      {
        v10 = a2;
      }

      else
      {
        v10 = a1;
      }

      if (v9)
      {
        v11 = a4;
      }

      else
      {
        v11 = a3;
      }

      v12 = (v10 + v11);
      if (v12[256])
      {
        v13 = v12[288] < 4;
        v14 = v12[320] > 3;
LABEL_37:
        v24 = v13 == v14;
        v25 = 3;
LABEL_38:
        if (v24)
        {
          return 1;
        }

        else
        {
          return v25;
        }
      }

      return 2;
    }

    v18 = a1 + a4;
    v19 = *(v18 + 256);
    v20 = a2 + a3;
    v21 = *(v18 + 288);
    v22 = *(v20 + 288);
    if (!(v19 | *(v20 + 256)))
    {
      v13 = v21 > 3;
      v14 = v22 < 4;
      goto LABEL_37;
    }

    if (!v19 || !*(v20 + 256))
    {
      if (v19)
      {
        v26 = a1;
      }

      else
      {
        v26 = a2;
      }

      if (v19)
      {
        v27 = a4;
      }

      else
      {
        v27 = a3;
      }

      v28 = (*(v26 + v27 + 288) < 4) ^ (*(v26 + v27 + 320) > 3);
      if (v21 > 3 != v22 < 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = 3;
      }

      v24 = v28 == 0;
      goto LABEL_38;
    }

    v23 = (v22 < 4) ^ (*(a2 + a3 + 320) > 3);
    if (v21 < 4 == *(a1 + a4 + 320) > 3 && !v23)
    {
      return 0;
    }

    if ((((v21 < 4) ^ (*(a1 + a4 + 320) > 3)) & v23) != 1)
    {
      return 2;
    }

    if ((v21 == 4) != (v22 != 4))
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (!(a6 | a5))
    {
      return 2;
    }

    v15 = a6 ? a2 : a1;
    v16 = a6 ? a3 : a4;
    if (*(v15 + v16 + 224) || !*(v15 + v16 + 256))
    {
      return 2;
    }

    if (*(v15 + v16 + 288) < 4 != *(v15 + v16 + 320) > 3)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2775BFCA4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  if (a5 && !*(a1 + a4 + 224))
  {
    v7 = a1 + a4;
    v8 = *(v7 + 288);
    if (v8 <= 3)
    {
      ++*(&v13 + v8);
    }

    if (*(v7 + 256))
    {
      v9 = *(a1 + a4 + 320);
      if (v9 <= 3)
      {
        ++*(&v13 + v9);
      }
    }
  }

  if (a6 && !*(a2 + a3 + 224))
  {
    v10 = a2 + a3;
    v11 = *(v10 + 288);
    if (v11 <= 3)
    {
      ++*(&v13 + v11);
    }

    if (*(v10 + 256))
    {
      v12 = *(a2 + a3 + 320);
      if (v12 <= 3)
      {
        ++*(&v13 + v12);
      }
    }
  }

  if (v13 + HIDWORD(v13) == v14 + HIDWORD(v14))
  {
    return 1;
  }

  else
  {
    return 2 * (v13 + HIDWORD(v13) >= v14 + HIDWORD(v14));
  }
}

uint64_t sub_2775BFDD0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  if (a5 && !*(a1 + a4 + 224))
  {
    v7 = a1 + a4;
    if ((*(v7 + 288) ^ 2u) <= 1)
    {
      ++*(&v11[-1] + *(v7 + 288));
    }

    if (*(v7 + 256))
    {
      v8 = *(a1 + a4 + 320);
      if ((v8 ^ 2u) <= 1)
      {
        ++*(&v11[-1] + v8);
      }
    }
  }

  if (a6 && !*(a2 + a3 + 224))
  {
    v9 = a2 + a3;
    if ((*(v9 + 288) ^ 2u) <= 1)
    {
      ++*(&v11[-1] + *(v9 + 288));
    }

    if (*(v9 + 256))
    {
      v10 = *(a2 + a3 + 320);
      if ((v10 ^ 2u) <= 1)
      {
        ++*(&v11[-1] + v10);
      }
    }
  }

  if (LODWORD(v11[0]) == HIDWORD(v11[0]))
  {
    return 1;
  }

  else
  {
    return 2 * (SLODWORD(v11[0]) >= SHIDWORD(v11[0]));
  }
}

uint64_t sub_2775BFF10(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  if (a5 && !*(a1 + a4 + 224))
  {
    v7 = a1 + a4;
    v8 = *(v7 + 288);
    if (v8 <= 1)
    {
      ++*(v13 + v8);
    }

    if (*(v7 + 256))
    {
      v9 = *(a1 + a4 + 320);
      if (v9 <= 1)
      {
        ++*(v13 + v9);
      }
    }
  }

  if (a6 && !*(a2 + a3 + 224))
  {
    v10 = a2 + a3;
    v11 = *(v10 + 288);
    if (v11 <= 1)
    {
      ++*(v13 + v11);
    }

    if (*(v10 + 256))
    {
      v12 = *(a2 + a3 + 320);
      if (v12 <= 1)
      {
        ++*(v13 + v12);
      }
    }
  }

  if (LODWORD(v13[0]) == HIDWORD(v13[0]))
  {
    return 1;
  }

  else
  {
    return 2 * (SLODWORD(v13[0]) >= SHIDWORD(v13[0]));
  }
}

uint64_t sub_2775C0030(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  if (a5 && !*(a1 + a4 + 224))
  {
    v7 = a1 + a4;
    v8 = *(v7 + 288);
    if (v8 >= 4)
    {
      ++*(&v13 + (v8 - 4));
    }

    if (*(v7 + 256))
    {
      v9 = *(a1 + a4 + 320);
      if (v9 >= 4)
      {
        ++*(&v13 + (v9 - 4));
      }
    }
  }

  if (a6 && !*(a2 + a3 + 224))
  {
    v10 = a2 + a3;
    v11 = *(v10 + 288);
    if (v11 >= 4)
    {
      ++*(&v13 + (v11 - 4));
    }

    if (*(v10 + 256))
    {
      v12 = *(a2 + a3 + 320);
      if (v12 >= 4)
      {
        ++*(&v13 + (v12 - 4));
      }
    }
  }

  if (v14 == HIDWORD(v13) + v13)
  {
    return 1;
  }

  else
  {
    return 2 * (HIDWORD(v13) + v13 >= v14);
  }
}

uint64_t sub_2775C0170(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  if (a5 && !*(a1 + a4 + 224))
  {
    v7 = a1 + a4;
    v8 = *(v7 + 288);
    if (v8 >= 4)
    {
      ++*(&v13 + (v8 - 4));
    }

    if (*(v7 + 256))
    {
      v9 = *(a1 + a4 + 320);
      if (v9 >= 4)
      {
        ++*(&v13 + (v9 - 4));
      }
    }
  }

  if (a6 && !*(a2 + a3 + 224))
  {
    v10 = a2 + a3;
    v11 = *(v10 + 288);
    if (v11 >= 4)
    {
      ++*(&v13 + (v11 - 4));
    }

    if (*(v10 + 256))
    {
      v12 = *(a2 + a3 + 320);
      if (v12 >= 4)
      {
        ++*(&v13 + (v12 - 4));
      }
    }
  }

  if (v13 == HIDWORD(v13))
  {
    return 1;
  }

  else
  {
    return 2 * (v13 >= SHIDWORD(v13));
  }
}

uint64_t sub_2775C02A4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  if (a5)
  {
    if (!*(a1 + a4 + 224))
    {
      v6 = (a1 + a4);
      v7 = v6[288] > 3;
      ++*(v13 | (4 * v7));
      if (v6[256])
      {
        v8 = v6[320] > 3;
        ++*(v13 | (4 * v8));
      }
    }
  }

  if (a6)
  {
    if (!*(a2 + a3 + 224))
    {
      v9 = (a2 + a3);
      v10 = v9[288] > 3;
      ++*(v13 | (4 * v10));
      if (v9[256])
      {
        v11 = v9[320] > 3;
        ++*(v13 | (4 * v11));
      }
    }
  }

  if (LODWORD(v13[0]) == HIDWORD(v13[0]))
  {
    return 1;
  }

  else
  {
    return 2 * (SLODWORD(v13[0]) >= SHIDWORD(v13[0]));
  }
}

uint64_t sub_2775C03BC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  if (a5 && !*(a1 + a4 + 224))
  {
    v7 = a1 + a4;
    v8 = *(v7 + 288) - 1;
    if (v8 <= 2)
    {
      ++*(&v13 + v8);
    }

    if (*(v7 + 256))
    {
      v9 = *(a1 + a4 + 320) - 1;
      if (v9 <= 2)
      {
        ++*(&v13 + v9);
      }
    }
  }

  if (a6 && !*(a2 + a3 + 224))
  {
    v10 = a2 + a3;
    v11 = *(v10 + 288) - 1;
    if (v11 <= 2)
    {
      ++*(&v13 + v11);
    }

    if (*(v10 + 256))
    {
      v12 = *(a2 + a3 + 320) - 1;
      if (v12 <= 2)
      {
        ++*(&v13 + v12);
      }
    }
  }

  if (v13 == HIDWORD(v13) + v14)
  {
    return 1;
  }

  else
  {
    return 2 * (v13 >= HIDWORD(v13) + v14);
  }
}

uint64_t sub_2775C04F8(uint64_t result, unsigned __int16 *a2)
{
  if (*(result + 269))
  {
    a2[1] = (a2[1] + (a2[1] >> 15) + 3) & 0xFFF8;
    v2 = (*a2 + (*a2 >> 15) + 3) & 0x3FFF8;
LABEL_3:
    *a2 = v2;
    return result;
  }

  if (!*(result + 428))
  {
    a2[1] = (a2[1] + (a2[1] >> 15)) & 0xFFFE;
    v2 = (*a2 + (*a2 >> 15)) & 0x1FFFE;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2775C0558(int *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v6 = *a1;
  if (*a1)
  {
    if (v6 == 1)
    {
      v10 = vrev64_s32(vshr_n_u32(*(a1 + 1), 0xDuLL));
    }

    else
    {
      if (v6 == 2)
      {
        v7 = (a1 + 6);
        v8 = *(a1 + 4);
        v9 = vld1_dup_f32(v7);
      }

      else
      {
        v8 = *(a1 + 4);
        v9.i32[0] = a1[3];
        v9.i32[1] = a1[6];
      }

      v11 = vshl_n_s32(__PAIR64__(a3, a2), 2uLL);
      v12 = vadd_s32(__PAIR64__(a5, a4), __PAIR64__(a5, a4));
      v13 = vadd_s32(v9, 0xFFFF0000FFFF0000);
      if (*(a6 + 428))
      {
        v14 = 13;
      }

      else
      {
        v14 = 14;
      }

      v15 = vadd_s32(vadd_s32(v11, v12), -1);
      v16 = vadd_s32(vmla_s32(vmul_s32(v8, vrev64_s32(v15)), v13, v15), *(a1 + 1));
      v17 = vshl_u32(vshl_u32(vadd_s32(vdup_n_s32((1 << v14) >> 1), vabs_s32(v16)), vneg_s32(vdup_n_s32(v14))), vdup_n_s32(*(a6 + 428) == 0));
      v10 = vbsl_s8(vcltz_s32(v16), vneg_s32(v17), v17);
    }

    if (*(a6 + 269))
    {
      v10 = vand_s8(vadd_s32(vsra_n_u32(v10, vand_s8(v10, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), vdup_n_s32(0xFFF8u));
    }
  }

  else
  {
    v10 = 0;
  }

  return v10.u16[2] | (v10.u16[0] << 16);
}

uint64_t sub_2775C066C(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v8 = 1 << (a1 - 1);
  v9 = ((a3 - a2) & (v8 - 1)) - ((a3 - a2) & v8);
  v10 = ((a2 - a4) & (v8 - 1)) - ((a2 - a4) & v8);
  if (!a1)
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *(a5 + a8 + 256) > 1u || *(a5 + a8 + 288) == 6;
  v12 = *(a6 + a7 + 256) > 1u || *(a6 + a7 + 288) == 6;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  if (v10 < 0)
  {
    v10 = -v10;
  }

  if (v9 == v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  return (v11 + v12 + v13);
}

uint64_t sub_2775C0728(uint64_t result, char a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, void *a10)
{
  v10 = *(result + 28);
  v11 = (result + 8 * (v10 & 0x1F) + 712);
  if (a7)
  {
    v12 = a8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (a3 <= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a3;
  }

  if (v14 <= 31 && a8)
  {
    v15 = *(result + 24);
    if (v15 + a3 >= *(*(result + 16) + 13868))
    {
      v16 = 0;
    }

    else
    {
      v16 = a2 & 1;
    }

LABEL_17:
    v17 = *(result + 8 * (v10 & 0x1F) + 704) + 12 * v15;
    if (a9 + 1 == *(v17 + 8) && *(v17 + 9) == 255)
    {
      *a10 |= 1uLL;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = byte_277601B40[4 * *(v17 + 10)];
    if (v19 >= a3)
    {
      if (((v19 - 1) & v15) != 0)
      {
        v13 = 0;
      }

      if (v19 - ((v19 - 1) & v15) > a3)
      {
        v16 = 0;
      }
    }

    else if (v19 < a5)
    {
      v20 = 1 << v19;
      v21 = byte_277601B40[4 * *(v17 + 10)];
      do
      {
        v17 += 12 * v21;
        if (a9 + 1 == *(v17 + 8) && *(v17 + 9) == 255)
        {
          *a10 |= v20;
          if (v18 > 6)
          {
            return result;
          }

          ++v18;
        }

        v21 = byte_277601B40[4 * *(v17 + 10)];
        v20 <<= v21;
        v19 += v21;
      }

      while (v19 < a5);
    }

    if (!a7)
    {
      goto LABEL_50;
    }

    goto LABEL_34;
  }

  v16 = 0;
  if (a8)
  {
    v15 = *(result + 24);
    goto LABEL_17;
  }

  v18 = 0;
  if (!a7)
  {
    goto LABEL_50;
  }

LABEL_34:
  v22 = *(result + 24);
  v23 = *v11 + 12 * v22;
  if (a9 + 1 == *(v23 - 4) && *(v23 - 3) == 255)
  {
    a10[1] |= 1uLL;
    if (v18 > 6)
    {
      return result;
    }

    ++v18;
  }

  v24 = byte_277601B40[4 * *(v23 - 2) + 1];
  if (v24 >= a4)
  {
    if (((v24 - 1) & v10) != 0)
    {
      goto LABEL_53;
    }
  }

  else if (v24 < a6)
  {
    v25 = 1 << v24;
    v26 = v24;
    v27 = v11;
    do
    {
      v27 += v26;
      v28 = *v27 + 12 * v22;
      if (a9 + 1 == *(v28 - 4) && *(v28 - 3) == 255)
      {
        a10[1] |= v25;
        if (v18 > 6)
        {
          return result;
        }

        ++v18;
      }

      v26 = byte_277601B40[4 * *(v28 - 2) + 1];
      v25 <<= v26;
      v24 += v26;
    }

    while (v24 < a6);
  }

LABEL_50:
  if (v13)
  {
    v29 = *(v11 - 1);
    v30 = *(result + 24);
    v31 = v29 + 12 * v30;
    v32 = a9 + 1;
    if (a9 + 1 == *(v31 - 4) && *(v31 - 3) == 255)
    {
      a10[1] |= 0x100000000uLL;
      if (v18 > 6 || !v16)
      {
        return result;
      }

      goto LABEL_55;
    }
  }

LABEL_53:
  if (!v16)
  {
    return result;
  }

  v29 = *(v11 - 1);
  v30 = *(result + 24);
  v32 = a9 + 1;
LABEL_55:
  v33 = v29 + 12 * (v30 + a3);
  v35 = *(v33 + 8);
  v34 = v33 + 8;
  if (v32 == v35 && *(v34 + 1) == 255)
  {
    *a10 |= 0x100000000uLL;
  }

  return result;
}

uint64_t sub_2775C0A00(uint64_t result, int a2, int a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15)
{
  v134 = *MEMORY[0x277D85DE8];
  v16 = *(result + 28);
  v17 = (result + 8 * (v16 & 0x1F) + 712);
  if (a4 != 1 || HIDWORD(a5))
  {
    if (a4)
    {
      v24 = 0;
      v25 = 0;
      v26 = *(result + 8 * (v16 & 0x1F) + 704);
      v27 = *(result + 24);
      v28 = v133;
      v29 = a4;
      do
      {
        v30 = v24;
        v31 = __clz(__rbit32(v29));
        v25 += v31;
        v32 = (v26 + 12 * (v27 + v25));
        v33 = &byte_277601B40[4 * *(v32 + 10)];
        v34 = 32 * v25 + 16 * *v33 - 8;
        LODWORD(v33) = (16 * v33[1]) ^ 0xFFFFFFF8;
        *(v28 - 2) = v34;
        *(v28 - 1) = v33;
        v35 = v34 + v32[1];
        LODWORD(v32) = v33 + *v32;
        *v28 = v35;
        v28[1] = v32;
        v24 = v30 + 1;
        if (v30 > 6)
        {
          break;
        }

        v28 += 4;
        v29 = (v29 >> v31) & 0xFFFFFFFE;
      }

      while (v29);
      if (v30 > 6)
      {
        goto LABEL_21;
      }

      LODWORD(v23) = v30 + 1;
    }

    else
    {
      LODWORD(v23) = 0;
    }
  }

  else
  {
    v18 = *(result + 24);
    v19 = (*(result + 8 * (v16 & 0x1F) + 704) + 12 * v18);
    v20 = &byte_277601B40[4 * *(v19 + 10)];
    v21 = *v20;
    LODWORD(v20) = (16 * v20[1]) ^ 0xFFFFFFF8;
    v132[0] = 16 * v21 - 32 * ((v21 - 1) & v18) - 8;
    v132[1] = v20;
    v22 = v19[1];
    LODWORD(v19) = v20 + *v19;
    v133[0] = v132[0] + v22;
    v133[1] = v19;
    LODWORD(v23) = 1;
  }

  if (a5 == 1)
  {
    v36 = 12 * *(result + 24) - 12;
    v37 = (byte_277601B40[4 * *(*v17 + v36 + 10) + 1] - 1) & v16;
    v38 = v17[-v37];
    v39 = &byte_277601B40[4 * *(v38 + v36 + 10)];
    v40 = (16 * *v39) ^ 0xFFFFFFF8;
    v41 = &v132[4 * v23];
    v42 = v38 + 12 * *(result + 24);
    v43 = 16 * v39[1] - 32 * v37 - 8;
    *v41 = v40;
    v41[1] = v43;
    v44 = v43 + *(v42 - 12);
    v41[2] = v40 + *(v42 - 10);
    v41[3] = v44;
    LODWORD(v23) = v23 + 1;
  }

  else
  {
    if (!a5)
    {
      goto LABEL_19;
    }

    v45 = 0;
    v46 = *(result + 24);
    v47 = v23;
    v48 = &v132[4 * v23 + 2];
    v49 = a5;
    do
    {
      v50 = v47;
      v51 = __clz(__rbit32(v49));
      v45 += v51;
      v52 = v17[v45] + 12 * v46;
      v53 = &byte_277601B40[4 * *(v52 - 2)];
      v54 = (16 * *v53) ^ 0xFFFFFFF8;
      LODWORD(v53) = 32 * v45 + 16 * v53[1] - 8;
      *(v48 - 2) = v54;
      *(v48 - 1) = v53;
      v55 = v54 + *(v52 - 10);
      LODWORD(v52) = v53 + *(v52 - 12);
      *v48 = v55;
      v48[1] = v52;
      v47 = v50 + 1;
      if (v50 > 6)
      {
        break;
      }

      v48 += 4;
      v49 = (v49 >> v51) & 0xFFFFFFFE;
    }

    while (v49);
    LODWORD(v23) = v50 + 1;
  }

  if (v23 > 7)
  {
LABEL_21:
    LODWORD(v23) = 8;
    goto LABEL_25;
  }

LABEL_19:
  if (HIDWORD(a5))
  {
    v56 = *(result + 8 * (v16 & 0x1F) + 704) + 12 * *(result + 24);
    v57 = &byte_277601B40[4 * *(v56 - 2)];
    v58 = (16 * *v57) ^ 0xFFFFFFF8;
    v59 = &v132[4 * v23];
    LODWORD(v57) = (16 * v57[1]) ^ 0xFFFFFFF8;
    *v59 = v58;
    v59[1] = v57;
    v60 = v58 + *(v56 - 10);
    LODWORD(v56) = v57 + *(v56 - 12);
    v59[2] = v60;
    v59[3] = v56;
    if (v23 == 7)
    {
      goto LABEL_21;
    }

    LODWORD(v23) = v23 + 1;
  }

  if (HIDWORD(a4))
  {
    v61 = (*(result + 8 * (v16 & 0x1F) + 704) + 12 * (*(result + 24) + a2));
    v62 = &byte_277601B40[4 * *(v61 + 10)];
    v63 = 32 * a2 + 16 * *v62 - 8;
    v64 = &v132[4 * v23];
    LODWORD(v62) = (16 * v62[1]) ^ 0xFFFFFFF8;
    *v64 = v63;
    v64[1] = v62;
    v65 = v63 + v61[1];
    LODWORD(v61) = v62 + *v61;
    v64[2] = v65;
    v64[3] = v61;
    LODWORD(v23) = v23 + 1;
  }

LABEL_25:
  v66 = 0;
  LODWORD(v67) = 0;
  if (a2 <= a3)
  {
    v68 = a3;
  }

  else
  {
    v68 = a2;
  }

  if (v68 >= 0x1C)
  {
    v69 = 28;
  }

  else
  {
    v69 = v68;
  }

  v70 = 4 * v69;
  if (v68 < 4)
  {
    v70 = 16;
  }

  v71.i32[0] = a6;
  v71.i32[1] = a6 << 16;
  v72 = vshr_n_s32(v71, 0x10uLL);
  v73 = v133;
  do
  {
    v74 = vabs_s32(vsub_s32(*v73, vadd_s32(v72, v73[-1])));
    v74.i32[0] = vadd_s32(vdup_lane_s32(v74, 1), v74).u32[0];
    *&v131[v66 + 4] = v74.i32[0];
    if (v74.i32[0] <= v70)
    {
      LODWORD(v67) = v67 + 1;
    }

    else
    {
      *&v131[v66 + 4] = -1;
    }

    v66 += 4;
    v73 += 2;
  }

  while (4 * v23 != v66);
  if (v67)
  {
    v75 = v23 - v67;
    if (v23 - v67 >= 1)
    {
      v76 = 0;
      LODWORD(v77) = 0;
      do
      {
        v77 = v77;
        do
        {
          v78 = v77;
          v79 = *&v131[4 * v77++ + 4];
        }

        while (v79 != -1);
        v23 = v23;
        do
        {
          v80 = v23--;
          v81 = *&v131[4 * v80];
        }

        while (v81 == -1);
        if (v78 >= v80)
        {
          break;
        }

        *&v131[4 * v78 + 4] = v81;
        *&v132[4 * v78] = *&v132[4 * v23];
        ++v76;
      }

      while (v76 != v75);
    }
  }

  else
  {
    LODWORD(v67) = 1;
  }

  v82 = vadd_s32(vadd_s32(__PAIR64__(a3, a2), __PAIR64__(a3, a2)), -1);
  if (v67 < 1)
  {
    v83 = 0;
    v87 = 0uLL;
    v89 = 0;
  }

  else
  {
    v83 = 0;
    v84 = vshl_n_s32(v82, 3uLL);
    v85.i32[0] = a6 >> 16;
    v85.i32[1] = a6;
    v86 = vadd_s32(v85, v84);
    v67 = v67;
    v87 = 0uLL;
    v88 = v133;
    v89 = 0;
    do
    {
      *v90.i8 = vsub_s32(*v88, v86);
      *a15.i8 = vsub_s32(v88[-1], v84);
      v91 = vsub_s32(*a15.i8, *v90.i8).u32[0];
      if (v91 < 0)
      {
        v91 = -v91;
      }

      if (v91 <= 0xFF)
      {
        v90.i64[1] = v90.i64[0];
        v92 = vrev64q_s32(v90);
        v93 = vrev64q_s32(a15);
        v94 = vzip1q_s32(v93, v93);
        v95 = vsubq_s32(v94, v92).u32[0];
        if (v95 < 0)
        {
          v95 = -v95;
        }

        if (v95 <= 0xFF)
        {
          v83 += a15.i32[0] + a15.i32[1] + ((a15.i32[1] * a15.i32[0]) >> 2) + 4;
          v89 = vadd_s32(vsra_n_u32(vadd_s32(v89, vadd_s32(*a15.i8, *a15.i8)), vmul_s32(*a15.i8, *a15.i8), 2uLL), 0x800000008);
          a15 = vmulq_s32(v94, v92);
          v87 = vaddq_s32(vsraq_n_s32(vaddq_s32(vaddq_s32(v87, v92), v94), a15, 2uLL), xmmword_2775ED540);
        }
      }

      v88 += 2;
      --v67;
    }

    while (v67);
  }

  v96 = v89.i32[0] * v89.i32[1];
  v97 = v83 * v83;
  v98 = v96 - v97;
  if (v96 == v97)
  {
    goto LABEL_109;
  }

  v99 = v82.i32[1] + 4 * v16;
  v100 = v82.i32[0] + 4 * *(result + 24);
  if (v98 >= 0)
  {
    v101 = v98;
  }

  else
  {
    v101 = -v98;
  }

  v102 = __clz(v101);
  v103 = (-1 << ~v102) + v101;
  v104 = v103 << (v102 - 55);
  v105 = (v103 + (1 << (54 - v102))) >> (55 - v102);
  if (v101 < 0x200)
  {
    v105 = v104;
  }

  v106 = word_2775F10C0[v105];
  if (v98 >= 0)
  {
    v107 = v106;
  }

  else
  {
    v107 = -v106;
  }

  v108 = 61 - v102;
  v109 = v102 - 61;
  v110 = v101 >= 4;
  if (v101 >= 4)
  {
    v111 = 0;
  }

  else
  {
    v111 = v109;
  }

  v112 = v107 << v111;
  v113 = (v89.i32[1] * v87.i32[3] - v83 * v87.i32[1]) * v112;
  if (v110)
  {
    v114 = v108;
  }

  else
  {
    v114 = 0;
  }

  v115 = v113 < 0;
  if (v113 < 0)
  {
    v113 = -v113;
  }

  v116 = 1 << v114;
  v117 = (v113 + (1 << v114 >> 1)) >> v114;
  if (v115)
  {
    LODWORD(v117) = -v117;
  }

  v118 = (v89.i32[0] * v87.i32[1] - v83 * v87.i32[3]) * v112;
  v119 = v118 < 0;
  if (v118 < 0)
  {
    v118 = -v118;
  }

  v120 = (v118 + (v116 >> 1)) >> v114;
  if (v119)
  {
    LODWORD(v120) = -v120;
  }

  if (v120 >= 0x1FFF)
  {
    LODWORD(v120) = 0x1FFF;
  }

  if (v120 <= -8191)
  {
    LODWORD(v120) = -8191;
  }

  v121 = (v89.i32[1] * v87.i32[2] - v83 * v87.i32[0]) * v112;
  v122 = v121 < 0;
  if (v121 < 0)
  {
    v121 = -v121;
  }

  v123 = (v121 + (v116 >> 1)) >> v114;
  if (v122)
  {
    LODWORD(v123) = -v123;
  }

  if (v123 >= 0x1FFF)
  {
    LODWORD(v123) = 0x1FFF;
  }

  if (v123 <= -8191)
  {
    LODWORD(v123) = -8191;
  }

  *(a7 + 16) = v120;
  *(a7 + 20) = v123;
  v124 = (v89.i32[0] * v87.i32[0] - v83 * v87.i32[2]) * v112;
  v125 = v124 < 0;
  if (v124 < 0)
  {
    v124 = -v124;
  }

  v126 = (v124 + (v116 >> 1)) >> v114;
  if (v125)
  {
    LODWORD(v126) = -v126;
  }

  if (v126 >= 73727)
  {
    LODWORD(v126) = 73727;
  }

  if (v126 <= 57345)
  {
    LODWORD(v126) = 57345;
  }

  *(a7 + 24) = v126;
  v127.i32[0] = (0x10000 - v126) * v99 - v123 * v100 + (a6 << 13);
  v127.i32[1] = v117;
  v128 = vmax_s32(vmin_s32(v127, 0x11FFF007FFFFFLL), 0xE001FF800000);
  v129 = (0x10000 - v128.i32[1]) * v100 - v120 * v99 + (a6 >> 16 << 13);
  if (v129 >= 0x7FFFFF)
  {
    v129 = 0x7FFFFF;
  }

  if (v129 <= -8388608)
  {
    v129 = -8388608;
  }

  *(a7 + 4) = v129;
  *(a7 + 8) = v128;
  result = sub_2775CF000(a7);
  if (result)
  {
LABEL_109:
    v130 = 0;
  }

  else
  {
    v130 = 3;
  }

  *a7 = v130;
  return result;
}

uint64_t sub_2775C11E8(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6)
{
  if (*(a1 + a6 + 288) == a4 || *(a1 + a6 + 320) == a4)
  {
    v6 = *(a1 + a6 + 384);
  }

  else
  {
    v6 = 3;
  }

  if (*(a2 + a5 + 288) == a4 || *(a2 + a5 + 320) == a4)
  {
    v7 = *(a2 + a5 + 384);
  }

  else
  {
    v7 = 3;
  }

  v8 = v6 + 4 * a3;
  if (v7 != 3)
  {
    v8 = (4 * a3) | 3;
  }

  if (v6 == 3)
  {
    v8 = v7 + 4 * a3;
  }

  if (v6 == v7)
  {
    return (v6 + 4 * a3);
  }

  else
  {
    return v8;
  }
}

uint64_t sub_2775C1280(uint64_t result, signed int *a2, unsigned __int8 *a3, int *a4)
{
  if (*a3)
  {
    v4 = 0;
    v5 = a4[2] + a4[6] * (4 * (*(result + 28) + a3[1]) - 4);
    v6 = *a2;
    do
    {
      if (v6 <= (((v5 + (4 * *(result + 24) + v4 + 4) * a4[5]) >> 16) + 8))
      {
        v6 = ((v5 + (4 * *(result + 24) + v4 + 4) * a4[5]) >> 16) + 8;
      }

      *a2 = v6;
      v7 = *a3;
      v8 = 4 * v7;
      if ((4 * v7) <= 0x10)
      {
        v8 = 16;
      }

      v4 = v4 + v8 - 8;
    }

    while (v4 < (4 * v7));
  }

  return result;
}

int *sub_2775C1304(int *result, int a2, int a3, int a4, int a5, int *a6)
{
  v6 = 4u >> a5;
  v7 = a5 == 0;
  if (*a6)
  {
    v8 = 8 * *a6 - 0x20000 + *a6 * ((a4 << v7) + 16 * a2 * v6);
    v9 = v8 < 0;
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v10 = (v8 + 128) >> 8;
    if (v9)
    {
      LODWORD(v10) = -v10;
    }

    v11 = ((v10 + a6[1] * (v6 * a3 - 1) + 32) >> 10) + 5;
    if (*result > v11)
    {
      v11 = *result;
    }
  }

  else
  {
    v11 = (a4 >> (a5 + 3)) + v6 * (a3 + a2) + 4 * (((a4 << v7) & 0xF) != 0);
    if (*result > v11)
    {
      v11 = *result;
    }
  }

  *result = v11;
  return result;
}

int *sub_2775C13AC(int *result, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, int a6)
{
  v8 = result;
  v9 = result[6];
  v10 = result[7];
  v11 = *(result + 1);
  v12 = &result[2 * (v10 & 0x1E) + 178];
  if (a3)
  {
    v13 = *(v11 + 2168);
    v14 = v13 == 1;
    v16 = result + 4;
    v15 = *(result + 2);
    if (v10 <= *(v15 + 13872) || (4u >> (v13 != 3)) * *a4 + (4u >> v14) * a4[1] < 0x10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    v16 = result + 4;
    v15 = *(result + 2);
    if (v10 <= *(v15 + 13872))
    {
      goto LABEL_21;
    }
  }

  if (a5 >= 1)
  {
    v44 = v16;
    v45 = *(result + 1);
    v17 = 0;
    v18 = 0;
    v46 = a3;
    v19 = a3;
    v20 = v11 + 3128;
    while (1)
    {
      v21 = a4[2] >= 4u ? 4 : a4[2];
      v9 = v8[6];
      if (v17 >= v21)
      {
        break;
      }

      v22 = *(v12 - 8) + 12 * (v9 + v18);
      v23 = *(v22 + 22);
      v24 = *(v22 + 20);
      v29 = v24 < 1;
      v25 = v24 - 1;
      if (!v29)
      {
        v26 = a4[1];
        if (v26 >= 0x10)
        {
          v26 = 16;
        }

        v27 = v14;
        result = sub_2775C1304((a2 + 8 * v25 + 4 * v19), v8[7], (3 * (v26 >> 1) + 3) >> 2, *(v22 + 12), v14, (v20 + 16 * v25 + 8));
        v14 = v27;
        ++v17;
      }

      v28 = byte_277601B40[4 * v23];
      if (v28 <= 2)
      {
        v28 = 2;
      }

      v18 += v28;
      if (v18 >= a5)
      {
        v9 = v8[6];
        break;
      }
    }

    v11 = v45;
    v15 = *v44;
    a3 = v46;
  }

LABEL_21:
  v29 = v9 <= *(v15 + 13864) || a6 < 1;
  if (!v29)
  {
    v30 = 0;
    v31 = 0;
    v32 = v12 + 8;
    v33 = a3;
    v34 = v11 + 3128;
    do
    {
      v35 = a4[3];
      if (v35 >= 4)
      {
        v35 = 4;
      }

      if (v30 >= v35)
      {
        break;
      }

      v36 = *(v32 + 8 * v31) + 12 * v8[6];
      v37 = &byte_277601B40[4 * *(v36 - 2)];
      v38 = *(v36 - 4);
      if (v38 <= 0)
      {
        v39 = v37[1];
      }

      else
      {
        v39 = v37[1];
        v40 = a4[1];
        if (v39 < v40)
        {
          v40 = v39;
        }

        v41 = v39 >= 2 ? v40 : 2;
        v42 = v14;
        result = sub_2775C1304((a2 + 8 * (v38 - 1) + 4 * v33), v8[7] + v31, v41, *(v36 - 12), v14, (v34 + 16 * (v38 - 1) + 8));
        v14 = v42;
        ++v30;
      }

      v43 = v39 <= 2 ? 2 : v39;
      v31 += v43;
    }

    while (v31 < a6);
  }

  return result;
}

uint64_t sub_2775C1650(uint64_t result, signed int *a2, unsigned __int8 *a3, int *a4)
{
  v4 = *(*(result + 8) + 2168);
  if (v4 == 3)
  {
    return sub_2775C1280(result, a2, a3, a4);
  }

  if (*a3)
  {
    v5 = 0;
    v6 = v4 & 1;
    v7 = a4[2] + (4 * *(result + 28) + (((4u >> v6) * a3[1] - 4) << v6)) * a4[6];
    v8 = *a2;
    do
    {
      if (v8 <= ((((v7 + (4 * *(result + 24) + 2 * v5 + 8) * a4[5]) >> v6) >> 16) + 8))
      {
        v8 = (((v7 + (4 * *(result + 24) + 2 * v5 + 8) * a4[5]) >> v6) >> 16) + 8;
      }

      *a2 = v8;
      v9 = *a3;
      v10 = 2 * v9;
      if ((2 * v9) <= 0x10)
      {
        v10 = 16;
      }

      v5 = v5 + v10 - 8;
    }

    while (v5 < (2 * v9));
  }

  return result;
}

void sub_2775C1700(uint64_t a1, unsigned int a2, int a3, uint64_t a4, char a5, char a6)
{
  v7 = *(a1 + 24) & 0x1FLL;
  v8 = *(a1 + 28) & 0x1FLL;
  v9 = &unk_277601B98 + 8 * a2;
  v10 = v9[2];
  v11 = v9[3];
  v12 = 1;
  if (a2 && a3 <= 1)
  {
    v44 = v9[2];
    v16 = v9[5];
    v17 = *(a1 + v8 + 480) < v11;
    v42 = *(a1 + 8);
    if (*(*(a1 + 656) + v7 + 448) < v10)
    {
      ++v17;
    }

    sub_277584658(*(a1 + 16) + 13824, (*(a1 + 16) + 12 * -(a3 + 2 * v16) + 4 * v17 + 6024));
    v12 = 1;
    if (v18)
    {
      *(a4 + 2 * a3) |= 1 << (a5 + 4 * a6);
      if (v16 >= 2)
      {
        v19 = v9[6];
        v20 = &unk_277601B98 + 8 * v19;
        v21 = *v20;
        v22 = v20[1];
        sub_2775C1700(a1, v19, (a3 + 1));
        v23 = *(a1 + 24) + v21;
        *(a1 + 24) = v23;
        v24 = v44;
        if (v44 >= v11)
        {
          v25 = v42;
          if (v23 < *(v42 + 3448))
          {
            sub_2775C1700(a1, v19, (a3 + 1));
            v24 = v44;
            v23 = *(a1 + 24);
          }
        }

        else
        {
          v25 = v42;
        }

        v38 = v23 - v21;
        v39 = *(a1 + 28) + v22;
        *(a1 + 24) = v38;
        *(a1 + 28) = v39;
        if (v11 >= v24 && v39 < *(v25 + 3452))
        {
          v40 = v24;
          sub_2775C1700(a1, v19, (a3 + 1));
          v41 = *(a1 + 24) + v21;
          *(a1 + 24) = v41;
          if (v40 >= v11 && v41 < *(v25 + 3448))
          {
            sub_2775C1700(a1, v19, (a3 + 1));
            v41 = *(a1 + 24);
          }

          *(a1 + 24) = v41 - v21;
          v39 = *(a1 + 28);
        }

        *(a1 + 28) = v39 - v22;
        return;
      }

      v12 = 0;
    }

    v10 = v44;
  }

  v26 = v9[1];
  if (v26 <= 3)
  {
    if (v26 == 1)
    {
      if (v12)
      {
        v31 = v11;
      }

      else
      {
        v31 = 0;
      }

      *(a1 + v8 + 480) = v31;
    }

    else if (v26 == 2)
    {
      v28 = v11 | (v11 << 8);
      if (!v12)
      {
        v28 = 0;
      }

      *(a1 + v8 + 480) = v28;
    }
  }

  else
  {
    switch(v26)
    {
      case 4u:
        v29 = 16843009 * v11;
        if (!v12)
        {
          v29 = 0;
        }

        *(a1 + v8 + 480) = v29;
        break;
      case 8u:
        v30 = 0x101010101010101 * v11;
        if (!v12)
        {
          v30 = 0;
        }

        *(a1 + v8 + 480) = v30;
        break;
      case 0x10u:
        v27 = 0x101010101010101 * v11;
        if (!v12)
        {
          v27 = 0;
        }

        *(a1 + v8 + 480) = vdupq_n_s64(v27);
        break;
    }
  }

  v32 = *v9;
  if (v32 <= 3)
  {
    if (v32 == 1)
    {
      if (v12)
      {
        v37 = v10;
      }

      else
      {
        v37 = 0;
      }

      *(*(a1 + 656) + v7 + 448) = v37;
    }

    else if (v32 == 2)
    {
      if (v12)
      {
        v34 = v10 | (v10 << 8);
      }

      else
      {
        v34 = 0;
      }

      *(*(a1 + 656) + v7 + 448) = v34;
    }
  }

  else
  {
    switch(v32)
    {
      case 4u:
        if (v12)
        {
          v35 = 16843009 * v10;
        }

        else
        {
          v35 = 0;
        }

        *(*(a1 + 656) + v7 + 448) = v35;
        break;
      case 8u:
        if (v12)
        {
          v36 = 0x101010101010101 * v10;
        }

        else
        {
          v36 = 0;
        }

        *(*(a1 + 656) + v7 + 448) = v36;
        break;
      case 0x10u:
        if (v12)
        {
          v33 = 0x101010101010101 * v10;
        }

        else
        {
          v33 = 0;
        }

        *(*(a1 + 656) + v7 + 448) = v33;
        *(*(a1 + 656) + v7 + 456) = v33;
        break;
    }
  }
}

uint64_t sub_2775C1AB8(char a1, uint64_t a2, int16x4_t *a3, int a4)
{
  sub_277584658(a2 + 13824, &a3[13] + 1);
  v9 = v8;
  sub_27758434C(a2 + 13824, a3, 10);
  if (!v10)
  {
    sub_277584658(a2 + 13824, &a3[8]);
    v16 = v23;
    if (a4)
    {
      v21 = sub_2775840FC(a2 + 13824, &a3[v23 + 4], 3, v24, v25, v26, v27, v28);
      if (a1)
      {
        v22 = 56;
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_12:
    v29 = 1;
    v21 = 3;
    goto LABEL_14;
  }

  v16 = 1 << v10;
  if (v10 >= 1)
  {
    v17 = 0;
    v18 = &a3[8] + 1;
    v19 = v10;
    do
    {
      sub_277584658(a2 + 13824, v18);
      v16 |= v20 << v17++;
      ++v18;
    }

    while (v19 != v17);
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  v21 = sub_2775840FC(a2 + 13824, a3 + 6, 3, v11, v12, v13, v14, v15);
  if (a1)
  {
    v22 = 60;
LABEL_11:
    sub_277584658(a2 + 13824, (a3 + v22));
    goto LABEL_14;
  }

LABEL_13:
  v29 = 1;
LABEL_14:
  v30 = v29 | (2 * v21) | (8 * v16);
  if (v9)
  {
    return ~v30;
  }

  else
  {
    return (v30 + 1);
  }
}

uint64_t sub_2775C1C00(uint64_t a1, double a2, double a3, double a4, double a5, double a6, int8x16_t a7, double a8, int8x16_t a9)
{
  v10 = *(a1 + 3256);
  if (*(a1 + 3464) > *(a1 + 5296))
  {
    free(*(a1 + 5288));
    v11 = malloc_type_malloc(*(a1 + 3464), 0x100004077774924uLL);
    *(a1 + 5288) = v11;
    if (!v11)
    {
      *(a1 + 5296) = 0;
      return 4294967284;
    }

    *(a1 + 5296) = *(a1 + 3464);
  }

  v12 = *(a1 + 24);
  if (*(v12 + 449))
  {
    v13 = 0;
    LODWORD(v14) = 0;
    do
    {
      *(*(a1 + 5288) + v14) = v13++;
      v12 = *(a1 + 24);
      if (v14 + 1 >= *(v12 + 2 * v13 + 580))
      {
        LODWORD(v14) = v14 + 1;
      }

      else
      {
        v14 = v14 + 1;
        do
        {
          *(*(a1 + 5288) + v14++) = 0;
          v12 = *(a1 + 24);
        }

        while (v14 < *(v12 + 2 * v13 + 580));
      }

      v15 = *(v12 + 449);
    }

    while (v13 < v15);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v16 = v15 * *(v12 + 445);
  if (v16 != *(a1 + 3272))
  {
    if (*(v10 + 8) >= 2u)
    {
      free(*(a1 + 4424));
      v17 = malloc_type_malloc((4 * v16), 0x100004052888210uLL);
      *(a1 + 4424) = v17;
      if (!v17)
      {
        *(a1 + 3272) = 0;
        return 4294967284;
      }
    }

    free(*(a1 + 3264));
    memptr = 0;
    v18 = malloc_type_posix_memalign(&memptr, 0x20uLL, (14624 * v16), 0x86ADB027uLL);
    v19 = memptr;
    if (v18)
    {
      v19 = 0;
    }

    *(a1 + 3264) = v19;
    if (!v19)
    {
      return 4294967284;
    }

    *(a1 + 3272) = v16;
    v12 = *(a1 + 24);
  }

  v20 = *(a1 + 3456);
  v21 = v20 * *(v12 + 449);
  v22 = *(v10 + 8);
  v23 = 1;
  if (v22 >= 2)
  {
    if (*(v10 + 24) <= 1u)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  v24 = v21 * v23;
  if (v21 * v23 != *(a1 + 4040))
  {
    free(*(a1 + 4032));
    v25 = malloc_type_malloc(624 * v24, 0x1000040EE3B7ECDuLL);
    *(a1 + 4032) = v25;
    if (!v25)
    {
      *(a1 + 4040) = 0;
      return 4294967284;
    }

    *(a1 + 4040) = v24;
    v20 = *(a1 + 3456);
    v22 = *(v10 + 8);
  }

  v26 = *(a1 + 3460) * v20;
  v27 = *(*(a1 + 8) + 32) != 0;
  if (v22 >= 2)
  {
    v28 = *(a1 + 2168);
    v29 = *(a1 + 24);
    v30 = *(v29 + 449);
    if (*(v29 + 449))
    {
      v31 = 0;
      LODWORD(v32) = 0;
      v33 = 4 * *(a1 + 3472);
      v34 = v29 + 580;
      v35 = *(v29 + 445);
      do
      {
        v36 = v31++;
        if (v35)
        {
          v37 = *(v34 + 2 * v36);
          v38 = (v37 * *(a1 + 3456)) << 7;
          v39 = (*(v34 + 2 * v31) - v37) * v33;
          v40 = *(a1 + 4424);
          v32 = v32;
          v41 = (v29 + 450);
          v42 = v35;
          do
          {
            v43 = *v41++;
            *(v40 + 4 * v32++) = (v38 + v39 * v43) * v33;
            --v42;
          }

          while (v42);
        }
      }

      while (v31 != v30);
    }

    else
    {
      LODWORD(v35) = *(v29 + 445);
    }

    v44 = *(a1 + 3464) * v35;
    if (v44 != *(a1 + 5696))
    {
      free(*(a1 + 5688));
      v45 = malloc_type_malloc(56 * v44, 0x100004021716A34uLL);
      *(a1 + 5688) = v45;
      if (!v45)
      {
        *(a1 + 5696) = 0;
        return 4294967284;
      }

      *(a1 + 5696) = v44;
      v29 = *(a1 + 24);
      LODWORD(v30) = *(v29 + 449);
    }

    v46 = &unk_2775EF578 + 2 * v28;
    if (v30)
    {
      v47 = 0;
      v48 = *(a1 + 5688);
      v49 = *(v29 + 445);
      v50 = *(v29 + 580);
      v51 = 13944;
      do
      {
        ++v47;
        v52 = *(v29 + 580 + 2 * v47);
        if (v49)
        {
          v53 = (*(a1 + 3264) + v51);
          v54 = 56 * *(v29 + 580 + 2 * v47) - 56 * v50;
          v55 = v49;
          do
          {
            *v53 = v48;
            v53 += 1828;
            v48 += v54;
            --v55;
          }

          while (v55);
        }

        v51 += 14624 * v49;
        v50 = v52;
      }

      while (v47 != v30);
    }

    v56 = v26 * *v46;
    if (v56 != *(a1 + 4404))
    {
      free(*(a1 + 4368));
      memptr = 0;
      v57 = malloc_type_posix_memalign(&memptr, 0x40uLL, (v56 & 0x1FFFFFFFFFFFFFLL) << 9, 0x86ADB027uLL);
      v58 = memptr;
      if (v57)
      {
        v58 = 0;
      }

      *(a1 + 4368) = v58;
      if (!v58)
      {
        *(a1 + 4404) = 0;
        return 4294967284;
      }

      *(a1 + 4404) = v56;
    }

    v59 = v56 << v27;
    if (v56 << v27 != *(a1 + 4416))
    {
      free(*(a1 + 4392));
      memptr = 0;
      if (malloc_type_posix_memalign(&memptr, 0x40uLL, (v59 & 0x3FFFFFFFFFFFFLL) << 13, 0x86ADB027uLL))
      {
        v60 = 0;
      }

      else
      {
        v60 = memptr;
      }

      *(a1 + 4392) = v60;
      if (!v60)
      {
        *(a1 + 4416) = 0;
        return 4294967284;
      }

      bzero(v60, (v59 & 0x3FFFFFFFFFFFFLL) << 13);
      *(a1 + 4416) = v59;
    }

    if (*(*(a1 + 24) + 268))
    {
      v61 = v26 << v27;
      if (v26 << v27 != *(a1 + 4408))
      {
        free(*(a1 + 4376));
        memptr = 0;
        v62 = malloc_type_posix_memalign(&memptr, 0x40uLL, 6144 * v61, 0x86ADB027uLL);
        v63 = memptr;
        if (v62)
        {
          v63 = 0;
        }

        *(a1 + 4376) = v63;
        if (!v63)
        {
          *(a1 + 4408) = 0;
          return 4294967284;
        }

        *(a1 + 4408) = v61;
      }

      v64 = v26 * v46[1];
      if (v64 != *(a1 + 4412))
      {
        free(*(a1 + 4384));
        memptr = 0;
        v65 = malloc_type_posix_memalign(&memptr, 0x40uLL, (v64 & 0x3FFFFFFFFFFFFLL) << 11, 0x86ADB027uLL);
        v66 = memptr;
        if (v65)
        {
          v66 = 0;
        }

        *(a1 + 4384) = v66;
        if (!v66)
        {
          *(a1 + 4412) = 0;
          return 4294967284;
        }

        *(a1 + 4412) = v64;
      }
    }

    else
    {
      v67 = *(a1 + 4376);
      if (v67)
      {
        free(v67);
        *(a1 + 4376) = 0;
        v68 = *(a1 + 4384);
        if (v68)
        {
          free(v68);
          *(a1 + 4384) = 0;
        }

        *(a1 + 4408) = 0;
      }
    }
  }

  v69 = *(a1 + 24);
  v71 = *(v69 + 236);
  v70 = *(v69 + 240);
  v72 = *(v10 + 24);
  v73 = v72 <= 1 || v71 == v70;
  v74 = !v73;
  LODWORD(v75) = *(a1 + 3464);
  v76 = *(a1 + 2144);
  v223 = *(a1 + 2144);
  v77 = *(a1 + 2152);
  if (__PAIR128__(*(a1 + 4468), *(a1 + 4464)) != __PAIR128__(8 * v77 * v75, 4 * v76 * v75) || *(a1 + 5300) != v74 || v75 != *(a1 + 4472))
  {
    free(*(a1 + 5176));
    v222 = vshlq_u64(vabsq_s64(v223), xmmword_2775ED480);
    v78 = (vaddvq_s64(v222) * *(a1 + 3464)) << v74;
    memptr = 0;
    v79 = malloc_type_posix_memalign(&memptr, 0x20uLL, v78 + 64, 0x86ADB027uLL);
    v80 = memptr;
    if (v79)
    {
      v80 = 0;
    }

    *(a1 + 5176) = v80;
    if (!v80)
    {
      *(a1 + 4464) = 0;
      return 4294967284;
    }

    v81 = v80 + 32;
    if (v76 < 0)
    {
      v75 = *(a1 + 3464);
      v83 = &v81[-(v76 * (4 * v75 - 1))];
      v82 = -(v76 * (4 * v75 - 3));
    }

    else
    {
      v82 = 2 * v76;
      LODWORD(v75) = *(a1 + 3464);
      v83 = v81;
    }

    *(a1 + 5192) = v83;
    *(a1 + 5216) = &v81[v82];
    v84 = v222.i64[0] * v75;
    v85 = &v81[v84];
    v86 = 2 * v77;
    v87 = 4 * v77;
    v88 = 6 * v77;
    v89 = 8 * v75 - 1;
    v90 = &v85[-(v77 * v89)];
    if (v77 < 0)
    {
      v86 = -(v77 * (8 * v75 - 3));
    }

    else
    {
      v90 = v85;
    }

    if (v77 < 0)
    {
      v87 = -(v77 * (8 * v75 - 5));
      v88 = -(v77 * (8 * v75 - 7));
    }

    *(a1 + 5200) = v90;
    *(a1 + 5208) = &v85[v86];
    *(a1 + 5224) = &v85[v87];
    *(a1 + 5232) = &v85[v88];
    if (v74)
    {
      v91 = &v85[v222.i64[1] * v75];
      v92 = 4 * v75 - 1;
      v93 = &v91[-(v76 * v92)];
      if (v76 >= 0)
      {
        v93 = v91;
      }

      *(a1 + 5240) = v93;
      v94 = &v91[v84];
      v95 = 4 * v77 * v75;
      v96 = &v94[-(v77 * v92)];
      v97 = -(v77 * v89);
      if (v77 < 0)
      {
        v95 = v97;
      }

      else
      {
        v96 = v94;
      }

      *(a1 + 5248) = v96;
      *(a1 + 5256) = &v94[v95];
    }

    *(a1 + 4464) = vshl_u32(vmul_s32(vmovn_s64(v223), vdup_n_s32(v75)), 0x300000002);
    *(a1 + 5300) = v74;
    *(a1 + 4472) = v75;
    v72 = *(v10 + 24);
  }

  if (v72 < 2)
  {
    v98 = 12;
  }

  else
  {
    v98 = (4 * v75) << *(*(a1 + 8) + 392);
  }

  v99 = *(a1 + 2416);
  v100 = *(a1 + 2424);
  v101 = v98;
  if (v99 * v98 != *(a1 + 4476) || *(a1 + 4480) != 2 * v100 * v98)
  {
    free(*(a1 + 5184));
    if (v99 >= 0)
    {
      v102 = v99;
    }

    else
    {
      v102 = -v99;
    }

    v103 = v102 * v101;
    if (v100 >= 0)
    {
      v104 = v100;
    }

    else
    {
      v104 = -v100;
    }

    memptr = 0;
    v105 = malloc_type_posix_memalign(&memptr, 0x40uLL, v103 + 2 * v101 * v104 + 128, 0x86ADB027uLL);
    v106 = memptr;
    if (v105)
    {
      v106 = 0;
    }

    *(a1 + 5184) = v106;
    if (!v106)
    {
      *(a1 + 4476) = 0;
      return 4294967284;
    }

    v107 = v106 + 64;
    v108 = v101 - 1;
    *(a1 + 5264) = &v107[-(v99 * v108) & (v99 >> 63)];
    v109 = &v107[v103];
    v110 = v100 * v101;
    v111 = 2 * v101;
    v112 = &v109[-(v100 * v108)];
    if (v100 >= 0)
    {
      v112 = v109;
    }

    else
    {
      v111 = 2 * v101;
      v110 = -(v100 * (2 * v101 - 1));
    }

    *(a1 + 5272) = v112;
    *(a1 + 5280) = &v109[v110];
    *(a1 + 4476) = v101 * v99;
    *(a1 + 4480) = v111 * v100;
  }

  if (v26 != *(a1 + 4456))
  {
    free(*(a1 + 4440));
    free(*(a1 + 4432));
    *(a1 + 4440) = malloc_type_malloc(1348 * v26, 0x1000040A6200EAAuLL);
    v113 = malloc_type_malloc((v26 << 12) | 3, 0x100004052888210uLL);
    *(a1 + 4432) = v113;
    if (!*(a1 + 4440) || !v113 || *(v10 + 8) >= 2u && (free(*(a1 + 4360)), v114 = malloc_type_malloc(v26 << 15, 0x1000040E0EAB150uLL), (*(a1 + 4360) = v114) == 0))
    {
      *(a1 + 4456) = 0;
      return 4294967284;
    }

    *(a1 + 4456) = v26;
  }

  v115 = (*(a1 + 2432) + 127) >> 7;
  *(a1 + 3476) = v115;
  v116 = *(a1 + 3460) * v115;
  if (v116 != *(a1 + 4460))
  {
    free(*(a1 + 4448));
    v117 = malloc_type_malloc(108 * v116, 0x1000040F139FF95uLL);
    *(a1 + 4448) = v117;
    if (!v117)
    {
      *(a1 + 4460) = 0;
      return 4294967284;
    }

    *(a1 + 4460) = v116;
  }

  v118 = *(a1 + 24);
  *(a1 + 5352) = (*(v118 + 868) != 0) | (2 * (*(v118 + 872) != 0)) | (4 * (*(v118 + 876) != 0));
  v119 = *(v118 + 846);
  if (*(a1 + 4640) != v119)
  {
    a7.i32[0] = 0;
    v120 = 9 - v119;
    v121 = (v119 + 3) >> 2;
    v122 = vdupq_n_s32(9 - v119);
    v123 = (a1 + 4560);
    v124 = xmmword_2775ED550;
    v125 = xmmword_2775ED560;
    v126 = xmmword_2775ED4A0;
    v127 = xmmword_2775ED4B0;
    v128 = 64;
    a9.i32[0] = *(v118 + 846);
    v129 = vdupq_lane_s8(*&vceqq_s8(a9, a7), 0);
    v130 = vnegq_s32(vdupq_n_s32(v121));
    v131.i64[0] = 0x100000001;
    v131.i64[1] = 0x100000001;
    v132.i64[0] = 0x404040404040404;
    v132.i64[1] = 0x404040404040404;
    v133.i64[0] = 0x1000000010;
    v133.i64[1] = 0x1000000010;
    do
    {
      v134 = vmaxq_s32(vbslq_s8(v129, v125, vminq_s32(vshlq_u32(v125, v130), v122)), v131);
      v135 = vmaxq_s32(vbslq_s8(v129, v124, vminq_s32(vshlq_u32(v124, v130), v122)), v131);
      v136 = vmaxq_s32(vbslq_s8(v129, v126, vminq_s32(vshlq_u32(v126, v130), v122)), v131);
      v137 = vmaxq_s32(vbslq_s8(v129, v127, vminq_s32(vshlq_u32(v127, v130), v122)), v131);
      *v123 = vuzp1q_s8(vuzp1q_s16(v137, v136), vuzp1q_s16(v134, v135));
      v123[-4] = vaddq_s8(vuzp1q_s8(vuzp1q_s16(vaddq_s32(vaddq_s32(v127, v127), v137), vaddq_s32(vaddq_s32(v126, v126), v136)), vuzp1q_s16(vaddq_s32(vaddq_s32(v125, v125), v134), vaddq_s32(vaddq_s32(v124, v124), v135))), v132);
      v127 = vaddq_s32(v127, v133);
      v126 = vaddq_s32(v126, v133);
      v125 = vaddq_s32(v125, v133);
      v124 = vaddq_s32(v124, v133);
      ++v123;
      v128 -= 16;
    }

    while (v128);
    *(a1 + 4624) = v121;
    v73 = v119 == 0;
    v138 = 255;
    if (!v73)
    {
      v138 = v120;
    }

    *(a1 + 4632) = v138;
    v118 = *(a1 + 24);
    *(a1 + 4640) = *(v118 + 846);
  }

  v224 = 0;
  sub_2775E2C2C((a1 + 4644), v118, &v224);
  bzero(*(a1 + 4440), 1348 * v26);
  v139 = (*(a1 + 3456) * *(a1 + 3464)) << v27;
  if (v139 != *(a1 + 3400))
  {
    free(*(a1 + 3408));
    memptr = 0;
    v140 = malloc_type_posix_memalign(&memptr, 0x40uLL, 384 * v139, 0x86ADB027uLL);
    v141 = memptr;
    if (v140)
    {
      v141 = 0;
    }

    *(a1 + 3408) = v141;
    if (!v141)
    {
      *(a1 + 3400) = 0;
      return 4294967284;
    }

    *(a1 + 3416) = &v141[128 * v139];
    *(a1 + 3424) = &v141[256 * v139];
    *(a1 + 3400) = v139;
  }

  v142 = *(a1 + 24);
  v143 = *(a1 + 3460) * *(v142 + 445);
  if (v143 != *(a1 + 4484))
  {
    free(*(a1 + 5160));
    v144 = malloc_type_malloc(v143 << 6, 0x3A9751D6uLL);
    *(a1 + 5160) = v144;
    if (!v144)
    {
      *(a1 + 4484) = 0;
      return 4294967284;
    }

    *(a1 + 5168) = &v144[32 * v143];
    *(a1 + 4484) = v143;
    v142 = *(a1 + 24);
  }

  if ((*(v142 + 232) & 1) != 0 || *(v142 + 419))
  {
    v145 = *(a1 + 8);
    v146 = *(a1 + 2680);
    v147 = *(a1 + 3256);
    v148 = *(v147 + 24);
    v149 = *(v147 + 8);
    *(a1 + 4072) = 16 << *(v145 + 392);
    *(a1 + 4048) = v142;
    LODWORD(v147) = (*(v142 + 236) + 7) >> 3;
    *(a1 + 4064) = v147;
    v150 = (*(v142 + 244) + 7) >> 3;
    *(a1 + 4068) = v150;
    *(a1 + 4056) = 2 * v147;
    *(a1 + 4060) = 2 * v150;
    v151 = (((*(v142 + 236) + 127) >> 2) & 0xFFFFFFE0);
    if (v148 < 2)
    {
      v152 = 1;
    }

    else
    {
      v152 = *(v142 + 449);
    }

    if (*(a1 + 4248) != v151 || v152 != *(a1 + 4256))
    {
      v153 = *(a1 + 4240);
      if (v153)
      {
        free(v153);
        *(a1 + 4240) = 0;
      }

      v155 = v148 > 1 && v149 > 1;
      memptr = 0;
      v156 = malloc_type_posix_memalign(&memptr, 0x40uLL, (420 * v151 * v152) << v155, 0x86ADB027uLL);
      v157 = memptr;
      if (v156)
      {
        v157 = 0;
      }

      *(a1 + 4240) = v157;
      if (!v157)
      {
        return 4294967284;
      }

      *(a1 + 4248) = v151;
    }

    v158 = v151 >> 1;
    if (v158 == *(a1 + 4232) && v152 == *(a1 + 4256))
    {
      goto LABEL_177;
    }

    v159 = *(a1 + 4224);
    if (v159)
    {
      free(v159);
      *(a1 + 4224) = 0;
    }

    memptr = 0;
    v160 = malloc_type_posix_memalign(&memptr, 0x40uLL, 80 * v158 * v152, 0x86ADB027uLL);
    v161 = memptr;
    if (v160)
    {
      v161 = 0;
    }

    *(a1 + 4224) = v161;
    if (v161)
    {
      *(a1 + 4232) = v158;
LABEL_177:
      v162 = 0;
      v163 = a1 + 2832;
      *(a1 + 4256) = v152;
      *(a1 + 4260) = v148;
      *(a1 + 4264) = v149;
      *(a1 + 4208) = v146;
      *(a1 + 4216) = a1 + 2688;
      v164 = *(v142 + 248);
      do
      {
        if (*(v145 + 412))
        {
          v165 = ((*(v163 + 4 * v162) - v164) & ((1 << (*(v145 + 412) - 1)) - 1)) - ((*(v163 + 4 * v162) - v164) & (1 << (*(v145 + 412) - 1)));
        }

        else
        {
          v165 = 0;
        }

        v166 = (v163 + v162);
        v166[1248] = v165 > 0;
        v166[1255] = v165 < 0;
        LOBYTE(v165) = *(v145 + 412);
        if (v165)
        {
          v165 = ((v164 - *(v163 + 4 * v162)) & ((1 << (v165 - 1)) - 1)) - ((v164 - *(v163 + 4 * v162)) & (1 << (v165 - 1)));
          if (v165 >= 31)
          {
            v165 = 31;
          }

          if (v165 <= -31)
          {
            LOBYTE(v165) = -31;
          }
        }

        v166[1262] = v165;
        ++v162;
      }

      while (v162 != 7);
      *(a1 + 4200) = 0;
      if (!*(v142 + 437) || !*(v145 + 412))
      {
        goto LABEL_238;
      }

      v167 = *(a1 + 2688);
      if (v167)
      {
        if (*(a1 + 2884) != *(a1 + 2844))
        {
          LODWORD(v167) = 1;
          *(a1 + 4200) = 1;
          *(a1 + 4101) = 0;
          v168 = 3;
          goto LABEL_200;
        }

        LODWORD(v167) = 0;
      }

      v168 = 2;
LABEL_200:
      if (*(a1 + 2720))
      {
        if (*(v145 + 412))
        {
          v170 = *(a1 + 2848) - *(v142 + 248);
          if ((v170 & ((1 << (*(v145 + 412) - 1)) - 1)) > (v170 & (1 << (*(v145 + 412) - 1))))
          {
            v171 = a1 + v167;
            LODWORD(v167) = v167 + 1;
            *(a1 + 4200) = v167;
            *(v171 + 4101) = 4;
          }
        }
      }

      if (*(a1 + 2728))
      {
        if (*(v145 + 412))
        {
          v172 = *(a1 + 2852) - *(v142 + 248);
          if ((v172 & ((1 << (*(v145 + 412) - 1)) - 1)) > (v172 & (1 << (*(v145 + 412) - 1))))
          {
            *(a1 + 4200) = v167 + 1;
            *(a1 + v167 + 4101) = 5;
            LODWORD(v167) = *(a1 + 4200);
          }
        }
      }

      if (v167 < v168)
      {
        if (*(a1 + 2736))
        {
          if (*(v145 + 412))
          {
            v173 = *(a1 + 2856) - *(v142 + 248);
            if ((v173 & ((1 << (*(v145 + 412) - 1)) - 1)) > (v173 & (1 << (*(v145 + 412) - 1))))
            {
              *(a1 + 4200) = v167 + 1;
              *(a1 + v167 + 4101) = 6;
              LODWORD(v167) = *(a1 + 4200);
            }
          }
        }
      }

      if (v167 >= v168)
      {
        goto LABEL_217;
      }

      if (*(a1 + 2696))
      {
        *(a1 + 4200) = v167 + 1;
        *(a1 + v167 + 4101) = 1;
        LODWORD(v167) = *(a1 + 4200);
      }

      if (v167 >= 1)
      {
LABEL_217:
        v174 = 0;
        v175 = a1 + 4101;
        v176 = *(v145 + 412);
        v177 = 1 << (v176 - 1);
        v178 = v177 - 1;
        v179 = a1 + 4104;
        v180 = a1;
        do
        {
          v181 = *(v175 + v174);
          v182 = *(v163 + 4 * v181);
          if (v176)
          {
            v183 = ((v182 - *(v142 + 248)) & v178) - ((v182 - *(v142 + 248)) & v177);
          }

          else
          {
            v183 = 0;
          }

          if (v183 >= 0)
          {
            v184 = v183;
          }

          else
          {
            v184 = -v183;
          }

          if (v184 < 0x20)
          {
            if (v181 >= 4)
            {
              v185 = v183;
            }

            else
            {
              v185 = -v183;
            }

            *(v179 + 4 * v174) = v185;
            v186 = a1 + 2860;
            for (i = 1029; i != 1036; ++i)
            {
              if (v176)
              {
                v188 = v182 - *(v186 + 28 * *(v175 + v174));
                v189 = (v188 & v178) - (v188 & v177);
                if (v189 > 0x1F)
                {
                  v189 = 0;
                }
              }

              else
              {
                v189 = 0;
              }

              *(v180 + 4 * i) = v189;
              v186 += 4;
            }
          }

          else
          {
            *(v179 + 4 * v174) = 0x80000000;
          }

          ++v174;
          v190 = *(a1 + 4200);
          v180 += 28;
        }

        while (v174 < v190);
        v191 = v190 > 0;
        goto LABEL_239;
      }

LABEL_238:
      v191 = 0;
LABEL_239:
      *(a1 + 4076) = v191;
      v142 = *(a1 + 24);
      goto LABEL_240;
    }

    return 4294967284;
  }

LABEL_240:
  sub_2775BEF24(*(*(a1 + 8) + 32), v142, *(v142 + 712), a1 + 3480);
  v192 = *(a1 + 24);
  if (v192[718])
  {
    v193 = 0;
    v194 = &unk_280B78180 + 304 * v192[719];
    v195 = &unk_280B78180 + 304 * v192[721] + 152;
    v196 = &unk_280B78180 + 304 * v192[720] + 152;
    v197 = (a1 + 3592);
    do
    {
      *(v197 - 2) = *&v194[v193];
      *(v197 - 1) = *&v196[v193];
      *v197 = *&v195[v193];
      v197 += 3;
      v193 += 8;
    }

    while (v193 != 152);
  }

  else
  {
    *(a1 + 4024) = 0;
    *(a1 + 3992) = 0u;
    *(a1 + 4008) = 0u;
    *(a1 + 3960) = 0u;
    *(a1 + 3976) = 0u;
    *(a1 + 3928) = 0u;
    *(a1 + 3944) = 0u;
    *(a1 + 3896) = 0u;
    *(a1 + 3912) = 0u;
    *(a1 + 3864) = 0u;
    *(a1 + 3880) = 0u;
    *(a1 + 3832) = 0u;
    *(a1 + 3848) = 0u;
    *(a1 + 3800) = 0u;
    *(a1 + 3816) = 0u;
    *(a1 + 3768) = 0u;
    *(a1 + 3784) = 0u;
    *(a1 + 3736) = 0u;
    *(a1 + 3752) = 0u;
    *(a1 + 3704) = 0u;
    *(a1 + 3720) = 0u;
    *(a1 + 3672) = 0u;
    *(a1 + 3688) = 0u;
    *(a1 + 3640) = 0u;
    *(a1 + 3656) = 0u;
    *(a1 + 3608) = 0u;
    *(a1 + 3624) = 0u;
    *(a1 + 3576) = 0u;
    *(a1 + 3592) = 0u;
  }

  if (v192[888])
  {
    v198 = 0;
    v199 = a1 + 32;
    v200 = 1;
    do
    {
      if (v198 <= 5)
      {
        v201 = *(*(v199 + 296 * v198 + 8) + 248);
        v202 = *(a1 + 8);
        v203 = v200;
        do
        {
          v204 = *(v202 + 412);
          if (*(v202 + 412))
          {
            v205 = *(*(a1 + 2112) + 248);
            v207 = 1 << (v204 - 1);
            v204 = ((v201 - v205) & (v207 - 1)) - ((v201 - v205) & v207);
            if ((v204 & 0x80000000) != 0)
            {
              v204 = ((v201 - v205) & v207) - ((v201 - v205) & (v207 - 1));
            }

            if (v204 >= 0x1F)
            {
              v204 = 31;
            }

            v206 = *(*(v199 + 296 * v203 + 8) + 248);
            v208 = ((v206 - v205) & (v207 - 1)) - ((v206 - v205) & v207);
          }

          else
          {
            v208 = 0;
          }

          v209 = 0;
          if (v208 < 0)
          {
            v208 = -v208;
          }

          if (v208 >= 0x1F)
          {
            v210 = 31;
          }

          else
          {
            v210 = v208;
          }

          if (v210 <= v204)
          {
            v211 = &unk_2775EF580;
          }

          else
          {
            v211 = &unk_2775EF581;
          }

          if (v210 > v204)
          {
            v212 = &unk_2775EF580;
          }

          else
          {
            v212 = &unk_2775EF581;
          }

          do
          {
            v213 = v210 <= v204;
            v214 = *v212;
            v212 += 2;
            v215 = v214;
            v216 = *v211;
            v211 += 2;
            v217 = v210 * v215;
            v218 = v204 * v216;
            if (v217 <= v218)
            {
              v213 = 0;
            }

            if (v217 < v218 && v210 > v204)
            {
              break;
            }

            if (v213)
            {
              break;
            }

            ++v209;
          }

          while (v209 != 3);
          *(a1 + 4272 - v198 + 8 * v198 + v203++) = byte_2775EF586[2 * v209 + (v210 <= v204)];
        }

        while (v203 != 7);
      }

      ++v198;
      ++v200;
    }

    while (v198 != 7);
  }

  result = 0;
  v220 = *(a1 + 2168) != 0;
  *(a1 + 5304) = *(a1 + 2120);
  *(a1 + 5312) = *(a1 + 2120 + 8 * v220);
  v221 = 16 * v220;
  *(a1 + 5320) = *(a1 + 2120 + v221);
  *(a1 + 5328) = *(a1 + 2392);
  *(a1 + 5336) = *(a1 + 2392 + 8 * v220);
  *(a1 + 5344) = *(a1 + 2392 + v221);
  return result;
}

uint64_t sub_2775C2F00(uint64_t a1)
{
  v2 = *(a1 + 3256);
  if (*(*(a1 + 24) + 438))
  {
    v3 = *(a1 + 3096);
    if (*(a1 + 3064))
    {
      memcpy(*(a1 + 3096), *(a1 + 3072), 0x3600uLL);
    }

    else
    {
      memcpy(*(a1 + 3096), &unk_2775F1780, 0x1860uLL);
      memcpy((v3 + 6240), &unk_2775F13E0, 0x320uLL);
      memcpy((v3 + 7040), &unk_2775F2FE0 + 6208 * *(a1 + 3072), 0x1840uLL);
      *(v3 + 13504) = 0x348054007000;
      *(v3 + 13792) = 0x348054007000;
      *(v3 + 13728) = xmmword_2775F1740;
      *(v3 + 13744) = unk_2775F1750;
      *(v3 + 13760) = xmmword_2775F1760;
      *(v3 + 13776) = unk_2775F1770;
      *(v3 + 13664) = xmmword_2775F1700;
      *(v3 + 13680) = unk_2775F1710;
      *(v3 + 13696) = xmmword_2775F1720;
      *(v3 + 13712) = unk_2775F1730;
      *(v3 + 13648) = unk_2775F1770;
      *(v3 + 13632) = xmmword_2775F1760;
      *(v3 + 13616) = unk_2775F1750;
      *(v3 + 13600) = xmmword_2775F1740;
      *(v3 + 13584) = unk_2775F1730;
      *(v3 + 13568) = xmmword_2775F1720;
      *(v3 + 13552) = unk_2775F1710;
      *(v3 + 13536) = xmmword_2775F1700;
      *(v3 + 13376) = xmmword_2775F1700;
      *(v3 + 13392) = unk_2775F1710;
      *(v3 + 13408) = xmmword_2775F1720;
      *(v3 + 13424) = unk_2775F1730;
      *(v3 + 13440) = xmmword_2775F1740;
      *(v3 + 13456) = unk_2775F1750;
      *(v3 + 13472) = xmmword_2775F1760;
      *(v3 + 13488) = unk_2775F1770;
      *(v3 + 13296) = unk_2775F1730;
      *(v3 + 13280) = xmmword_2775F1720;
      *(v3 + 13264) = unk_2775F1710;
      *(v3 + 13248) = xmmword_2775F1700;
      *(v3 + 13360) = unk_2775F1770;
      *(v3 + 13344) = xmmword_2775F1760;
      *(v3 + 13328) = unk_2775F1750;
      *(v3 + 13312) = xmmword_2775F1740;
    }
  }

  *(a1 + 5560) = 0;
  v4 = *(a1 + 3124);
  if (v4 < 1)
  {
    goto LABEL_81;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 3112);
  v75 = v2;
  do
  {
    v9 = v8 + 80 * v5;
    LODWORD(v10) = *(v9 + 76);
    v11 = *(v9 + 72);
    if (v11 > v10)
    {
      goto LABEL_80;
    }

    v12 = *v9;
    v13 = *(v9 + 8);
    v14 = 14624 * v11 + 14584;
    v76 = v5;
    do
    {
      if (v10 == v11)
      {
        v15 = v12;
        v16 = v13;
      }

      else
      {
        v17 = *(*(a1 + 24) + 441);
        v18 = v13 >= v17;
        v13 -= v17;
        if (!v18)
        {
          return 4294967274;
        }

        if (*(*(a1 + 24) + 441))
        {
          v19 = 0;
          v20 = 0;
          v21 = v17 - 1;
          v22 = 8 * v17;
          v23 = v12;
          do
          {
            v24 = *v23++;
            v20 |= (v24 << v19);
            v19 += 8;
          }

          while (v22 != v19);
          v12 += v21 + 1;
          v16 = v20 + 1;
        }

        else
        {
          v16 = 1;
        }

        v15 = v12;
        if (v16 > v13)
        {
          return 4294967274;
        }
      }

      if (*(v2 + 8) < 2u)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(*(a1 + 4424) + 4 * v11);
      }

      v26 = *(a1 + 8);
      v77 = *(v26 + 392) == 0;
      v27 = &unk_2775EF578 + 2 * *(a1 + 2168);
      v28 = *(a1 + 4384);
      if (v28)
      {
        v29 = v28 + ((v25 * v27[1]) >> 3);
      }

      else
      {
        v29 = 0;
      }

      v30 = *(a1 + 3264);
      v86 = v6;
      v31 = *(a1 + 24);
      v80 = *(v31 + 450 + 2 * v6);
      v79 = *(v31 + 450 + 2 * (v6 + 1));
      v81 = v30;
      v32 = v30 + 14624 * v11;
      v82 = *(v31 + 580 + 2 * v7);
      v83 = v7 + 1;
      v84 = v6 + 1;
      v78 = *(v31 + 580 + 2 * v83);
      v33 = *(a1 + 3468);
      v34 = *(a1 + 4368);
      v35 = *(a1 + 4392);
      *(v32 + 13896) = v29;
      if (v34)
      {
        v36 = v34 + (((v25 * *v27) >> 5) & 0x7FFFFFFFELL);
      }

      else
      {
        v36 = 0;
      }

      *(v32 + 13904) = v36;
      if (v35)
      {
        v37 = v35 + ((v25 * *v27) >> (*(v26 + 32) == 0));
      }

      else
      {
        v37 = 0;
      }

      *(v32 + 13912) = v37;
      if (v28)
      {
        v28 += (v25 * v27[1]) >> 3;
      }

      *(v32 + 13920) = v28;
      if (v34)
      {
        v38 = v34 + (((v25 * *v27) >> 5) & 0x7FFFFFFFELL);
      }

      else
      {
        v38 = 0;
      }

      *(v32 + 13928) = v38;
      v87 = v14;
      if (v35)
      {
        v39 = v35 + ((v25 * *v27) >> (*(v26 + 32) == 0));
      }

      else
      {
        v39 = 0;
      }

      v85 = v11;
      v40 = v7;
      *(v32 + 13936) = v39;
      if (*(a1 + 3064))
      {
        memcpy((v30 + 14624 * v11), *(a1 + 3072), 0x3600uLL);
      }

      else
      {
        memcpy((v30 + 14624 * v11), &unk_2775F1780, 0x1860uLL);
        memcpy((v32 + 6240), &unk_2775F13E0, 0x320uLL);
        memcpy((v32 + 7040), &unk_2775F2FE0 + 6208 * *(a1 + 3072), 0x1840uLL);
        *(v32 + 13504) = 0x348054007000;
        *(v32 + 13792) = 0x348054007000;
        *(v32 + 13728) = xmmword_2775F1740;
        *(v32 + 13744) = unk_2775F1750;
        *(v32 + 13760) = xmmword_2775F1760;
        *(v32 + 13776) = unk_2775F1770;
        *(v32 + 13664) = xmmword_2775F1700;
        *(v32 + 13680) = unk_2775F1710;
        *(v32 + 13696) = xmmword_2775F1720;
        *(v32 + 13712) = unk_2775F1730;
        *(v32 + 13648) = unk_2775F1770;
        *(v32 + 13632) = xmmword_2775F1760;
        *(v32 + 13616) = unk_2775F1750;
        *(v32 + 13600) = xmmword_2775F1740;
        *(v32 + 13584) = unk_2775F1730;
        *(v32 + 13568) = xmmword_2775F1720;
        *(v32 + 13552) = unk_2775F1710;
        *(v32 + 13536) = xmmword_2775F1700;
        *(v32 + 13376) = xmmword_2775F1700;
        *(v32 + 13392) = unk_2775F1710;
        *(v32 + 13408) = xmmword_2775F1720;
        *(v32 + 13424) = unk_2775F1730;
        *(v32 + 13440) = xmmword_2775F1740;
        *(v32 + 13456) = unk_2775F1750;
        *(v32 + 13472) = xmmword_2775F1760;
        *(v32 + 13488) = unk_2775F1770;
        *(v32 + 13296) = unk_2775F1730;
        *(v32 + 13280) = xmmword_2775F1720;
        *(v32 + 13264) = unk_2775F1710;
        *(v32 + 13248) = xmmword_2775F1700;
        *(v32 + 13360) = unk_2775F1770;
        *(v32 + 13344) = xmmword_2775F1760;
        *(v32 + 13328) = unk_2775F1750;
        *(v32 + 13312) = xmmword_2775F1740;
      }

      v41 = 0;
      *(v32 + 14056) = *(*(a1 + 24) + 712);
      *(v32 + 14060) = 0;
      v42 = *(a1 + 24);
      v43 = *(v42 + 267);
      *(v32 + 13824) = v15;
      v12 = &v15[v16];
      *(v32 + 13832) = &v15[v16];
      *(v32 + 13840) = 0;
      *(v32 + 13848) = 0xFFFFFFF100008000;
      *(v32 + 13856) = v43 == 0;
      v44 = 55;
      while (v15 < v12)
      {
        v45 = *v15++;
        v41 |= ~v45 << v44;
        v46 = v44 - 8;
        v47 = v44 > 7;
        v44 -= 8;
        if (!v47)
        {
          goto LABEL_47;
        }
      }

      v41 |= ~(-256 << v44);
      v46 = v44;
LABEL_47:
      *(v32 + 13840) = v41;
      *(v32 + 13852) = 40 - v46;
      *(v32 + 13824) = v15;
      *(v32 + 13884) = v40;
      *(v32 + 13880) = v86;
      *(v32 + 13864) = v80 << v33;
      v48 = v79 << v33;
      if (v79 << v33 >= *(a1 + 3448))
      {
        v48 = *(a1 + 3448);
      }

      *(v32 + 13868) = v48;
      v49 = v82 << v33;
      *(v32 + 13872) = v82 << v33;
      v50 = v78 << v33;
      if (v78 << v33 >= *(a1 + 3452))
      {
        v50 = *(a1 + 3452);
      }

      *(v32 + 13876) = v50;
      v51 = *(v42 + 236);
      v52 = *(v42 + 240);
      v53 = v49 >> 5;
      v54 = v49 >> 3;
      if (v51 == v52)
      {
        v55 = (v80 >> v77) + *(a1 + 3456) * v53;
        v56 = v54 & 2 | (v80 << v33 >> 4) & 1;
      }

      else
      {
        v55 = *(a1 + 3476) * v53;
        v56 = v54 & 2;
      }

      v57 = 0;
      v58 = v81 + v87;
      v59 = (v56 | (8 * v56)) + 108 * v55;
      do
      {
        if (((*(a1 + 5352) >> v57) & 1) == 0)
        {
          goto LABEL_66;
        }

        v60 = *(a1 + 24);
        if (*(v60 + 236) == *(v60 + 240))
        {
          v61 = *(a1 + 4448) + v59;
LABEL_65:
          *(v58 + 8 * v57) = v61;
          *(v61 + 4) = 3;
          *(*(v58 + 8 * v57) + 5) = -7;
          *(*(v58 + 8 * v57) + 6) = 15;
          *(*(v58 + 8 * v57) + 1) = 3;
          *(*(v58 + 8 * v57) + 2) = -7;
          *(*(v58 + 8 * v57) + 3) = 15;
          *(*(v58 + 8 * v57) + 7) = -32;
          *(*(v58 + 8 * v57) + 8) = 31;
          goto LABEL_66;
        }

        if (v57)
        {
          v62 = *(a1 + 2168) != 3;
        }

        else
        {
          v62 = 0;
        }

        v63 = *(v60 + 416);
        if (v57)
        {
          ++v60;
        }

        v64 = ((8 << *(v60 + 880)) + ((4 * v63 * *(v32 + 13864)) >> v62) - 1) >> (*(v60 + 880) + 3) << (v62 + *(v60 + 880));
        if (v64 >> 7 < *(a1 + 3476))
        {
          v61 = *(a1 + 4448) + 108 * ((v64 >> 7) + v55) + 36 * v57 + ((((v64 >> 6) & 1) + v56) | (8 * (((v64 >> 6) & 1) + v56)));
          goto LABEL_65;
        }

LABEL_66:
        ++v57;
        v59 += 36;
      }

      while (v57 != 3);
      if (*(*(a1 + 3256) + 24) >= 2u)
      {
        *(v32 + 13888) = v82;
        *(v32 + 13892) = v82;
      }

      v65 = *(a1 + 24);
      if (v84 == *(v65 + 445))
      {
        v7 = v83;
      }

      else
      {
        v7 = v40;
      }

      if (v84 == *(v65 + 445))
      {
        v6 = 0;
      }

      else
      {
        v6 = v84;
      }

      v5 = v76;
      if (v85 == *(v65 + 710) && *(v65 + 438))
      {
        *(a1 + 5560) = 1;
      }

      v13 -= v16;
      v11 = v85 + 1;
      v8 = *(a1 + 3112);
      v10 = *(v8 + 80 * v76 + 76);
      v14 = v87 + 14624;
      v2 = v75;
    }

    while (v85 < v10);
    v4 = *(a1 + 3124);
LABEL_80:
    ++v5;
  }

  while (v5 < v4);
LABEL_81:
  if (*(v2 + 24) >= 2u)
  {
    v66 = *(v2 + 8);
    v67 = *(a1 + 24);
    v68 = *(a1 + 3456) * *(v67 + 449);
    if (v68 << (v66 > 1) >= 1)
    {
      v69 = 0;
      v70 = 0;
      do
      {
        v71 = *(v67 + 232);
        if (v70 < v68)
        {
          v72 = 1;
        }

        else
        {
          v72 = 2;
        }

        if (v66 <= 1)
        {
          v73 = 0;
        }

        else
        {
          v73 = v72;
        }

        sub_2775B6D74((*(a1 + 4032) + v69), (v71 & 1) == 0, v73);
        ++v70;
        v67 = *(a1 + 24);
        v68 = *(a1 + 3456) * *(v67 + 449);
        v69 += 624;
      }

      while (v70 < v68 << (v66 > 1));
    }
  }

  return 0;
}

void sub_2775C375C(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 3256);
  if (*(a1 + 2392))
  {
    *(a1 + 5564) = 0;
  }

  if (a2)
  {
    if (*(v4 + 8) >= 2u)
    {
      v5 = *(a1 + 4392);
      if (v5)
      {
        bzero(v5, (*(a1 + 4416) & 0x3FFFFFFFFFFFFLL) << 13);
      }
    }
  }

  v6 = 0;
  v7 = a1;
  do
  {
    if (*(v7 + 40))
    {
      if (!v2)
      {
        if (*(v4 + 8) >= 2u && *(v4 + 63072) && (v8 = atomic_load((*(v7 + 320) + 4)), v8 == -2))
        {
          atomic_store(1u, (a1 + 5564));
          atomic_store(0xFFFFFFFE, (*(a1 + 2664) + 4));
          v2 = -22;
        }

        else
        {
          v2 = 0;
        }
      }

      sub_2775DE04C(v7 + 32);
      *(v7 + 320) = 0;
    }

    sub_2775DA200((a1 + 2744 + v6));
    v6 += 8;
    v7 += 296;
  }

  while (v6 != 56);
  sub_2775DE04C(a1 + 2104);
  sub_2775DE04C(a1 + 2376);
  *(a1 + 2664) = 0;
  *(a1 + 3072) = 0u;
  sub_2775DA200((a1 + 3064));
  v9 = *(a1 + 24);
  if (v9 && *(v9 + 438))
  {
    v10 = *(a1 + 3104);
    if (v10)
    {
      if (v2)
      {
        v11 = 2147483646;
      }

      else
      {
        v11 = 1;
      }

      atomic_store(v11, v10);
    }

    *(a1 + 3096) = 0u;
    sub_2775DA200((a1 + 3088));
  }

  sub_2775DA200((a1 + 2800));
  sub_2775DA200((a1 + 2808));
  sub_2775DA200((a1 + 2672));
  sub_2775DA200(a1);
  sub_2775DA200((a1 + 16));
  if (*(a1 + 3124) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      sub_2775A9300(*(a1 + 3112) + v12);
      ++v13;
      v12 += 80;
    }

    while (v13 < *(a1 + 3124));
  }

  *(a1 + 5556) = v2;
}

uint64_t sub_2775C3938(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v28 = a4 >> 1;
  v10 = a7 - 1;
  v11 = vdup_n_s32(a7 - 1);
  do
  {
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = -1;
      v14 = a9;
      do
      {
        v16 = vdup_n_s32(v13);
        v17 = vbic_s8(vmin_s32(vadd_s32(v16, 0xFFFFFFFEFFFFFFFDLL), v11), vcgt_s32(0x200000003, v16));
        v18 = *(a3 + 2 * v17.i32[0]);
        v19 = v13 - 1;
        v20 = *(a3 + 2 * v17.i32[1]);
        if (v13 - 1 >= v10)
        {
          v19 = a7 - 1;
        }

        if (v13 >= v10)
        {
          v21 = a7 - 1;
        }

        else
        {
          v21 = v13;
        }

        if (v13 <= 0)
        {
          v19 = 0;
        }

        v22 = *(a3 + 2 * v19);
        if (v13 < 0)
        {
          v21 = 0;
        }

        v23 = vbic_s8(vmin_s32(vadd_s32(v16, 0x200000001), v11), vcgt_s32(0xFFFFFFFEFFFFFFFFLL, v16));
        v24 = vbic_s8(vmin_s32(vadd_s32(v16, 0x400000003), v11), vcgt_s32(0xFFFFFFFCFFFFFFFDLL, v16));
        v15 = &unk_2775F0C28 + 8 * (v14 >> 8);
        v25 = (64 - (v18 * *v15 + v20 * v15[1] + v22 * v15[2] + *(a3 + 2 * v21) * v15[3] + *(a3 + 2 * v23.i32[0]) * v15[4] + *(a3 + 2 * v23.i32[1]) * v15[5] + *(a3 + 2 * v24.i32[0]) * v15[6] + *(a3 + 2 * v24.i32[1]) * v15[7])) >> 7;
        if (v25 >= a10)
        {
          v26 = a10;
        }

        else
        {
          v26 = (64 - (v18 * *v15 + v20 * v15[1] + v22 * v15[2] + *(a3 + 2 * v21) * v15[3] + *(a3 + 2 * v23.i32[0]) * v15[4] + *(a3 + 2 * v23.i32[1]) * v15[5] + *(a3 + 2 * v24.i32[0]) * v15[6] + *(a3 + 2 * v24.i32[1]) * v15[7])) >> 7;
        }

        if (v25 >= 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        *(result + v12) = v27;
        v13 += (v14 + a8) >> 14;
        v14 = (v14 + a8) & 0x3FFF;
        v12 += 2;
      }

      while (2 * a5 != v12);
    }

    a3 += 2 * v28;
    result += a2;
    --a6;
  }

  while (a6);
  return result;
}

void *sub_2775C3B08(void *result, int a2, int a3, int a4, int a5, int a6, char *__dst, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = __dst;
  v11 = result - 1;
  if (-a5 < result - 1)
  {
    v12 = -a5;
  }

  else
  {
    v12 = result - 1;
  }

  if (a5 > 0)
  {
    v12 = 0;
  }

  v55 = result;
  v13 = result - a3 + a5;
  if (v13 < v11)
  {
    v11 = result - a3 + a5;
  }

  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v66 = v14;
  v15 = a2 - 1;
  if (-a6 < a2 - 1)
  {
    v16 = -a6;
  }

  else
  {
    v16 = a2 - 1;
  }

  if (a6 <= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = a2 - a4 + a6;
  if (v18 < v15)
  {
    v15 = a2 - a4 + a6;
  }

  if (v18 >= 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  v20 = (a8 >> 1) * v17;
  v53 = v19;
  v54 = &__dst[2 * v20];
  v63 = a2 - (v19 + v17);
  v64 = a8 >> 1;
  v21 = 2 * (a8 >> 1);
  if (v63 >= 1)
  {
    v22 = 0;
    v23 = v12;
    v24 = result - (v12 + v66);
    v25 = a4 - 1;
    if (a6 < a4 - 1)
    {
      v25 = a6;
    }

    if (a6 < 0)
    {
      v25 = 0;
    }

    v26 = a9 + 2 * (a10 >> 1) * v25;
    v27 = a3 - 1;
    if (a5 < a3 - 1)
    {
      v27 = a5;
    }

    if (a5 < 0)
    {
      v27 = 0;
    }

    v28 = (v26 + 2 * v27);
    v61 = 2 * v24;
    v57 = v23 + v24 - 1;
    v56 = (v23 + 7) & 0xFFFFFFF8;
    v29 = &__dst[2 * v20];
    v30 = v54 + 8;
    v65 = v23;
    v31 = &__dst[2 * v20 + 8 + 2 * v23 + 2 * v24];
    v62 = 2 * (a8 >> 1);
    v59 = vdupq_n_s64(v66 - 1);
    v60 = vdupq_n_s64(v23 - 1);
    v58 = vdupq_n_s64(8uLL);
    do
    {
      result = memcpy(&v29[2 * v65], v28, v61);
      if (v65 > 0)
      {
        v32 = v30;
        v33 = v56;
        v34 = *&v29[2 * v65];
        v35 = xmmword_2775ED490;
        v36 = xmmword_2775ED480;
        v37 = xmmword_2775ED470;
        v38 = xmmword_2775ED460;
        do
        {
          v39 = vmovn_s64(vcgeq_u64(v60, v35));
          if (vuzp1_s8(vuzp1_s16(v39, *v35.i8), *v35.i8).u8[0])
          {
            *(v32 - 4) = v34;
          }

          if (vuzp1_s8(vuzp1_s16(v39, *&v35), *&v35).i8[1])
          {
            *(v32 - 3) = v34;
          }

          if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v60, *&v36))), *&v35).i8[2])
          {
            *(v32 - 2) = v34;
            *(v32 - 1) = v34;
          }

          v40 = vmovn_s64(vcgeq_u64(v60, v37));
          if (vuzp1_s8(*&v35, vuzp1_s16(v40, *&v35)).i32[1])
          {
            *v32 = v34;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(v40, *&v35)).i8[5])
          {
            *(v32 + 1) = v34;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v60, *&v38)))).i8[6])
          {
            *(v32 + 2) = v34;
            *(v32 + 3) = v34;
          }

          v41 = vdupq_n_s64(8uLL);
          v37 = vaddq_s64(v37, v41);
          v36 = vaddq_s64(v36, v41);
          v35 = vaddq_s64(v35, v41);
          v38 = vaddq_s64(v38, v41);
          v32 += 16;
          v33 -= 8;
        }

        while (v33);
      }

      v21 = v62;
      if (v66 > 0)
      {
        v42 = *&v29[2 * v57];
        v43 = v31;
        v44 = (v66 + 7) & 0xFFFFFFF8;
        v45 = xmmword_2775ED490;
        v46 = xmmword_2775ED480;
        v47 = xmmword_2775ED470;
        v48 = xmmword_2775ED460;
        do
        {
          v49 = vmovn_s64(vcgeq_u64(v59, v45));
          if (vuzp1_s8(vuzp1_s16(v49, *v45.i8), *v45.i8).u8[0])
          {
            *(v43 - 4) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(v49, *&v45), *&v45).i8[1])
          {
            *(v43 - 3) = v42;
          }

          if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v59, *&v46))), *&v45).i8[2])
          {
            *(v43 - 2) = v42;
            *(v43 - 1) = v42;
          }

          v50 = vmovn_s64(vcgeq_u64(v59, v47));
          if (vuzp1_s8(*&v45, vuzp1_s16(v50, *&v45)).i32[1])
          {
            *v43 = v42;
          }

          if (vuzp1_s8(*&v45, vuzp1_s16(v50, *&v45)).i8[5])
          {
            *(v43 + 1) = v42;
          }

          if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v59, *&v48)))).i8[6])
          {
            *(v43 + 2) = v42;
            *(v43 + 3) = v42;
          }

          v47 = vaddq_s64(v47, v58);
          v46 = vaddq_s64(v46, v58);
          v45 = vaddq_s64(v45, v58);
          v43 += 16;
          v48 = vaddq_s64(v48, v58);
          v44 -= 8;
        }

        while (v44);
      }

      v28 += 2 * (a10 >> 1);
      v29 += 2 * v64;
      ++v22;
      v30 += v62;
      v31 += v62;
    }

    while (v22 != v63);
  }

  v51 = 2 * v55;
  if (v17 < 1)
  {
    v52 = v53;
  }

  else
  {
    v52 = v53;
    do
    {
      result = memcpy(v10, v54, v51);
      v10 += v21;
      --v17;
    }

    while (v17);
  }

  if (v52 >= 1)
  {
    do
    {
      result = memcpy(&v10[2 * v64 * v63], &v10[v64 * (2 * v63 - 2)], v51);
      v10 += v21;
      --v52;
    }

    while (v52);
  }

  return result;
}

uint64_t sub_2775C3FB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, __int16 *a5, int a6, int a7, unsigned int a8)
{
  v8 = 0;
  v31[22] = *MEMORY[0x277D85DE8];
  v9 = &v30;
  v10 = (a3 - 6 * (a4 >> 1));
  v11 = 25 - __clz(a8);
  v12 = *a5;
  v13 = a5[1];
  v14 = a6 + 512;
  do
  {
    v15 = 0;
    v16 = *(v10 - 3);
    v17 = v10[1];
    v18 = v10[2];
    v19 = v14;
    v20 = v10[3];
    do
    {
      v21 = vmovl_u16(v16);
      v16 = vext_s8(v16, v16, 2uLL);
      v16.i16[3] = v17;
      v22.i16[0] = v17;
      v22.i16[1] = v18;
      v17 = v18;
      v18 = v20;
      v20 = v10[v15 + 4];
      v23 = vmovl_s8(*(&unk_2775F0620 + 8 * (v19 >> 10) + 512));
      v22.i16[2] = v18;
      v22.i16[3] = v20;
      *&v9[v15 * 2] = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_u16(v22), vmovl_high_s16(v23)), v21, vmovl_s16(*v23.i8))) + ((1 << v11) >> 1)) >> v11;
      ++v15;
      v19 += v12;
    }

    while (v15 != 8);
    v10 = (v10 + a4);
    v9 += 16;
    ++v8;
    v14 += v13;
  }

  while (v8 != 15);
  v24 = 0;
  v25 = v31;
  do
  {
    v26 = 0;
    v27 = v25;
    v28 = a7;
    do
    {
      v29 = &unk_2775F0620 + 8 * ((v28 + 512) >> 10);
      *(result + 2 * v26++) = ((*(v27 - 24) * v29[513] + *(v27 - 32) * v29[512] + *(v27 - 16) * v29[514] + *(v27 - 8) * v29[515] + *v27 * v29[516] + v27[8] * v29[517] + v27[16] * v29[518] + v27[24] * v29[519] + 64) >> 7) - 0x2000;
      v28 += a5[2];
      ++v27;
    }

    while (v26 != 8);
    ++v24;
    a7 += a5[3];
    result += 2 * a2;
    v25 += 8;
  }

  while (v24 != 8);
  return result;
}

uint64_t sub_2775C41C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, __int16 *a5, int a6, int a7, signed int a8)
{
  v8 = 0;
  v35[22] = *MEMORY[0x277D85DE8];
  v9 = &v34;
  v10 = __clz(a8);
  v11 = (a3 - 6 * (a4 >> 1));
  v12 = *a5;
  v13 = a5[1];
  v14 = a6 + 512;
  do
  {
    v15 = 0;
    v16 = *(v11 - 3);
    v17 = v11[1];
    v18 = v11[2];
    v19 = v14;
    v20 = v11[3];
    do
    {
      v21 = vmovl_u16(v16);
      v16 = vext_s8(v16, v16, 2uLL);
      v16.i16[3] = v17;
      v22.i16[0] = v17;
      v22.i16[1] = v18;
      v17 = v18;
      v18 = v20;
      v20 = v11[v15 + 4];
      v23 = vmovl_s8(*(&unk_2775F0620 + 8 * (v19 >> 10) + 512));
      v22.i16[2] = v18;
      v22.i16[3] = v20;
      *(v9 + v15 * 2) = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_u16(v22), vmovl_high_s16(v23)), v21, vmovl_s16(*v23.i8))) + ((1 << (25 - v10)) >> 1)) >> (25 - v10);
      ++v15;
      v19 += v12;
    }

    while (v15 != 8);
    v11 = (v11 + a4);
    v9 += 2;
    ++v8;
    v14 += v13;
  }

  while (v8 != 15);
  v24 = 0;
  v25 = v10 - 11;
  v26 = v35;
  do
  {
    v27 = 0;
    v28 = v26;
    v29 = a7;
    do
    {
      v30 = &unk_2775F0620 + 8 * ((v29 + 512) >> 10);
      v31 = (((1 << v25) >> 1) + *(v28 - 32) * v30[512] + *(v28 - 24) * v30[513] + *(v28 - 16) * v30[514] + *(v28 - 8) * v30[515] + *v28 * v30[516] + v28[8] * v30[517] + v28[16] * v30[518] + v28[24] * v30[519]) >> v25;
      if (v31 >= a8)
      {
        v32 = a8;
      }

      else
      {
        v32 = v31;
      }

      if (v31 >= 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      *(result + 2 * v27++) = v33;
      v29 += a5[2];
      ++v28;
    }

    while (v27 != 8);
    ++v24;
    a7 += a5[3];
    result += a2;
    v26 += 8;
  }

  while (v24 != 8);
  return result;
}

uint64_t sub_2775C442C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, int a9, int a10, signed int a11)
{
  v11 = __clz(a11);
  v12 = 32 << (v11 - 18);
  v13 = v11 - 12;
  v14 = v12 + 0x80000;
  v15 = a2 >> 1;
  do
  {
    if (a5 >= 1)
    {
      LODWORD(v16) = 0;
      do
      {
        v17 = *(a3 + 2 * v16);
        v18 = *(a4 + 2 * v16);
        v19 = v16;
        v20 = v17 - v18;
        if (v17 - v18 < 0)
        {
          v20 = v18 - v17;
        }

        v21 = (v20 + 32) >> 10;
        if (v21 >= 0x1A)
        {
          v21 = 26;
        }

        v22 = v21 + 38;
        v23 = (v14 + (26 - v21) * v18 + (v21 + 38) * v17) >> v13;
        if (v23 >= a11)
        {
          v24 = a11;
        }

        else
        {
          v24 = v23;
        }

        if (v23 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        *(result + 2 * v16) = v25;
        if (a9)
        {
          v16 = v16 + 1;
          v26 = *(a3 + 2 * (v19 + 1));
          v27 = *(a4 + 2 * (v19 + 1));
          v28 = v26 - v27;
          if (v26 - v27 < 0)
          {
            v28 = v27 - v26;
          }

          v29 = (v28 + 32) >> 10;
          if (v29 >= 0x1A)
          {
            v30 = 26;
          }

          else
          {
            v30 = v29;
          }

          v31 = v30 + 38;
          v32 = (v14 + (26 - v30) * v27 + (v30 + 38) * v26) >> v13;
          if (v32 >= a11)
          {
            v33 = a11;
          }

          else
          {
            v33 = v32;
          }

          if (v32 >= 0)
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          *(result + 2 * v16) = v34;
          if ((a6 & a10) != 0)
          {
            v35 = v16 >> 1;
            v36 = (v21 - a8 + *(a7 + (v16 >> 1)) + v31 + 40) >> 2;
          }

          else
          {
            if (a10)
            {
              LOBYTE(v36) = v31 + v22;
            }

            else
            {
              v36 = (v21 - a8 + v31 + 39) >> 1;
            }

            v35 = v16 >> 1;
          }

          *(a7 + v35) = v36;
        }

        else
        {
          *(a7 + v16) = v22;
        }

        LODWORD(v16) = v16 + 1;
      }

      while (v16 < a5);
    }

    a3 += 2 * a5;
    v37 = (a6 & 1) != 0 || a10 == 0;
    a4 += 2 * a5;
    result += 2 * v15;
    if (v37)
    {
      v38 = a5 >> a9;
    }

    else
    {
      v38 = 0;
    }

    a7 += v38;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_2775C4604(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = &byte_2775F05E0[a5];
  v6 = (3 * a5) >> 2;
  do
  {
    v8 = *v5++;
    v7 = v8;
    if (a4 >= 1)
    {
      v9 = 0;
      do
      {
        *(result + v9) = (*(a3 + v9) * v7 + (64 - v7) * *(result + v9) + 32) >> 6;
        v9 += 2;
      }

      while (2 * a4 != v9);
    }

    a3 += 2 * a4;
    result += a2;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_2775C4674(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = ((3 * a4) >> 2);
  do
  {
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        *(result + 2 * i) = ((64 - byte_2775F05E0[a4 + i]) * *(result + 2 * i) + *(a3 + 2 * i) * byte_2775F05E0[a4 + i] + 32) >> 6;
      }
    }

    a3 += 2 * a4;
    result += a2;
    --a5;
  }

  while (a5);
  return result;
}

uint64_t sub_2775C46E0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  do
  {
    if (a4 >= 1)
    {
      for (i = 0; i != a4; ++i)
      {
        *(result + 2 * i) = ((64 - *(a6 + i)) * *(result + 2 * i) + *(a3 + 2 * i) * *(a6 + i) + 32) >> 6;
      }
    }

    a6 += a4;
    a3 += 2 * a4;
    result += a2;
    --a5;
  }

  while (a5);
  return result;
}

uint64_t sub_2775C4744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, signed int a8)
{
  v8 = __clz(a8);
  v9 = 32 << (v8 - 18);
  v10 = v8 - 12;
  v11 = v9 + 0x80000;
  v12 = 2 * a5;
  do
  {
    if (a5 >= 1)
    {
      for (i = 0; i != a5; *(result + 2 * i++) = v16)
      {
        v14 = (v11 + *(a7 + i) * *(a3 + 2 * i) + (64 - *(a7 + i)) * *(a4 + 2 * i)) >> v10;
        if (v14 >= a8)
        {
          LOWORD(v15) = a8;
        }

        else
        {
          v15 = (v11 + *(a7 + i) * *(a3 + 2 * i) + (64 - *(a7 + i)) * *(a4 + 2 * i)) >> v10;
        }

        if (v14 >= 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    a7 += a5;
    result += a2;
    a4 += v12;
    a3 += v12;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_2775C47D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, signed int a8)
{
  v8 = __clz(a8);
  v9 = v8 - 18;
  v10 = v8 - 14;
  v11 = (8 << v9) + 0x20000;
  v12 = 2 * a5;
  do
  {
    if (a5 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = (v11 + *(a3 + v13) * a7 + (16 - a7) * *(a4 + v13)) >> v10;
        if (v14 >= a8)
        {
          LOWORD(v15) = a8;
        }

        else
        {
          v15 = (v11 + *(a3 + v13) * a7 + (16 - a7) * *(a4 + v13)) >> v10;
        }

        if (v14 >= 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        *(result + v13) = v16;
        v13 += 2;
      }

      while (2 * a5 != v13);
    }

    result += a2;
    a4 += v12;
    a3 += v12;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_2775C4858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, signed int a7)
{
  v7 = __clz(a7);
  v8 = 1 << (v7 - 18);
  v9 = v7 - 17;
  v10 = v8 + 0x4000;
  v11 = 2 * a5;
  do
  {
    if (a5 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = (v10 + *(a3 + v12) + *(a4 + v12)) >> v9;
        if (v13 >= a7)
        {
          LOWORD(v14) = a7;
        }

        else
        {
          v14 = (v10 + *(a3 + v12) + *(a4 + v12)) >> v9;
        }

        if (v13 >= 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        *(result + v12) = v15;
        v12 += 2;
      }

      while (2 * a5 != v12);
    }

    result += a2;
    a4 += v11;
    a3 += v11;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_2775C48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10)
{
  result = MEMORY[0x28223BE20]();
  v18 = v17 >> 1;
  v19 = 22 - __clz(a10);
  v31 = *MEMORY[0x277D85DE8];
  v20 = ((v15 + (v13 - 1) * a9) >> 10) + 2;
  v21 = v30;
  do
  {
    if (v12 >= 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = v14;
      do
      {
        *&v21[v22] = (((1 << v19) >> 1) + 16 * *(v11 + 2 * v23) + (*(v11 + 2 * v23 + 2) - *(v11 + 2 * v23)) * (v24 >> 6)) >> v19;
        v25 = v24 + v16;
        v23 += v25 >> 10;
        v24 = v25 & 0x3FF;
        v22 += 2;
      }

      while (2 * v12 != v22);
    }

    v21 += 256;
    v11 += 2 * v18;
    --v20;
  }

  while (v20);
  v26 = v30;
  do
  {
    if (v12 >= 1)
    {
      v27 = (v26 + 256);
      v28 = result;
      v29 = v12;
      do
      {
        *v28++ = (((*v27 - *(v27 - 128)) * (v15 >> 6) + 16 * *(v27 - 128) + 8) >> 4) - 0x2000;
        ++v27;
        --v29;
      }

      while (v29);
    }

    v26 += 2 * (((v15 + a9) >> 3) & 0xFFFFFF80);
    v15 = (v15 + a9) & 0x3FF;
    result += 2 * v12;
    --v13;
  }

  while (v13);
  return result;
}

uint64_t sub_2775C4A58()
{
  result = MEMORY[0x28223BE20]();
  v25 = *MEMORY[0x277D85DE8];
  v7 = __clz(v6);
  v9 = v8 >> 1;
  if (v4)
  {
    v10 = 22 - v7;
    v11 = (1 << v10) >> 1;
    if (v5)
    {
      v12 = v3 + 1;
      v13 = v24;
      do
      {
        if (v2 >= 1)
        {
          v14 = 0;
          v15 = *v1;
          do
          {
            v16 = v1[v14 + 1];
            *&v13[v14 * 2] = (v11 + 16 * v15 + (v16 - v15) * v4) >> v10;
            ++v14;
            v15 = v16;
          }

          while (v2 != v14);
        }

        v13 += 256;
        v1 += v9;
        --v12;
      }

      while (v12);
      v17 = v24;
      do
      {
        if (v2 >= 1)
        {
          v18 = 0;
          do
          {
            *(result + v18) = (((*&v17[v18 + 256] - *&v17[v18]) * v5 + 16 * *&v17[v18] + 8) >> 4) - 0x2000;
            v18 += 2;
          }

          while (2 * v2 != v18);
        }

        v17 += 256;
        result += 2 * v2;
        --v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        if (v2 >= 1)
        {
          for (i = 0; i != v2; ++i)
          {
            *(result + i * 2) = ((v11 + 16 * v1[i] + (v1[i + 1] - v1[i]) * v4) >> v10) - 0x2000;
          }
        }

        result += 2 * v2;
        v1 += v9;
        --v3;
      }

      while (v3);
    }
  }

  else if (v5)
  {
    v19 = 22 - v7;
    v20 = 2 * v9;
    v21 = &v1[v9];
    do
    {
      if (v2 >= 1)
      {
        for (j = 0; j != v2; ++j)
        {
          *(result + j * 2) = ((((1 << v19) >> 1) + 16 * v1[j] + (v21[j] - v1[j]) * v5) >> v19) - 0x2000;
        }
      }

      result += 2 * v2;
      v21 = (v21 + v20);
      v1 = (v1 + v20);
      --v3;
    }

    while (v3);
  }

  else
  {

    return sub_2775C4CC4(result, v1, v9, v2, v3, v6);
  }

  return result;
}

uint64_t sub_2775C4CC4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v6 = __clz(a6) - 18;
  do
  {
    if (a4 >= 1)
    {
      v7 = 0;
      do
      {
        *(result + v7) = (*(a2 + v7) << v6) - 0x2000;
        v7 += 2;
      }

      while (2 * a4 != v7);
    }

    result += 2 * a4;
    a2 += 2 * a3;
    --a5;
  }

  while (a5);
  return result;
}

uint64_t sub_2775C4D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, signed int a11)
{
  result = MEMORY[0x28223BE20]();
  v18 = __clz(a11);
  v20 = v19 >> 1;
  v37 = *MEMORY[0x277D85DE8];
  v21 = ((v17 + (v15 - 1) * a10) >> 10) + 2;
  v22 = v36;
  do
  {
    if (v14 >= 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = v16;
      do
      {
        *&v22[v23] = (((1 << (22 - v18)) >> 1) + 16 * *(v13 + 2 * v24) + (*(v13 + 2 * v24 + 2) - *(v13 + 2 * v24)) * (v25 >> 6)) >> (22 - v18);
        v26 = v25 + a9;
        v24 += v26 >> 10;
        v25 = v26 & 0x3FF;
        v23 += 2;
      }

      while (2 * v14 != v23);
    }

    v22 += 256;
    v13 += 2 * v20;
    --v21;
  }

  while (v21);
  v27 = v18 - 14;
  v28 = (1 << (v18 - 14)) >> 1;
  v29 = v36;
  do
  {
    if (v14 >= 1)
    {
      v30 = (v29 + 256);
      v31 = result;
      v32 = v14;
      do
      {
        v33 = (v28 + 16 * *(v30 - 128) + (*v30 - *(v30 - 128)) * (v17 >> 6)) >> v27;
        if (v33 >= a11)
        {
          v34 = a11;
        }

        else
        {
          v34 = (v28 + 16 * *(v30 - 128) + (*v30 - *(v30 - 128)) * (v17 >> 6)) >> v27;
        }

        if (v33 >= 0)
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        *v31++ = v35;
        ++v30;
        --v32;
      }

      while (v32);
    }

    v29 += 2 * (((v17 + a10) >> 3) & 0xFFFFFF80);
    v17 = (v17 + a10) & 0x3FF;
    result += v12;
    --v15;
  }

  while (v15);
  return result;
}

char *sub_2775C4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, signed int a9)
{
  result = MEMORY[0x28223BE20]();
  v47 = *MEMORY[0x277D85DE8];
  v16 = v15 >> 1;
  v18 = v17 >> 1;
  if (v13)
  {
    v19 = __clz(a9);
    if (v14)
    {
      v20 = v12 + 1;
      v21 = 2 * v18;
      v22 = v46;
      do
      {
        if (v11 >= 1)
        {
          v23 = 0;
          v24 = *v10;
          do
          {
            v25 = *&v10[v23 + 2];
            *&v22[v23] = (((1 << (22 - v19)) >> 1) + 16 * v24 + (v25 - v24) * v13) >> (22 - v19);
            v23 += 2;
            v24 = v25;
          }

          while (2 * v11 != v23);
        }

        v22 += 256;
        v10 += v21;
        --v20;
      }

      while (v20);
      v26 = v19 - 14;
      v27 = v46;
      do
      {
        if (v11 >= 1)
        {
          v28 = 0;
          do
          {
            v29 = (((1 << v26) >> 1) + 16 * *&v27[v28] + (*&v27[v28 + 256] - *&v27[v28]) * v14) >> v26;
            if (v29 >= a9)
            {
              v30 = a9;
            }

            else
            {
              v30 = (((1 << v26) >> 1) + 16 * *&v27[v28] + (*&v27[v28 + 256] - *&v27[v28]) * v14) >> v26;
            }

            if (v29 >= 0)
            {
              v31 = v30;
            }

            else
            {
              v31 = 0;
            }

            *&result[v28] = v31;
            v28 += 2;
          }

          while (2 * v11 != v28);
        }

        v27 += 256;
        result += 2 * v16;
        --v12;
      }

      while (v12);
    }

    else
    {
      v38 = v19 - 18;
      v39 = (1 << (v19 - 18)) >> 1;
      v40 = 22 - v19;
      v41 = 2 * v16;
      do
      {
        if (v11 >= 1)
        {
          v42 = 0;
          do
          {
            v43 = (((((1 << v40) >> 1) + 16 * *&v10[v42] + (*&v10[v42 + 2] - *&v10[v42]) * v13) >> v40) + v39) >> v38;
            if (v43 >= a9)
            {
              v44 = a9;
            }

            else
            {
              v44 = (((((1 << v40) >> 1) + 16 * *&v10[v42] + (*&v10[v42 + 2] - *&v10[v42]) * v13) >> v40) + v39) >> v38;
            }

            if (v43 >= 0)
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            *&result[v42] = v45;
            v42 += 2;
          }

          while (2 * v11 != v42);
        }

        result += v41;
        v10 += 2 * v18;
        --v12;
      }

      while (v12);
    }
  }

  else if (v14)
  {
    v32 = 2 * v18;
    v33 = &v10[2 * v18];
    do
    {
      if (v11 >= 1)
      {
        v34 = 0;
        do
        {
          v35 = ((*&v33[v34] - *&v10[v34]) * v14 + 16 * *&v10[v34] + 8) >> 4;
          if (v35 >= a9)
          {
            v36 = a9;
          }

          else
          {
            v36 = ((*&v33[v34] - *&v10[v34]) * v14 + 16 * *&v10[v34] + 8) >> 4;
          }

          if (v35 >= 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          *&result[v34] = v37;
          v34 += 2;
        }

        while (2 * v11 != v34);
      }

      result += 2 * v16;
      v33 += v32;
      v10 += v32;
      --v12;
    }

    while (v12);
  }

  else
  {

    return sub_2775C5178(result, v16, v10, v18, v11, v12);
  }

  return result;
}

void *sub_2775C5178(char *__dst, uint64_t a2, char *__src, uint64_t a4, int a5, int a6)
{
  v9 = 2 * a5;
  v10 = 2 * a4;
  v11 = 2 * a2;
  do
  {
    result = memcpy(__dst, __src, v9);
    __src += v10;
    __dst += v11;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_2775C5210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11)
{
  result = MEMORY[0x28223BE20]();
  v45[8320] = *MEMORY[0x277D85DE8];
  v17 = __clz(a11);
  v18 = ((v15 + (v13 - 1) * a9) >> 10) + 8;
  v42 = v19 >> 1;
  v21 = v20 - 6 * (v19 >> 1);
  v22 = &v44;
  do
  {
    v43 = v18;
    if (v12 >= 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = v14;
      do
      {
        if (v25 >= 0x40)
        {
          v27 = 8 * (v25 >> 6) - 8;
          v28 = &unk_2775F0310 + 120 * (a10 & 1) + v27 + 360;
          v29 = &unk_2775F0310 + 120 * (a10 & 3) + v27;
          if (v12 <= 4)
          {
            v29 = v28;
          }

          v30 = (v21 + 2 * v24);
          v26 = (((1 << (24 - v17)) >> 1) + *(v30 - 3) * *v29 + *(v30 - 2) * v29[1] + *(v30 - 1) * v29[2] + *v30 * v29[3] + v30[1] * v29[4] + v30[2] * v29[5] + v30[3] * v29[6] + v30[4] * v29[7]) >> (24 - v17);
        }

        else
        {
          v26 = *(v21 + 2 * v24) << (v17 - 18);
        }

        *&v22[v23] = v26;
        v24 += (v25 + v16) >> 10;
        v25 = (v25 + v16) & 0x3FF;
        v23 += 2;
      }

      while (2 * v12 != v23);
    }

    v22 += 256;
    v21 += 2 * v42;
    --v18;
  }

  while (v43 != 1);
  v31 = v15;
  if (v13 >= 1)
  {
    v32 = 0;
    v33 = v45;
    do
    {
      if (v31 >= 0x40)
      {
        v34 = v31;
        v36 = (v31 >> 6) - 1;
        v37 = &unk_2775F0310 + 120 * ((a10 >> 2) & 1) + 8 * v36 + 360;
        v38 = &unk_2775F0310 + 120 * (a10 >> 2) + 8 * v36;
        if (v13 >= 5)
        {
          v35 = v38;
        }

        else
        {
          v35 = v37;
        }
      }

      else
      {
        v34 = v31;
        v35 = 0;
      }

      if (v12 >= 1)
      {
        v39 = 0;
        v40 = (v33 - 96);
        do
        {
          if (v35)
          {
            v41 = (v40[128] * v35[1] + *v40 * *v35 + v40[256] * v35[2] + v40[384] * v35[3] + v40[512] * v35[4] + v40[640] * v35[5] + v40[768] * v35[6] + v40[896] * v35[7] + 32) >> 6;
          }

          else
          {
            LOWORD(v41) = v40[384];
          }

          *(result + 2 * v39++) = v41 - 0x2000;
          ++v40;
        }

        while (v12 != v39);
      }

      v33 = (v33 + 2 * (((v34 + a9) >> 3) & 0xFFFFFF80));
      v31 = (v34 + a9) & 0x3FF;
      ++v32;
      result += 2 * v12;
    }

    while (v32 != v13);
  }

  return result;
}

uint64_t sub_2775C5590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  result = MEMORY[0x28223BE20]();
  v79 = *MEMORY[0x277D85DE8];
  v17 = __clz(a9);
  if (v14)
  {
    v18 = v16 & 3;
    if (v12 <= 4)
    {
      v18 = (v16 & 1) + 3;
    }

    v19 = (&unk_2775F0310 + 120 * v18 + 8 * v14 - 8);
    if (!v15)
    {
      v20 = 24 - v17;
      v21 = (1 << (24 - v17)) >> 1;
      do
      {
        if (v12 >= 1)
        {
          v22 = 0;
          v23 = vmovl_s8(*v19);
          v24 = vmovl_high_s16(v23);
          v25 = vmovl_s16(*v23.i8);
          do
          {
            *(result + v22) = ((vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_u16(*(v10 + v22 - 6)), v24), vmovl_u16(*(v10 + v22 - 6)), v25)) + v21) >> v20) - 0x2000;
            v22 += 2;
          }

          while (2 * v12 != v22);
        }

        result += 2 * v12;
        v10 += v11;
        --v13;
      }

      while (v13);
      return result;
    }

    goto LABEL_13;
  }

  if (v15)
  {
    v19 = 0;
LABEL_13:
    v26 = v16 >> 2;
    if (v13 <= 4)
    {
      v26 = ((v16 >> 2) & 1) + 3;
    }

    v27 = &unk_2775F0310 + 120 * v26 + 8 * v15 - 8;
    v28 = v11 >> 1;
    v29 = 24 - v17;
    v30 = (1 << v29) >> 1;
    if (v19)
    {
      v31 = v13 + 7;
      v32 = (v10 - 6 * v28);
      v33 = 2 * v28;
      v34 = v78;
      do
      {
        if (v12 >= 1)
        {
          v35 = 0;
          v36 = *(v32 - 3);
          v37 = v32[1];
          v38 = v32[2];
          v39 = v32[3];
          v40 = vmovl_s8(*v19);
          v41 = vmovl_high_s16(v40);
          v42 = vmovl_s16(*v40.i8);
          do
          {
            v43.i16[0] = v37;
            v44 = vmovl_u16(v36);
            v36 = vext_s8(v36, v36, 2uLL);
            v36.i16[3] = v37;
            v37 = v38;
            v43.i16[1] = v38;
            v38 = v39;
            v39 = v32[v35 + 4];
            v43.i16[2] = v38;
            v43.i16[3] = v39;
            *&v34[v35 * 2] = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_u16(v43), v41), v44, v42)) + v30) >> v29;
            ++v35;
          }

          while (v12 != v35);
        }

        v34 += 256;
        v32 = (v32 + v33);
        --v31;
      }

      while (v31);
      v45 = v78;
      do
      {
        if (v12 >= 1)
        {
          v46 = 0;
          v47 = *v27;
          v48 = v27[1];
          v49 = v27[2];
          v50 = v27[3];
          v51 = v27[4];
          v52 = v27[5];
          v53 = v27[6];
          v54 = v45;
          v55 = v27[7];
          do
          {
            *(result + 2 * v46++) = ((v54[128] * v48 + *v54 * v47 + v54[256] * v49 + v54[384] * v50 + v54[512] * v51 + v54[640] * v52 + v54[768] * v53 + v54[896] * v55 + 32) >> 6) - 0x2000;
            ++v54;
          }

          while (v12 != v46);
        }

        result += 2 * v12;
        v45 += 128;
        --v13;
      }

      while (v13);
    }

    else
    {
      v56 = 2 * v12;
      v75 = 2 * v12;
      v76 = v12;
      v57 = v10 + 4 * v11;
      v74 = 2 * v28;
      v58 = v10 + 6 * v28;
      v59 = v10 + 2 * v11;
      v60 = v10 + 2 * v28;
      v61 = v10 - 2 * v28;
      v62 = v10 - 6 * v28;
      v63 = v10 - 2 * v11;
      do
      {
        v77 = v13;
        if (v12 >= 1)
        {
          v64 = 0;
          v65 = *v27;
          v66 = v27[1];
          v67 = v27[2];
          v68 = v27[3];
          v69 = v27[4];
          v70 = v27[5];
          v71 = v27[6];
          v72 = v27[7];
          do
          {
            *(result + v64) = ((v30 + *(v62 + v64) * v65 + *(v63 + v64) * v66 + *(v61 + v64) * v67 + *(v10 + v64) * v68 + *(v60 + v64) * v69 + *(v59 + v64) * v70 + *(v58 + v64) * v71 + *(v57 + v64) * v72) >> v29) - 0x2000;
            v64 += 2;
          }

          while (v56 != v64);
        }

        v12 = v76;
        result += v75;
        v57 += v74;
        v58 += v74;
        v59 += v74;
        v60 += v74;
        v10 += v74;
        v61 += v74;
        v63 += v74;
        v62 += v74;
        --v13;
      }

      while (v77 != 1);
    }

    return result;
  }

  v73 = v11 >> 1;

  return sub_2775C4CC4(result, v10, v73, v12, v13, a9);
}

uint64_t sub_2775C5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, unsigned int a11, signed int a12)
{
  result = MEMORY[0x28223BE20]();
  v49[8320] = *MEMORY[0x277D85DE8];
  v19 = __clz(a12);
  v47 = v19 - 18;
  v20 = ((v18 + (v16 - 1) * a10) >> 10) + 8;
  v22 = v21 - 6 * (v14 >> 1);
  v45 = v19;
  v23 = &v48;
  do
  {
    v46 = v20;
    if (v15 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = v17;
      do
      {
        if (v26 >= 0x40)
        {
          v28 = 8 * (v26 >> 6) - 8;
          v29 = &unk_2775F0310 + 120 * (a11 & 1) + v28 + 360;
          v30 = &unk_2775F0310 + 120 * (a11 & 3) + v28;
          if (v15 <= 4)
          {
            v30 = v29;
          }

          v31 = (v22 + 2 * v25);
          v27 = (((1 << (24 - v19)) >> 1) + *(v31 - 3) * *v30 + *(v31 - 2) * v30[1] + *(v31 - 1) * v30[2] + *v31 * v30[3] + v31[1] * v30[4] + v31[2] * v30[5] + v31[3] * v30[6] + v31[4] * v30[7]) >> (24 - v19);
        }

        else
        {
          v27 = *(v22 + 2 * v25) << v47;
        }

        *&v23[v24] = v27;
        v25 += (v26 + a9) >> 10;
        v26 = (v26 + a9) & 0x3FF;
        v24 += 2;
      }

      while (2 * v15 != v24);
    }

    v23 += 256;
    v22 += 2 * (v14 >> 1);
    --v20;
  }

  while (v46 != 1);
  v32 = v18;
  if (v16 >= 1)
  {
    v33 = 0;
    v34 = v49;
    v35 = v19 - 12;
    do
    {
      if (v32 >= 0x40)
      {
        v36 = v32;
        v38 = (v32 >> 6) - 1;
        v39 = &unk_2775F0310 + 120 * ((a11 >> 2) & 1) + 8 * v38 + 360;
        v40 = &unk_2775F0310 + 120 * (a11 >> 2) + 8 * v38;
        if (v16 >= 5)
        {
          v37 = v40;
        }

        else
        {
          v37 = v39;
        }
      }

      else
      {
        v36 = v32;
        v37 = 0;
      }

      if (v15 >= 1)
      {
        v41 = 0;
        v42 = (v34 - 96);
        do
        {
          if (v37)
          {
            v43 = (((1 << (v45 - 12)) >> 1) + *v42 * *v37 + v42[128] * v37[1] + v42[256] * v37[2] + v42[384] * v37[3] + v42[512] * v37[4] + v42[640] * v37[5] + v42[768] * v37[6] + v42[896] * v37[7]) >> v35;
          }

          else
          {
            v43 = (((1 << v47) >> 1) + v42[384]) >> v47;
          }

          if (v43 >= a12)
          {
            v44 = a12;
          }

          else
          {
            v44 = v43;
          }

          if (v43 < 0)
          {
            v44 = 0;
          }

          *(result + 2 * v41++) = v44;
          ++v42;
        }

        while (v15 != v41);
      }

      v34 = (v34 + 2 * (((v36 + a10) >> 3) & 0xFFFFFF80));
      v32 = (v36 + a10) & 0x3FF;
      ++v33;
      result += v13;
    }

    while (v33 != v16);
  }

  return result;
}

char *sub_2775C5DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, signed int a10)
{
  result = MEMORY[0x28223BE20]();
  v71 = *MEMORY[0x277D85DE8];
  if (v16)
  {
    if (v14 < 5)
    {
      v18 = (a9 & 1) + 3;
    }

    else
    {
      v18 = a9 & 3;
    }

    v19 = (&unk_2775F0310 + 120 * v18 + 8 * v16 - 8);
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = 0;
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (v15 < 5)
  {
    v21 = ((a9 >> 2) & 1) + 3;
  }

  else
  {
    v21 = a9 >> 2;
  }

  v20 = &unk_2775F0310 + 120 * v21 + 8 * v17 - 8;
LABEL_12:
  v22 = v11 >> 1;
  v23 = v13 >> 1;
  if (v19)
  {
    v24 = __clz(a10);
    v25 = (1 << (24 - v24)) >> 1;
    if (v20)
    {
      v26 = v15 + 7;
      v27 = &v12[-6 * v23];
      v28 = v70;
      do
      {
        if (v14 >= 1)
        {
          v29 = 0;
          v30 = vmovl_s8(*v19);
          v31 = vmovl_high_s16(v30);
          v32 = vmovl_s16(*v30.i8);
          v33 = *(v27 - 6);
          v34 = *(v27 + 1);
          v35 = *(v27 + 2);
          v36 = *(v27 + 3);
          do
          {
            v37.i16[0] = v34;
            v38 = vmovl_u16(v33);
            v33 = vext_s8(v33, *v31.i8, 2uLL);
            v33.i16[3] = v34;
            v34 = v35;
            v37.i16[1] = v35;
            v35 = v36;
            v36 = *&v27[v29 + 8];
            v37.i16[2] = v35;
            v37.i16[3] = v36;
            *&v28[v29] = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_u16(v37), v31), v38, v32)) + v25) >> (24 - v24);
            v29 += 2;
          }

          while (2 * v14 != v29);
        }

        v28 += 256;
        v27 += 2 * v23;
        --v26;
      }

      while (v26);
      v39 = v24 - 12;
      v40 = (1 << (v24 - 12)) >> 1;
      v41 = 2 * v22;
      v42 = v70;
      do
      {
        if (v14 >= 1)
        {
          v43 = 0;
          v44 = v42;
          do
          {
            v45 = (v40 + *v44 * *v20 + v44[128] * v20[1] + v44[256] * v20[2] + v44[384] * v20[3] + v44[512] * v20[4] + v44[640] * v20[5] + v44[768] * v20[6] + v44[896] * v20[7]) >> v39;
            if (v45 >= a10)
            {
              v46 = a10;
            }

            else
            {
              v46 = (v40 + *v44 * *v20 + v44[128] * v20[1] + v44[256] * v20[2] + v44[384] * v20[3] + v44[512] * v20[4] + v44[640] * v20[5] + v44[768] * v20[6] + v44[896] * v20[7]) >> v39;
            }

            if (v45 >= 0)
            {
              v47 = v46;
            }

            else
            {
              v47 = 0;
            }

            *&result[2 * v43++] = v47;
            ++v44;
          }

          while (v14 != v43);
        }

        result += v41;
        v42 += 128;
        --v15;
      }

      while (v15);
    }

    else
    {
      v60 = 2 * v23;
      do
      {
        if (v14 >= 1)
        {
          v61 = 0;
          do
          {
            v62 = vmovl_s8(*v19);
            v63 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_u16(*&v12[v61 - 6]), vmovl_high_s16(v62)), vmovl_u16(*&v12[v61 - 6]), vmovl_s16(*v62.i8))) + v25 + 32) >> 6;
            if (v63 >= a10)
            {
              v64 = a10;
            }

            else
            {
              v64 = v63;
            }

            if (v63 >= 0)
            {
              v65 = v64;
            }

            else
            {
              v65 = 0;
            }

            *&result[v61] = v65;
            v61 += 2;
          }

          while (2 * v14 != v61);
        }

        result += 2 * v22;
        v12 += v60;
        --v15;
      }

      while (v15);
    }
  }

  else if (v20)
  {
    v48 = 2 * v14;
    v49 = &v12[4 * v13];
    v67 = 2 * v23;
    v68 = 2 * v22;
    v50 = &v12[6 * v23];
    v51 = &v12[2 * v13];
    v52 = &v12[2 * v23];
    v53 = &v12[-2 * v23];
    v54 = &v12[-6 * v23];
    v55 = &v12[-2 * v13];
    v69 = v14;
    do
    {
      if (v14 >= 1)
      {
        v56 = 0;
        do
        {
          v57 = (*&v55[v56] * v20[1] + *&v54[v56] * *v20 + *&v53[v56] * v20[2] + *&v12[v56] * v20[3] + *&v52[v56] * v20[4] + *&v51[v56] * v20[5] + *&v50[v56] * v20[6] + *&v49[v56] * v20[7] + 32) >> 6;
          if (v57 >= a10)
          {
            v58 = a10;
          }

          else
          {
            v58 = (*&v55[v56] * v20[1] + *&v54[v56] * *v20 + *&v53[v56] * v20[2] + *&v12[v56] * v20[3] + *&v52[v56] * v20[4] + *&v51[v56] * v20[5] + *&v50[v56] * v20[6] + *&v49[v56] * v20[7] + 32) >> 6;
          }

          if (v57 >= 0)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

          *&result[v56] = v59;
          v56 += 2;
        }

        while (v48 != v56);
      }

      result += v68;
      v49 += v67;
      v50 += v67;
      v51 += v67;
      v52 += v67;
      v12 += v67;
      v53 += v67;
      v55 += v67;
      v54 += v67;
      --v15;
      v14 = v69;
    }

    while (v15);
  }

  else
  {
    v66 = v13 >> 1;

    return sub_2775C5178(result, v22, v12, v66, v14, v15);
  }

  return result;
}

void sub_2775C6810(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 76);
  v5 = *(a1 + 72) - 1;
  *(a1 + 72) = v5;
  if (v4)
  {
    pthread_mutex_unlock(a1);
    free(*a2);
    if (!v5)
    {
      pthread_mutex_destroy(a1);

      free(a1);
    }
  }

  else
  {
    *(a2 + 8) = *(a1 + 64);
    *(a1 + 64) = a2;

    pthread_mutex_unlock(a1);
  }
}

char *sub_2775C68C0(uint64_t a1, char *a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 64);
  ++*(a1 + 72);
  if (v4)
  {
    *(a1 + 64) = *(v4 + 1);
    pthread_mutex_unlock(a1);
    if (&v4[-*v4] == a2)
    {
      return v4;
    }

    free(*v4);
  }

  else
  {
    pthread_mutex_unlock(a1);
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x40uLL, (a2 + 16), 0x86ADB027uLL) || !memptr)
  {
    pthread_mutex_lock(a1);
    v5 = *(a1 + 72) - 1;
    *(a1 + 72) = v5;
    pthread_mutex_unlock(a1);
    if (!v5)
    {
      pthread_mutex_destroy(a1);
      free(a1);
    }

    return 0;
  }

  else
  {
    v4 = &a2[memptr];
    *&a2[memptr] = memptr;
  }

  return v4;
}

uint64_t sub_2775C69A8(int a1, int a2, int a3, int a4, int a5, int a6, char a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned int a11, int *a12, int a13, int a14, int a15, _WORD *a16, unsigned int a17)
{
  v18 = a11;
  if (a11 - 1 >= 8)
  {
    if (!a11 || a11 == 12)
    {
      v18 = byte_2775F0E30[4 * a11 + 2 * a2 + a4];
    }
  }

  else
  {
    v19 = 3 * *a12 + byte_2775F0E28[a11 - 1];
    *a12 = v19;
    if (v19 > 90)
    {
      if (v19 >= 0xB4)
      {
        if (v19 == 180 || a2 == 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 8;
        }
      }

      else
      {
        v18 = 7u;
      }
    }

    else if (v19 == 90 || a4 == 0)
    {
      v18 = 1;
    }

    else
    {
      v18 = 6;
    }
  }

  v22 = __clz(a17);
  v23 = byte_2775F0E64[v18];
  if (a4)
  {
    if (byte_2775F0E64[v18] & 6) != 0 || (v24 = 0, v25 = 0, !a2) && (byte_2775F0E64[v18])
    {
      if (a10)
      {
        v24 = a10 + 8 * a1;
      }

      else
      {
        v24 = a8 - a9;
      }

      if (a10)
      {
        v25 = (a10 + 8 * a1);
      }

      else
      {
        v25 = (a8 - a9);
      }
    }
  }

  else
  {
    v25 = 0;
    v24 = a8;
  }

  v26 = a14;
  v149 = 32 - v22;
  if (byte_2775F0E64[v18])
  {
    v27 = (4 * a14);
    v28 = &a16[-4 * a14];
    if (a2)
    {
      v29 = 4 * (a6 - a3);
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v30 >= 1)
      {
        v31 = (a8 - 2);
        v32 = v27 - 1;
        v33 = v30;
        do
        {
          v28[v32--] = *v31;
          v31 = (v31 + a9);
          --v33;
        }

        while (v33);
      }

      if (v29 < v27)
      {
        v34 = (v27 - v30);
        if (v34 >= 1)
        {
          v35 = v28[v34];
          v36 = (v34 + 7) & 0xFFFFFFF8;
          v37 = vdupq_n_s64(v34 - 1);
          v38 = &a16[-v27 + 4];
          v39 = xmmword_2775ED460;
          v40 = xmmword_2775ED470;
          v41 = xmmword_2775ED480;
          v42 = xmmword_2775ED490;
          v43 = vdupq_n_s64(8uLL);
          do
          {
            v44 = vmovn_s64(vcgeq_u64(v37, v42));
            if (vuzp1_s8(vuzp1_s16(v44, *v37.i8), *v37.i8).u8[0])
            {
              *(v38 - 4) = v35;
            }

            if (vuzp1_s8(vuzp1_s16(v44, *&v37), *&v37).i8[1])
            {
              *(v38 - 3) = v35;
            }

            if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v41))), *&v37).i8[2])
            {
              *(v38 - 2) = v35;
              *(v38 - 1) = v35;
            }

            v45 = vmovn_s64(vcgeq_u64(v37, v40));
            if (vuzp1_s8(*&v37, vuzp1_s16(v45, *&v37)).i32[1])
            {
              *v38 = v35;
            }

            if (vuzp1_s8(*&v37, vuzp1_s16(v45, *&v37)).i8[5])
            {
              v38[1] = v35;
            }

            if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v39)))).i8[6])
            {
              v38[2] = v35;
              v38[3] = v35;
            }

            v40 = vaddq_s64(v40, v43);
            v41 = vaddq_s64(v41, v43);
            v42 = vaddq_s64(v42, v43);
            v38 += 8;
            v39 = vaddq_s64(v39, v43);
            v36 -= 8;
          }

          while (v36);
        }
      }

      goto LABEL_74;
    }

    if (a4)
    {
      LOWORD(v46) = *v25;
      if (!a14)
      {
LABEL_74:
        if ((v23 & 0x10) != 0)
        {
          if (a2 && (a7 & 8) != 0 && (v57 = a6 - (a14 + a3), a6 > a14 + a3))
          {
            v58 = 4 * v57;
            if (v27 >= 4 * v57)
            {
              v59 = v58;
            }

            else
            {
              v59 = v27;
            }

            if (v59 >= 1)
            {
              v60 = &a16[-v27 - 1];
              v61 = (a8 + 2 * (a9 >> 1) * v27 - 2);
              v62 = v59;
              do
              {
                *v60-- = *v61;
                v61 = (v61 + a9);
                --v62;
              }

              while (v62);
            }

            if (v58 < v27)
            {
              v63 = (v27 - v59);
              if (v63 >= 1)
              {
                v64 = v28[-v59];
                v65 = (v63 + 7) & 0xFFFFFFF8;
                v66 = vdupq_n_s64(v63 - 1);
                v67 = &a16[-v27 - v27 + 4];
                v68 = xmmword_2775ED460;
                v69 = xmmword_2775ED470;
                v70 = xmmword_2775ED480;
                v71 = xmmword_2775ED490;
                v72 = vdupq_n_s64(8uLL);
                do
                {
                  v73 = vmovn_s64(vcgeq_u64(v66, v71));
                  if (vuzp1_s8(vuzp1_s16(v73, *v66.i8), *v66.i8).u8[0])
                  {
                    *(v67 - 4) = v64;
                  }

                  if (vuzp1_s8(vuzp1_s16(v73, *&v66), *&v66).i8[1])
                  {
                    *(v67 - 3) = v64;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, *&v70))), *&v66).i8[2])
                  {
                    *(v67 - 2) = v64;
                    *(v67 - 1) = v64;
                  }

                  v74 = vmovn_s64(vcgeq_u64(v66, v69));
                  if (vuzp1_s8(*&v66, vuzp1_s16(v74, *&v66)).i32[1])
                  {
                    *v67 = v64;
                  }

                  if (vuzp1_s8(*&v66, vuzp1_s16(v74, *&v66)).i8[5])
                  {
                    v67[1] = v64;
                  }

                  if (vuzp1_s8(*&v66, vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, *&v68)))).i8[6])
                  {
                    v67[2] = v64;
                    v67[3] = v64;
                  }

                  v69 = vaddq_s64(v69, v72);
                  v70 = vaddq_s64(v70, v72);
                  v71 = vaddq_s64(v71, v72);
                  v67 += 8;
                  v68 = vaddq_s64(v68, v72);
                  v65 -= 8;
                }

                while (v65);
              }
            }
          }

          else if (a14)
          {
            v75 = *v28;
            v76 = (v27 + 7) & 0xFFFFFFF8;
            v77 = vdupq_n_s64(v27 - 1);
            v78 = &a16[-v27 - v27 + 4];
            v79 = xmmword_2775ED460;
            v80 = xmmword_2775ED470;
            v81 = xmmword_2775ED480;
            v82 = xmmword_2775ED490;
            v83 = vdupq_n_s64(8uLL);
            do
            {
              v84 = vmovn_s64(vcgeq_u64(v77, v82));
              if (vuzp1_s8(vuzp1_s16(v84, *v77.i8), *v77.i8).u8[0])
              {
                *(v78 - 4) = v75;
              }

              if (vuzp1_s8(vuzp1_s16(v84, *&v77), *&v77).i8[1])
              {
                *(v78 - 3) = v75;
              }

              if (vuzp1_s8(vuzp1_s16(*&v77, vmovn_s64(vcgeq_u64(v77, *&v81))), *&v77).i8[2])
              {
                *(v78 - 2) = v75;
                *(v78 - 1) = v75;
              }

              v85 = vmovn_s64(vcgeq_u64(v77, v80));
              if (vuzp1_s8(*&v77, vuzp1_s16(v85, *&v77)).i32[1])
              {
                *v78 = v75;
              }

              if (vuzp1_s8(*&v77, vuzp1_s16(v85, *&v77)).i8[5])
              {
                v78[1] = v75;
              }

              if (vuzp1_s8(*&v77, vuzp1_s16(*&v77, vmovn_s64(vcgeq_u64(v77, *&v79)))).i8[6])
              {
                v78[2] = v75;
                v78[3] = v75;
              }

              v80 = vaddq_s64(v80, v83);
              v81 = vaddq_s64(v81, v83);
              v82 = vaddq_s64(v82, v83);
              v78 += 8;
              v79 = vaddq_s64(v79, v83);
              v76 -= 8;
            }

            while (v76);
          }
        }

        goto LABEL_116;
      }
    }

    else
    {
      v46 = ((1 << v149) >> 1) + 1;
      if (!a14)
      {
        goto LABEL_74;
      }
    }

    v47 = (v27 + 7) & 0xFFFFFFF8;
    v48 = vdupq_n_s64(v27 - 1);
    v49 = &a16[-v27 + 4];
    v50 = xmmword_2775ED460;
    v51 = xmmword_2775ED470;
    v52 = xmmword_2775ED480;
    v53 = xmmword_2775ED490;
    v54 = vdupq_n_s64(8uLL);
    do
    {
      v55 = vmovn_s64(vcgeq_u64(v48, v53));
      if (vuzp1_s8(vuzp1_s16(v55, *v48.i8), *v48.i8).u8[0])
      {
        *(v49 - 4) = v46;
      }

      if (vuzp1_s8(vuzp1_s16(v55, *&v48), *&v48).i8[1])
      {
        *(v49 - 3) = v46;
      }

      if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v52))), *&v48).i8[2])
      {
        *(v49 - 2) = v46;
        *(v49 - 1) = v46;
      }

      v56 = vmovn_s64(vcgeq_u64(v48, v51));
      if (vuzp1_s8(*&v48, vuzp1_s16(v56, *&v48)).i32[1])
      {
        *v49 = v46;
      }

      if (vuzp1_s8(*&v48, vuzp1_s16(v56, *&v48)).i8[5])
      {
        v49[1] = v46;
      }

      if (vuzp1_s8(*&v48, vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v50)))).i8[6])
      {
        v49[2] = v46;
        v49[3] = v46;
      }

      v51 = vaddq_s64(v51, v54);
      v52 = vaddq_s64(v52, v54);
      v53 = vaddq_s64(v53, v54);
      v49 += 8;
      v50 = vaddq_s64(v50, v54);
      v47 -= 8;
    }

    while (v47);
    goto LABEL_74;
  }

LABEL_116:
  if ((v23 & 2) != 0)
  {
    v86 = (4 * a13);
    if (a4)
    {
      v87 = 4 * (a5 - a1);
      if (v86 >= v87)
      {
        v88 = 4 * (a5 - a1);
      }

      else
      {
        v88 = 4 * a13;
      }

      v147 = v23;
      v89 = a2;
      v145 = a5;
      v146 = a7;
      v90 = a4;
      memcpy(a16 + 1, v25, 2 * v88);
      a4 = v90;
      a2 = v89;
      v23 = v147;
      v26 = a14;
      a7 = v146;
      a5 = v145;
      if (v87 < v86)
      {
        v91 = (v86 - v88);
        if (v91 >= 1)
        {
          v92 = a16[v88];
          v93 = (v91 + 7) & 0xFFFFFFF8;
          v94 = vdupq_n_s64(v91 - 1);
          v95 = &a16[v88 + 4];
          v96 = xmmword_2775ED460;
          v97 = xmmword_2775ED470;
          v98 = xmmword_2775ED480;
          v99 = xmmword_2775ED490;
          v100 = vdupq_n_s64(8uLL);
          do
          {
            v101 = vmovn_s64(vcgeq_u64(v94, v99));
            if (vuzp1_s8(vuzp1_s16(v101, *v94.i8), *v94.i8).u8[0])
            {
              *(v95 - 3) = v92;
            }

            if (vuzp1_s8(vuzp1_s16(v101, *&v94), *&v94).i8[1])
            {
              *(v95 - 2) = v92;
            }

            if (vuzp1_s8(vuzp1_s16(*&v94, vmovn_s64(vcgeq_u64(v94, *&v98))), *&v94).i8[2])
            {
              *(v95 - 1) = v92;
              *v95 = v92;
            }

            v102 = vmovn_s64(vcgeq_u64(v94, v97));
            if (vuzp1_s8(*&v94, vuzp1_s16(v102, *&v94)).i32[1])
            {
              v95[1] = v92;
            }

            if (vuzp1_s8(*&v94, vuzp1_s16(v102, *&v94)).i8[5])
            {
              v95[2] = v92;
            }

            if (vuzp1_s8(*&v94, vuzp1_s16(*&v94, vmovn_s64(vcgeq_u64(v94, *&v96)))).i8[6])
            {
              v95[3] = v92;
              v95[4] = v92;
            }

            v97 = vaddq_s64(v97, v100);
            v98 = vaddq_s64(v98, v100);
            v99 = vaddq_s64(v99, v100);
            v95 += 8;
            v96 = vaddq_s64(v96, v100);
            v93 -= 8;
          }

          while (v93);
        }
      }
    }

    else
    {
      if (a2)
      {
        LOWORD(v103) = *(a8 - 2);
      }

      else
      {
        v103 = ((1 << v149) >> 1) - 1;
      }

      if (a13)
      {
        v104 = (v86 + 7) & 0xFFFFFFF8;
        v105 = vdupq_n_s64(v86 - 1);
        v106 = xmmword_2775ED460;
        v107 = xmmword_2775ED470;
        v108 = xmmword_2775ED480;
        v109 = xmmword_2775ED490;
        v110 = a16 + 4;
        v111 = vdupq_n_s64(8uLL);
        do
        {
          v112 = vmovn_s64(vcgeq_u64(v105, v109));
          if (vuzp1_s8(vuzp1_s16(v112, *v105.i8), *v105.i8).u8[0])
          {
            *(v110 - 3) = v103;
          }

          if (vuzp1_s8(vuzp1_s16(v112, *&v105), *&v105).i8[1])
          {
            *(v110 - 2) = v103;
          }

          if (vuzp1_s8(vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, *&v108))), *&v105).i8[2])
          {
            *(v110 - 1) = v103;
            *v110 = v103;
          }

          v113 = vmovn_s64(vcgeq_u64(v105, v107));
          if (vuzp1_s8(*&v105, vuzp1_s16(v113, *&v105)).i32[1])
          {
            v110[1] = v103;
          }

          if (vuzp1_s8(*&v105, vuzp1_s16(v113, *&v105)).i8[5])
          {
            v110[2] = v103;
          }

          if (vuzp1_s8(*&v105, vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, *&v106)))).i8[6])
          {
            v110[3] = v103;
            v110[4] = v103;
          }

          v107 = vaddq_s64(v107, v111);
          v108 = vaddq_s64(v108, v111);
          v109 = vaddq_s64(v109, v111);
          v110 += 8;
          v106 = vaddq_s64(v106, v111);
          v104 -= 8;
        }

        while (v104);
      }
    }

    if ((v23 & 8) != 0)
    {
      if (a4 && (a7 & 1) != 0 && (v114 = a5 - (a13 + a1), a5 > a13 + a1))
      {
        v115 = 4 * v114;
        if (v86 >= 4 * v114)
        {
          v116 = 4 * v114;
        }

        else
        {
          v116 = 4 * a13;
        }

        v148 = v23;
        v117 = a2;
        v118 = v26;
        v119 = a4;
        memcpy(&a16[v86 + 1], &v25[v86], 2 * v116);
        a4 = v119;
        a2 = v117;
        v23 = v148;
        v26 = v118;
        if (v115 < v86)
        {
          v120 = (v86 - v116);
          if (v120 >= 1)
          {
            v121 = a16[v116 + v86];
            v122 = (v120 + 7) & 0xFFFFFFF8;
            v123 = vdupq_n_s64(v120 - 1);
            v124 = &a16[v116 + 4 + v86];
            v125 = xmmword_2775ED460;
            v126 = xmmword_2775ED470;
            v127 = xmmword_2775ED480;
            v128 = xmmword_2775ED490;
            v129 = vdupq_n_s64(8uLL);
            do
            {
              v130 = vmovn_s64(vcgeq_u64(v123, v128));
              if (vuzp1_s8(vuzp1_s16(v130, *v123.i8), *v123.i8).u8[0])
              {
                *(v124 - 3) = v121;
              }

              if (vuzp1_s8(vuzp1_s16(v130, *&v123), *&v123).i8[1])
              {
                *(v124 - 2) = v121;
              }

              if (vuzp1_s8(vuzp1_s16(*&v123, vmovn_s64(vcgeq_u64(v123, *&v127))), *&v123).i8[2])
              {
                *(v124 - 1) = v121;
                *v124 = v121;
              }

              v131 = vmovn_s64(vcgeq_u64(v123, v126));
              if (vuzp1_s8(*&v123, vuzp1_s16(v131, *&v123)).i32[1])
              {
                v124[1] = v121;
              }

              if (vuzp1_s8(*&v123, vuzp1_s16(v131, *&v123)).i8[5])
              {
                v124[2] = v121;
              }

              if (vuzp1_s8(*&v123, vuzp1_s16(*&v123, vmovn_s64(vcgeq_u64(v123, *&v125)))).i8[6])
              {
                v124[3] = v121;
                v124[4] = v121;
              }

              v126 = vaddq_s64(v126, v129);
              v127 = vaddq_s64(v127, v129);
              v128 = vaddq_s64(v128, v129);
              v124 += 8;
              v125 = vaddq_s64(v125, v129);
              v122 -= 8;
            }

            while (v122);
          }
        }
      }

      else if (a13)
      {
        v132 = a16[v86];
        v133 = (v86 + 7) & 0xFFFFFFF8;
        v134 = vdupq_n_s64(v86 - 1);
        v135 = &a16[v86 + 4];
        v136 = xmmword_2775ED460;
        v137 = xmmword_2775ED470;
        v138 = xmmword_2775ED480;
        v139 = xmmword_2775ED490;
        v140 = vdupq_n_s64(8uLL);
        do
        {
          v141 = vmovn_s64(vcgeq_u64(v134, v139));
          if (vuzp1_s8(vuzp1_s16(v141, *v134.i8), *v134.i8).u8[0])
          {
            *(v135 - 3) = v132;
          }

          if (vuzp1_s8(vuzp1_s16(v141, *&v134), *&v134).i8[1])
          {
            *(v135 - 2) = v132;
          }

          if (vuzp1_s8(vuzp1_s16(*&v134, vmovn_s64(vcgeq_u64(v134, *&v138))), *&v134).i8[2])
          {
            *(v135 - 1) = v132;
            *v135 = v132;
          }

          v142 = vmovn_s64(vcgeq_u64(v134, v137));
          if (vuzp1_s8(*&v134, vuzp1_s16(v142, *&v134)).i32[1])
          {
            v135[1] = v132;
          }

          if (vuzp1_s8(*&v134, vuzp1_s16(v142, *&v134)).i8[5])
          {
            v135[2] = v132;
          }

          if (vuzp1_s8(*&v134, vuzp1_s16(*&v134, vmovn_s64(vcgeq_u64(v134, *&v136)))).i8[6])
          {
            v135[3] = v132;
            v135[4] = v132;
          }

          v137 = vaddq_s64(v137, v140);
          v138 = vaddq_s64(v138, v140);
          v139 = vaddq_s64(v139, v140);
          v135 += 8;
          v136 = vaddq_s64(v136, v140);
          v133 -= 8;
        }

        while (v133);
      }
    }
  }

  if ((v23 & 4) != 0)
  {
    if (a2)
    {
      LOWORD(v143) = *(v24 - 2);
    }

    else if (a4)
    {
      LOWORD(v143) = *v25;
    }

    else
    {
      v143 = (1 << v149) >> 1;
    }

    *a16 = v143;
    if (v18 == 7 && v26 + a13 >= 6 && a15)
    {
      *a16 = (5 * (a16[1] + *(a16 - 1)) + 6 * v143 + 8) >> 4;
    }
  }

  return v18;
}

int8x8_t *sub_2775C76E4(int8x8_t *a1, unint64_t a2, __int8 *a3, int a4, int a5, unsigned int a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a6 & 0x1FF;
  v12 = word_2775F0F00[(270 - v11) >> 1];
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v14 = a5 + a4;
  if ((v11 - 220) < 0xFFFFFFD8 || (0x10u >> ((a6 & 0x200) != 0)) < v14)
  {
    v20 = sub_2775C78D8(a5 + a4, v11 - 180, (a6 >> 9) & 1);
    if (v20)
    {
      v21 = v20;
      v30[0].i8[0] = *a3;
      if (a4 <= a5)
      {
        v22 = a5;
      }

      else
      {
        v22 = a4;
      }

      if (a4 >= a5)
      {
        v23 = a5;
      }

      else
      {
        v23 = a4;
      }

      sub_27755B4E8((v30[0].i64 + 1), a3, v22 + a5);
      sub_27755AF84(v29, a5 + a4, v30, v23 + a5, v21);
      goto LABEL_23;
    }

LABEL_2:
    if (a4 >= a5)
    {
      v13 = a5;
    }

    else
    {
      v13 = a4;
    }

    v14 = v13 + a5;
    sub_27755B4E8(v29, a3, v13 + a5);
LABEL_23:
    v18 = v14 - 1;
    v17 = 1;
    v19 = 1;
    goto LABEL_24;
  }

  v30[0].i8[0] = *a3;
  if (a4 <= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  if (a4 >= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = a4;
  }

  sub_27755B4E8((v30[0].i64 + 1), a3, v15 + a5);
  sub_27755AEC0(v29, (a5 + a4), v30, v16 + a5);
  v17 = 0;
  v18 = 2 * v14 - 2;
  v12 *= 2;
  v19 = 2;
LABEL_24:
  v24 = 63 - v18;
  if (63 - v18 <= a5 + 15)
  {
    v24 = a5 + 15;
  }

  sub_27755B170(&v29[0].i8[v18 + 1], v29[0].u8[v18], v24 * v19);
  if (v17)
  {
    return sub_27755C1E4(a1, a2, v29, a4, a5, v12, v18);
  }

  else
  {
    return sub_27755C784(a1, a2, v29[0].i8, a4, a5, v12, v18, v25, v26, v27);
  }
}

uint64_t sub_2775C78D8(unsigned int a1, int a2, int a3)
{
  if (a3)
  {
    if (a1 <= 8)
    {
      if (a2 <= 63)
      {
        return a2 > 39;
      }

      return 2;
    }

    if (a1 <= 0x10)
    {
      if (a2 > 47)
      {
        return 2;
      }

      return a2 > 19;
    }

    result = 3;
    if (a1 <= 0x18 && a2 <= 3)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 8)
    {
      return a2 > 55;
    }

    if (a1 <= 0x10)
    {
      return a2 > 39;
    }

    if (a1 <= 0x18)
    {
      if (a2 > 31)
      {
        return 3;
      }

      if (a2 > 15)
      {
        return 2;
      }

      return a2 > 7;
    }

    if (a2 <= 3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (a2 > 31)
    {
      v5 = 3;
    }

    if (a1 <= 0x20)
    {
      return v5;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void *sub_2775C79AC(void *a1, uint64_t a2, int8x16_t *a3, signed int a4, signed int a5, unsigned int a6, int a7, signed int a8)
{
  v51 = *MEMORY[0x277D85DE8];
  v12 = (a6 & 0x1FF) - 90;
  v13 = *(word_2775F0F00 + (v12 & 0xFFFFFFFE));
  v14 = 180 - (a6 & 0x1FF);
  v15 = *(word_2775F0F00 + (v14 & 0xFE));
  if (a6 < 0x400)
  {
    __memcpy_chk();
    LOBYTE(v16) = 0;
    goto LABEL_28;
  }

  v46 = a2;
  v18 = (a6 >> 9) & 1;
  v19 = 0x10u >> ((a6 & 0x200) != 0);
  v20 = v19 < a5 + a4;
  v21 = v19 >= a5 + a4 && (a6 & 0x1FF) > 0x8C;
  v16 = !v20 && v12 < 0x28;
  if (!v16)
  {
    v45 = v21;
    v23 = sub_2775C78D8(a5 + a4, v12, (a6 >> 9) & 1);
    if (v23)
    {
      if (a7 >= a4)
      {
        v24 = a4;
      }

      else
      {
        v24 = a7;
      }

      sub_27755AF84(&v49[0].i8[1], v24, a3, a4, v23);
      if (a4 <= a7)
      {
        if (!v45)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      memcpy(&v49[0].i8[a7 + 1], &a3->i8[a7 + 1], a4 - a7);
    }

    else
    {
      __memcpy_chk();
    }

    if (!v45)
    {
      goto LABEL_21;
    }

LABEL_19:
    v48.i8[0] = a3->i8[0];
    sub_27755B4E8((v48.i64 + 1), a3, a5);
    *&v25 = sub_27755AF28(v50, a5, &v48).u64[0];
    v50[0].i8[0] = a3->i8[0];
    v49[0].i8[0] = v50[0].i8[0];
    return sub_27755BF54(a1, v46, v49, v50[0].i8, a4, a5, v15, 2 * v13, v25, v26, v27, v28, v29, v30, v31, v32);
  }

  sub_27755AF28(v49, a4, a3);
  v15 *= 2;
LABEL_21:
  v34 = sub_2775C78D8(a5 + a4, v14, v18);
  if (v34)
  {
    v35 = v34;
    v48.i8[0] = a3->i8[0];
    sub_27755B4E8((v48.i64 + 1), a3, a5);
    if (a8 >= a5)
    {
      v36 = a5;
    }

    else
    {
      v36 = a8;
    }

    sub_27755AF84(&v50[0].i8[1], v36, &v48, a5, v35);
    a2 = v46;
    if (a5 > a8)
    {
      memcpy(&v50[0].i8[a8 + 1], &v48.i8[a8 + 1], a5 - a8);
    }

    v50[0].i8[0] = a3->i8[0];
    v49[0].i8[0] = v50[0].i8[0];
    if (v16)
    {
      return sub_27755BCD8(a1, a2, v49, v50, a4, a5, v15, v13, v37, v38, v39, v40, v41, v42, v43, v44);
    }

    return sub_27755B514(a1, a2, v49, v50, a4);
  }

  a2 = v46;
LABEL_28:
  sub_27755B4E8((v50[0].i64 + 1), a3, a5);
  v50[0].i8[0] = a3->i8[0];
  v49[0].i8[0] = v50[0].i8[0];
  if (v16)
  {
    return sub_27755BCD8(a1, a2, v49, v50, a4, a5, v15, v13, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  return sub_27755B514(a1, a2, v49, v50, a4);
}

int8x8_t *sub_2775C7D04(int8x8_t *a1, uint64_t a2, int8x16_t *a3, int a4, uint64_t a5, unsigned int a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = *(word_2775F0F00 + (a6 & 0x1FE));
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v13 = a5 + a4;
  if ((a6 & 0x1FF) < 0x33 || (0x10u >> ((a6 & 0x200) != 0)) < v13)
  {
    v18 = sub_2775C78D8(a5 + a4, 90 - (a6 & 0x1FF), (a6 >> 9) & 1);
    if (v18)
    {
      if (a4 >= a5)
      {
        v19 = a5;
      }

      else
      {
        v19 = a4;
      }

      sub_27755AF84(v21, a5 + a4, a3, v19 + a4, v18);
      goto LABEL_17;
    }

LABEL_2:
    if (a4 >= a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = a4;
    }

    v13 = v12 + a4;
    __memcpy_chk();
LABEL_17:
    v16 = v13 - 1;
    v15 = 1;
    v17 = 1;
    goto LABEL_18;
  }

  if (a4 >= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = a4;
  }

  sub_27755AEC0(v21, (a5 + a4), a3, v14 + a4);
  v15 = 0;
  v16 = 2 * v13 - 2;
  v11 = (2 * v11);
  v17 = 2;
LABEL_18:
  sub_27755B170(&v21[0].i8[v16 + 1], v21[0].u8[v16], v17 * (a4 + 15));
  if (v15)
  {
    return sub_27755B184(a1, a2, v21, a4, a5, v11, v16);
  }

  else
  {
    return sub_27755B3B8(a1, a2, v21, a4, a5, v11, v16);
  }
}

uint64_t sub_2775C7E98(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6)
{
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a5 >= 1)
      {
        for (j = 0; j < a5; j += 2)
        {
          v8 = *a4++;
          v9 = (result + j);
          *v9 = *(a3 + (v8 & 7));
          v9[1] = *(a3 + (v8 >> 4));
        }
      }

      result += a2;
    }
  }

  return result;
}

uint64_t sub_2775C7EF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v7 = a5 >> 1;
  if (a5 >= 1)
  {
    v8 = a5;
    v9 = (a3 - 1);
    do
    {
      v10 = *v9--;
      v7 += v10;
      --v8;
    }

    while (v8);
  }

  return sub_2775C7F34(a1, a2, a4, a5, v7 >> __clz(__rbit32(a5)), a6, a7);
}

uint64_t sub_2775C7F34(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (a3 >= 1)
      {
        for (j = 0; j != a3; *(result + j++) = v14)
        {
          v9 = *(a6 + 2 * j) * a7;
          v10 = v9 < 0;
          if (v9 < 0)
          {
            v9 = -v9;
          }

          v11 = (v9 + 32) >> 6;
          if (v10)
          {
            v11 = -v11;
          }

          v12 = v11 + a5;
          if (v12 >= 0xFF)
          {
            v13 = -1;
          }

          else
          {
            v13 = v12;
          }

          if (v12 >= 0)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }
      }

      result += a2;
      a6 += 2 * a3;
    }
  }

  return result;
}

uint64_t sub_2775C7FB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v7 = a4 >> 1;
  if (a4 >= 1)
  {
    v8 = a4;
    v9 = (a3 + 1);
    do
    {
      v10 = *v9++;
      v7 += v10;
      --v8;
    }

    while (v8);
  }

  return sub_2775C7F34(a1, a2, a4, a5, v7 >> __clz(__rbit32(a4)), a6, a7);
}

uint64_t sub_2775C8000(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v13 = sub_2775C8080(a3, a4, a5);

  return sub_2775C7F34(a1, a2, a4, a5, v13, a6, a7);
}

uint64_t sub_2775C8080(uint64_t a1, int a2, int a3)
{
  v3 = (a3 + a2) >> 1;
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (a1 + 1);
    do
    {
      v6 = *v5++;
      v3 += v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    v7 = a3;
    v8 = (a1 - 1);
    do
    {
      v9 = *v8--;
      v3 += v9;
      --v7;
    }

    while (v7);
  }

  v10 = v3 >> __clz(__rbit32(a3 + a2));
  if (2 * a2 < a3 || 2 * a3 < a2)
  {
    v12 = 13108;
  }

  else
  {
    v12 = 21846;
  }

  v13 = (v10 * v12) >> 16;
  if (a2 == a3)
  {
    return v10;
  }

  else
  {
    return v13;
  }
}

char *sub_2775C812C(char *result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, signed int a7, int a8, int a9)
{
  v11 = result;
  v12 = (a7 - 4 * a5);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = a6 - 4 * a4;
    v15 = a3 << a9;
    v16 = v14 & ~(v14 >> 31);
    v17 = 2 * a6;
    v18 = &v11[(2 * v16) - 2];
    v19 = a6 - v16;
    v20 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = vdupq_n_s64(v19 - 1);
    v22 = a2 + a3;
    result = &v11[2 * v16 + 8];
    v23 = v11;
    while (v14 < 1)
    {
      v29 = 0;
LABEL_15:
      if (v29 < a6)
      {
        v30 = 0;
        v31 = *(v18 + v17 * v13);
        v32 = result;
        do
        {
          v33 = vdupq_n_s64(v30);
          v34 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v33, xmmword_2775ED490)));
          if (vuzp1_s8(vuzp1_s16(v34, *v21.i8), *v21.i8).u8[0])
          {
            *(v32 - 4) = v31;
          }

          if (vuzp1_s8(vuzp1_s16(v34, *&v21), *&v21).i8[1])
          {
            *(v32 - 3) = v31;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v33, xmmword_2775ED480)))), *&v21).i8[2])
          {
            *(v32 - 2) = v31;
            *(v32 - 1) = v31;
          }

          v35 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v33, xmmword_2775ED470)));
          if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i32[1])
          {
            *v32 = v31;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i8[5])
          {
            v32[1] = v31;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v33, xmmword_2775ED460))))).i8[6])
          {
            v32[2] = v31;
            v32[3] = v31;
          }

          v30 += 8;
          v32 += 8;
        }

        while (v20 != v30);
      }

      v23 += v17;
      a2 += v15;
      ++v13;
      v22 += v15;
      result += v17;
      if (v13 == v12)
      {
        goto LABEL_33;
      }
    }

    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = (v24 << a8);
      v27 = *(a2 + v26);
      if (a8)
      {
        v27 += *(a2 + v25);
        if (!a9)
        {
          goto LABEL_11;
        }

        v27 += *(v22 + v25) + *(a2 + v26 + a3);
      }

      else
      {
        if (!a9)
        {
LABEL_11:
          v28 = 2;
          goto LABEL_12;
        }

        v27 += *(a2 + v26 + a3);
      }

      v28 = 1;
LABEL_12:
      *&v23[2 * v24++] = v27 << (v28 + (a8 == 0));
      v25 += 2;
      if (v14 == v24)
      {
        v29 = v14;
        goto LABEL_15;
      }
    }
  }

  LODWORD(v12) = 0;
  v23 = result;
LABEL_33:
  v36 = a7 - v12;
  if (a7 <= v12)
  {
    v37 = a6;
  }

  else
  {
    v37 = a6;
    do
    {
      result = memcpy(v23, &v23[-2 * a6], 2 * a6);
      v23 += 2 * a6;
      --v36;
    }

    while (v36);
  }

  v38 = 0;
  v39 = __clz(__rbit32(a7)) + __clz(__rbit32(a6));
  v40 = 1 << v39 >> 1;
  v41 = 2 * v37;
  v42 = v11;
  do
  {
    v43 = 0;
    do
    {
      v40 += *&v42[2 * v43++];
    }

    while (v37 != v43);
    ++v38;
    v42 += v41;
  }

  while (v38 != a7);
  v44 = 0;
  v45 = v40 >> v39;
  do
  {
    v46 = 0;
    do
    {
      *&v11[2 * v46++] -= v45;
    }

    while (v37 != v46);
    ++v44;
    v11 += v41;
  }

  while (v44 != a7);
  return result;
}

uint64_t sub_2775C84B8(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, __int16 a6)
{
  if (a5 >= 1)
  {
    v6 = 0;
    v7 = &unk_2775F0F80 + 64 * (a6 & 0x1FF);
    v8 = (a3 + 1);
    v9 = a5;
    do
    {
      if (a4 >= 1)
      {
        v10 = 0;
        v11 = (a3 - v6);
        v12 = (a3 - v6 - 1);
        v13 = -1;
        do
        {
          v14 = *v11;
          v15 = *v8;
          v16 = v8[1];
          v17 = v8[2];
          v11 = v8 + 3;
          v18 = v8[3];
          v19 = result + v10;
          v20 = 1;
          v21 = v7;
          v22 = *v12;
          v23 = v12[v13];
          do
          {
            v24 = 0;
            v25 = v20;
            do
            {
              v26 = (v21[v24 + 8] * v15 + v21[v24] * v14 + v21[v24 + 16] * v16 + v21[v24 + 24] * v17 + v21[v24 + 32] * v18 + v21[v24 + 40] * v22 + v21[v24 + 48] * v23 + 8) >> 4;
              if (v26 >= 0xFF)
              {
                v27 = -1;
              }

              else
              {
                v27 = (v21[v24 + 8] * v15 + v21[v24] * v14 + v21[v24 + 16] * v16 + v21[v24 + 24] * v17 + v21[v24 + 32] * v18 + v21[v24 + 40] * v22 + v21[v24 + 48] * v23 + 8) >> 4;
              }

              if (v26 >= 0)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              *(v19 + v24++) = v28;
            }

            while (v24 != 4);
            v20 = 0;
            v21 += 4;
            v19 += a2;
          }

          while ((v25 & 1) != 0);
          v12 = (result + v10 + 3);
          v8 += 4;
          v10 += 4;
          v13 = a2;
        }

        while (v10 < a4);
      }

      v8 = (result + a2);
      result += 2 * a2;
      v6 += 2;
    }

    while (v6 < v9);
  }

  return result;
}

uint64_t sub_2775C862C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v6 = a5;
  v66 = result;
  v68 = *MEMORY[0x277D85DE8];
  v10 = a6 & 0x1FF;
  v11 = word_2775F0F00[(270 - v10) >> 1];
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v16 = a5 + a4;
  if ((v10 - 220) >= 0xFFFFFFD8 && (0x10u >> ((a6 & 0x200) != 0)) >= v16)
  {
    result = sub_2775C8BB8(v67, a5 + a4, a3 - v16, (a4 - a5) & ~((a4 - a5) >> 31), v16 + 1);
    v14 = 2 * v16 - 2;
    v12 = &v67[v14];
    v11 *= 2;
    v15 = 2;
    goto LABEL_11;
  }

  result = sub_2775C78D8(a5 + a4, v10 - 180, (a6 >> 9) & 1);
  if (result)
  {
    result = sub_2775C8C84(v67, v6 + a4, 0, v6 + a4, a3 - v16, (a4 - v6) & ~((a4 - v6) >> 31), v16 + 1, result);
    v14 = v16 - 1;
    v12 = &v67[v14];
    v15 = 1;
  }

  else
  {
LABEL_2:
    v12 = (a3 - 1);
    if (a4 >= v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = a4;
    }

    LODWORD(v14) = v6 + v13 - 1;
    v15 = 1;
  }

LABEL_11:
  if (a4 >= 1)
  {
    v17 = 0;
    v49 = -v14;
    v51 = a4;
    v18 = v6;
    v19 = v6 - 1;
    result = v66;
    v65 = v66 + 15 * a2;
    v20 = v14;
    v21 = v6;
    v63 = v66 + 13 * a2;
    v64 = v66 + 14 * a2;
    v61 = v66 + 11 * a2;
    v62 = v66 + 12 * a2;
    v59 = v66 + 9 * a2;
    v60 = v66 + 10 * a2;
    v57 = v66 + 7 * a2;
    v58 = v66 + 8 * a2;
    v55 = v66 + 5 * a2;
    v56 = v66 + 6 * a2;
    v53 = v6;
    v54 = v66 + 3 * a2;
    v22 = v66 + a2;
    v23 = v66;
    v52 = v11;
    v24 = v11;
    v25 = v66 + 4 * a2;
    v26 = v66 + 2 * a2;
    do
    {
      v27 = v24 >> 6;
      if ((v24 >> 6) <= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v24 >> 6;
      }

      v29 = (v24 >> 6) < v20;
      if ((v24 >> 6) >= v20)
      {
        v30 = v24 >> 6;
      }

      else
      {
        v30 = v27 + 1;
      }

      if (v6 >= 1)
      {
        result = 0;
        v31 = ~(v24 >> 6) << 32;
        v50 = v28 - v30;
        v32 = v17;
        v33 = v23;
        v34 = &v12[-(v24 >> 6)];
        v35 = (v24 >> 6) - v15;
        while (1)
        {
          v35 += v15;
          if (v35 >= v20)
          {
            break;
          }

          *v33 = ((v24 & 0x3E) * v12[v31 >> 32] + (64 - (v24 & 0x3E)) * *v34 + 32) >> 6;
          v33 += a2;
          v34 -= v15;
          v31 -= v15 << 32;
          ++result;
          v32 += a2;
          if (v18 == result)
          {
            goto LABEL_61;
          }
        }

        result = 0;
        v36 = v50 / v15 + v29;
        if (v36 >= v19)
        {
          v36 = v19;
        }

        if ((v36 + 1) > v21)
        {
          v37 = v36 + 1;
        }

        else
        {
          v37 = v21;
        }

        v38 = ~v36 + v37;
        v39 = v12[v49];
        v40 = vdupq_n_s64(v38);
        v41 = (v28 - (v27 + v29)) / v15 + v29;
        do
        {
          v42 = vdupq_n_s64(result);
          v43 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED490)));
          if (vuzp1_s8(vuzp1_s16(v43, 14), 14).u8[0])
          {
            *(v66 + v32) = v39;
          }

          if (vuzp1_s8(vuzp1_s16(v43, 14), 14).i8[1])
          {
            *(v22 + v32) = v39;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED480)))), 14).i8[2])
          {
            *(v26 + v32) = v39;
            *(v54 + v32) = v39;
          }

          v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED470)));
          if (vuzp1_s8(14, vuzp1_s16(v44, 14)).i32[1])
          {
            *(v25 + v32) = v39;
          }

          if (vuzp1_s8(14, vuzp1_s16(v44, 14)).i8[5])
          {
            *(v55 + v32) = v39;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED460))))).i8[6])
          {
            *(v56 + v32) = v39;
            *(v57 + v32) = v39;
          }

          v45 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED450)));
          if (vuzp1_s8(vuzp1_s16(v45, 14), 14).u8[0])
          {
            *(v58 + v32) = v39;
          }

          if (vuzp1_s8(vuzp1_s16(v45, 14), 14).i8[1])
          {
            *(v59 + v32) = v39;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED440)))), 14).i8[2])
          {
            *(v60 + v32) = v39;
            *(v61 + v32) = v39;
          }

          v46 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED430)));
          if (vuzp1_s8(14, vuzp1_s16(v46, 14)).i32[1])
          {
            *(v62 + v32) = v39;
          }

          if (vuzp1_s8(14, vuzp1_s16(v46, 14)).i8[5])
          {
            *(v63 + v32) = v39;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v42, xmmword_2775ED420))))).i8[6])
          {
            *(v64 + v32) = v39;
            *(v65 + v32) = v39;
          }

          result += 16;
          if (v41 >= v19)
          {
            v47 = v19;
          }

          else
          {
            v47 = v41;
          }

          if ((v47 + 1) > v21)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v21;
          }

          v32 += 16 * a2;
        }

        while (((v48 - v47 + 15) & 0xFFFFFFFFFFFFFFF0) != result);
      }

LABEL_61:
      ++v17;
      v6 = v53;
      v24 += v52;
      ++v23;
    }

    while (v17 != v51);
  }

  return result;
}

uint64_t sub_2775C8BB8(uint64_t result, int a2, uint64_t a3, int a4, int a5)
{
  v5 = a5 - 1;
  if (a2 < 2)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (a2 - 1);
    do
    {
      v8 = 0;
      v9 = 0;
      if (v6 >= v5)
      {
        v10 = a5 - 1;
      }

      else
      {
        v10 = v6;
      }

      if (v6 < a4)
      {
        v10 = a4;
      }

      *(result + 2 * v6) = *(a3 + v10);
      do
      {
        v11 = v6 + v8 - 1;
        if (v11 >= v5)
        {
          v11 = a5 - 1;
        }

        if (v6 + v8 <= a4)
        {
          v12 = a4;
        }

        else
        {
          v12 = v11;
        }

        v9 += byte_2775F0F58[v8++] * *(a3 + v12);
      }

      while (v8 != 4);
      v13 = (v9 + 8) >> 4;
      if (v13 >= 0xFF)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      *(result + 2 * v6++ + 1) = v15;
    }

    while (v6 != v7);
  }

  if (v7 < v5)
  {
    v5 = v7;
  }

  if (v7 < a4)
  {
    v5 = a4;
  }

  *(result + 2 * v7) = *(a3 + v5);
  return result;
}

uint64_t sub_2775C8C84(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if (a2 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  if (v8 < 1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (i >= a7 - 1)
      {
        v10 = a7 - 1;
      }

      else
      {
        v10 = i;
      }

      if (i < a6)
      {
        v10 = a6;
      }

      *(result + i) = *(a5 + v10);
    }
  }

  if (a4 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a4;
  }

  if (v8 < v11)
  {
    v8 = v8;
    do
    {
      v12 = 0;
      for (j = -2; j != 3; ++j)
      {
        if (v8 + j >= a7 - 1)
        {
          v14 = a7 - 1;
        }

        else
        {
          v14 = v8 + j;
        }

        if (v8 + j >= a6)
        {
          v15 = v14;
        }

        else
        {
          v15 = a6;
        }

        v12 += byte_2775F0F5C[5 * (a8 - 1) + 2 + j] * *(a5 + v15);
      }

      *(result + v8++) = (v12 + 8) >> 4;
    }

    while (v8 != v11);
    LODWORD(v8) = v11;
  }

  if (v8 < a2)
  {
    v8 = v8;
    do
    {
      if (v8 >= a7 - 1)
      {
        v16 = a7 - 1;
      }

      else
      {
        v16 = v8;
      }

      if (v8 < a6)
      {
        v16 = a6;
      }

      *(result + v8++) = *(a5 + v16);
    }

    while (a2 != v8);
  }

  return result;
}

uint64_t sub_2775C8D90(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v14 = (a6 >> 9) & 1;
  v15 = (a6 & 0x1FF) - 90;
  v16 = *(word_2775F0F00 + (v15 & 0xFFFFFFFE));
  v38 = 180 - (a6 & 0x1FF);
  v17 = *(word_2775F0F00 + (v38 & 0xFE));
  v39 = v14;
  if (a6 > 0x3FF)
  {
    v18 = a5 + a4;
    v19 = 0x10u >> v14;
    v21 = (a6 & 0x1FF) > 0x8C && v19 >= v18;
    v40 = v21;
    if (v15 <= 0x27 && v19 >= v18)
    {
      sub_2775C8BB8(v41, a4 + 1, a3, 0, a4 + 1);
      v17 *= 2;
      v22 = 2;
      goto LABEL_16;
    }

    v23 = sub_2775C78D8(v18, v15, v14);
    if (v23)
    {
      sub_2775C8C84(v42, a4, 0, a7, (a3 + 1), -1, a4, v23);
      goto LABEL_15;
    }
  }

  else
  {
    v40 = 0;
  }

  __memcpy_chk();
LABEL_15:
  v22 = 1;
LABEL_16:
  if (v40)
  {
    result = sub_2775C8BB8(&v41[-2 * a5], a5 + 1, &a3[-a5], 0, a5 + 1);
    v16 *= 2;
  }

  else if (a6 >= 0x400 && (v25 = sub_2775C78D8(a5 + a4, v38, v39)) != 0)
  {
    result = sub_2775C8C84(&v41[-a5], a5, a5 - a8, a5, &a3[-a5], 0, a5 + 1, v25);
  }

  else
  {
    result = memcpy(&v41[-a5], &a3[-a5], a5);
  }

  v41[0] = *a3;
  if (a5 >= 1)
  {
    v26 = 0;
    v27 = v22 << 6;
    v28 = &v41[~v40];
    do
    {
      v27 -= v17;
      if (a4 >= 1)
      {
        v29 = 0;
        LODWORD(result) = v27 >> 6;
        v30 = (v26 << (v40 | 6)) - v16;
        do
        {
          if ((result & 0x80000000) != 0)
          {
            v35 = v30 & 0x3E;
            v34 = (64 - v35) * v28[-(v30 >> 6)];
            v32 = &v28[~(v30 >> 6)];
          }

          else
          {
            v31 = &v41[result];
            v33 = *v31;
            v32 = v31 + 1;
            v34 = (64 - (v27 & 0x3E)) * v33;
            v35 = v27 & 0x3E;
          }

          *(a1 + v29++) = (v34 + v35 * *v32 + 32) >> 6;
          result = (result + v22);
          v30 -= v16;
        }

        while (a4 != v29);
      }

      ++v26;
      a1 += a2;
    }

    while (v26 != a5);
  }

  return result;
}

uint64_t sub_2775C9058(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v9 = result;
  v25 = *MEMORY[0x277D85DE8];
  LODWORD(v10) = *(word_2775F0F00 + (a6 & 0x1FE));
  v23 = a2;
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v13 = a5 + a4;
  if ((a6 & 0x1FF) < 0x33 || (0x10u >> ((a6 & 0x200) != 0)) < v13)
  {
    result = sub_2775C78D8(a5 + a4, 90 - (a6 & 0x1FF), (a6 >> 9) & 1);
    a2 = v23;
    if (result)
    {
      if (a4 >= a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = a4;
      }

      v11 = v24;
      result = sub_2775C8C84(v24, a5 + a4, 0, a5 + a4, a3 + 1, -1, v17 + a4, result);
      a2 = v23;
      goto LABEL_17;
    }

LABEL_2:
    v11 = (a3 + 1);
    if (a4 >= a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = a4;
    }

    v13 = v12 + a4;
LABEL_17:
    v15 = v13 - 1;
    v16 = 1;
    goto LABEL_18;
  }

  if (a4 >= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = a4;
  }

  v11 = v24;
  result = sub_2775C8BB8(v24, a5 + a4, a3 + 1, -1, v14 + a4);
  v15 = 2 * v13 - 2;
  LODWORD(v10) = 2 * v10;
  v16 = 2;
  a2 = v23;
LABEL_18:
  if (a5 >= 1)
  {
    v18 = 0;
    v19 = v15;
    v20 = v10;
    v10 = v10;
    do
    {
      if (a4 >= 1)
      {
        v21 = 0;
        v22 = v10 >> 6;
        while (v22 < v19)
        {
          *(v9 + v21++) = ((v10 & 0x3E) * v11[v22 + 1] + (64 - (v10 & 0x3E)) * v11[v22] + 32) >> 6;
          v22 += v16;
          if (a4 == v21)
          {
            goto LABEL_26;
          }
        }

        result = memset((v9 + v21), v11[v19], a4 - v21);
        a2 = v23;
      }

LABEL_26:
      ++v18;
      v9 += a2;
      v10 += v20;
    }

    while (v18 != a5);
  }

  return result;
}

uint64_t sub_2775C9260(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *(a3 + a4);
    do
    {
      if (a4 >= 1)
      {
        for (i = 0; i != a4; ++i)
        {
          *(result + i) = (*(a3 + ~v5) * byte_2775F0E80[a4 + i] + (256 - byte_2775F0E80[a4 + i]) * v6 + 128) >> 8;
        }
      }

      result += a2;
      ++v5;
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_2775C92D8(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *(a3 - a5);
    do
    {
      if (a4 >= 1)
      {
        v7 = 0;
        v8 = byte_2775F0E80[a5 + v5];
        do
        {
          *(result + v7) = ((256 - v8) * v6 + 128 + *(a3 + 1 + v7) * v8) >> 8;
          ++v7;
        }

        while (a4 != v7);
      }

      result += a2;
      ++v5;
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_2775C9358(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = &byte_2775F0E80[a5];
    v7 = *(a3 + a4);
    v8 = *(a3 - a5);
    v9 = a5;
    do
    {
      if (a4 >= 1)
      {
        v10 = 0;
        v11 = v6[v5];
        do
        {
          *(result + v10) = ((256 - v11) * v8 + 256 + *(a3 + 1 + v10) * v11 + *(a3 + ~v5) * byte_2775F0E80[a4 + v10] + (256 - byte_2775F0E80[a4 + v10]) * v7) >> 9;
          ++v10;
        }

        while (a4 != v10);
      }

      result += a2;
      ++v5;
    }

    while (v5 != v9);
  }

  return result;
}

uint64_t sub_2775C9408(uint64_t result, uint64_t a2, unsigned __int8 *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a5;
    do
    {
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = a3[~v5];
        v10 = v9 - v6;
        if (v9 - v6 >= 0)
        {
          v11 = v9 - v6;
        }

        else
        {
          v11 = v6 - v9;
        }

        do
        {
          v12 = a3[v8 + 1];
          v13 = v6 - v12;
          if (v6 - v12 < 0)
          {
            v13 = v12 - v6;
          }

          v14 = v6 - (v10 + v12);
          if (v14 < 0)
          {
            v14 = v10 + v12 - v6;
          }

          if (v11 > v14)
          {
            LOBYTE(v12) = v6;
          }

          if (v13 <= v14 && v13 <= v11)
          {
            LOBYTE(v12) = v9;
          }

          *(result + v8++) = v12;
        }

        while (a4 != v8);
      }

      ++v5;
      result += a2;
    }

    while (v5 != v7);
  }

  return result;
}

char *sub_2775C9494(char *__dst, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    v8 = __dst;
    v9 = a4;
    do
    {
      __dst = memcpy(v8, (a3 + 1), v9);
      v8 += a2;
      --v5;
    }

    while (v5);
  }

  return __dst;
}

char *sub_2775C94FC(char *__b, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v6 = __b;
    v7 = a4;
    v8 = (a3 - 1);
    v9 = a5;
    do
    {
      v10 = *v8--;
      __b = memset(v6, v10, v7);
      v6 += a2;
      --v9;
    }

    while (v9);
  }

  return __b;
}

_DWORD *sub_2775C9564(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a5 >> 1;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = (a3 - 1);
    do
    {
      v8 = *v7--;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_2775C95A4(a1, a2, a4, a5, v5 >> __clz(__rbit32(a5)));
}

_DWORD *sub_2775C95A4(_DWORD *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 < 5)
  {
    if (a4 >= 1)
    {
      do
      {
        if (a3 >= 1)
        {
          *result = 16843009 * a5;
        }

        result = (result + a2);
        --a4;
      }

      while (a4);
    }
  }

  else if (a4 >= 1)
  {
    v5 = 0;
    v6 = 0x101010101010101 * a5;
    v7 = (a3 - 1) >> 3;
    v8 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(v7);
    do
    {
      v10 = 0;
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v10), xmmword_2775ED490)));
        if (v11.i8[0])
        {
          *&result[2 * v10] = v6;
        }

        if (v11.i8[4])
        {
          *&result[2 * v10 + 2] = v6;
        }

        v10 += 2;
      }

      while (v8 != v10);
      result = (result + a2);
      ++v5;
    }

    while (v5 != a4);
  }

  return result;
}

_DWORD *sub_2775C9660(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a4 >> 1;
  if (a4 >= 1)
  {
    v6 = a4;
    v7 = (a3 + 1);
    do
    {
      v8 = *v7++;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_2775C95A4(a1, a2, a4, a5, v5 >> __clz(__rbit32(a4)));
}

_DWORD *sub_2775C96B0(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_2775C8080(a3, a4, a5);

  return sub_2775C95A4(a1, a2, a4, a5, v9);
}

_OWORD *sub_2775C9718(_OWORD *a1, uint64_t a2, __int16 *a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = a6 & 0x1FF;
  v15 = word_2775F0F00[(270 - v14) >> 1];
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v17 = a5 + a4;
  if ((v14 - 220) < 0xFFFFFFD8 || (0x10u >> ((a6 & 0x200) != 0)) < v17)
  {
    v23 = sub_2775C78D8(a5 + a4, v14 - 180, (a6 >> 9) & 1);
    if (v23)
    {
      v24 = v23;
      v30[0].i16[0] = *a3;
      if (a4 <= a5)
      {
        v25 = a5;
      }

      else
      {
        v25 = a4;
      }

      if (a4 >= a5)
      {
        v26 = a5;
      }

      else
      {
        v26 = a4;
      }

      sub_2775810B8((v30[0].i64 + 2), a3, v25 + a5);
      sub_277580A88(v29, a5 + a4, v30, v26 + a5, v24);
      goto LABEL_23;
    }

LABEL_2:
    if (a4 >= a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = a4;
    }

    v17 = v16 + a5;
    sub_2775810B8(v29, a3, v16 + a5);
LABEL_23:
    v21 = v17 - 1;
    v20 = 1;
    v22 = 1;
    goto LABEL_24;
  }

  v30[0].i16[0] = *a3;
  if (a4 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = a4;
  }

  if (a4 >= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = a4;
  }

  sub_2775810B8((v30[0].i64 + 2), a3, v18 + a5);
  sub_27758096C(v29, (a5 + a4), v30, v19 + a5, a9);
  v20 = 0;
  v21 = 2 * v17 - 2;
  v15 = (2 * v15);
  v22 = 2;
LABEL_24:
  v27 = 63 - v21;
  if (63 - v21 <= a5 + 15)
  {
    v27 = a5 + 15;
  }

  sub_277580CB0(&v29[0].i16[v21 + 1], v29[0].u16[v21], v27 * v22);
  if (v20)
  {
    return sub_277582054(a1, a2, v29, a4, a5, v15, v21);
  }

  else
  {
    return sub_277582480(a1, a2, v29, a4, a5, v15, v21);
  }
}

int8x16_t *sub_2775C9914(int8x16_t *a1, uint64_t a2, int8x16_t *a3, signed int a4, signed int a5, unsigned int a6, int a7, signed int a8, unsigned int a9)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = (a6 & 0x1FF) - 90;
  v14 = *(word_2775F0F00 + (v13 & 0xFFFFFFFE));
  v15 = 180 - (a6 & 0x1FF);
  v16 = *(word_2775F0F00 + (v15 & 0xFE));
  if (a6 < 0x400)
  {
    __memcpy_chk();
    LOBYTE(v17) = 0;
    goto LABEL_28;
  }

  v31 = a2;
  v19 = (a6 >> 9) & 1;
  v20 = 0x10u >> ((a6 & 0x200) != 0);
  v21 = v20 < a5 + a4;
  v22 = v20 >= a5 + a4 && (a6 & 0x1FF) > 0x8C;
  v17 = !v21 && v13 < 0x28;
  if (!v17)
  {
    v30 = v22;
    v24 = sub_2775C78D8(a5 + a4, v13, (a6 >> 9) & 1);
    if (v24)
    {
      if (a7 >= a4)
      {
        v25 = a4;
      }

      else
      {
        v25 = a7;
      }

      sub_277580A88(&v34[0].i16[1], v25, a3, a4, v24);
      if (a4 <= a7)
      {
        if (!v30)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      memcpy(&v34[0].i16[a7 + 1], &a3->i16[a7 + 1], 2 * (a4 - a7));
    }

    else
    {
      __memcpy_chk();
    }

    if (!v30)
    {
      goto LABEL_21;
    }

LABEL_19:
    v33.i16[0] = a3->i16[0];
    sub_2775810B8((v33.i64 + 2), a3, a5);
    sub_277580A10(v35, a5, &v33, a9);
    v35[0].i16[0] = a3->i16[0];
    v34[0].i16[0] = v35[0].i16[0];
    return sub_277581D04(a1, v31, v34, v35[0].i8, a4, a5, v16, 2 * v14);
  }

  sub_277580A10(v34, a4, a3, a9);
  v16 *= 2;
LABEL_21:
  v27 = sub_2775C78D8(a5 + a4, v15, v19);
  if (v27)
  {
    v28 = v27;
    v33.i16[0] = a3->i16[0];
    sub_2775810B8((v33.i64 + 2), a3, a5);
    if (a8 >= a5)
    {
      v29 = a5;
    }

    else
    {
      v29 = a8;
    }

    sub_277580A88(&v35[0].i16[1], v29, &v33, a5, v28);
    a2 = v31;
    if (a5 > a8)
    {
      memcpy(&v35[0].i16[a8 + 1], &v33.i16[a8 + 1], 2 * (a5 - a8));
    }

    v35[0].i16[0] = a3->i16[0];
    v34[0].i16[0] = v35[0].i16[0];
    if (v17)
    {
      return sub_2775819C0(a1, a2, v34, v35, a4, a5, v16, v14);
    }

    return sub_2775810E4(a1, a2, v34, v35, a4);
  }

  a2 = v31;
LABEL_28:
  sub_2775810B8((v35[0].i64 + 2), a3, a5);
  v35[0].i16[0] = a3->i16[0];
  v34[0].i16[0] = v35[0].i16[0];
  if (v17)
  {
    return sub_2775819C0(a1, a2, v34, v35, a4, a5, v16, v14);
  }

  return sub_2775810E4(a1, a2, v34, v35, a4);
}

int16x8_t *sub_2775C9C80(int16x8_t *a1, uint64_t a2, int8x16_t *a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v14 = *(word_2775F0F00 + (a6 & 0x1FE));
  if (a6 < 0x400)
  {
    goto LABEL_2;
  }

  v16 = a5 + a4;
  if ((a6 & 0x1FF) < 0x33 || (0x10u >> ((a6 & 0x200) != 0)) < v16)
  {
    v21 = sub_2775C78D8(a5 + a4, 90 - (a6 & 0x1FF), (a6 >> 9) & 1);
    if (v21)
    {
      if (a4 >= a5)
      {
        v22 = a5;
      }

      else
      {
        v22 = a4;
      }

      sub_277580A88(v24, a5 + a4, a3, v22 + a4, v21);
      goto LABEL_17;
    }

LABEL_2:
    if (a4 >= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = a4;
    }

    v16 = v15 + a4;
    __memcpy_chk();
LABEL_17:
    v19 = v16 - 1;
    v18 = 1;
    v20 = 1;
    goto LABEL_18;
  }

  if (a4 >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  sub_27758096C(v24, (a5 + a4), a3, v17 + a4, a9);
  v18 = 0;
  v19 = 2 * v16 - 2;
  v14 = (2 * v14);
  v20 = 2;
LABEL_18:
  sub_277580CB0(&v24[0].i16[v19 + 1], v24[0].u16[v19], v20 * (a4 + 15));
  if (v18)
  {
    return sub_277580CC4(a1, a2, v24, a4, a5, v14, v19);
  }

  else
  {
    return sub_277580F60(a1, a2, v24, a4, a5, v14, v19);
  }
}

uint64_t sub_2775C9E18(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6)
{
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a5 >= 1)
      {
        for (j = 0; j < a5; j += 2)
        {
          v8 = *a4++;
          v9 = (result + 2 * j);
          *v9 = *(a3 + 2 * (v8 & 7));
          v9[1] = *(a3 + ((v8 >> 3) & 0x1E));
        }
      }

      result += a2;
    }
  }

  return result;
}

uint64_t sub_2775C9E78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v8 = a5 >> 1;
  if (a5 >= 1)
  {
    v9 = a5;
    v10 = (a3 - 2);
    do
    {
      v11 = *v10--;
      v8 += v11;
      --v9;
    }

    while (v9);
  }

  return sub_2775C9EB8(a1, a2, a4, a5, v8 >> __clz(__rbit32(a5)), a6, a7, a8);
}

uint64_t sub_2775C9EB8(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (a3 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(a6 + v9) * a7;
          v11 = v10 < 0;
          if (v10 < 0)
          {
            v10 = -v10;
          }

          v12 = (v10 + 32) >> 6;
          if (v11)
          {
            v12 = -v12;
          }

          v13 = v12 + a5;
          if (v13 >= a8)
          {
            v14 = a8;
          }

          else
          {
            v14 = v13;
          }

          if (v13 >= 0)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          *(result + v9) = v15;
          v9 += 2;
        }

        while (2 * a3 != v9);
      }

      result += a2;
      a6 += 2 * a3;
    }
  }

  return result;
}

uint64_t sub_2775C9F30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v8 = a4 >> 1;
  if (a4 >= 1)
  {
    v9 = a4;
    v10 = (a3 + 2);
    do
    {
      v11 = *v10++;
      v8 += v11;
      --v9;
    }

    while (v9);
  }

  return sub_2775C9EB8(a1, a2, a4, a5, v8 >> __clz(__rbit32(a4)), a6, a7, a8);
}

uint64_t sub_2775C9F88(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v15 = sub_2775CA018(a3, a4, a5);

  return sub_2775C9EB8(a1, a2, a4, a5, v15, a6, a7, a8);
}

uint64_t sub_2775CA018(uint64_t a1, int a2, int a3)
{
  v3 = (a3 + a2) >> 1;
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (a1 + 2);
    do
    {
      v6 = *v5++;
      v3 += v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    v7 = a3;
    v8 = (a1 - 2);
    do
    {
      v9 = *v8--;
      v3 += v9;
      --v7;
    }

    while (v7);
  }

  v10 = v3 >> __clz(__rbit32(a3 + a2));
  if (2 * a2 < a3 || 2 * a3 < a2)
  {
    v12 = 26215;
  }

  else
  {
    v12 = 43691;
  }

  v13 = (v10 * v12) >> 17;
  if (a2 == a3)
  {
    return v10;
  }

  else
  {
    return v13;
  }
}

char *sub_2775CA0C4(char *result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, signed int a7, int a8, int a9)
{
  v11 = result;
  v12 = (a7 - 4 * a5);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = a6 - 4 * a4;
    v15 = a3 >> 1;
    v16 = a3 >> 1 << a9;
    v17 = v14 & ~(v14 >> 31);
    v18 = 2 * a6;
    v19 = &v11[(2 * v17) - 2];
    v20 = a6 - v17;
    v21 = (v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = vdupq_n_s64(v20 - 1);
    v23 = 2 * v16;
    result = &v11[2 * v17 + 8];
    v24 = v11;
    while (v14 < 1)
    {
      v30 = 0;
LABEL_14:
      if (v30 < a6)
      {
        v31 = 0;
        v32 = *(v19 + v18 * v13);
        v33 = result;
        do
        {
          v34 = vdupq_n_s64(v31);
          v35 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v34, xmmword_2775ED490)));
          if (vuzp1_s8(vuzp1_s16(v35, *v22.i8), *v22.i8).u8[0])
          {
            *(v33 - 4) = v32;
          }

          if (vuzp1_s8(vuzp1_s16(v35, *&v22), *&v22).i8[1])
          {
            *(v33 - 3) = v32;
          }

          if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v34, xmmword_2775ED480)))), *&v22).i8[2])
          {
            *(v33 - 2) = v32;
            *(v33 - 1) = v32;
          }

          v36 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v34, xmmword_2775ED470)));
          if (vuzp1_s8(*&v22, vuzp1_s16(v36, *&v22)).i32[1])
          {
            *v33 = v32;
          }

          if (vuzp1_s8(*&v22, vuzp1_s16(v36, *&v22)).i8[5])
          {
            v33[1] = v32;
          }

          if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v34, xmmword_2775ED460))))).i8[6])
          {
            v33[2] = v32;
            v33[3] = v32;
          }

          v31 += 8;
          v33 += 8;
        }

        while (v21 != v31);
      }

      v24 += v18;
      a2 += v23;
      ++v13;
      result += v18;
      if (v13 == v12)
      {
        goto LABEL_32;
      }
    }

    v25 = 0;
    v26 = 1;
    while (1)
    {
      v27 = (v25 << a8);
      v28 = *(a2 + 2 * v27);
      if (a8)
      {
        v28 += *(a2 + 2 * v26);
        if (!a9)
        {
          goto LABEL_10;
        }

        v28 += *(a2 + 2 * (v15 + v27));
        v27 = v26;
      }

      else if (!a9)
      {
LABEL_10:
        v29 = 2;
        goto LABEL_11;
      }

      v28 += *(a2 + 2 * (v15 + v27));
      v29 = 1;
LABEL_11:
      *&v24[2 * v25++] = v28 << (v29 + (a8 == 0));
      v26 += 2;
      if (v14 == v25)
      {
        v30 = v14;
        goto LABEL_14;
      }
    }
  }

  LODWORD(v12) = 0;
  v24 = result;
LABEL_32:
  v37 = a7 - v12;
  if (a7 <= v12)
  {
    v38 = a6;
  }

  else
  {
    v38 = a6;
    do
    {
      result = memcpy(v24, &v24[-2 * a6], 2 * a6);
      v24 += 2 * a6;
      --v37;
    }

    while (v37);
  }

  v39 = 0;
  v40 = __clz(__rbit32(a7)) + __clz(__rbit32(a6));
  v41 = 1 << v40 >> 1;
  v42 = 2 * v38;
  v43 = v11;
  do
  {
    v44 = 0;
    do
    {
      v41 += *&v43[2 * v44++];
    }

    while (v38 != v44);
    ++v39;
    v43 += v42;
  }

  while (v39 != a7);
  v45 = 0;
  v46 = v41 >> v40;
  do
  {
    v47 = 0;
    do
    {
      *&v11[2 * v47++] -= v46;
    }

    while (v38 != v47);
    ++v45;
    v11 += v42;
  }

  while (v45 != a7);
  return result;
}