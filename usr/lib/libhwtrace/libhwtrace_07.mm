uint64_t sub_298B41740(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x10) == 0)
  {
    v3 = a1[38];
    *(a2 + 8) = v2 | 0x10;
    v8 = a2;
    v4 = a1;
    v5 = a2;
    sub_298B250EC(v3 + 56, &v8);
    a1 = v4;
    a2 = v5;
    v2 = *(v5 + 8);
  }

  *(a2 + 8) = v2 & 0xFFFFEFE7FFFFFFFFLL | 0x100000000000;
  v6 = *(*a1 + 464);

  return v6();
}

void sub_298B417F8(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a1 + 144) + 32 * *(a1 + 152) - 32) + 36))
  {
    sub_298B868A8("Emitting values inside a locked bundle is forbidden", 1);
  }

  sub_298B41878(a1, a2);

  sub_298B4BB98(a1, a2, a3, a4);
}

void sub_298B41878(uint64_t a1, unsigned __int8 *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *a2;
      if (v4 > 2)
      {
        break;
      }

      if (*a2)
      {
        if (v4 == 2)
        {
          if ((v5 = *(a2 + 1), v5 - 73 < 0x21) || v5 <= 0x13 && ((1 << v5) & 0xFEF00) != 0 || (v6 = v5 - 112, v6 <= 0x33) && ((1 << v6) & 0xC0000000003AFLL) != 0)
          {
            v7 = *(a2 + 2);
            v8 = *(v7 + 8);
            if ((v8 & 0x10) == 0)
            {
              v9 = *(a1 + 304);
              *(v7 + 8) = v8 | 0x10;
              v12 = v7;
              sub_298B250EC(v9 + 56, &v12);
              v7 = *(a2 + 2);
              v8 = *(v7 + 8);
            }

            *(v7 + 8) = v8 & 0xFFFFFFF8FFFFFFFFLL | 0x500000000;
          }
        }

        return;
      }

      sub_298B41878(a1, *(a2 + 2));
      a2 = *(a2 + 3);
    }

    if (v4 != 3)
    {
      break;
    }

    a2 = *(a2 + 2);
  }

  if (v4 == 4)
  {
    v10 = *(a1 + 304);
    v11 = *(*(a2 - 1) + 72);

    v11(a2 - 8, v10);
  }
}

void sub_298B419CC(uint64_t a1)
{
  if (!*(*(*(a1 + 144) + 32 * *(a1 + 152) - 32) + 36))
  {

    sub_298B4ED84();
  }

  sub_298B868A8("Emitting values inside a locked bundle is forbidden", 1);
}

void sub_298B41A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 304);
  *&v5 = a2;
  *(&v5 + 1) = a3;
  v6 = a4;
  sub_298B41A48(v4 + 2184, &v5);
}

void sub_298B41A48(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_298B41B94(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 38);
  *&v22 = ".comment";
  v24 = 259;
  v7 = sub_298B2DE08(v6, &v22, 1, 48, 1, 0, 0, -1, 0);
  v8 = *(a1 + 18);
  v9 = a1[38];
  if (v9)
  {
    v10 = v8 + 32 * v9;
    v11 = *(v10 - 32);
    v12 = *(v10 - 16);
    v13 = a1[38];
    v22 = v11;
    v23 = v12;
    v14 = &v22;
    if (v9 < a1[39])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = 0;
    v22 = 0u;
    v23 = 0u;
    v14 = &v22;
    if (a1[39])
    {
      goto LABEL_5;
    }
  }

  if (v8 <= &v22 && v8 + 32 * v13 > &v22)
  {
    v21 = &v22 - v8;
    sub_298B90A44((a1 + 36), a1 + 40, v13 + 1, 32);
    v8 = *(a1 + 18);
    v14 = &v21[v8];
  }

  else
  {
    sub_298B90A44((a1 + 36), a1 + 40, v13 + 1, 32);
    v8 = *(a1 + 18);
    v14 = &v22;
  }

LABEL_5:
  v15 = (v8 + 32 * a1[38]);
  v16 = *(v14 + 1);
  *v15 = *v14;
  v15[1] = v16;
  ++a1[38];
  (*(*a1 + 168))(a1, v7, 0);
  if ((a1[1428] & 1) == 0)
  {
    (*(*a1 + 520))(a1, 0, 1);
    *(a1 + 5712) = 1;
  }

  (*(*a1 + 496))(a1, a2, a3);
  result = (*(*a1 + 520))(a1, 0, 1);
  v18 = a1[38];
  if (v18 >= 2)
  {
    v19 = *(a1 + 18) + 32 * v18;
    v20 = *(v19 - 64);
    if (v20 && (*(v19 - 32) != v20 || *(v19 - 24) != *(v19 - 56)))
    {
      result = (*(*a1 + 160))(a1);
      LODWORD(v18) = a1[38];
    }

    a1[38] = v18 - 1;
  }

  return result;
}

uint64_t sub_298B41E4C(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v6 = *(*a2 + 2);
  v7 = *(v6 + 8);
  if ((v7 & 2) != 0)
  {
    v8 = *v6;
    if (!*v6 && ((*(v6 + 8) & 0x7080) != 0x2000 || (*(v6 + 8) = v7 | 8, v8 = sub_298B45440(*(v6 + 24)), (*v6 = v8) == 0)) || v8 == qword_2A13C3628)
    {
      v19 = *(a1 + 8);
      v20 = *(*a2 + 1);
      v26[0] = "Reference to undefined temporary symbol ";
      v27 = 771;
      if (*(v6 + 8))
      {
        v23 = *(v6 - 8);
        v24 = *v23;
        v21 = v23 + 2;
        v22 = v24;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v28[0] = v26;
      v28[2] = v21;
      v28[3] = v22;
      v29 = 1282;
      v30 = v28;
      v32 = 770;
      *(v19 + 2056) = 1;
      v33 = v20;
      v34[0] = &unk_2A1F1BDB8;
      v34[1] = &v33;
      v34[2] = &v30;
      v35 = v34;
      sub_298B2FFE4(v19, v20, v34);
      result = v35;
      if (v35 == v34)
      {
        result = (*(*v35 + 32))(v35);
      }

      else if (v35)
      {
        result = (*(*v35 + 40))(v35);
      }

      goto LABEL_16;
    }

    v9 = *(*(v8 + 16) + 8);
    *(v9 + 8) |= 0x800uLL;
    *a2 = sub_298B44B48(v9, 0, *(a1 + 8), *(*a2 + 1));
  }

  v10 = *(a1 + 8);
  *(v10 + 264) += 24;
  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) - v11 + 24 > *(v10 + 192) - v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = *(v10 + 208) >> 7;
    if (v13 >= 0x1E)
    {
      LOBYTE(v13) = 30;
    }

    v14 = 4096 << v13;
    v16 = operator new(4096 << v13, 8uLL);
    v15 = *(v10 + 208);
    if (v15 >= *(v10 + 212))
    {
      v25 = v16;
      sub_298B90A44(v10 + 200, (v10 + 216), v15 + 1, 8);
      v16 = v25;
      LODWORD(v15) = *(v10 + 208);
    }

    *(*(v10 + 200) + 8 * v15) = v16;
    ++*(v10 + 208);
    *(v10 + 192) = v16 + v14;
  }

  else
  {
    v16 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 184) = v16 + 24;
  *v16 = 1;
  *(v16 + 1) = *(v16 + 4) << 24;
  *(v16 + 8) = 0;
  *(v16 + 16) = a3;
  result = sub_298B50054(a1, v16, "BFD_RELOC_NONE", 14, *a2, *(*a2 + 1), *(*(a1 + 8) + 168), &v30);
  if (v32 == 1)
  {
    v26[0] = "Relocation for CG Profile could not be created: ";
    v27 = 259;
    v36 = 260;
    v34[0] = v31;
    sub_298ADC860(v26, v34, v28);
    sub_298B868DC(v28, 1);
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B421F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[12] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 304);
  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = xmmword_298D1A100;
  (*(**(v5 + 16) + 32))(*(v5 + 16), a2, &v34, &v37, a3);
  if (v38)
  {
    v6 = v37;
    v7 = 24 * v38;
    do
    {
      v8 = *v6;
      v6 += 3;
      sub_298B41878(a1, v8);
      v7 -= 24;
    }

    while (v7);
  }

  if (*(v5 + 496))
  {
    v9 = *(a1 + 152);
    if (v9)
    {
      v10 = *(*(a1 + 144) + 32 * v9 - 32);
      if (*(v5 + 500))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      if (*(v5 + 500))
      {
LABEL_7:
        if (!*(*(*(a1 + 144) + 32 * v9 - 32) + 36))
        {
          operator new();
        }

        v11 = *(*(a1 + 5720) + 8 * *(a1 + 5728) - 8);
        v12 = *(v11 + 56);
        if (v12 != a3 && v12 != 0)
        {
LABEL_22:
          sub_298B868A8("A Bundle can only have one Subtarget.", 1);
        }

LABEL_24:
        if (*(v10 + 36) == 2)
        {
          *(v11 + 52) = 1;
        }

        *(v10 + 44) &= ~1u;
        v14 = v38;
        if (v38)
        {
          goto LABEL_27;
        }

LABEL_14:
        *(v11 + 50) = 1;
        *(v11 + 56) = a3;
        goto LABEL_40;
      }
    }

    if (*(*(*(a1 + 144) + 32 * v9 - 32) + 36))
    {
      if ((*(v10 + 44) & 1) == 0)
      {
        v11 = **(a1 + 312);
        v15 = *(v11 + 56);
        if (v15 != a3 && v15 != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

    else if (!v38)
    {
      operator new();
    }

    operator new();
  }

  v11 = sub_298B4B8F0(a1, a3);
  v14 = v38;
  if (!v38)
  {
    goto LABEL_14;
  }

LABEL_27:
  v17 = v37;
  v18 = *(v11 + 128);
  v19 = 24 * v14;
  v20 = v37;
  do
  {
    *(v20 + 2) += *(v11 + 72);
    v21 = *(v11 + 120);
    v22 = v20;
    if (v18 >= *(v11 + 132))
    {
      v25 = v21 <= v20 && v21 + 24 * v18 > v20;
      sub_298B90A44(v11 + 120, (v11 + 136), v18 + 1, 24);
      if (v25)
      {
        v22 = v17 + *(v11 + 120) - v21;
        v21 = *(v11 + 120);
      }

      else
      {
        v21 = *(v11 + 120);
        v22 = v20;
      }
    }

    v23 = v21 + 24 * *(v11 + 128);
    v24 = *v22;
    *(v23 + 16) = *(v22 + 2);
    *v23 = v24;
    v18 = *(v11 + 128) + 1;
    *(v11 + 128) = v18;
    v20 += 3;
    v17 += 3;
    v19 -= 24;
  }

  while (v19);
  v26 = v38;
  *(v11 + 50) = 1;
  *(v11 + 56) = a3;
  if (v26 && *(&v37[3 * v26 - 1] - 1) == *(*(*(a1 + 304) + 8) + 12))
  {
    *(v11 + 51) = 1;
  }

LABEL_40:
  v28 = v34;
  v27 = v35;
  v29 = *(v11 + 72);
  if (*(v11 + 80) < (v29 + v35))
  {
    sub_298B90C08(v11 + 64, (v11 + 88), v29 + v35, 1);
    v29 = *(v11 + 72);
  }

  if (v27)
  {
    memcpy((*(v11 + 64) + v29), v28, v27);
    v29 = *(v11 + 72);
  }

  *(v11 + 72) = v29 + v27;
  if (*(v5 + 496) && (*(v5 + 500) & 1) != 0 && !*(*(*(a1 + 144) + 32 * *(a1 + 152) - 32) + 36))
  {
    v30 = sub_298B4B8F0(a1, a3);
    sub_298B40510(a1, v30, v11);
    v31 = *(v11 + 120);
    if (v31 != (v11 + 136))
    {
      free(v31);
    }

    v32 = *(v11 + 64);
    if (v32 != (v11 + 88))
    {
      free(v32);
    }

    MEMORY[0x29C2945F0](v11, 0x10E0C40A0F9ED01);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  v33 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B42814(uint64_t result, char a2)
{
  if (!a2 || ((v2 = *(result + 304), v3 = *(v2 + 496), v4 = 1 << a2, v3) ? (v5 = v4 == v3) : (v5 = 1), !v5))
  {
    sub_298B868A8(".bundle_align_mode cannot be changed once set", 1);
  }

  *(v2 + 496) = v4;
  return result;
}

uint64_t sub_298B4285C(uint64_t result, int a2)
{
  v2 = *(result + 152);
  if (v2)
  {
    v3 = *(*(result + 144) + 32 * v2 - 32);
    v4 = *(result + 304);
    if (*(v4 + 496))
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_298B868A8(".bundle_lock forbidden when bundling is disabled", 1);
  }

  v3 = 0;
  v4 = *(result + 304);
  if (!*(v4 + 496))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(*(*(result + 144) + 32 * v2 - 32) + 36))
  {
    if ((*(v4 + 500) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(v3 + 44) |= 1u;
    if ((*(*(result + 304) + 500) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (!*(*(*(result + 144) + 32 * *(result + 152) - 32) + 36))
  {
    operator new();
  }

LABEL_10:
  if (*(v3 + 36) != 2)
  {
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *(v3 + 36) = v5;
  }

  ++*(v3 + 40);
  return result;
}

uint64_t sub_298B42A14(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    v2 = *(*(result + 144) + 32 * v1 - 32);
    v3 = *(result + 304);
    if (*(v3 + 496))
    {
      goto LABEL_3;
    }

LABEL_21:
    sub_298B868A8(".bundle_unlock forbidden when bundling is disabled", 1);
  }

  v2 = 0;
  v3 = *(result + 304);
  if (!*(v3 + 496))
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = *(*(result + 144) + 32 * v1 - 32);
  if (!*(v4 + 36))
  {
    sub_298B868A8(".bundle_unlock without matching lock", 1);
  }

  if (*(v2 + 44))
  {
    sub_298B868A8("Empty bundle-locked group is forbidden", 1);
  }

  if (*(v3 + 500))
  {
    v5 = *(v2 + 40);
    if (v5)
    {
      v6 = *(*(result + 5720) + 8 * *(result + 5728) - 8);
      v7 = v5 - 1;
      *(v2 + 40) = v7;
      if (!v7)
      {
        *(v2 + 36) = 0;
        if (!*(v4 + 36))
        {
          v8 = result;
          v9 = sub_298B4B8F0(result, v6[7]);
          sub_298B40510(v8, v9, v6);
          --*(v8 + 5728);
          v10 = v6[15];
          if (v10 != v6 + 17)
          {
            free(v10);
          }

          v11 = v6[8];
          if (v11 != v6 + 11)
          {
            free(v11);
          }

          MEMORY[0x29C2945F0](v6, 0x10E0C40A0F9ED01);
          result = v8;
        }
      }

      if (*(v2 + 36) != 2)
      {
        result = sub_298B4B8F0(result, 0);
        *(result + 52) = 0;
      }

      return result;
    }

LABEL_24:
    sub_298B868A8("Mismatched bundle_lock/unlock directives", 1);
  }

  v12 = *(v2 + 40);
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = v12 - 1;
  *(v2 + 40) = v13;
  if (!v13)
  {
    *(v2 + 36) = 0;
  }

  return result;
}

void sub_298B42BAC(_DWORD *a1)
{
  if (!a1[786])
  {
    goto LABEL_53;
  }

  v56 = 259;
  v2 = *(a1 + 1);
  v55 = ".gnu.attributes";
  v3 = sub_298B2DE08(v2, &v55, 1879048181, 0, 0, 0, 0, -1, 0);
  (*(*a1 + 168))(a1, v3, 0);
  (*(*a1 + 520))(a1, 65, 1);
  if (a1[786])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 392) + 40 * v4;
      v7 = *(v6 + 8);
      *&v57 = *v6;
      DWORD2(v57) = v7;
      if (*(v6 + 39) < 0)
      {
        sub_298AFE11C(__p, *(v6 + 16), *(v6 + 24));
        v9 = v57;
        if (v57 == 3)
        {
LABEL_16:
          v15 = DWORD1(v57);
          v16 = v5 + 2;
          do
          {
            v17 = v16++;
            v12 = v15 > 0x7F;
            v15 >>= 7;
          }

          while (v12);
          v18 = DWORD2(v57);
          do
          {
            ++v17;
            v12 = v18 > 0x7F;
            v18 >>= 7;
          }

          while (v12);
          goto LABEL_23;
        }
      }

      else
      {
        v8 = *(v6 + 16);
        v59 = *(v6 + 32);
        *__p = v8;
        v9 = v57;
        if (v57 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v9 != 2)
      {
        if (v9 == 1)
        {
          v10 = DWORD1(v57);
          v11 = v5 + 1;
          do
          {
            v5 = v11++;
            v12 = v10 > 0x7F;
            v10 >>= 7;
          }

          while (v12);
          v13 = DWORD2(v57);
          do
          {
            ++v5;
            v14 = v13 >= 0x80;
            v13 >>= 7;
          }

          while (v14);
        }

        if ((SHIBYTE(v59) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_26;
      }

      v19 = DWORD1(v57);
      v17 = v5 + 1;
      do
      {
        ++v17;
        v12 = v19 > 0x7F;
        v19 >>= 7;
      }

      while (v12);
LABEL_23:
      v20 = HIBYTE(v59);
      if (v59 < 0)
      {
        v20 = __p[1];
      }

      v5 = &v17[v20];
      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_26:
      operator delete(__p[0]);
LABEL_4:
      if (++v4 >= a1[786])
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  (*(*a1 + 520))(a1, v5 + 13, 4);
  (*(*a1 + 496))(a1, "gnu", 3);
  (*(*a1 + 520))(a1, 0, 1);
  (*(*a1 + 520))(a1, 1, 1);
  (*(*a1 + 520))(a1, v5 + 5, 4);
  if (!a1[786])
  {
    goto LABEL_52;
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v24 = *(a1 + 392) + v21;
    v25 = *(v24 + 8);
    *&v57 = *v24;
    DWORD2(v57) = v25;
    if (*(v24 + 39) < 0)
    {
      sub_298AFE11C(__p, *(v24 + 16), *(v24 + 24));
    }

    else
    {
      v26 = *(v24 + 16);
      v59 = *(v24 + 32);
      *__p = v26;
    }

    sub_298B5ADC0(a1, DWORD1(v57), 0);
    if (v57 == 1)
    {
      sub_298B5ADC0(a1, DWORD2(v57), 0);
      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_46:
      operator delete(__p[0]);
      goto LABEL_30;
    }

    if (v57 != 2)
    {
      sub_298B5ADC0(a1, DWORD2(v57), 0);
    }

    if (v59 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    if (v59 >= 0)
    {
      v28 = SHIBYTE(v59);
    }

    else
    {
      v28 = __p[1];
    }

    (*(*a1 + 496))(a1, v27, v28);
    (*(*a1 + 520))(a1, 0, 1);
    if (SHIBYTE(v59) < 0)
    {
      goto LABEL_46;
    }

LABEL_30:
    ++v22;
    v23 = a1[786];
    v21 += 40;
  }

  while (v22 < v23);
  if (v23)
  {
    v29 = *(a1 + 392) + 40 * v23 - 24;
    v30 = -40 * v23;
    do
    {
      if (*(v29 + 23) < 0)
      {
        operator delete(*v29);
      }

      v29 -= 40;
      v30 += 40;
    }

    while (v30);
  }

LABEL_52:
  a1[786] = 0;
LABEL_53:
  v31 = a1[38];
  if (v31)
  {
    v32 = *(*(a1 + 18) + 32 * v31 - 32);
    if (v32)
    {
      v33 = *(*(a1 + 38) + 496);
      if (v33)
      {
        if ((*(v32 + 44) & 2) != 0)
        {
          v34 = __clz(v33) ^ 0x3F;
          if (v34 > *(v32 + 24))
          {
            *(v32 + 24) = v34;
          }
        }
      }
    }
  }

  v35 = *(a1 + 38);
  if (v35[273] != v35[274])
  {
    v36 = *v35;
    *&v57 = ".llvm.call-graph-profile";
    LOWORD(v59) = 259;
    v37 = sub_298B2DE08(v36, &v57, 1879002121, 0x80000000, 8, 0, 0, -1, 0);
    v38 = *(a1 + 18);
    v39 = a1[38];
    if (v39)
    {
      v40 = v38 + 32 * v39;
      v41 = *(v40 - 32);
      v42 = *(v40 - 16);
      v43 = a1[38];
      v57 = v41;
      *__p = v42;
      v44 = &v57;
      if (v39 >= a1[39])
      {
LABEL_81:
        if (v38 <= &v57 && v38 + 32 * v43 > &v57)
        {
          v54 = &__p[-2] - v38;
          sub_298B90A44((a1 + 36), a1 + 40, v43 + 1, 32);
          v38 = *(a1 + 18);
          v44 = &v54[v38];
        }

        else
        {
          sub_298B90A44((a1 + 36), a1 + 40, v43 + 1, 32);
          v38 = *(a1 + 18);
          v44 = &v57;
        }
      }
    }

    else
    {
      v43 = 0;
      v57 = 0u;
      *__p = 0u;
      v44 = &v57;
      if (!a1[39])
      {
        goto LABEL_81;
      }
    }

    v45 = (v38 + 32 * a1[38]);
    v46 = *(v44 + 1);
    *v45 = *v44;
    v45[1] = v46;
    ++a1[38];
    (*(*a1 + 168))(a1, v37, 0);
    v47 = v35[273];
    v48 = v35[274];
    if (v47 != v48)
    {
      v49 = 0;
      do
      {
        sub_298B41E4C(a1, v47, v49);
        sub_298B41E4C(a1, (v47 + 8), v49);
        (*(*a1 + 520))(a1, *(v47 + 16), 8);
        v49 += 8;
        v47 += 24;
      }

      while (v47 != v48);
    }

    v50 = a1[38];
    if (v50 >= 2)
    {
      v51 = *(a1 + 18) + 32 * v50;
      v52 = *(v51 - 64);
      if (v52)
      {
        if (*(v51 - 32) != v52 || *(v51 - 24) != *(v51 - 56))
        {
          (*(*a1 + 160))(a1);
          LODWORD(v50) = a1[38];
        }
      }

      a1[38] = v50 - 1;
    }
  }

  if (-1171354717 * ((*(a1 + 4) - *(a1 + 3)) >> 3))
  {
    if (*(a1 + 320) == 1)
    {
      sub_298B38E2C(a1, 0, 1);
    }

    if (*(a1 + 321) == 1)
    {
      sub_298B38E2C(a1, 0, 0);
    }
  }

  sub_298B5187C(a1);
}

void sub_298B433E0(uint64_t a1)
{
  sub_298B438A4(a1);

  JUMPOUT(0x29C2945F0);
}

double sub_298B43418(uint64_t a1)
{
  *(a1 + 5712) = 0;
  *(a1 + 5728) = 0;
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

void sub_298B4357C(uint64_t a1, int a2, int a3)
{
  v34[0] = 1;
  v34[1] = a2;
  v34[2] = a3;
  v36 = 0;
  LOBYTE(__p) = 0;
  v4 = *(a1 + 3144);
  v5 = *(a1 + 3136);
  v6 = v34;
  if (v4 >= *(a1 + 3148))
  {
    v10 = (a1 + 3136);
    if (v5 <= v34 && &v5[40 * v4] > v34)
    {
      v33 = *(a1 + 3136);
      v37 = 0;
      v22 = (a1 + 3152);
      v5 = sub_298B90848(a1 + 3136, (a1 + 3152), v4 + 1, 40, &v37);
      v23 = *(a1 + 3136);
      v24 = *(a1 + 3144);
      if (v24)
      {
        v25 = &v23[40 * v24];
        v26 = v5;
        do
        {
          v27 = *v23;
          *(v26 + 2) = *(v23 + 2);
          *v26 = v27;
          v28 = *(v23 + 1);
          *(v26 + 4) = *(v23 + 4);
          *(v26 + 1) = v28;
          *(v23 + 3) = 0;
          *(v23 + 4) = 0;
          *(v23 + 2) = 0;
          v26 += 40;
          v23 += 40;
        }

        while (v23 != v25);
        v23 = *(a1 + 3136);
        v29 = *(a1 + 3144);
        if (v29)
        {
          v30 = &v23[40 * v29 - 24];
          v31 = -40 * v29;
          do
          {
            if (*(v30 + 23) < 0)
            {
              operator delete(*v30);
            }

            v30 -= 40;
            v31 += 40;
          }

          while (v31);
          v23 = *v10;
        }
      }

      v32 = v37;
      if (v23 != v22)
      {
        free(v23);
      }

      *(a1 + 3136) = v5;
      *(a1 + 3148) = v32;
      v6 = v34 + v5 - v33;
    }

    else
    {
      v37 = 0;
      v11 = (a1 + 3152);
      v5 = sub_298B90848(a1 + 3136, (a1 + 3152), v4 + 1, 40, &v37);
      v12 = *(a1 + 3136);
      v13 = *(a1 + 3144);
      if (v13)
      {
        v14 = &v12[40 * v13];
        v15 = v5;
        do
        {
          v16 = *v12;
          *(v15 + 2) = *(v12 + 2);
          *v15 = v16;
          v17 = *(v12 + 1);
          *(v15 + 4) = *(v12 + 4);
          *(v15 + 1) = v17;
          *(v12 + 3) = 0;
          *(v12 + 4) = 0;
          *(v12 + 2) = 0;
          v15 += 40;
          v12 += 40;
        }

        while (v12 != v14);
        v12 = *(a1 + 3136);
        v18 = *(a1 + 3144);
        if (v18)
        {
          v19 = &v12[40 * v18 - 24];
          v20 = -40 * v18;
          do
          {
            if (*(v19 + 23) < 0)
            {
              operator delete(*v19);
            }

            v19 -= 40;
            v20 += 40;
          }

          while (v20);
          v12 = *v10;
        }
      }

      v21 = v37;
      if (v12 != v11)
      {
        free(v12);
      }

      *(a1 + 3136) = v5;
      *(a1 + 3148) = v21;
      v6 = v34;
    }
  }

  v7 = &v5[40 * *(a1 + 3144)];
  v8 = *v6;
  *(v7 + 2) = *(v6 + 2);
  *v7 = v8;
  if ((v6[39] & 0x80000000) == 0)
  {
    v9 = *(v6 + 1);
    *(v7 + 4) = *(v6 + 4);
    *(v7 + 1) = v9;
    ++*(a1 + 3144);
    if ((v36 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  sub_298AFE11C(v7 + 16, *(v6 + 2), *(v6 + 3));
  ++*(a1 + 3144);
  if (v36 < 0)
  {
LABEL_4:
    operator delete(__p);
  }
}

void *sub_298B438A4(uint64_t a1)
{
  *a1 = &unk_2A1F1BE48;
  v2 = *(a1 + 5720);
  if (v2 != (a1 + 5736))
  {
    free(v2);
  }

  v3 = *(a1 + 3136);
  v4 = *(a1 + 3144);
  if (v4)
  {
    v5 = v3 + 40 * v4 - 24;
    v6 = -40 * v4;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 -= 40;
      v6 += 40;
    }

    while (v6);
    v3 = *(a1 + 3136);
  }

  if (v3 != (a1 + 3152))
  {
    free(v3);
  }

  v7 = *(a1 + 560);
  v8 = *(a1 + 568);
  if (v8)
  {
    v9 = v7 + 40 * v8 - 24;
    v10 = -40 * v8;
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 -= 40;
      v10 += 40;
    }

    while (v10);
    v7 = *(a1 + 560);
  }

  if (v7 != (a1 + 576))
  {
    free(v7);
  }

  return sub_298B4A8F0(a1);
}

void sub_298B439C4(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, char a4)
{
  v6 = *a1;
  while (1)
  {
    while (1)
    {
      v9 = a1;
      if (v6 > 1)
      {
        break;
      }

      if (v6)
      {
        v48 = *(a1 + 2);
        v49 = *(a1 + 1);
        if (a3 && (v48 & 0x8000000000000000) != 0)
        {
          if (a3[280] != 1 || (v49 & 0x100) != 0)
          {
LABEL_203:
            v59 = *(a1 + 1);
            if (v59 > 3)
            {
              if (v59 == 4)
              {
                v60 = "0x%08llx";
                goto LABEL_237;
              }

              if (v59 == 8)
              {
                v60 = "0x%016llx";
                goto LABEL_237;
              }
            }

            else
            {
              if (v59 == 1)
              {
                v60 = "0x%02llx";
                goto LABEL_237;
              }

              if (v59 == 2)
              {
                v60 = "0x%04llx";
LABEL_237:
                v88[1] = v60;
                v89 = v48;
                v88[0] = &unk_2A1F1C388;
                sub_298B9B1F8(a2, v88);
                return;
              }
            }

            v71 = *(a2 + 32);
            if (*(a2 + 24) - v71 > 1uLL)
            {
              *v71 = 30768;
              *(a2 + 32) += 2;
            }

            else
            {
              sub_298B9BCEC(a2, "0x", 2uLL);
            }

            v87 = v48;
            v88[0] = &v87;
            v89 = 0;
            v90 = 271;
            sub_298B99AA0(v88, a2);
            return;
          }
        }

        else
        {
          if ((v49 & 0x100) != 0)
          {
            goto LABEL_203;
          }

          if ((v48 & 0x8000000000000000) == 0)
          {
            v56 = a2;
            if (HIDWORD(v48))
            {
              v57 = *(v9 + 2);
              v81 = 0;
              goto LABEL_266;
            }

            v57 = *(v9 + 2);
            v58 = 0;
            goto LABEL_213;
          }
        }

        v57 = -v48;
        v56 = a2;
        if (-v48 >> 32)
        {
          goto LABEL_264;
        }

        goto LABEL_212;
      }

      v13 = *(a1 + 2);
      if (*v13 - 1 > 1)
      {
        while (1)
        {
          v15 = *(a2 + 32);
          if (v15 < *(a2 + 24))
          {
            goto LABEL_31;
          }

          v16 = *(a2 + 16);
          if (v16)
          {
            *(a2 + 32) = v16;
            sub_298B9BB84(a2);
            v15 = *(a2 + 32);
LABEL_31:
            *(a2 + 32) = v15 + 1;
            *v15 = 40;
            goto LABEL_32;
          }

          if (!*(a2 + 56))
          {
            break;
          }

          sub_298B9AE98(a2);
        }

        LOBYTE(v88[0]) = 40;
        sub_298B9BB84(a2);
LABEL_32:
        sub_298B439C4(*(v9 + 2), a2, a3, 0);
        v17 = *(a2 + 32);
        if (v17 < *(a2 + 24))
        {
LABEL_38:
          *(a2 + 32) = v17 + 1;
          *v17 = 41;
          v14 = *(v9 + 1) & 0xFFFFFF;
        }

        else
        {
          while (1)
          {
            v18 = *(a2 + 16);
            if (v18)
            {
              *(a2 + 32) = v18;
              sub_298B9BB84(a2);
              v17 = *(a2 + 32);
              goto LABEL_38;
            }

            if (!*(a2 + 56))
            {
              break;
            }

            sub_298B9AE98(a2);
            v17 = *(a2 + 32);
            if (v17 < *(a2 + 24))
            {
              goto LABEL_38;
            }
          }

          LOBYTE(v88[0]) = 41;
          sub_298B9BB84(a2);
          v14 = *(v9 + 1) & 0xFFFFFF;
          if (v14 > 0x13)
          {
            goto LABEL_162;
          }
        }
      }

      else
      {
        sub_298B439C4(v13, a2, a3, 0);
        v14 = *(v9 + 1) & 0xFFFFFF;
        if (v14 > 0x13)
        {
          goto LABEL_162;
        }
      }

      switch(v14)
      {
        case 0u:
          v22 = *(v9 + 3);
          if (*v22 == 1)
          {
            v23 = *(v22 + 16);
            if (v23 < 0)
            {
              v57 = -v23;
              v56 = a2;
              if (-v23 >> 32)
              {
LABEL_264:
                v81 = 1;
LABEL_266:

                sub_298B8FEA0(v56, v57, 0, 0, v81);
                return;
              }

LABEL_212:
              v58 = 1;
LABEL_213:

              sub_298B8FC48(v56, v57, 0, 0, v58);
              return;
            }
          }

          v24 = *(a2 + 32);
          if (v24 < *(a2 + 24))
          {
LABEL_76:
            *(a2 + 32) = v24 + 1;
            *v24 = 43;
          }

          else
          {
            while (1)
            {
              v25 = *(a2 + 16);
              if (v25)
              {
                *(a2 + 32) = v25;
                sub_298B9BB84(a2);
                v24 = *(a2 + 32);
                goto LABEL_76;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_298B9AE98(a2);
              v24 = *(a2 + 32);
              if (v24 < *(a2 + 24))
              {
                goto LABEL_76;
              }
            }

            LOBYTE(v88[0]) = 43;
LABEL_171:
            sub_298B9BB84(a2);
          }

LABEL_162:
          a4 = 0;
          a1 = *(v9 + 3);
          v6 = *a1;
          if ((v6 - 1) >= 2)
          {
            while (1)
            {
              v82 = *(a2 + 32);
              if (v82 < *(a2 + 24))
              {
                break;
              }

              v83 = *(a2 + 16);
              if (v83)
              {
                *(a2 + 32) = v83;
                sub_298B9BB84(a2);
                v82 = *(a2 + 32);
                break;
              }

              if (!*(a2 + 56))
              {
                LOBYTE(v88[0]) = 40;
                sub_298B9BB84(a2);
                goto LABEL_276;
              }

              sub_298B9AE98(a2);
            }

            *(a2 + 32) = v82 + 1;
            *v82 = 40;
LABEL_276:
            sub_298B439C4(*(v9 + 3), a2, a3, 0);
            v84 = *(a2 + 32);
            if (v84 < *(a2 + 24))
            {
LABEL_282:
              *(a2 + 32) = v84 + 1;
              *v84 = 41;
            }

            else
            {
              while (1)
              {
                v85 = *(a2 + 16);
                if (v85)
                {
                  *(a2 + 32) = v85;
                  sub_298B9BB84(a2);
                  v84 = *(a2 + 32);
                  goto LABEL_282;
                }

                if (!*(a2 + 56))
                {
                  break;
                }

                sub_298B9AE98(a2);
                v84 = *(a2 + 32);
                if (v84 < *(a2 + 24))
                {
                  goto LABEL_282;
                }
              }

LABEL_289:
              LOBYTE(v88[0]) = 41;
              sub_298B9BB84(a2);
            }

            return;
          }

          break;
        case 1u:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_125;
            }

            v38 = *(a2 + 16);
            if (!v38)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 38;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v38;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_125:
          *(a2 + 32) = v33 + 1;
          v35 = 38;
          goto LABEL_161;
        case 2u:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_118;
            }

            v37 = *(a2 + 16);
            if (!v37)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 47;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v37;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_118:
          *(a2 + 32) = v33 + 1;
          v35 = 47;
          goto LABEL_161;
        case 3u:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = "==";
            goto LABEL_66;
          }

          v26 = 15677;
          goto LABEL_74;
        case 4u:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_111;
            }

            v36 = *(a2 + 16);
            if (!v36)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 62;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v36;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_111:
          *(a2 + 32) = v33 + 1;
          v35 = 62;
          goto LABEL_161;
        case 5u:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = ">=";
            goto LABEL_66;
          }

          v26 = 15678;
          goto LABEL_74;
        case 6u:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = "&&";
            goto LABEL_66;
          }

          v26 = 9766;
          goto LABEL_74;
        case 7u:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = "||";
            goto LABEL_66;
          }

          v26 = 31868;
          goto LABEL_74;
        case 8u:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_146;
            }

            v41 = *(a2 + 16);
            if (!v41)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 60;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v41;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_146:
          *(a2 + 32) = v33 + 1;
          v35 = 60;
          goto LABEL_161;
        case 9u:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = "<=";
            goto LABEL_66;
          }

          v26 = 15676;
          goto LABEL_74;
        case 0xAu:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_139;
            }

            v40 = *(a2 + 16);
            if (!v40)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 37;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v40;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_139:
          *(a2 + 32) = v33 + 1;
          v35 = 37;
          goto LABEL_161;
        case 0xBu:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_104;
            }

            v34 = *(a2 + 16);
            if (!v34)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 42;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v34;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_104:
          *(a2 + 32) = v33 + 1;
          v35 = 42;
          goto LABEL_161;
        case 0xCu:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = "!=";
            goto LABEL_66;
          }

          v26 = 15649;
          goto LABEL_74;
        case 0xDu:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_132;
            }

            v39 = *(a2 + 16);
            if (!v39)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 124;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v39;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_132:
          *(a2 + 32) = v33 + 1;
          v35 = 124;
          goto LABEL_161;
        case 0xEu:
          while (2)
          {
            v31 = *(a2 + 32);
            if (v31 < *(a2 + 24))
            {
              goto LABEL_97;
            }

            v32 = *(a2 + 16);
            if (!v32)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 33;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v32;
          sub_298B9BB84(a2);
          v31 = *(a2 + 32);
LABEL_97:
          *(a2 + 32) = v31 + 1;
          *v31 = 33;
          goto LABEL_162;
        case 0xFu:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 <= 1uLL)
          {
            v20 = a2;
            v21 = "<<";
            goto LABEL_66;
          }

          v26 = 15420;
          goto LABEL_74;
        case 0x10u:
        case 0x11u:
          v19 = *(a2 + 32);
          if (*(a2 + 24) - v19 > 1uLL)
          {
            v26 = 15934;
LABEL_74:
            *v19 = v26;
            *(a2 + 32) += 2;
          }

          else
          {
            v20 = a2;
            v21 = ">>";
LABEL_66:
            sub_298B9BCEC(v20, v21, 2uLL);
          }

          goto LABEL_162;
        case 0x12u:
          while (2)
          {
            v42 = *(a2 + 32);
            if (v42 < *(a2 + 24))
            {
              goto LABEL_153;
            }

            v43 = *(a2 + 16);
            if (!v43)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 45;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v43;
          sub_298B9BB84(a2);
          v42 = *(a2 + 32);
LABEL_153:
          *(a2 + 32) = v42 + 1;
          *v42 = 45;
          goto LABEL_162;
        case 0x13u:
          while (2)
          {
            v33 = *(a2 + 32);
            if (v33 < *(a2 + 24))
            {
              goto LABEL_160;
            }

            v44 = *(a2 + 16);
            if (!v44)
            {
              if (*(a2 + 56))
              {
                sub_298B9AE98(a2);
                continue;
              }

              LOBYTE(v88[0]) = 94;
              goto LABEL_171;
            }

            break;
          }

          *(a2 + 32) = v44;
          sub_298B9BB84(a2);
          v33 = *(a2 + 32);
LABEL_160:
          *(a2 + 32) = v33 + 1;
          v35 = 94;
LABEL_161:
          *v33 = v35;
          goto LABEL_162;
        default:
          goto LABEL_162;
      }
    }

    if (v6 != 3)
    {
      break;
    }

    v10 = *(a1 + 1) & 0xFFFFFF;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        while (1)
        {
          v29 = *(a2 + 32);
          if (v29 < *(a2 + 24))
          {
            break;
          }

          v30 = *(a2 + 16);
          if (v30)
          {
            *(a2 + 32) = v30;
            sub_298B9BB84(a2);
            v29 = *(a2 + 32);
            break;
          }

          if (!*(a2 + 56))
          {
            LOBYTE(v88[0]) = 126;
            goto LABEL_169;
          }

          sub_298B9AE98(a2);
        }

        *(a2 + 32) = v29 + 1;
        *v29 = 126;
        goto LABEL_8;
      }

      if (v10 == 3)
      {
        while (1)
        {
          v7 = *(a2 + 32);
          if (v7 < *(a2 + 24))
          {
            goto LABEL_7;
          }

          v8 = *(a2 + 16);
          if (v8)
          {
            *(a2 + 32) = v8;
            sub_298B9BB84(a2);
            v7 = *(a2 + 32);
LABEL_7:
            *(a2 + 32) = v7 + 1;
            *v7 = 43;
            goto LABEL_8;
          }

          if (!*(a2 + 56))
          {
            break;
          }

          sub_298B9AE98(a2);
        }

        LOBYTE(v88[0]) = 43;
        goto LABEL_169;
      }
    }

    else
    {
      if (!v10)
      {
        while (1)
        {
          v27 = *(a2 + 32);
          if (v27 < *(a2 + 24))
          {
            break;
          }

          v28 = *(a2 + 16);
          if (v28)
          {
            *(a2 + 32) = v28;
            sub_298B9BB84(a2);
            v27 = *(a2 + 32);
            break;
          }

          if (!*(a2 + 56))
          {
            LOBYTE(v88[0]) = 33;
            goto LABEL_169;
          }

          sub_298B9AE98(a2);
        }

        *(a2 + 32) = v27 + 1;
        *v27 = 33;
        goto LABEL_8;
      }

      if (v10 == 1)
      {
        v11 = *(a2 + 32);
        if (v11 >= *(a2 + 24))
        {
          while (1)
          {
            v12 = *(a2 + 16);
            if (v12)
            {
              *(a2 + 32) = v12;
              sub_298B9BB84(a2);
              v11 = *(a2 + 32);
              goto LABEL_43;
            }

            if (!*(a2 + 56))
            {
              break;
            }

            sub_298B9AE98(a2);
            v11 = *(a2 + 32);
            if (v11 < *(a2 + 24))
            {
              goto LABEL_43;
            }
          }

          LOBYTE(v88[0]) = 45;
LABEL_169:
          sub_298B9BB84(a2);
          goto LABEL_8;
        }

LABEL_43:
        *(a2 + 32) = v11 + 1;
        *v11 = 45;
      }
    }

LABEL_8:
    a4 = 0;
    a1 = *(v9 + 2);
    v6 = *a1;
    if (!*a1)
    {
      v52 = *(a2 + 32);
      if (*(a2 + 24) == v52)
      {
        sub_298B9BCEC(a2, "(", 1uLL);
      }

      else
      {
        *v52 = 40;
        ++*(a2 + 32);
      }

      sub_298B439C4(*(v9 + 2), a2, a3, 0);
      v61 = *(a2 + 32);
      if (*(a2 + 24) != v61)
      {
        *v61 = 41;
        ++*(a2 + 32);
        return;
      }

      v62 = ")";
      v63 = a2;
      v64 = 1;
      goto LABEL_228;
    }
  }

  if (v6 != 2)
  {
    v50 = *(*(a1 - 1) + 24);
    v51 = a1 - 8;

    v50(v51, a2, a3);
    return;
  }

  v45 = *(a1 + 2);
  if (a3 && !(a4 & 1 | ((a3[439] & 1) == 0)) && (*(v45 + 8) & 1) != 0 && (v46 = *(v45 - 8), *v46) && *(v46 + 16) == 36)
  {
    v47 = *(a2 + 32);
    if (v47 >= *(a2 + 24))
    {
      v77 = *(v9 + 2);
      while (1)
      {
        v78 = *(a2 + 16);
        if (v78)
        {
          *(a2 + 32) = v78;
          sub_298B9BB84(a2);
          v79 = *(a2 + 32);
LABEL_259:
          *(a2 + 32) = v79 + 1;
          *v79 = 40;
          goto LABEL_260;
        }

        if (!*(a2 + 56))
        {
          break;
        }

        sub_298B9AE98(a2);
        v79 = *(a2 + 32);
        if (v79 < *(a2 + 24))
        {
          goto LABEL_259;
        }
      }

      LOBYTE(v88[0]) = 40;
      sub_298B9BB84(a2);
LABEL_260:
      v45 = v77;
    }

    else
    {
      *(a2 + 32) = v47 + 1;
      *v47 = 40;
    }

    sub_298B64D98(v45, a2, a3);
    v80 = *(a2 + 32);
    if (v80 < *(a2 + 24))
    {
LABEL_288:
      *(a2 + 32) = v80 + 1;
      *v80 = 41;
    }

    else
    {
      while (1)
      {
        v86 = *(a2 + 16);
        if (v86)
        {
          *(a2 + 32) = v86;
          sub_298B9BB84(a2);
          v80 = *(a2 + 32);
          goto LABEL_288;
        }

        if (!*(a2 + 56))
        {
          break;
        }

        sub_298B9AE98(a2);
        v80 = *(a2 + 32);
        if (v80 < *(a2 + 24))
        {
          goto LABEL_288;
        }
      }

      LOBYTE(v88[0]) = 41;
      sub_298B9BB84(a2);
    }
  }

  else
  {
    sub_298B64D98(v45, a2, a3);
  }

  v53 = *(v9 + 1);
  if (v53)
  {
    if (a3 && a3[438] == 1)
    {
      v54 = *(a2 + 32);
      if (v54 < *(a2 + 24))
      {
LABEL_239:
        *(a2 + 32) = v54 + 1;
        *v54 = 40;
      }

      else
      {
        while (1)
        {
          v55 = *(a2 + 16);
          if (v55)
          {
            *(a2 + 32) = v55;
            sub_298B9BB84(a2);
            v54 = *(a2 + 32);
            goto LABEL_239;
          }

          if (!*(a2 + 56))
          {
            break;
          }

          sub_298B9AE98(a2);
          v54 = *(a2 + 32);
          if (v54 < *(a2 + 24))
          {
            goto LABEL_239;
          }
        }

        LOBYTE(v88[0]) = 40;
        sub_298B9BB84(a2);
      }

      v73 = sub_298B449FC(v53);
      v74 = v72;
      v75 = *(a2 + 32);
      if (v72 <= *(a2 + 24) - v75)
      {
        if (v72)
        {
          memcpy(v75, v73, v72);
          v75 = (*(a2 + 32) + v74);
          *(a2 + 32) = v75;
        }
      }

      else
      {
        sub_298B9BCEC(a2, v73, v72);
        v75 = *(a2 + 32);
      }

      while (v75 >= *(a2 + 24))
      {
        v76 = *(a2 + 16);
        if (v76)
        {
          *(a2 + 32) = v76;
          sub_298B9BB84(a2);
          v75 = *(a2 + 32);
          break;
        }

        if (!*(a2 + 56))
        {
          goto LABEL_289;
        }

        sub_298B9AE98(a2);
        v75 = *(a2 + 32);
      }

      *(a2 + 32) = v75 + 1;
      *v75 = 41;
      return;
    }

    while (1)
    {
      v66 = *(a2 + 32);
      if (v66 < *(a2 + 24))
      {
        goto LABEL_225;
      }

      v65 = *(a2 + 16);
      if (v65)
      {
        *(a2 + 32) = v65;
        sub_298B9BB84(a2);
        v66 = *(a2 + 32);
LABEL_225:
        *(a2 + 32) = v66 + 1;
        *v66 = 64;
        goto LABEL_226;
      }

      if (!*(a2 + 56))
      {
        break;
      }

      sub_298B9AE98(a2);
    }

    LOBYTE(v88[0]) = 64;
    sub_298B9BB84(a2);
LABEL_226:
    v68 = sub_298B449FC(v53);
    v69 = v67;
    v70 = *(a2 + 32);
    if (v67 <= *(a2 + 24) - v70)
    {
      if (v67)
      {
        memcpy(v70, v68, v67);
        *(a2 + 32) += v69;
      }

      return;
    }

    v63 = a2;
    v62 = v68;
    v64 = v69;
LABEL_228:

    sub_298B9BCEC(v63, v62, v64);
  }
}

char *sub_298B449FC(__int16 a1)
{
  v1 = a1 - 1;
  v2 = qword_298D1A240[v1];
  return off_29EEB4C88[v1];
}

unint64_t sub_298B44A24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a2 + 264) += 24;
  v8 = *(a2 + 184);
  if (v8)
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) - v8 + 24 > *(a2 + 192) - v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *(a2 + 208) >> 7;
    if (v10 >= 0x1E)
    {
      LOBYTE(v10) = 30;
    }

    v11 = 4096 << v10;
    result = operator new(4096 << v10, 8uLL);
    v12 = *(a2 + 208);
    if (v12 >= *(a2 + 212))
    {
      v15 = result;
      sub_298B90A44(a2 + 200, (a2 + 216), v12 + 1, 8);
      result = v15;
      LODWORD(v12) = *(a2 + 208);
    }

    *(*(a2 + 200) + 8 * v12) = result;
    ++*(a2 + 208);
    *(a2 + 192) = result + v11;
  }

  else
  {
    result = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 184) = result + 24;
  if (a3)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  *result = 1;
  *(result + 1) = a4 & 0xFFFFFF | v14 | (*(result + 4) << 24);
  *(result + 8) = 0;
  *(result + 16) = a1;
  return result;
}

unint64_t sub_298B44B48(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 264) += 24;
  v8 = *(a3 + 184);
  if (v8)
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) - v8 + 24 > *(a3 + 192) - v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *(a3 + 208) >> 7;
    if (v10 >= 0x1E)
    {
      LOBYTE(v10) = 30;
    }

    v11 = 4096 << v10;
    result = operator new(4096 << v10, 8uLL);
    v12 = *(a3 + 208);
    if (v12 >= *(a3 + 212))
    {
      v15 = result;
      sub_298B90A44(a3 + 200, (a3 + 216), v12 + 1, 8);
      result = v15;
      LODWORD(v12) = *(a3 + 208);
    }

    *(*(a3 + 200) + 8 * v12) = result;
    ++*(a3 + 208);
    *(a3 + 192) = result + v11;
  }

  else
  {
    result = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(a3 + 184) = result + 24;
  if (*(*(a3 + 144) + 18))
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  *result = 2;
  *(result + 1) = v14 | a2 | (*(result + 4) << 24);
  *(result + 8) = a4;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_298B44C70(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  if (v8 <= 1)
  {
    if (*a1)
    {
      v31 = *(a1 + 2);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = v31;
      *(a2 + 24) = 0;
      return 1;
    }

    v14 = a2;
    memset(v65, 0, 28);
    v62 = 0uLL;
    v64 = 0;
    v63 = 0;
    v15 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v19 = a7;
    if (sub_298B44C70(*(a1 + 2), v65, a3, a4, a5, a6, a7) && (sub_298B44C70(*(a1 + 3), &v62, v15, v16, v17, v18, v19) & 1) != 0)
    {
      v20 = v62;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v65[0]), vceqzq_s64(v62))))))
      {
        if ((*(a1 + 1) & 0xFFFFFF) == 0)
        {
          v21 = v64;
          v60 = v63;
          goto LABEL_76;
        }

        if ((*(a1 + 1) & 0xFFFFFF) == 0x12)
        {
          v21 = v64;
          v60 = -v63;
          v20 = vextq_s8(v62, v62, 8uLL);
LABEL_76:
          v59 = v20;
          v61 = v21;
          return sub_298B452F0(v15, v16, v18, v19, v65, &v59, v14);
        }

        return 0;
      }

      v55 = *(a1 + 1) & 0xFFFFFF;
      switch(v55)
      {
        case 0u:
          v56 = v63 + v65[1].i64[0];
          goto LABEL_105;
        case 1u:
          v56 = v63 & v65[1].i64[0];
          goto LABEL_105;
        case 2u:
        case 0xAu:
          if (!v63)
          {
            return 0;
          }

          if (v55 == 2)
          {
            v56 = v65[1].i64[0] / v63;
LABEL_105:
            *v14 = 0;
            *(v14 + 8) = 0;
            *(v14 + 16) = v56;
            result = 1;
            *(v14 + 24) = 0;
            return result;
          }

          v56 = v65[1].i64[0] % v63;
LABEL_107:
          if (v55 > 0xC || ((1 << a1[1]) & 0x1338) == 0)
          {
            goto LABEL_105;
          }

LABEL_109:
          if (v56)
          {
            v36 = -1;
          }

          else
          {
            v36 = 0;
          }

          break;
        case 3u:
          v56 = v65[1].i64[0] == v63;
          goto LABEL_109;
        case 4u:
          v56 = v65[1].i64[0] > v63;
          goto LABEL_109;
        case 5u:
          v56 = v65[1].i64[0] >= v63;
          goto LABEL_109;
        case 6u:
          if (v65[1].i64[0])
          {
            v58 = v63 == 0;
          }

          else
          {
            v58 = 1;
          }

          v56 = !v58;
          goto LABEL_105;
        case 7u:
          v56 = (v65[1].i64[0] | v63) != 0;
          goto LABEL_105;
        case 8u:
          v56 = v65[1].i64[0] < v63;
          goto LABEL_109;
        case 9u:
          v56 = v65[1].i64[0] <= v63;
          goto LABEL_109;
        case 0xBu:
          v56 = v63 * v65[1].i64[0];
          goto LABEL_105;
        case 0xCu:
          v56 = v65[1].i64[0] != v63;
          goto LABEL_109;
        case 0xDu:
          v56 = v63 | v65[1].i64[0];
          goto LABEL_105;
        case 0xEu:
          v56 = v65[1].i64[0] | ~v63;
          goto LABEL_105;
        case 0xFu:
          v56 = v65[1].i64[0] << v63;
          goto LABEL_105;
        case 0x10u:
          v56 = v65[1].i64[0] >> v63;
          goto LABEL_105;
        case 0x11u:
          v56 = v65[1].i64[0] >> v63;
          goto LABEL_105;
        case 0x12u:
          v56 = v65[1].i64[0] - v63;
          goto LABEL_105;
        case 0x13u:
          v56 = v63 ^ v65[1].i64[0];
          goto LABEL_105;
        default:
          v56 = 0;
          goto LABEL_107;
      }
    }

    else
    {
      v32 = *(a1 + 2);
      v34 = *v32;
      v33 = v32 - 8;
      if (v34 != 4 || **(a1 + 3) != 4)
      {
        return 0;
      }

      v35 = *(a1 + 1) & 0xFFFFFF;
      if (v35 == 12)
      {
        v57 = (*(*v33 + 40))(v33);
        *v14 = 0;
        *(v14 + 8) = 0;
        v36 = v57 - 1;
LABEL_113:
        *(v14 + 16) = v36;
        *(v14 + 24) = 0;
        return 1;
      }

      if (v35 != 3)
      {
        return 0;
      }

      v36 = (*(*v33 + 40))(v33) << 63 >> 63;
    }

    *v14 = 0;
    *(v14 + 8) = 0;
    goto LABEL_113;
  }

  if (v8 == 2)
  {
    v22 = *(a1 + 2);
    v23 = v22[1];
    if ((v23 & 0x7000) != 0x2000)
    {
      goto LABEL_65;
    }

    v24 = *(a1 + 1);
    v25 = v24 && a4 == 0;
    if (v25 || (v23 & 0x80) != 0)
    {
      goto LABEL_65;
    }

    v22[1] = v23 | 8;
    v27 = v22[3];
    if (*v27 == 2)
    {
      v28 = *(v27 + 1);
      if (v28 == 29 || (a7 & 1) != 0)
      {
        if (v28 == 29)
        {
          goto LABEL_65;
        }

LABEL_48:
        v45 = *(a1 + 1);
        v22[1] |= 8uLL;
        v46 = v22[3];
        v47 = a2;
        v48 = a3;
        v49 = sub_298B44C70(v46, a2, a3, a4, a5, a6, a7 | ((v45 & 0x10000u) >> 16));
        a2 = v47;
        if (!v49)
        {
          goto LABEL_65;
        }

        if (v24)
        {
          if (!*v47)
          {
            if (!*(v47 + 8))
            {
              *v47 = a1;
              *(v47 + 8) = 0;
              *(v47 + 16) = 0;
              result = 1;
              *(v47 + 24) = 0;
              return result;
            }

            return 0;
          }

          result = 0;
          if (*(v47 + 24) || *(v47 + 8) || *(v47 + 16))
          {
            return result;
          }

          v50 = sub_298B44B48(*(*v47 + 16), v24, *v48, 0);
          a2 = v47;
          *v47 = v50;
        }

        if ((v45 & 0x10000) != 0 && *a2 != 0)
        {
          v51 = !*a2 || *(a2 + 8) == 0;
          v52 = !v51;
          if (*(a2 + 16) || v52)
          {
LABEL_65:
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            *a2 = a1;
            result = 1;
            *(a2 + 24) = 0;
            return result;
          }
        }

        return 1;
      }
    }

    else if (a7)
    {
      goto LABEL_48;
    }

    v37 = *v22;
    if (*v22)
    {
      goto LABEL_47;
    }

    v38 = a2;
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v42 = a7;
    v43 = a5;
    v44 = sub_298B45440(v27);
    a5 = v43;
    LODWORD(a7) = v42;
    a6 = v41;
    a4 = v40;
    a3 = v39;
    a2 = v38;
    v37 = v44;
    *v22 = v44;
    if (v44)
    {
LABEL_47:
      if (v37 != qword_2A13C3628)
      {
        goto LABEL_65;
      }
    }

    goto LABEL_48;
  }

  if (v8 == 3)
  {
    v9 = a2;
    memset(v65, 0, 28);
    result = sub_298B44C70(*(a1 + 2), v65, a3, a4, a5, a6, a7);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 1) & 0xFFFFFF;
    result = 1;
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = v65[0].i64[0];
        if (!v65[0].i64[0] || v65[0].i64[1])
        {
          v13 = -v65[1].i64[0];
          *v9 = v65[0].i64[1];
          *(v9 + 8) = v12;
          *(v9 + 16) = v13;
          *(v9 + 24) = 0;
          return result;
        }
      }

      else if (*v65 == 0)
      {
        v53 = v65[1].i64[0] == 0;
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = v53;
        *(v9 + 24) = 0;
        return result;
      }

      return 0;
    }

    if (v11 == 2)
    {
      if (*v65 == 0)
      {
        v54 = ~v65[1].i64[0];
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = v54;
        *(v9 + 24) = 0;
        return result;
      }

      return 0;
    }

    if (v11 == 3)
    {
      *v9 = v65[0];
      *(v9 + 12) = *(v65 + 12);
    }
  }

  else
  {
    v29 = *(*(a1 - 1) + 32);
    v30 = a1 - 8;

    return v29(v30, a2, a4, a5);
  }

  return result;
}

uint64_t sub_298B452F0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a5;
  v21 = *(a5 + 8);
  v22 = v7;
  v8 = *(a5 + 16);
  v9 = *a6;
  v19 = *(a6 + 8);
  v20 = v9;
  if (*(a5 + 24) != *(a6 + 24))
  {
    return 0;
  }

  v18 = *(a6 + 16) + v8;
  if (a1)
  {
    v10 = a7;
    sub_298B455B0(a1, a2, a3, a4, &v22, &v21, &v18);
    sub_298B455B0(a1, a2, a3, a4, &v22, &v19, &v18);
    sub_298B455B0(a1, a2, a3, a4, &v20, &v21, &v18);
    sub_298B455B0(a1, a2, a3, a4, &v20, &v19, &v18);
    a7 = v10;
    v7 = v22;
    v9 = v20;
  }

  if (v7 && v9)
  {
    return 0;
  }

  v15 = v21;
  if (v21)
  {
    if (v19)
    {
      return 0;
    }
  }

  if (!v7)
  {
    v7 = v9;
  }

  v17 = v18;
  if (!v21)
  {
    v15 = v19;
  }

  *a7 = v7;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17;
  *(a7 + 24) = 0;
  return 1;
}

uint64_t sub_298B45440(unsigned __int8 *a1)
{
  for (i = *a1; i == 3; i = *a1)
  {
    a1 = *(a1 + 2);
  }

  if (i > 1)
  {
    if (i == 2)
    {
      v6 = *(a1 + 2);
      result = *v6;
      if (!*v6)
      {
        if ((v6[1] & 0x7080) == 0x2000)
        {
          v6[1] |= 8uLL;
          result = sub_298B45440(v6[3]);
          *v6 = result;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v7 = *(*(a1 - 1) + 64);

      return v7();
    }
  }

  else if (i)
  {
    return qword_2A13C3628;
  }

  else
  {
    v2 = a1;
    v3 = sub_298B45440(*(a1 + 2));
    result = sub_298B45440(*(v2 + 3));
    if (v3 != qword_2A13C3628)
    {
      if (result == qword_2A13C3628)
      {
        return v3;
      }

      else
      {
        if (v3)
        {
          v5 = v3;
        }

        else
        {
          v5 = result;
        }

        if ((*(v2 + 1) & 0xFFFFFF) == 0x12)
        {
          return qword_2A13C3628;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t sub_298B455B0(uint64_t result, uint64_t a2, uint64_t *a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = *a5;
  v10 = *a6;
  if (*a5)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v103 = v7;
    v104 = v8;
    v18 = result;
    v19 = *(v9 + 16);
    v20 = *(v10 + 16);
    if (*v19 || (*(v19 + 8) & 0x7080) == 0x2000 && (*(v19 + 8) |= 8uLL, result = sub_298B45440(*(v19 + 24)), (*v19 = result) != 0))
    {
      if (*v20 || (*(v20 + 8) & 0x7080) == 0x2000 && (*(v20 + 8) |= 8uLL, result = sub_298B45440(*(v20 + 24)), (*v20 = result) != 0))
      {
        result = sub_298B52160(*(v18 + 24), v18, *a5, *a6);
        if (result)
        {
          v21 = *v19;
          if (*v19)
          {
            v22 = *v20;
            if (*v20)
            {
              goto LABEL_10;
            }

LABEL_29:
            if ((*(v20 + 8) & 0x7080) == 0x2000)
            {
              *(v20 + 8) |= 8uLL;
              result = sub_298B45440(*(v20 + 24));
              v22 = result;
              *v20 = result;
              v23 = *(v21 + 16);
              v24 = *(result + 16);
              if (a3)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v22 = 0;
              v23 = *(v21 + 16);
              v24 = MEMORY[0x10];
              if (a3)
              {
                goto LABEL_12;
              }
            }

LABEL_11:
            if (v23 != v24)
            {
              return result;
            }

LABEL_12:
            if (!a2 || (a4 & 1) == 0 && (*(v23 + 44) & 2) != 0 && (v47 = *(*v18 + 48), v47 <= 0x1C) && ((1 << v47) & 0x18006000) != 0)
            {
              if ((*(v19 + 8) & 0x7000) == 0x2000 || (*(v20 + 8) & 0x7000) == 0x2000 || *(v21 + 44) != *(v22 + 44))
              {
                return result;
              }

              if (v21 == v22)
              {
                v71 = *(v20 + 24);
                v90 = *(v19 + 24);
                v50 = v90 - v71;
                if (v90 < v71)
                {
LABEL_91:
                  result = v90;
                  v50 = -v50;
                  v89 = 1;
                  v72 = v21;
                  v90 = v71;
                  v88 = result;
                  goto LABEL_92;
                }
              }

              else
              {
                if (*(v21 + 48) == 15)
                {
LABEL_65:
                  v89 = 0;
                  v88 = *(v20 + 24);
                  v90 = *(v19 + 24);
                  v50 = v90 - v88;
LABEL_88:
                  v72 = v22;
                  v22 = v21;
LABEL_92:
                  v73 = v23 + 104;
                  if (v72 != v23 + 104)
                  {
                    v97 = 0;
                    v92 = 0;
                    v74 = v72;
                    v94 = v22;
                    v91 = v72;
                    do
                    {
                      v76 = *(v74 + 48);
                      if (v74 && v76 == 1)
                      {
                        if (*(v74 + 51) == 1)
                        {
                          if (v74 != v72 || v88 != *(v74 + 72))
                          {
                            v92 = 1;
                          }

                          if (v74 != v22 || v90 == *(v74 + 72))
                          {
                            v97 = 1;
                          }

                          if (v92 & v97)
                          {
                            return result;
                          }
                        }

                        if (v74 == v22)
                        {
                          break;
                        }

                        result = *(v74 + 72);
                      }

                      else
                      {
                        if (v74 == v22)
                        {
                          break;
                        }

                        v98 = 0;
                        if (v76)
                        {
                          v77 = 0;
                        }

                        else
                        {
                          v77 = v74;
                        }

                        if (a2 && v77 && (*(v77 + 53) & 1) != 0)
                        {
                          result = (*(**(v18 + 8) + 96))(*(v18 + 8), v77, &v98);
                          if (!result)
                          {
                            result = sub_298B24A18(v18, a2, v77);
                            v22 = v94;
                            v72 = v91;
                            goto LABEL_96;
                          }

                          v76 = *(v74 + 48);
                          v22 = v94;
                          v72 = v91;
                        }

                        if (!v74 || v76 != 3)
                        {
                          return result;
                        }

                        v78 = *(v74 + 64);
                        v99 = 0;
                        v100 = 0;
                        v102 = 0;
                        v101 = 0;
                        if (*v78 == 1)
                        {
                          v75 = *(v78 + 16);
                        }

                        else
                        {
                          result = sub_298B44C70(v78, &v99, 0, 0, 0, 0, 0);
                          if (!result)
                          {
                            return result;
                          }

                          if (v99)
                          {
                            return result;
                          }

                          v22 = v94;
                          v72 = v91;
                          if (v100)
                          {
                            return result;
                          }

                          v75 = v101;
                        }

                        result = v75 * *(v74 + 52);
                      }

LABEL_96:
                      v50 += result;
                      v74 = *(v74 + 8);
                    }

                    while (v74 != v73);
                  }

                  if (v89)
                  {
                    v79 = -v50;
                  }

                  else
                  {
                    v79 = v50;
                  }

                  v70 = *a7 + v79;
                  goto LABEL_130;
                }

                v48 = *(v21 + 8);
                v49 = v23 + 104;
                if (v48 != v23 + 104)
                {
                  while (v22 != v48)
                  {
                    v48 = *(v48 + 8);
                    if (v48 == v49)
                    {
                      goto LABEL_65;
                    }
                  }

                  v48 = v22;
                }

                v71 = *(v20 + 24);
                v90 = *(v19 + 24);
                v50 = v90 - v71;
                if (v48 != v49)
                {
                  goto LABEL_91;
                }
              }

              v88 = v71;
              v89 = 0;
              goto LABEL_88;
            }

            if (v21 == v22 && (*(v19 + 8) & 0x7000) != 0x2000 && (*(v20 + 8) & 0x7000) != 0x2000)
            {
              v70 = *(v19 + 24) - *(v20 + 24) + *a7;
LABEL_130:
              *a7 = v70;
              goto LABEL_131;
            }

            v99 = v23;
            v25 = *(a2 + 152);
            v26 = *(a2 + 168);
            if (v26)
            {
              v27 = v26 - 1;
              v28 = v27 & ((v23 >> 4) ^ (v23 >> 9));
              result = v25 + 16 * v28;
              v29 = *result;
              if (v23 == *result)
              {
                v30 = v23;
                goto LABEL_39;
              }

              v93 = v22;
              v95 = v24;
              v31 = v23;
              v80 = 0;
              v81 = 1;
              while (v29 != -4096)
              {
                if (v80)
                {
                  v82 = 0;
                }

                else
                {
                  v82 = v29 == -8192;
                }

                if (v82)
                {
                  v80 = result;
                }

                v83 = v28 + v81++;
                v28 = v83 & v27;
                result = v25 + 16 * v28;
                v29 = *result;
                if (v23 == *result)
                {
                  v30 = v23;
                  goto LABEL_38;
                }
              }

              if (v80)
              {
                v32 = v80;
              }

              else
              {
                v32 = result;
              }
            }

            else
            {
              v93 = v22;
              v95 = v24;
              v31 = v23;
              v32 = 0;
            }

            result = sub_298B26F04((a2 + 152), &v99, &v99, v32);
            v30 = v99;
            *result = v99;
            *(result + 8) = 0;
            v22 = v93;
            v23 = v31;
LABEL_38:
            v24 = v95;
LABEL_39:
            v33 = *(result + 8);
            if (v33)
            {
              if (*(v21 + 40) <= *(v33 + 40))
              {
                goto LABEL_44;
              }

              v34 = v33 + 8;
            }

            else
            {
              v34 = v30 + 112;
            }

            if (*(*v34 + 49))
            {
              return result;
            }

LABEL_44:
            v35 = *(v22 + 16);
            v99 = v35;
            v36 = *(a2 + 168);
            if (v36)
            {
              v37 = *(a2 + 152);
              v38 = v36 - 1;
              v39 = ((v35 >> 4) ^ (v35 >> 9)) & v38;
              result = v37 + 16 * v39;
              v40 = *result;
              if (v35 == *result)
              {
                goto LABEL_69;
              }

              v96 = v24;
              v41 = v23;
              v42 = v22;
              v43 = 0;
              v44 = 1;
              while (v40 != -4096)
              {
                if (v43)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v40 == -8192;
                }

                if (v45)
                {
                  v43 = result;
                }

                v46 = v39 + v44++;
                v39 = v46 & v38;
                result = v37 + 16 * v39;
                v40 = *result;
                if (v35 == *result)
                {
                  goto LABEL_68;
                }
              }

              if (v43)
              {
                v51 = v43;
              }

              else
              {
                v51 = result;
              }
            }

            else
            {
              v96 = v24;
              v41 = v23;
              v42 = v22;
              v51 = 0;
            }

            result = sub_298B26F04((a2 + 152), &v99, &v99, v51);
            v35 = v99;
            *result = v99;
            *(result + 8) = 0;
LABEL_68:
            v22 = v42;
            v23 = v41;
            v24 = v96;
LABEL_69:
            v52 = *(result + 8);
            if (v52)
            {
              if (*(v22 + 40) <= *(v52 + 40))
              {
                goto LABEL_74;
              }

              v53 = v52 + 8;
            }

            else
            {
              v53 = v35 + 112;
            }

            if (*(*v53 + 49))
            {
              return result;
            }

LABEL_74:
            v54 = *(*a5 + 16);
            v99 = 0;
            v55 = v23;
            v56 = v24;
            sub_298B460F8(a2, v54, 1, &v99);
            v57 = v99;
            v58 = *(*a6 + 16);
            v99 = 0;
            sub_298B460F8(a2, v58, 1, &v99);
            v59 = *a7 + v57 - v99;
            *a7 = v59;
            if (v55 == v56 || !a3)
            {
LABEL_131:
              result = sub_298B24270(v18, v19);
              if (result)
              {
                *a7 |= 1uLL;
              }

              *a6 = 0;
              *a5 = 0;
              return result;
            }

            v60 = *(a3 + 4);
            if (v60)
            {
              v61 = *a3;
              v62 = v60 - 1;
              v63 = v62 & ((v55 >> 4) ^ (v55 >> 9));
              v64 = *(*a3 + 16 * v63);
              if (v64 == v55)
              {
                v65 = v56;
LABEL_79:
                v66 = *(v61 + 16 * v63 + 8);
              }

              else
              {
                v84 = 1;
                while (v64 != -4096)
                {
                  v85 = v63 + v84++;
                  v63 = v85 & v62;
                  v64 = *(v61 + 16 * v63);
                  v65 = v56;
                  if (v64 == v55)
                  {
                    goto LABEL_79;
                  }
                }

                v66 = 0;
                v65 = v56;
              }

              v67 = v62 & ((v65 >> 4) ^ (v65 >> 9));
              v68 = *(v61 + 16 * v67);
              if (v68 == v65)
              {
LABEL_81:
                v69 = *(v61 + 16 * v67 + 8);
LABEL_85:
                v70 = v66 + v59 - v69;
                goto LABEL_130;
              }

              v86 = 1;
              while (v68 != -4096)
              {
                v87 = v67 + v86++;
                v67 = v87 & v62;
                v68 = *(v61 + 16 * v67);
                if (v68 == v56)
                {
                  goto LABEL_81;
                }
              }
            }

            else
            {
              v66 = 0;
            }

            v69 = 0;
            goto LABEL_85;
          }

          if ((*(v19 + 8) & 0x7080) == 0x2000)
          {
            *(v19 + 8) |= 8uLL;
            result = sub_298B45440(*(v19 + 24));
            v21 = result;
            *v19 = result;
            v22 = *v20;
            if (!*v20)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v21 = 0;
            v22 = *v20;
            if (!*v20)
            {
              goto LABEL_29;
            }
          }

LABEL_10:
          v23 = *(v21 + 16);
          v24 = *(v22 + 16);
          if (a3)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_298B45E14(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v3 = (a1 + 24);
  *(a1 + 8) = a1 + 24;
  v4 = a1 + 8;
  *(a1 + 16) = 0x1000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (v5 != v6)
  {
    do
    {
      v8 = *v5;
      if (((*(**v5 + 16))(*v5) & 1) == 0)
      {
        v9 = *(a1 + 16);
        if (v9 >= *(a1 + 20))
        {
          sub_298B90A44(v4, v3, v9 + 1, 8);
          v9 = *(a1 + 16);
        }

        *(*(a1 + 8) + 8 * v9) = v8;
        ++*(a1 + 16);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
  }

  while (v5 != v6)
  {
    v10 = *v5;
    if ((*(**v5 + 16))(*v5))
    {
      v11 = *(a1 + 16);
      if (v11 >= *(a1 + 20))
      {
        sub_298B90A44(v4, v3, v11 + 1, 8);
        v11 = *(a1 + 16);
      }

      *(*(a1 + 8) + 8 * v11) = v10;
      ++*(a1 + 16);
    }

    ++v5;
  }

  return a1;
}

unint64_t sub_298B45F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v31 = v4;
  v7 = *(a1 + 152);
  result = a1 + 152;
  v6 = v7;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = ((v4 >> 4) ^ (v4 >> 9)) & (v8 - 1);
    v11 = (v6 + 16 * v10);
    v12 = *v11;
    if (v4 == *v11)
    {
      goto LABEL_14;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -8192;
      }

      if (v15)
      {
        v13 = v11;
      }

      v16 = v10 + v14++;
      v10 = v16 & v9;
      v11 = (v6 + 16 * (v16 & v9));
      v12 = *v11;
      if (v4 == *v11)
      {
        goto LABEL_14;
      }
    }

    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v11;
    }
  }

  else
  {
    v17 = 0;
  }

  result = sub_298B26F04(result, &v31, &v31, v17);
  v11 = result;
  v4 = v31;
  *result = v31;
  *(result + 8) = 0;
LABEL_14:
  v18 = v11[1];
  v19 = (v4 + 112);
  if (v18)
  {
    v20 = (v18 + 8);
  }

  else
  {
    v20 = v19;
  }

  while (1)
  {
    v21 = *v20;
    v22 = *(a1 + 168);
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = *(a2 + 16);
    v24 = *(a1 + 152);
    v25 = v22 - 1;
    v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v22 - 1);
    v27 = *(v24 + 16 * v26);
    if (v27 == v23)
    {
      break;
    }

    v29 = 1;
    while (v27 != -4096)
    {
      v30 = v26 + v29++;
      v26 = v30 & v25;
      v27 = *(v24 + 16 * v26);
      if (v27 == v23)
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    result = sub_298B24F10(a1, v21);
    v20 = (v21 + 1);
  }

LABEL_20:
  v28 = *(v24 + 16 * v26 + 8);
  if (!v28 || *(a2 + 40) > *(v28 + 40))
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_298B460F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 8);
  if ((v8 & 0x7000) != 0x2000)
  {
    v11 = *a2;
    if (*a2 || (v8 & 0x7080) == 0x2000 && (*(a2 + 8) = v8 | 8, v11 = sub_298B45440(*(a2 + 24)), (*a2 = v11) != 0))
    {
      sub_298B45F80(a1, v11);
      *a4 = *(a2 + 24) + *(v11 + 32);
      return 1;
    }

    if (!a3)
    {
      return 0;
    }

    v12 = sub_298B4119C(a2);
    v22 = 1283;
    v14 = "unable to evaluate offset to undefined symbol '";
LABEL_20:
    v21[0] = v14;
    v21[2] = v12;
    v21[3] = v13;
    v19 = "'";
    v20 = 259;
    sub_298ADC860(v21, &v19, v23);
    sub_298B868DC(v23, 1);
  }

  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  *(a2 + 8) = v8 | 8;
  if ((sub_298B44C70(*(a2 + 24), &v15, *a1, a1, 0, 0, 1) & 1) == 0)
  {
    v12 = sub_298B4119C(a2);
    v22 = 1283;
    v14 = "unable to evaluate offset for variable '";
    goto LABEL_20;
  }

  v9 = v17;
  if (v15)
  {
    v23[0] = 0;
    result = sub_298B460F8(a1, *(v15 + 16), a3, v23);
    if (!result)
    {
      return result;
    }

    v9 += v23[0];
  }

  if (v16)
  {
    v23[0] = 0;
    result = sub_298B460F8(a1, *(v16 + 16), a3, v23);
    if (!result)
    {
      return result;
    }

    v9 -= v23[0];
  }

  *a4 = v9;
  return 1;
}

uint64_t sub_298B462C8(uint64_t result)
{
  switch(*(result + 48))
  {
    case 0:

      goto LABEL_56;
    case 1:
      if (*(result + 120) != result + 136)
      {
        v4 = result;
        free(*(result + 120));
        result = v4;
      }

      v2 = *(result + 64);
      if (v2 == (result + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 2:
      v2 = *(result + 64);
      if (v2 == (result + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 3:

      goto LABEL_56;
    case 4:

      goto LABEL_56;
    case 5:
      if (*(result + 152) != result + 168)
      {
        v8 = result;
        free(*(result + 152));
        result = v8;
      }

      if (*(result + 96) != result + 112)
      {
        v9 = result;
        free(*(result + 96));
        result = v9;
      }

      v2 = *(result + 64);
      if (v2 == (result + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 6:

      goto LABEL_56;
    case 7:
      if (*(result + 96) != result + 112)
      {
        v10 = result;
        free(*(result + 96));
        result = v10;
      }

      v2 = *(result + 64);
      if (v2 != (result + 88))
      {
        goto LABEL_54;
      }

      goto LABEL_7;
    case 8:
    case 0xE:
      if (*(result + 96) != result + 112)
      {
        v1 = result;
        free(*(result + 96));
        result = v1;
      }

      v2 = *(result + 64);
      if (v2 == (result + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 9:
      if (*(result + 96) != result + 112)
      {
        v3 = result;
        free(*(result + 96));
        result = v3;
      }

      v2 = *(result + 64);
      if (v2 == (result + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 0xA:

      goto LABEL_56;
    case 0xB:
    case 0xF:
      goto LABEL_7;
    case 0xC:
      v2 = *(result + 80);
      if (v2 == (result + 104))
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 0xD:
      if (*(result + 280) != result + 304)
      {
        v5 = result;
        free(*(result + 280));
        result = v5;
      }

      if (*(result + 232) != result + 248)
      {
        v6 = result;
        free(*(result + 232));
        result = v6;
      }

      if (*(result + 120) != result + 136)
      {
        v7 = result;
        free(*(result + 120));
        result = v7;
      }

      v2 = *(result + 64);
      if (v2 == (result + 88))
      {
        goto LABEL_7;
      }

LABEL_54:
      free(v2);

      goto LABEL_56;
    default:
      if (*(result + 48) == 255)
      {
LABEL_7:

LABEL_56:
        JUMPOUT(0x29C2945F0);
      }

      return result;
  }
}

void sub_298B466E0(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 32);
  if ((*(a2 + 24) - v6) <= 0xA)
  {
    sub_298B9BCEC(a2, "<MCOperand ", 0xBuLL);
    v7 = *(a2 + 32);
    v8 = *a1;
    v9 = *(a2 + 24) - v7;
    if (v8 > 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v8)
    {
      if (v9 <= 6)
      {
        v14 = "INVALID";
        v15 = a2;
        v16 = 7;
LABEL_50:
        sub_298B9BCEC(v15, v14, v16);
        goto LABEL_53;
      }

      *(v7 + 3) = 1145654337;
      *v7 = 1096175177;
      v17 = *(a2 + 32) + 7;
LABEL_36:
      *(a2 + 32) = v17;
      goto LABEL_53;
    }

    if (v8 != 1)
    {
      if (v9 > 3)
      {
        *v7 = 980249929;
        *(a2 + 32) += 4;
        v11 = *(a1 + 1);
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_298B9BCEC(a2, "Imm:", 4uLL);
        v11 = *(a1 + 1);
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_12:
          v11 = -v11;
          v12 = a2;
          if (HIDWORD(v11))
          {
            sub_298B8FEA0(a2, v11, 0, 0, 1);
            goto LABEL_53;
          }

          v13 = 1;
LABEL_52:
          sub_298B8FC48(v12, v11, 0, 0, v13);
          goto LABEL_53;
        }
      }

      if (HIDWORD(v11))
      {
        sub_298B8FEA0(a2, v11, 0, 0, 0);
        goto LABEL_53;
      }

LABEL_51:
      v12 = a2;
      v13 = 0;
      goto LABEL_52;
    }

    if (v9 > 3)
    {
      *v7 = 979854674;
      *(a2 + 32) += 4;
      LODWORD(v11) = *(a1 + 2);
      if (!a3)
      {
        goto LABEL_51;
      }
    }

    else
    {
      sub_298B9BCEC(a2, "Reg:", 4uLL);
      LODWORD(v11) = *(a1 + 2);
      if (!a3)
      {
        goto LABEL_51;
      }
    }

    v20 = a3[8];
    if (!v20)
    {
      goto LABEL_53;
    }

    v21 = *(*a3 + 24 * v11);
    v22 = strlen((v20 + v21));
    v23 = *(a2 + 32);
    if (v22 > *(a2 + 24) - v23)
    {
      v14 = (v20 + v21);
      v15 = a2;
      v16 = v22;
      goto LABEL_50;
    }

    if (!v22)
    {
      goto LABEL_53;
    }

    memcpy(v23, (v20 + v21), v22);
    v17 = *(a2 + 32) + v22;
    goto LABEL_36;
  }

  *(v6 + 7) = 543452769;
  *v6 = *"<MCOperand ";
  v10 = *(a2 + 24);
  v7 = *(a2 + 32) + 11;
  *(a2 + 32) = v7;
  v8 = *a1;
  v9 = v10 - v7;
  if (v8 <= 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v8 > 4)
  {
    if (v8 == 5)
    {
      if (v9 > 5)
      {
        *(v7 + 4) = 10298;
        *v7 = 1919973445;
        *(a2 + 32) += 6;
      }

      else
      {
        sub_298B9BCEC(a2, "Expr:(", 6uLL);
      }

      sub_298B439C4(*(a1 + 1), a2, 0, 0);
      v19 = *(a2 + 32);
      if (*(a2 + 24) == v19)
      {
        goto LABEL_42;
      }

LABEL_35:
      *v19 = 41;
      v17 = *(a2 + 32) + 1;
      goto LABEL_36;
    }

    if (v8 == 6)
    {
      if (v9 > 5)
      {
        *(v7 + 4) = 10298;
        *v7 = 1953721929;
        *(a2 + 32) += 6;
      }

      else
      {
        sub_298B9BCEC(a2, "Inst:(", 6uLL);
      }

      sub_298B46B7C(*(a1 + 1), a2, a3);
      v19 = *(a2 + 32);
      if (*(a2 + 24) == v19)
      {
LABEL_42:
        v14 = ")";
        v15 = a2;
        v16 = 1;
        goto LABEL_50;
      }

      goto LABEL_35;
    }

    if (v9 <= 8)
    {
      v14 = "UNDEFINED";
      v15 = a2;
      v16 = 9;
      goto LABEL_50;
    }

    *(v7 + 8) = 68;
    *v7 = *"UNDEFINED";
    v17 = *(a2 + 32) + 9;
    goto LABEL_36;
  }

  if (v8 == 3)
  {
    if (v9 > 6)
    {
      *(v7 + 3) = 980249929;
      *v7 = 1229997651;
      *(a2 + 32) += 7;
    }

    else
    {
      sub_298B9BCEC(a2, "SFPImm:", 7uLL);
    }

    v18 = *(a1 + 2);
  }

  else
  {
    if (v9 > 6)
    {
      *(v7 + 3) = 980249929;
      *v7 = 1229997636;
      *(a2 + 32) += 7;
    }

    else
    {
      sub_298B9BCEC(a2, "DFPImm:", 7uLL);
    }

    v18 = *(a1 + 1);
  }

  sub_298B8F70C(a2, 0, 0, 0, v18);
LABEL_53:
  v24 = *(a2 + 32);
  if (*(a2 + 24) == v24)
  {

    sub_298B9BCEC(a2, ">", 1uLL);
  }

  else
  {
    *v24 = 62;
    ++*(a2 + 32);
  }
}

void sub_298B46B7C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[4];
  if (a2[3] - v6 > 7uLL)
  {
    *v6 = 0x2074736E49434D3CLL;
    a2[4] += 8;
  }

  else
  {
    sub_298B9BCEC(a2, "<MCInst ", 8uLL);
  }

  sub_298B8FC48(a2, *a1, 0, 0, 0);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = 0;
    v9 = 16 * v7;
    do
    {
      v10 = a2[4];
      if (a2[3] == v10)
      {
        sub_298B9BCEC(a2, " ", 1uLL);
      }

      else
      {
        *v10 = 32;
        ++a2[4];
      }

      sub_298B466E0((*(a1 + 16) + v8), a2, a3);
      v8 += 16;
    }

    while (v9 != v8);
  }

  v11 = a2[4];
  if (a2[3] == v11)
  {

    sub_298B9BCEC(a2, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++a2[4];
  }
}

uint64_t sub_298B46CE4(uint64_t result, uint64_t a2, char *__src, size_t __n)
{
  if (!__n)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 8);
  if (!v7)
  {
    v10 = *(a2 + 32);
    if (*(a2 + 24) == v10)
    {
      sub_298B9BCEC(a2, " ", 1uLL);
      v18 = *(v6 + 16);
      v13 = *(v18 + 48);
      v14 = *(v18 + 56);
      v11 = *(a2 + 32);
      if (v14 > *(a2 + 24) - v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *v10 = 32;
      v11 = (*(a2 + 32) + 1);
      *(a2 + 32) = v11;
      v12 = *(v6 + 16);
      v13 = *(v12 + 48);
      v14 = *(v12 + 56);
      if (v14 > *(a2 + 24) - v11)
      {
LABEL_8:
        sub_298B9BCEC(a2, v13, v14);
        v11 = *(a2 + 32);
        goto LABEL_20;
      }
    }

    if (v14)
    {
      v19 = v14;
      memcpy(v11, v13, v14);
      v11 = (*(a2 + 32) + v19);
      *(a2 + 32) = v11;
    }

LABEL_20:
    if (*(a2 + 24) == v11)
    {
      sub_298B9BCEC(a2, " ", 1uLL);
      v21 = *(a2 + 32);
      if (__n > *(a2 + 24) - v21)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v11 = 32;
      v20 = *(a2 + 24);
      v21 = (*(a2 + 32) + 1);
      *(a2 + 32) = v21;
      if (__n > v20 - v21)
      {
LABEL_22:

        return sub_298B9BCEC(a2, __src, __n);
      }
    }

    result = memcpy(v21, __src, __n);
    *(a2 + 32) += __n;
    return result;
  }

  v8 = *(v7 + 32);
  if (__n <= *(v7 + 24) - v8)
  {
    result = memcpy(v8, __src, __n);
    *(v7 + 32) += __n;
    if (__src[__n - 1] == 10)
    {
      return result;
    }
  }

  else
  {
    result = sub_298B9BCEC(v7, __src, __n);
    if (__src[__n - 1] == 10)
    {
      return result;
    }
  }

  v15 = *(v6 + 8);
  v16 = *(v15 + 32);
  if (v16 < *(v15 + 24))
  {
LABEL_16:
    *(v15 + 32) = v16 + 1;
    *v16 = 10;
  }

  else
  {
    while (1)
    {
      v17 = *(v15 + 16);
      if (v17)
      {
        *(v15 + 32) = v17;
        result = sub_298B9BB84(v15);
        v16 = *(v15 + 32);
        goto LABEL_16;
      }

      if (!*(v15 + 56))
      {
        return sub_298B9BB84(v15);
      }

      result = sub_298B9AE98(v15);
      v16 = *(v15 + 32);
      if (v16 < *(v15 + 24))
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_298B46F70(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a4[1];
  if (!v5)
  {
    v12 = *a4;
    return 0;
  }

  v6 = *a4;
  v7 = a4[1];
  do
  {
    v8 = v7 >> 1;
    v9 = &v6[2 * (v7 >> 1)];
    v11 = *v9;
    v10 = v9 + 2;
    v7 += ~(v7 >> 1);
    if (v11 < v4)
    {
      v6 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (v6 == (*a4 + 8 * v5) || *v6 != v4)
  {
    return 0;
  }

  v13 = *(v6 + 3);
  if (*(v6 + 3))
  {
    v14 = (a4[2] + 12 * *(v6 + 2));
    v15 = &v14[3 * *(v6 + 3)];
    v16 = a3 + 216;
    do
    {
      if (a2[6] != *(v14 + 8))
      {
        return 0;
      }

      if (!*(v14 + 9))
      {
LABEL_53:
        v32 = *v14;
        if (v32 == -1)
        {
          return 0;
        }

        return a4[6] + v32;
      }

      v17 = 0;
      v18 = 0;
      v19 = 8 * *(v14 + 9);
      v20 = (a4[4] + 8 * v14[1] + 4);
      while (1)
      {
        v22 = *(v20 - 4);
        if (v22 <= 1)
        {
          if (!*(v20 - 4))
          {
            if (((*(v16 + ((*v20 >> 3) & 0x1FFFFFF8)) >> *v20) & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_18;
          }

          if (v22 == 1)
          {
            if ((*(v16 + ((*v20 >> 3) & 0x1FFFFFF8)) >> *v20))
            {
              goto LABEL_51;
            }

            goto LABEL_18;
          }
        }

        else
        {
          switch(v22)
          {
            case 2u:
              v21 = (*(v16 + ((*v20 >> 3) & 0x1FFFFFF8)) >> *v20) & 1;
LABEL_17:
              v18 |= v21;
              goto LABEL_18;
            case 3u:
              LOBYTE(v21) = ((*(v16 + ((*v20 >> 3) & 0x1FFFFFF8)) >> *v20) & 1) == 0;
              goto LABEL_17;
            case 4u:
              if ((v18 & 1) == 0)
              {
                goto LABEL_51;
              }

              v18 = 0;
              goto LABEL_18;
          }
        }

        v23 = *(a2 + 2);
        v24 = v23 + 16 * v17++;
        if (*(v20 - 4) <= 7u)
        {
          if (v22 != 5)
          {
            if (v22 == 6)
            {
              if (*v24 != 1 || *(v24 + 8) != *v20)
              {
                goto LABEL_51;
              }
            }

            else if (*v24 != 1 || *(v24 + 8) != *(v23 + 16 * *v20 + 8))
            {
              goto LABEL_51;
            }
          }

          goto LABEL_18;
        }

        if (v22 == 10)
        {
          v34 = a1;
          v27 = a2;
          v28 = a3;
          v29 = a4;
          v30 = (a4[8])(v24, a3, *v20);
          a2 = v27;
          a3 = v28;
          a4 = v29;
          v31 = v30;
          a1 = v34;
          if ((v31 & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_18;
        }

        if (v22 != 9)
        {
          break;
        }

        if (*v24 != 1)
        {
          goto LABEL_51;
        }

        v25 = *(*(a1 + 32) + 24) + 32 * *v20;
        v26 = *(v24 + 8);
        if ((v26 >> 3) >= *(v25 + 22) || ((*(*(v25 + 8) + (v26 >> 3)) >> (v26 & 7)) & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_18:
        v20 += 2;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_53;
        }
      }

      if (*v24 == 2 && *(v24 + 8) == *v20)
      {
        goto LABEL_18;
      }

LABEL_51:
      v13 = 0;
      v14 += 3;
    }

    while (v14 != v15);
  }

  return v13;
}

uint64_t sub_298B47284@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 52))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      if (a2 == 0x8000000000000000)
      {
        *a3 = &unk_2A1F1C388;
        a3[1] = "-8000000000000000h";
        a3[2] = 0x8000000000000000;
      }

      else
      {
        v5 = -a2;
        do
        {
          v6 = v5;
          v5 *= 16;
        }

        while (!(v6 >> 60));
        *a3 = &unk_2A1F1C388;
        if (v6 >> 61 < 5)
        {
          a3[1] = "-%llxh";
        }

        else
        {
          a3[1] = "-0%llxh";
        }

        a3[2] = -a2;
      }
    }

    else
    {
      v3 = a2;
      while (v3)
      {
        v4 = v3;
        v3 *= 16;
        if (v4 >> 60)
        {
          if (v4 >> 61 >= 5)
          {
            *a3 = &unk_2A1F1C388;
            a3[1] = "0%llxh";
            a3[2] = a2;
            return result;
          }

          break;
        }
      }

      *a3 = &unk_2A1F1C388;
      a3[1] = "%llxh";
      a3[2] = a2;
    }
  }

  else if ((a2 & 0x8000000000000000) != 0)
  {
    *a3 = &unk_2A1F1C388;
    if (a2 == 0x8000000000000000)
    {
      a3[1] = "-0x8000000000000000";
      a3[2] = 0x8000000000000000;
    }

    else
    {
      a3[1] = "-0x%llx";
      a3[2] = -a2;
    }
  }

  else
  {
    *a3 = &unk_2A1F1C388;
    a3[1] = "0x%llx";
    a3[2] = a2;
  }

  return result;
}

uint64_t sub_298B47440(uint64_t result, void *a2, int a3, int a4, int a5)
{
  *result = a2;
  *(result + 8) = a4;
  *(result + 9) = a5;
  if (a3 <= 3)
  {
    if (a5)
    {
      v8 = result;
      (*(*a2 + 24))(a2, dword_298D1A760[a3], 0, 0);
      result = v8;
    }
  }

  if (a4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v14 = a2[4];
        if (a2[3] - v14 > 7uLL)
        {
          *v14 = 0x3A7465677261743CLL;
          a2[4] += 8;
          return result;
        }

        v10 = "<target:";
        v11 = result;
        v12 = a2;
        v13 = 8;
        goto LABEL_19;
      }

      if (a3 != 3)
      {
        return result;
      }

      v9 = a2[4];
      if ((a2[3] - v9) <= 4)
      {
        v10 = "<mem:";
        goto LABEL_16;
      }

      *(v9 + 4) = 58;
      v15 = 1835363644;
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v9 = a2[4];
      if ((a2[3] - v9) <= 4)
      {
        v10 = "<reg:";
LABEL_16:
        v11 = result;
        v12 = a2;
        v13 = 5;
LABEL_19:
        sub_298B9BCEC(v12, v10, v13);
        return v11;
      }

      *(v9 + 4) = 58;
      v15 = 1734701628;
    }

    else
    {
      v9 = a2[4];
      if ((a2[3] - v9) <= 4)
      {
        v10 = "<imm:";
        goto LABEL_16;
      }

      *(v9 + 4) = 58;
      v15 = 1835886908;
    }

    *v9 = v15;
    a2[4] += 5;
  }

  return result;
}

_BYTE *sub_298B47608(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v3 = *a1;
    v4 = *(*a1 + 32);
    if (v4 < *(*a1 + 24))
    {
LABEL_10:
      *(v3 + 32) = v4 + 1;
      *v4 = 62;
      if (a1[9] != 1)
      {
        return a1;
      }
    }

    else
    {
      while (1)
      {
        v5 = *(v3 + 16);
        if (v5)
        {
          *(v3 + 32) = v5;
          sub_298B9BB84(v3);
          v4 = *(v3 + 32);
          goto LABEL_10;
        }

        if (!*(v3 + 56))
        {
          break;
        }

        sub_298B9AE98(v3);
        v4 = *(v3 + 32);
        if (v4 < *(v3 + 24))
        {
          goto LABEL_10;
        }
      }

      sub_298B9BB84(v3);
      if (a1[9] != 1)
      {
        return a1;
      }
    }
  }

  else if (a1[9] != 1)
  {
    return a1;
  }

  (*(**a1 + 32))();
  return a1;
}

uint64_t sub_298B47718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 > 0x40)
  {
    bzero(*a4, ((v4 + 63) >> 3) & 0x3FFFFFF8);
  }

  else
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t sub_298B4785C(void **a1, unsigned int *a2, uint64_t a3)
{
  if (((*a1)[4])(a1))
  {
    return 1;
  }

  if (((*a1)[8])(a1, a2))
  {
    return 1;
  }

  if (((*a1)[9])(a1, a2))
  {
    return 1;
  }

  if (((*a1)[7])(a1, a2))
  {
    return 1;
  }

  v7 = *(a3 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = (*a1[1] - 32 * *a2);

  return sub_298B47A0C(v8, a2, v7, a3);
}

uint64_t sub_298B47A0C(unsigned __int16 *a1, uint64_t a2, int a3, void *a4)
{
  if (*(a1 + 4))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a2 + 16) + 16 * v4;
      if (*v5 == 1)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (v6 == a3)
          {
            return 1;
          }

          v7 = (a4[6] + 2 * *(*a4 + 24 * v6 + 8));
          if (*v7)
          {
            v8 = v6 + *v7;
            if (a3 == v8)
            {
              return 1;
            }

            v9 = v7 + 1;
            do
            {
              v11 = *v9++;
              v10 = v11;
              v8 += v11;
              if (v11)
              {
                v12 = v8 == a3;
              }

              else
              {
                v9 = 0;
                v12 = 1;
              }
            }

            while (!v12);
            if (v10)
            {
              return 1;
            }
          }
        }
      }

      if (++v4 == *(a1 + 4))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if ((a1[10] & 0x80) != 0 && (v14 = a1[1] - 1, v15 = *(a2 + 24), v14 != v15))
    {
      while (1)
      {
        v25 = *(a2 + 16) + 16 * v14;
        if (*v25 == 1)
        {
          v26 = *(v25 + 8);
          if (v26 == a3)
          {
            return 1;
          }

          v27 = (a4[6] + 2 * *(*a4 + 24 * v26 + 8));
          if (*v27)
          {
            v28 = v26 + *v27;
            if (a3 == v28)
            {
              return 1;
            }

            v29 = v27 + 1;
            do
            {
              v31 = *v29++;
              v30 = v31;
              v28 += v31;
              if (!v31)
              {
                v29 = 0;
              }

              if (v30)
              {
                v32 = v28 == a3;
              }

              else
              {
                v32 = 1;
              }
            }

            while (!v32);
            if (v30)
            {
              return 1;
            }
          }
        }

        if (++v14 == v15)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      if (*(a1 + 9))
      {
        v16 = &a1[16 * *a1 + 16 + a1[5] + *(a1 + 8)];
        v17 = &v16[*(a1 + 9)];
        while (1)
        {
          v18 = *v16;
          if (v18 == a3)
          {
            break;
          }

          v19 = (a4[6] + 2 * *(*a4 + 24 * *v16 + 8));
          if (*v19)
          {
            v20 = *v19 + v18;
            if (a3 == v20)
            {
              break;
            }

            v21 = v19 + 1;
            do
            {
              v23 = *v21++;
              v22 = v23;
              v20 += v23;
              if (!v23)
              {
                v21 = 0;
              }

              if (v22)
              {
                v24 = v20 == a3;
              }

              else
              {
                v24 = 1;
              }
            }

            while (!v24);
            if (v22)
            {
              break;
            }
          }

          if (++v16 == v17)
          {
            return 0;
          }
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void *sub_298B47DDC(void *a1)
{
  *a1 = &unk_2A1F1C3A8;
  MEMORY[0x29C2945E0](a1[71], 8);

  return sub_298B4A8F0(a1);
}

void sub_298B47E38(void *a1)
{
  *a1 = &unk_2A1F1C3A8;
  MEMORY[0x29C2945E0](a1[71], 8);
  sub_298B4A8F0(a1);

  JUMPOUT(0x29C2945F0);
}

double sub_298B47EA8(uint64_t a1)
{
  *(a1 + 562) = 0;
  v2 = a1 + 568;
  v3 = *(a1 + 576);
  if (!v3)
  {
    if (!*(a1 + 580))
    {
      goto LABEL_41;
    }

    v4 = *(a1 + 584);
    if (v4 > 0x40)
    {
      v6 = 0;
      goto LABEL_16;
    }

LABEL_23:
    if (v4)
    {
      v24 = *v2;
      v25 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v25)
      {
        v26 = v25 + 1;
        v27 = (v25 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v28 = &v24[2 * v27];
        v29 = v24 + 2;
        v30 = v27;
        do
        {
          *(v29 - 2) = -4096;
          *v29 = -4096;
          v29 += 4;
          v30 -= 2;
        }

        while (v30);
        if (v26 == v27)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = *v2;
      }

      v31 = &v24[2 * v4];
      do
      {
        *v28 = -4096;
        v28 += 2;
      }

      while (v28 != v31);
    }

LABEL_32:
    *(a1 + 576) = 0;
    goto LABEL_41;
  }

  v4 = *(a1 + 584);
  if (v4 <= 4 * v3 || v4 < 0x41)
  {
    goto LABEL_23;
  }

  v5 = 1 << (33 - __clz(v3 - 1));
  if (v5 <= 64)
  {
    v6 = 64;
  }

  else
  {
    v6 = v5;
  }

  if (v6 == v4)
  {
    *(a1 + 576) = 0;
    v7 = *(a1 + 568);
    v8 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = (v7 + 16 * v10);
      v12 = (v7 + 16);
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v11 = *(a1 + 568);
    }

    v32 = (v7 + 16 * v4);
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v32);
    goto LABEL_41;
  }

LABEL_16:
  MEMORY[0x29C2945E0](*v2, 8);
  if (!v6)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    goto LABEL_41;
  }

  v14 = (4 * v6 / 3u + 1) | ((4 * v6 / 3u + 1) >> 1);
  v15 = v14 | (v14 >> 2) | ((v14 | (v14 >> 2)) >> 4);
  LODWORD(v15) = (((v15 | (v15 >> 8)) >> 16) | v15 | (v15 >> 8)) + 1;
  *(a1 + 584) = v15;
  v16 = operator new(16 * v15, 8uLL);
  *(a1 + 568) = v16;
  *(a1 + 576) = 0;
  v17 = *(a1 + 584);
  if (!v17)
  {
    goto LABEL_41;
  }

  v18 = (v17 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (!v18)
  {
    v21 = v16;
LABEL_39:
    v33 = &v16[2 * v17];
    do
    {
      *v21 = -4096;
      v21 += 2;
    }

    while (v21 != v33);
    goto LABEL_41;
  }

  v19 = v18 + 1;
  v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v21 = &v16[2 * v20];
  v22 = v16 + 2;
  v23 = v20;
  do
  {
    *(v22 - 2) = -4096;
    *v22 = -4096;
    v22 += 4;
    v23 -= 2;
  }

  while (v23);
  if (v19 != v20)
  {
    goto LABEL_39;
  }

LABEL_41:
  v34 = *(a1 + 304);
  if (v34)
  {
    sub_298B23F7C(v34);
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  v35 = *(a1 + 368);
  if (v35 || *(a1 + 372))
  {
    v36 = *(a1 + 376);
    if (v36 <= 4 * v35 || v36 < 0x41)
    {
      if (v36)
      {
        v37 = *(a1 + 360);
        v38 = (v36 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v39 = v37;
        if (v38 <= 2)
        {
          goto LABEL_53;
        }

        v40 = v38 + 1;
        v39 = &v37->i64[v40 & 0x3FFFFFFFFFFFFFFCLL];
        v41 = v37 + 1;
        v42 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v43 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v41[-1] = v42;
          *v41 = v42;
          v41 += 2;
          v43 -= 4;
        }

        while (v43);
        if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_53:
          v44 = &v37->i64[v36];
          do
          {
            *v39++ = -4096;
          }

          while (v39 != v44);
        }
      }

      *(a1 + 368) = 0;
    }

    else
    {
      sub_298B313C4((a1 + 360));
    }
  }

  *(a1 + 392) = 0;

  return sub_298B5A768(a1);
}

size_t sub_298B481B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  result = sub_298B4C9FC(a1, a2, a3);
  if (!*(a2 + 239))
  {
    result = strlen((a2 + 224));
    if (result == 7 && *(a2 + 224) == 1464098655 && *(a2 + 227) == 1179795799)
    {
      *(a1 + 562) = 1;
    }
  }

  if (*(a1 + 560) == 1)
  {
    v10[0] = 0;
    result = sub_298B49FF4(*(a1 + 568), *(a1 + 584), a2, v10);
    if (result)
    {
      if (v10[0][1])
      {
        return result;
      }
    }

    else
    {
      result = sub_298B4A088((a1 + 568), &v9, v10[0]);
      *result = a2;
      *(result + 8) = 0;
    }

    if (!*(a2 + 8))
    {
      v7 = *(a1 + 8);
      v10[0] = "tmp";
      v11 = 259;
      *(a2 + 8) = sub_298B2D9E8(v7, v10);
      v10[0] = 0;
      result = sub_298B49FF4(*(a1 + 568), *(a1 + 584), a2, v10);
      v8 = v10[0];
      if ((result & 1) == 0)
      {
        result = sub_298B4A088((a1 + 568), &v9, v10[0]);
        v8 = result;
        *result = a2;
        *(result + 8) = 0;
      }

      *(v8 + 8) = 1;
    }
  }

  return result;
}

void sub_298B482F0(int32x2_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((a2[1] & 0x802) != 2)
  {
    operator new();
  }

  sub_298B4C204(a1, a2, a3);
  a2[1] &= 0xFFFFFFF8FFFFFFFFLL;
}

void sub_298B483F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((v6 & 0x10) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = a1[38];
    *(a2 + 8) = v6 | 0x10;
    v9 = a2;
    sub_298B250EC(v7 + 56, &v9);
    v6 = *(a2 + 8);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x8000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      (*(*a1 + 296))(a1, a3, 25);
      if ((*(a2 + 8) & 0x40) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  (*(*a1 + 296))(a1, a3, 9);
  v6 = *(a2 + 8);
  if ((v6 & 0x8000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 0x40) == 0)
  {
    return;
  }

LABEL_9:
  v8 = *(*a1 + 296);

  v8(a1, a3, 21);
}

uint64_t sub_298B48540(uint64_t a1, int a2)
{
  result = (*(**(*(a1 + 304) + 8) + 224))(*(*(a1 + 304) + 8));
  if (a2 == 1)
  {
    *(*(a1 + 304) + 500) |= 2u;
  }

  return result;
}

void sub_298B485A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 304);
  if (a3)
  {
    if (a3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = v3[17];
  v5 = v3[18];
  if (v6 < v5)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    v4 = (v6 + 24);
    *(v6 + 2) = 0;
  }

  else
  {
    v7 = v3[16];
    v8 = v6 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_298ADDDA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v13 = 24 * v9;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    v4 = 24 * v9 + 24;
    v14 = (24 * v9 - v8);
    memcpy(v14, v7, v8);
    v3[16] = v14;
    v3[17] = v4;
    v3[18] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  v3[17] = v4;
}

void sub_298B4876C(void *a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v7 = a1[1];
      *&v13 = "tmp";
      v15 = 259;
      v8 = a1;
      v9 = sub_298B2D8D0(v7, &v13, 1);
      (*(*v8 + 192))(v8, v9, 0);
      *&v13 = 2;
    }

    else
    {
      v12 = a1[1];
      *&v13 = "tmp";
      v15 = 259;
      v8 = a1;
      v9 = sub_298B2D8D0(v12, &v13, 1);
      (*(*v8 + 192))(v8, v9, 0);
      *&v13 = 1;
    }

    goto LABEL_14;
  }

  switch(a2)
  {
    case 2:
      v10 = a1[1];
      *&v13 = "tmp";
      v15 = 259;
      v8 = a1;
      v9 = sub_298B2D8D0(v10, &v13, 1);
      (*(*v8 + 192))(v8, v9, 0);
      *&v13 = 3;
LABEL_14:
      *(&v13 + 1) = v9;
      v14 = 0;
      sub_298B4A320(v8[38] + 104, &v13);
      return;
    case 3:
      v11 = a1[1];
      *&v13 = "tmp";
      v15 = 259;
      v8 = a1;
      v9 = sub_298B2D8D0(v11, &v13, 1);
      (*(*v8 + 192))(v8, v9, 0);
      *&v13 = 4;
      goto LABEL_14;
    case 4:
      v2 = *(a1[38] + 112);
      v3 = a1[1];
      *&v13 = "tmp";
      v15 = 259;
      v5 = sub_298B2D8D0(v3, &v13, 1);
      *(v2 - 8) = v5;
      v6 = *(*a1 + 192);

      v6(a1, v5, 0);
      break;
  }
}

uint64_t sub_298B48A0C(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 304);
  *(v7 + 2072) = 0;
  *(v7 + 2076) = a2;
  *(v7 + 2080) = a3;
  *(v7 + 2084) = a4;
  *(v7 + 2088) = a5;
  *(v7 + 2092) = a6;
  *(v7 + 2100) = a7;
  return result;
}

uint64_t sub_298B48A30(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 304);
  *(v7 + 2072) = 1;
  *(v7 + 2076) = a2;
  *(v7 + 2080) = a3;
  *(v7 + 2084) = a4;
  *(v7 + 2088) = a5;
  *(v7 + 2092) = a6;
  *(v7 + 2100) = a7;
  return result;
}

uint64_t sub_298B48A58(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 304);
  *(v7 + 2108) = 1;
  *(v7 + 2112) = a2;
  *(v7 + 2116) = a3;
  *(v7 + 2120) = a4;
  *(v7 + 2124) = a5;
  *(v7 + 2128) = a6;
  *(v7 + 2136) = a7;
  return result;
}

uint64_t sub_298B48A80(uint64_t result, int a2, char a3)
{
  v3 = *(result + 304);
  *(v3 + 2144) = a2;
  *(v3 + 2148) = 1;
  *(*(result + 304) + 2152) = a3;
  return result;
}

void *sub_298B48A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 304);
  result = (v3 + 208);
  v5 = *(v3 + 208);
  if (*(v3 + 216) != v5)
  {
    goto LABEL_2;
  }

  v6 = *(v3 + 228);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * v6;
    v9 = *(v3 + 208);
    while (*v9 != a2)
    {
      if (*v9 == -2)
      {
        v7 = v9;
      }

      ++v9;
      v8 -= 8;
      if (!v8)
      {
        if (!v7)
        {
          goto LABEL_12;
        }

        *v7 = a2;
        --*(v3 + 232);
        *(a2 + 8) |= 0x800000000uLL;
        return result;
      }
    }

    goto LABEL_3;
  }

LABEL_12:
  if (v6 >= *(v3 + 224))
  {
LABEL_2:
    result = sub_298B905B0(result, a2);
LABEL_3:
    *(a2 + 8) |= 0x800000000uLL;
    return result;
  }

  *(v3 + 228) = v6 + 1;
  *(v5 + 8 * v6) = a2;
  *(a2 + 8) |= 0x800000000uLL;
  return result;
}

int32x2_t sub_298B48B78(int32x2_t *a1, void *a2, unsigned __int8 *a3)
{
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v15 = 0;
  if (sub_298B44C70(a3, &v13, 0, 0, 0, 0, 0) && v13 && !v14)
  {
    v6 = *(v13 + 16);
    if ((*(v6 + 8) & 1) == 0 || (**(v6 - 8) ? (v7 = v15 == 0) : (v7 = 0), !v7))
    {
      a2[1] |= 0x20000000000uLL;
    }
  }

  v8 = a2[1];
  if ((v8 & 0x10) == 0)
  {
    v9 = a1[38];
    a2[1] = v8 | 0x10;
    v17 = a2;
    sub_298B250EC(*&v9 + 56, &v17);
  }

  sub_298B61C6C(a1, a3);
  a2[3] = a3;
  v10 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x2000;
  *a2 = 0;
  a2[1] = v10;
  v11 = a1[2];
  if (v11)
  {
    (*(**&v11 + 24))(v11, a2, a3);
  }

  return sub_298B4C2F4(a1, a2);
}

uint64_t sub_298B48CA4(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 == 14)
  {
    v4 = *(a1 + 152);
    if (v4)
    {
      v5 = *(*(a1 + 144) + 32 * v4 - 32);
      v6 = *(a1 + 304);
      v8 = v6[11];
      v7 = v6[12];
      if (v8 < v7)
      {
LABEL_4:
        *v8 = a2;
        *(v8 + 1) = v5;
        v6[11] = v8 + 16;
        return 1;
      }
    }

    else
    {
      v5 = 0;
      v6 = *(a1 + 304);
      v8 = v6[11];
      v7 = v6[12];
      if (v8 < v7)
      {
        goto LABEL_4;
      }
    }

    v13 = v6[10];
    v14 = v8 - v13;
    v15 = (v8 - v13) >> 4;
    v16 = v15 + 1;
    if ((v15 + 1) >> 60)
    {
      sub_298ADDDA0();
    }

    v17 = v7 - v13;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 60))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v19 = (16 * v15);
    *v19 = a2;
    v19[1] = v5;
    v20 = 16 * v15 + 16;
    memcpy(0, v13, v14);
    v6[10] = 0;
    v6[11] = v20;
    v6[12] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    v6[11] = v20;
    return 1;
  }

  v9 = a2[1];
  if ((v9 & 0x10) == 0)
  {
    v10 = *(a1 + 304);
    a2[1] = v9 | 0x10;
    v28 = a2;
    v11 = a3;
    sub_298B250EC(v10 + 56, &v28);
    a3 = v11;
  }

  result = 0;
  switch(a3)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 17:
    case 22:
    case 24:
    case 28:
    case 29:
      return result;
    case 1:
      v21 = a2[1] | 0x40000000000;
      break;
    case 9:
      v21 = a2[1] & 0xFFFFFFFEFFFFFFDFLL | 0x20;
      break;
    case 16:
      v23 = *a2;
      v22 = a2[1];
      v24 = v22 | 0x2000000000;
      a2[1] = v22 | 0x2000000000;
      if (v23)
      {
        return 1;
      }

      if ((v22 & 0x7080) != 0x2000)
      {
        goto LABEL_33;
      }

      a2[1] = v22 | 0x2000000008;
      v25 = sub_298B45440(a2[3]);
      *a2 = v25;
      if (v25)
      {
        return 1;
      }

      v24 = a2[1];
LABEL_33:
      v21 = v24 | 0x100000000;
      break;
    case 18:
    case 23:
      v21 = a2[1] | 0x2000000000;
      break;
    case 19:
      v21 = a2[1] | 0x10000000000;
      break;
    case 20:
      v21 = a2[1] | 0x20000000000;
      break;
    case 21:
      v21 = a2[1] | 0x60;
      break;
    case 25:
      v21 = a2[1] | 0x8000000000;
      break;
    case 26:
      if (*a2)
      {
        return 1;
      }

      v26 = a2[1];
      if ((v26 & 0x7080) != 0x2000)
      {
        goto LABEL_38;
      }

      a2[1] = v26 | 8;
      v27 = sub_298B45440(a2[3]);
      *a2 = v27;
      if (v27)
      {
        return 1;
      }

      v26 = a2[1];
LABEL_38:
      v21 = v26 | 0x4000000000;
      break;
    case 27:
      v21 = a2[1] | 0xC000000000;
      break;
    default:
      return 1;
  }

  a2[1] = v21;
  return 1;
}

void sub_298B48FC4(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = *(a2 + 8);
  if ((v5 & 0x10) == 0)
  {
    v6 = *(a1 + 304);
    *(a2 + 8) = v5 | 0x10;
    v7 = a2;
    sub_298B250EC(v6 + 56, &v7);
    v5 = *(a2 + 8);
  }

  *(a2 + 8) = v5 & 0xFFFF0000FFFFFFFFLL | (a3 << 32);
}

void sub_298B49024(uint64_t a1, int a2, uint64_t a3)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 304);
  v17 = a2;
  v4 = *a3;
  v5 = *(a3 + 8);
  v18 = v20;
  v19 = 0x300000000;
  if (v5 >= 4)
  {
    sub_298B90A44(&v18, v20, v5, 8);
    v6 = v19;
    v7 = v18;
LABEL_5:
    memcpy(&v7[v6], v4, 8 * v5);
    v8 = v19;
    goto LABEL_6;
  }

  if (v5)
  {
    v6 = 0;
    v7 = v20;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:
  LODWORD(v19) = v8 + v5;
  v9 = *(v3 + 528);
  v10 = *(v3 + 520);
  v11 = &v17;
  if (v9 >= *(v3 + 532))
  {
    v15 = (v3 + 520);
    if (v10 <= &v17 && v10 + 48 * v9 > &v17)
    {
      v16 = &v17 - v10;
      sub_298B4A46C(v3 + 520, v9 + 1);
      v10 = *v15;
      v11 = &v16[*v15];
    }

    else
    {
      sub_298B4A46C(v3 + 520, v9 + 1);
      v10 = *v15;
      v11 = &v17;
    }
  }

  v12 = v10 + 48 * *(v3 + 528);
  *v12 = *v11;
  *(v12 + 16) = 0x300000000;
  *(v12 + 8) = v12 + 24;
  v13 = v12 + 8;
  if (*(v11 + 4))
  {
    sub_298AF7A74(v13, v11 + 1);
  }

  ++*(v3 + 528);
  if (v18 != v20)
  {
    free(v18);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_298B491C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 8);
  if ((v7 & 0x10) == 0)
  {
    v8 = *(a1 + 304);
    *(a2 + 8) = v7 | 0x10;
    v9 = a2;
    sub_298B250EC(v8 + 56, &v9);
    v7 = *(a2 + 8);
  }

  *(a2 + 24) = a3;
  *(a2 + 8) = ((a4 << 15) + 0x8000) & 0xF8000 | 0x3020 | v7 & 0xFFFFFFFFFFF03FFFLL;
}

uint64_t sub_298B49290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  if ((*(*a2 + 16))(a2))
  {
    v12 = *(a1 + 144);
    v13 = *(a1 + 152);
    if (v13)
    {
      v14 = v12 + 32 * v13;
      v15 = *(v14 - 32);
      v16 = *(v14 - 16);
      v17 = *(a1 + 152);
      v32 = v15;
      v33 = v16;
      v18 = &v32;
      if (v13 >= *(a1 + 156))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = 0;
      v32 = 0u;
      v33 = 0u;
      v18 = &v32;
      if (!*(a1 + 156))
      {
LABEL_23:
        if (v12 <= &v32 && v12 + 32 * v17 > &v32)
        {
          v31 = &v32 - v12;
          sub_298B90A44(a1 + 144, (a1 + 160), v17 + 1, 32);
          v12 = *(a1 + 144);
          v18 = &v31[v12];
        }

        else
        {
          sub_298B90A44(a1 + 144, (a1 + 160), v17 + 1, 32);
          v12 = *(a1 + 144);
          v18 = &v32;
        }
      }
    }

    v22 = (v12 + 32 * *(a1 + 152));
    v23 = *(v18 + 1);
    *v22 = *v18;
    v22[1] = v23;
    ++*(a1 + 152);
    result = (*(*a1 + 168))(a1, a2, 0);
    if (a3)
    {
      (*(*a1 + 640))(a1, a5, 0, 1, 0);
      result = (*(*a1 + 192))(a1, a3, 0);
      if (a4)
      {
        v24 = sub_298B44A24(a4, *(a1 + 8), 0, 0);
        result = (*(*a1 + 616))(a1, v24, 0, 0);
      }
    }

    v25 = *(a1 + 152);
    if (v25 >= 2)
    {
      v26 = *(a1 + 144) + 32 * v25;
      v27 = *(v26 - 64);
      if (v27)
      {
        if (*(v26 - 32) != v27 || *(v26 - 24) != *(v26 - 56))
        {
          result = (*(*a1 + 160))(a1);
          LODWORD(v25) = *(a1 + 152);
        }
      }

      *(a1 + 152) = v25 - 1;
    }

    goto LABEL_20;
  }

  v19 = *(a1 + 8);
  *&v32 = "The usage of .zerofill is restricted to sections of ZEROFILL type. Use .zero or .space instead.";
  v34 = 259;
  *(v19 + 2056) = 1;
  v35 = a6;
  v36[0] = &unk_2A1F1BDB8;
  v36[1] = &v35;
  v36[2] = &v32;
  v37 = v36;
  sub_298B2FFE4(v19, a6, v36);
  result = v37;
  if (v37 == v36)
  {
    result = (*(*v37 + 32))(v37);
    v30 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v37)
  {
    result = (*(*v37 + 40))();
    v21 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_20:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B49694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_298B496E4(uint64_t a1)
{
  if (-1171354717 * ((*(a1 + 32) - *(a1 + 24)) >> 3))
  {
    v2 = *(*(a1 + 304) + 8);
    if (*(a1 + 320) == 1)
    {
      sub_298B38E2C(a1, *(*(a1 + 304) + 8), 1);
    }

    if (*(a1 + 321) == 1)
    {
      sub_298B38E2C(a1, v2, 0);
    }
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v3 = *(a1 + 304);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v12 = *v4;
      v13 = *(*v4 + 8);
      if ((v13 & 0x802) == 2)
      {
        goto LABEL_10;
      }

      v14 = *v12;
      if (!*v12)
      {
        if ((v13 & 0x7080) != 0x2000)
        {
          goto LABEL_10;
        }

        *(v12 + 8) = v13 | 8;
        v14 = sub_298B45440(*(v12 + 24));
        *v12 = v14;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      if (v14 == qword_2A13C3628 || (*(v12 + 8) & 0x7000) == 0x2000)
      {
        goto LABEL_10;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      v8 = v7 - 1;
      v9 = (v7 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v10 = (v62 + 16 * v9);
      v11 = *v10;
      if (v14 != *v10)
      {
        break;
      }

LABEL_9:
      v10[1] = v12;
LABEL_10:
      if (++v4 == v5)
      {
        v3 = *(a1 + 304);
        goto LABEL_62;
      }
    }

    v16 = 0;
    v17 = 1;
    while (v11 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 == -8192;
      }

      if (v18)
      {
        v16 = v10;
      }

      v19 = v9 + v17++;
      v9 = v19 & v8;
      v10 = (v62 + 16 * (v19 & v8));
      v11 = *v10;
      if (v14 == *v10)
      {
        goto LABEL_9;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

    if (4 * v6 + 4 < 3 * v7)
    {
      if (v7 + ~v6 - HIDWORD(v63) > v7 >> 3)
      {
LABEL_18:
        v15 = *v10;
LABEL_19:
        v6 = v63 + 1;
        LODWORD(v63) = v63 + 1;
        if (v15 != -4096)
        {
          --HIDWORD(v63);
        }

        *v10 = v14;
        v10[1] = 0;
        goto LABEL_9;
      }

      v20 = v14;
      sub_298B2709C(&v62, v7);
      v14 = v20;
      v7 = v64;
      v28 = v64 - 1;
      v29 = (v64 - 1) & ((v20 >> 4) ^ (v20 >> 9));
      v10 = (v62 + 16 * v29);
      v30 = *v10;
      if (v20 != *v10)
      {
        v24 = 0;
        v31 = 1;
        while (v30 != -4096)
        {
          if (v24)
          {
            v32 = 0;
          }

          else
          {
            v32 = v30 == -8192;
          }

          if (v32)
          {
            v24 = v10;
          }

          v33 = v29 + v31++;
          v29 = v33 & v28;
          v10 = (v62 + 16 * (v33 & v28));
          v30 = *v10;
          if (v20 == *v10)
          {
LABEL_57:
            v14 = v20;
            v15 = v20;
            goto LABEL_19;
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
LABEL_37:
      v20 = v14;
      sub_298B2709C(&v62, 2 * v7);
      v14 = v20;
      v7 = v64;
      v21 = v64 - 1;
      v22 = (v64 - 1) & ((v20 >> 4) ^ (v20 >> 9));
      v10 = (v62 + 16 * v22);
      v23 = *v10;
      if (v20 != *v10)
      {
        v24 = 0;
        v25 = 1;
        while (v23 != -4096)
        {
          if (v24)
          {
            v26 = 0;
          }

          else
          {
            v26 = v23 == -8192;
          }

          if (v26)
          {
            v24 = v10;
          }

          v27 = v22 + v25++;
          v22 = v27 & v21;
          v10 = (v62 + 16 * (v27 & v21));
          v23 = *v10;
          if (v20 == *v10)
          {
            goto LABEL_57;
          }
        }

LABEL_58:
        if (v24)
        {
          v10 = v24;
        }

        v14 = v20;
        goto LABEL_18;
      }
    }

    v15 = v14;
    goto LABEL_19;
  }

LABEL_62:
  v34 = *(v3 + 32);
  v35 = *(v3 + 40);
  if (v34 != v35)
  {
    if (v64)
    {
      v36 = v62;
      v37 = v64 - 1;
      do
      {
        v38 = *v34 + 104;
        v39 = *(*v34 + 112);
        if (v39 != v38)
        {
          v40 = 0;
          do
          {
            while (1)
            {
              v41 = ((v39 >> 4) ^ (v39 >> 9)) & v37;
              v42 = *(v36 + 16 * v41);
              if (v42 != v39)
              {
                break;
              }

LABEL_69:
              v43 = *(v36 + 16 * v41 + 8);
              if (v43)
              {
                v40 = v43;
              }

              *(v39 + 24) = v40;
              v39 = *(v39 + 8);
              if (v39 == v38)
              {
                goto LABEL_65;
              }
            }

            v44 = 1;
            while (v42 != -4096)
            {
              v45 = v41 + v44++;
              v41 = v45 & v37;
              v42 = *(v36 + 16 * v41);
              if (v42 == v39)
              {
                goto LABEL_69;
              }
            }

            *(v39 + 24) = v40;
            v39 = *(v39 + 8);
          }

          while (v39 != v38);
        }

LABEL_65:
        v34 += 8;
      }

      while (v34 != v35);
    }

    else
    {
      do
      {
        v46 = *v34 + 104;
        for (i = *(*v34 + 112); i != v46; i = *(i + 8))
        {
          *(i + 24) = 0;
        }

        v34 += 8;
      }

      while (v34 != v35);
    }
  }

  v48 = *(v3 + 2184);
  v49 = *(v3 + 2192);
  v50 = *(v3 + 2184);
  if (v50 != v49)
  {
    while (1)
    {
      v51 = *(*v50 + 16);
      v52 = *(v51 + 8);
      if ((v52 & 0x10) != 0)
      {
        v54 = *(v50[1] + 16);
        v55 = *(v54 + 8);
        if ((v55 & 0x10) == 0)
        {
LABEL_89:
          v56 = *(a1 + 304);
          *(v54 + 8) = v55 | 0x10;
          v65 = v54;
          sub_298B250EC(v56 + 56, &v65);
          *(v54 + 8) |= 0x20uLL;
        }
      }

      else
      {
        v53 = *(a1 + 304);
        *(v51 + 8) = v52 | 0x10;
        v65 = v51;
        sub_298B250EC(v53 + 56, &v65);
        *(v51 + 8) |= 0x20uLL;
        v54 = *(v50[1] + 16);
        v55 = *(v54 + 8);
        if ((v55 & 0x10) == 0)
        {
          goto LABEL_89;
        }
      }

      v50 += 3;
      if (v50 == v49)
      {
        v57 = sub_298B2DB08(*v3, "__LLVM", 6uLL, "__cg_profile", 12, 0, 0, 0, 0);
        v58 = v57;
        if ((*(v57 + 44) & 4) == 0)
        {
          v65 = v57;
          sub_298AE7E30(v3 + 32, &v65);
          *(v58 + 44) |= 4u;
        }

        operator new();
      }
    }
  }

  v59 = *(a1 + 304);
  if (*(v59[3] + 32) == 1)
  {
    v60 = *(*(*v59 + 160) + 672);
    if ((*(v60 + 44) & 4) == 0)
    {
      v65 = *(*(*v59 + 160) + 672);
      sub_298AE7E30((v59 + 4), &v65);
      *(v60 + 44) |= 4u;
    }

    operator new();
  }

  sub_298B5187C(a1);
  return MEMORY[0x29C2945E0](v62, 8);
}

void sub_298B49DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[12] = *MEMORY[0x29EDCA608];
  v6 = sub_298B4B8F0(a1, 0);
  v27 = v29;
  v28 = 0x400000000;
  v24 = v26;
  v25 = xmmword_298D1A100;
  (*(**(*(a1 + 304) + 16) + 32))(*(*(a1 + 304) + 16), a2, &v24, &v27, a3);
  if (v28)
  {
    v7 = v27;
    v8 = *(v6 + 128);
    v9 = 24 * v28;
    v10 = v27;
    do
    {
      *(v10 + 2) += *(v6 + 72);
      v11 = *(v6 + 120);
      v12 = v10;
      if (v8 >= *(v6 + 132))
      {
        v15 = v6 + 120;
        v16 = (v6 + 136);
        v17 = v8 + 1;
        if (v11 <= v10 && v11 + 24 * v8 > v10)
        {
          v19 = *(v6 + 120);
          sub_298B90A44(v15, v16, v17, 24);
          v12 = &v7[*(v6 + 120) - v19];
          v11 = *(v6 + 120);
        }

        else
        {
          sub_298B90A44(v15, v16, v17, 24);
          v11 = *(v6 + 120);
          v12 = v10;
        }
      }

      v13 = v11 + 24 * *(v6 + 128);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      v8 = *(v6 + 128) + 1;
      *(v6 + 128) = v8;
      v10 += 24;
      v7 += 24;
      v9 -= 24;
    }

    while (v9);
  }

  *(v6 + 50) = 1;
  *(v6 + 56) = a3;
  v21 = v24;
  v20 = v25;
  v22 = *(v6 + 72);
  if (*(v6 + 80) < (v22 + v25))
  {
    sub_298B90C08(v6 + 64, (v6 + 88), v22 + v25, 1);
    v22 = *(v6 + 72);
  }

  if (v20)
  {
    memcpy((*(v6 + 64) + v22), v21, v20);
    v22 = *(v6 + 72);
  }

  *(v6 + 72) = v22 + v20;
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  v23 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B49FF4(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_4;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_4:
  *a4 = v6;
  return v8;
}

void *sub_298B4A088(_DWORD *a1, uint64_t *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[4];
  if (4 * v3 + 4 >= 3 * v4)
  {
    v4 *= 2;
LABEL_7:
    v6 = a1;
    sub_298B4A158(a1, v4);
    v8 = 0;
    sub_298B49FF4(*v6, v6[4], *a2, &v8);
    a1 = v6;
    a3 = v8;
    ++v6[2];
    if (*a3 == -4096)
    {
      return a3;
    }

    goto LABEL_4;
  }

  if (v4 + ~v3 - a1[3] <= v4 >> 3)
  {
    goto LABEL_7;
  }

  ++a1[2];
  if (*a3 != -4096)
  {
LABEL_4:
    --a1[3];
  }

  return a3;
}

void *sub_298B4A158(uint64_t a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
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
      v16 = 16 * v3;
      v17 = v4;
      do
      {
        v18 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          sub_298B49FF4(*a1, *(a1 + 16), v18, &v25);
          v19 = v25;
          *v25 = *v17;
          *(v19 + 8) = *(v17 + 8);
          ++*(a1 + 8);
        }

        v17 += 16;
        v16 -= 16;
      }

      while (v16);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    if (((v20 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_25;
    }

    v21 = ((v20 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result + 2;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 2) = -4096;
      *v22 = -4096;
      v22 += 4;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_25:
      v24 = &result[2 * v20];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v24);
    }
  }

  return result;
}

void sub_298B4A320(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_298B4A46C(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = sub_298B90848(a1, (a1 + 16), a2, 48, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 8;
    v9 = v5 + 8;
    do
    {
      v10 = v9 - 8;
      *(v8 - 2) = *(v9 - 2);
      *v8 = v8 + 2;
      v8[1] = 0x300000000;
      if (*(v9 + 2))
      {
        sub_298AF7A74(v8, v9);
      }

      v8 += 6;
      v9 += 48;
    }

    while (v10 + 48 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[48 * v11 - 40];
      v13 = -48 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 6;
        v13 += 48;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

const void *sub_298B4A5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 904);
  if (*v2 != 1)
  {
    return *(a1 + 472);
  }

  v3 = *(a2 + 240) & 0xFFFFFFFFFFFFFFF8;
  if (v3)
  {
    if (*(v3 + 8))
    {
      v7 = *(v3 - 8);
      v8 = *v7;
      v4 = v7 + 2;
      v3 = v8;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v6 = 640;
  }

  else
  {
    v4 = 0;
    v6 = 128;
  }

  v9 = *(a1 + 472);
  v11 = *(v9 + 200);
  v10 = *(v9 + 208);
  v19 = 261;
  v18[0] = v11;
  v18[1] = v10;
  v17 = 261;
  v16[0] = v4;
  v16[1] = v3;
  v12 = *(a2 + 232);
  v13 = *(a2 + 8);
  sub_298B996A4(v16, v20);
  if (v21 >= 0)
  {
    v14 = v21;
  }

  else
  {
    v14 = v20[1];
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    operator delete(v20[0]);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_16:
    v15 = 0;
    return sub_298B2DE08(v2, v18, 1, v6, 0, v15, 1, v12, v13);
  }

  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_14:
  v15 = sub_298B2D288(v2, v16);
  return sub_298B2DE08(v2, v18, 1, v6, 0, v15, 1, v12, v13);
}

void sub_298B4A6D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 0x100000000;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 144) = a1 + 160;
  *(a1 + 288) = 0;
  *(a1 + 295) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 152) = 0x400000001;
  *a1 = &unk_2A1F1C8E8;
  operator new();
}

void *sub_298B4A8F0(uint64_t a1)
{
  *a1 = &unk_2A1F1C8E8;
  v2 = *(a1 + 552);
  v3 = *(a1 + 536);
  if (v2)
  {
    v4 = 40 * v2;
    v5 = (v3 + 24);
    do
    {
      if ((*(v5 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v5 - 2);
        if (v5 != v6)
        {
          free(v6);
        }
      }

      v5 += 5;
      v4 -= 40;
    }

    while (v4);
    v3 = *(a1 + 536);
  }

  MEMORY[0x29C2945E0](v3, 8);
  v7 = *(a1 + 440);
  if (v7 != (a1 + 456))
  {
    free(v7);
  }

  v8 = *(a1 + 384);
  if (v8 != (a1 + 400))
  {
    free(v8);
  }

  MEMORY[0x29C2945E0](*(a1 + 360), 8);
  v9 = *(a1 + 328);
  if (v9 != (a1 + 344))
  {
    free(v9);
  }

  v10 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v10)
  {
    v11 = sub_298B23D14(v10);
    MEMORY[0x29C2945F0](v11, 0x10F2C40178988D9);
  }

  return sub_298B5A5B8(a1);
}

uint64_t sub_298B4AA14(uint64_t a1)
{
  if (*(a1 + 300) == 1)
  {
    return *(a1 + 304);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298B4AA30(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  if (v2 && (v3 = *(*(result + 144) + 32 * v2 - 32), (v20 = v3) != 0))
  {
    v4 = *(result + 336);
    if (v4)
    {
      v5 = *(result + 328);
      v6 = *(v3 + 160);
      v7 = 8 * v4;
      do
      {
        v8 = *v5;
        if (v6 >= *(v3 + 164))
        {
          v10 = result;
          v11 = a2;
          sub_298B90A44(v3 + 152, (v3 + 168), v6 + 1, 16);
          a2 = v11;
          result = v10;
          v6 = *(v3 + 160);
        }

        v9 = (*(v3 + 152) + 16 * v6);
        *v9 = v8;
        v9[1] = 0;
        v6 = *(v3 + 160) + 1;
        *(v3 + 160) = v6;
        ++v5;
        v7 -= 8;
      }

      while (v7);
      *(result + 336) = 0;
    }

    v13 = *(result + 432);
    v14 = *(v3 + 160);
    if (v14 >= *(v3 + 164))
    {
      v18 = result;
      v19 = a2;
      sub_298B90A44(v3 + 152, (v3 + 168), v14 + 1, 16);
      a2 = v19;
      result = v18;
      LODWORD(v14) = *(v3 + 160);
    }

    v15 = (*(v3 + 152) + 16 * v14);
    *v15 = a2;
    v15[1] = v13;
    ++*(v3 + 160);
    return sub_298B4ABC8((result + 360), &v20);
  }

  else
  {
    v12 = *(result + 336);
    if (v12 >= *(result + 340))
    {
      v16 = result;
      v17 = a2;
      sub_298B90A44(result + 328, (result + 344), v12 + 1, 8);
      a2 = v17;
      result = v16;
      LODWORD(v12) = *(v16 + 336);
    }

    *(*(result + 328) + 8 * v12) = a2;
    ++*(result + 336);
  }

  return result;
}

uint64_t sub_298B4ABC8(uint64_t *a1, uint64_t *a2)
{
  if (!*(a1 + 2))
  {
    v10 = (a1 + 3);
    v11 = a1[3];
    v12 = *(a1 + 8);
    v13 = v11;
    if (v12)
    {
      v14 = *a2;
      v15 = 8 * v12;
      v13 = a1[3];
      while (*v13 != v14)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_18;
        }
      }
    }

    if (v13 != &v11[v12])
    {
      return 0;
    }

    v14 = *a2;
LABEL_18:
    if (v12 >= *(a1 + 9))
    {
      sub_298B90A44(v10, a1 + 5, v12 + 1, 8);
      *(a1[3] + 8 * *(a1 + 8)) = v14;
      v21 = *(a1 + 8) + 1;
      *(a1 + 8) = v21;
      if (v21 >= 5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11[v12] = v14;
      v21 = *(a1 + 8) + 1;
      *(a1 + 8) = v21;
      if (v21 >= 5)
      {
LABEL_20:
        v22 = a1[3];
        v23 = &v22[v21];
        while (1)
        {
          v28 = *(a1 + 4);
          if (!v28)
          {
            break;
          }

          v24 = v28 - 1;
          v25 = ((*v22 >> 4) ^ (*v22 >> 9)) & v24;
          v26 = (*a1 + 8 * v25);
          v27 = *v26;
          if (*v22 != *v26)
          {
            v30 = 0;
            v31 = 1;
            while (v27 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v27 == -8192;
              }

              if (v32)
              {
                v30 = v26;
              }

              v33 = v25 + v31++;
              v25 = v33 & v24;
              v26 = (*a1 + 8 * v25);
              v27 = *v26;
              if (*v22 == *v26)
              {
                goto LABEL_22;
              }
            }

            if (v30)
            {
              v29 = v30;
            }

            else
            {
              v29 = v26;
            }

            goto LABEL_25;
          }

LABEL_22:
          if (++v22 == v23)
          {
            return 1;
          }
        }

        v29 = 0;
LABEL_25:
        *sub_298B51A64(a1, v22, v29) = *v22;
        goto LABEL_22;
      }
    }

    return 1;
  }

  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & v5;
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return 0;
    }

    v34 = 0;
    v35 = 1;
    while (v8 != -4096)
    {
      result = 0;
      if (v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = v8 == -8192;
      }

      if (v36)
      {
        v34 = v7;
      }

      v37 = v6 + v35++;
      v6 = v37 & v5;
      v7 = (v4 + 8 * v6);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return result;
      }
    }

    if (v34)
    {
      v16 = v34;
    }

    else
    {
      v16 = v7;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_298B51A64(a1, a2, v16);
  v19 = *a2;
  *v18 = v19;
  v20 = *(a1 + 8);
  if (v20 >= *(a1 + 9))
  {
    sub_298B90A44((a1 + 3), a1 + 5, v20 + 1, 8);
    LODWORD(v20) = *(a1 + 8);
  }

  *(a1[3] + 8 * v20) = v19;
  ++*(a1 + 8);
  return 1;
}

void *sub_298B4AE5C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 38);
  if (v3)
  {
    v4 = *(result[18] + 32 * v3 - 32);
    if (v4)
    {
      v7 = *(result + 84);
      if (v7)
      {
        v8 = result[41];
        v9 = *(v4 + 160);
        v10 = 8 * v7;
        do
        {
          v11 = *v8;
          v12 = *(result + 108);
          if (v9 >= *(v4 + 164))
          {
            v14 = result;
            sub_298B90A44(v4 + 152, (v4 + 168), v9 + 1, 16);
            result = v14;
            v9 = *(v4 + 160);
          }

          v13 = (*(v4 + 152) + 16 * v9);
          *v13 = v11;
          v13[1] = v12;
          v9 = *(v4 + 160) + 1;
          *(v4 + 160) = v9;
          ++v8;
          v10 -= 8;
        }

        while (v10);
        *(result + 84) = 0;
      }

      v15 = *(v4 + 160);
      if (v15)
      {
        v16 = *(result + 108);
        v17 = *(v4 + 152);
        v18 = v17;
        do
        {
          if (v18[2] == v16)
          {
            v19 = *v18;
            v19[3] = a3;
            v20 = v19[1] & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
            *v19 = a2;
            v19[1] = v20;
            v17 = *(v4 + 152);
            v21 = *(v4 + 160);
            v22 = &v17[4 * v21] - (v18 + 4);
            if (v22)
            {
              result = memmove(v18, v18 + 4, v22 - 4);
              LODWORD(v21) = *(v4 + 160);
              v17 = *(v4 + 152);
            }

            v18 -= 4;
            v15 = v21 - 1;
            *(v4 + 160) = v15;
          }

          v18 += 4;
        }

        while (v18 != &v17[4 * v15]);
      }
    }
  }

  return result;
}

uint64_t sub_298B4AFB8(uint64_t result)
{
  v1 = result;
  v64 = *MEMORY[0x29EDCA608];
  v2 = *(result + 448);
  if (v2)
  {
    v3 = *(result + 440);
    v4 = "unresolved relocation offset";
    v5 = &v3[5 * v2];
    v58 = v5;
    do
    {
      v6 = *v3;
      if (!*v3 || !*v6 && ((*(v6 + 8) & 0x7080) != 0x2000 || (*(v6 + 8) |= 8uLL, v19 = sub_298B45440(*(v6 + 24)), (*v6 = v19) == 0)))
      {
        v20 = *(v1 + 8);
        v21 = v3[3];
        v59 = v4;
        v60 = 259;
        *(v20 + 2056) = 1;
        v61 = v21;
        v62[0] = &unk_2A1F1BDB8;
        v62[1] = &v61;
        v62[2] = &v59;
        v63 = v62;
        sub_298B2FFE4(v20, v21, v62);
        result = v63;
        if (v63 == v62)
        {
          result = (*(*v63 + 32))(v63);
        }

        else if (v63)
        {
          result = (*(*v63 + 40))();
        }

        goto LABEL_4;
      }

      v7 = *(v1 + 152);
      if (v7)
      {
        v8 = *(*(v1 + 144) + 32 * v7 - 32);
        if (v8)
        {
          v9 = v3[4];
          v10 = *(v9 + 72);
          v11 = *(v1 + 336);
          if (v11)
          {
            v12 = v4;
            v13 = *(v1 + 328);
            v14 = *(v8 + 160);
            v15 = 8 * v11;
            do
            {
              v16 = *v13;
              v17 = *(v1 + 432);
              if (v14 >= *(v8 + 164))
              {
                sub_298B90A44(v8 + 152, (v8 + 168), v14 + 1, 16);
                v14 = *(v8 + 160);
              }

              v18 = (*(v8 + 152) + 16 * v14);
              *v18 = v16;
              v18[1] = v17;
              v14 = *(v8 + 160) + 1;
              *(v8 + 160) = v14;
              ++v13;
              v15 -= 8;
            }

            while (v15);
            *(v1 + 336) = 0;
            v4 = v12;
            v5 = v58;
          }

          v22 = *(v8 + 160);
          if (v22)
          {
            v23 = *(v1 + 432);
            v24 = *(v8 + 152);
            v25 = v24;
            do
            {
              if (v25[2] == v23)
              {
                v26 = *v25;
                v26[3] = v10;
                v27 = v26[1] & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
                *v26 = v9;
                v26[1] = v27;
                v24 = *(v8 + 152);
                v28 = *(v8 + 160);
                v29 = &v24[4 * v28] - (v25 + 4);
                if (v29)
                {
                  memmove(v25, v25 + 4, v29 - 4);
                  LODWORD(v28) = *(v8 + 160);
                  v24 = *(v8 + 152);
                }

                v25 -= 4;
                v22 = v28 - 1;
                *(v8 + 160) = v22;
              }

              v25 += 4;
            }

            while (v25 != &v24[4 * v22]);
          }
        }
      }

      v30 = *v3;
      *(v3 + 4) += *(*v3 + 24);
      result = *v30;
      if (!*v30)
      {
        if ((*(v30 + 8) & 0x7080) != 0x2000)
        {
          result = 0;
          v31 = (v3 + 1);
          LOBYTE(v32) = MEMORY[0x30];
          if (MEMORY[0x30] > 0xEu)
          {
LABEL_38:
            v42 = v3[4];
            result = v42 + 120;
            v43 = *(v42 + 120);
            v44 = *(v42 + 128);
            if (v44 >= *(v42 + 132))
            {
              if (v43 <= v31 && v43 + 24 * v44 > v31)
              {
                v56 = v31 - v43;
                result = sub_298B90A44(result, (v42 + 136), v44 + 1, 24);
                v43 = *(v42 + 120);
                v31 = (v43 + v56);
              }

              else
              {
                result = sub_298B90A44(result, (v42 + 136), v44 + 1, 24);
                v43 = *(v42 + 120);
              }
            }

            v45 = v43 + 24 * *(v42 + 128);
            v46 = *v31;
            *(v45 + 16) = *(v31 + 2);
            *v45 = v46;
            ++*(v42 + 128);
            goto LABEL_4;
          }

          goto LABEL_31;
        }

        *(v30 + 8) |= 8uLL;
        result = sub_298B45440(*(v30 + 24));
        *v30 = result;
      }

      v31 = (v3 + 1);
      v32 = *(result + 48);
      if (v32 > 0xE)
      {
        goto LABEL_38;
      }

LABEL_31:
      v33 = 1 << v32;
      if ((v33 & 0x40A0) != 0)
      {
        v34 = *(result + 96);
        v35 = *(result + 104);
        if (v35 >= *(result + 108))
        {
          if (v34 <= v31 && v34 + 24 * v35 > v31)
          {
            v52 = v31 - v34;
            v53 = result;
            sub_298B90A44(result + 96, (result + 112), v35 + 1, 24);
            result = v53;
            v34 = *(v53 + 96);
            v31 = (v34 + v52);
          }

          else
          {
            v48 = result;
            sub_298B90A44(result + 96, (result + 112), v35 + 1, 24);
            result = v48;
            v34 = *(v48 + 96);
          }
        }

        v36 = v34 + 24 * *(result + 104);
        v37 = *v31;
        *(v36 + 16) = *(v31 + 2);
        *v36 = v37;
        ++*(result + 104);
      }

      else
      {
        if ((v33 & 0x2002) == 0)
        {
          goto LABEL_38;
        }

        v38 = *(result + 120);
        v39 = *(result + 128);
        if (v39 >= *(result + 132))
        {
          if (v38 <= v31 && v38 + 24 * v39 > v31)
          {
            v54 = v31 - v38;
            v55 = result;
            sub_298B90A44(result + 120, (result + 136), v39 + 1, 24);
            result = v55;
            v38 = *(v55 + 120);
            v31 = (v38 + v54);
          }

          else
          {
            v50 = result;
            sub_298B90A44(result + 120, (result + 136), v39 + 1, 24);
            result = v50;
            v38 = *(v50 + 120);
          }
        }

        v40 = v38 + 24 * *(result + 128);
        v41 = *v31;
        *(v40 + 16) = *(v31 + 2);
        *v40 = v41;
        ++*(result + 128);
      }

LABEL_4:
      v3 += 5;
    }

    while (v3 != v5);
  }

  *(v1 + 448) = 0;
  v57 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B4B4F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1[38] + 48) - 27) < 2)
  {
    goto LABEL_16;
  }

  v4 = *a2;
  if (!*a2)
  {
    if ((*(a2 + 8) & 0x7080) != 0x2000)
    {
      goto LABEL_16;
    }

    *(a2 + 8) |= 8uLL;
    v14 = a1;
    v15 = a4;
    v16 = a3;
    v17 = a2;
    v18 = sub_298B45440(*(a2 + 24));
    a2 = v17;
    a3 = v16;
    a4 = v15;
    v4 = v18;
    a1 = v14;
    *v17 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  v5 = *a3;
  if (*a3)
  {
LABEL_6:
    if (v4 != v5)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if ((*(a3 + 8) & 0x7080) == 0x2000)
  {
    *(a3 + 8) |= 8uLL;
    v6 = a1;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = sub_298B45440(*(a3 + 24));
    a2 = v9;
    a3 = v8;
    a4 = v7;
    v5 = v10;
    a1 = v6;
    *v8 = v5;
    goto LABEL_6;
  }

  if (v4)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((*(a2 + 8) & 0x7000) != 0x2000 && (*(a3 + 8) & 0x7000) != 0x2000)
  {
    v11 = *(a2 + 24) - *(a3 + 24);
    v12 = *(*a1 + 520);

    return v12();
  }

LABEL_16:

  return sub_298B623B8(a1, a2, a3, a4);
}

uint64_t sub_298B4B68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a1 + 304) + 48) - 27) < 2)
  {
    goto LABEL_16;
  }

  v3 = *a2;
  if (!*a2)
  {
    if ((*(a2 + 8) & 0x7080) != 0x2000)
    {
      goto LABEL_16;
    }

    *(a2 + 8) |= 8uLL;
    v11 = a1;
    v12 = a3;
    v13 = a2;
    v14 = sub_298B45440(*(a2 + 24));
    a2 = v13;
    a3 = v12;
    v3 = v14;
    a1 = v11;
    *v13 = v3;
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  v4 = *a3;
  if (*a3)
  {
LABEL_6:
    if (v3 != v4)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if ((*(a3 + 8) & 0x7080) == 0x2000)
  {
    *(a3 + 8) |= 8uLL;
    v5 = a1;
    v6 = a3;
    v7 = a2;
    v8 = sub_298B45440(*(a3 + 24));
    a2 = v7;
    a3 = v6;
    v4 = v8;
    a1 = v5;
    *v6 = v4;
    goto LABEL_6;
  }

  if (v3)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((*(a2 + 8) & 0x7000) != 0x2000 && (*(a3 + 8) & 0x7000) != 0x2000)
  {
    v9 = *(a2 + 24) - *(a3 + 24);

    return sub_298B5ADC0(a1, v9, 0);
  }

LABEL_16:

  return sub_298B62638(a1, a2, a3);
}

double sub_298B4B7E4(uint64_t a1)
{
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

uint64_t sub_298B4B8F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 312);
  if (v2 == *(*(*(a1 + 144) + 32 * *(a1 + 152) - 32) + 112))
  {
    goto LABEL_11;
  }

  v3 = *v2;
  if (!*v2 || *(v3 + 48) != 1)
  {
    goto LABEL_11;
  }

  if (*(v3 + 50) == 1)
  {
    if (*(v3 + 51))
    {
      goto LABEL_11;
    }

    v4 = *(a1 + 304);
    if (*(v4 + 496))
    {
      if (*(v4 + 500))
      {
        return v3;
      }

LABEL_11:
      operator new();
    }

    if (a2 && *(v3 + 56) != a2)
    {
      goto LABEL_11;
    }
  }

  return v3;
}

void sub_298B4BB48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x10) == 0)
  {
    v3 = *(a1 + 304);
    *(a2 + 8) = v2 | 0x10;
    v4 = a2;
    sub_298B250EC(v3 + 56, &v4);
  }
}

uint64_t sub_298B4BB8C(uint64_t result, char a2, char a3)
{
  *(result + 320) = a2;
  *(result + 321) = a3;
  return result;
}

void sub_298B4BB98(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v59 = *MEMORY[0x29EDCA608];
  sub_298B61C6C(a1, a2);
  v8 = sub_298B4B8F0(a1, 0);
  v9 = v8;
  v10 = *(a1 + 152);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *(*(a1 + 144) + 32 * v10 - 32);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(v8 + 72);
  v13 = *(a1 + 336);
  if (v13)
  {
    v47 = a4;
    v14 = *(a1 + 328);
    v15 = *(v11 + 160);
    v16 = 8 * v13;
    do
    {
      v17 = *v14;
      v18 = *(a1 + 432);
      if (v15 >= *(v11 + 164))
      {
        sub_298B90A44(v11 + 152, (v11 + 168), v15 + 1, 16);
        v15 = *(v11 + 160);
      }

      v19 = (*(v11 + 152) + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      v15 = *(v11 + 160) + 1;
      *(v11 + 160) = v15;
      ++v14;
      v16 -= 8;
    }

    while (v16);
    *(a1 + 336) = 0;
    a4 = v47;
  }

  v20 = *(v11 + 160);
  if (v20)
  {
    v21 = *(a1 + 432);
    v22 = *(v11 + 152);
    v23 = v22;
    do
    {
      if (v23[2] == v21)
      {
        v24 = *v23;
        v24[3] = v12;
        v25 = v24[1] & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
        *v24 = v9;
        v24[1] = v25;
        v22 = *(v11 + 152);
        v26 = *(v11 + 160);
        v27 = &v22[4 * v26] - (v23 + 4);
        if (v27)
        {
          memmove(v23, v23 + 4, v27 - 4);
          LODWORD(v26) = *(v11 + 160);
          v22 = *(v11 + 152);
        }

        v23 -= 4;
        v20 = v26 - 1;
        *(v11 + 160) = v20;
      }

      v23 += 4;
    }

    while (v23 != &v22[4 * v20]);
  }

  v28 = *(a1 + 152);
  if (v28)
  {
    v29 = *(*(a1 + 144) + 32 * v28 - 32);
  }

  else
  {
LABEL_18:
    v29 = 0;
  }

  sub_298B33030(a1, v29);
  v30 = (*(*a1 + 72))(a1);
  v50 = 0;
  v51 = 0;
  v53 = 0;
  v52 = 0;
  if (*a2 == 1)
  {
    v31 = *(a2 + 16);
    v55 = v31;
LABEL_21:
    if (8 * a3 <= 0x3F && 0xFFFFFFFFFFFFFFFFLL >> (-8 * a3) < v31 && ((v32 = -1 << (8 * a3 - 1), v32 > v31) || v31 > ~v32))
    {
      v45 = *(a1 + 8);
      v48[0] = "value evaluated as ";
      v48[2] = &v55;
      v49 = 3587;
      v50 = v48;
      v52 = " is out of range.";
      v54 = 770;
      *(v45 + 2056) = 1;
      v56 = a4;
      v57[0] = &unk_2A1F1BDB8;
      v57[1] = &v56;
      v57[2] = &v50;
      v58 = v57;
      sub_298B2FFE4(v45, a4, v57);
      if (v58 == v57)
      {
        (*(*v58 + 32))(v58);
      }

      else if (v58)
      {
        (*(*v58 + 40))();
      }
    }

    else
    {
      (*(*a1 + 520))(a1);
    }

    goto LABEL_39;
  }

  v33 = sub_298B44C70(a2, &v50, v30, 0, 0, 0, 0);
  v31 = v52;
  v55 = v52;
  if (v33)
  {
    v34 = v50 == 0;
  }

  else
  {
    v34 = 0;
  }

  if (v34 && !v51)
  {
    goto LABEL_21;
  }

  v35 = v9 + 120;
  v36 = *(v9 + 120);
  v37 = *(v9 + 72);
  v50 = a2;
  LODWORD(v51) = v37;
  HIDWORD(v51) = __clz(__rbit32(a3)) + 1;
  v52 = a4;
  v38 = *(v9 + 128);
  v39 = &v50;
  if (v38 >= *(v9 + 132))
  {
    if (v36 <= &v50 && v36 + 24 * v38 > &v50)
    {
      v46 = &v50 - v36;
      sub_298B90A44(v35, (v9 + 136), v38 + 1, 24);
      v36 = *(v9 + 120);
      v39 = &v46[v36];
    }

    else
    {
      sub_298B90A44(v35, (v9 + 136), v38 + 1, 24);
      v36 = *(v9 + 120);
      v39 = &v50;
    }
  }

  v40 = v36 + 24 * *(v9 + 128);
  v41 = *v39;
  *(v40 + 16) = *(v39 + 2);
  *v40 = v41;
  ++*(v9 + 128);
  if (a3)
  {
    v42 = *(v9 + 72);
    v43 = v42 + a3;
    if (v42 <= v43)
    {
      if (*(v9 + 80) < v43)
      {
        sub_298B90C08(v9 + 64, (v9 + 88), v43, 1);
        v42 = *(v9 + 72);
      }

      bzero((*(v9 + 64) + v42), a3);
      v43 = *(v9 + 72) + a3;
    }

    *(v9 + 72) = v43;
  }

LABEL_39:
  v44 = *MEMORY[0x29EDCA608];
}

unint64_t sub_298B4C060(void *a1)
{
  v2 = a1[1];
  v5 = "cfi";
  v6 = 259;
  v3 = sub_298B2D8D0(v2, &v5, 1);
  (*(*a1 + 192))(a1, v3, 0);
  return v3;
}

uint64_t sub_298B4C0E4(void *a1, unint64_t *a2)
{
  v4 = a1[1];
  v8 = "tmp";
  v9 = 259;
  v5 = sub_298B2D8D0(v4, &v8, 1);
  *a2 = v5;
  v6 = *(*a1 + 192);

  return v6(a1, v5, 0);
}

uint64_t sub_298B4C174(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v8 = "tmp";
  v9 = 259;
  v5 = sub_298B2D8D0(v4, &v8, 1);
  *(a2 + 8) = v5;
  v6 = *(*a1 + 192);

  return v6(a1, v5, 0);
}

int32x2_t sub_298B4C204(int32x2_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_298B5C798(a1, a2, a3);
  v5 = a2[1];
  if ((v5 & 0x10) == 0)
  {
    v6 = a1[38];
    a2[1] = v5 | 0x10;
    v12 = a2;
    sub_298B250EC(*&v6 + 56, &v12);
  }

  v7 = a1[39];
  if (v7 == *(*(*&a1[18] + 32 * a1[19].u32[0] - 32) + 112) || (v8 = *v7) == 0 || *(v8 + 48) != 1 || (v9 = a1[38], *(*&v9 + 496)) && (*(*&v9 + 500) & 1) != 0)
  {
    a2[3] = 0;
    a2[1] = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
    sub_298B4AA30(a1, a2);
  }

  else
  {
    a2[3] = *(v8 + 72);
    v11 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
    *a2 = v8;
    a2[1] = v11;
  }

  return sub_298B4C2F4(a1, a2);
}

int32x2_t sub_298B4C2F4(int32x2_t *a1, uint64_t a2)
{
  v3 = a1[67];
  v4 = a1[69].u32[0];
  if (v4)
  {
    v5 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *&v3 + 40 * v5;
    v7 = *v6;
    if (*v6 == a2)
    {
      goto LABEL_8;
    }

    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (v4 - 1);
      v6 = *&v3 + 40 * v5;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = *&v3 + 40 * v4;
LABEL_8:
  if (v6 != *&v3 + 40 * v4)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = &v10[2 * v11];
      do
      {
        v13 = *v10;
        v14 = v10[1];
        v10 += 2;
        (*(*a1 + 272))(a1, v13, v14);
      }

      while (v10 != v12);
      v10 = *(v6 + 8);
    }

    if (v10 != (v6 + 24))
    {
      free(v10);
    }

    *v6 = -8192;
    result = vadd_s32(a1[68], 0x1FFFFFFFFLL);
    a1[68] = result;
  }

  return result;
}

void sub_298B4C410(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_298B5C798(a1, a2, a3);
  v9 = a2[1];
  if ((v9 & 0x10) == 0)
  {
    v10 = *(a1 + 304);
    a2[1] = v9 | 0x10;
    v12 = a2;
    sub_298B250EC(v10 + 56, &v12);
  }

  if (a4)
  {
    v11 = a2[1];
    if (*(a4 + 48) == 1)
    {
      a2[3] = a5;
      *a2 = a4;
      a2[1] = v11 & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
      return;
    }
  }

  else
  {
    v11 = a2[1];
  }

  a2[3] = a5;
  a2[1] = v11 & 0xFFFFFFFFFFFF8FFFLL | 0x1000;

  sub_298B4AA30(a1, a2);
}

uint64_t sub_298B4C4D8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  v8 = 0;
  v9 = 0;
  v11 = 0;
  v10 = 0;
  if (*a2 == 1)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    if (sub_298B44C70(a2, &v8, v4, 0, 0, 0, 0))
    {
      v7 = v8 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (!v7 || v9)
    {
      operator new();
    }

    v5 = v10;
  }

  return sub_298B5ADC0(a1, v5, 0);
}

uint64_t sub_298B4C758(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  v8 = 0;
  v9 = 0;
  v11 = 0;
  v10 = 0;
  if (*a2 == 1)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    if (sub_298B44C70(a2, &v8, v4, 0, 0, 0, 0))
    {
      v7 = v8 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (!v7 || v9)
    {
      operator new();
    }

    v5 = v10;
  }

  return sub_298B5B07C(a1, v5);
}

BOOL sub_298B4C9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  *(*(a1 + 8) + 1592) = 0;
  v6 = *(a2 + 44);
  if ((v6 & 4) == 0)
  {
    v7 = *(a1 + 304);
    v18 = a2;
    sub_298AE7E30(v7 + 32, &v18);
    *(a2 + 44) |= 4u;
  }

  v23 = 0;
  if (!a3)
  {
    LODWORD(v9) = 0;
    goto LABEL_23;
  }

  v8 = (*(*a1 + 72))(a1);
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0;
  if (*a3 == 1)
  {
    v9 = *(a3 + 16);
    v23 = v9;
    if (!(v9 >> 31))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v10 = sub_298B44C70(a3, &v18, v8, 0, 0, 0, 0);
  v9 = v20;
  v23 = v20;
  if (v10)
  {
    v11 = v18 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && !v19)
  {
LABEL_17:
    if (!(v9 >> 31))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v12 = *(a1 + 8);
  v13 = *(a3 + 8);
  v18 = "cannot evaluate subsection number";
  v22 = 259;
  v29[0] = v13;
  *(v12 + 2056) = 1;
  v25[0] = &unk_2A1F1BDB8;
  v25[1] = v29;
  v26 = &v18;
  v27 = v25;
  sub_298B2FFE4(v12, v13, v25);
  if (v27 != v25)
  {
    if (v27)
    {
      (*(*v27 + 40))();
    }

    goto LABEL_17;
  }

  (*(*v27 + 32))(v27);
  if (!(v9 >> 31))
  {
    goto LABEL_23;
  }

LABEL_18:
  v14 = *(a1 + 8);
  v24 = *(a3 + 8);
  v15 = v24;
  v25[0] = "subsection number ";
  v26 = &v23;
  v28 = 3587;
  v18 = v25;
  v20 = " is not within [0,2147483647]";
  v22 = 770;
  *(v14 + 2056) = 1;
  v29[0] = &unk_2A1F1BDB8;
  v29[1] = &v24;
  v29[2] = &v18;
  v30 = v29;
  sub_298B2FFE4(v14, v15, v29);
  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))(v30);
  }

  LODWORD(v9) = v23;
LABEL_23:
  *(a1 + 432) = v9;
  *(a1 + 312) = sub_298B5680C(a2, v9);
  v16 = *MEMORY[0x29EDCA608];
  return (v6 & 4) == 0;
}

int32x2_t sub_298B4CD00(int32x2_t *a1, void *a2, unsigned __int8 *a3)
{
  v6 = a2[1];
  if ((v6 & 0x10) == 0)
  {
    v7 = a1[38];
    a2[1] = v6 | 0x10;
    v11 = a2;
    sub_298B250EC(*&v7 + 56, &v11);
  }

  sub_298B61C6C(a1, a3);
  a2[3] = a3;
  v8 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x2000;
  *a2 = 0;
  a2[1] = v8;
  v9 = a1[2];
  if (v9)
  {
    (*(**&v9 + 24))(v9, a2, a3);
  }

  return sub_298B4C2F4(a1, a2);
}

void *sub_298B4CDC8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if ((*(v3 + 8) & 0x10) == 0)
  {
    v4 = *(result + 138);
    if (v4)
    {
      v5 = *(result + 67);
      v6 = (v4 - 1) & ((v3 >> 4) ^ (v3 >> 9));
      v7 = (v5 + 40 * v6);
      v8 = *v7;
      if (v3 == *v7)
      {
LABEL_22:
        v16 = *(v7 + 4);
        if (v16 >= *(v7 + 5))
        {
          v37 = a2;
          v18 = a3;
          result = sub_298B90A44((v7 + 1), v7 + 3, v16 + 1, 16);
          a2 = v37;
          a3 = v18;
          LODWORD(v16) = *(v7 + 4);
        }

        v17 = (v7[1] + 16 * v16);
        *v17 = a2;
        v17[1] = a3;
        ++*(v7 + 4);
        return result;
      }

      v9 = 0;
      v10 = 1;
      while (v8 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == -8192;
        }

        if (v11)
        {
          v9 = v7;
        }

        v12 = v6 + v10++;
        v6 = v12 & (v4 - 1);
        v7 = (v5 + 40 * v6);
        v8 = *v7;
        if (v3 == *v7)
        {
          goto LABEL_22;
        }
      }

      if (v9)
      {
        v7 = v9;
      }

      v19 = *(result + 136);
      if (4 * v19 + 4 < 3 * v4)
      {
        if (v4 + ~v19 - *(result + 137) > v4 >> 3)
        {
LABEL_18:
          v15 = *v7;
LABEL_19:
          ++*(result + 136);
          if (v15 != -4096)
          {
            --*(result + 137);
          }

          *v7 = v3;
          v7[1] = (v7 + 3);
          v7[2] = 0x100000000;
          goto LABEL_22;
        }

        v36 = result;
        v38 = a2;
        v35 = a3;
        sub_298B51E14(result + 67, v4);
        result = v36;
        v28 = *(v36 + 67);
        v29 = *(v36 + 138) - 1;
        v30 = v29 & ((v3 >> 4) ^ (v3 >> 9));
        v7 = (v28 + 40 * v30);
        v31 = *v7;
        if (v3 != *v7)
        {
          v24 = 0;
          v32 = 1;
          while (v31 != -4096)
          {
            if (v24)
            {
              v33 = 0;
            }

            else
            {
              v33 = v31 == -8192;
            }

            if (v33)
            {
              v24 = v7;
            }

            v34 = v30 + v32++;
            v30 = v34 & v29;
            v7 = (v28 + 40 * v30);
            v31 = *v7;
            if (v3 == *v7)
            {
LABEL_48:
              v15 = v3;
              a3 = v35;
              result = v36;
              a2 = v38;
              goto LABEL_19;
            }
          }

          goto LABEL_49;
        }

LABEL_39:
        v15 = v3;
        a3 = v35;
        a2 = v38;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = (4 * *(result + 136) + 4);
    }

    v36 = result;
    v38 = a2;
    v35 = a3;
    sub_298B51E14(result + 67, 2 * v4);
    result = v36;
    v20 = *(v36 + 67);
    v21 = *(v36 + 138) - 1;
    v22 = v21 & ((v3 >> 4) ^ (v3 >> 9));
    v7 = (v20 + 40 * v22);
    v23 = *v7;
    if (v3 != *v7)
    {
      v24 = 0;
      v25 = 1;
      while (v23 != -4096)
      {
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23 == -8192;
        }

        if (v26)
        {
          v24 = v7;
        }

        v27 = v22 + v25++;
        v22 = v27 & v21;
        v7 = (v20 + 40 * v22);
        v23 = *v7;
        if (v3 == *v7)
        {
          goto LABEL_48;
        }
      }

LABEL_49:
      if (v24)
      {
        v7 = v24;
      }

      a3 = v35;
      result = v36;
      a2 = v38;
      goto LABEL_18;
    }

    goto LABEL_39;
  }

  v13 = *(*result + 272);

  return v13();
}

uint64_t sub_298B4D0D0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = *(*(a1 + 144) + 32 * v6 - 32);
    if ((*(*v7 + 16))(v7))
    {
LABEL_3:
      v8 = *(a1 + 8);
      v9 = *(a2 + 1);
      v27[0] = (*(*v7 + 24))(v7);
      v27[1] = v10;
      v27[2] = " section '";
      v28 = 773;
      v29 = v27;
      v30 = *(v7 + 200);
      v31 = 1282;
      *&v35 = &v29;
      v36 = "' cannot have instructions";
      v38[0] = 770;
      *(v8 + 2056) = 1;
      v32 = v9;
      v33[0] = &unk_2A1F1BDB8;
      v33[1] = &v32;
      v33[2] = &v35;
      v34 = v33;
      sub_298B2FFE4(v8, v9, v33);
      result = v34;
      if (v34 == v33)
      {
        result = (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        result = (*(*v34 + 40))();
      }

      v19 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else
  {
    v7 = 0;
    if ((*(MEMORY[0] + 16))(0))
    {
      goto LABEL_3;
    }
  }

  (*(**(*(a1 + 304) + 8) + 32))(*(*(a1 + 304) + 8), a1, a2, a3);
  v12 = *(a2 + 6);
  if (v12)
  {
    v13 = 16 * v12;
    do
    {
      v14 = *(a2 + 2) + v13;
      if (*(v14 - 16) == 5)
      {
        sub_298B61C6C(a1, *(v14 - 8));
      }

      v13 -= 16;
    }

    while (v13);
  }

  v15 = *(a1 + 152);
  if (!v15)
  {
    v16 = 0;
    MEMORY[0x2C] |= 2u;
    v17 = *(a1 + 152);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v16 = *(*(a1 + 144) + 32 * v15 - 32);
  *(v16 + 44) |= 2u;
  v17 = *(a1 + 152);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_14:
  v18 = *(*(a1 + 144) + 32 * v17 - 32);
LABEL_19:
  sub_298B33030(a1, v18);
  v20 = *(a1 + 304);
  v21 = *(v20 + 8);
  if ((*(*v21 + 136))(v21, a2, a3) & 1) != 0 || ((*(*v21 + 24))(v21))
  {
    if ((*(v20 + 500) & 1) != 0 || *(v20 + 496) && *(v16 + 36))
    {
      v35 = *a2;
      v36 = v38;
      v37 = 0xA00000000;
      if (&v35 == a2)
      {
        goto LABEL_34;
      }

      v22 = *(a2 + 6);
      if (!v22)
      {
        goto LABEL_34;
      }

      if (v22 < 0xB)
      {
        v24 = v38;
        v23 = *(a2 + 6);
      }

      else
      {
        sub_298B90A44(&v36, v38, *(a2 + 6), 16);
        v23 = *(a2 + 6);
        if (!v23)
        {
LABEL_33:
          LODWORD(v37) = v22;
LABEL_34:
          if ((*(*v21 + 136))(v21, &v35, a3))
          {
            do
            {
              (*(*v21 + 160))(v21, &v35, a3);
            }

            while (((*(*v21 + 136))(v21, &v35, a3) & 1) != 0);
          }

          (*(*a1 + 1304))(a1, &v35, a3);
          if (v36 != v38)
          {
            free(v36);
          }

          goto LABEL_38;
        }

        v24 = v36;
      }

      memcpy(v24, *(a2 + 2), 16 * v23);
      goto LABEL_33;
    }

    (*(*a1 + 1320))(a1, a2, a3);
  }

  else
  {
    (*(*a1 + 1304))(a1, a2, a3);
  }

LABEL_38:
  v25 = *(**(*(a1 + 304) + 8) + 40);
  v26 = *MEMORY[0x29EDCA608];

  return v25();
}

void sub_298B4D9D8(uint64_t a1, int a2, int a3, __int16 a4, char a5, char a6, int a7)
{
  v14 = *(a1 + 152);
  if (v14)
  {
    v15 = *(*(a1 + 144) + 32 * v14 - 32);
  }

  else
  {
    v15 = 0;
  }

  sub_298B33030(a1, v15);
  v16 = *(a1 + 8);
  *(v16 + 1576) = a2;
  *(v16 + 1580) = a3;
  *(v16 + 1584) = a4;
  *(v16 + 1586) = a5;
  *(v16 + 1587) = a6;
  *(v16 + 1588) = a7;
  *(v16 + 1592) = 1;
}

void sub_298B4DA70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[32] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v9 = a1[1];
    v10 = sub_298B44B48(a4, 0, v9, 0);
    v11 = sub_298B44B48(a3, 0, v9, 0);
    *(v9 + 264) += 32;
    v12 = *(v9 + 184);
    if (v12)
    {
      v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) - v12 + 32 > *(v9 + 192) - v12;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = *(v9 + 208) >> 7;
      if (v14 >= 0x1E)
      {
        LOBYTE(v14) = 30;
      }

      v15 = 4096 << v14;
      v21 = operator new(4096 << v14, 8uLL);
      v16 = *(v9 + 208);
      if (v16 >= *(v9 + 212))
      {
        sub_298B90A44(v9 + 200, (v9 + 216), v16 + 1, 8);
        LODWORD(v16) = *(v9 + 208);
      }

      *(*(v9 + 200) + 8 * v16) = v21;
      ++*(v9 + 208);
      *(v9 + 192) = v21 + v15;
    }

    else
    {
      v21 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v9 + 184) = v21 + 32;
    *v21 = 0;
    *(v21 + 1) = (*(v21 + 4) << 24) | 0x12;
    *(v21 + 8) = 0;
    *(v21 + 16) = v10;
    *(v21 + 24) = v11;
    operator new();
  }

  v18 = *(a1[38] + 200) | (*(a1[38] + 202) << 16);
  (*(*a1 + 520))(a1, 0, 1);
  sub_298B5ADC0(a1, a5 + 1, 0);
  (*(*a1 + 520))(a1, 2, 1);
  v19 = sub_298B44B48(a4, 0, a1[1], 0);
  (*(*a1 + 512))(a1, v19, a5, 0);
  v20 = a1[1];
  v23 = v25;
  v24 = xmmword_298D1A100;
  sub_298B359D8(v20, v18, a2, 0, &v23);
  (*(*a1 + 496))(a1, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }

  v22 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B4DF20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_298B629B4(a1, a2);
  v6 = a1[1];
  (*(*a1 + 168))(a1, *(*(v6 + 160) + 88), 0);
  v7 = *(*(v6 + 144) + 8);
  v8 = *(*a1 + 1288);

  return v8(a1, 0x7FFFFFFFFFFFFFFFLL, a3, v5, v7);
}

void sub_298B4DFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = sub_298B44B48(a3, 0, v6, 0);
  v8 = sub_298B44B48(a2, 0, v6, 0);
  *(v6 + 264) += 32;
  v9 = *(v6 + 184);
  if (v9)
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - v9 + 32 > *(v6 + 192) - v9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(v6 + 208) >> 7;
    if (v11 >= 0x1E)
    {
      LOBYTE(v11) = 30;
    }

    v12 = 4096 << v11;
    v14 = operator new(4096 << v11, 8uLL);
    v13 = *(v6 + 208);
    if (v13 >= *(v6 + 212))
    {
      sub_298B90A44(v6 + 200, (v6 + 216), v13 + 1, 8);
      LODWORD(v13) = *(v6 + 208);
    }

    *(*(v6 + 200) + 8 * v13) = v14;
    ++*(v6 + 208);
    *(v6 + 192) = v14 + v12;
  }

  else
  {
    v14 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v6 + 184) = v14 + 32;
  *v14 = 0;
  *(v14 + 1) = (*(v14 + 4) << 24) | 0x12;
  *(v14 + 8) = a4;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  operator new();
}

void sub_298B4E2D4(void *a1, unsigned int a2, uint64_t a3, int a4, __int16 a5, char a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a3;
  if (sub_298B5C24C(a1, a2, a3, a11))
  {
    v18 = a1[1];
    v22 = "tmp";
    v28 = 259;
    v19 = sub_298B2D8D0(v18, &v22, 1);
    (*(*a1 + 192))(a1, v19, 0);
    v20 = *(a1[1] + 176);
    if (!v20)
    {
      operator new();
    }

    v22 = v19;
    v23 = a2;
    v24 = v15;
    v25 = a4;
    v26 = a5;
    if (a7)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v27 = v21 | a6;
    sub_298B279F4(v20, &v22);
  }
}

void sub_298B4E434(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1[1] + 176);
  if (!v5)
  {
    operator new();
  }

  sub_298B28504(v5, a1, a2, a3, a4);
}

void sub_298B4E508(uint64_t a1)
{
  if (!*(*(a1 + 8) + 176))
  {
    operator new();
  }

  operator new();
}

void sub_298B4E650(uint64_t a1)
{
  if (!*(*(a1 + 8) + 176))
  {
    operator new();
  }

  operator new();
}

uint64_t sub_298B4E870(void *a1)
{
  v2 = *(a1[1] + 176);
  if (!v2)
  {
    operator new();
  }

  return sub_298B27B14(v2, a1);
}

uint64_t sub_298B4E93C(void *a1)
{
  v2 = *(a1[1] + 176);
  if (!v2)
  {
    operator new();
  }

  return sub_298B27DA8(v2, a1);
}

uint64_t sub_298B4EA08(uint64_t *a1, unsigned int a2)
{
  v4 = *(a1[1] + 176);
  if (!v4)
  {
    operator new();
  }

  v5 = a2 - 1;
  v6 = *(v4 + 48);
  if (v6 <= v5 && v6 != a2)
  {
    if (v6 <= a2)
    {
      if (*(v4 + 52) < a2)
      {
        sub_298B90A44(v4 + 40, (v4 + 56), a2, 32);
        v6 = *(v4 + 48);
      }

      if (v6 != a2)
      {
        bzero((*(v4 + 40) + 32 * v6), 32 * (a2 - v6));
      }
    }

    *(v4 + 48) = a2;
  }

  v8 = sub_298B44B48(*(*(v4 + 40) + 32 * v5 + 24), 0, a1[1], 0);
  v9 = *(*a1 + 512);

  return v9(a1, v8, 4, 0);
}