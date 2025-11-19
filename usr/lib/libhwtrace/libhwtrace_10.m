void sub_298B677C8(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (!*(a3 + 16))
  {
    (*(*a2 + 168))(a2, *(a3 + 56), 0);
    *(a3 + 16) = (*(*a2 + 80))(a2);
  }

  v7 = sub_298B604D4(a2[1], a2 + 74, *(*(a2[1] + 160) + 696), *(a3 + 56));
  (*(*a2 + 168))(a2, v7, 0);

  sub_298B65650(a2, a3, a4 ^ 1);
}

uint64_t sub_298B678D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v57 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v15 = result;
    v16 = *(result + 8);
    v17 = sub_298B44B48(a5, 0, v16, 0);
    v18 = sub_298B44B48(a4, 0, v16, 0);
    *(v16 + 264) += 32;
    v19 = *(v16 + 184);
    if (!v19 || ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) - v19 + 32 > *(v16 + 192) - v19)
    {
      v21 = *(v16 + 208) >> 7;
      if (v21 >= 0x1E)
      {
        LOBYTE(v21) = 30;
      }

      v22 = 4096 << v21;
      v24 = operator new(4096 << v21, 8uLL);
      v23 = *(v16 + 208);
      if (v23 >= *(v16 + 212))
      {
        v34 = v24;
        sub_298B90A44(v16 + 200, (v16 + 216), v23 + 1, 8);
        v24 = v34;
        LODWORD(v23) = *(v16 + 208);
      }

      *(*(v16 + 200) + 8 * v23) = v24;
      ++*(v16 + 208);
      *(v16 + 192) = v24 + v22;
    }

    else
    {
      v24 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v16 + 184) = v24 + 32;
    *v24 = 0;
    *(v24 + 1) = (*(v24 + 4) << 24) | 0x12;
    *(v24 + 8) = 0;
    *(v24 + 16) = v17;
    *(v24 + 24) = v18;
    v25 = *(v15 + 304);
    v49 = 0;
    v50 = 0;
    v52 = 0;
    v51 = 0;
    result = sub_298B44C70(v24, &v49, v25, 0, 0, 0, 0);
    v26 = result && v49 == 0;
    if (v26 && !v50)
    {
      if (a3)
      {
        v28 = 24 * a3;
        v29 = (a2 + 16);
        while (1)
        {
          v30 = *v29;
          v29 += 6;
          v31 = (1 << v30) & 0x1E0000400;
          if (v30 <= 0x20 && v31 != 0)
          {
            break;
          }

          v28 -= 24;
          if (!v28)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        if (4 * a3 - 4 != v51)
        {
          v33 = *(v15 + 8);
          v36 = 1283;
          v35[0] = "Incorrect size for ";
          v35[2] = a6;
          v35[3] = a7;
          v37[0] = v35;
          v37[2] = " ";
          v38 = 770;
          v39[0] = v37;
          v39[2] = a9;
          v39[3] = a10;
          v40 = 1282;
          v41[0] = v39;
          v41[2] = ": ";
          v42 = 770;
          v43[0] = v41;
          v43[2] = v51;
          v44 = 2306;
          v45[0] = v43;
          v45[2] = " bytes of instructions in range, but .seh directives corresponding to ";
          v46 = 770;
          v47[0] = v45;
          v47[2] = (4 * a3 - 4);
          v48 = 2306;
          v49 = v47;
          v51 = " bytes\n";
          v53 = 770;
          *(v33 + 2056) = 1;
          v54 = 0;
          v55[0] = &unk_2A1F1BDB8;
          v55[1] = &v54;
          v55[2] = &v49;
          v56 = v55;
          sub_298B2FFE4(v33, 0, v55);
          result = v56;
          if (v56 == v55)
          {
            result = (*(*v56 + 32))(v56);
          }

          else if (v56)
          {
            result = (*(*v56 + 40))(v56);
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B67C58(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v23 = *a2;
  v24 = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *a1;
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((v4 >> 4) ^ (v4 >> 9));
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (v4 == *v9)
    {
LABEL_3:
      v11 = *(v6 + 16 * v8 + 8);
      return *(a1 + 24) + 16 * v11 + 8;
    }

    v18 = 0;
    v19 = 1;
    while (v10 != -4096)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v10 == -8192;
      }

      if (v20)
      {
        v18 = v9;
      }

      v21 = v8 + v19++;
      v8 = v21 & v7;
      v9 = (v6 + 16 * v8);
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v18)
    {
      v12 = v18;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_298B67D94(a1, &v23, &v23, v12);
  *v13 = v23;
  *(v13 + 2) = v24;
  v14 = *a2;
  v15 = *(a1 + 32);
  if (v15 >= *(a1 + 36))
  {
    v22 = v13;
    sub_298B90A44(a1 + 24, (a1 + 40), v15 + 1, 16);
    v13 = v22;
    LODWORD(v15) = *(a1 + 32);
  }

  v16 = (*(a1 + 24) + 16 * v15);
  *v16 = v14;
  v16[1] = 0;
  v11 = *(a1 + 32);
  *(a1 + 32) = v11 + 1;
  *(v13 + 2) = v11;
  return *(a1 + 24) + 16 * v11 + 8;
}

void *sub_298B67D94(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B67F2C(a1, 2 * v5);
    v10 = *a3;
    v11 = *(v8 + 16) - 1;
    v12 = ((*a3 >> 4) ^ (*a3 >> 9)) & v11;
    a4 = (*v8 + 16 * v12);
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -8192;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = (*v8 + 16 * v12);
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 12) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B67F2C(a1, v5);
    v10 = *a3;
    v19 = *(v8 + 16) - 1;
    v20 = ((*a3 >> 4) ^ (*a3 >> 9)) & v19;
    a4 = (*v8 + 16 * v20);
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++*(v8 + 8);
      if (v10 == -4096)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -4096)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -8192;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = (*v8 + 16 * v20);
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++*(a1 + 8);
  if (v6 != -4096)
  {
LABEL_4:
    --*(a1 + 12);
  }

  return a4;
}

void *sub_298B67F2C(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 4) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = *a1 + 16 * v25;
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = *a1 + 16 * (v30 & v24);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          *(v22 + 8) = *(v16 + 2);
          ++*(a1 + 2);
        }

        v16 += 2;
      }

      while (v16 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v17 = *(a1 + 4);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void *sub_298B68138(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_298ADDDA0();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(72 * v2 + 0x20) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  MEMORY[0x29C2945E0](0, 8);
  v9 = *(a2 + 48);
  *(v7 + 48) = v9;
  if (v9)
  {
    v10 = operator new(16 * v9, 8uLL);
    *(72 * v2 + 0x20) = v10;
    *(72 * v2 + 0x28) = *(a2 + 40);
    memcpy(v10, *(a2 + 32), 16 * *(72 * v2 + 0x30));
    v11 = (v7 + 72);
    *(72 * v2 + 0x38) = 72 * v2 + 72;
    *(72 * v2 + 0x40) = 0;
    v12 = (v7 + 56);
    v13 = *(a2 + 64);
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(72 * v2 + 0x20) = 0;
    *(72 * v2 + 0x28) = 0;
    v11 = (v7 + 72);
    *(72 * v2 + 0x38) = 72 * v2 + 72;
    *(72 * v2 + 0x40) = 0;
    v12 = (v7 + 56);
    v13 = *(a2 + 64);
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (v7 != a2)
  {
    sub_298B90A44(v12, v11, v13, 16);
    v14 = *(a2 + 64);
    if (v14)
    {
      memcpy(*v12, *(a2 + 56), 16 * v14);
    }

    *(72 * v2 + 0x40) = v13;
  }

LABEL_18:
  v15 = *a1;
  v16 = a1[1];
  v17 = v7 - &v16[-*a1];
  if (v16 != *a1)
  {
    v36 = v7 - &v16[-*a1];
    v18 = 0;
    v19 = -8 * (&v16[-*a1] >> 3) + 72 * v2;
    do
    {
      v21 = &v15[v18];
      v22 = v19 + v18;
      v23 = *&v15[v18 + 16];
      *v22 = *&v15[v18];
      *(v22 + 16) = v23;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 32) = *&v15[v18 + 32];
      *(v21 + 4) = 0;
      *(v22 + 40) = *&v15[v18 + 40];
      *(v21 + 10) = 0;
      v24 = *(v19 + v18 + 44);
      *(v22 + 44) = *&v15[v18 + 44];
      *(v21 + 11) = v24;
      v25 = *(v19 + v18 + 48);
      *(v22 + 48) = *&v15[v18 + 48];
      *(v21 + 12) = v25;
      v26 = (v19 + v18 + 72);
      *(v19 + v18 + 56) = v26;
      *(v22 + 64) = 0;
      v27 = *&v15[v18 + 64];
      if (v27 && v22 != v21)
      {
        v28 = *(v21 + 7);
        v29 = &v15[v18];
        v30 = &v15[v18 + 72];
        if (v30 == v28)
        {
          sub_298B90A44(v19 + v18 + 56, v26, *&v15[v18 + 64], 16);
          v31 = *(v21 + 16);
          if (v31)
          {
            memcpy(*(v19 + v18 + 56), *(v21 + 7), 16 * v31);
          }

          *(v22 + 64) = v27;
        }

        else
        {
          *(v22 + 56) = v28;
          v20 = *(v29 + 17);
          *(v22 + 64) = v27;
          *(v22 + 68) = v20;
          *(v21 + 7) = v30;
          *(v29 + 17) = 0;
        }

        *(v21 + 16) = 0;
      }

      v18 += 72;
    }

    while (&v15[v18] != v16);
    v32 = v15 + 72;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      MEMORY[0x29C2945E0](*(v32 - 5), 8);
      v33 = v32 == v16;
      v32 += 72;
    }

    while (!v33);
    v15 = *a1;
    v17 = v36;
  }

  *a1 = v17;
  a1[1] = v11;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v11;
}

uint64_t sub_298B68478(uint64_t a1, unsigned int *a2)
{
  v2 = a2[4];
  switch(v2)
  {
    case 2u:
      v12 = (a2[2] >> 4) & 0x1F;
      break;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      __break(1u);
      JUMPOUT(0x298B68B30);
    case 0xAu:
      v12 = 233;
      break;
    case 0xBu:
      v21 = a2[2];
      (*(*a1 + 520))(a1, (v21 >> 12) & 7 | 0xC0, 1);
      v12 = (v21 >> 4);
      break;
    case 0xCu:
      v12 = (*(a2 + 8) >> 3) | 0x20u;
      break;
    case 0xDu:
      v12 = ((a2[2] - 1) >> 3) & 0x3F | 0x80;
      break;
    case 0xEu:
      v12 = (a2[2] >> 3) & 0x3F | 0x40;
      break;
    case 0xFu:
      v27 = a2[3] + 237;
      v28 = 208;
      goto LABEL_35;
    case 0x10u:
      v17 = a2[3] + 237;
      v18 = a2;
      (*(*a1 + 520))(a1, (v17 >> 3) & 1 | 0xD4, 1);
      goto LABEL_22;
    case 0x11u:
      v27 = a2[3] + 237;
      v28 = 200;
LABEL_35:
      (*(*a1 + 520))(a1, v28 & 0xFFFFFFFC | (v27 >> 2) & 3, 1);
      v11 = (a2[2] >> 3) | (v27 << 6);
      goto LABEL_9;
    case 0x12u:
      v22 = a2[3] + 237;
      (*(*a1 + 520))(a1, (v22 >> 2) & 3 | 0xCC, 1);
      v11 = ((a2[2] >> 3) - 1) | (v22 << 6);
      goto LABEL_9;
    case 0x13u:
      v30 = a2[3] + 237;
      (*(*a1 + 520))(a1, (v30 >> 3) & 1 | 0xD6, 1);
      v12 = (a2[2] >> 3) | (32 * v30) & 0xC0;
      break;
    case 0x14u:
      v15 = a2[3];
      v16 = 220;
      goto LABEL_39;
    case 0x15u:
      v17 = a2[3];
      v18 = a2;
      (*(*a1 + 520))(a1, 222, 1);
LABEL_22:
      v11 = ((v18[2] >> 3) - 1) | (32 * v17);
      goto LABEL_9;
    case 0x16u:
      v15 = a2[3];
      v16 = 216;
LABEL_39:
      (*(*a1 + 520))(a1, v16 & 0xFFFFFFFFFFFFFFFELL | (v15 >> 2) & 1, 1);
      v11 = (a2[2] >> 3) | (v15 << 6);
      goto LABEL_9;
    case 0x17u:
      v19 = a2[3];
      (*(*a1 + 520))(a1, (v19 >> 2) & 1 | 0xDA, 1);
      v11 = ((a2[2] >> 3) - 1) | (v19 << 6);
      goto LABEL_9;
    case 0x18u:
      v12 = 225;
      break;
    case 0x19u:
      (*(*a1 + 520))(a1, 226, 1);
      v12 = (a2[2] >> 3);
      break;
    case 0x1Au:
      v12 = 227;
      break;
    case 0x1Bu:
      v12 = 228;
      break;
    case 0x1Cu:
      v12 = 230;
      break;
    case 0x1Du:
      v12 = 232;
      break;
    case 0x1Eu:
      v12 = 234;
      break;
    case 0x1Fu:
      v12 = 235;
      break;
    case 0x20u:
      v12 = 236;
      break;
    case 0x21u:
      v12 = 252;
      break;
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
      v4 = v2 - 34 > 5;
      v5 = a2[4] & 1;
      if (v2 - 34 >= 6)
      {
        v6 = ((v2 - 34) >> 1) - 3;
      }

      else
      {
        v6 = (v2 - 34) >> 1;
      }

      v7 = v2 - 40 < 0xFFFFFFF5;
      if ((v2 - 40 < 0xFFFFFFF5) | v2 & 1 | (v6 == 2))
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }

      v9 = (a2[2] >> v8) - v7;
      (*(*a1 + 520))(a1, 231, 1);
      (*(*a1 + 520))(a1, *(a2 + 12) | (v5 << 6) | (32 * v4), 1);
      LOBYTE(v11) = v9 | (v6 << 6);
LABEL_9:
      v12 = v11;
      break;
    default:
      (*(*a1 + 520))(a1, 224, 1);
      v25 = a2[2];
      (*(*a1 + 520))(a1, (v25 >> 20), 1);
      (*(*a1 + 520))(a1, (v25 >> 12), 1);
      v12 = (v25 >> 4);
      break;
  }

  v13 = *(*a1 + 520);

  return v13(a1, v12, 1);
}

uint64_t sub_298B68BE4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v31 = *a2;
  v32 = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *a1;
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((v4 >> 4) ^ (v4 >> 9));
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (v4 == *v9)
    {
LABEL_3:
      v11 = *(v6 + 16 * v8 + 8);
      return *(a1 + 24) + 48 * v11 + 8;
    }

    v20 = 0;
    v21 = 1;
    while (v10 != -4096)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v10 == -8192;
      }

      if (v22)
      {
        v20 = v9;
      }

      v23 = v8 + v21++;
      v8 = v23 & v7;
      v9 = (v6 + 16 * v8);
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v20)
    {
      v12 = v20;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_298B67D94(a1, &v31, &v31, v12);
  *v13 = v31;
  v14 = *(a1 + 24);
  *(v13 + 2) = v32;
  v15 = *a2;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = v15;
  __p = 0;
  v16 = *(a1 + 32);
  v17 = &v25;
  if (v16 >= *(a1 + 36))
  {
    if (v14 <= &v25 && v14 + 48 * v16 > &v25)
    {
      v24 = &v25 - v14;
      sub_298B68FBC(a1 + 24, v16 + 1);
      v14 = *(a1 + 24);
      v17 = &v24[v14];
    }

    else
    {
      sub_298B68FBC(a1 + 24, v16 + 1);
      v14 = *(a1 + 24);
      v17 = &v25;
    }
  }

  v18 = v14 + 48 * *(a1 + 32);
  *v18 = *v17;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 8) = *(v17 + 8);
  *(v18 + 24) = *(v17 + 3);
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v18 + 32) = *(v17 + 2);
  v11 = *(a1 + 32);
  *(a1 + 32) = v11 + 1;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
    v11 = *(a1 + 32) - 1;
  }

  *(v13 + 2) = v11;
  return *(a1 + 24) + 48 * v11 + 8;
}

uint64_t sub_298B68DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a4)
  {
    return 0;
  }

  v5 = *(a5 + 128);
  v6 = *(a5 + 136);
  v7 = (a5 + 144);
  v8 = a2 - a1;
  if (v5)
  {
    v9 = *(a5 + 112);
    v10 = v5 - 1;
    v11 = (v9 + 16 * v5);
    while (1)
    {
      v12 = *a3;
      LODWORD(v13) = ((*a3 >> 4) ^ (*a3 >> 9)) & v10;
      v14 = (v9 + 16 * v13);
      v15 = *v14;
      if (*v14 != *a3)
      {
        v26 = 1;
        while (v15 != -4096)
        {
          v27 = v13 + v26++;
          v13 = v27 & v10;
          v15 = *(v9 + 16 * v13);
          if (v15 == v12)
          {
            v14 = (v9 + 16 * v13);
            goto LABEL_6;
          }
        }

        v14 = v11;
      }

LABEL_6:
      v16 = (v14 + 1);
      if (v14 == v11)
      {
        v16 = v7;
      }

      v19 = (v6 + 48 * *v16 + 8);
      v18 = *v19;
      v17 = v19[1];
      if (v17 - *v19 == v8)
      {
        if (v17 == v18)
        {
          return v12;
        }

        v20 = 0;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3);
        v22 = 1;
        while (1)
        {
          v23 = 24 * v20;
          v24 = (v18 + 24 * v20);
          v25 = (a1 + v23);
          if (v24[2] != v25[2] || v24[3] != v25[3] || v24[4] != v25[4])
          {
            break;
          }

          v20 = v22++;
          if (v21 <= v20)
          {
            return v12;
          }
        }
      }

      if (++a3 == a4)
      {
        return 0;
      }
    }
  }

  v29 = v6 + 48 * *v7;
  v30 = *(v29 + 8);
  v31 = *(v29 + 16);
  if (v31 - v30 != v8)
  {
    return 0;
  }

  if (v31 == v30)
  {
    return *a3;
  }

  v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  do
  {
    v33 = 0;
    v34 = 1;
    while (1)
    {
      v35 = 24 * v33;
      v36 = (v30 + 24 * v33);
      v37 = (a1 + v35);
      if (v36[2] != v37[2] || v36[3] != v37[3] || v36[4] != v37[4])
      {
        break;
      }

      v33 = v34++;
      if (v32 <= v33)
      {
        return *a3;
      }
    }

    v12 = 0;
    ++a3;
  }

  while (a3 != a4);
  return v12;
}

void sub_298B68FBC(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  v4 = sub_298B90848(a1, (a1 + 16), a2, 48, &v14);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4;
    do
    {
      *v8 = *v5;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 8) = *(v5 + 8);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v8 + 2) = *(v5 + 2);
      v8 += 48;
      v5 += 48;
    }

    while (v5 != v7);
    v5 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = &v5[48 * v9 - 40];
      v11 = -48 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          *(v10 + 8) = v12;
          operator delete(v12);
        }

        v10 -= 48;
        v11 += 48;
      }

      while (v11);
      v5 = *a1;
    }
  }

  v13 = v14;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v13;
}

void sub_298B690C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[12] = *MEMORY[0x29EDCA608];
  v6 = sub_298B4B8F0(a1, 0);
  v30 = v32;
  v31 = 0x400000000;
  v27 = v29;
  v28 = xmmword_298D1A100;
  (*(**(*(a1 + 304) + 16) + 32))(*(*(a1 + 304) + 16), a2, &v27, &v30, a3);
  if (v31)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(v6 + 128);
    v10 = 24 * v31;
    do
    {
      v11 = v30;
      v12 = &v30[24 * v8];
      v13 = &v30[v7];
      *&v30[v7 + 8] += *(v6 + 72);
      v14 = *(v6 + 120);
      if (v9 >= *(v6 + 132))
      {
        v17 = v6 + 120;
        v18 = (v6 + 136);
        v19 = v9 + 1;
        if (v14 <= v13 && v14 + 24 * v9 > v13)
        {
          v21 = *(v6 + 120);
          v22 = v11;
          sub_298B90A44(v17, v18, v19, 24);
          v14 = *(v6 + 120);
          v12 = &v22[v14 + v7 - v21];
        }

        else
        {
          sub_298B90A44(v17, v18, v19, 24);
          v14 = *(v6 + 120);
        }
      }

      v15 = v14 + 24 * *(v6 + 128);
      v16 = *v12;
      *(v15 + 16) = *(v12 + 2);
      *v15 = v16;
      v9 = *(v6 + 128) + 1;
      *(v6 + 128) = v9;
      ++v8;
      v7 += 24;
    }

    while (v10 != v7);
  }

  *(v6 + 50) = 1;
  *(v6 + 56) = a3;
  v24 = v27;
  v23 = v28;
  v25 = *(v6 + 72);
  if (*(v6 + 80) < (v25 + v28))
  {
    sub_298B90C08(v6 + 64, (v6 + 88), v25 + v28, 1);
    v25 = *(v6 + 72);
  }

  if (v23)
  {
    memcpy((*(v6 + 64) + v25), v24, v23);
    v25 = *(v6 + 72);
  }

  *(v6 + 72) = v25 + v23;
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  v26 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B69308(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 168))(a1, *(*(a1[1] + 160) + 24), 0);
  (*(*a1 + 648))(a1, 2, a3, 0);
  (*(*a1 + 168))(a1, *(*(a1[1] + 160) + 32), 0);
  (*(*a1 + 648))(a1, 2, a3, 0);
  (*(*a1 + 168))(a1, *(*(a1[1] + 160) + 40), 0);
  (*(*a1 + 648))(a1, 2, a3, 0);
  v5 = *(*(a1[1] + 160) + 24);
  v6 = *(*a1 + 168);

  return v6(a1, v5, 0);
}

uint64_t sub_298B69510(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  if ((v5 & 0x10) == 0)
  {
    v6 = *(a1 + 304);
    *(a2 + 8) = v5 | 0x10;
    v10 = a2;
    sub_298B250EC(v6 + 56, &v10);
  }

  result = 0;
  if (a3 > 25)
  {
    if (a3 == 28)
    {
      v8 = *(a2 + 8) & 0xFFFFF1FFFFFFFFFFLL;
      v9 = 0x800000000A0;
      goto LABEL_12;
    }

    if (a3 != 26)
    {
      return result;
    }

LABEL_9:
    v8 = *(a2 + 8) & 0xFFFFF1FFFFFFFFDFLL;
    v9 = 0x60000000020;
LABEL_12:
    *(a2 + 8) = v8 | v9;
    return 1;
  }

  if (a3 == 9)
  {
    *(a2 + 8) |= 0x20uLL;
    return 1;
  }

  if (a3 == 24)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_298B695FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v11 = *MEMORY[0x29EDCA608];
  if (*(result + 560))
  {
    v6 = "starting a new symbol definition without completing the previous one";
    v7 = 259;
    v4 = *(result + 8);
    *(v4 + 2056) = 1;
    v8 = 0;
    v9[0] = &unk_2A1F1BDB8;
    v9[1] = &v8;
    v9[2] = &v6;
    v10 = v9;
    sub_298B2FFE4(v4, 0, v9);
    result = v10;
    if (v10 == v9)
    {
      result = (*(*v10 + 32))(v10);
    }

    else if (v10)
    {
      result = (*(*v10 + 40))();
    }
  }

  *(v3 + 560) = a2;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B69720(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[70];
  if (v2)
  {
    if (a2 < 0x100)
    {
      v4 = *(v2 + 8);
      if ((v4 & 0x10) == 0)
      {
        v5 = a1[38];
        *(v2 + 8) = v4 | 0x10;
        v11[0] = v2;
        sub_298B250EC(v5 + 56, v11);
        v2 = a1[70];
        v4 = *(v2 + 8);
      }

      *(v2 + 8) = v4 & 0xFFFFFF00FFFFFFFFLL | (a2 << 32);
      goto LABEL_11;
    }

    v13 = 0;
    v14[0] = "storage class value '";
    v15 = a2;
    v17 = 2563;
    v11[0] = v14;
    v11[2] = "' out of range";
    v12 = 770;
    v9 = a1[1];
    *(v9 + 2056) = 1;
    v18[0] = &unk_2A1F1BDB8;
    v18[1] = &v13;
    v18[2] = v11;
    v19 = v18;
    sub_298B2FFE4(v9, 0, v18);
    v8 = v19;
    if (v19 == v18)
    {
LABEL_10:
      (*(*v8 + 32))(v8);
      goto LABEL_11;
    }
  }

  else
  {
    v11[0] = "storage class specified outside of symbol definition";
    v12 = 259;
    v7 = a1[1];
    v18[0] = 0;
    *(v7 + 2056) = 1;
    v14[0] = &unk_2A1F1BDB8;
    v14[1] = v18;
    v15 = v11;
    v16 = v14;
    sub_298B2FFE4(v7, 0, v14);
    v8 = v16;
    if (v16 == v14)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

LABEL_11:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_298B69904(void *a1, unsigned int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[70];
  if (v2)
  {
    if (a2 < 0x10000)
    {
      v3 = *(v2 + 8);
      if ((v3 & 0x10) == 0)
      {
        v4 = a1[38];
        *(v2 + 8) = v3 | 0x10;
        v11[0] = v2;
        v6 = a2;
        sub_298B250EC(v4 + 56, v11);
        LOWORD(a2) = v6;
        v2 = a1[70];
      }

      *(v2 + 32) = a2;
      goto LABEL_11;
    }

    v13 = 0;
    v14[0] = "type value '";
    v15 = a2;
    v17 = 2563;
    v11[0] = v14;
    v11[2] = "' out of range";
    v12 = 770;
    v9 = a1[1];
    *(v9 + 2056) = 1;
    v18[0] = &unk_2A1F1BDB8;
    v18[1] = &v13;
    v18[2] = v11;
    v19 = v18;
    sub_298B2FFE4(v9, 0, v18);
    v8 = v19;
    if (v19 == v18)
    {
LABEL_10:
      (*(*v8 + 32))(v8);
      goto LABEL_11;
    }
  }

  else
  {
    v11[0] = "symbol type specified outside of a symbol definition";
    v12 = 259;
    v7 = a1[1];
    v18[0] = 0;
    *(v7 + 2056) = 1;
    v14[0] = &unk_2A1F1BDB8;
    v14[1] = v18;
    v15 = v11;
    v16 = v14;
    sub_298B2FFE4(v7, 0, v14);
    v8 = v16;
    if (v16 == v14)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

LABEL_11:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B69AE0(uint64_t result)
{
  v1 = result;
  v9 = *MEMORY[0x29EDCA608];
  if (!*(result + 560))
  {
    v4 = "ending symbol definition without starting one";
    v5 = 259;
    v3 = *(result + 8);
    *(v3 + 2056) = 1;
    v6 = 0;
    v7[0] = &unk_2A1F1BDB8;
    v7[1] = &v6;
    v7[2] = &v4;
    v8 = v7;
    sub_298B2FFE4(v3, 0, v7);
    result = v8;
    if (v8 == v7)
    {
      result = (*(*v8 + 32))(v8);
    }

    else if (v8)
    {
      result = (*(*v8 + 40))();
    }
  }

  *(v1 + 560) = 0;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B69BFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(v2 + 48) == 37 && (*(a2 + 13) & 1) == 0)
  {
    v3 = *(*(v2 + 160) + 704);
    if ((*(v3 + 44) & 4) == 0)
    {
      v4 = *(result + 304);
      v5 = v3;
      sub_298AE7E30(v4 + 32, &v5);
      *(v3 + 44) |= 4u;
    }

    if (*(v3 + 24) <= 1u)
    {
      *(v3 + 24) = 2;
    }

    operator new();
  }

  return result;
}

void sub_298B69D04(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    v2 = *(*(a1 + 144) + 32 * v1 - 32);
    if ((*(v2 + 44) & 4) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v2 = 0;
    if ((MEMORY[0x2C] & 4) != 0)
    {
LABEL_4:
      if (*(v2 + 24) <= 1u)
      {
        *(v2 + 24) = 2;
      }

      operator new();
    }
  }

  v3 = *(a1 + 304);
  v4 = v2;
  sub_298AE7E30(v3 + 32, &v4);
  *(v2 + 44) |= 4u;
  goto LABEL_4;
}

void sub_298B69E28(uint64_t *a1, uint64_t a2)
{
  (*(*a1 + 56))(a1);
  v4 = sub_298B4B8F0(a1, 0);
  v5 = sub_298B44B48(a2, 0, a1[1], 0);
  v6 = *(v4 + 72);
  v16 = v5;
  v17 = v6;
  v18 = 19;
  v19 = 0;
  v7 = v4 + 120;
  v8 = *(v4 + 120);
  v9 = *(v4 + 128);
  v10 = &v16;
  if (v9 >= *(v4 + 132))
  {
    if (v8 <= &v16 && v8 + 24 * v9 > &v16)
    {
      v15 = &v16 - v8;
      sub_298B90A44(v7, (v4 + 136), v9 + 1, 24);
      v8 = *(v4 + 120);
      v10 = &v15[v8];
    }

    else
    {
      sub_298B90A44(v7, (v4 + 136), v9 + 1, 24);
      v8 = *(v4 + 120);
      v10 = &v16;
    }
  }

  v11 = v8 + 24 * *(v4 + 128);
  v12 = *v10;
  *(v11 + 16) = *(v10 + 2);
  *v11 = v12;
  ++*(v4 + 128);
  v13 = *(v4 + 72);
  v14 = v13 + 2;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (*(v4 + 80) < v14)
    {
      sub_298B90C08(v4 + 64, (v4 + 88), v14, 1);
      v13 = *(v4 + 72);
    }

    *(*(v4 + 64) + v13) = 0;
    v14 = *(v4 + 72) + 2;
  }

  *(v4 + 72) = v14;
}

void sub_298B69F9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = sub_298B4B8F0(a1, 0);
  v7 = sub_298B44B48(a2, 0, a1[1], 0);
  if (a3)
  {
    v8 = a1[1];
    *(v8 + 264) += 24;
    v9 = *(v8 + 184);
    if (v9)
    {
      v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - v9 + 24 > *(v8 + 192) - v9;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = *(v8 + 208) >> 7;
      if (v11 >= 0x1E)
      {
        LOBYTE(v11) = 30;
      }

      v12 = 4096 << v11;
      v14 = operator new(4096 << v11, 8uLL);
      v13 = *(v8 + 208);
      if (v13 >= *(v8 + 212))
      {
        sub_298B90A44(v8 + 200, (v8 + 216), v13 + 1, 8);
        LODWORD(v13) = *(v8 + 208);
      }

      *(*(v8 + 200) + 8 * v13) = v14;
      ++*(v8 + 208);
      *(v8 + 192) = v14 + v12;
    }

    else
    {
      v14 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v8 + 184) = v14 + 24;
    *v14 = 1;
    *(v14 + 1) = *(v14 + 4) << 24;
    *(v14 + 8) = 0;
    *(v14 + 16) = a3;
    v15 = a1[1];
    *(v15 + 264) += 32;
    v16 = *(v15 + 184);
    if (v16 && ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) - v16 + 32 <= *(v15 + 192) - v16)
    {
      v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = *(v15 + 208) >> 7;
      if (v18 >= 0x1E)
      {
        LOBYTE(v18) = 30;
      }

      v19 = 4096 << v18;
      v17 = operator new(4096 << v18, 8uLL);
      v20 = *(v15 + 208);
      if (v20 >= *(v15 + 212))
      {
        v29 = v17;
        sub_298B90A44(v15 + 200, (v15 + 216), v20 + 1, 8);
        v17 = v29;
        LODWORD(v20) = *(v15 + 208);
      }

      *(*(v15 + 200) + 8 * v20) = v17;
      ++*(v15 + 208);
      *(v15 + 192) = v17 + v19;
    }

    *(v15 + 184) = v17 + 32;
    *v17 = 0;
    *(v17 + 1) = *(v17 + 4) << 24;
    *(v17 + 8) = 0;
    *(v17 + 16) = v7;
    *(v17 + 24) = v14;
    v7 = v17;
  }

  v21 = *(v6 + 120);
  v22 = *(v6 + 72);
  v31 = v7;
  v32 = v22;
  v33 = 20;
  v34 = 0;
  v23 = *(v6 + 128);
  v24 = &v31;
  if (v23 >= *(v6 + 132))
  {
    if (v21 <= &v31 && v21 + 24 * v23 > &v31)
    {
      v30 = &v31 - v21;
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v30[v21];
    }

    else
    {
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v31;
    }
  }

  v25 = v21 + 24 * *(v6 + 128);
  v26 = *v24;
  *(v25 + 16) = *(v24 + 2);
  *v25 = v26;
  ++*(v6 + 128);
  v27 = *(v6 + 72);
  v28 = v27 + 4;
  if (v27 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (*(v6 + 80) < v28)
    {
      sub_298B90C08(v6 + 64, (v6 + 88), v28, 1);
      v27 = *(v6 + 72);
    }

    *(*(v6 + 64) + v27) = 0;
    v28 = *(v6 + 72) + 4;
  }

  *(v6 + 72) = v28;
}

void sub_298B6A2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = sub_298B4B8F0(a1, 0);
  v7 = sub_298B44B48(a2, 125, a1[1], 0);
  if (a3)
  {
    v8 = a1[1];
    *(v8 + 264) += 24;
    v9 = *(v8 + 184);
    if (v9)
    {
      v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - v9 + 24 > *(v8 + 192) - v9;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = *(v8 + 208) >> 7;
      if (v11 >= 0x1E)
      {
        LOBYTE(v11) = 30;
      }

      v12 = 4096 << v11;
      v14 = operator new(4096 << v11, 8uLL);
      v13 = *(v8 + 208);
      if (v13 >= *(v8 + 212))
      {
        sub_298B90A44(v8 + 200, (v8 + 216), v13 + 1, 8);
        LODWORD(v13) = *(v8 + 208);
      }

      *(*(v8 + 200) + 8 * v13) = v14;
      ++*(v8 + 208);
      *(v8 + 192) = v14 + v12;
    }

    else
    {
      v14 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v8 + 184) = v14 + 24;
    *v14 = 1;
    *(v14 + 1) = *(v14 + 4) << 24;
    *(v14 + 8) = 0;
    *(v14 + 16) = a3;
    v15 = a1[1];
    *(v15 + 264) += 32;
    v16 = *(v15 + 184);
    if (v16 && ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) - v16 + 32 <= *(v15 + 192) - v16)
    {
      v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = *(v15 + 208) >> 7;
      if (v18 >= 0x1E)
      {
        LOBYTE(v18) = 30;
      }

      v19 = 4096 << v18;
      v17 = operator new(4096 << v18, 8uLL);
      v20 = *(v15 + 208);
      if (v20 >= *(v15 + 212))
      {
        v29 = v17;
        sub_298B90A44(v15 + 200, (v15 + 216), v20 + 1, 8);
        v17 = v29;
        LODWORD(v20) = *(v15 + 208);
      }

      *(*(v15 + 200) + 8 * v20) = v17;
      ++*(v15 + 208);
      *(v15 + 192) = v17 + v19;
    }

    *(v15 + 184) = v17 + 32;
    *v17 = 0;
    *(v17 + 1) = *(v17 + 4) << 24;
    *(v17 + 8) = 0;
    *(v17 + 16) = v7;
    *(v17 + 24) = v14;
    v7 = v17;
  }

  v21 = *(v6 + 120);
  v22 = *(v6 + 72);
  v31 = v7;
  v32 = v22;
  v33 = 3;
  v34 = 0;
  v23 = *(v6 + 128);
  v24 = &v31;
  if (v23 >= *(v6 + 132))
  {
    if (v21 <= &v31 && v21 + 24 * v23 > &v31)
    {
      v30 = &v31 - v21;
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v30[v21];
    }

    else
    {
      sub_298B90A44(v6 + 120, (v6 + 136), v23 + 1, 24);
      v21 = *(v6 + 120);
      v24 = &v31;
    }
  }

  v25 = v21 + 24 * *(v6 + 128);
  v26 = *v24;
  *(v25 + 16) = *(v24 + 2);
  *v25 = v26;
  ++*(v6 + 128);
  v27 = *(v6 + 72);
  v28 = v27 + 4;
  if (v27 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (*(v6 + 80) < v28)
    {
      sub_298B90C08(v6 + 64, (v6 + 88), v28, 1);
      v27 = *(v6 + 72);
    }

    *(*(v6 + 64) + v27) = 0;
    v28 = *(v6 + 72) + 4;
  }

  *(v6 + 72) = v28;
}

void sub_298B6A614(_DWORD *a1, void *a2, unint64_t a3, int a4)
{
  v5 = a3;
  v49[16] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 1);
  if (*(v8 + 60) == 14)
  {
    v9 = *(v8 + 64);
    if (v9 == 19 || v9 == 0)
    {
      if (a4 >= 6uLL)
      {
        sub_298B868A8("alignment is limited to 32-bytes", 1);
      }

      if (1 << a4 > a3)
      {
        v5 = 1 << a4;
      }
    }
  }

  v11 = a2[1];
  if ((v11 & 0x10) == 0)
  {
    v12 = *(a1 + 38);
    a2[1] = v11 | 0x10;
    v47 = a2;
    sub_298B250EC(v12 + 56, &v47);
    v11 = a2[1];
  }

  a2[3] = v5;
  a2[1] = ((a4 << 15) + 0x8000) & 0xF8000 | 0x3020 | v11 & 0xFFFFFFFFFFF03FFFLL;
  if (*(v8 + 60) != 14 || ((v13 = *(v8 + 64)) != 0 ? (v14 = v13 == 19) : (v14 = 1), !v14))
  {
    if (a4)
    {
      v47 = v49;
      v48 = xmmword_298D1A050;
      v37 = 0;
      v41 = 0;
      v42 = 0;
      v44 = &v47;
      v43 = 0;
      v36 = &unk_2A1F1E0B8;
      v38 = 0;
      v39 = 0;
      __dst = 0;
      v15 = *(*(a1 + 1) + 160);
      sub_298B9BCEC(&v36, " -aligncomm:", 0xDuLL);
      v16 = __dst;
      if (a2[1])
      {
        v17 = *(a2 - 1);
        v20 = *v17;
        v18 = v17 + 2;
        v19 = v20;
        if (v20 <= v39 - __dst)
        {
          if (v19)
          {
            v21 = v19;
            memcpy(__dst, v18, v19);
            v16 = __dst + v21;
            __dst = __dst + v21;
          }
        }

        else
        {
          sub_298B9BCEC(&v36, v18, v19);
          v16 = __dst;
        }
      }

      if ((v39 - v16) > 1)
      {
        *v16 = 11298;
        __dst = __dst + 2;
      }

      else
      {
        sub_298B9BCEC(&v36, ",", 2uLL);
      }

      sub_298B8FC48(&v36, 32 - __clz((1 << a4) - 1), 0, 0, 0);
      v22 = *(a1 + 18);
      v23 = a1[38];
      if (v23)
      {
        v24 = v22 + 32 * v23;
        v25 = *(v24 - 32);
        v26 = *(v24 - 16);
        v27 = a1[38];
        v45 = v25;
        v46 = v26;
        v28 = &v45;
        if (v23 >= a1[39])
        {
          goto LABEL_39;
        }
      }

      else
      {
        v27 = 0;
        v45 = 0u;
        v46 = 0u;
        v28 = &v45;
        if (!a1[39])
        {
LABEL_39:
          if (v22 <= &v45 && v22 + 32 * v27 > &v45)
          {
            v35 = &v45 - v22;
            sub_298B90A44((a1 + 36), a1 + 40, v27 + 1, 32);
            v22 = *(a1 + 18);
            v28 = &v35[v22];
          }

          else
          {
            sub_298B90A44((a1 + 36), a1 + 40, v27 + 1, 32);
            v22 = *(a1 + 18);
            v28 = &v45;
          }
        }
      }

      v29 = (v22 + 32 * a1[38]);
      v30 = *(v28 + 1);
      *v29 = *v28;
      v29[1] = v30;
      ++a1[38];
      (*(*a1 + 168))(a1, *(v15 + 680), 0);
      (*(*a1 + 496))(a1, v47, v48);
      v31 = a1[38];
      if (v31 >= 2)
      {
        v32 = *(a1 + 18) + 32 * v31;
        v33 = *(v32 - 64);
        if (v33 && (*(v32 - 32) != v33 || *(v32 - 24) != *(v32 - 56)))
        {
          (*(*a1 + 160))(a1);
          LODWORD(v31) = a1[38];
        }

        a1[38] = v31 - 1;
      }

      sub_298B9AE14(&v36);
      if (v47 != v49)
      {
        free(v47);
      }
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

void *sub_298B6AA28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *(*(*(a1 + 8) + 160) + 40);
  v10 = (a1 + 144);
  v9 = *(a1 + 144);
  v11 = *(a1 + 152);
  if (v11)
  {
    v12 = v9 + 32 * v11;
    v13 = *(v12 - 32);
    v14 = *(v12 - 16);
    v15 = *(a1 + 152);
    v24 = v13;
    v25 = v14;
    v16 = &v24;
    if (v11 < *(a1 + 156))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = 0;
    v24 = 0u;
    v25 = 0u;
    v16 = &v24;
    if (*(a1 + 156))
    {
      goto LABEL_5;
    }
  }

  if (v9 <= &v24 && v9 + 32 * v15 > &v24)
  {
    v23 = &v24 - v9;
    sub_298B90A44(a1 + 144, (a1 + 160), v15 + 1, 32);
    v9 = *(a1 + 144);
    v16 = &v23[v9];
  }

  else
  {
    sub_298B90A44(a1 + 144, (a1 + 160), v15 + 1, 32);
    v9 = *(a1 + 144);
    v16 = &v24;
  }

LABEL_5:
  v17 = (v9 + 32 * *(a1 + 152));
  v18 = *(v16 + 1);
  *v17 = *v16;
  v17[1] = v18;
  ++*(a1 + 152);
  (*(*a1 + 168))(a1);
  (*(*a1 + 640))(a1, a4, 0, 1, 0);
  (*(*a1 + 192))(a1, a2, 0);
  *(a2 + 8) &= ~0x20uLL;
  result = sub_298B5B460(a1, a3);
  v20 = *(a1 + 152);
  if (v20 >= 2)
  {
    v21 = *v10 + 32 * v20;
    v22 = *(v21 - 64);
    if (v22 && (*(v21 - 32) != v22 || *(v21 - 24) != *(v21 - 56)))
    {
      result = (*(*a1 + 160))(a1);
      LODWORD(v20) = *(a1 + 152);
    }

    *(a1 + 152) = v20 - 1;
  }

  return result;
}

unint64_t sub_298B6AC84(uint64_t *a1, void *a2, uint64_t a3)
{
  (*(*a1 + 296))(a1, a2, 24);
  v6 = *(a3 + 8);
  if ((v6 & 0x10) == 0)
  {
    v7 = a1[38];
    *(a3 + 8) = v6 | 0x10;
    v10 = a3;
    sub_298B250EC(v7 + 56, &v10);
  }

  result = sub_298B44B48(a3, 29, a1[1], 0);
  a2[3] = result;
  v9 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x2000;
  *a2 = 0;
  a2[1] = v9;
  return result;
}

void sub_298B6AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a2 + 16) + 8) & 2) == 0 && (*(*(a3 + 16) + 8) & 2) == 0)
  {
    v4 = *(a1 + 304);
    *&v5 = a2;
    *(&v5 + 1) = a3;
    v6 = a4;
    sub_298B41A48(v4 + 2184, &v5);
  }
}

void sub_298B6AD94(uint64_t a1)
{
  v2 = *(a1 + 304);
  v3 = *(v2 + 2184);
  v4 = *(v2 + 2192);
  while (v3 != v4)
  {
    v5 = *(*v3 + 16);
    v6 = *(v5 + 8);
    if ((v6 & 0x10) == 0)
    {
      v7 = *(a1 + 304);
      *(v5 + 8) = v6 | 0x10;
      v11 = v5;
      sub_298B250EC(v7 + 56, &v11);
      *(v5 + 8) |= 0x20uLL;
    }

    v8 = *(v3[1] + 16);
    v9 = *(v8 + 8);
    if ((v9 & 0x10) == 0)
    {
      v10 = *(a1 + 304);
      *(v8 + 8) = v9 | 0x10;
      v11 = v8;
      sub_298B250EC(v10 + 56, &v11);
      *(v8 + 8) |= 0x20uLL;
    }

    v3 += 3;
  }

  sub_298B5187C(a1);
}

double sub_298B6AE68(uint64_t a1)
{
  *(a1 + 560) = 0;
  v2 = *(a1 + 304);
  if (v2)
  {
    sub_298B23F7C(v2);
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  v3 = *(a1 + 368);
  if (!v3 && !*(a1 + 372))
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 376);
  if (v4 > 4 * v3 && v4 >= 0x41)
  {
    sub_298B313C4((a1 + 360));
LABEL_8:
    *(a1 + 392) = 0;
    v5 = a1;

    return sub_298B5A768(v5);
  }

  if (v4)
  {
    v7 = *(a1 + 360);
    v8 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v9 = v7;
    if (v8 <= 2)
    {
      goto LABEL_16;
    }

    v10 = v8 + 1;
    v9 = &v7->i64[v10 & 0x3FFFFFFFFFFFFFFCLL];
    v11 = v7 + 1;
    v12 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11[-1] = v12;
      *v11 = v12;
      v11 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_16:
      v14 = &v7->i64[v4];
      do
      {
        *v9++ = -4096;
      }

      while (v9 != v14);
    }
  }

  *(a1 + 368) = 0;
  *(a1 + 392) = 0;
  v5 = a1;

  return sub_298B5A768(v5);
}

uint64_t sub_298B6AF78(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = *(a2 + 8);
  if ((v5 & 0x7000) != 0x2000)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = *(a1 + 112);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a2 + 8) = v5 | 8;
      v16 = a2;
      v9 = sub_298B45440(*(a2 + 24));
      a2 = v16;
      *v16 = v9;
      v10 = *(a1 + 112);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    v17 = *(v9 + 16);
    v18 = *(a1 + 96);
    v19 = v10 - 1;
    v20 = ((v17 >> 4) ^ (v17 >> 9)) & (v10 - 1);
    v21 = *(v18 + 16 * v20);
    if (v21 == v17)
    {
LABEL_23:
      v22 = *(v18 + 16 * v20 + 8);
LABEL_29:
      v33[0] = 0;
      sub_298B460F8(a3, a2, 1, v33);
      return v33[0] + v22;
    }

    v23 = 1;
    while (v21 != -4096)
    {
      v24 = v20 + v23++;
      v20 = v24 & v19;
      v21 = *(v18 + 16 * v20);
      if (v21 == v17)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    v22 = 0;
    goto LABEL_29;
  }

  v6 = v5 | 8;
  *(a2 + 8) = v6;
  v7 = *(a2 + 24);
  if (*v7 == 1)
  {
    return *(v7 + 16);
  }

  v34 = 0;
  v35 = 0;
  v37 = 0;
  v36 = 0;
  v11 = a2;
  *(a2 + 8) = v6;
  if ((sub_298B44C70(v7, &v34, *a3, a3, 0, 0, 0) & 1) == 0)
  {
    v25 = sub_298B4119C(v11);
    v32 = 1283;
    v27 = "unable to evaluate offset for variable '";
    goto LABEL_35;
  }

  if (v34)
  {
    v12 = *(v34 + 16);
    if (!*v12)
    {
      if ((*(v12 + 8) & 0x7080) != 0x2000)
      {
LABEL_34:
        v25 = sub_298B4119C(v12);
        v32 = 1283;
        v27 = "unable to evaluate offset to undefined symbol '";
LABEL_35:
        v31[0] = v27;
        v31[2] = v25;
        v31[3] = v26;
        v29 = "'";
        v30 = 259;
        sub_298ADC860(v31, &v29, v33);
        sub_298B868DC(v33, 1);
      }

      *(v12 + 8) |= 8uLL;
      v13 = sub_298B45440(*(v12 + 24));
      *v12 = v13;
      if (!v13)
      {
        v28 = v34;
LABEL_33:
        v12 = *(v28 + 16);
        goto LABEL_34;
      }
    }
  }

  if (!v35)
  {
    goto LABEL_16;
  }

  v12 = *(v35 + 16);
  if (*v12)
  {
    goto LABEL_16;
  }

  if ((*(v12 + 8) & 0x7080) != 0x2000)
  {
    goto LABEL_34;
  }

  *(v12 + 8) |= 8uLL;
  v14 = sub_298B45440(*(v12 + 24));
  *v12 = v14;
  if (!v14)
  {
    v28 = v35;
    goto LABEL_33;
  }

LABEL_16:
  result = v36;
  if (v34)
  {
    v15 = v36;
    result = sub_298B6AF78(a1, *(v34 + 16), a3) + v15;
  }

  if (v35)
  {
    result += sub_298B6AF78(a1, *(v35 + 16), a3);
  }

  return result;
}

void *sub_298B6B230(_DWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a1[2];
  v5 = a1[4];
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B6B3C8(a1, 2 * v5);
    v10 = *a3;
    v11 = v8[4] - 1;
    v12 = ((*a3 >> 4) ^ (*a3 >> 9)) & v11;
    a4 = (*v8 + 32 * v12);
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -8192;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = (*v8 + 32 * v12);
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - a1[3] > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B6B3C8(a1, v5);
    v10 = *a3;
    v19 = v8[4] - 1;
    v20 = ((*a3 >> 4) ^ (*a3 >> 9)) & v19;
    a4 = (*v8 + 32 * v20);
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++v8[2];
      if (v10 == -4096)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -4096)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -8192;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = (*v8 + 32 * v20);
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++a1[2];
  if (v6 != -4096)
  {
LABEL_4:
    --a1[3];
  }

  return a4;
}

char *sub_298B6B3C8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298B6B4E8(a1, v4, &v4[4 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
    v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 32;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_298D1A120)));
      if (v17.i8[0])
      {
        *(v16 - 4) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 8;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t sub_298B6B4E8(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v8 = *result;
LABEL_6:
      v11 = &v4[4 * v3];
      do
      {
        *v8 = -4096;
        v8 += 4;
      }

      while (v8 != v11);
      goto LABEL_8;
    }

    v6 = v5 + 1;
    v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFELL;
    v8 = &v4[4 * v7];
    v9 = v4 + 4;
    v10 = v7;
    do
    {
      *(v9 - 4) = -4096;
      *v9 = -4096;
      v9 += 8;
      v10 -= 2;
    }

    while (v10);
    if (v6 != v7)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v12 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = *(result + 16) - 1;
      v14 = v13 & ((v12 >> 4) ^ (v12 >> 9));
      v15 = (*result + 32 * v14);
      v16 = *v15;
      if (v12 != *v15)
      {
        v17 = 0;
        v18 = 1;
        while (v16 != -4096)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 == -8192;
          }

          if (v19)
          {
            v17 = v15;
          }

          v20 = v14 + v18++;
          v14 = v20 & v13;
          v15 = (*result + 32 * v14);
          v16 = *v15;
          if (v12 == *v15)
          {
            goto LABEL_11;
          }
        }

        if (v17)
        {
          v15 = v17;
        }
      }

LABEL_11:
      *v15 = v12;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      *(v15 + 1) = *(a2 + 1);
      v15[3] = a2[3];
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

void sub_298B6B61C(uint64_t a1, int a2)
{
  *(a1 + 37) = 1;
  if (a2)
  {
    if (*(a1 + 8))
    {
      operator new();
    }

    sub_298B6BBEC(0, 0, 0);
    v3 = *(a1 + 32);
    if (v3 <= 9)
    {
      *(a1 + 24) = qword_298D1A900[v3];
    }
  }

  v4 = *(a1 + 32);
  if (v4 > 9)
  {
    goto LABEL_15;
  }

  if (((1 << v4) & 0x214) != 0)
  {
    *(a1 + 24) = (*(a1 + 24) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v4 != 5 && v4 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (((1 << v4) & 0x28) != 0)
  {
LABEL_14:
    *(a1 + 24) = (*(a1 + 24) + 7) & 0xFFFFFFFFFFFFFFF8;
  }

LABEL_15:
  if ((v4 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_39;
  }

  v6 = sub_298B97604();
  v7 = sub_298B40118(" ", 1uLL, v6);
  *&v31 = " ";
  DWORD2(v31) = 1;
  HIDWORD(v31) = v7;
  v8 = *(a1 + 16);
  if (!v8)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v9 = 0;
  v10 = v8 - 1;
  v11 = 1;
  v12 = v7 & (v8 - 1);
  v13 = *a1 + 24 * v12;
  v14 = *(v13 + 12);
  if (v14 != v7)
  {
    goto LABEL_26;
  }

LABEL_18:
  v15 = *v13;
  if (*v13 == -2)
  {
    if (" " != -2)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  if (v15 == -1)
  {
    if (" " != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  if (*(v13 + 8) == 1 && *v15 == 32)
  {
    goto LABEL_38;
  }

LABEL_26:
  while (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_31;
    }

    v16 = *v13 == -2;
LABEL_32:
    if (v16 && v9 == 0)
    {
      v9 = v13;
    }

    v17 = v12 + v11++;
    v12 = v17 & v10;
    v13 = *a1 + 24 * (v17 & v10);
    v14 = *(v13 + 12);
    if (v14 == v7)
    {
      goto LABEL_18;
    }
  }

  if (*v13 != -1)
  {
LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  if (v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v13;
  }

LABEL_37:
  v13 = sub_298B6C4DC(a1, &v31, &v31, v18);
  *v13 = v31;
  *(v13 + 16) = 0;
LABEL_38:
  *(v13 + 16) = 0;
  v4 = *(a1 + 32);
LABEL_39:
  if (v4)
  {
    return;
  }

  v19 = sub_298B97604();
  v20 = sub_298B40118("", 0, v19);
  *&v31 = "";
  DWORD2(v31) = 0;
  HIDWORD(v31) = v20;
  v21 = *(a1 + 16);
  if (!v21)
  {
    v30 = 0;
    goto LABEL_60;
  }

  v22 = 0;
  v23 = v21 - 1;
  v24 = 1;
  v25 = v20 & (v21 - 1);
  v26 = *a1 + 24 * v25;
  v27 = *(v26 + 12);
  if (v27 != v20)
  {
    goto LABEL_49;
  }

  while (2)
  {
    if (*v26 != -2)
    {
      if (*v26 == -1)
      {
        if ("" != -1)
        {
          goto LABEL_49;
        }
      }

      else if (*(v26 + 8))
      {
        goto LABEL_49;
      }

      goto LABEL_61;
    }

    if ("" == -2)
    {
      goto LABEL_61;
    }

LABEL_49:
    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_54;
      }

      v28 = *v26 == -2;
LABEL_55:
      if (v28 && v22 == 0)
      {
        v22 = v26;
      }

      v29 = v25 + v24++;
      v25 = v29 & v23;
      v26 = *a1 + 24 * (v29 & v23);
      v27 = *(v26 + 12);
      if (v27 == v20)
      {
        continue;
      }

      goto LABEL_49;
    }

    break;
  }

  if (*v26 != -1)
  {
LABEL_54:
    v28 = 0;
    goto LABEL_55;
  }

  if (v22)
  {
    v30 = v22;
  }

  else
  {
    v30 = v26;
  }

LABEL_60:
  v26 = sub_298B6C4DC(a1, &v31, &v31, v30);
  *v26 = v31;
  *(v26 + 16) = 0;
LABEL_61:
  *(v26 + 16) = 0;
}

uint64_t sub_298B6BBEC(uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = a2;
    v4 = result;
    v5 = a3;
    while (1)
    {
      v6 = *(*v4 + 8);
      if (v5 >= v6)
      {
        v7 = -1;
      }

      else
      {
        v7 = *(**v4 + v6 + ~v5);
      }

      v8 = 0;
      v9 = v3;
      v10 = 1;
      do
      {
        while (1)
        {
          v12 = *(v4 + 8 * v10);
          v13 = *(v12 + 8);
          if (v5 < v13)
          {
            break;
          }

          if (v7 > -1)
          {
            goto LABEL_14;
          }

LABEL_8:
          if (++v10 >= v9)
          {
            goto LABEL_15;
          }
        }

        v14 = *(*v12 + v13 + ~v5);
        if (v7 < v14)
        {
          v11 = *(v4 + 8 * v8);
          *(v4 + 8 * v8++) = v12;
          *(v4 + 8 * v10) = v11;
          goto LABEL_8;
        }

        if (v14 >= v7)
        {
          goto LABEL_8;
        }

LABEL_14:
        --v9;
        v15 = *(v4 + 8 * v9);
        *(v4 + 8 * v9) = v12;
        *(v4 + 8 * v10) = v15;
      }

      while (v10 < v9);
LABEL_15:
      sub_298B6BBEC(v4, v8, v5);
      result = sub_298B6BBEC(v4 + 8 * v9, v3 - v9, v5);
      if (v7 != -1)
      {
        v3 = v9 - v8;
        v4 += 8 * v8;
        ++v5;
        if (v9 - v8 > 1)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_298B6BD18(uint64_t *a1, void *__s1, size_t __n)
{
  v3 = a1;
  *&v54 = __s1;
  *(&v54 + 1) = __n;
  v55 = 0;
  v4 = *(a1 + 4);
  if (!v4)
  {
    v24 = 0;
    v8 = __n;
    goto LABEL_20;
  }

  v5 = *a1;
  v6 = HIDWORD(__n);
  v7 = (v4 - 1);
  v8 = __n;
  if (__n)
  {
    if (__s1 == -2)
    {
      v9 = 0;
      v10 = 1;
      v11 = HIDWORD(__n) & v7;
      v12 = v5 + 24 * (HIDWORD(__n) & v7);
      v13 = *(v12 + 12);
      if (v13 != HIDWORD(__n))
      {
        goto LABEL_9;
      }

LABEL_5:
      v14 = *v12;
      if (*v12 == -1)
      {
        goto LABEL_9;
      }

      if (v14 != -2)
      {
        if (*(v12 + 8) != __n)
        {
          goto LABEL_9;
        }

        __s1b = __s1;
        v15 = __n;
        v16 = v8;
        v17 = v8;
        v18 = v5;
        v19 = v7;
        v20 = v12;
        v50 = v11;
        v21 = memcmp(__s1, v14, v16);
        v11 = v50;
        v12 = v20;
        v7 = v19;
        v5 = v18;
        v8 = v17;
        __n = v15;
        __s1 = __s1b;
        if (v21)
        {
LABEL_9:
          while (v13)
          {
            if (v13 != 1)
            {
              goto LABEL_14;
            }

            v22 = *v12 == -2;
LABEL_15:
            if (v22 && v9 == 0)
            {
              v9 = v12;
            }

            v23 = v11 + v10++;
            v11 = v23 & v7;
            v12 = v5 + 24 * (v23 & v7);
            v13 = *(v12 + 12);
            if (v13 == v6)
            {
              goto LABEL_5;
            }
          }

          if (*v12 == -1)
          {
            goto LABEL_74;
          }

LABEL_14:
          v22 = 0;
          goto LABEL_15;
        }
      }

      return *(v12 + 16);
    }

    v34 = v4 - 1;
    v35 = HIDWORD(__n);
    v36 = *a1;
    v51 = __n;
    __s1a = __s1;
    if (__s1 == -1)
    {
      v37 = 0;
      v38 = 1;
      for (i = HIDWORD(__n); ; i = v40 + v38++)
      {
        v40 = i & v34;
        v41 = v36 + 24 * (i & v34);
        v42 = *(v41 + 12);
        if (v42 == v35)
        {
          v43 = *v41;
          if (*v41 != -2 && (v43 == -1 || *(v41 + 8) == v51 && !memcmp(0xFFFFFFFFFFFFFFFFLL, v43, v8)))
          {
            goto LABEL_71;
          }
        }

        if (v42)
        {
          if (v42 == 1)
          {
            v44 = *v41 == -2;
            goto LABEL_54;
          }
        }

        else if (*v41 == -1)
        {
          goto LABEL_73;
        }

        v44 = 0;
LABEL_54:
        if (v44 && v37 == 0)
        {
          v37 = v36 + 24 * v40;
        }
      }
    }

    v37 = 0;
    v45 = 1;
    for (j = HIDWORD(__n); ; j = v47 + v45++)
    {
      v47 = j & v34;
      v41 = v36 + 24 * (j & v34);
      v48 = *(v41 + 12);
      if (v48 == v35 && *v41 <= 0xFFFFFFFFFFFFFFFDLL && *(v41 + 8) == v51 && !memcmp(__s1a, *v41, v8))
      {
LABEL_71:
        v12 = v41;
        return *(v12 + 16);
      }

      if (v48)
      {
        if (v48 == 1)
        {
          v49 = *v41 == -2;
          goto LABEL_68;
        }
      }

      else if (*v41 == -1)
      {
LABEL_73:
        v9 = v37;
        v12 = v41;
        v3 = a1;
        goto LABEL_74;
      }

      v49 = 0;
LABEL_68:
      if (v49 && v37 == 0)
      {
        v37 = v36 + 24 * v47;
      }
    }
  }

  v9 = 0;
  v28 = 1;
  v29 = HIDWORD(__n) & v7;
  v12 = v5 + 24 * (HIDWORD(__n) & v7);
  v30 = *(v12 + 12);
  if (v30 != HIDWORD(__n))
  {
    goto LABEL_31;
  }

LABEL_24:
  if (*v12 != -1)
  {
    if (*v12 == -2)
    {
      if (__s1 != -2)
      {
        goto LABEL_31;
      }
    }

    else if (*(v12 + 8))
    {
      goto LABEL_31;
    }

    return *(v12 + 16);
  }

  if (__s1 == -1)
  {
    return *(v12 + 16);
  }

LABEL_31:
  while (v30)
  {
    if (v30 != 1)
    {
      goto LABEL_36;
    }

    v31 = *v12 == -2;
LABEL_37:
    if (v31 && v9 == 0)
    {
      v9 = v12;
    }

    v32 = v29 + v28++;
    v29 = v32 & v7;
    v12 = v5 + 24 * v29;
    v30 = *(v12 + 12);
    if (v30 == HIDWORD(__n))
    {
      goto LABEL_24;
    }
  }

  if (*v12 != -1)
  {
LABEL_36:
    v31 = 0;
    goto LABEL_37;
  }

LABEL_74:
  if (v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = v12;
  }

LABEL_20:
  v25 = sub_298B6C4DC(v3, &v54, &v54, v24);
  *v25 = v54;
  *(v25 + 16) = v55;
  result = (v3[3] + (1 << *(v3 + 36)) - 1) & -(1 << *(v3 + 36));
  *(v25 + 16) = result;
  v27 = result + v8;
  if (*(v3 + 8) != 6)
  {
    ++v27;
  }

  v3[3] = v27;
  return result;
}

uint64_t sub_298B6C130(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    v13 = 0;
    result = 0;
    goto LABEL_39;
  }

  v4 = *a1;
  v5 = v3 - 1;
  v6 = *a2;
  v8 = *(a2 + 8);
  v7 = *(a2 + 12);
  if (v8)
  {
    if (v6 == -2)
    {
      v9 = 0;
      v10 = 1;
      v11 = *(a2 + 12);
      v12 = v7 & v5;
      v13 = v4 + 24 * (v7 & v5);
      v14 = *(v13 + 12);
      if (v7 != v14)
      {
        goto LABEL_9;
      }

LABEL_5:
      v15 = *v13;
      if (*v13 == -1)
      {
        goto LABEL_9;
      }

      if (v15 != -2)
      {
        if (v8 != *(v13 + 8))
        {
          goto LABEL_9;
        }

        v16 = a3;
        v17 = v4;
        v18 = v6;
        v19 = v7;
        v47 = v14;
        v20 = memcmp(v6, v15, v8);
        v14 = v47;
        v7 = v19;
        v6 = v18;
        v4 = v17;
        a3 = v16;
        if (v20)
        {
LABEL_9:
          while (v14)
          {
            if (v14 != 1)
            {
              goto LABEL_14;
            }

            v21 = *v13 == -2;
LABEL_15:
            if (v21 && v9 == 0)
            {
              v9 = v13;
            }

            v22 = v12 + v10++;
            v12 = v22 & v5;
            v13 = v4 + 24 * (v22 & v5);
            v14 = *(v13 + 12);
            if (v7 == v14)
            {
              goto LABEL_5;
            }
          }

          if (*v13 == -1)
          {
            goto LABEL_72;
          }

LABEL_14:
          v21 = 0;
          goto LABEL_15;
        }
      }

      goto LABEL_38;
    }

    v29 = *(a2 + 8);
    v30 = *(a2 + 12);
    v31 = v3 - 1;
    v32 = *a1;
    v48 = a3;
    v33 = *a2;
    if (v6 == -1)
    {
      v34 = 0;
      v35 = 1;
      for (i = *(a2 + 12); ; i = v37 + v35++)
      {
        v37 = i & v31;
        v38 = v32 + 24 * (i & v31);
        v39 = *(v38 + 12);
        if (v30 == v39)
        {
          v40 = *v38;
          if (*v38 != -2 && (v40 == -1 || v29 == *(v38 + 8) && !memcmp(0xFFFFFFFFFFFFFFFFLL, v40, v29)))
          {
            goto LABEL_70;
          }
        }

        if (v39)
        {
          if (v39 == 1)
          {
            v41 = *v38 == -2;
            goto LABEL_53;
          }
        }

        else if (*v38 == -1)
        {
          goto LABEL_71;
        }

        v41 = 0;
LABEL_53:
        if (v41 && v34 == 0)
        {
          v34 = v32 + 24 * v37;
        }
      }
    }

    v34 = 0;
    v42 = 1;
    for (j = *(a2 + 12); ; j = v44 + v42++)
    {
      v44 = j & v31;
      v38 = v32 + 24 * (j & v31);
      v45 = *(v38 + 12);
      if (v30 == v45 && *v38 <= 0xFFFFFFFFFFFFFFFDLL && v29 == *(v38 + 8) && !memcmp(v33, *v38, v29))
      {
LABEL_70:
        result = 1;
        a3 = v48;
        v13 = v38;
        goto LABEL_39;
      }

      if (v45)
      {
        if (v45 == 1)
        {
          v46 = *v38 == -2;
          goto LABEL_67;
        }
      }

      else if (*v38 == -1)
      {
LABEL_71:
        a3 = v48;
        v9 = v34;
        v13 = v38;
        goto LABEL_72;
      }

      v46 = 0;
LABEL_67:
      if (v46 && v34 == 0)
      {
        v34 = v32 + 24 * v44;
      }
    }
  }

  v9 = 0;
  v24 = 1;
  v25 = v7 & v5;
  v13 = v4 + 24 * (v7 & v5);
  v26 = *(v13 + 12);
  if (v7 != v26)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (*v13 != -1)
  {
    if (*v13 == -2)
    {
      if (v6 != -2)
      {
        goto LABEL_28;
      }
    }

    else if (*(v13 + 8))
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (v6 == -1)
  {
LABEL_38:
    result = 1;
    goto LABEL_39;
  }

LABEL_28:
  while (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_33;
    }

    v27 = *v13 == -2;
LABEL_34:
    if (v27 && v9 == 0)
    {
      v9 = v13;
    }

    v28 = v25 + v24++;
    v25 = v28 & v5;
    v13 = v4 + 24 * v25;
    v26 = *(v13 + 12);
    if (v7 == v26)
    {
      goto LABEL_21;
    }
  }

  if (*v13 != -1)
  {
LABEL_33:
    v27 = 0;
    goto LABEL_34;
  }

LABEL_72:
  result = 0;
  if (v9)
  {
    v13 = v9;
  }

LABEL_39:
  *a3 = v13;
  return result;
}

uint64_t sub_298B6C4DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
LABEL_8:
    v7 = a1;
    sub_298B6C5A8(a1, v5);
    v9 = 0;
    sub_298B6C130(v7, a3, &v9);
    a1 = v7;
    a4 = v9;
    ++*(v7 + 2);
    if (*(a4 + 12))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
    goto LABEL_8;
  }

  ++*(a1 + 2);
  if (*(a4 + 12))
  {
LABEL_5:
    --*(a1 + 3);
    return a4;
  }

LABEL_4:
  if (*a4 != -1)
  {
    goto LABEL_5;
  }

  return a4;
}

_OWORD *sub_298B6C5A8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return result;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v24 = v14 / 0x18 + 1;
      v15 = (result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
      v25 = result;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v25 = xmmword_298CF7980;
        *(v25 + 24) = xmmword_298CF7980;
        v25 += 3;
        v26 -= 2;
      }

      while (v26);
      if (v24 == (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v27 = (result + 24 * v13);
    do
    {
      *v15 = xmmword_298CF7980;
      v15 = (v15 + 24);
    }

    while (v15 != v27);
    return result;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_298CF7980;
        *(v17 + 24) = xmmword_298CF7980;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_298CF7980;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
  }

LABEL_16:
  if (v3)
  {
    v20 = 24 * v3;
    for (i = v4; ; i += 24)
    {
      v23 = *(i + 12);
      if (v23 != 1)
      {
        break;
      }

      if (*i != -2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v20 -= 24;
      if (!v20)
      {
        return MEMORY[0x29C2945E0](v4, 8);
      }
    }

    if (!v23 && *i == -1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v28 = 0;
    sub_298B6C130(a1, i, &v28);
    v22 = v28;
    *v28 = *i;
    *(v22 + 2) = *(i + 16);
    ++*(a1 + 8);
    goto LABEL_20;
  }

  return MEMORY[0x29C2945E0](v4, 8);
}

uint64_t sub_298B6C7E4(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v11 = qword_2A13C2BE8;
    if (qword_2A13C2BE8)
    {
      while (1)
      {
        v12 = v11;
        v13 = a1;
        v14 = a2;
        if (sub_298B6CD00(a1, a2, *(v11 + 16)))
        {
          break;
        }

        v11 = *v12;
        a2 = v14;
        a1 = v13;
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      v20 = sub_298CF1B50(v13, v14);
      if (v20)
      {
        sub_298CF57A0(a3, v20, 0);
      }

      result = v12;
    }

    else
    {
LABEL_14:
      v23 = 1283;
      v21.__r_.__value_.__r.__words[0] = "invalid target '";
      v21.__r_.__value_.__r.__words[2] = a1;
      v22 = a2;
      v28[0] = "'.\n";
      v29 = 259;
      sub_298B6CD80(&v21, v28, __p);
      sub_298B996A4(__p, &v26);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      result = 0;
      *a4 = v26;
      *(a4 + 16) = v27;
    }
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 8);
    }

    result = sub_298B6C9F0(v7, v8, __p);
    if (result)
    {
      if (SHIBYTE(v25) < 0)
      {
        v10 = result;
        operator delete(__p[0]);
        result = v10;
      }
    }

    else
    {
      std::operator+<char>();
      v15 = std::string::append(&v21, "', see --version and --triple.");
      v16 = v15->__r_.__value_.__r.__words[0];
      v28[0] = v15->__r_.__value_.__l.__size_;
      *(v28 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
      v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v18 = v28[0];
      *a4 = v16;
      *(a4 + 8) = v18;
      *(a4 + 15) = *(v28 + 7);
      *(a4 + 23) = v17;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      result = 0;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B6C9F0(std::string::size_type a1, std::string::size_type a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!qword_2A13C2BE8)
  {
    MEMORY[0x29C294300](a3, "Unable to find target for this triple (no targets are registered)");
    v7 = 0;
    goto LABEL_12;
  }

  v15 = 261;
  v13.__r_.__value_.__r.__words[0] = a1;
  v13.__r_.__value_.__l.__size_ = a2;
  sub_298CF26DC(__p, &v13);
  v6 = v18;
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
    v7 = qword_2A13C2BE8;
    if (qword_2A13C2BE8)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  v7 = qword_2A13C2BE8;
  if (!qword_2A13C2BE8)
  {
LABEL_9:
    v15 = 1283;
    v13.__r_.__value_.__r.__words[0] = "No available targets are compatible with triple ";
    v13.__r_.__value_.__r.__words[2] = a1;
    v14 = a2;
    __p[0] = &v13;
    v17 = "";
    v19 = 770;
    sub_298B996A4(__p, &v12);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v7 = 0;
    *a3 = v12;
    goto LABEL_12;
  }

LABEL_7:
  while (1)
  {
    v8 = (*(v7 + 8))(v6);
    v9 = *v7;
    if (v8)
    {
      break;
    }

    v7 = *v7;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  for (; v9; v9 = *v9)
  {
    if ((*(v9 + 8))(v6))
    {
      operator new();
    }
  }

LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_298B6CCD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!*(result + 16))
  {
    v6 = qword_2A13C2BE8;
    qword_2A13C2BE8 = result;
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = a4;
    *result = v6;
    *(result + 8) = a5;
    *(result + 40) = a6;
  }

  return result;
}

BOOL sub_298B6CD00(const void *a1, size_t __n, char *__s)
{
  if (__s)
  {
    v6 = a1;
    v7 = __s;
    v8 = strlen(__s);
    __s = v7;
    v4 = v8;
    a1 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != __n)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s, __n) == 0;
  }

  return 1;
}

uint64_t *sub_298B6CD80@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *(result + 33);
      if (v7 == 1)
      {
        v8 = result;
        result = *result;
        v7 = v8[1];
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = result;
      *(a3 + 8) = v7;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

unsigned __int8 *sub_298B6CE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[47] >> 3) & 0x18)) >> v1[47]) & 1) == 0)
  {
    return v1 + 40;
  }

  if (((*(v4 + ((v1[46] >> 3) & 0x18)) >> v1[46]) & 1) == 0)
  {
    return v1 + 40;
  }

  if (((*(v4 + ((v1[45] >> 3) & 0x18)) >> v1[45]) & 1) == 0)
  {
    return v1 + 40;
  }

  if (((*(v4 + ((v1[44] >> 3) & 0x18)) >> v1[44]) & 1) == 0)
  {
    return v1 + 40;
  }

  if (((*(v4 + ((v1[43] >> 3) & 0x18)) >> v1[43]) & 1) == 0)
  {
    return v1 + 40;
  }

  if (((*(v4 + ((v1[42] >> 3) & 0x18)) >> v1[42]) & 1) == 0)
  {
    return v1 + 40;
  }

  if ((*(v4 + ((v1[41] >> 3) & 0x18)) >> v1[41]))
  {
    v2 = (~*(v4 + ((v1[40] >> 3) & 0x18)) >> v1[40]) & 1;
  }

  return v1 + 40;
}

unsigned __int8 *sub_298B6CF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[27] >> 3) & 0x18)) >> v1[27]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[26] >> 3) & 0x18)) >> v1[26]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[25] >> 3) & 0x18)) >> v1[25]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[24] >> 3) & 0x18)) >> v1[24]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[23] >> 3) & 0x18)) >> v1[23]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[22] >> 3) & 0x18)) >> v1[22]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[21] >> 3) & 0x18)) >> v1[21]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[20] >> 3) & 0x18)) >> v1[20]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[19] >> 3) & 0x18)) >> v1[19]) & 1) == 0)
  {
    return v1 + 16;
  }

  if (((*(v4 + ((v1[18] >> 3) & 0x18)) >> v1[18]) & 1) == 0)
  {
    return v1 + 16;
  }

  if ((*(v4 + ((v1[17] >> 3) & 0x18)) >> v1[17]))
  {
    v2 = (~*(v4 + ((v1[16] >> 3) & 0x18)) >> v1[16]) & 1;
  }

  return v1 + 16;
}

unsigned __int8 *sub_298B6D198(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[33] >> 3) & 0x18)) >> v1[33]) & 1) == 0)
  {
    return v1 + 28;
  }

  if (((*(v4 + ((v1[32] >> 3) & 0x18)) >> v1[32]) & 1) == 0)
  {
    return v1 + 28;
  }

  if (((*(v4 + ((v1[31] >> 3) & 0x18)) >> v1[31]) & 1) == 0)
  {
    return v1 + 28;
  }

  if (((*(v4 + ((v1[30] >> 3) & 0x18)) >> v1[30]) & 1) == 0)
  {
    return v1 + 28;
  }

  if ((*(v4 + ((v1[29] >> 3) & 0x18)) >> v1[29]))
  {
    v2 = (~*(v4 + ((v1[28] >> 3) & 0x18)) >> v1[28]) & 1;
  }

  return v1 + 28;
}

unsigned __int8 *sub_298B6D2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[39] >> 3) & 0x18)) >> v1[39]) & 1) == 0)
  {
    return v1 + 34;
  }

  if (((*(v4 + ((v1[38] >> 3) & 0x18)) >> v1[38]) & 1) == 0)
  {
    return v1 + 34;
  }

  if (((*(v4 + ((v1[37] >> 3) & 0x18)) >> v1[37]) & 1) == 0)
  {
    return v1 + 34;
  }

  if (((*(v4 + ((v1[36] >> 3) & 0x18)) >> v1[36]) & 1) == 0)
  {
    return v1 + 34;
  }

  if ((*(v4 + ((v1[35] >> 3) & 0x18)) >> v1[35]))
  {
    v2 = (~*(v4 + ((v1[34] >> 3) & 0x18)) >> v1[34]) & 1;
  }

  return v1 + 34;
}

unsigned __int8 *sub_298B6D3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[107] >> 3) & 0x18)) >> v1[107]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[106] >> 3) & 0x18)) >> v1[106]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[105] >> 3) & 0x18)) >> v1[105]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[104] >> 3) & 0x18)) >> v1[104]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[103] >> 3) & 0x18)) >> v1[103]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[102] >> 3) & 0x18)) >> v1[102]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[101] >> 3) & 0x18)) >> v1[101]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[100] >> 3) & 0x18)) >> v1[100]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[99] >> 3) & 0x18)) >> v1[99]) & 1) == 0)
  {
    return v1 + 96;
  }

  if (((*(v4 + ((v1[98] >> 3) & 0x18)) >> v1[98]) & 1) == 0)
  {
    return v1 + 96;
  }

  if ((*(v4 + ((v1[97] >> 3) & 0x18)) >> v1[97]))
  {
    v2 = (~*(v4 + ((v1[96] >> 3) & 0x18)) >> v1[96]) & 1;
  }

  return v1 + 96;
}

unsigned __int8 *sub_298B6D5DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[71] >> 3) & 0x18)) >> v1[71]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[70] >> 3) & 0x18)) >> v1[70]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[69] >> 3) & 0x18)) >> v1[69]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[68] >> 3) & 0x18)) >> v1[68]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[67] >> 3) & 0x18)) >> v1[67]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[66] >> 3) & 0x18)) >> v1[66]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[65] >> 3) & 0x18)) >> v1[65]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[64] >> 3) & 0x18)) >> v1[64]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[63] >> 3) & 0x18)) >> v1[63]) & 1) == 0)
  {
    return v1 + 60;
  }

  if (((*(v4 + ((v1[62] >> 3) & 0x18)) >> v1[62]) & 1) == 0)
  {
    return v1 + 60;
  }

  if ((*(v4 + ((v1[61] >> 3) & 0x18)) >> v1[61]))
  {
    v2 = (~*(v4 + ((v1[60] >> 3) & 0x18)) >> v1[60]) & 1;
  }

  return v1 + 60;
}

unsigned __int8 *sub_298B6D7E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[83] >> 3) & 0x18)) >> v1[83]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[82] >> 3) & 0x18)) >> v1[82]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[81] >> 3) & 0x18)) >> v1[81]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[80] >> 3) & 0x18)) >> v1[80]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[79] >> 3) & 0x18)) >> v1[79]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[78] >> 3) & 0x18)) >> v1[78]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[77] >> 3) & 0x18)) >> v1[77]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[76] >> 3) & 0x18)) >> v1[76]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[75] >> 3) & 0x18)) >> v1[75]) & 1) == 0)
  {
    return v1 + 72;
  }

  if (((*(v4 + ((v1[74] >> 3) & 0x18)) >> v1[74]) & 1) == 0)
  {
    return v1 + 72;
  }

  if ((*(v4 + ((v1[73] >> 3) & 0x18)) >> v1[73]))
  {
    v2 = (~*(v4 + ((v1[72] >> 3) & 0x18)) >> v1[72]) & 1;
  }

  return v1 + 72;
}

unsigned __int8 *sub_298B6D9F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = 0x100000000;
  memset(&v4[1], 0, 24);
  if (((*(v4 + ((v1[95] >> 3) & 0x18)) >> v1[95]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[94] >> 3) & 0x18)) >> v1[94]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[93] >> 3) & 0x18)) >> v1[93]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[92] >> 3) & 0x18)) >> v1[92]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[91] >> 3) & 0x18)) >> v1[91]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[90] >> 3) & 0x18)) >> v1[90]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[89] >> 3) & 0x18)) >> v1[89]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[88] >> 3) & 0x18)) >> v1[88]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[87] >> 3) & 0x18)) >> v1[87]) & 1) == 0)
  {
    return v1 + 84;
  }

  if (((*(v4 + ((v1[86] >> 3) & 0x18)) >> v1[86]) & 1) == 0)
  {
    return v1 + 84;
  }

  if ((*(v4 + ((v1[85] >> 3) & 0x18)) >> v1[85]))
  {
    v2 = (~*(v4 + ((v1[84] >> 3) & 0x18)) >> v1[84]) & 1;
  }

  return v1 + 84;
}

void sub_298B6DC18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  (*(*a2 + 64))(v17, a2, a4);
  if (v18)
  {
    v7 = v17[0];
    v17[0] = 0;
    v9 = v7;
    sub_298AE72FC(&v9, v13);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v8 = a3 - *(a2[1] + 16);
    v12 = 773;
    v9 = "remaining size of archive too small for next archive member header ";
    v10 = 67;
    v11 = "at offset ";
    v13[0] = &v9;
    v14 = &v8;
    v16 = 3330;
    sub_298B6DDE8(a1, v13);
  }

  v12 = 773;
  v9 = "remaining size of archive too small for next archive member header ";
  v10 = 67;
  v11 = "for ";
  v13[0] = &v9;
  v14 = v17[0];
  v15 = v17[1];
  v16 = 1282;
  sub_298B6DDE8(a1, v13);
}

void sub_298B6DDE8(uint64_t a1, uint64_t a2)
{
  sub_298B996A4(a2, &v6);
  v2 = std::string::insert(&v6, 0, "truncated or malformed archive (");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v9, ")");
  v5 = v4->__r_.__value_.__r.__words[2];
  *__p = *&v4->__r_.__value_.__l.__data_;
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
LABEL_3:
  operator new();
}

_BYTE *sub_298B6DEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 114) & 7;
  if (v4 == 4 || v4 == 2)
  {
    v6 = *(a1 + 16);
    if (*v6 == 32)
    {
      v14 = &v6[-*(v3 + 16)];
      v12[0] = "name contains a leading space for archive member header at offset ";
      v12[2] = &v14;
      v13 = 3331;
      sub_298B6DDE8(a2, v12);
    }

    v7 = 32;
  }

  else
  {
    v6 = *(a1 + 16);
    v8 = *v6;
    if (v8 == 35 || v8 == 47)
    {
      v7 = 32;
    }

    else
    {
      v7 = 47;
    }
  }

  result = memchr(v6, v7, 0x10uLL);
  v11 = result - v6;
  if (!result)
  {
    v11 = -1;
  }

  *(a2 + 16) &= ~1u;
  if (v11 == -1)
  {
    v11 = 16;
  }

  *a2 = v6;
  *(a2 + 8) = v11;
  return result;
}

BOOL sub_298B6DFF8(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v27[0] = 0;
  result = sub_298B97354(a3, a4, 0xAu, v27);
  if (result)
  {
    v31 = (*(*a5 + 80))(a5);
    v11 = *(a2 + 32);
    if (*(a2 + 32))
    {
      if (v11 == 1)
      {
        v12 = "characters in ";
        v19[0] = "characters in ";
        v20 = 259;
        v13 = 3;
      }

      else
      {
        v17 = *a2;
        v18 = a2[1];
        v13 = 2;
        if (*(a2 + 33) != 1)
        {
          LOBYTE(v11) = 2;
          v17 = a2;
        }

        v19[0] = "characters in ";
        v19[2] = v17;
        v19[3] = v18;
        LOBYTE(v20) = 3;
        HIBYTE(v20) = v11;
        v12 = v19;
      }

      v21[0] = v12;
      v21[2] = " field in archive member header are not all decimal numbers: '";
      LOBYTE(v22) = v13;
      HIBYTE(v22) = 3;
      v23[0] = v21;
      v23[2] = a3;
      v23[3] = a4;
      v24 = 1282;
      v25[0] = v23;
      v25[2] = "' for the archive member header at offset ";
      v26 = 770;
      v16 = 13;
      v15 = 2;
      v27[0] = v25;
      v27[2] = &v31;
    }

    else
    {
      v15 = 0;
      v20 = 256;
      v22 = 256;
      v24 = 256;
      v26 = 256;
      v16 = 1;
    }

    v28 = v15;
    v29 = v16;
    sub_298B6DDE8(&v30, v27);
  }

  v14 = v27[0];
  *(a1 + 8) &= ~1u;
  *a1 = v14;
  return result;
}

BOOL sub_298B6E1AC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v14[0] = "NameLen";
  v15 = 259;
  v4 = *(a1 + 16);
  v18 = 0;
  v19 = 0;
  v16 = 0x100000000;
  v17 = 0;
  if ((*(&v16 + ((v4[111] >> 3) & 0x18)) >> v4[111]))
  {
    if ((*(&v16 + ((v4[110] >> 3) & 0x18)) >> v4[110]))
    {
      if ((*(&v16 + ((v4[109] >> 3) & 0x18)) >> v4[109]))
      {
        v5 = (~*(&v16 + ((v4[108] >> 3) & 0x18)) >> v4[108]) & 1;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 4;
  }

  result = sub_298B6DFF8(&v16, v14, v4 + 108, v5, a1);
  if (v17)
  {
    v7 = v16;
    *(a2 + 16) |= 1u;
    *a2 = v7;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = v16;
    v10 = (v16 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(a1 + 16) + 112;
    if (v10 == -2 || *(v11 + v10) != 2656)
    {
      v13 = v11 + v10 - *(*(a1 + 8) + 16);
      v14[2] = &v13;
      v15 = 3331;
      sub_298B6DDE8(a2, v14);
    }

    *(a2 + 16) &= ~1u;
    *a2 = v11;
    *(a2 + 8) = v9;
    v12 = *MEMORY[0x29EDCA608];
  }

  return result;
}

const char *sub_298B6E390@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = *MEMORY[0x29EDCA608];
  if (a2 <= 0xF)
  {
    v67[0] = a1[2] - *(a1[1] + 16);
    v71 = "archive header truncated before the name field for archive member header at offset ";
    v73 = v67;
    LOWORD(v75) = 3331;
    sub_298B6DDE8(a3, &v71);
  }

  result = (*(*a1 + 24))(&v81);
  v7 = v81;
  if (v82)
  {
    *(a3 + 16) |= 1u;
    *a3 = v7;
    goto LABEL_82;
  }

  v8 = *(&v81 + 1);
  if (*v81 == 47)
  {
    if (*(&v81 + 1) <= 12)
    {
      if (*(&v81 + 1) == 1 || *(&v81 + 1) == 2 && *(v81 + 1) == 47)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

    if (*(&v81 + 1) == 13)
    {
      v12 = *(v81 + 5);
      v13 = *v81 == 0x424D595343453C2FLL;
      v14 = 0x534C4F424D59;
    }

    else
    {
      if (*(&v81 + 1) != 14)
      {
LABEL_37:
        if (*(&v81 + 1))
        {
          v20 = (v81 + 1);
        }

        else
        {
          v20 = v81;
        }

        v21 = *(&v81 + 1) - (*(&v81 + 1) != 0);
        v22 = (*(&v81 + 1) + v81 - 1);
        v23 = v21;
        do
        {
          v24 = v23;
          if (!v23)
          {
            break;
          }

          --v23;
          v25 = *v22--;
        }

        while (v25 == 32);
        if (v24 >= v21)
        {
          v26 = *(&v81 + 1) - (*(&v81 + 1) != 0);
        }

        else
        {
          v26 = v24;
        }

        v71 = 0;
        if (sub_298B97354(v20, v26, 0xAu, &v71))
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v72 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 1;
          v74 = 0;
          v75 = 0;
          v73 = 0;
          v71 = &unk_2A1F1E040;
          v79 = &v60;
          sub_298ADDDB0(&v71);
          v27 = (v8 + v7 - 1);
          v28 = v8 - (v8 != 0);
          do
          {
            v29 = v28;
            if (!v28)
            {
              break;
            }

            --v28;
            v30 = *v27--;
          }

          while (v30 == 32);
          if (v29 >= v21)
          {
            v31 = v8 - (v8 != 0);
          }

          else
          {
            v31 = v29;
          }

          sub_298B9B3A0(&v71, v20, v31, 0);
          if (v75 != v73)
          {
            v75 = v73;
            sub_298B9BB84(&v71);
          }

          v70 = a1[2] - *(a1[1] + 16);
          goto LABEL_79;
        }

        v32 = v71;
        v80 = v71;
        v33 = a1;
        v34 = a1[1];
        v35 = *(v34 + 88);
        if (v35 > v71)
        {
          v36 = *(v34 + 80);
          if ((*(v34 + 114) & 6) != 0)
          {
            result = &v71[v36];
            *(a3 + 16) &= ~1u;
            *a3 = v36 + v32;
            if (v36)
            {
              result = strlen(result);
              *(a3 + 8) = result;
              if ((v82 & 1) == 0)
              {
                goto LABEL_82;
              }
            }

            else
            {
              *(a3 + 8) = 0;
              if ((v82 & 1) == 0)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_80;
          }

          result = memchr(&v71[v36], 10, v35 - v71);
          v53 = &result[-v36];
          if (!result)
          {
            v53 = -1;
          }

          if ((v53 + 1) >= 2)
          {
            v54 = v53 - 1;
            if (*(v36 + v54) == 47)
            {
              if (v32 > v54)
              {
                v54 = v32;
              }

              if (v54 >= v35)
              {
                v54 = v35;
              }

              *(a3 + 16) &= ~1u;
              *a3 = v36 + v32;
              *(a3 + 8) = v54 - v32;
              if ((v82 & 1) == 0)
              {
                goto LABEL_82;
              }

LABEL_80:
              result = v81;
              *&v81 = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              goto LABEL_82;
            }
          }

          v67[0] = "string table at long name offset ";
          v68 = &v80;
          v69 = 2819;
          v71 = v67;
          v73 = "not terminated";
          v52 = 770;
LABEL_87:
          LOWORD(v75) = v52;
          sub_298B6DDE8(a3, &v71);
        }

        __p[0] = (v33[2] - *(v34 + 16));
        v60 = "long name offset ";
        v62 = &v80;
        v63 = 2819;
        v50 = " past the end of the string table for archive member header at offset ";
LABEL_86:
        v67[0] = &v60;
        v68 = v50;
        v69 = 770;
        v71 = v67;
        v73 = __p;
        v52 = 3330;
        goto LABEL_87;
      }

      v12 = *(v81 + 6);
      v13 = *v81 == 0x5341484746583C2FLL;
      v14 = 0x50414D485341;
    }

    v18 = v14 & 0xFFFFFFFFFFFFLL | 0x2F3E000000000000;
    if (v13 && v12 == v18)
    {
LABEL_56:
      *(a3 + 16) &= ~1u;
      *a3 = v81;
      if ((v82 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    goto LABEL_37;
  }

  v9 = *(&v81 + 1) - 3;
  if (*(&v81 + 1) >= 3uLL && *v81 == 12579 && *(v81 + 2) == 47)
  {
    v37 = 3 - *(&v81 + 1);
    v38 = (*(&v81 + 1) + v81 - 1);
    do
    {
      v39 = v37;
      if (!v37)
      {
        break;
      }

      v40 = *v38--;
      ++v37;
    }

    while (v40 == 32);
    if (-v39 < v9)
    {
      v41 = -v39;
    }

    else
    {
      v41 = *(&v81 + 1) - 3;
    }

    v71 = 0;
    if (sub_298B97354((v81 + 3), v41, 0xAu, &v71))
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v72 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 1;
      v74 = 0;
      v75 = 0;
      v73 = 0;
      v71 = &unk_2A1F1E040;
      v79 = &v60;
      sub_298ADDDB0(&v71);
      v42 = 3 - v8;
      v43 = (v8 + v7 - 1);
      do
      {
        v44 = v42;
        if (!v42)
        {
          break;
        }

        v45 = *v43--;
        ++v42;
      }

      while (v45 == 32);
      if (-v44 < v9)
      {
        v46 = -v44;
      }

      else
      {
        v46 = v8 - 3;
      }

      sub_298B9B3A0(&v71, (v7 + 3), v46, 0);
      if (v75 != v73)
      {
        v75 = v73;
        sub_298B9BB84(&v71);
      }

      v70 = a1[2] - *(a1[1] + 16);
LABEL_79:
      std::operator+<char>();
      v47 = std::string::append(&v64, "' for archive member header at offset ");
      v48 = v47->__r_.__value_.__r.__words[2];
      *__p = *&v47->__r_.__value_.__l.__data_;
      v66 = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v67[0] = __p;
      v68 = &v70;
      v69 = 3332;
      sub_298B6DDE8(a3, v67);
    }

    v51 = v71;
    v80 = v71;
    if ((*(*a1 + 104))(a1) + v51 <= a2)
    {
      v55 = a1;
      v56 = a1[2];
      result = (*(*v55 + 104))(v55);
      v57 = v51;
      do
      {
        v58 = v57;
        if (!v57)
        {
          break;
        }

        --v57;
      }

      while (!result[v56 - 1 + v58]);
      if (v58 >= v51)
      {
        v59 = v51;
      }

      else
      {
        v59 = v58;
      }

      *(a3 + 16) &= ~1u;
      *a3 = &result[v56];
      *(a3 + 8) = v59;
      if ((v82 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    __p[0] = (a1[2] - *(a1[1] + 16));
    v60 = "long name length: ";
    v62 = &v80;
    v63 = 3331;
    v50 = " extends past the end of the member or archive for archive member header at offset ";
    goto LABEL_86;
  }

  if (*(v81 + *(&v81 + 1) - 1) != 47)
  {
    v15 = *(&v81 + 1);
    do
    {
      v16 = v15;
      if (!v15)
      {
        break;
      }

      --v15;
    }

    while (*(v81 - 1 + v16) == 32);
    if (v16 >= *(&v81 + 1))
    {
      v17 = *(&v81 + 1);
    }

    else
    {
      v17 = v16;
    }

    *(a3 + 16) &= ~1u;
    *a3 = v7;
    *(a3 + 8) = v17;
    if ((v82 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v11 = *(&v81 + 1) - 1;
  *(a3 + 16) &= ~1u;
  if (v8 < v8 - 1)
  {
    v11 = v8;
  }

  *a3 = v7;
  *(a3 + 8) = v11;
  if (v82)
  {
    goto LABEL_80;
  }

LABEL_82:
  v49 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_298B6EBC8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = "size";
  v7 = 259;
  v4 = *(a1 + 16);
  v8[0] = 0x100000000;
  memset(&v8[1], 0, 24);
  if (((*(v8 + ((v4[57] >> 3) & 0x18)) >> v4[57]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 10, a1);
  }

  if (((*(v8 + ((v4[56] >> 3) & 0x18)) >> v4[56]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 9, a1);
  }

  if (((*(v8 + ((v4[55] >> 3) & 0x18)) >> v4[55]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 8, a1);
  }

  if (((*(v8 + ((v4[54] >> 3) & 0x18)) >> v4[54]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 7, a1);
  }

  if (((*(v8 + ((v4[53] >> 3) & 0x18)) >> v4[53]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 6, a1);
  }

  if (((*(v8 + ((v4[52] >> 3) & 0x18)) >> v4[52]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 5, a1);
  }

  if (((*(v8 + ((v4[51] >> 3) & 0x18)) >> v4[51]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 4, a1);
  }

  if (((*(v8 + ((v4[50] >> 3) & 0x18)) >> v4[50]) & 1) == 0)
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, 3, a1);
  }

  if ((*(v8 + ((v4[49] >> 3) & 0x18)) >> v4[49]))
  {
    return sub_298B6DFF8(a2, v6, v4 + 48, (~*(v8 + ((v4[48] >> 3) & 0x18)) >> v4[48]) & 1, a1);
  }

  return sub_298B6DFF8(a2, v6, v4 + 48, 2, a1);
}

BOOL sub_298B6EE20@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  v12[0] = "size";
  v13 = 259;
  v4 = *(a1 + 16);
  v16 = 0;
  v17 = 0;
  v14 = 0x100000000;
  v15 = 0;
  if ((*(&v14 + ((v4[19] >> 3) & 0x18)) >> v4[19]))
  {
    if ((*(&v14 + ((v4[18] >> 3) & 0x18)) >> v4[18]))
    {
      if ((*(&v14 + ((v4[17] >> 3) & 0x18)) >> v4[17]))
      {
        if ((*(&v14 + ((v4[16] >> 3) & 0x18)) >> v4[16]))
        {
          if ((*(&v14 + ((v4[15] >> 3) & 0x18)) >> v4[15]))
          {
            if ((*(&v14 + ((v4[14] >> 3) & 0x18)) >> v4[14]))
            {
              if ((*(&v14 + ((v4[13] >> 3) & 0x18)) >> v4[13]))
              {
                if ((*(&v14 + ((v4[12] >> 3) & 0x18)) >> v4[12]))
                {
                  if ((*(&v14 + ((v4[11] >> 3) & 0x18)) >> v4[11]))
                  {
                    if ((*(&v14 + ((v4[10] >> 3) & 0x18)) >> v4[10]))
                    {
                      if ((*(&v14 + ((v4[9] >> 3) & 0x18)) >> v4[9]))
                      {
                        if ((*(&v14 + ((v4[8] >> 3) & 0x18)) >> v4[8]))
                        {
                          if ((*(&v14 + ((v4[7] >> 3) & 0x18)) >> v4[7]))
                          {
                            if ((*(&v14 + ((v4[6] >> 3) & 0x18)) >> v4[6]))
                            {
                              if ((*(&v14 + ((v4[5] >> 3) & 0x18)) >> v4[5]))
                              {
                                if ((*(&v14 + ((v4[4] >> 3) & 0x18)) >> v4[4]))
                                {
                                  if ((*(&v14 + ((v4[3] >> 3) & 0x18)) >> v4[3]))
                                  {
                                    if ((*(&v14 + ((v4[2] >> 3) & 0x18)) >> v4[2]))
                                    {
                                      if ((*(&v14 + ((v4[1] >> 3) & 0x18)) >> v4[1]))
                                      {
                                        v5 = (~*(&v14 + ((*v4 >> 3) & 0x18)) >> *v4) & 1;
                                      }

                                      else
                                      {
                                        v5 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v5 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v5 = 4;
                                  }
                                }

                                else
                                {
                                  v5 = 5;
                                }
                              }

                              else
                              {
                                v5 = 6;
                              }
                            }

                            else
                            {
                              v5 = 7;
                            }
                          }

                          else
                          {
                            v5 = 8;
                          }
                        }

                        else
                        {
                          v5 = 9;
                        }
                      }

                      else
                      {
                        v5 = 10;
                      }
                    }

                    else
                    {
                      v5 = 11;
                    }
                  }

                  else
                  {
                    v5 = 12;
                  }
                }

                else
                {
                  v5 = 13;
                }
              }

              else
              {
                v5 = 14;
              }
            }

            else
            {
              v5 = 15;
            }
          }

          else
          {
            v5 = 16;
          }
        }

        else
        {
          v5 = 17;
        }
      }

      else
      {
        v5 = 18;
      }
    }

    else
    {
      v5 = 19;
    }
  }

  else
  {
    v5 = 20;
  }

  result = sub_298B6DFF8(&v20, v12, v4, v5, a1);
  if (v21)
  {
    v7 = v20;
  }

  else
  {
    v12[0] = "NameLen";
    v13 = 259;
    v8 = *(a1 + 16);
    v16 = 0;
    v17 = 0;
    v14 = 0x100000000;
    v15 = 0;
    if ((*(&v14 + ((v8[111] >> 3) & 0x18)) >> v8[111]))
    {
      if ((*(&v14 + ((v8[110] >> 3) & 0x18)) >> v8[110]))
      {
        if ((*(&v14 + ((v8[109] >> 3) & 0x18)) >> v8[109]))
        {
          v9 = (~*(&v14 + ((v8[108] >> 3) & 0x18)) >> v8[108]) & 1;
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 4;
    }

    result = sub_298B6DFF8(&v18, v12, v8 + 108, v9, a1);
    if ((v19 & 1) == 0)
    {
      v7 = ((v18 + 1) & 0xFFFFFFFFFFFFFFFELL) + v20;
      v10 = *(a2 + 8) & 0xFE;
      goto LABEL_53;
    }

    v7 = v18;
  }

  v10 = *(a2 + 8) | 1;
LABEL_53:
  *(a2 + 8) = v10;
  *a2 = v7;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298B6F258@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 24))(&v9);
  if ((v11 & 1) == 0)
  {
    if ((*(a1[1] + 114) & 8) == 0)
    {
      v6 = 0;
LABEL_17:
      a2[8] &= ~1u;
      *a2 = v6;
      goto LABEL_18;
    }

    switch(v10)
    {
      case 7:
        v7 = *v9 == 1297699631 && *(v9 + 3) == 791950925;
        break;
      case 2:
        v7 = *v9 == 12079;
        break;
      case 1:
        v7 = *v9 == 47;
        break;
      default:
        v6 = 1;
        goto LABEL_17;
    }

    v6 = !v7;
    goto LABEL_17;
  }

  v5 = v9;
  a2[8] |= 1u;
  *a2 = v5;
LABEL_18:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298B6F380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 104))(a1);
  result = (*(*a1 + 96))(&v12, a1);
  if (v13)
  {
    v6 = v12;
    v12 = 0;
    goto LABEL_3;
  }

  if ((v12 & 1) == 0)
  {
    result = (*(*a1 + 72))(&v10, a1);
    if (v11)
    {
      v6 = v10;
LABEL_3:
      *(a2 + 8) |= 1u;
      *a2 = v6;
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v4 += v10;
  }

  v7 = a1[2] + ((v4 + 1) & 0xFFFFFFFFFFFFFFFELL);
  v8 = *(a1[1] + 16) + *(a1[1] + 24);
  *(a2 + 8) &= ~1u;
  if (v7 == v8)
  {
    *a2 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *a2 = v7;
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_11:
  result = v12;
  v12 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B6F524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 80))(a1);
  if (result == *(a1[1] + 160))
  {
    *(a2 + 8) &= ~1u;
    *a2 = 0;
  }

  else
  {
    v10 = "NextOffset";
    v11 = 259;
    v5 = a1[2];
    v14 = 0;
    v15 = 0;
    v12 = 0x100000000;
    v13 = 0;
    if ((*(&v12 + ((v5[39] >> 3) & 0x18)) >> v5[39]))
    {
      if ((*(&v12 + ((v5[38] >> 3) & 0x18)) >> v5[38]))
      {
        if ((*(&v12 + ((v5[37] >> 3) & 0x18)) >> v5[37]))
        {
          if ((*(&v12 + ((v5[36] >> 3) & 0x18)) >> v5[36]))
          {
            if ((*(&v12 + ((v5[35] >> 3) & 0x18)) >> v5[35]))
            {
              if ((*(&v12 + ((v5[34] >> 3) & 0x18)) >> v5[34]))
              {
                if ((*(&v12 + ((v5[33] >> 3) & 0x18)) >> v5[33]))
                {
                  if ((*(&v12 + ((v5[32] >> 3) & 0x18)) >> v5[32]))
                  {
                    if ((*(&v12 + ((v5[31] >> 3) & 0x18)) >> v5[31]))
                    {
                      if ((*(&v12 + ((v5[30] >> 3) & 0x18)) >> v5[30]))
                      {
                        if ((*(&v12 + ((v5[29] >> 3) & 0x18)) >> v5[29]))
                        {
                          if ((*(&v12 + ((v5[28] >> 3) & 0x18)) >> v5[28]))
                          {
                            if ((*(&v12 + ((v5[27] >> 3) & 0x18)) >> v5[27]))
                            {
                              if ((*(&v12 + ((v5[26] >> 3) & 0x18)) >> v5[26]))
                              {
                                if ((*(&v12 + ((v5[25] >> 3) & 0x18)) >> v5[25]))
                                {
                                  if ((*(&v12 + ((v5[24] >> 3) & 0x18)) >> v5[24]))
                                  {
                                    if ((*(&v12 + ((v5[23] >> 3) & 0x18)) >> v5[23]))
                                    {
                                      if ((*(&v12 + ((v5[22] >> 3) & 0x18)) >> v5[22]))
                                      {
                                        if ((*(&v12 + ((v5[21] >> 3) & 0x18)) >> v5[21]))
                                        {
                                          v6 = (~*(&v12 + ((v5[20] >> 3) & 0x18)) >> v5[20]) & 1;
                                        }

                                        else
                                        {
                                          v6 = 2;
                                        }
                                      }

                                      else
                                      {
                                        v6 = 3;
                                      }
                                    }

                                    else
                                    {
                                      v6 = 4;
                                    }
                                  }

                                  else
                                  {
                                    v6 = 5;
                                  }
                                }

                                else
                                {
                                  v6 = 6;
                                }
                              }

                              else
                              {
                                v6 = 7;
                              }
                            }

                            else
                            {
                              v6 = 8;
                            }
                          }

                          else
                          {
                            v6 = 9;
                          }
                        }

                        else
                        {
                          v6 = 10;
                        }
                      }

                      else
                      {
                        v6 = 11;
                      }
                    }

                    else
                    {
                      v6 = 12;
                    }
                  }

                  else
                  {
                    v6 = 13;
                  }
                }

                else
                {
                  v6 = 14;
                }
              }

              else
              {
                v6 = 15;
              }
            }

            else
            {
              v6 = 16;
            }
          }

          else
          {
            v6 = 17;
          }
        }

        else
        {
          v6 = 18;
        }
      }

      else
      {
        v6 = 19;
      }
    }

    else
    {
      v6 = 20;
    }

    result = sub_298B6DFF8(&v12, &v10, v5 + 20, v6, a1);
    if (v13)
    {
      v7 = v12;
      v8 = *(a2 + 8) | 1;
    }

    else
    {
      v7 = *(a1[1] + 16) + v12;
      v8 = *(a2 + 8) & 0xFE;
    }

    *(a2 + 8) = v8;
    *a2 = v7;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B6F8D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  if (a3)
  {
    if (a2)
    {
      v3 = *(a2 + 16) - a3 + *(a2 + 24);
    }

    v4 = *(a2 + 114) & 7;
    operator new();
  }

  *(result + 32) = -1;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B701E4(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x29EDCA608];
  (*(**(a2 + 8) + 96))(&v45);
  if (v46)
  {
    v4 = v45;
    v45 = 0;
LABEL_22:
    *(a1 + 16) |= 1u;
    *a1 = v4;
    goto LABEL_25;
  }

  if ((v45 & 1) == 0)
  {
    if ((*(*a2 + 114) & 8) != 0)
    {
      (*(**(a2 + 8) + 72))(__dst);
      if (__dst[8])
      {
        v4 = *__dst;
        goto LABEL_22;
      }

      v5 = *(a2 + 32);
      v7 = *__dst;
      v6 = *(a2 + 16);
    }

    else
    {
      v5 = *(a2 + 32);
      v6 = *(a2 + 16);
      v7 = *(a2 + 24) - v5;
    }

    *(a1 + 16) &= ~1u;
    *a1 = v6 + v5;
    *(a1 + 8) = v7;
    goto LABEL_25;
  }

  (*(**(a2 + 8) + 96))(&v57);
  if (v58)
  {
    v52 = -1;
    *&__p = v57;
LABEL_21:
    v4 = __p;
    *&__p = 0;
    goto LABEL_22;
  }

  (*(**(a2 + 8) + 72))(&__p);
  if (BYTE8(__p))
  {
    v8 = __p;
LABEL_16:
    v52 = -1;
    *&__p = v8;
    v15 = 1;
    goto LABEL_17;
  }

  v9 = __p;
  v10 = *(a2 + 8);
  v11 = (*(*v10 + 104))(v10);
  (*(*v10 + 64))(__dst, v10, v11 + v9);
  v12 = __dst[16];
  v8 = *__dst;
  v13 = *&__dst[8];
  if (BYTE8(__p))
  {
    v14 = __p;
    *&__p = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v56 = 261;
  *__dst = v8;
  *&__dst[8] = v13;
  if (sub_298BA9D1C(__dst, 0))
  {
    if (v13 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v13 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v13;
      if (v13)
      {
        memmove(__dst, v8, v13);
      }

      v15 = 0;
      __dst[v13] = 0;
      v52 = 0;
      __p = *__dst;
      v51 = *&__dst[16];
      goto LABEL_17;
    }

LABEL_72:
    sub_298ADDDA0();
  }

  v30 = sub_298BA9584(*(*a2 + 32), *(*a2 + 40), 0);
  v31 = v29;
  *__dst = &v55;
  *&__dst[8] = xmmword_298D1A050;
  if (v29 < 0x81)
  {
    v32 = 0;
  }

  else
  {
    sub_298B90C08(__dst, &v55, v29, 1);
    v32 = *&__dst[8];
  }

  if (v31)
  {
    memcpy((*__dst + v32), v30, v31);
    v32 = *&__dst[8];
  }

  *&__dst[8] = v32 + v31;
  v53 = 261;
  *&__p = v8;
  *(&__p + 1) = v13;
  v49 = 257;
  v44 = 257;
  v42 = 257;
  sub_298BA8944(__dst, 0, &__p, &v47, &v43, &v41);
  v40 = *&__dst[8];
  if (*&__dst[8] > 0x7FFFFFFFFFFFFFF7uLL)
  {
    goto LABEL_72;
  }

  if (*&__dst[8] >= 0x17uLL)
  {
    operator new();
  }

  HIBYTE(v48) = __dst[8];
  if (*&__dst[8])
  {
    memmove(&v47, *__dst, *&__dst[8]);
  }

  *(&v47 + v40) = 0;
  v52 = 0;
  __p = v47;
  v51 = v48;
  if (*__dst != &v55)
  {
    free(*__dst);
  }

  v15 = 0;
LABEL_17:
  if (v58)
  {
    v16 = v57;
    v57 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if (v15)
  {
    goto LABEL_21;
  }

  v56 = 260;
  *__dst = &__p;
  sub_298B8D930(__dst, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 1, 0, 0, &v47);
  if ((v48 & 1) != 0 && v47)
  {
    *__dst = &unk_2A1F1DB10;
    *&__dst[8] = v47;
    operator new();
  }

  v19 = *a2;
  v21 = *(*a2 + 128);
  v20 = *(*a2 + 136);
  if (v21 >= v20)
  {
    v23 = v19[15];
    v24 = v21 - v23;
    v25 = (v21 - v23) >> 3;
    v26 = v25 + 1;
    if ((v25 + 1) >> 61)
    {
      sub_298ADDDA0();
    }

    v27 = v20 - v23;
    if (v27 >> 2 > v26)
    {
      v26 = v27 >> 2;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      if (!(v28 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v33 = (v21 - v23) >> 3;
    v34 = (8 * v25);
    v35 = (8 * v25 - 8 * v33);
    *v34 = v47;
    v22 = v34 + 1;
    memcpy(v35, v23, v24);
    v19[15] = v35;
    v19[16] = v22;
    v19[17] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v21 = v47;
    v22 = v21 + 8;
  }

  v19[16] = v22;
  v36 = *(*(*a2 + 128) - 8);
  v37 = *(v36 + 8);
  v38 = *(v36 + 16) - v37;
  *(a1 + 16) &= ~1u;
  *a1 = v37;
  *(a1 + 8) = v38;
  if (v52)
  {
    v39 = __p;
    *&__p = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }
  }

  else if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }

LABEL_25:
  if (v46)
  {
    v17 = v45;
    v45 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void *sub_298B708EC(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  result = (*(*a2[1] + 88))(&v11);
  v5 = v11;
  if (v12)
  {
    v11 = 0;
    *(a1 + 40) |= 1u;
    *a1 = v5;
  }

  else if (v11)
  {
    if (v11 > *(*a2 + 16) + *(*a2 + 24))
    {
      operator new();
    }

    result = sub_298B6F8D8(v9, *a2, v11);
    *(a1 + 40) &= ~1u;
    *(a1 + 32) = v10;
    v7 = v9[0];
    v6 = v9[1];
    *(&v9[0] + 1) = 0;
    *a1 = v7;
    *(a1 + 16) = v6;
  }

  else
  {
    *(a1 + 40) &= ~1u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
  }

  if (v12)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B70D34(uint64_t a1)
{
  v1 = 0;
  if (*(a1 + 8) >= 8uLL && **a1 == 0xA3E66616769623CLL)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_298B70E7C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v72 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2A1F1D640;
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 64) = 0u;
  v8 = (a1 + 64);
  *(a1 + 80) = 0u;
  v9 = (a1 + 80);
  *(a1 + 96) = 0u;
  v10 = (a1 + 96);
  *(a1 + 112) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  if (*(a1 + 24) < 8uLL)
  {
LABEL_2:
    operator new();
  }

  v11 = *(a1 + 16);
  if (*v11 == 0xA3E6E6968743C21)
  {
    v12 = *(a1 + 114) | 8;
    goto LABEL_9;
  }

  if (*v11 == 0xA3E686372613C21)
  {
    v12 = *(a1 + 114) & 0xF7;
LABEL_9:
    *(a1 + 114) = v12 & 0xF8;
    sub_298B71C4C(&v64, a1, a3);
    if (!*a3)
    {
      if (v67 >= 8 && v65)
      {
        (*(**(&v64 + 1) + 24))(&v62);
        v13 = v62;
        if (v63)
        {
          *&v62 = 0;
          *a3 = v13;
LABEL_159:
          if (v63)
          {
            v45 = v62;
            *&v62 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }
          }

          goto LABEL_162;
        }

        v14 = *(&v62 + 1);
        if (*(&v62 + 1) == 12)
        {
          if (*v62 == 0x45444D59532E5F5FLL && *(v62 + 8) == 875978566)
          {
            v16 = 4;
            goto LABEL_29;
          }
        }

        else
        {
          if (*(&v62 + 1) == 9)
          {
            if (*v62 != 0x45444D59532E5F5FLL || *(v62 + 8) != 70)
            {
              goto LABEL_34;
            }

            v16 = 2;
LABEL_29:
            *(a1 + 114) = *(a1 + 114) & 0xF8 | v16;
            sub_298B701E4(&v60, &v64);
            if (v61)
            {
LABEL_55:
              v23 = v60;
LABEL_56:
              *a3 = v23;
              goto LABEL_159;
            }

            *v7 = v60;
            sub_298B708EC(&v68, &v64);
            v18 = v68;
            if ((v71 & 1) == 0)
            {
              v31 = *(&v64 + 1);
              v64 = v68;
              if (v31)
              {
                (*(*v31 + 16))(v31);
              }

              v32 = v69;
              goto LABEL_72;
            }

LABEL_31:
            if (v18)
            {
              *(v67 & 0xFFFFFFFFFFFFFFF8) = v18;
              v67 = v67 & 3 | 4;
              goto LABEL_74;
            }

LABEL_73:
            *(v67 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_74:
            v23 = *a3;
            if (*a3)
            {
              goto LABEL_159;
            }

            goto LABEL_75;
          }

          if (*(&v62 + 1) < 3uLL)
          {
            goto LABEL_38;
          }
        }

LABEL_34:
        if (*v62 != 12579 || *(v62 + 2) != 47)
        {
LABEL_38:
          if (*(&v62 + 1) == 7)
          {
            if (*v62 == 1297699631 && *(v62 + 3) == 791950925)
            {
              goto LABEL_54;
            }

            if (*v62 == 47)
            {
              goto LABEL_140;
            }
          }

          else
          {
            if (*(&v62 + 1) != 1)
            {
              v22 = 0;
              if (*(&v62 + 1) != 2)
              {
                goto LABEL_132;
              }

              goto LABEL_51;
            }

            if (*v62 == 47)
            {
LABEL_54:
              sub_298B701E4(&v60, &v64);
              if (v61)
              {
                goto LABEL_55;
              }

              *v7 = v60;
              v22 = v14 == 7 && *v13 == 1297699631 && *(v13 + 3) == 791950925;
              sub_298B708EC(&v68, &v64);
              if (v71)
              {
                if (v68)
                {
                  *(v67 & 0xFFFFFFFFFFFFFFF8) = v68;
                  v67 = v67 & 3 | 4;
                  goto LABEL_93;
                }
              }

              else
              {
                v34 = *(&v64 + 1);
                v64 = v68;
                if (v34)
                {
                  (*(*v34 + 16))(v34);
                }

                v65 = v69;
                v66 = v70;
              }

              *(v67 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_93:
              if (*a3)
              {
                goto LABEL_159;
              }

              if (v67 < 8 || !v65)
              {
                *a3 = 0;
                goto LABEL_159;
              }

              (*(**(&v64 + 1) + 24))(&v68);
              v13 = v68;
              if (v69)
              {
                *a3 = v68;
                goto LABEL_159;
              }

              v14 = *(&v68 + 1);
              if (*(&v68 + 1) != 2)
              {
LABEL_132:
                if (*v13 == 47)
                {
                  if (v14 == 1)
                  {
                    *(a1 + 114) = *(a1 + 114) & 0xF8 | 5;
                    sub_298B701E4(&v60, &v64);
                    if (v61)
                    {
                      goto LABEL_55;
                    }

                    *v7 = v60;
                    sub_298B708EC(&v68, &v64);
                    if (v71)
                    {
                      if (v68)
                      {
                        *(v67 & 0xFFFFFFFFFFFFFFF8) = v68;
                        v67 = v67 & 3 | 4;
                        goto LABEL_145;
                      }
                    }

                    else
                    {
                      v41 = *(&v64 + 1);
                      v64 = v68;
                      if (v41)
                      {
                        (*(*v41 + 16))(v41);
                      }

                      v65 = v69;
                      v66 = v70;
                    }

                    *(v67 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_145:
                    if (*a3)
                    {
                      goto LABEL_159;
                    }

                    if (v67 < 8 || !v65)
                    {
                      goto LABEL_139;
                    }

                    (*(**(&v64 + 1) + 24))(&v68);
                    v42 = v63;
                    if (v63)
                    {
                      v43 = v62;
                      *&v62 = 0;
                      if (v43)
                      {
                        (*(*v43 + 8))(v43);
                        v42 = v63;
                      }
                    }

                    v63 = v42 & 0xFE | v69 & 1;
                    if (v69)
                    {
                      goto LABEL_152;
                    }

                    v62 = v68;
                    v50 = *(&v68 + 1);
                    v49 = v68;
                    if (*(&v68 + 1) != 2)
                    {
LABEL_183:
                      if (v50 != 13)
                      {
                        goto LABEL_139;
                      }

                      v54 = *v49;
                      v55 = *(v49 + 5);
                      if (v54 != 0x424D595343453C2FLL || v55 != 0x2F3E534C4F424D59)
                      {
                        goto LABEL_139;
                      }

                      sub_298B701E4(&v58, &v64);
                      if (v59)
                      {
LABEL_190:
                        v23 = v58;
                        goto LABEL_56;
                      }

                      *v8 = v58;
                      sub_298B708EC(&v68, &v64);
                      if (v71)
                      {
                        if (v68)
                        {
                          *(v67 & 0xFFFFFFFFFFFFFFF8) = v68;
                          v67 = v67 & 3 | 4;
                          goto LABEL_198;
                        }
                      }

                      else
                      {
                        v57 = *(&v64 + 1);
                        v64 = v68;
                        if (v57)
                        {
                          (*(*v57 + 16))(v57);
                        }

                        v65 = v69;
                        v66 = v70;
                      }

                      *(v67 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_198:
                      if (*a3)
                      {
                        goto LABEL_159;
                      }

                      goto LABEL_139;
                    }

                    if (*v68 == 12079)
                    {
                      sub_298B701E4(&v58, &v64);
                      if (v59)
                      {
                        goto LABEL_190;
                      }

                      *v9 = v58;
                      sub_298B708EC(&v68, &v64);
                      if (v71)
                      {
                        if (v68)
                        {
                          *(v67 & 0xFFFFFFFFFFFFFFF8) = v68;
                          v67 = v67 & 3 | 4;
LABEL_175:
                          if (*a3)
                          {
                            goto LABEL_159;
                          }

                          if (v67 >= 8 && v65)
                          {
                            (*(**(&v64 + 1) + 24))(&v68);
                            v52 = v63;
                            if (v63)
                            {
                              v53 = v62;
                              *&v62 = 0;
                              if (v53)
                              {
                                (*(*v53 + 8))(v53);
                                v52 = v63;
                              }
                            }

                            v63 = v52 & 0xFE | v69 & 1;
                            if (v69)
                            {
LABEL_152:
                              v23 = v68;
                              *&v62 = 0;
                              goto LABEL_56;
                            }

                            v62 = v68;
                            v50 = *(&v68 + 1);
                            v49 = v68;
                            goto LABEL_183;
                          }

                          v23 = 0;
LABEL_75:
                          *v10 = v65;
                          *(a1 + 112) = v66;
                          goto LABEL_56;
                        }
                      }

                      else
                      {
                        v51 = *(&v64 + 1);
                        v64 = v68;
                        if (v51)
                        {
                          (*(*v51 + 16))(v51);
                        }

                        v65 = v69;
                        v66 = v70;
                      }

                      *(v67 & 0xFFFFFFFFFFFFFFF8) = 0;
                      goto LABEL_175;
                    }

LABEL_139:
                    *v10 = v65;
                    *(a1 + 112) = v66;
                    *a3 = 0;
                    goto LABEL_159;
                  }

LABEL_140:
                  v40 = sub_298B74304();
                  *&v68 = &unk_2A1F1DB10;
                  *(&v68 + 1) = 3;
                  *&v69 = v40;
                  operator new();
                }

LABEL_138:
                *(a1 + 114) = *(a1 + 114) & 0xF8 | v22;
                goto LABEL_139;
              }

LABEL_51:
              if (*v13 != 12079)
              {
                if (*v13 == 47)
                {
                  goto LABEL_140;
                }

                goto LABEL_138;
              }

              *(a1 + 114) = *(a1 + 114) & 0xF8 | v22;
              sub_298B701E4(&v60, &v64);
              if (v61)
              {
                goto LABEL_55;
              }

              *v9 = v60;
              sub_298B708EC(&v68, &v64);
              v18 = v68;
              if ((v71 & 1) == 0)
              {
                v35 = *(&v64 + 1);
                v64 = v68;
                if (v35)
                {
                  (*(*v35 + 16))(v35);
                }

                v32 = v69;
LABEL_72:
                v65 = v32;
                v66 = v70;
                goto LABEL_73;
              }

              goto LABEL_31;
            }
          }

          v22 = 0;
          goto LABEL_138;
        }

        *(a1 + 114) = *(a1 + 114) & 0xF8 | 2;
        (*(**(&v64 + 1) + 72))(&v60);
        if (BYTE8(v60))
        {
          v20 = v60;
LABEL_61:
          *a3 = v20;
          goto LABEL_159;
        }

        v24 = v60;
        v25 = *(&v64 + 1);
        v26 = (*(**(&v64 + 1) + 104))(*(&v64 + 1));
        (*(*v25 + 64))(&v68, v25, v26 + v24);
        v27 = v69;
        v28 = *(&v68 + 1);
        v20 = v68;
        if (BYTE8(v60))
        {
          v29 = v60;
          *&v60 = 0;
          if (v29)
          {
            (*(*v29 + 8))(v29);
          }
        }

        if (v27)
        {
          goto LABEL_61;
        }

        if (v28 > 15)
        {
          if (v28 == 19)
          {
            if (*v20 != 0x45444D59532E5F5FLL || v20[1] != 0x524F532034365F46 || *(v20 + 11) != 0x444554524F532034)
            {
              goto LABEL_158;
            }

LABEL_127:
            *(a1 + 114) = *(a1 + 114) & 0xF8 | 4;
            sub_298B701E4(&v60, &v64);
            if (v61)
            {
              goto LABEL_55;
            }

            goto LABEL_128;
          }

          if (v28 != 16)
          {
            goto LABEL_158;
          }

          if (*v20 != 0x45444D59532E5F5FLL || v20[1] != 0x444554524F532046)
          {
            goto LABEL_158;
          }
        }

        else
        {
          if (v28 != 9)
          {
            if (v28 != 12)
            {
              goto LABEL_158;
            }

            if (*v20 != 0x45444D59532E5F5FLL || *(v20 + 2) != 875978566)
            {
              goto LABEL_158;
            }

            goto LABEL_127;
          }

          if (*v20 != 0x45444D59532E5F5FLL || *(v20 + 8) != 70)
          {
            goto LABEL_158;
          }
        }

        sub_298B701E4(&v60, &v64);
        if (v61)
        {
          goto LABEL_55;
        }

LABEL_128:
        *v7 = v60;
        sub_298B708EC(&v68, &v64);
        if (v71)
        {
          if (v68)
          {
            *(v67 & 0xFFFFFFFFFFFFFFF8) = v68;
            v67 = v67 & 3 | 4;
            goto LABEL_157;
          }
        }

        else
        {
          v44 = *(&v64 + 1);
          v64 = v68;
          if (v44)
          {
            (*(*v44 + 16))(v44);
          }

          v65 = v69;
          v66 = v70;
        }

        *(v67 & 0xFFFFFFFFFFFFFFF8) = 0;
LABEL_157:
        if (*a3)
        {
          goto LABEL_159;
        }

LABEL_158:
        *v10 = v65;
        *(a1 + 112) = v66;
        goto LABEL_159;
      }

      *a3 = 0;
    }

LABEL_162:
    v46 = *(&v64 + 1);
    *(&v64 + 1) = 0;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    goto LABEL_164;
  }

  if (*v11 != 0xA3E66616769623CLL)
  {
    goto LABEL_2;
  }

  *(a1 + 114) = *(a1 + 114) & 0xF0 | 6;
LABEL_164:
  v47 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298B71C4C(uint64_t a1, void *a2, void *a3)
{
  result = (*(*a2 + 32))(a2);
  if (result)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
    *(a1 + 40) = 0;
    return result;
  }

  v7 = a2[2];
  v8 = (*(*a2 + 40))(a2);
  sub_298B6F8D8(&v13, a2, v7 + v8);
  if (*a3)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
    *(a1 + 40) = 0;
    result = v14;
    v14 = 0;
    if (!result)
    {
      return result;
    }

    return (*(*result + 16))(result);
  }

  v12 = v15;
  v9 = v16;
  v10 = v13;
  if (v14)
  {
    (**v14)(&v17);
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  *(a1 + 40) = a3;
  result = v14;
  v14 = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

uint64_t sub_298B71DE4(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v82 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  *v75 = *a2;
  v76 = v5;
  v6 = sub_298B70E7C(a1, v75, a3);
  *v6 = &unk_2A1F1D680;
  *(v6 + 152) = 0u;
  v7 = (v6 + 152);
  *(v6 + 168) = 0u;
  v8 = v6 + 168;
  *(v6 + 178) = 0u;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v6 + 144) = v9;
  v65 = v10;
  if (v10 <= 0x7F)
  {
    v67 = "malformed AIX big archive: incomplete fixed length header, the archive is only";
    *&v69 = &v65;
    LOWORD(v70) = 3331;
    v11 = " byte(s)";
    goto LABEL_168;
  }

  v76 = 0uLL;
  v75[0] = 0x100000000;
  v75[1] = 0;
  v12 = v9 + 68;
  if ((*(v75 + ((v9[87] >> 3) & 0x18)) >> v9[87]))
  {
    if ((*(v75 + ((v9[86] >> 3) & 0x18)) >> v9[86]))
    {
      if ((*(v75 + ((v9[85] >> 3) & 0x18)) >> v9[85]))
      {
        if ((*(v75 + ((v9[84] >> 3) & 0x18)) >> v9[84]))
        {
          if ((*(v75 + ((v9[83] >> 3) & 0x18)) >> v9[83]))
          {
            if ((*(v75 + ((v9[82] >> 3) & 0x18)) >> v9[82]))
            {
              if ((*(v75 + ((v9[81] >> 3) & 0x18)) >> v9[81]))
              {
                if ((*(v75 + ((v9[80] >> 3) & 0x18)) >> v9[80]))
                {
                  if ((*(v75 + ((v9[79] >> 3) & 0x18)) >> v9[79]))
                  {
                    if ((*(v75 + ((v9[78] >> 3) & 0x18)) >> v9[78]))
                    {
                      if ((*(v75 + ((v9[77] >> 3) & 0x18)) >> v9[77]))
                      {
                        if ((*(v75 + ((v9[76] >> 3) & 0x18)) >> v9[76]))
                        {
                          if ((*(v75 + ((v9[75] >> 3) & 0x18)) >> v9[75]))
                          {
                            if ((*(v75 + ((v9[74] >> 3) & 0x18)) >> v9[74]))
                            {
                              if ((*(v75 + ((v9[73] >> 3) & 0x18)) >> v9[73]))
                              {
                                if ((*(v75 + ((v9[72] >> 3) & 0x18)) >> v9[72]))
                                {
                                  if ((*(v75 + ((v9[71] >> 3) & 0x18)) >> v9[71]))
                                  {
                                    if ((*(v75 + ((v9[70] >> 3) & 0x18)) >> v9[70]))
                                    {
                                      if ((*(v75 + ((v9[69] >> 3) & 0x18)) >> v9[69]))
                                      {
                                        v13 = (~*(v75 + ((*v12 >> 3) & 0x18)) >> *v12) & 1;
                                      }

                                      else
                                      {
                                        v13 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v13 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v13 = 4;
                                  }
                                }

                                else
                                {
                                  v13 = 5;
                                }
                              }

                              else
                              {
                                v13 = 6;
                              }
                            }

                            else
                            {
                              v13 = 7;
                            }
                          }

                          else
                          {
                            v13 = 8;
                          }
                        }

                        else
                        {
                          v13 = 9;
                        }
                      }

                      else
                      {
                        v13 = 10;
                      }
                    }

                    else
                    {
                      v13 = 11;
                    }
                  }

                  else
                  {
                    v13 = 12;
                  }
                }

                else
                {
                  v13 = 13;
                }
              }

              else
              {
                v13 = 14;
              }
            }

            else
            {
              v13 = 15;
            }
          }

          else
          {
            v13 = 16;
          }
        }

        else
        {
          v13 = 17;
        }
      }

      else
      {
        v13 = 18;
      }
    }

    else
    {
      v13 = 19;
    }
  }

  else
  {
    v13 = 20;
  }

  v75[0] = 0;
  if (sub_298B97354(v12, v13, 0xAu, v75))
  {
    LOWORD(v70) = 1283;
    v67 = "malformed AIX big archive: first member offset ";
    *&v69 = v12;
    *(&v69 + 1) = v13;
    v75[0] = &v67;
    *&v76 = " is not a number";
    LOWORD(v77) = 770;
    sub_298B6DDE8(&v66, v75);
  }

  *v7 = v75[0];
  v14 = *(a1 + 144);
  v76 = 0uLL;
  v75[0] = 0x100000000;
  v75[1] = 0;
  v15 = v14 + 88;
  if ((*(v75 + ((v14[107] >> 3) & 0x18)) >> v14[107]))
  {
    if ((*(v75 + ((v14[106] >> 3) & 0x18)) >> v14[106]))
    {
      if ((*(v75 + ((v14[105] >> 3) & 0x18)) >> v14[105]))
      {
        if ((*(v75 + ((v14[104] >> 3) & 0x18)) >> v14[104]))
        {
          if ((*(v75 + ((v14[103] >> 3) & 0x18)) >> v14[103]))
          {
            if ((*(v75 + ((v14[102] >> 3) & 0x18)) >> v14[102]))
            {
              if ((*(v75 + ((v14[101] >> 3) & 0x18)) >> v14[101]))
              {
                if ((*(v75 + ((v14[100] >> 3) & 0x18)) >> v14[100]))
                {
                  if ((*(v75 + ((v14[99] >> 3) & 0x18)) >> v14[99]))
                  {
                    if ((*(v75 + ((v14[98] >> 3) & 0x18)) >> v14[98]))
                    {
                      if ((*(v75 + ((v14[97] >> 3) & 0x18)) >> v14[97]))
                      {
                        if ((*(v75 + ((v14[96] >> 3) & 0x18)) >> v14[96]))
                        {
                          if ((*(v75 + ((v14[95] >> 3) & 0x18)) >> v14[95]))
                          {
                            if ((*(v75 + ((v14[94] >> 3) & 0x18)) >> v14[94]))
                            {
                              if ((*(v75 + ((v14[93] >> 3) & 0x18)) >> v14[93]))
                              {
                                if ((*(v75 + ((v14[92] >> 3) & 0x18)) >> v14[92]))
                                {
                                  if ((*(v75 + ((v14[91] >> 3) & 0x18)) >> v14[91]))
                                  {
                                    if ((*(v75 + ((v14[90] >> 3) & 0x18)) >> v14[90]))
                                    {
                                      if ((*(v75 + ((v14[89] >> 3) & 0x18)) >> v14[89]))
                                      {
                                        v16 = (~*(v75 + ((*v15 >> 3) & 0x18)) >> *v15) & 1;
                                      }

                                      else
                                      {
                                        v16 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v16 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v16 = 4;
                                  }
                                }

                                else
                                {
                                  v16 = 5;
                                }
                              }

                              else
                              {
                                v16 = 6;
                              }
                            }

                            else
                            {
                              v16 = 7;
                            }
                          }

                          else
                          {
                            v16 = 8;
                          }
                        }

                        else
                        {
                          v16 = 9;
                        }
                      }

                      else
                      {
                        v16 = 10;
                      }
                    }

                    else
                    {
                      v16 = 11;
                    }
                  }

                  else
                  {
                    v16 = 12;
                  }
                }

                else
                {
                  v16 = 13;
                }
              }

              else
              {
                v16 = 14;
              }
            }

            else
            {
              v16 = 15;
            }
          }

          else
          {
            v16 = 16;
          }
        }

        else
        {
          v16 = 17;
        }
      }

      else
      {
        v16 = 18;
      }
    }

    else
    {
      v16 = 19;
    }
  }

  else
  {
    v16 = 20;
  }

  v75[0] = 0;
  if (sub_298B97354(v15, v16, 0xAu, v75))
  {
    LOWORD(v70) = 1283;
    v67 = "malformed AIX big archive: last member offset ";
    *&v69 = v15;
    *(&v69 + 1) = v16;
    v75[0] = &v67;
    *&v76 = " is not a number";
    LOWORD(v77) = 770;
    sub_298B6DDE8(&v66, v75);
  }

  *(a1 + 160) = v75[0];
  v17 = *(a1 + 144);
  v76 = 0uLL;
  v75[0] = 0x100000000;
  v75[1] = 0;
  v18 = v17 + 28;
  if ((*(v75 + ((v17[47] >> 3) & 0x18)) >> v17[47]))
  {
    if ((*(v75 + ((v17[46] >> 3) & 0x18)) >> v17[46]))
    {
      if ((*(v75 + ((v17[45] >> 3) & 0x18)) >> v17[45]))
      {
        if ((*(v75 + ((v17[44] >> 3) & 0x18)) >> v17[44]))
        {
          if ((*(v75 + ((v17[43] >> 3) & 0x18)) >> v17[43]))
          {
            if ((*(v75 + ((v17[42] >> 3) & 0x18)) >> v17[42]))
            {
              if ((*(v75 + ((v17[41] >> 3) & 0x18)) >> v17[41]))
              {
                if ((*(v75 + ((v17[40] >> 3) & 0x18)) >> v17[40]))
                {
                  if ((*(v75 + ((v17[39] >> 3) & 0x18)) >> v17[39]))
                  {
                    if ((*(v75 + ((v17[38] >> 3) & 0x18)) >> v17[38]))
                    {
                      if ((*(v75 + ((v17[37] >> 3) & 0x18)) >> v17[37]))
                      {
                        if ((*(v75 + ((v17[36] >> 3) & 0x18)) >> v17[36]))
                        {
                          if ((*(v75 + ((v17[35] >> 3) & 0x18)) >> v17[35]))
                          {
                            if ((*(v75 + ((v17[34] >> 3) & 0x18)) >> v17[34]))
                            {
                              if ((*(v75 + ((v17[33] >> 3) & 0x18)) >> v17[33]))
                              {
                                if ((*(v75 + ((v17[32] >> 3) & 0x18)) >> v17[32]))
                                {
                                  if ((*(v75 + ((v17[31] >> 3) & 0x18)) >> v17[31]))
                                  {
                                    if ((*(v75 + ((v17[30] >> 3) & 0x18)) >> v17[30]))
                                    {
                                      if ((*(v75 + ((v17[29] >> 3) & 0x18)) >> v17[29]))
                                      {
                                        v19 = (~*(v75 + ((*v18 >> 3) & 0x18)) >> *v18) & 1;
                                      }

                                      else
                                      {
                                        v19 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v19 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v19 = 4;
                                  }
                                }

                                else
                                {
                                  v19 = 5;
                                }
                              }

                              else
                              {
                                v19 = 6;
                              }
                            }

                            else
                            {
                              v19 = 7;
                            }
                          }

                          else
                          {
                            v19 = 8;
                          }
                        }

                        else
                        {
                          v19 = 9;
                        }
                      }

                      else
                      {
                        v19 = 10;
                      }
                    }

                    else
                    {
                      v19 = 11;
                    }
                  }

                  else
                  {
                    v19 = 12;
                  }
                }

                else
                {
                  v19 = 13;
                }
              }

              else
              {
                v19 = 14;
              }
            }

            else
            {
              v19 = 15;
            }
          }

          else
          {
            v19 = 16;
          }
        }

        else
        {
          v19 = 17;
        }
      }

      else
      {
        v19 = 18;
      }
    }

    else
    {
      v19 = 19;
    }
  }

  else
  {
    v19 = 20;
  }

  v75[0] = 0;
  if (sub_298B97354(v18, v19, 0xAu, v75))
  {
    LOWORD(v70) = 1283;
    v67 = "global symbol table offset of 32-bit members ";
    *&v69 = v18;
    *(&v69 + 1) = v19;
LABEL_167:
    v11 = " is not a number";
LABEL_168:
    v75[0] = &v67;
    *&v76 = v11;
    LOWORD(v77) = 770;
    sub_298B6DDE8(&v66, v75);
  }

  v20 = v75[0];
  v21 = *(a1 + 144);
  v76 = 0uLL;
  v75[0] = 0x100000000;
  v75[1] = 0;
  v22 = v21 + 48;
  if ((*(v75 + ((v21[67] >> 3) & 0x18)) >> v21[67]))
  {
    if ((*(v75 + ((v21[66] >> 3) & 0x18)) >> v21[66]))
    {
      if ((*(v75 + ((v21[65] >> 3) & 0x18)) >> v21[65]))
      {
        if ((*(v75 + ((v21[64] >> 3) & 0x18)) >> v21[64]))
        {
          if ((*(v75 + ((v21[63] >> 3) & 0x18)) >> v21[63]))
          {
            if ((*(v75 + ((v21[62] >> 3) & 0x18)) >> v21[62]))
            {
              if ((*(v75 + ((v21[61] >> 3) & 0x18)) >> v21[61]))
              {
                if ((*(v75 + ((v21[60] >> 3) & 0x18)) >> v21[60]))
                {
                  if ((*(v75 + ((v21[59] >> 3) & 0x18)) >> v21[59]))
                  {
                    if ((*(v75 + ((v21[58] >> 3) & 0x18)) >> v21[58]))
                    {
                      if ((*(v75 + ((v21[57] >> 3) & 0x18)) >> v21[57]))
                      {
                        if ((*(v75 + ((v21[56] >> 3) & 0x18)) >> v21[56]))
                        {
                          if ((*(v75 + ((v21[55] >> 3) & 0x18)) >> v21[55]))
                          {
                            if ((*(v75 + ((v21[54] >> 3) & 0x18)) >> v21[54]))
                            {
                              if ((*(v75 + ((v21[53] >> 3) & 0x18)) >> v21[53]))
                              {
                                if ((*(v75 + ((v21[52] >> 3) & 0x18)) >> v21[52]))
                                {
                                  if ((*(v75 + ((v21[51] >> 3) & 0x18)) >> v21[51]))
                                  {
                                    if ((*(v75 + ((v21[50] >> 3) & 0x18)) >> v21[50]))
                                    {
                                      if ((*(v75 + ((v21[49] >> 3) & 0x18)) >> v21[49]))
                                      {
                                        v23 = (~*(v75 + ((*v22 >> 3) & 0x18)) >> *v22) & 1;
                                      }

                                      else
                                      {
                                        v23 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v23 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v23 = 4;
                                  }
                                }

                                else
                                {
                                  v23 = 5;
                                }
                              }

                              else
                              {
                                v23 = 6;
                              }
                            }

                            else
                            {
                              v23 = 7;
                            }
                          }

                          else
                          {
                            v23 = 8;
                          }
                        }

                        else
                        {
                          v23 = 9;
                        }
                      }

                      else
                      {
                        v23 = 10;
                      }
                    }

                    else
                    {
                      v23 = 11;
                    }
                  }

                  else
                  {
                    v23 = 12;
                  }
                }

                else
                {
                  v23 = 13;
                }
              }

              else
              {
                v23 = 14;
              }
            }

            else
            {
              v23 = 15;
            }
          }

          else
          {
            v23 = 16;
          }
        }

        else
        {
          v23 = 17;
        }
      }

      else
      {
        v23 = 18;
      }
    }

    else
    {
      v23 = 19;
    }
  }

  else
  {
    v23 = 20;
  }

  v75[0] = 0;
  if (sub_298B97354(v22, v23, 0xAu, v75))
  {
    LOWORD(v70) = 1283;
    v67 = "global symbol table offset of 64-bit members";
    *&v69 = v22;
    *(&v69 + 1) = v23;
    goto LABEL_167;
  }

  v26 = v75[0];
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  if (v20)
  {
    sub_298B72F5C(v75, *(a1 + 16), *(a1 + 24), v20, &v64, &v62, "32-bit");
    v29 = v75[0];
    *a3 = v75[0];
    if (v29)
    {
      goto LABEL_169;
    }

    *(a1 + 192) = 1;
  }

  if (v26)
  {
    sub_298B72F5C(v75, v27, v28, v26, &v63, &v61, "64-bit");
    v30 = v75[0];
    *a3 = v75[0];
    if (v30)
    {
      goto LABEL_169;
    }

    *(a1 + 193) = 1;
  }

  v75[0] = &v76;
  v75[1] = 0x100000000;
  if (v20)
  {
    v31 = bswap64(*(v64 + 114));
    v32 = (8 * v31 + 8);
    *&v76 = v31;
    *(&v76 + 1) = v64 + 114;
    v77 = v62;
    v78 = v64 + 122;
    v79 = 8 * v31;
    v80 = v64 + 114 + v32;
    v81 = v62 - v32;
    v33 = 1;
    LODWORD(v75[1]) = 1;
  }

  else
  {
    v33 = 0;
  }

  if (v26)
  {
    v34 = bswap64(*(v63 + 114));
    v35 = (8 * v34 + 8);
    v67 = v34;
    v68 = v63 + 114;
    *&v69 = v61;
    *(&v69 + 1) = v63 + 122;
    v70 = (8 * v34);
    v71 = v63 + 114 + v35;
    v72 = v61 - v35;
    v36 = &v67;
    if (v20)
    {
      if (&v76 <= &v67 && &v76 + 56 * v33 > &v67)
      {
        sub_298B90A44(v75, &v76, v33 + 1, 56);
        v37 = v75[0];
        v36 = (v75[0] + &v67 - &v76);
      }

      else
      {
        sub_298B90A44(v75, &v76, v33 + 1, 56);
        v36 = &v67;
        v37 = v75[0];
      }
    }

    else
    {
      v37 = &v76;
    }

    v38 = v37 + 56 * LODWORD(v75[1]);
    v39 = *v36;
    v40 = *(v36 + 1);
    v41 = *(v36 + 2);
    *(v38 + 6) = v36[6];
    *(v38 + 1) = v40;
    *(v38 + 2) = v41;
    *v38 = v39;
    v33 = ++LODWORD(v75[1]);
  }

  if (v33 == 2)
  {
    LODWORD(v68) = 0;
    LOBYTE(v71) = 0;
    v72 = 0;
    v73 = 1;
    v70 = 0;
    v69 = 0uLL;
    v67 = &unk_2A1F1E040;
    v74 = v8;
    sub_298ADDDB0(&v67);
    v43 = *(v75[0] + 7) + *v75[0];
    v66 = bswap64(v43);
    sub_298B9BCEC(&v67, &v66, 8uLL);
    v44 = *(v75[0] + 3);
    v45 = *(v75[0] + 4);
    v46 = v70;
    if (v45 <= *(&v69 + 1) - v70)
    {
      if (v45)
      {
        v47 = *(v75[0] + 4);
        memcpy(v70, v44, v45);
        v46 = &v70[v47];
        v70 += v47;
      }
    }

    else
    {
      sub_298B9BCEC(&v67, v44, v45);
      v46 = v70;
    }

    v48 = *(v75[0] + 10);
    v49 = *(v75[0] + 11);
    if (v49 <= *(&v69 + 1) - v46)
    {
      if (v49)
      {
        v50 = *(v75[0] + 11);
        memcpy(v46, v48, v49);
        v46 = &v70[v50];
        v70 += v50;
      }
    }

    else
    {
      sub_298B9BCEC(&v67, v48, v49);
      v46 = v70;
    }

    v51 = *(v75[0] + 5);
    v52 = *(v75[0] + 6);
    if (v52 <= *(&v69 + 1) - v46)
    {
      if (v52)
      {
        v53 = *(v75[0] + 6);
        memcpy(v46, v51, v52);
        v46 = &v70[v53];
        v70 += v53;
      }
    }

    else
    {
      sub_298B9BCEC(&v67, v51, v52);
      v46 = v70;
    }

    v54 = *(v75[0] + 12);
    v55 = *(v75[0] + 13);
    if (v55 <= *(&v69 + 1) - v46)
    {
      if (v55)
      {
        v56 = *(v75[0] + 13);
        memcpy(v46, v54, v55);
        v70 += v56;
      }
    }

    else
    {
      sub_298B9BCEC(&v67, v54, v55);
    }

    v57 = *(a1 + 191);
    v58 = *(a1 + 168);
    if (v57 >= 0)
    {
      v58 = v8;
    }

    if (v57 < 0)
    {
      v57 = *(a1 + 176);
    }

    *(a1 + 48) = v58;
    *(a1 + 56) = v57;
    v59 = v58 + 8 * v43 + 8;
    v60 = *(v75[0] + 13) + *(v75[0] + 6);
    *(a1 + 80) = v59;
    *(a1 + 88) = v60;
    sub_298B9AE14(&v67);
  }

  else if (v33 == 1)
  {
    v42 = v75[0];
    *(a1 + 48) = *(v75[0] + 8);
    *(a1 + 80) = *(v42 + 40);
  }

  sub_298B71C4C(&v67, a1, a3);
  if (!*a3)
  {
    if (v71 >= 8 && v69)
    {
      *(a1 + 96) = v69;
      *(a1 + 112) = v70;
    }

    *a3 = 0;
  }

  if (v68)
  {
    (*(*v68 + 16))(v68);
  }

  if (v75[0] != &v76)
  {
    free(v75[0]);
  }

LABEL_169:
  v24 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298B72F5C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6, const char *a7)
{
  v8 = a4 + 114;
  v51 = a4 + 114;
  v52 = a4;
  if (a4 + 114 > a3)
  {
    v9 = *a7;
    v10 = " global symbol table header at offset 0x";
    if (*a7)
    {
      v33 = " global symbol table header at offset 0x";
      v11 = 3;
      v12 = 2;
      v10 = a7;
    }

    else
    {
      v11 = 1;
      v12 = 3;
    }

    v34 = 3;
    v35 = v11;
    v18 = v9 == 0;
    v19 = v32;
    if (v18)
    {
      v19 = v10;
    }

    v36[0] = v19;
    v37 = &v52;
    v38 = v12;
    v39 = 15;
    v40[0] = v36;
    v41 = " and size 0x";
    v42 = 770;
    v31 = 114;
    v32[0] = v10;
    v43[0] = v40;
    v44 = &v31;
LABEL_28:
    v46 = 3842;
    v47[0] = v43;
    v48 = " goes past the end of file";
    goto LABEL_59;
  }

  v13 = (a2 + a4);
  *a5 = a2 + a4;
  v48 = 0;
  v49 = 0;
  v47[0] = 0x100000000;
  v47[1] = 0;
  if ((*(v47 + ((*(a2 + a4 + 19) >> 3) & 0x18)) >> *(a2 + a4 + 19)))
  {
    if ((*(v47 + ((v13[18] >> 3) & 0x18)) >> v13[18]))
    {
      if ((*(v47 + ((v13[17] >> 3) & 0x18)) >> v13[17]))
      {
        if ((*(v47 + ((v13[16] >> 3) & 0x18)) >> v13[16]))
        {
          if ((*(v47 + ((v13[15] >> 3) & 0x18)) >> v13[15]))
          {
            if ((*(v47 + ((v13[14] >> 3) & 0x18)) >> v13[14]))
            {
              if ((*(v47 + ((v13[13] >> 3) & 0x18)) >> v13[13]))
              {
                if ((*(v47 + ((v13[12] >> 3) & 0x18)) >> v13[12]))
                {
                  if ((*(v47 + ((v13[11] >> 3) & 0x18)) >> v13[11]))
                  {
                    if ((*(v47 + ((v13[10] >> 3) & 0x18)) >> v13[10]))
                    {
                      if ((*(v47 + ((v13[9] >> 3) & 0x18)) >> v13[9]))
                      {
                        if ((*(v47 + ((v13[8] >> 3) & 0x18)) >> v13[8]))
                        {
                          if ((*(v47 + ((v13[7] >> 3) & 0x18)) >> v13[7]))
                          {
                            if ((*(v47 + ((v13[6] >> 3) & 0x18)) >> v13[6]))
                            {
                              if ((*(v47 + ((v13[5] >> 3) & 0x18)) >> v13[5]))
                              {
                                if ((*(v47 + ((v13[4] >> 3) & 0x18)) >> v13[4]))
                                {
                                  if ((*(v47 + ((v13[3] >> 3) & 0x18)) >> v13[3]))
                                  {
                                    v14 = a3;
                                    v15 = a6;
                                    v16 = result;
                                    if ((*(v47 + ((v13[2] >> 3) & 0x18)) >> v13[2]))
                                    {
                                      if ((*(v47 + ((v13[1] >> 3) & 0x18)) >> v13[1]))
                                      {
                                        v17 = (~*(v47 + ((*v13 >> 3) & 0x18)) >> *v13) & 1;
                                      }

                                      else
                                      {
                                        v17 = 2;
                                      }
                                    }

                                    else
                                    {
                                      v17 = 3;
                                    }
                                  }

                                  else
                                  {
                                    v14 = a3;
                                    v15 = a6;
                                    v16 = result;
                                    v17 = 4;
                                  }
                                }

                                else
                                {
                                  v14 = a3;
                                  v15 = a6;
                                  v16 = result;
                                  v17 = 5;
                                }
                              }

                              else
                              {
                                v14 = a3;
                                v15 = a6;
                                v16 = result;
                                v17 = 6;
                              }
                            }

                            else
                            {
                              v14 = a3;
                              v15 = a6;
                              v16 = result;
                              v17 = 7;
                            }
                          }

                          else
                          {
                            v14 = a3;
                            v15 = a6;
                            v16 = result;
                            v17 = 8;
                          }
                        }

                        else
                        {
                          v14 = a3;
                          v15 = a6;
                          v16 = result;
                          v17 = 9;
                        }
                      }

                      else
                      {
                        v14 = a3;
                        v15 = a6;
                        v16 = result;
                        v17 = 10;
                      }
                    }

                    else
                    {
                      v14 = a3;
                      v15 = a6;
                      v16 = result;
                      v17 = 11;
                    }
                  }

                  else
                  {
                    v14 = a3;
                    v15 = a6;
                    v16 = result;
                    v17 = 12;
                  }
                }

                else
                {
                  v14 = a3;
                  v15 = a6;
                  v16 = result;
                  v17 = 13;
                }
              }

              else
              {
                v14 = a3;
                v15 = a6;
                v16 = result;
                v17 = 14;
              }
            }

            else
            {
              v14 = a3;
              v15 = a6;
              v16 = result;
              v17 = 15;
            }
          }

          else
          {
            v14 = a3;
            v15 = a6;
            v16 = result;
            v17 = 16;
          }
        }

        else
        {
          v14 = a3;
          v15 = a6;
          v16 = result;
          v17 = 17;
        }
      }

      else
      {
        v14 = a3;
        v15 = a6;
        v16 = result;
        v17 = 18;
      }
    }

    else
    {
      v14 = a3;
      v15 = a6;
      v16 = result;
      v17 = 19;
    }
  }

  else
  {
    v14 = a3;
    v15 = a6;
    v16 = result;
    v17 = 20;
  }

  v47[0] = 0;
  if (sub_298B97354(v13, v17, 0xAu, v47))
  {
    v20 = *a7;
    v21 = " global symbol table size ";
    result = v16;
    if (*a7)
    {
      v41 = " global symbol table size ";
      v22 = 3;
      v23 = 2;
      v21 = a7;
    }

    else
    {
      v22 = 1;
      v23 = 3;
    }

    v40[0] = v21;
    LOBYTE(v42) = 3;
    HIBYTE(v42) = v22;
    v18 = v20 == 0;
    v29 = v40;
    if (v18)
    {
      v29 = v21;
    }

    v43[0] = v29;
    v44 = v13;
    v45 = v17;
    LOBYTE(v46) = v23;
    HIBYTE(v46) = 5;
    v47[0] = v43;
    v48 = " is not a number";
LABEL_59:
    v50 = 770;
    sub_298B6DDE8(result, v47);
  }

  v24 = v47[0];
  *v15 = v47[0];
  result = v16;
  if (v24 + v8 > v14)
  {
    v25 = *a7;
    v26 = " global symbol table content at offset 0x";
    if (*a7)
    {
      v33 = " global symbol table content at offset 0x";
      v27 = 3;
      v28 = 2;
      v26 = a7;
    }

    else
    {
      v27 = 1;
      v28 = 3;
    }

    v32[0] = v26;
    v34 = 3;
    v35 = v27;
    v18 = v25 == 0;
    v30 = v32;
    if (v18)
    {
      v30 = v26;
    }

    v36[0] = v30;
    v37 = &v51;
    v38 = v28;
    v39 = 15;
    v40[0] = v36;
    v41 = " and size 0x";
    v42 = 770;
    v43[0] = v40;
    v44 = v15;
    goto LABEL_28;
  }

  *v16 = 0;
  return result;
}

void *sub_298B73538(void *a1)
{
  *a1 = &unk_2A1F1D640;
  v2 = a1[15];
  if (v2)
  {
    v3 = a1[16];
    v4 = a1[15];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[15];
    }

    a1[16] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_298B735E4(void *a1)
{
  *a1 = &unk_2A1F1D640;
  v2 = a1[15];
  if (v2)
  {
    v3 = a1[16];
    v4 = a1[15];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[15];
    }

    a1[16] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B737CC(uint64_t a1)
{
  *a1 = &unk_2A1F1D680;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      return a1;
    }
  }

  else
  {
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      return a1;
    }
  }

  v3 = *(a1 + 128);
  v4 = v2;
  if (v3 != v2)
  {
    do
    {
      v6 = *--v3;
      v5 = v6;
      *v3 = 0;
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }

    while (v3 != v2);
    v4 = *(a1 + 120);
  }

  *(a1 + 128) = v2;
  operator delete(v4);
  return a1;
}

void sub_298B738CC(uint64_t a1)
{
  *a1 = &unk_2A1F1D680;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a1 = &unk_2A1F1D640;
    v2 = *(a1 + 120);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v3 = *(a1 + 128);
  v4 = v2;
  if (v3 != v2)
  {
    do
    {
      v6 = *--v3;
      v5 = v6;
      *v3 = 0;
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }

    while (v3 != v2);
    v4 = *(a1 + 120);
  }

  *(a1 + 128) = v2;
  operator delete(v4);
LABEL_10:

  JUMPOUT(0x29C2945F0);
}

void sub_298B73A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  v5 = &v6;
  v6 = 0;
  v7 = v4;
  sub_298B73BC0(&v7, &v5, &v8);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  operator new();
}

uint64_t sub_298B73BC0@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &unk_2A13C3652))
    {
      v6 = v4[1];
      v7 = v4[2];
      if (v6 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        do
        {
          v12 = v8;
          v9 = *v6;
          *v6 = 0;
          if ((*(*v9 + 48))(v9, &unk_2A13C3653))
          {
            v10 = **a2;
            **a2 = v9;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            v9 = 0;
          }

          v11 = v9;
          sub_298ADE6E8(&v12, &v11, &v13);
          v8 = v13;
          v13 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      *a3 = v8;
      return (*(*v4 + 8))(v4);
    }

    else
    {
      result = (*(*v4 + 48))(v4, &unk_2A13C3653);
      if (result)
      {
        result = **a2;
        **a2 = v4;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v4 = 0;
      }

      *a3 = v4;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_298B73E04@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = sub_298CEFFAC(*a1, *(a1 + 1));
  if (v4 - 4 >= 0x11)
  {
    switch(v4)
    {
      case 1u:
      case 0x16u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
        break;
      case 3u:
        v9 = a1[1];
        v10 = *a1;
        v11 = v9;
        sub_298B70D34(&v10);
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        __break(1u);
        JUMPOUT(0x298B73F80);
      case 0x15u:
        v8 = a1[1];
        v10 = *a1;
        v11 = v8;
        sub_298B807A0();
      default:
        sub_298B74304();
        result = sub_298B85574(2, a2);
        *(a2 + 8) |= 1u;
        goto LABEL_4;
    }
  }

  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  result = sub_298B81D18(&v10, v4, &v12);
  *(a2 + 8) = *(a2 + 8) & 0xFE | v13 & 1;
  *a2 = v12;
LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *sub_298B74024(uint64_t *result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  v3 = result;
  (*(*v2 + 8))(v2);
  return v3;
}

uint64_t sub_298B740BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = std::system_category();
  *a1 = &unk_2A1F1D758;
  if ((atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  *(a1 + 8) = 3;
  *(a1 + 16) = off_2A1A99558;
  *a1 = &unk_2A1F1D6C0;
  sub_298B996A4(a2, (a1 + 24));
  return a1;
}

uint64_t sub_298B74198(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = std::system_category();
  *a1 = &unk_2A1F1D758;
  if ((atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  *(a1 + 8) = 3;
  *(a1 + 16) = off_2A1A99558;
  *a1 = &unk_2A1F1D6C0;
  sub_298B996A4(a2, (a1 + 24));
  if ((atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  *(a1 + 8) = a3;
  *(a1 + 16) = off_2A1A99558;
  return a1;
}

uint64_t sub_298B742DC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v3 = a1 + 24;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_298B9BCEC(a2, v7, v8);
}

void (**sub_298B74304())(std::error_category *__hidden this)
{
  if (atomic_load_explicit(&qword_2A13C2BF0, memory_order_acquire))
  {
    return off_2A1A99558;
  }

  if (__cxa_guard_acquire(&qword_2A13C2BF0))
  {
    __cxa_atexit(std::error_category::~error_category, off_2A1A99558, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2BF0);
  }

  return off_2A1A99558;
}

void sub_298B7439C(uint64_t a1, uint64_t a2)
{
  std::error_code::message(&v5, (a1 + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_298B74414(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2A1F1E040;
  v13 = v14;
  sub_298ADDDB0(&v5);
  (*(*a1 + 16))(a1, &v5);
  if (*(v13 + 23) < 0)
  {
    sub_298AFE11C(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    *(a2 + 16) = v13[2];
    *a2 = v4;
  }

  sub_298B9AE14(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

uint64_t sub_298B74554(uint64_t result)
{
  *result = &unk_2A1F1D6C0;
  if (*(result + 47) < 0)
  {
    v1 = result;
    operator delete(*(result + 24));
    return v1;
  }

  return result;
}

void sub_298B745B0(uint64_t a1)
{
  *a1 = &unk_2A1F1D6C0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298B74690(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B746D4(int a1@<W1>, char *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 3)
    {
      operator new();
    }

    operator new();
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      operator new();
    }

    a2[23] = 21;
    strcpy(a2, "Invalid section index");
  }

  else
  {
    if (a1 == 7)
    {
      operator new();
    }

    if (a1 != 8)
    {
      operator new();
    }

    a2[23] = 20;
    strcpy(a2, "Invalid symbol index");
  }
}

uint64_t sub_298B74AD8(uint64_t a1, __int128 *a2, int a3, int a4, void *a5, int a6, int a7, uint64_t a8)
{
  v33 = *MEMORY[0x29EDCA608];
  v11 = *a2;
  v10 = a2[1];
  if (a4)
  {
    v12 = 19;
  }

  else
  {
    v12 = 17;
  }

  if (a4)
  {
    v13 = 20;
  }

  else
  {
    v13 = 18;
  }

  if (!a3)
  {
    v12 = v13;
  }

  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v10;
  *(a1 + 80) = a1 + 96;
  *a1 = &unk_2A1F1D7A8;
  *(a1 + 88) = 0x100000000;
  *(a1 + 104) = a1 + 120;
  *(a1 + 128) = a1 + 144;
  *(a1 + 112) = 0x100000000;
  *(a1 + 136) = 0x400000000;
  *(a1 + 208) = a1 + 224;
  *(a1 + 216) = 0x100000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x100000000;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a8;
  if ((v12 - 19) > 1)
  {
    v16 = a6;
    v17 = a7;
    sub_298B76950(a1, a1 + 48);
    v19 = 28;
  }

  else
  {
    if (*(a1 + 24) <= 0x1FuLL)
    {
      v31[0] = "truncated or malformed object (";
      v31[2] = "the mach header extends past the end of the file";
      v32 = 771;
      *__s = v31;
      *&v29 = ")";
      LOWORD(v30) = 770;
      operator new();
    }

    v16 = a6;
    v17 = a7;
    sub_298B80500(__s, a1, (*(a1 + 16) + a8));
    if (v30)
    {
      *a5 = *__s;
    }

    else
    {
      v18 = v29;
      *(a1 + 48) = *__s;
      *(a1 + 64) = v18;
    }

    v19 = 32;
  }

  if (!*a5)
  {
    if (v19 + *(a1 + 68) <= *(a1 + 24))
    {
      v20 = *(a1 + 72);
      if (v16)
      {
        if (*(a1 + 52) != v16)
        {
          v26 = "universal header architecture: ";
          v27 = 259;
          v25 = 265;
          LODWORD(v24[0]) = v17;
          sub_298ADC860(&v26, v24, v31);
          v22 = "'s cputype does not match object file's mach header";
          v23 = 259;
          sub_298ADC860(v31, &v22, __s);
          sub_298B76A80(__s);
        }
      }

      v21[0] = v21;
      v21[1] = v21;
      v21[2] = 0;
      operator new();
    }

    *__s = "load commands extend past the end of the file";
    LOWORD(v30) = 259;
    sub_298B76A80(__s);
  }

  v14 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298B76950(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 <= 0x1B)
  {
    v3 = "the mach header extends past the end of the file";
    goto LABEL_12;
  }

  v4 = *(result + 360);
  if (v4 < 0 || (v5 = *(result + 16), v6 = v5 + v4, v5 + v4 + 28 > v5 + v2))
  {
    v3 = "Structure read out-of-range";
LABEL_12:
    v15[0] = "truncated or malformed object (";
    v15[2] = v3;
    v16 = 771;
    v17 = v15;
    v18 = ")";
    v19 = 770;
    operator new();
  }

  v8 = *v6;
  v7 = *(v6 + 4);
  v9 = *(v6 + 8);
  v10 = *(v6 + 24);
  v11 = *(result + 8);
  v12 = v11 > 0x14;
  v13 = (1 << v11) & 0x155800;
  if (!v12 && v13 != 0)
  {
    v8 = bswap32(v8);
    v7 = bswap32(v7);
    v9 = vrev32q_s8(v9);
    v10 = bswap32(v10);
  }

  *a2 = v8 | (v7 << 32);
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  return result;
}

void sub_298B76A80(uint64_t *a1)
{
  v1 = *(a1 + 32);
  if (v1 == 1)
  {
    v4 = "truncated or malformed object (";
    v7[0] = "truncated or malformed object (";
    v8 = 259;
    v2 = 3;
  }

  else
  {
    if (!*(a1 + 32))
    {
      v2 = 0;
      v8 = 256;
      v3 = 1;
      goto LABEL_9;
    }

    v5 = *a1;
    v6 = a1[1];
    v2 = 2;
    if (*(a1 + 33) != 1)
    {
      LOBYTE(v1) = 2;
      v5 = a1;
    }

    v7[0] = "truncated or malformed object (";
    v7[2] = v5;
    v7[3] = v6;
    LOBYTE(v8) = 3;
    HIBYTE(v8) = v1;
    v4 = v7;
  }

  v9 = v4;
  v10 = ")";
  v3 = 3;
LABEL_9:
  v11 = v2;
  v12 = v3;
  operator new();
}

uint64_t sub_298B76B64(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 64))(a2);
  if (*(a2 + 68) <= 7u)
  {
    v8 = "load command 0 extends past the end all load commands in the file";
    v9 = 259;
    sub_298B76A80(&v8);
  }

  v5 = 28;
  if (v4)
  {
    v5 = 32;
  }

  v6 = (*(a2 + 16) + *(a2 + 360) + v5);

  return sub_298B7ED64(a1, a2, v6, 0);
}

void *sub_298B76C44(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6)
{
  if (*(a3 + 12) <= 0x17u)
  {
    v48[0] = "load command ";
    v49 = a4;
    v50 = 2307;
    v7 = " LC_SYMTAB cmdsize too small";
LABEL_3:
    v51[0] = v48;
    v51[2] = v7;
    v52 = 770;
    v53[0] = "truncated or malformed object (";
    v54 = v51;
    v55 = 515;
    v56[0] = v53;
    v57 = ")";
    goto LABEL_4;
  }

  if (*a5)
  {
    v56[0] = "more than one LC_SYMTAB command";
    v58 = 259;
LABEL_51:
    sub_298B76A80(v56);
  }

  v8 = *a3;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  if (*a3 < v9 || *a3 + 24 > v9 + v10)
  {
    v53[0] = "truncated or malformed object (";
    v54 = "Structure read out-of-range";
    v55 = 771;
    v56[0] = v53;
    v57 = ")";
LABEL_4:
    v58 = 770;
    operator new();
  }

  v12 = v8[1];
  v13 = v8[2];
  v14 = v8[3];
  v15 = v8[4];
  v16 = *(a2 + 8);
  v17 = bswap32(v12);
  v18 = v8[5];
  v19 = bswap32(v13);
  v20 = bswap32(v14);
  v21 = bswap32(v15);
  v22 = bswap32(v18);
  if (((1 << v16) & 0x155800) == 0)
  {
    v22 = v18;
    v21 = v15;
    v20 = v14;
    v19 = v13;
    v17 = v12;
  }

  if (v16 <= 0x14)
  {
    v23 = v22;
  }

  else
  {
    v23 = v18;
  }

  if (v16 <= 0x14)
  {
    v24 = v21;
  }

  else
  {
    v24 = v15;
  }

  if (v16 <= 0x14)
  {
    v25 = v20;
  }

  else
  {
    v25 = v14;
  }

  if (v16 <= 0x14)
  {
    v26 = v19;
  }

  else
  {
    v26 = v13;
  }

  if (v16 <= 0x14)
  {
    v27 = v17;
  }

  else
  {
    v27 = v12;
  }

  if (v27 != 24)
  {
    v51[0] = "LC_SYMTAB command ";
    v52 = 259;
    v50 = 265;
    LODWORD(v48[0]) = a4;
    sub_298ADC860(v51, v48, v53);
    v41 = " has incorrect cmdsize";
LABEL_50:
    v46[0] = v41;
    v47 = 259;
    sub_298ADC860(v53, v46, v56);
    goto LABEL_51;
  }

  if (v10 < v26)
  {
    v51[0] = "symoff field of LC_SYMTAB command ";
    v52 = 259;
    v50 = 265;
    LODWORD(v48[0]) = a4;
LABEL_53:
    sub_298ADC860(v51, v48, v53);
    v41 = " extends past the end of the file";
    goto LABEL_50;
  }

  v32 = (*(*a2 + 64))(a2);
  v33 = "struct nlist";
  if (v32)
  {
    v34 = 16 * v25;
  }

  else
  {
    v34 = 4 * (v25 + 2 * v25);
  }

  if (v32)
  {
    v33 = "struct nlist_64";
  }

  if (v34 + v26 > v10)
  {
    v35 = *v33;
    if (*v33)
    {
      v43[2] = v33;
      v36 = 3;
      v37 = 2;
    }

    else
    {
      v36 = 1;
      v37 = 3;
    }

    v43[0] = "symoff field plus nsyms field times sizeof(";
    v44 = 3;
    v45 = v36;
    v38 = v35 == 0;
    v39 = v43;
    if (v38)
    {
      v39 = "symoff field plus nsyms field times sizeof(";
    }

    v46[0] = v39;
    v46[2] = ") of LC_SYMTAB command ";
    LOBYTE(v47) = v37;
    HIBYTE(v47) = 3;
    v48[0] = v46;
    v49 = a4;
    v50 = 2306;
    v7 = " extends past the end of the file";
    goto LABEL_3;
  }

  result = sub_298B7EF50(a1, a6, v26, v34, "symbol table");
  if (!*a1)
  {
    if (v10 < v24)
    {
      v42 = "stroff field of LC_SYMTAB command ";
    }

    else
    {
      if (v24 + v23 <= v10)
      {
        result = sub_298B7EF50(a1, a6, v24, v23, "string table");
        if (!*a1)
        {
          *a5 = *a3;
        }

        return result;
      }

      v42 = "stroff field plus strsize field of LC_SYMTAB command ";
    }

    v51[0] = v42;
    v52 = 259;
    v50 = 265;
    LODWORD(v48[0]) = a4;
    goto LABEL_53;
  }

  return result;
}

void *sub_298B77034(void *a1, uint64_t a2, unint64_t *a3, unsigned int a4, void *a5, void *a6)
{
  if (*(a3 + 3) <= 0x4Fu)
  {
    v52[0] = "load command ";
    v52[2] = a4;
    v53 = 2307;
    v54[0] = v52;
    v54[2] = " LC_DYSYMTAB cmdsize too small";
    v55 = 770;
    v61[0] = "truncated or malformed object (";
    v62 = v54;
    v63 = 515;
    v56.i64[0] = v61;
    *&v57 = ")";
    goto LABEL_3;
  }

  if (*a5)
  {
    v56.i64[0] = "more than one LC_DYSYMTAB command";
    LOWORD(v58) = 259;
LABEL_46:
    sub_298B76A80(v56.i64);
  }

  v7 = *a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*a3 < v8 || *a3 + 80 > v8 + v9)
  {
    v61[0] = "truncated or malformed object (";
    v62 = "Structure read out-of-range";
    v63 = 771;
    v56.i64[0] = v61;
    *&v57 = ")";
LABEL_3:
    LOWORD(v58) = 770;
    operator new();
  }

  v57 = *(v7 + 16);
  v58 = *(v7 + 32);
  v59 = *(v7 + 48);
  v60 = *(v7 + 64);
  v56 = *v7;
  v11 = *(a2 + 8);
  v12 = a6;
  if (v11 <= 0x14 && ((1 << v11) & 0x155800) != 0)
  {
    v13 = a4;
    v14 = a5;
    v15 = a3;
    v16 = a2;
    sub_298B7F248(&v56);
    a2 = v16;
    a6 = v12;
    a3 = v15;
    a5 = v14;
    a4 = v13;
  }

  if (v56.u32[1] != 80)
  {
    v54[0] = "LC_DYSYMTAB command ";
    v55 = 259;
    v53 = 265;
    LODWORD(v52[0]) = a4;
    sub_298ADC860(v54, v52, v61);
    v29 = " has incorrect cmdsize";
LABEL_44:
    v50[0] = v29;
    v51 = 259;
    v31 = v50;
LABEL_45:
    sub_298ADC860(v61, v31, &v56);
    goto LABEL_46;
  }

  if (v9 < v58)
  {
    v30 = "tocoff field of LC_DYSYMTAB command ";
LABEL_42:
    v54[0] = v30;
    v55 = 259;
    v53 = 265;
    LODWORD(v52[0]) = a4;
LABEL_43:
    sub_298ADC860(v54, v52, v61);
    v29 = " extends past the end of the file";
    goto LABEL_44;
  }

  v35 = a3;
  v36 = a5;
  v17 = 8 * DWORD1(v58);
  if (v17 + v58 > v9)
  {
    v30 = "tocoff field plus ntoc field times sizeof(struct dylib_table_of_contents) of LC_DYSYMTAB command ";
    goto LABEL_42;
  }

  v18 = a2;
  v34 = a4;
  v20 = DWORD2(v58);
  v19 = HIDWORD(v58);
  v21 = v59;
  v22 = DWORD1(v59);
  v24 = DWORD2(v59);
  v23 = HIDWORD(v59);
  v40 = v60;
  v39 = DWORD1(v60);
  v38 = DWORD2(v60);
  v37 = HIDWORD(v60);
  result = sub_298B7EF50(a1, a6, v58, v17, "table of contents");
  if (*a1)
  {
    return result;
  }

  if (v9 < v20)
  {
    v32 = "modtaboff field of LC_DYSYMTAB command ";
LABEL_48:
    v54[0] = v32;
    v55 = 259;
    v53 = 265;
    LODWORD(v52[0]) = v34;
    goto LABEL_43;
  }

  v26 = (*(*v18 + 64))(v18);
  v27 = "struct dylib_module";
  if (v26)
  {
    v27 = "struct dylib_module_64";
  }

  v28 = 52;
  if (v26)
  {
    v28 = 56;
  }

  if (v20 + v28 * v19 > v9)
  {
    v50[0] = "modtaboff field plus nmodtab field times sizeof(";
    v51 = 259;
    v33 = 1;
    v49 = 1;
    if (*v27)
    {
      v47 = v27;
      v33 = 3;
    }

    v48 = v33;
    sub_298ADC860(v50, &v47, v52);
    v45 = ") of LC_DYSYMTAB command ";
    v46 = 259;
    sub_298ADC860(v52, &v45, v54);
    v44 = 265;
    LODWORD(v43[0]) = v34;
    sub_298ADC860(v54, v43, v61);
    v41 = " extends past the end of the file";
    v42 = 259;
    v31 = &v41;
    goto LABEL_45;
  }

  result = sub_298B7EF50(a1, v12, v20, v28 * v19, "module table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v21)
  {
    v32 = "extrefsymoff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (4 * v22 + v21 > v9)
  {
    v32 = "extrefsymoff field plus nextrefsyms field times sizeof(struct dylib_reference) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v21, 4 * v22, "reference table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v24)
  {
    v32 = "indirectsymoff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (4 * v23 + v24 > v9)
  {
    v32 = "indirectsymoff field plus nindirectsyms field times sizeof(uint32_t) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v24, 4 * v23, "indirect table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v40)
  {
    v32 = "extreloff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (v40 + 8 * v39 > v9)
  {
    v32 = "extreloff field plus nextrel field times sizeof(struct relocation_info) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v40, 8 * v39, "external relocation table");
  if (*a1)
  {
    return result;
  }

  if (v9 < v38)
  {
    v32 = "locreloff field of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  if (v38 + 8 * v37 > v9)
  {
    v32 = "locreloff field plus nlocrel field times sizeof(struct relocation_info) of LC_DYSYMTAB command ";
    goto LABEL_48;
  }

  result = sub_298B7EF50(a1, v12, v38, 8 * v37, "local relocation table");
  if (!*a1)
  {
    *v36 = *v35;
  }

  return result;
}

void *sub_298B775E8(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, _BYTE *a6, void *a7, _BYTE *a8)
{
  if (*(a3 + 12) <= 0xFu)
  {
    v43[0] = "load command ";
    v44 = 259;
    v42 = 265;
    LODWORD(v41[0]) = a4;
    sub_298ADC860(v43, v41, v45);
    v39[0] = " ";
    v40 = 259;
    sub_298ADC860(v45, v39, v48);
    v27 = 1;
    HIBYTE(v38) = 1;
    if (*a6)
    {
      v37[0] = a6;
      v27 = 3;
    }

    LOBYTE(v38) = v27;
    sub_298ADC860(v48, v37, v50);
    v28 = " cmdsize too small";
    goto LABEL_28;
  }

  if (*a5)
  {
    v48[0] = "more than one ";
    v49 = 259;
    v34 = 1;
    v47 = 1;
    if (*a6)
    {
      v45[0] = a6;
      v34 = 3;
    }

    v46 = v34;
    sub_298ADC860(v48, v45, v50);
    v43[0] = " command";
    v44 = 259;
    v29 = v43;
LABEL_29:
    sub_298ADC860(v50, v29, v52);
    sub_298B76A80(v52);
  }

  v11 = *a3;
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *a3 < v13 || *a3 + 16 > v13 + v12;
  if (v14)
  {
    v50[0] = "truncated or malformed object (";
    v50[2] = "Structure read out-of-range";
    v51 = 771;
    v52[0] = v50;
    v52[2] = ")";
    v53 = 770;
    operator new();
  }

  v15 = *(v11 + 4);
  v16 = *(v11 + 8);
  LODWORD(v11) = *(v11 + 12);
  v17 = *(a2 + 8);
  v14 = v17 > 0x14;
  v18 = 1;
  v19 = (1 << v17) & 0x155800;
  v20 = v14 || v19 == 0;
  v21 = bswap32(v15);
  v22 = bswap32(v16);
  v23 = bswap32(v11);
  if (v20)
  {
    v11 = v11;
  }

  else
  {
    v11 = v23;
  }

  if (v20)
  {
    v24 = v16;
  }

  else
  {
    v24 = v22;
  }

  if (!v20)
  {
    v15 = v21;
  }

  if (v15 != 16)
  {
    v47 = 1;
    if (*a6)
    {
      v45[0] = a6;
      v18 = 3;
    }

    v46 = v18;
    v43[0] = " command ";
    v44 = 259;
    sub_298ADC860(v45, v43, v48);
    v42 = 265;
    LODWORD(v41[0]) = a4;
    sub_298ADC860(v48, v41, v50);
    v39[0] = " has incorrect cmdsize";
    v40 = 259;
    v29 = v39;
    goto LABEL_29;
  }

  if (v12 < v24)
  {
    v31 = "dataoff field of ";
LABEL_35:
    v43[0] = v31;
    v44 = 259;
    v32 = 1;
    HIBYTE(v42) = 1;
    if (*a6)
    {
      v41[0] = a6;
      v32 = 3;
    }

    LOBYTE(v42) = v32;
    sub_298ADC860(v43, v41, v45);
    v39[0] = " command ";
    v40 = 259;
    sub_298ADC860(v45, v39, v48);
    v38 = 265;
    LODWORD(v37[0]) = a4;
    sub_298ADC860(v48, v37, v50);
    v28 = " extends past the end of the file";
LABEL_28:
    v35 = v28;
    v36 = 259;
    v29 = &v35;
    goto LABEL_29;
  }

  if (v24 + v11 > v12)
  {
    v31 = "dataoff field plus datasize field of ";
    goto LABEL_35;
  }

  result = sub_298B7EF50(a1, a7, v24, v11, a8);
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}