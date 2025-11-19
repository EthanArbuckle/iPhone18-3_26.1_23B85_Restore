void sub_297818A48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297818A7C(a2);

    j__free(v2);
  }
}

uint64_t sub_297818A80(uint64_t a1)
{
  sub_297818AB4(a1 + 152);
  sub_297818154(a1 + 8);
  return a1;
}

uint64_t sub_297818AC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_297818AF4(a1, v3);
  return a1;
}

uint64_t sub_297818AF4(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_297818AF4(result, *a2);
    sub_297818AF4(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = j_nullsub_1(a2 + 4, v6);
    sub_297818B8C(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_297818B9C(uint64_t a1)
{
  if (sub_29780344C(a1))
  {
    return sub_2978047FC(a1) - 1;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_297818BD8(std::string *a1, std::string::size_type a2, std::string::size_type a3, std::string::size_type a4, std::string::size_type a5, std::string::size_type a6, std::string::size_type a7)
{
  nullsub_1(a1, a2);
  sub_2977FDEF4(&v15, a1);
  sub_297818CEC(v15, &v16);
  std::string::__grow_by(a1, a2, a3, a4, a5, a6, a7);
  sub_2977FD5DC(a1, a4 - a6 + a7);
  return sub_297818CF8(&v16);
}

uint64_t sub_297818C84(uint64_t a1, uint64_t a2)
{
  if (sub_29780344C(a1))
  {

    return sub_2977FD5DC(a1, a2);
  }

  else
  {

    return sub_297803470(a1, a2);
  }
}

uint64_t sub_297818D24(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2978032A4(*a1);

  return nullsub_1(v1, v2);
}

uint64_t sub_297818D68(uint64_t a1)
{
  v2 = sub_297818D98();
  *(a1 + 176) = j_nullsub_1(v2, v3);
  return a1;
}

uint64_t sub_297818D9C(uint64_t a1)
{
  v2 = sub_297818DCC();
  sub_297818DD0(v2 + 40);
  return a1;
}

uint64_t sub_297818DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
    ;
  }

  return v5;
}

uint64_t sub_297818E54(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = sub_297818E84(a1, &v5);
  nullsub_1(v2, v3);
  return v5;
}

void *sub_297818E84(uint64_t a1, void *a2)
{
  v4 = sub_2977FB720(a2);
  v5 = sub_297818F48(v4);
  v6 = sub_297803A7C(v4);
  v7 = v6;
  if (v4 == *(a1 + 176))
  {
    *(a1 + 176) = v5;
  }

  else
  {
    sub_297818F4C(v6, v5);
  }

  sub_2977FDEF4(v5, v7);
  sub_2977FDEF4(&v9, v5);
  *a2 = v9;
  nullsub_1(a1 + 40, v4);
  sub_297818F4C(v4, 0);
  sub_2977FDEF4(v4, 0);
  return v4;
}

void *sub_297818F50(void *a1, void *a2, void *a3)
{
  for (i = a1; i != a2; i += 3)
  {
    if (sub_297818FA8(i, a3))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_297818FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FB7B8(a1);
  v7 = sub_297819044(a3, v6, a2);
  v8 = sub_2977FB7B8(a1);
  nullsub_1(v7, v8);
  sub_2977FD5DC(a1, v7);
  return a2;
}

uint64_t sub_297819068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_2978190F8(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_297819108(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_297819160(a3, a1, (a2 - a1) >> 3);
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_297819160(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 8 * a3);
  }

  return result;
}

uint64_t sub_2978191A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29781921C(a1, a2);
  v6 = sub_297819248(v5);
  v8 = v7;
  v11 = sub_29781924C(a1, v6);
  v10 = sub_297813268(a3, v8);
  return sub_2977FD958(&v11, &v10);
}

uint64_t sub_29781921C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_2977FD958(&v4, &v3);
}

uint64_t sub_297819250(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_2978192B4(a3, a1, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_2978192B4(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 24 * a3 - 3);
  }

  return result;
}

uint64_t sub_2978192E8(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1) - 4;

  return sub_2977FD5DC(a1, v2);
}

uint64_t sub_297819324(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a2;
  v5 = sub_2977FB720(&v8);
  v6 = sub_297803A7C(v5);
  sub_297818F4C(a3, v5);
  sub_2977FDEF4(a3, v6);
  if (v5 == *(a1 + 176))
  {
    *(a1 + 176) = a3;
  }

  else
  {
    sub_297818F4C(v6, a3);
  }

  sub_2977FDEF4(v5, a3);
  nullsub_1(a1 + 40, a3);
  sub_2977FDEF4(&v9, a3);
  return v9;
}

__n128 sub_2978193D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_297819408(a1, 1);
  v4 = *(a2 + 32);
  result = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = result;
  *(v3 + 32) = v4;
  return result;
}

void sub_297819460(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_297819478(a1, v3);
  }
}

void sub_297819478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978133A0(a2);

    j__free(v2);
  }
}

uint64_t *sub_2978194E0(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_2978094B8(a2);
  return a1;
}

uint64_t sub_297819520(uint64_t a1, uint64_t *a2)
{
  v4 = sub_297818B70(a1, a2);
  v6 = sub_297818B94(a1, v5);
  v13 = sub_2978195D0(a1, a2, v4, v6);
  v12 = sub_297819670(a1, v7);
  if (sub_297819654(&v13, &v12) && (v9 = nullsub_1(a1, v8), v10 = sub_2978196E8(&v13), !sub_2978196A0(v9, a2, v10)))
  {
    return v13;
  }

  else
  {
    return sub_297819670(a1, v8);
  }
}

uint64_t sub_2978195D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = nullsub_1(a1, a2);
      v9 = sub_297819704(v8, v5 + 32, a2);
      if (v9)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        a4 = v5;
      }

      v5 = *(v5 + v10);
    }

    while (v5);
  }

  sub_2977FDEF4(&v12, a4);
  return v12;
}

uint64_t sub_297819670(uint64_t a1, uint64_t a2)
{
  v2 = sub_297818B94(a1, a2);
  sub_2977FDEF4(&v4, v2);
  return v4;
}

BOOL sub_2978196A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = nullsub_1(a3, a2);

  return sub_29781974C(a1, a2, v5);
}

BOOL sub_297819704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = nullsub_1(a2, a2);

  return sub_29781974C(a1, v5, a3);
}

BOOL sub_29781975C(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_297819794(v5, a3, a4) == -1;
}

uint64_t sub_297819794(uint64_t a1, const void *a2, unint64_t a3)
{
  v6 = *a1;
  v7 = sub_2978045D4(*(a1 + 8), a3);
  v8 = sub_2977FD4A0(v6, a2, v7);
  if (v8)
  {
    return (v8 >> 31) | 1u;
  }

  v10 = *(a1 + 8);
  v11 = v10 == a3;
  if (v10 < a3)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v11)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_297819804(uint64_t a1)
{
  v1 = sub_2977FB720(a1) + 32;

  return nullsub_1(v1, v2);
}

uint64_t sub_297819830(const void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297808414(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > v7 - sub_2977FB7B8(a1))
  {
    v8 = sub_2977FD0D4(a1);
    sub_2977FD5B8(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_2978198EC(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_297819908(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1;
  for (i = a3; sub_2978199A0(&v6, &v5); ++i)
  {
    if (sub_2977FD678())
    {
      break;
    }

    *i = *sub_2977FB720(&v6);
    sub_297808548(&v6);
  }

  sub_2977FD680(&v7, &v6, &i);
  return v7;
}

uint64_t sub_2978199F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_297819A88(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

void *sub_297819A98(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  sub_29780B1B8(a1 + 2);
  sub_297819AD0(a1 + 9);
  a1[15] = 0;
  return a1;
}

uint64_t sub_297819B1C(uint64_t a1)
{
  sub_29780AE44(a1 + 8);
  v3 = j_j_nullsub_1(a1, v2);
  *(a1 + 16) = 0;
  v5 = sub_297818B94(v3, v4);
  *nullsub_1(a1, v6) = v5;
  return a1;
}

uint64_t sub_297819B68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297819C68(a1, &v17, a2);
  v10 = *v9;
  v16 = 0;
  if (!v10)
  {
    v11 = v9;
    sub_297819D24(a1, a3, a4, a5, v15);
    v12 = v17;
    v13 = sub_2977FB720(v15);
    sub_297819DD8(a1, v12, v11, v13);
    v10 = sub_2978058AC(v15);
    v16 = 1;
    sub_297819E64(v15);
  }

  sub_2977FDEF4(v15, v10);
  sub_29780EB70(&v18, v15, &v16);
  return v18;
}

void *sub_297819C68(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_297818B70(a1, a2);
  v8 = sub_297819E68(a1, v7);
  if (v6)
  {
    v10 = v8;
    do
    {
      while (1)
      {
        v11 = v6;
        v12 = nullsub_1(a1, v9);
        if (!sub_2978196A0(v12, a3, (v6 + 4)))
        {
          break;
        }

        v6 = *v6;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_10;
        }
      }

      v13 = nullsub_1(a1, v9);
      if (!sub_297819704(v13, (v6 + 4), a3))
      {
        break;
      }

      v10 = v6 + 1;
      v6 = v6[1];
    }

    while (v6);
  }

  else
  {
    v11 = sub_297818B94(a1, v9);
    v10 = v11;
  }

LABEL_10:
  *a2 = v11;
  return v10;
}

uint64_t sub_297819D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = nullsub_1(a1, a2);
  v10 = sub_297819E6C(v9, 1);
  sub_297819E70(&v16, v9, 0);
  v11 = sub_297819E74(a5, v10, &v16);
  v12 = sub_2977FB720(v11);
  v14 = j_nullsub_1(v12 + 32, v13);
  sub_297819E78(v9, v14, a2, a3, a4);
  result = sub_297819E7C(a5);
  *(result + 8) = 1;
  return result;
}

void *sub_297819DD8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  if (**nullsub_1(a1, a2))
  {
    v7 = **nullsub_1(a1, v6);
    *nullsub_1(a1, v8) = v7;
  }

  v9 = sub_297818B94(a1, v6);
  sub_297819FAC(*v9, *a3);
  result = sub_297806460(a1);
  ++*result;
  return result;
}

uint64_t sub_297819E84(uint64_t a1, unint64_t a2)
{
  if (sub_297819ECC() < a2)
  {
    sub_29780339C();
  }

  return sub_297819ED0(a2);
}

uint64_t sub_297819EE0(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_297819EEC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  sub_297819F24(a1 + 17);
  return a1;
}

_DWORD *sub_297819F28(_DWORD *result)
{
  *(result + 3) = 0;
  *result = 0;
  return result;
}

uint64_t sub_297819F70(uint64_t a1, uint64_t a2)
{
  *a1 = *sub_297803A7C(a2);
  sub_297804560((a1 + 16));
  return a1;
}

uint64_t sub_297819FAC(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = sub_2977FD5B0(v2);
      if (*(result + 24))
      {
        break;
      }

      v4 = sub_2977FD5B0(v2);
      v5 = sub_29781A11C(v4);
      v6 = sub_2977FD5B0(v2);
      if (v5)
      {
        v7 = *(sub_2977FD5B0(v6) + 8);
        if (!v7 || (v9 = *(v7 + 24), v8 = (v7 + 24), v9 == 1))
        {
          if (!sub_29781A11C(v2))
          {
            v2 = sub_2977FD5B0(v2);
            sub_29781A130(v2);
          }

          v13 = sub_2977FD5B0(v2);
          *(v13 + 24) = 1;
          v14 = sub_2977FD5B0(v13);
          *(v14 + 24) = 0;

          return sub_29781A1B0(v14);
        }
      }

      else
      {
        v10 = **(v6 + 16);
        if (!v10 || (v11 = *(v10 + 24), v8 = (v10 + 24), v11 == 1))
        {
          if (sub_29781A11C(v2))
          {
            v2 = sub_2977FD5B0(v2);
            sub_29781A1B0(v2);
          }

          v15 = sub_2977FD5B0(v2);
          *(v15 + 24) = 1;
          v16 = sub_2977FD5B0(v15);
          *(v16 + 24) = 0;

          return sub_29781A130(v16);
        }
      }

      v12 = sub_2977FD5B0(v2);
      *(v12 + 24) = 1;
      result = sub_2977FD5B0(v12);
      v2 = result;
      *(result + 24) = result == v3;
      *v8 = 1;
    }

    while (result != v3);
  }

  return result;
}

uint64_t sub_29781A130(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  *(a1 + 8) = *v2;
  if (v3)
  {
    sub_29781A230(v3, a1);
  }

  v2[2] = *(a1 + 16);
  if (sub_29781A11C(a1))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = (sub_2977FD5B0(a1) + 8);
  }

  *v4 = v2;
  *v2 = a1;

  return sub_29781A230(a1, v2);
}

uint64_t sub_29781A1B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  *a1 = v3;
  if (v3)
  {
    sub_29781A230(v3, a1);
  }

  *(v2 + 16) = a1[2];
  if (sub_29781A11C(a1))
  {
    v4 = a1[2];
  }

  else
  {
    v4 = (sub_2977FD5B0(a1) + 8);
  }

  *v4 = v2;
  *(v2 + 8) = a1;

  return sub_29781A230(a1, v2);
}

uint64_t *sub_29781A264(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29781A280((result + 1), v3);
  }

  return result;
}

uint64_t sub_29781A280(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *result;
    v5 = j_nullsub_1(a2 + 32, a2);
    result = sub_297818B8C(v4, v5);
  }

  if (a2)
  {
    v6 = *v3;

    return sub_297809C98(v6, a2, 1);
  }

  return result;
}

void *sub_29781A30C(void *result, uint64_t a2)
{
  *result = &unk_2A1E54B18;
  result[1] = a2;
  return result;
}

void *sub_29781A334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_29781A30C(a1, a4);
  *v11 = &unk_2A1E54BF0;
  sub_297813320(v11 + 2);
  v12 = sub_2977FA198(16);
  sub_297815E70(v12, a2, a3, (a1 + 2));
  sub_2977FDEF4(a1 + 11, v12);
  sub_29780AE44(a1 + 12);
  sub_2978055DC(a1 + 13);
  sub_297817C28(a1 + 15);
  sub_29780AE44(a1 + 32);
  sub_297809B88(a1 + 33);
  a1[36] = 0;
  if (a5)
  {
    sub_29781A418((a1 + 2), a5, a6);
  }

  v13 = sub_2977FB720((a1 + 11));
  a1[32] = sub_297816020(v13);
  return a1;
}

uint64_t sub_29781A418(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

void *sub_29781A424(void *a1)
{
  *a1 = &unk_2A1E54BF0;
  v2 = a1 + 2;
  sub_29781A490(a1 + 33);
  sub_297818154(a1 + 15);
  sub_29781A494(a1 + 12);
  sub_29781A498(a1 + 11);
  sub_29780A9DC(v2);
  return a1;
}

void sub_29781A4A0(void *a1)
{
  v1 = sub_29781A49C(a1);

  j__free(v1);
}

uint64_t sub_29781A4E8(uint64_t a1)
{
  sub_2977FB720(a1 + 88);
  v9 = sub_2978160C0();
  result = sub_2978160E8((a1 + 256), &v9);
  if (result)
  {
    v3 = sub_2977FB720(a1 + 256);
    v4 = sub_2977FB720(v3);
    v9 = sub_297817D74(v4);
    if (v9)
    {
      if (sub_29781A5A8(&v9, v5))
      {
        sub_2978161B0((a1 + 256));
        return sub_29781A4E8(a1);
      }

      else
      {
        v8 = sub_29781A5C4(a1, v9);
        sub_29781A5AC((a1 + 96), v8);
        *(a1 + 288) = sub_2977FB720(a1 + 96);
        return 1;
      }
    }

    else
    {
      v6 = sub_2978055EC(22);
      result = 0;
      *(a1 + 104) = v6;
      *(a1 + 112) = v7;
    }
  }

  return result;
}

uint64_t *sub_29781A5AC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29781BF1C(result, v3);
  }

  return result;
}

void *sub_29781A5C4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  sub_297806EC8(v36);
  v4 = sub_29781B694(a2);
  if (v4)
  {
    v5 = sub_297816CFC(v4, v36);
    v7 = v6;
    if (!sub_297806904(v36))
    {
      v8 = sub_2977FD0D4(v36);
      v9 = sub_29781B6D0(a1 + 120, v8);
      v10 = sub_2977FD108(v36, 0);
      memcpy(v9, v10, v8);
      sub_2977FB7C0(&v32, v9, v8);
      v5 = v32;
      v7 = v33;
    }

    v11 = sub_2977FA198(32);
    sub_29781B6D8(v11, a2, v5, v7);
  }

  else
  {
    v13 = sub_29781B6DC(a2);
    if (v13)
    {
      v14 = v13;
      v11 = sub_2977FA198(40);
      sub_29781B718(v11, a2);
      v32 = sub_29781B71C(v14);
      v35 = sub_2978160C0();
      while (sub_2978188B4(&v32, &v35))
      {
        v15 = sub_2978188EC(&v32);
        v34 = sub_29781A5C4(a1, v15);
        if (sub_297805430((a1 + 104)))
        {
          break;
        }

        sub_29781B720(v11 + 2, &v34);
        sub_297818A0C(&v32);
      }
    }

    else
    {
      v16 = sub_29781B724(a2);
      if (v16)
      {
        v18 = v16;
        v11 = sub_2977FA198(120);
        sub_29781B760(v11, a2);
        v35 = sub_29781B764(v18);
        v34 = sub_2978160C0();
        if (sub_2978188B4(&v35, &v34))
        {
          while (1)
          {
            v19 = sub_2978188EC(&v35);
            v20 = sub_297817668(v19);
            v21 = sub_29781B694(v20);
            if (!v21)
            {
              break;
            }

            v22 = v21;
            sub_2977FD800(v36);
            v23 = sub_297816CFC(v22, v36);
            v25 = v24;
            if (!sub_297806904(v36))
            {
              v26 = sub_2977FD0D4(v36);
              v27 = sub_29781B6D0(a1 + 120, v26);
              v28 = sub_2977FD108(v36, 0);
              memcpy(v27, v28, v26);
              sub_2977FB7C0(&v32, v27, v26);
              v23 = v32;
              v25 = v33;
            }

            v29 = sub_29781773C(v19);
            v30 = sub_29781A5C4(a1, v29);
            if (!sub_297805430((a1 + 104)))
            {
              *sub_29781AB8C((v11 + 2), v23, v25) = v30;
              sub_2978188F8(&v35);
              if (sub_2978188B4(&v35, &v34))
              {
                continue;
              }
            }

            goto LABEL_5;
          }

          sub_2978036E0(&v32, "Map key must be a scalar");
          sub_29781B644(a1, v20, &v32);
        }
      }

      else if (sub_29781A5A8(&v37, v17))
      {
        v11 = sub_2977FA198(16);
        sub_29781B768(v11, v37);
      }

      else
      {
        v31 = v37;
        sub_2978036E0(&v32, "unknown node kind");
        sub_29781B644(a1, v31, &v32);
        v11 = 0;
      }
    }
  }

LABEL_5:
  sub_297801F60(v36);
  return v11;
}

BOOL sub_29781A8E8(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  v8[0] = a2;
  v8[1] = a3;
  sub_297816300(*(*(a1 + 288) + 8), &v7);
  if (!sub_29780347C(&v7))
  {
    sub_2978044E8(v6, &v7);
    a4 = sub_2977FB778(v8, v6[0], v6[1]);
  }

  std::string::~string(&v7);
  return a4;
}

uint64_t sub_29781A958(uint64_t a1)
{
  result = sub_297805430((a1 + 104));
  if ((result & 1) == 0)
  {
    result = sub_29781A9B0(*(a1 + 288));
    if (result)
    {
      v3 = (result + 48);

      return sub_2977FD800(v3);
    }
  }

  return result;
}

uint64_t sub_29781A9B0(uint64_t result)
{
  v1 = result;
  if (result)
  {
    if (sub_29781BF4C(&v1))
    {
      return sub_29781BF50(v1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29781A9F0(uint64_t a1, char *a2, int a3, uint64_t a4, _BYTE *a5, void *a6)
{
  v23 = a2;
  *a5 = 0;
  if (!sub_297805430((a1 + 104)))
  {
    v10 = *(a1 + 288);
    if (v10)
    {
      v11 = sub_29781AB48(v10);
      if (v11)
      {
        v12 = v11;
        sub_2978040A4(v11 + 48, &v23);
        sub_2977FB7B4(v22, v23);
        v13 = *sub_29781AB8C(v12 + 16, v22[0], v22[1]);
        if (v13)
        {
          *a6 = *(a1 + 288);
          *(a1 + 288) = v13;
          return 1;
        }

        if (!a3)
        {
          result = 0;
          *a5 = 1;
          return result;
        }

        v17 = *(a1 + 288);
        sub_2978036E0(v20, "missing required key '");
        sub_2978036E0(v19, v23);
        sub_297807128(v20, v19, v21);
        sub_2978036E0(v18, "'");
        sub_297807128(v21, v18, v22);
      }

      else
      {
        v17 = *(a1 + 288);
        sub_2978036E0(v22, "not a mapping");
      }

      sub_29781AB84(a1, v17, v22);
    }

    else if (a3)
    {
      v15 = sub_2978055EC(22);
      result = 0;
      *(a1 + 104) = v15;
      *(a1 + 112) = v16;
      return result;
    }
  }

  return 0;
}

uint64_t sub_29781AB48(uint64_t a1)
{
  v2 = a1;
  if (sub_29781BF4C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29781BFDC(a1, a2, a3);

  return sub_297819E7C(v3);
}

uint64_t sub_29781ABBC(uint64_t a1)
{
  result = sub_297805430((a1 + 104));
  if ((result & 1) == 0)
  {
    result = sub_29781A9B0(*(a1 + 288));
    if (result)
    {
      v3 = result;
      v16 = sub_29781ACE4(result + 16);
      v15 = sub_29781AD1C(v3 + 16);
      result = sub_29781550C(&v16, &v15);
      if (result)
      {
        while (1)
        {
          v4 = sub_29781AD54(&v16);
          v5 = sub_29781ADE4(v4);
          if (!sub_29781AD60(v3, v5, v6))
          {
            break;
          }

          sub_29781AE30(&v16);
          result = sub_29781550C(&v16, &v15);
          if ((result & 1) == 0)
          {
            return result;
          }
        }

        v7 = *(v4 + 8);
        sub_2978036E0(v12, "unknown key '");
        v10[0] = sub_29781ADE4(v4);
        v10[1] = v8;
        sub_2978036E8(v11, v10);
        sub_297807128(v12, v11, v13);
        sub_2978036E0(v9, "'");
        sub_297807128(v13, v9, v14);
        return sub_29781AB84(a1, v7, v14);
      }
    }
  }

  return result;
}

BOOL sub_29781AD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  v4 = sub_2977FB720(a1 + 48);
  v5 = sub_2977FB7B8(a1 + 48);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v4 + 8;
  do
  {
    sub_2977FB7B4(v10, *(v7 - 8));
    result = sub_2977FB778(v11, v10[0], v10[1]);
    if (result)
    {
      break;
    }

    v9 = v7 == v6;
    v7 += 8;
  }

  while (!v9);
  return result;
}

uint64_t sub_29781ADE4(unsigned int *a1)
{
  v2 = sub_297806460(a1);
  v3 = sub_2977FB5F0(a1);
  sub_2977FB7C0(&v5, v2, v3);
  return v5;
}

void **sub_29781AE30(void **a1)
{
  ++*a1;
  sub_29781C214(a1);
  return a1;
}

uint64_t sub_29781AE64(uint64_t a1)
{
  result = sub_29781AE8C(*(a1 + 288));
  if (result)
  {
    return sub_29780BD00((result + 16));
  }

  return result;
}

uint64_t sub_29781AE8C(uint64_t a1)
{
  v2 = a1;
  if (sub_29781C2A8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781AECC(uint64_t a1, unsigned int a2, void *a3)
{
  if (sub_297805430((a1 + 104)))
  {
    return 0;
  }

  result = sub_29781AE8C(*(a1 + 288));
  if (result)
  {
    *a3 = *(a1 + 288);
    *(a1 + 288) = *sub_2977FE5F8((result + 16), a2);
    return 1;
  }

  return result;
}

uint64_t sub_29781AF44(uint64_t a1)
{
  result = sub_29781AE8C(*(a1 + 288));
  if (result)
  {
    return sub_29780BD00((result + 16));
  }

  return result;
}

uint64_t sub_29781AF6C(uint64_t a1, unsigned int a2, void *a3)
{
  if (sub_297805430((a1 + 104)))
  {
    return 0;
  }

  result = sub_29781AE8C(*(a1 + 288));
  if (result)
  {
    *a3 = *(a1 + 288);
    *(a1 + 288) = *sub_2977FE5F8((result + 16), a2);
    return 1;
  }

  return result;
}

uint64_t sub_29781AFF0(uint64_t a1, char *a2)
{
  if (*(a1 + 296))
  {
    return 0;
  }

  v9[4] = v2;
  v9[5] = v3;
  result = sub_29781B068(*(a1 + 288));
  if (result)
  {
    v9[0] = sub_297815F90(result);
    v9[1] = v7;
    sub_2977FB7B4(v8, a2);
    result = sub_2977FB778(v9, v8[0], v8[1]);
    if (result)
    {
      result = 1;
      *(a1 + 296) = 1;
    }
  }

  return result;
}

uint64_t sub_29781B068(uint64_t a1)
{
  v2 = a1;
  if (sub_29781C310(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781B0A4(uint64_t result)
{
  if ((*(result + 296) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 288);
    sub_2978036E0(v3, "unknown enumerated scalar");
    return sub_29781AB84(v1, v2, v3);
  }

  return result;
}

uint64_t sub_29781B0FC(uint64_t a1, _BYTE *a2)
{
  sub_29781B1B8(a1 + 264);
  v4 = sub_29781AE8C(*(a1 + 288));
  if (v4)
  {
    v5 = v4;
    sub_29781B39C((a1 + 264), v12);
    sub_29781B3A4(v9, v12);
    v6 = sub_29780BD00((v5 + 16));
    v11 = 0;
    sub_29781B1C0((a1 + 264), v9[0], v9[1], v6, &v11, v10);
  }

  else
  {
    v7 = *(a1 + 288);
    sub_2978036E0(v9, "expected sequence of bit values");
    sub_29781AB84(a1, v7, v9);
  }

  *a2 = 1;
  return 1;
}

uint64_t sub_29781B1C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  j_nullsub_1(a6, a2);
  v12 = sub_29781C3A4(a1);
  if (v12 >= a4 && sub_2977FB7B8(a1) <= v12 - a4)
  {
    sub_29781C3AC(a1, v26);
    sub_29781B3A4(&v23, v26);
    a1[1] += a4;
    v20 = v23;
    v21 = v24;
    sub_29781C3AC(a1, v26);
    sub_29781C3B4(a2, a3, v20, v21, v26, v25);
    sub_29781C454(a1, a2, a3, v26);
    sub_29781C4B8(a6, v26);
  }

  else
  {
    sub_29781C4CC(a1);
    sub_297809B88(&v23);
    v13 = sub_29781C5A8(a1, a1[1] + a4);
    sub_29781C4F4(&v23, v13);
    v24 = a1[1] + a4;
    v14 = sub_29781C6C8(a1);
    v16 = v15;
    sub_29781B39C(&v23, v25);
    sub_29781C628(v14, v16, a2, a3, v25, v26);
    sub_29781C4B8(a6, v26);
    v17 = sub_29781C6E8(a1);
    v19 = v18;
    sub_29781C3AC(&v23, v26);
    sub_29781C3B4(a2, a3, v17, v19, v26, v25);
    sub_29781C708(a1, &v23);
    sub_29781A490(&v23);
  }

  sub_29781B3A4(&v23, a6);
  return sub_29781C760(&v23, a4, a5, v26);
}

uint64_t sub_29781B3A8(uint64_t a1, char *a2)
{
  if (sub_297805430((a1 + 104)))
  {
    return 0;
  }

  v4 = sub_29781AE8C(*(a1 + 288));
  if (!v4)
  {
    v13 = *(a1 + 288);
    sub_2978036E0(&v17, "expected sequence of bit values");
    sub_29781AB84(a1, v13, &v17);
    return 0;
  }

  v6 = v4;
  v21 = sub_29780A294((v4 + 16), v5);
  v20 = sub_297809B0C(v6 + 16, v7);
  if (!sub_29780852C(&v21, &v20))
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v9 = sub_2977FB720(&v21);
    v10 = sub_29781B068(*v9);
    if (!v10)
    {
      v12 = *(a1 + 288);
      sub_2978036E0(&v17, "unexpected scalar in sequence of bit values");
      sub_29781AB84(a1, v12, &v17);
      goto LABEL_9;
    }

    v17 = sub_297815F90(v10);
    v18 = v11;
    sub_2977FB7B4(v19, a2);
    if (sub_2977FB778(&v17, v19[0], v19[1]))
    {
      break;
    }

LABEL_9:
    sub_29781B504(&v21);
    if (!sub_29780852C(&v21, &v20))
    {
      return 0;
    }
  }

  v17 = sub_29781B500((a1 + 264), i);
  v18 = v15;
  v16 = 1;
  sub_297810070(&v17, 1);
  return v16;
}

unint64_t sub_29781B514(uint64_t a1)
{
  result = sub_297805430((a1 + 104));
  if ((result & 1) == 0)
  {
    result = sub_29781AE8C(*(a1 + 288));
    if (result)
    {
      v3 = result;
      result = sub_29780BD00((result + 16));
      if (result)
      {
        v4 = 0;
        v5 = 1;
        while (1)
        {
          v9[0] = sub_29781B500((a1 + 264), v4);
          v9[1] = v6;
          if (!sub_2978100D8(v9))
          {
            break;
          }

          v4 = v5;
          result = sub_29780BD00((v3 + 16));
          if (result <= v5++)
          {
            return result;
          }
        }

        v8 = *sub_2977FE5F8((v3 + 16), v4);
        sub_2978036E0(v9, "unknown bit value");
        return sub_29781AB84(a1, v8, v9);
      }
    }
  }

  return result;
}

uint64_t sub_29781B5DC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29781B068(*(a1 + 288));
  if (v4)
  {
    result = sub_297815F90(v4);
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v7 = *(a1 + 288);
    sub_2978036E0(v8, "unexpected scalar");
    return sub_29781AB84(a1, v7, v8);
  }

  return result;
}

uint64_t sub_29781B644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FB720(a1 + 88);
  sub_297815EC4(v6, a2, a3);
  result = sub_2978055EC(22);
  *(a1 + 104) = result;
  *(a1 + 112) = v8;
  return result;
}

uint64_t sub_29781B694(uint64_t a1)
{
  v2 = a1;
  if (sub_29781DAD4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781B6DC(uint64_t a1)
{
  v2 = a1;
  if (sub_29781DB14(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781B724(uint64_t a1)
{
  v2 = a1;
  if (sub_29781DF2C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781B780(void *a1)
{
  *a1 = &unk_2A1E54CC8;
  v2 = (a1 + 2);
  v7 = sub_29781ACE4((a1 + 2));
  v6 = sub_29781AD1C(v2);
  while (sub_29781550C(&v7, &v6))
  {
    v3 = *(sub_29781AD54(&v7) + 8);
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    sub_29781AE30(&v7);
  }

  sub_2977FD134(a1 + 6);
  sub_29781B854(v2);
  return nullsub_1(a1, v4);
}

void sub_29781B85C()
{
  v0 = sub_29781B858();

  j__free(v0);
}

uint64_t sub_29781B884(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E54CF0;
  v3 = (a1 + 2);
  v9 = sub_29780A294(a1 + 2, a2);
  v8 = sub_297809B0C(v3, v4);
  while (sub_29780852C(&v9, &v8))
  {
    v5 = *sub_2977FB720(&v9);
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }

    sub_29781B504(&v9);
  }

  sub_29781B950(v3);
  return nullsub_1(a1, v6);
}

void sub_29781B958()
{
  v0 = sub_29781B954();

  j__free(v0);
}

uint64_t sub_29781B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  sub_297802728(v7, &v6);
  sub_2978046C4(a4, &v6);
  std::string::~string(&v6);
  sub_297804560(&v8);
  return v8;
}

uint64_t sub_29781B9F0(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = 0;
  if (sub_29780FD80(a1, a2, 0, &v7))
  {
    v5 = "invalid number";
  }

  else
  {
    if (!HIDWORD(v7))
    {
      *a4 = v7;
      sub_297804560(&v8);
      return v8;
    }

    v5 = "out of range number";
  }

  sub_2977FB7B4(&v8, v5);
  return v8;
}

void sub_29781BA78(uint64_t a1, uint64_t a2)
{
  v2 = j_nullsub_1(a1, a2);

  j__free(v2);
}

void sub_29781BAA0()
{
  v0 = j_j_nullsub_1();

  j__free(v0);
}

void *sub_29781BAC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_29781BB10(a1, a2);
  *result = &unk_2A1E54D68;
  result[2] = a3;
  result[3] = a4;
  return result;
}

void *sub_29781BB10(void *result, uint64_t a2)
{
  *result = &unk_2A1E54D18;
  result[1] = a2;
  return result;
}

void *sub_29781BB30(void *a1, uint64_t a2)
{
  v3 = sub_29781BB10(a1, a2);
  *v3 = &unk_2A1E54CF0;
  sub_297809B88(v3 + 2);
  return a1;
}

void *sub_29781BB78(void *a1, uint64_t a2)
{
  v3 = sub_29781BB10(a1, a2);
  *v3 = &unk_2A1E54CC8;
  v4 = v3 + 6;
  sub_29781BBD0(v3 + 2);
  sub_29781BBD4(v4);
  return a1;
}

uint64_t sub_29781BBE0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 20) = a2;
  return result;
}

void *sub_29781BBF4(void *a1, uint64_t a2)
{
  result = sub_29781BB10(a1, a2);
  *result = &unk_2A1E54D40;
  return result;
}

uint64_t sub_29781BC28(uint64_t a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 && v5 != sub_2978027E4())
        {
          sub_29781BCB4(v5, a1 + 24);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_29781BCB4(unsigned int *a1, int a2)
{
  sub_2977FB5F0(a1);

  sub_29781827C(a2, a1);
}

uint64_t sub_29781BCF8(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29781BD38(&v3);
  return a1;
}

uint64_t *sub_29781BD38(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29780C6B8(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29780C708(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

void sub_29781BDD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_29781BDEC(a1, v3);
  }
}

void sub_29781BDEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297815EB8(a2);

    j__free(v2);
  }
}

uint64_t sub_29781BE4C(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29781BE8C(&v3);
  return a1;
}

uint64_t *sub_29781BE8C(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    return sub_297809C98(result, *result, result[2]);
  }

  return result;
}

uint64_t sub_29781BF1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t sub_29781BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29781C134(v11, &v10, v7);
  v8 = sub_29781C040(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_29781C040(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29780ED7C(a1, *a2, a2[1]);
  v5 = *a1;
  v6 = v4;
  v7 = *(*a1 + 8 * v4);
  if (v7)
  {
    if (v7 != sub_2978027E4())
    {
      sub_29781C144(v11, *a1 + 8 * v6, 0);
      v10 = 0;
      return sub_29780EB40(v11, &v10);
    }

    v7 = *(v5 + 8 * v6);
  }

  if (v7 == sub_2978027E4())
  {
    --*(a1 + 16);
  }

  *(v5 + 8 * v6) = sub_29781C148(*a2, a2[1], a1 + 24, a2[2]);
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

void *sub_29781C148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  v6 = sub_2977FB7B8(v12);
  sub_29781C25C();
  v7 = sub_297803F78(a3, (v6 + 17));
  v8 = sub_29781C264(v7, v6, a4);
  v9 = sub_297806460(v8);
  v10 = sub_2977FB720(v12);
  memcpy(v9, v10, v6);
  *(v9 + v6) = 0;
  return v7;
}

void **sub_29781C1E0(void **a1, void *a2, char a3)
{
  *a1 = a2;
  if ((a3 & 1) == 0)
  {
    sub_29781C214(a1);
  }

  return a1;
}

uint64_t sub_29781C214(void **a1)
{
  for (i = *a1; ; *a1 = i)
  {
    v3 = *i;
    if (!*i)
    {
      goto LABEL_5;
    }

    result = sub_2978027E4();
    if (v3 != result)
    {
      break;
    }

    i = *a1;
LABEL_5:
    ++i;
  }

  return result;
}

_DWORD *sub_29781C268(_DWORD *a1, int a2, uint64_t a3)
{
  result = sub_29780819C(a1, a2);
  *(result + 1) = a3;
  return result;
}

__n128 sub_29781C294(__n128 *a1, __n128 *a2, unint64_t *a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = *a3;
  return result;
}

uint64_t sub_29781C398(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_29781C3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 8) == a4)
  {
    sub_29781B3A4(v12, a5);
    return sub_29781C7C8(a1, a2, a3, a4, v12, a6);
  }

  else
  {
    sub_29781B3A4(v12, a5);
    return sub_29781C950(a1, a2, a3, a4, v12, a6);
  }
}

uint64_t sub_29781C454@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  sub_29781B39C(a1, v11);
  v9 = sub_29781C6C8(a1);
  v10 = v6;
  v7 = sub_29781CC0C(v12, &v9);
  return sub_29781CC8C(v11, v7, a4);
}

uint64_t sub_29781C4B8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

unint64_t sub_29781C4F4(uint64_t *a1, unint64_t a2)
{
  result = sub_29781C3A4(a1);
  if (result < a2)
  {
    if (sub_29781CD10() < a2)
    {
      sub_29780A05C();
    }

    sub_29781C4CC(a1);
    sub_297809B88(v8);
    sub_29781CD64(v8, a2);
    sub_29781B39C(a1, v7);
    sub_29781C3AC(a1, v6);
    v5 = sub_2977FB7B8(a1);
    sub_29781CDB4(v8, v7, v6, v5);
    sub_29781C708(a1, v8);
    return sub_29781A490(v8);
  }

  return result;
}

unint64_t sub_29781C5A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_29781CD10();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_29781C3A4(a1);
  if (v6 < v5 >> 1)
  {
    v9 = 2 * v6;
    v8 = sub_29781D398(a2);
    return *sub_29780338C(&v9, &v8);
  }

  return v5;
}

uint64_t sub_29781C628@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 8) == a2)
  {
    sub_29781B3A4(v12, a5);
    return sub_29781D3A4(a1, a2, a3, a4, v12, a6);
  }

  else
  {
    sub_29781B3A4(v12, a5);
    return sub_29781D538(a1, a2, a3, a4, v12, a6);
  }
}

uint64_t sub_29781C708(uint64_t *a1, uint64_t *a2)
{
  sub_2977FDE84(a1, a2);
  sub_2977FDE84(a1 + 1, a2 + 1);
  sub_2977FDE84(a1 + 2, a2 + 2);

  return j_nullsub_1(a1, a2);
}

uint64_t sub_29781C760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_29781B3A4(v10, a1);
  v8 = nullsub_1(a2, v7);
  return sub_29781D818(v10, v8, a3, a4);
}

uint64_t sub_29781C7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28[0] = a1;
  v28[1] = a2;
  v26 = a3;
  v27 = a4;
  v8 = sub_29781CC0C(&v26, v28);
  v25 = v8;
  if (v8 >= 1)
  {
    if (v27)
    {
      v24 = v27;
      v10 = sub_29781CC2C(&v24, &v25);
      v11 = *v10;
      v25 -= *v10;
      v12 = (-1 << (v27 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v27);
      v13 = v26;
      v14 = *a5;
      **a5 = **a5 & ~v12 | v12 & *v26;
      *(a5 + 8) = (*(a5 + 8) - v11) & 0x3F;
      v8 = v25;
    }

    else
    {
      v14 = *a5;
      v13 = v26;
    }

    if (v8 >= 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8 + 63;
    }

    *a5 = &v14[-(v15 >> 6)];
    v26 = &v13[-(v15 >> 6)];
    nullsub_1(v26, v9);
    nullsub_1(*a5, v16);
    sub_29781CC30();
    v17 = v25 - (v15 & 0xFFFFFFFFFFFFFFC0);
    v25 = v17;
    if (v17 >= 1)
    {
      v18 = -1 << -v17;
      v19 = *--v26;
      v20 = v19 & v18;
      v21 = (*a5 - 8);
      v22 = *v21;
      *a5 = v21;
      *v21 = v22 & ~v18 | v20;
      *(a5 + 8) = -v25 & 0x3F;
    }
  }

  return sub_29781B3A4(a6, a5);
}

uint64_t sub_29781C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48[0] = a1;
  v48[1] = a2;
  v46 = a3;
  v47 = a4;
  v8 = sub_29781CC0C(&v46, v48);
  v45 = v8;
  if (v8 >= 1)
  {
    if (v47)
    {
      v44 = v47;
      v9 = sub_29781CC2C(&v44, &v45);
      v10 = v45 - *v9;
      v44 = *v9;
      v45 = v10;
      v11 = (0xFFFFFFFFFFFFFFFFLL >> -v47) & *v46 & (-1 << (v47 - v44));
      v12 = *(a5 + 8);
      v43 = v12;
      v13 = *sub_29781CC2C(&v44, &v43);
      if (v13)
      {
        v14 = *(a5 + 8);
        v15 = v11 << (v14 - v47);
        if (v14 <= v47)
        {
          v15 = v11 >> (v47 - v14);
        }

        **a5 = v15 | **a5 & ~((-1 << (v14 - v13)) & (0xFFFFFFFFFFFFFFFFLL >> -v12));
        *(a5 + 8) = (v14 - v13) & 0x3F;
        v16 = v44 - v13;
        v44 -= v13;
      }

      else
      {
        v16 = v44;
      }

      if (v16 >= 1)
      {
        v17 = (*a5 - 8);
        v18 = *v17;
        *a5 = v17;
        v19 = -v16;
        v20 = v19 & 0x3F;
        *(a5 + 8) = v19 & 0x3F;
        v21 = v18 & ~(-1 << v19);
        *v17 = v21;
        LOBYTE(v18) = v47 - v44;
        LODWORD(v47) = v47 - v44 - v13;
        *v17 = (v11 << (v20 - (v18 - v13))) | v21;
      }

      v8 = v45;
    }

    v22 = *(a5 + 8);
    v23 = 0xFFFFFFFFFFFFFFFFLL >> -v22;
    if (v8 >= 64)
    {
      v24 = v46;
      v25 = *a5;
      do
      {
        v27 = *--v24;
        v26 = v27;
        *v25 = *v25 & ~v23 | (v27 >> (64 - v22));
        v28 = *--v25;
        *v25 = v28 & v23 | (v26 << v22);
        v29 = v45;
        v8 = v45 - 64;
        v45 -= 64;
      }

      while (v29 > 127);
      v46 = v24;
      *a5 = v25;
    }

    if (v8 >= 1)
    {
      v30 = *--v46;
      v31 = v30 & (-1 << -v8);
      v44 = v22;
      v32 = sub_29781CC2C(&v45, &v44);
      v33 = *v32;
      v34 = *(a5 + 8);
      v35 = *a5;
      **a5 = **a5 & ~((-1 << (v34 - *v32)) & v23) | (v31 >> -v34);
      *(a5 + 8) = (v34 - v33) & 0x3F;
      v36 = v45 - v33;
      v45 = v36;
      if (v36 >= 1)
      {
        v38 = *(v35 - 1);
        v37 = v35 - 1;
        *a5 = v37;
        v39 = -v36;
        v40 = v39 & 0x3F;
        *(a5 + 8) = v39 & 0x3F;
        v41 = v38 & ~(-1 << v39);
        *v37 = v41;
        *v37 = (v31 << (v33 + v45 + v40)) | v41;
      }
    }
  }

  return sub_29781B3A4(a6, a5);
}

void *sub_29781CC38(void *a1, void *a2)
{
  if (sub_29781CC78(&v5, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_29781CC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_29781B3A4(a3, a1);

  return sub_29781CCCC(v4, a2);
}

uint64_t sub_29781CCCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = a2 + v2;
  if (a2 + v2 - 63 >= 0)
  {
    v3 = a2 + v2 - 63;
  }

  v4 = v3 >> 6;
  if (a2 >= 0)
  {
    v4 = (v2 + a2) >> 6;
  }

  *result += 8 * v4;
  *(result + 8) = (v2 + a2) & 0x3F;
  return result;
}

uint64_t sub_29781CD10()
{
  v0 = sub_29780CEE0();
  v1 = sub_2978027E0();
  if (v0 >= v1 >> 7)
  {
    return v1 >> 1;
  }

  return sub_29781C7C0(v0);
}

uint64_t sub_29781CD64(uint64_t *a1, unint64_t a2)
{
  if (sub_29781CD10() < a2)
  {
    sub_29780A05C();
  }

  v4 = sub_29781CE84(a2);
  result = sub_29781CE5C(a1, v4);
  *a1 = result;
  a1[1] = 0;
  a1[2] = v6;
  return result;
}

uint64_t sub_29781CDB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  sub_29781B3A4(v13, a2);
  sub_29781B3A4(v12, a3);
  sub_29781C378(a1, v6, v11);
  return sub_29781CEE0(v13, v12, v11, &v10);
}

unint64_t sub_29781CE84(uint64_t a1)
{
  if (a1)
  {
    return ((a1 - 1) >> 6) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29781CE98(uint64_t a1, unint64_t a2)
{
  if (sub_29780CEE0() < a2)
  {
    sub_29780339C();
  }

  return sub_29780CF34(a2);
}

uint64_t sub_29781CEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29781B3A4(v10, a1);
  sub_29781B3A4(v9, a2);
  sub_29781B3A4(v8, a3);
  return sub_29781CF50(v10, v9, v8, a4);
}

uint64_t sub_29781CF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29781B3A4(v12, a1);
  sub_29781B3A4(v14, a2);
  sub_29781D064(v12, v14, v15);
  sub_29781B3A4(v14, v15);
  sub_29781B3A4(v11, &v16);
  sub_29781B3A4(v12, a3);
  sub_29781D170(v12, v10);
  sub_29781D0D0(v14, v11, v10, v12);
  sub_29781B3A4(v11, a1);
  sub_29781B3A4(v10, v12);
  sub_29781D1C0(v11, v10, v14);
  sub_29781B3A4(v10, a3);
  sub_29781B3A4(v9, &v13);
  sub_29781D214(v10, v9, v11);
  return sub_29781D1B0(v14, v11, a4);
}

uint64_t sub_29781D064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29781B3A4(v7, a1);
  sub_29781D170(v7, v8);
  sub_29781B3A4(v6, a2);
  sub_29781D170(v6, v7);
  return sub_29781D1B0(v8, v7, a3);
}

uint64_t sub_29781D0D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  while (sub_29781D268(a1, a2))
  {
    v12[0] = sub_29781D284(a1);
    v12[1] = v8;
    v11[0] = sub_29781D284(a3);
    v11[1] = v9;
    sub_29781D2BC(v11, v12);
    sub_29781D2FC(a1);
    sub_29781D2FC(a3);
  }

  return sub_29781D1B0(a1, a3, a4);
}

uint64_t sub_29781D1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29781B3A4(v7, a1);
  sub_29781B3A4(v6, a2);
  return sub_29781D214(v7, v6, a3);
}

uint64_t sub_29781D214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29781B3A4(v7, a1);
  sub_29781B3A4(v6, a2);
  return sub_29781D390(v6, a3);
}

uint64_t sub_29781D2BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978100D8(a2);

  return sub_297810070(a1, v3);
}

uint64_t sub_29781D2FC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 63)
  {
    v2 = 0;
    *result += 8;
  }

  else
  {
    v2 = v1 + 1;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_29781D358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29781B3A4(a1, a2);
  sub_29781B3A4(v5 + 16, a3);
  return a1;
}

uint64_t sub_29781D3A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a2;
  v28[0] = a3;
  v28[1] = a4;
  v8 = sub_29781CC0C(v28, &v29);
  v27 = v8;
  if (v8 >= 1)
  {
    if (v30)
    {
      v10 = 64 - v30;
      v26 = (64 - v30);
      v11 = sub_29781CC2C(&v26, &v27);
      v12 = *v11;
      v27 -= *v11;
      v13 = v29 + 1;
      v14 = *a5;
      **a5 = **a5 & ~((-1 << v30) & (0xFFFFFFFFFFFFFFFFLL >> (v10 - v12))) | (-1 << v30) & (0xFFFFFFFFFFFFFFFFLL >> (v10 - v12)) & *v29;
      v15 = *(a5 + 8);
      v16 = __OFADD__(v12, v15);
      v17 = v12 + v15;
      v18 = v17 + 63;
      if (v17 < 0 == v16)
      {
        v18 = v17;
      }

      v19 = v18 >> 6;
      *a5 = &v14[v19];
      *(a5 + 8) = v17 - (v19 << 6);
      v29 = v13;
      v20 = v27;
    }

    else
    {
      v20 = v8;
      v13 = v29;
    }

    if (v20 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 + 63;
    }

    nullsub_1(v13, v9);
    nullsub_1(*a5, v22);
    sub_29781CC30();
    v27 -= v21 & 0xFFFFFFFFFFFFFFC0;
    v23 = v27;
    v24 = (*a5 + 8 * (v21 >> 6));
    *a5 = v24;
    if (v23 >= 1)
    {
      v29 += v21 >> 6;
      *v24 = *v24 & ~(0xFFFFFFFFFFFFFFFFLL >> -v23) | *v29 & (0xFFFFFFFFFFFFFFFFLL >> -v23);
      *(a5 + 8) = v27;
    }
  }

  return sub_29781B3A4(a6, a5);
}

uint64_t sub_29781D538@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a1;
  v45 = a2;
  v43[0] = a3;
  v43[1] = a4;
  v8 = sub_29781CC0C(v43, &v44);
  v42 = v8;
  if (v8 >= 1)
  {
    if (v45)
    {
      v9 = 64 - v45;
      v41 = (64 - v45);
      v10 = sub_29781CC2C(&v41, &v42);
      v11 = *v10;
      v42 -= *v10;
      v12 = (-1 << v45) & *v44 & (0xFFFFFFFFFFFFFFFFLL >> (v9 - v11));
      v13 = 64 - *(a5 + 8);
      v40 = v13;
      v41 = v11;
      v14 = sub_297802578(&v41, &v40);
      v15 = *v14;
      v16 = *(a5 + 8);
      v17 = *a5;
      v18 = v45;
      v19 = v12 >> (v45 - v16);
      if (v16 > v45)
      {
        v19 = v12 << (v16 - v45);
      }

      *v17 = v19 | **a5 & ~((-1 << v16) & (0xFFFFFFFFFFFFFFFFLL >> (v13 - *v14)));
      v20 = &v17[(v15 + v16) >> 6];
      *a5 = v20;
      v21 = (v16 + v15) & 0x3F;
      *(a5 + 8) = v21;
      if (v11 - v15 >= 1)
      {
        *v20 = *v20 & ~(0xFFFFFFFFFFFFFFFFLL >> (v15 - v11)) | (v12 >> (v15 + v18));
        *(a5 + 8) = v11 - v15;
        v21 = v11 - v15;
      }

      ++v44;
      v8 = v42;
    }

    else
    {
      v21 = *(a5 + 8);
    }

    v22 = (64 - v21);
    if (v8 >= 64)
    {
      v23 = v21;
      v24 = -1 << v21;
      v25 = v44;
      v26 = *a5;
      v27 = **a5;
      do
      {
        v29 = *v25++;
        v28 = v29;
        *v26 = v27 & ~v24 | (v29 << v23);
        v30 = v26[1];
        ++v26;
        v27 = v30 & v24 | (v28 >> v22);
        *v26 = v27;
        v31 = v42;
        v8 = v42 - 64;
        v42 -= 64;
      }

      while (v31 > 127);
      *a5 = v26;
      v44 = v25;
    }

    if (v8 >= 1)
    {
      v32 = *v44 & (0xFFFFFFFFFFFFFFFFLL >> -v8);
      v41 = v22;
      v33 = sub_29781CC2C(&v42, &v41);
      v34 = *v33;
      v35 = *(a5 + 8);
      v36 = *a5;
      *v36 = **a5 & ~((-1 << v35) & (0xFFFFFFFFFFFFFFFFLL >> (v22 - *v33))) | (v32 << v35);
      v37 = &v36[(v34 + v35) >> 6];
      *a5 = v37;
      *(a5 + 8) = (v35 + v34) & 0x3F;
      v38 = v42 - v34;
      v42 = v38;
      if (v38 >= 1)
      {
        *v37 = *v37 & ~(0xFFFFFFFFFFFFFFFFLL >> -v38) | (v32 >> v34);
        *(a5 + 8) = v42;
      }
    }
  }

  return sub_29781B3A4(a6, a5);
}

uint64_t sub_29781D818@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (*a3 == 1)
    {
      sub_29781B3A4(v8, a1);
      sub_29781D89C(v8, a2);
    }

    else
    {
      sub_29781B3A4(v8, a1);
      sub_29781D98C(v8, a2);
    }
  }

  return sub_29781CC8C(a1, a2, a4);
}

void *sub_29781D89C(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    v16 = (64 - v3);
    v4 = sub_297802578(&v16, &v17);
    v5 = *v4;
    v6 = v16 - *v4;
    v7 = *a1;
    *v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) & (-1 << *(a1 + 8)) | **a1;
    v8 = v7 + 1;
    v9 = v17 - v5;
    v17 -= v5;
    *a1 = v8;
  }

  else
  {
    v9 = a2;
    v8 = *a1;
  }

  v10 = v9 >> 6;
  v11 = nullsub_1(v8, a2);
  v16 = -1;
  result = sub_29781DA7C(v11, v9 >> 6, &v16);
  v13 = v17 - (v9 & 0xC0);
  v17 -= v9 & 0xFFFFFFFFFFFFFFC0;
  if (v17)
  {
    v14 = *a1;
    v15 = (*a1 + 8 * v10);
    *a1 = v15;
    v14[v10] = *v15 | (0xFFFFFFFFFFFFFFFFLL >> -v13);
  }

  return result;
}

void *sub_29781D98C(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    v16 = (64 - v3);
    v4 = sub_297802578(&v16, &v17);
    v5 = *v4;
    v6 = v16 - *v4;
    v7 = *a1;
    *v7 = **a1 & ~((0xFFFFFFFFFFFFFFFFLL >> v6) & (-1 << *(a1 + 8)));
    v8 = v7 + 1;
    v9 = v17 - v5;
    v17 -= v5;
    *a1 = v8;
  }

  else
  {
    v9 = a2;
    v8 = *a1;
  }

  v10 = v9 >> 6;
  v11 = nullsub_1(v8, a2);
  v16 = 0;
  result = sub_29781DA7C(v11, v9 >> 6, &v16);
  v13 = v17 - (v9 & 0xC0);
  v17 -= v9 & 0xFFFFFFFFFFFFFFC0;
  if (v17)
  {
    v14 = *a1;
    v15 = (*a1 + 8 * v10);
    *a1 = v15;
    v14[v10] = *v15 & ~(0xFFFFFFFFFFFFFFFFLL >> -v13);
  }

  return result;
}

void *sub_29781DA7C(void *result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = *a3;
    do
    {
      *result++ = v3;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29781DB54(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29781DBFC(a1, a2);
  }

  else
  {
    sub_29781DB94(a1, a2);
    result = v3 + 8;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29781DB94(uint64_t a1, void *a2)
{
  sub_29780CF3C(&v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_29780D0B0(a1, v5, a2);
  v8 += 8;
  return sub_297809E88(&v7);
}

uint64_t sub_29781DBFC(uint64_t *a1, void *a2)
{
  v4 = sub_29780BD00(a1);
  v5 = sub_29781DCA0(a1, v4 + 1);
  v6 = sub_29780BD00(a1);
  sub_29781DD18(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_29780D0B0(a1, v8, a2);
  v12 += 8;
  sub_29781DD1C(a1, v11);
  v9 = a1[1];
  sub_29781DE00(v11);
  return v9;
}

unint64_t sub_29781DCA0(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_29780CE7C();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_29780C708(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_29781DD1C(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_29780A154(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_29780BD00(a1);

  return nullsub_1(a1, v11);
}

uint64_t *sub_29781DE04(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_29781CE5C(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 8 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 8 * a2;
  return a1;
}

uint64_t *sub_29781DE54(uint64_t *a1)
{
  sub_29781DEA8(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29781DEB0(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_29781DEC8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 8;
      v6 = nullsub_1(v2 - 8, a2);
      result = j_nullsub_1(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

double sub_29781DF70(void *a1, uint64_t a2, double *a3)
{
  v4 = sub_29781DFB8(a1, a2);
  *v4 = &unk_2A1E54D90;
  result = *a3;
  v4[2] = *a3;
  return result;
}

void *sub_29781DFB8(void *result, uint64_t a2)
{
  *result = &unk_2A1E54F60;
  result[1] = a2;
  return result;
}

uint64_t sub_29781E010(uint64_t a1)
{
  *a1 = &unk_2A1E54DC0;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      j__free(v2);
    }
  }

  return a1;
}

void sub_29781E07C(uint64_t *a1)
{
  v2 = (*(*a1 + 80))(a1);
  if (v2)
  {

    sub_29781E0FC(a1, v2);
  }

  else
  {

    sub_29781E14C(a1);
  }
}

void sub_29781E0FC(uint64_t *a1, uint64_t a2)
{
  sub_29781ED10(a1);
  v4 = sub_2977FA198(a2);

  sub_29781E190(a1, v4, a2, 1);
}

void sub_29781E14C(uint64_t *a1)
{
  sub_29781ED10(a1);

  sub_29781E190(a1, 0, 0, 0);
}

void sub_29781E190(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 32) == 1)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      j__free(v8);
    }
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a2 + a3;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
}

void **sub_29781E1EC(void **a1, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = 0;
    do
    {
      v7[v2-- + 19] = (a2 % 0xA) | 0x30;
      v3 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v3);
    result = sub_29781E2C0(a1, &v7[v2 + 20], -v2);
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return sub_2978028D8(a1, 48);
  }

  return result;
}

void **sub_29781E2C0(void **a1, _BYTE *a2, size_t __n)
{
  v3 = __n;
  v6 = a1[3];
  v7 = a1[2] - v6;
  if (v7 < __n)
  {
    while (1)
    {
      while (1)
      {
        v12 = a1[1];
        if (!v12)
        {
          break;
        }

        if (v6 == v12)
        {
          v7 *= v3 / v7;
          v3 -= v7;
          (*(*a1 + 7))(a1, a2, v7);
          v6 = a1[3];
          v11 = a1[2] - v6;
          if (v3 <= v11)
          {
            v9 = &a2[v7];
            v8 = a1;
            goto LABEL_3;
          }
        }

        else
        {
          sub_29781E954(a1, a2, v7);
          sub_29781E878(a1);
          v3 -= v7;
          v6 = a1[3];
          v11 = a1[2] - v6;
        }

        a2 += v7;
        v7 = v11;
        if (v11 >= v3)
        {
          goto LABEL_2;
        }
      }

      if (!*(a1 + 8))
      {
        break;
      }

      sub_29781E07C(a1);
      v6 = a1[3];
      v7 = a1[2] - v6;
      if (v7 >= v3)
      {
        goto LABEL_2;
      }
    }

    (*(*a1 + 7))(a1, a2, v3);
  }

  else
  {
LABEL_2:
    v8 = a1;
    v9 = a2;
LABEL_3:
    sub_29781E954(v8, v9, v3);
  }

  return a1;
}

void **sub_29781E410(void **a1, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    sub_2978028D8(a1, 45);
    v2 = -v2;
  }

  return sub_29781E1EC(a1, v2);
}

void **sub_29781E464(void **a1, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    sub_2978028D8(a1, 45);
    v2 = -v2;
  }

  return sub_29781E460(a1, v2);
}

void **sub_29781E4B4(void **a1, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = 0;
    do
    {
      if ((a2 & 0xF) >= 0xA)
      {
        v3 = (a2 & 0xF) + 87;
      }

      else
      {
        v3 = a2 & 0xF | 0x30;
      }

      v8[v2-- + 19] = v3;
      v4 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v4);
    result = sub_29781E2C0(a1, &v8[v2 + 20], -v2);
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];

    return sub_2978028D8(a1, 48);
  }

  return result;
}

uint64_t sub_29781E584(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16[0] = a2;
  v16[1] = a3;
  v6 = sub_2977FB7B8(v16);
  v7 = v6;
  if (v6)
  {
    for (i = 0; v7 != i; ++i)
    {
      v9 = sub_297803A20(v16, i);
      v10 = v9;
      if (v9 > 0x21u)
      {
        if (v9 == 34)
        {
          v11 = sub_2978028D8(a1, 92);
          v12 = 34;
          goto LABEL_18;
        }

        if (v9 == 92)
        {
          v11 = sub_2978028D8(a1, 92);
          v12 = 92;
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 == 9)
        {
          v11 = sub_2978028D8(a1, 92);
          v12 = 116;
          goto LABEL_18;
        }

        if (v9 == 10)
        {
          v11 = sub_2978028D8(a1, 92);
          v12 = 110;
LABEL_18:
          sub_2978028D8(v11, v12);
          continue;
        }
      }

      if (!sub_29781E6F8(v9))
      {
        v13 = sub_2978028D8(a1, 92);
        if (a4)
        {
          sub_2978028D8(v13, 120);
          v14 = sub_29781E738(v10 >> 4);
          sub_2978028D8(a1, v14);
          v12 = sub_29781E738(v10 & 0xF);
        }

        else
        {
          sub_2978028D8(a1, (v10 >> 6) | 0x30);
          sub_2978028D8(a1, (v10 >> 3) & 7 | 0x30);
          v12 = v10 & 7 | 0x30;
        }

        v11 = a1;
        goto LABEL_18;
      }

      sub_29781E700(a1, v10);
    }
  }

  return a1;
}

uint64_t sub_29781E700(uint64_t result, char a2)
{
  v2 = *(result + 24);
  if (v2 >= *(result + 16))
  {
    return sub_29781E8A8(result, a2);
  }

  *(result + 24) = v2 + 1;
  *v2 = a2;
  return result;
}

uint64_t sub_29781E738(unsigned int a1)
{
  v1 = a1 | 0x30;
  if (a1 >= 0xA)
  {
    return (a1 + 55);
  }

  return v1;
}

uint64_t sub_29781E750(uint64_t a1, double a2)
{
  v6 = a2;
  sub_29781BA68("%e", &v6, v5);
  sub_29781E7A8(a1, v5);
  j_j_nullsub_1(v5, v3);
  return a1;
}

uint64_t sub_29781E7A8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v5 - v4;
  if ((v5 - v4) < 4)
  {
    v8 = 127;
  }

  else
  {
    v7 = sub_29781E9F4(a2, v4, v5 - v4);
    v8 = v7;
    if (v6 >= v7)
    {
      *(a1 + 24) += v7;
      return a1;
    }
  }

  sub_29780824C(v13);
  do
  {
    v9 = v8;
    sub_297806DA4(v13, v8);
    v10 = sub_297803A7C(v13);
    v8 = sub_29781E9F4(a2, v10, v8);
  }

  while (v9 < v8);
  v11 = sub_297803A7C(v13);
  sub_29781E2C0(a1, v11, v8);
  sub_2977FD134(v13);
  return a1;
}

uint64_t sub_29781E878(uint64_t *a1)
{
  v1 = a1[3];
  v2 = *a1;
  a1[3] = a1[1];
  return (*(v2 + 56))();
}

uint64_t sub_29781E8A8(uint64_t a1, char a2)
{
  v5 = *(a1 + 16);
  for (i = *(a1 + 24); ; i = *(a1 + 24))
  {
    if (i < v5)
    {
      goto LABEL_7;
    }

    if (*(a1 + 8))
    {
      sub_29781E878(a1);
      i = *(a1 + 24);
LABEL_7:
      *(a1 + 24) = i + 1;
      *i = a2;
      return a1;
    }

    if (!*(a1 + 32))
    {
      break;
    }

    sub_29781E07C(a1);
    v5 = *(a1 + 16);
  }

  v7 = a2;
  (*(*a1 + 56))(a1, &v7, 1);
  return a1;
}

void **sub_29781E954(void **result, _BYTE *a2, int64_t __n)
{
  v4 = result;
  if (__n > 1)
  {
    switch(__n)
    {
      case 2:
LABEL_7:
        *(result[3] + 1) = a2[1];
LABEL_10:
        *result[3] = *a2;
        goto LABEL_11;
      case 3:
LABEL_6:
        *(result[3] + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(result[3] + 3) = a2[3];
        goto LABEL_6;
    }

LABEL_12:
    result = memcpy(result[3], a2, __n);
    goto LABEL_11;
  }

  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4[3] = v4[3] + __n;
  return result;
}

uint64_t sub_29781E9F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = (*(*a1 + 8))(a1);
  if (v4 < a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 >= 0)
  {
    return v5;
  }

  else
  {
    return 2 * a3;
  }
}

uint64_t sub_29781EA50(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  v8 = sub_29781EBB0(a1, 0);
  *v8 = &unk_2A1E54E28;
  *(v8 + 41) = 0;
  *(v8 + 48) = 0;
  sub_297803300(a3);
  if (*a2 == 45 && !a2[1])
  {
    *(a1 + 36) = 1;
    if ((a4 & 4) == 0)
    {
      sub_297808BD8();
    }

    *(a1 + 40) = 1;
  }

  else
  {
    v9 = sub_2978036E0(&v17, a2);
    *&v18.__val_ = sub_2978071D0(v9, (a1 + 36), a4, 438);
    v18.__cat_ = v10;
    if (sub_297805430(&v18))
    {
      sub_297804638(&v14, a2);
      sub_2978094F0("Error opening output file '", &v14, &v15);
      sub_297808D80(&v15, "': ", &v16);
      std::error_code::message(&v13, &v18);
      sub_297808D28(&v16, &v13, &v17);
      sub_2978046C4(a3, &v17);
      std::string::~string(&v17);
      std::string::~string(&v13);
      std::string::~string(&v16);
      std::string::~string(&v15);
      std::string::~string(&v14);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 40) = v11;
  }

  return a1;
}

uint64_t sub_29781EBB0(uint64_t result, int a2)
{
  *(result + 32) = a2 ^ 1;
  *result = &unk_2A1E54DC0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_29781EBE0(uint64_t a1, int a2, char a3, int a4)
{
  v7 = sub_29781EBB0(a1, a4);
  *v7 = &unk_2A1E54E28;
  *(v7 + 36) = a2;
  *(v7 + 40) = a3;
  *(v7 + 41) = 0;
  v8 = lseek(a2, 0, 1);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  *(a1 + 48) = v9;
  return a1;
}

uint64_t sub_29781EC64(uint64_t a1)
{
  *a1 = &unk_2A1E54E28;
  if ((*(a1 + 36) & 0x80000000) == 0)
  {
    sub_29781ED10(a1);
    if (*(a1 + 40) == 1)
    {
      while (close(*(a1 + 36)))
      {
        if (*__error() != 4)
        {
          sub_29781ED28(a1);
          break;
        }
      }
    }
  }

  if (sub_29781ED34(a1))
  {
    sub_2978035B4("IO failure on output stream.", 0);
  }

  return sub_29781E010(a1);
}

uint64_t *sub_29781ED10(uint64_t *a1)
{
  if (a1[3] != a1[1])
  {
    return sub_29781E878(a1);
  }

  return a1;
}

void sub_29781ED40()
{
  v0 = sub_29781ED3C();

  j__free(v0);
}

uint64_t sub_29781ED68(uint64_t a1, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  *(a1 + 48) += __nbyte;
  while ((*(a1 + 42) & 1) == 0)
  {
    result = write(*(a1 + 36), __buf, v3);
    if (result < 0)
    {
      goto LABEL_6;
    }

LABEL_4:
    __buf += result;
    v3 -= result;
LABEL_9:
    if (!v3)
    {
      return result;
    }
  }

  v7.iov_base = __buf;
  v7.iov_len = v3;
  result = writev(*(a1 + 36), &v7, 1);
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_6:
  result = __error();
  if (*result == 4)
  {
    goto LABEL_9;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_9;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_9;
  }

  return sub_29781ED28(a1);
}

uint64_t sub_29781EE2C(uint64_t a1)
{
  *(a1 + 40) = 0;
  sub_29781ED10(a1);
  while (1)
  {
    result = close(*(a1 + 36));
    if (!result)
    {
      break;
    }

    if (*__error() != 4)
    {
      result = sub_29781ED28(a1);
      break;
    }
  }

  *(a1 + 36) = -1;
  return result;
}

uint64_t sub_29781EE80(uint64_t a1)
{
  if (fstat(*(a1 + 36), &v3) || (v3.st_mode & 0xF000) == 0x2000 && isatty(*(a1 + 36)))
  {
    return 0;
  }

  else
  {
    return v3.st_blksize;
  }
}

uint64_t *sub_29781EEE0(uint64_t *a1, int a2, int a3, int a4)
{
  if (sub_2977FD678())
  {
    sub_29781ED10(a1);
  }

  if (a2 == 8)
  {
    v8 = sub_297808A10();
  }

  else
  {
    v8 = sub_2978089E8(a2, a3, a4);
  }

  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    sub_29781E2C0(a1, v9, v10);
    a1[6] -= v10;
  }

  return a1;
}

uint64_t *sub_29781EF7C(uint64_t *a1)
{
  if (sub_2977FD678())
  {
    sub_29781ED10(a1);
  }

  v2 = sub_297808A28();
  if (v2)
  {
    v3 = v2;
    v4 = strlen(v2);
    sub_29781E2C0(a1, v3, v4);
    a1[6] -= v4;
  }

  return a1;
}

uint64_t *sub_29781EFE8(uint64_t *a1)
{
  if (sub_2977FD678())
  {
    sub_29781ED10(a1);
  }

  v2 = sub_297808A1C();
  if (v2)
  {
    v3 = v2;
    v4 = strlen(v2);
    sub_29781E2C0(a1, v3, v4);
    a1[6] -= v4;
  }

  return a1;
}

uint64_t sub_29781F06C()
{
  if ((atomic_load_explicit(&qword_2A18A4C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A4C70))
  {
    sub_29781F064(&qword_2A18A4A58, 2, 0, 1);
    __cxa_atexit(sub_29781F068, &qword_2A18A4A58, &dword_2977F7000);
    __cxa_guard_release(&qword_2A18A4C70);
  }

  return sub_2977FB720(&qword_2A18A4A58);
}

uint64_t sub_29781F10C(uint64_t *a1)
{
  *a1 = &unk_2A1E54E90;
  sub_29781ED10(a1);

  return sub_29781E010(a1);
}

void sub_29781F164()
{
  v0 = sub_29781F160();

  j__free(v0);
}

uint64_t sub_29781F194(uint64_t a1, const void **a2)
{
  v4 = sub_29781EBB0(a1, 0);
  *v4 = &unk_2A1E54EF8;
  v4[5] = a2;
  v5 = sub_2977FD0D4(a2);
  sub_297805924(a2, v5 + 128);
  v6 = sub_2977FB7B8(*(a1 + 40));
  v7 = sub_2978059C8(*(a1 + 40));
  v8 = sub_2977FD0D4(*(a1 + 40));
  sub_29781F230(a1, v6, v7 - v8);
  return a1;
}

uint64_t sub_29781F23C(uint64_t *a1)
{
  *a1 = &unk_2A1E54EF8;
  sub_29781ED10(a1);

  return sub_29781E010(a1);
}

void sub_29781F294()
{
  v0 = sub_29781F290();

  j__free(v0);
}

void sub_29781F2BC(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_2977FB7B8(*(a1 + 40));
  v7 = *(a1 + 40);
  if (v6 == a2)
  {
    v8 = sub_2977FD0D4(v7);
    sub_297805978(*(a1 + 40), v8 + a3);
  }

  else
  {
    sub_2977FD4F8(v7, a2, &a2[a3]);
  }

  v9 = *(a1 + 40);
  v10 = sub_2977FD0D4(v9);
  sub_297805924(v9, v10 + 64);
  v11 = sub_2977FB7B8(*(a1 + 40));
  v12 = sub_2978059C8(*(a1 + 40));
  v13 = v12 - sub_2977FD0D4(*(a1 + 40));

  sub_29781F230(a1, v11, v13);
}

uint64_t sub_29781F384(uint64_t *a1)
{
  sub_29781ED10(a1);
  v2 = sub_2977FB720(a1[5]);
  v3 = sub_2977FD0D4(a1[5]);
  sub_2977FB7C0(&v5, v2, v3);
  return v5;
}

BOOL sub_29781F410(signed int a1, unint64_t a2)
{
  if (sub_29781F468(a1))
  {
    v4 = (*(MEMORY[0x29EDCA600] + 4 * a1 + 60) & a2) == 0;
  }

  else
  {
    v4 = __maskrune(a1, a2) == 0;
  }

  return !v4;
}

void *sub_29781F474(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2977FA198(56);
  *a1 = sub_29781EC60(v8, a2, a3, a4);
  return a1;
}

uint64_t sub_29781F4F4(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v29 = v3;
  v30 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }
  }

  else
  {
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v17 = 0;
  v14 = 0;
  v16 = 3 * (v9 >> 1) + 1;
  if (!malloc_type_calloc(v16, 8uLL, 0x100004000313F17uLL))
  {
    free(v12);
    return 12;
  }

  v18 = v12;
  v13.n128_u64[0] = __s;
  v13.n128_u64[1] = &__s[v9];
  LODWORD(v14) = 0;
  LODWORD(v17) = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12[4] = 256;
  *(v12 + 7) = 0;
  *(v12 + 5) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = a3 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0x100000000;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  sub_29781F75C(&v13, 0x8000000, 0);
  *(v12 + 7) = *(&v16 + 1) - 1;
  if (a3)
  {
    sub_29781F7D8(&v13, 128);
  }

  else if ((a3 & 0x10) != 0)
  {
    sub_29781F940(&v13);
  }

  else
  {
    sub_29781F99C(&v13, 128, 128);
  }

  sub_29781F75C(&v13, 0x8000000, 0);
  *(v12 + 8) = *(&v16 + 1) - 1;
  sub_29781FADC(&v13, v12);
  sub_29781FBA0(&v13, v12);
  sub_29781FC04(&v13, v12);
  *(v12 + 16) = sub_29781FD70(&v13, v12);
  *v12 = 53829;
  *(a1 + 8) = *(v12 + 14);
  *(a1 + 24) = v12;
  *a1 = 62053;
  if ((v12[18] & 4) != 0)
  {
    sub_29781FDE0(&v13, 15);
  }

  if (!v14)
  {
    return 0;
  }

  sub_297824238(a1);
  return v14;
}

void **sub_29781F75C(void **result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 4))
  {
    v5 = result;
    v7 = result[4];
    v6 = result[5];
    if (v6 >= v7)
    {
      result = sub_2978216E4(result, (&v7[((v7 + 1) >> 63) + 1] & 0xFFFFFFFFFFFFFFFELL) + (v7 + 1) / 2);
      v6 = v5[5];
    }

    v8 = v5[3];
    v5[5] = v6 + 1;
    v8[v6] = a3 | a2;
  }

  return result;
}

void sub_29781F7D8(void **a1, int a2)
{
  v4 = 0;
  v5 = 0;
  for (i = 0; ; i = 1)
  {
    v7 = a1[5];
    v8 = *a1;
    v9 = a1[1];
    if (*a1 >= v9)
    {
      goto LABEL_9;
    }

    do
    {
      v10 = *v8;
      if (v10 == 124 || v10 == a2)
      {
        break;
      }

      sub_29781FDFC(a1);
      v8 = *a1;
      v9 = a1[1];
    }

    while (*a1 < v9);
    if (a1[5] == v7)
    {
LABEL_9:
      sub_29781FDE0(a1, 14);
      v8 = *a1;
      v9 = a1[1];
    }

    if (v8 >= v9 || *v8 != 124)
    {
      break;
    }

    *a1 = v8 + 1;
    v12 = a1[5];
    if ((i & 1) == 0)
    {
      sub_2978203CC(a1, 2013265920, v12 - v7 + 1, v7);
      v12 = a1[5];
      v4 = v7;
      v5 = v7;
    }

    sub_29781F75C(a1, 0x80000000, v12 - v4);
    v13 = a1[5];
    v4 = v13 - 1;
    sub_297820478(a1, v5, v13 - v5);
    v5 = a1[5];
    sub_29781F75C(a1, 2281701376, 0);
  }

  if (i)
  {
    sub_297820478(a1, v5, a1[5] - v5);
    v14 = a1[5] - v4;

    sub_29781F75C(a1, 2415919104, v14);
  }
}

void sub_29781F940(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u64[1];
  if (a1->n128_u64[0] < v3)
  {
    goto LABEL_5;
  }

  sub_29781FDE0(a1, 14);
  while (1)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
LABEL_5:
    if (v2 >= v3)
    {
      break;
    }

    a1->n128_u64[0] = (v2 + 1);
    sub_2978208D4(a1, *v2);
  }
}

void **sub_29781F99C(void **result, int a2, int a3)
{
  v5 = result;
  v6 = result[5];
  v7 = *result;
  v8 = result[1];
  if (*result < v8 && *v7 == 94)
  {
    *result = v7 + 1;
    result = sub_29781F75C(result, 402653184, 0);
    v9 = *(v5 + 56);
    v10 = v9[9];
    v11 = vadd_s32(v10, 0x100000001);
    v10.i32[0] |= 1u;
    v10.i32[1] = v11.i32[1];
    v9[9] = v10;
    v7 = *v5;
    v8 = *(v5 + 8);
  }

  if (v7 < v8)
  {
    result = 0;
    v12 = 1;
    do
    {
      if ((v7 + 1) < v8 && *v7 == a2 && v7[1] == a3)
      {
        break;
      }

      result = sub_2978217B0(v5, v12);
      v12 = 0;
      v7 = *v5;
      v8 = *(v5 + 8);
    }

    while (*v5 < v8);
    v13 = *(v5 + 40);
    if (!result)
    {
      goto LABEL_13;
    }

    *(v5 + 40) = v13 - 1;
    result = sub_29781F75C(v5, 0x20000000, 0);
    v14 = *(v5 + 56);
    *(v14 + 72) |= 2u;
    ++*(v14 + 80);
  }

  v13 = *(v5 + 40);
LABEL_13:
  if (v13 == v6)
  {

    return sub_29781FDE0(v5, 14);
  }

  return result;
}

uint64_t sub_29781FADC(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    v3 = *(a2 + 88);
    v4 = -128;
    v5 = -127;
    do
    {
      if (!*(v3 + v4))
      {
        result = sub_297821C04(a2, v4);
        if (result)
        {
          v6 = *(a2 + 84);
          *(a2 + 84) = v6 + 1;
          *(v3 + v4) = v6;
          if (v4 <= 126)
          {
            v7 = v5;
            do
            {
              if (!*(v3 + v7))
              {
                result = sub_297821C48(a2, v4, v7);
                if (result)
                {
                  *(v3 + v7) = v6;
                }
              }

              ++v7;
            }

            while (v7 != 128);
          }
        }
      }

      ++v4;
      ++v5;
    }

    while (v4 != 128);
  }

  return result;
}

uint64_t sub_29781FBA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  *(a2 + 48) = v4;
  result = malloc_type_realloc(*(a1 + 24), 8 * v4, 0x100004000313F17uLL);
  *(a2 + 8) = result;
  if (!result)
  {
    result = sub_29781FDE0(a1, 12);
    *(a2 + 8) = *(a1 + 24);
  }

  return result;
}

_BYTE *sub_29781FC04(_BYTE *result, uint64_t a2)
{
  if (*(result + 4))
  {
    return result;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(a2 + 8) + 8;
  result = v6;
  do
  {
    v8 = *result;
    result += 8;
    LODWORD(v7) = v8;
    v9 = ((v8 & 0xF8000000) - 0x10000000) >> 27;
    if (v9 > 0xD)
    {
      goto LABEL_15;
    }

    if (((1 << v9) & 0x1880) != 0)
    {
      goto LABEL_18;
    }

    if (((1 << v9) & 0x2200) != 0)
    {
      result = v6;
      while (1)
      {
        result += 8 * (v7 & 0x7FFFFFF);
        v7 = *result;
        v10 = *result & 0xF8000000;
        if (v10 == 1610612736)
        {
          break;
        }

        if (v10 != -2013265920)
        {
          if (v10 == -1879048192)
          {
            break;
          }

          *(a2 + 72) |= 4u;
          return result;
        }
      }

LABEL_15:
      if (v5 > *(a2 + 104))
      {
        *(a2 + 104) = v5;
        v3 = v4;
      }

      v5 = 0;
      goto LABEL_18;
    }

    if (v9)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      v4 = v6;
    }

    ++v5;
LABEL_18:
    v6 = result;
  }

  while ((v7 & 0xF8000000) != 0x8000000);
  v11 = *(a2 + 104);
  if (v11)
  {
    result = malloc_type_malloc(v11 + 1, 0xD44C67EDuLL);
    *(a2 + 96) = result;
    if (result)
    {
      v12 = *(a2 + 104);
      if (v12 >= 1)
      {
        do
        {
          do
          {
            v14 = *v3++;
            v13 = v14;
          }

          while ((v14 & 0xF8000000) != 0x10000000);
          *result++ = v13;
        }

        while (v12-- > 1);
      }

      *result = 0;
    }

    else
    {
      *(a2 + 104) = 0;
    }
  }

  return result;
}

uint64_t sub_29781FD70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v4 = (*(a2 + 8) + 8);
  do
  {
    v5 = *v4++;
    v6 = v5 & 0xF8000000;
    if (v3 <= result)
    {
      v7 = result;
    }

    else
    {
      v7 = v3;
    }

    v8 = v3 - 1;
    if (v6 == 1207959552)
    {
      ++v3;
    }

    if (v6 == 1342177280)
    {
      v3 = v8;
      result = v7;
    }
  }

  while (v6 != 0x8000000);
  if (v3)
  {
    *(a2 + 72) |= 4u;
  }

  return result;
}

uint64_t sub_29781FDE0(uint64_t result, int a2)
{
  if (!*(result + 16))
  {
    *(result + 16) = a2;
  }

  *result = &unk_2A13A27C8;
  *(result + 8) = &unk_2A13A27C8;
  return result;
}

void sub_29781FDFC(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = (*a1 + 1);
  *a1 = v3;
  v4 = *v2;
  v5 = *(a1 + 40);
  if (v4 <= 0x3E)
  {
    if (*v2 <= 0x29u)
    {
      switch(v4)
      {
        case '$':
          sub_29781F75C(a1, 0x20000000, 0);
          v10 = *(v1 + 56);
          *(v10 + 72) |= 2u;
          ++*(v10 + 80);
LABEL_46:
          v8 = 1;
          goto LABEL_47;
        case '(':
          if (v3 >= *(a1 + 8))
          {
            sub_29781FDE0(a1, 8);
          }

          v14 = *(v1 + 56);
          v15 = *(v14 + 112);
          v16 = v15 + 1;
          *(v14 + 112) = v15 + 1;
          v17 = v1 + 8 * (v15 + 1);
          if (v15 + 1 <= 9)
          {
            *(v17 + 64) = *(v1 + 40);
          }

          sub_29781F75C(v1, 1744830464, v15 + 1);
          if (*v1 >= *(v1 + 8) || **v1 != 41)
          {
            sub_29781F7D8(v1, 41);
          }

          if (v16 <= 9)
          {
            *(v17 + 144) = *(v1 + 40);
          }

          sub_29781F75C(v1, 1879048192, v16);
          v18 = *v1;
          if (*v1 < *(v1 + 8))
          {
            *v1 = v18 + 1;
            if (*v18 == 41)
            {
              goto LABEL_46;
            }
          }

          break;
        case ')':
          break;
        default:
          goto LABEL_44;
      }

      a1 = v1;
      v9 = 8;
LABEL_39:
      sub_29781FDE0(a1, v9);
      goto LABEL_46;
    }

    if (v4 - 42 >= 2)
    {
      if (v4 == 46)
      {
        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          sub_29782049C(a1);
        }

        else
        {
          sub_29781F75C(a1, 671088640, 0);
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_17:
    v9 = 13;
    goto LABEL_39;
  }

  if (*v2 > 0x5Du)
  {
    switch(v4)
    {
      case '^':
        sub_29781F75C(a1, 402653184, 0);
        v8 = 0;
        v11 = *(v1 + 56);
        v12 = v11[9];
        v13 = vadd_s32(v12, 0x100000001);
        v12.i32[0] |= 1u;
        v12.i32[1] = v13.i32[1];
        v11[9] = v12;
        goto LABEL_47;
      case '{':
        if (v3 < *(a1 + 8) && *v3 - 48 <= 9)
        {
          sub_29781FDE0(a1, 13);
        }

        break;
      case '|':
        v9 = 14;
        goto LABEL_39;
    }

LABEL_44:
    v6 = v4;
LABEL_45:
    sub_2978208D4(v1, v6);
    goto LABEL_46;
  }

  if (v4 == 63)
  {
    goto LABEL_17;
  }

  if (v4 == 91)
  {
    sub_2978204F0(a1);
    goto LABEL_46;
  }

  if (v4 != 92)
  {
    goto LABEL_44;
  }

  if (v3 >= *(a1 + 8))
  {
    sub_29781FDE0(a1, 5);
    v3 = *v1;
  }

  *v1 = v3 + 1;
  v6 = *v3;
  if ((v6 - 49) > 8)
  {
    goto LABEL_45;
  }

  v7 = (v6 - 48);
  if (!*(v1 + 144 + 8 * v7))
  {
    a1 = v1;
    v9 = 6;
    goto LABEL_39;
  }

  sub_29781F75C(v1, 939524096, v7);
  sub_297820868(v1, *(v1 + 8 * v7 + 64) + 1, *(v1 + 144 + 8 * v7));
  sub_29781F75C(v1, 0x40000000, v7);
  v8 = 1;
  *(*(v1 + 56) + 120) = 1;
LABEL_47:
  v19 = *v1;
  v20 = *(v1 + 8);
  if (*v1 >= v20)
  {
    return;
  }

  v21 = *v19;
  if ((v21 - 42) >= 2 && v21 != 63)
  {
    v22 = (v19 + 1);
    v23 = v21 != 123 || v22 >= v20;
    if (v23 || *v22 - 48 > 9)
    {
      return;
    }
  }

  *v1 = v19 + 1;
  if ((v8 & 1) == 0)
  {
    sub_29781FDE0(v1, 13);
  }

  if (v21 > 62)
  {
    if (v21 == 63)
    {
      sub_2978203CC(v1, 2013265920, *(v1 + 40) - v5 + 1, v5);
      sub_29781F75C(v1, 0x80000000, *(v1 + 40) - v5);
      sub_297820478(v1, v5, *(v1 + 40) - v5);
      sub_29781F75C(v1, 2281701376, 0);
      sub_297820478(v1, *(v1 + 40) - 1, 1);
      v25 = v1;
      v26 = 2415919104;
      v24 = 2;
      goto LABEL_70;
    }

    if (v21 == 123)
    {
      v27 = sub_297820984(v1);
      v28 = v27;
      v29 = *v1;
      v30 = v27;
      if (*v1 < *(v1 + 8))
      {
        v30 = v27;
        if (*v29 == 44)
        {
          *v1 = v29 + 1;
          if (v29[1] - 48 > 9)
          {
            v30 = 256;
          }

          else
          {
            v30 = sub_297820984(v1);
            if (v28 > v30)
            {
              sub_29781FDE0(v1, 10);
            }
          }
        }
      }

      sub_297820A18(v1, v5, v28, v30);
      v37 = *v1;
      v36 = *(v1 + 8);
      if (*v1 < v36)
      {
        if (*v37 == 125)
        {
          *v1 = v37 + 1;
          goto LABEL_71;
        }

        v38 = (v37 + 1);
        while (1)
        {
          *v1 = v38;
          if (v38 == v36)
          {
            break;
          }

          v39 = *v38++;
          if (v39 == 125)
          {
            goto LABEL_95;
          }
        }
      }

      sub_29781FDE0(v1, 9);
LABEL_95:
      sub_29781FDE0(v1, 10);
    }
  }

  else
  {
    if (v21 == 42)
    {
      sub_2978203CC(v1, 1207959552, *(v1 + 40) - v5 + 1, v5);
      sub_29781F75C(v1, 1342177280, *(v1 + 40) - v5);
      sub_2978203CC(v1, 1476395008, *(v1 + 40) - v5 + 1, v5);
      v24 = *(v1 + 40) - v5;
      v25 = v1;
      v26 = 1610612736;
      goto LABEL_70;
    }

    if (v21 == 43)
    {
      sub_2978203CC(v1, 1207959552, *(v1 + 40) - v5 + 1, v5);
      v24 = *(v1 + 40) - v5;
      v25 = v1;
      v26 = 1342177280;
LABEL_70:
      sub_29781F75C(v25, v26, v24);
    }
  }

LABEL_71:
  v31 = *v1;
  v32 = *(v1 + 8);
  if (*v1 < v32)
  {
    if ((v33 = *v31, (v33 - 42) < 2) || v33 == 63 || ((v34 = (v31 + 1), v33 == 123) ? (v35 = v34 >= v32) : (v35 = 1), !v35 && *v34 - 48 <= 9))
    {

      sub_29781FDE0(v1, 13);
    }
  }
}

void *sub_2978203CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v5 = result;
    v6 = result[5];
    sub_29781F75C(result, a2, a3);
    v7 = v5[3];
    v8 = *(v7 + 8 * v6);
    v9 = v5 + 19;
    v10 = 9;
    do
    {
      v11 = *(v9 - 10);
      if (v11 >= a4)
      {
        *(v9 - 10) = v11 + 1;
      }

      if (*v9 >= a4)
      {
        ++*v9;
      }

      ++v9;
      --v10;
    }

    while (v10);
    result = memmove((v7 + 8 * a4 + 8), (v7 + 8 * a4), 8 * (v5[5] + ~a4));
    *(v5[3] + 8 * a4) = v8;
  }

  return result;
}

uint64_t sub_297820478(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16))
  {
    *(*(result + 24) + 8 * a2) = *(*(result + 24) + 8 * a2) & 0xF8000000 | a3;
  }

  return result;
}

__n128 sub_29782049C(uint64_t a1)
{
  v4 = 6097502;
  v3 = *a1;
  *a1 = &v4;
  *(a1 + 8) = &v4 + 3;
  sub_2978204F0(a1);
  result = v3;
  *a1 = v3;
  return result;
}

void **sub_2978204F0(uint64_t a1)
{
  v2 = *a1;
  if ((*a1 + 5) < *(a1 + 8))
  {
    if (!strncmp(*a1, "[:<:]]", 6uLL))
    {
      v30 = a1;
      v31 = 2550136832;
    }

    else
    {
      if (strncmp(v2, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      v30 = a1;
      v31 = 2684354560;
    }

    result = sub_29781F75C(v30, v31, 0);
    *a1 += 6;
    return result;
  }

LABEL_4:
  result = sub_297820CC4(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 < v6 && *v5 == 94)
  {
    v7 = 0;
    *a1 = ++v5;
  }

  else
  {
    v7 = 1;
  }

  if (v5 < v6)
  {
    v8 = *v5;
    v9 = v8;
    if (v8 != 93)
    {
      if (v8 != 45)
      {
        goto LABEL_19;
      }

      v9 = 45;
    }

    *a1 = v5 + 1;
    *(*result + v9) |= *(result + 8);
    *(result + 9) += v8;
  }

LABEL_19:
  while (1)
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    if (*a1 >= v13)
    {
      break;
    }

    v10 = *v12;
    if (v10 == 93)
    {
      break;
    }

    v11 = v12 + 1;
    if (v11 < v13 && v10 == 45 && *v11 == 93)
    {
      *a1 = v11;
      *(*v4 + 45) |= *(v4 + 8);
      *(v4 + 9) += 45;
      v12 = *a1;
      v13 = *(a1 + 8);
      break;
    }

    sub_297820E24(a1, v4);
  }

  if (v12 >= v13 || (*a1 = v12 + 1, *v12 != 93))
  {
    sub_29781FDE0(a1, 7);
  }

  if (*(a1 + 16))
  {
    goto LABEL_44;
  }

  v14 = *(a1 + 56);
  if ((*(v14 + 40) & 2) != 0)
  {
    v15 = *(v14 + 16);
    if (v15 >= 1)
    {
      v16 = v15 + 1;
      do
      {
        v17 = *v4;
        v18 = *(v4 + 8);
        if ((v18 & *(*v4 + (v16 - 2))) != 0)
        {
          if (isalpha(v16 - 2))
          {
            v19 = sub_297821110(v16 - 2);
            if (v16 - 2 != v19)
            {
              v17[v19] |= v18;
              *(v4 + 9) += v19;
            }
          }
        }

        --v16;
      }

      while (v16 > 1);
    }
  }

  if ((v7 & 1) == 0)
  {
    v20 = *(a1 + 56);
    v21 = *(v20 + 16);
    if (v21 >= 1)
    {
      v22 = v21 + 1;
      do
      {
        v23 = v22 - 2;
        v24 = *v4;
        v25 = (v22 - 2);
        v26 = *(*v4 + v25);
        v27 = *(v4 + 8);
        if ((v27 & v26) != 0)
        {
          v24[v25] = v26 & ~v27;
          v28 = *(v4 + 9) - v23;
        }

        else
        {
          v24[v25] = v27 | v26;
          v28 = *(v4 + 9) + v23;
        }

        *(v4 + 9) = v28;
        --v22;
      }

      while (v22 > 1);
      v20 = *(a1 + 56);
    }

    if ((*(v20 + 40) & 8) != 0)
    {
      *(*v4 + 10) &= ~*(v4 + 8);
      *(v4 + 9) -= 10;
    }
  }

  if (sub_297821164(a1, v4) == 1)
  {
    v29 = sub_2978211A8(a1, v4);
    sub_2978208D4(a1, v29);
LABEL_44:

    return sub_2978210A4(a1, v4);
  }

  v32 = sub_2978211F8(a1, v4);

  return sub_29781F75C(a1, 805306368, v32);
}

uint64_t sub_297820868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = a3 - a2;
  if (a3 != a2)
  {
    sub_2978216E4(a1, *(a1 + 32) + v4);
    memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * a2), 8 * v4);
    *(a1 + 40) += v4;
  }

  return v3;
}

double sub_2978208D4(__n128 *a1, int a2)
{
  v4 = a1[3].n128_u64[1];
  v5 = *(v4 + 88);
  v6 = a2;
  if ((*(v4 + 40) & 2) != 0 && isalpha(a2) && sub_297821110(a2) != a2)
  {

    *&result = sub_29782175C(a1, a2).n128_u64[0];
  }

  else
  {
    sub_29781F75C(a1, 0x10000000, v6);
    if (!*(v5 + a2))
    {
      v8 = a1[3].n128_u64[1];
      v9 = *(v8 + 84);
      *(v8 + 84) = v9 + 1;
      *(v5 + a2) = v9;
    }
  }

  return result;
}

uint64_t sub_297820984(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 >= v1)
  {
    v4 = 0;
LABEL_11:
    sub_29781FDE0(a1, 10);
    return v4;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = (v2 + v3);
    if (*(v2 + v3) - 48 > 9 || v4 > 255)
    {
      break;
    }

    *a1 = (v5 + 1);
    v4 = (*v5 + 10 * v4 - 48);
    ++v3;
    if (v5 + 1 == v1)
    {
      LODWORD(v3) = 1;
      break;
    }
  }

  if (!v3 || v4 >= 256)
  {
    goto LABEL_11;
  }

  return v4;
}

void **sub_297820A18(void **result, uint64_t a2, int a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v7 = result;
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      while (1)
      {
        v10 = *(v7 + 40);
        if (a3 == 256)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        if (a3 < 2)
        {
          v11 = a3;
        }

        v12 = v9 + 8 * v11;
        if (v12 != 19)
        {
          break;
        }

        result = sub_297820868(v7, a2, *(v7 + 40));
        a2 = result;
        --a3;
        if (*(v7 + 16))
        {
          return result;
        }
      }

      if (v12 <= 8)
      {
        break;
      }

      if (v12 > 10)
      {
        if (v12 == 11)
        {
          sub_2978203CC(v7, 1207959552, v10 - a2 + 1, a2);
          v15 = *(v7 + 40) - a2;
          v13 = v7;
          v14 = 1342177280;
          goto LABEL_32;
        }

        if (v12 != 18)
        {
          goto LABEL_35;
        }

        result = sub_297820868(v7, a2, *(v7 + 40));
        a2 = result;
        --a3;
      }

      else
      {
        if (v12 == 9)
        {
          return result;
        }

        sub_2978203CC(v7, 2013265920, v10 - a2 + 1, a2);
        sub_29781F75C(v7, 0x80000000, *(v7 + 40) - a2);
        sub_297820478(v7, a2, *(v7 + 40) - a2);
        sub_29781F75C(v7, 2281701376, 0);
        a3 = 1;
        sub_297820478(v7, *(v7 + 40) - 1, 1);
        sub_29781F75C(v7, 2415919104, 2);
        result = sub_297820868(v7, a2 + 1, v10 + 1);
        a2 = result;
      }

      a4 = (a4 - 1);
      if (*(v7 + 16))
      {
        return result;
      }
    }

    if ((v12 - 1) >= 3)
    {
      if (!v12)
      {
        *(v7 + 40) = a2;
        return result;
      }

LABEL_35:

      return sub_29781FDE0(v7, 15);
    }

    sub_2978203CC(v7, 2013265920, v10 - a2 + 1, a2);
    sub_297820A18(v7, a2 + 1, 1, a4);
    sub_29781F75C(v7, 0x80000000, *(v7 + 40) - a2);
    sub_297820478(v7, a2, *(v7 + 40) - a2);
    sub_29781F75C(v7, 2281701376, 0);
    sub_297820478(v7, *(v7 + 40) - 1, 1);
    v13 = v7;
    v14 = 2415919104;
    v15 = 2;
LABEL_32:

    return sub_29781F75C(v13, v14, v15);
  }

  return result;
}

uint64_t sub_297820CC4(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 20);
  v4 = *(v2 + 16);
  *(v2 + 20) = v3 + 1;
  v5 = *(a1 + 48);
  if (v3 >= v5)
  {
    v6 = v5 + 8;
    *(a1 + 48) = v5 + 8;
    v7 = malloc_type_realloc(*(v2 + 24), 32 * (v5 + 8), 0x1010040FE74B554uLL);
    v2 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = (v6 >> 3) * v4;
    *(v2 + 24) = v7;
    v9 = malloc_type_realloc(*(v2 + 32), v8, 0x100004077774924uLL);
    v2 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_11;
    }

    *(v2 + 32) = v9;
    if (v3 >= 1)
    {
      v10 = 0;
      v11 = *(v2 + 24);
      do
      {
        *v11 = &v9[(v10 >> 3) * v4];
        v11 += 4;
        ++v10;
      }

      while (v3 != v10);
    }

    bzero(&v9[v8 - v4], v4);
    v2 = *(a1 + 56);
  }

  v12 = *(v2 + 24);
  if (v12)
  {
    v13 = *(v2 + 32);
    if (v13)
    {
      result = v12 + 32 * v3;
      *result = v13 + v4 * (v3 / 8);
      *(result + 8) = (1 << (v3 & 7));
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }
  }

LABEL_11:
  free(*(v2 + 24));
  v15 = *(a1 + 56);
  *(v15 + 24) = 0;
  free(*(v15 + 32));
  *(*(a1 + 56) + 32) = 0;
  sub_29781FDE0(a1, 12);
  return 0;
}

uint64_t sub_297820E24(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*a1 >= v4)
  {
    goto LABEL_8;
  }

  v6 = *v5;
  if (v6 == 45)
  {
LABEL_48:
    v21 = a1;
    v22 = 11;
    goto LABEL_49;
  }

  v7 = v6 == 91;
  v8 = (v5 + 1);
  if (!v7 || v8 >= v4)
  {
    goto LABEL_8;
  }

  v16 = *v8;
  if (v16 == 61)
  {
    v23 = v5 + 2;
    *a1 = v23;
    if (v23 >= v4)
    {
      sub_29781FDE0(a1, 7);
      v23 = *a1;
    }

    v24 = *v23;
    if (v24 == 93 || v24 == 45)
    {
      sub_29781FDE0(a1, 3);
    }

    result = sub_29782140C(a1, a2);
    v19 = *a1;
    v25 = *(a1 + 8);
    if (*a1 >= v25)
    {
      result = sub_29781FDE0(a1, 7);
      v19 = *a1;
      v25 = *(a1 + 8);
    }

    if (v19 >= v25 || (v19 + 1) >= v25 || *v19 != 61 || v19[1] != 93)
    {
      v21 = a1;
      v22 = 3;
      goto LABEL_49;
    }

LABEL_44:
    *a1 = v19 + 2;
    return result;
  }

  if (v16 != 58)
  {
LABEL_8:
    result = sub_297821458(a1);
    v11 = result;
    v12 = *a1;
    v13 = *(a1 + 8);
    if (*a1 >= v13 || ((v14 = v12 + 1, *v12 == 45) ? (v15 = v14 >= v13) : (v15 = 1), v15 || *v14 == 93 || ((*a1 = v14, *v14 != 45) ? (result = sub_297821458(a1)) : (*a1 = v12 + 2, result = 45), v11 <= result)))
    {
      do
      {
        *(*a2 + v11) |= *(a2 + 8);
        *(a2 + 9) += v11++;
      }

      while (result + 1 != v11);
      return result;
    }

    goto LABEL_48;
  }

  v17 = v5 + 2;
  *a1 = v17;
  if (v17 >= v4)
  {
    sub_29781FDE0(a1, 7);
    v17 = *a1;
  }

  v18 = *v17;
  if (v18 == 93 || v18 == 45)
  {
    sub_29781FDE0(a1, 4);
  }

  result = sub_2978212D0(a1, a2);
  v19 = *a1;
  v20 = *(a1 + 8);
  if (*a1 >= v20)
  {
    result = sub_29781FDE0(a1, 7);
    v19 = *a1;
    v20 = *(a1 + 8);
  }

  if (v19 < v20 && (v19 + 1) < v20 && *v19 == 58 && v19[1] == 93)
  {
    goto LABEL_44;
  }

  v21 = a1;
  v22 = 4;
LABEL_49:

  return sub_29781FDE0(v21, v22);
}

uint64_t sub_2978210A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) + 32 * *(v2 + 20);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      *(*a2 + i) &= ~*(a2 + 8);
      *(a2 + 9) -= i;
    }
  }

  if (v4 - 32 == a2)
  {
    --*(*(result + 56) + 20);
  }

  return result;
}

uint64_t sub_297821110(unsigned __int8 a1)
{
  v1 = a1;
  if (isupper(a1))
  {
    v2 = tolower(v1);
LABEL_5:
    v1 = v2;
    return v1;
  }

  if (islower(v1))
  {
    v2 = toupper(v1);
    goto LABEL_5;
  }

  return v1;
}

uint64_t sub_297821164(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 56) + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  for (i = 0; i != v2; ++i)
  {
    if ((*(a2 + 8) & *(*a2 + i)) != 0)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }
  }

  return result;
}

uint64_t sub_2978211A8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 56) + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while ((*(a2 + 8) & *(*a2 + v4)) == 0)
  {
    ++v4;
    v3 += 0x1000000;
    if (v2 == v4)
    {
      return 0;
    }
  }

  return (v3 >> 24);
}

unint64_t sub_2978211F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 24);
  v4 = *(v2 + 20);
  if (v4 < 1)
  {
LABEL_11:
    v8 = a2;
  }

  else
  {
    v6 = v3 + 32 * v4;
    v7 = *(v2 + 16);
    v8 = v3;
    while (1)
    {
      if (v8 != a2 && *(v8 + 9) == *(a2 + 9))
      {
        v9 = 0;
        if (v7)
        {
          while (((*(v8 + 8) & *(*v8 + v9)) != 0) != ((*(a2 + 8) & *(*a2 + v9)) == 0))
          {
            if (v7 == ++v9)
            {
              goto LABEL_12;
            }
          }
        }

        if (v9 == v7)
        {
          break;
        }
      }

      v8 += 32;
      if (v8 >= v6)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    sub_2978210A4(a1, a2);
    v3 = *(*(a1 + 56) + 24);
  }

  return (v8 - v3) >> 5;
}

uint64_t sub_2978212D0(const char **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (*a1 < v5)
  {
    v6 = *a1;
    while (isalpha(*v6))
    {
      *a1 = ++v6;
      if (v6 == v5)
      {
        v6 = v5;
        break;
      }
    }
  }

  v7 = v6 - v4;
  v8 = "alnum";
  for (i = &off_29EE6E328; ; i += 24)
  {
    result = strncmp(v8, v4, v7);
    if (!result && !v8[v7])
    {
      break;
    }

    v8 = *(i + 1);
    if (!v8)
    {

      return sub_29781FDE0(a1, 4);
    }
  }

  v11 = *(i - 1);
  v12 = *v11;
  if (*v11)
  {
    v13 = v11 + 1;
    do
    {
      *(*a2 + v12) |= *(a2 + 8);
      *(a2 + 9) += v12;
      v14 = *v13++;
      v12 = v14;
    }

    while (v14);
  }

  v15 = *i;
  if (**i)
  {
    do
    {
      sub_29782152C(a1, a2, v15);
      result = strlen(v15);
      v16 = &v15[result];
      v17 = v16[1];
      v15 = v16 + 1;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_29782140C(const char **a1, uint64_t a2)
{
  result = sub_2978215EC(a1, 61);
  *(*a2 + result) |= *(a2 + 8);
  *(a2 + 9) += result;
  return result;
}

uint64_t sub_297821458(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 >= v3)
  {
    sub_29781FDE0(a1, 7);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  v4 = v2 + 1;
  v5 = v2 >= v3 || v4 >= v3;
  if (!v5 && *v2 == 91 && *v4 == 46)
  {
    *a1 = v2 + 2;
    v6 = sub_2978215EC(a1, 46);
    v8 = *a1;
    v9 = *(a1 + 8);
    if (*a1 < v9 && (v8 + 1) < v9 && *v8 == 46 && v8[1] == 93)
    {
      *a1 = v8 + 2;
    }

    else
    {
      sub_29781FDE0(a1, 3);
    }
  }

  else
  {
    *a1 = v4;
    return *v2;
  }

  return v6;
}

unsigned __int8 *sub_29782152C(uint64_t a1, uint64_t a2, char *__s)
{
  v6 = *(a2 + 16);
  v7 = v6 + strlen(__s) + 1;
  *(a2 + 16) = v7;
  v8 = malloc_type_realloc(*(a2 + 24), v7, 0xAAA4A385uLL);
  if (v8)
  {
    *(a2 + 24) = v8;
    v9 = &v8[v6 - 1];
    v10 = *(a2 + 16) - v6 + 1;

    return sub_2978242D4(v9, __s, v10);
  }

  else
  {
    v12 = *(a2 + 24);
    if (v12)
    {
      free(v12);
    }

    *(a2 + 24) = 0;

    return sub_29781FDE0(a1, 12);
  }
}

uint64_t sub_2978215EC(const char **a1, int a2)
{
  v2 = a1;
  v4 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
LABEL_7:
    v8 = 7;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = &v4[v6 + 1];
      if (v7 < v3 && v4[v6] == a2 && *v7 == 93)
      {
        break;
      }

      *a1 = v7;
      ++v6;
      v5 += 0x100000000;
      if (&v4[v6] == v3)
      {
        goto LABEL_7;
      }
    }

    v11 = v5 >> 32;
    v12 = "NUL";
    v13 = &off_29EE6E460;
    do
    {
      if (!strncmp(v12, v4, v11) && !v12[v11])
      {
        return *(v13 - 8);
      }

      v14 = *v13;
      v13 += 2;
      v12 = v14;
    }

    while (v14);
    if (v6 == 1)
    {
      return *v4;
    }

    a1 = v2;
    v8 = 3;
  }

  sub_29781FDE0(a1, v8);
  return 0;
}

void **sub_2978216E4(void **result, uint64_t a2)
{
  if (result[4] < a2)
  {
    v3 = result;
    result = malloc_type_realloc(result[3], 8 * a2, 0x100004000313F17uLL);
    if (result)
    {
      *(v3 + 24) = result;
      *(v3 + 32) = a2;
    }

    else
    {

      return sub_29781FDE0(v3, 12);
    }
  }

  return result;
}

__n128 sub_29782175C(__n128 *a1, char a2)
{
  v5 = a2;
  v6 = 93;
  v4 = *a1;
  a1->n128_u64[0] = &v5;
  a1->n128_u64[1] = &v6 + 1;
  sub_2978204F0();
  result = v4;
  *a1 = v4;
  return result;
}

BOOL sub_2978217B0(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = (*a1 + 1);
  *a1 = v6;
  v7 = *v5;
  if (v7 == 92)
  {
    if (v6 >= *(a1 + 8))
    {
      sub_29781FDE0(a1, 5);
      v6 = *a1;
    }

    *a1 = v6 + 1;
    v7 = *v6 | 0x100;
  }

  if (v7 <= 304)
  {
    if (v7 <= 90)
    {
      if (v7 == 42)
      {
        if (!a2)
        {
          sub_29781FDE0(a1, 13);
        }
      }

      else if (v7 == 46)
      {
        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          sub_29782049C(a1);
        }

        else
        {
          sub_29781F75C(a1, 671088640, 0);
        }

        goto LABEL_45;
      }
    }

    else
    {
      switch(v7)
      {
        case 91:
          sub_2978204F0(a1);
          goto LABEL_45;
        case 296:
          v9 = *(a1 + 56);
          v10 = *(v9 + 112) + 1;
          *(v9 + 112) = v10;
          if (v10 <= 9)
          {
            *(a1 + 8 * v10 + 64) = *(a1 + 40);
          }

          sub_29781F75C(a1, 1744830464, v10);
          v11 = *a1;
          v12 = *(a1 + 8);
          if (*a1 < v12 && ((v11 + 1) >= v12 || *v11 != 92 || v11[1] != 41))
          {
            sub_29781F99C(a1, 92, 41);
          }

          if (v10 <= 9)
          {
            *(a1 + 8 * v10 + 144) = *(a1 + 40);
          }

          sub_29781F75C(a1, 1879048192, v10);
          v13 = *a1;
          v14 = *(a1 + 8);
          if (*a1 < v14 && (v13 + 1) < v14 && *v13 == 92 && v13[1] == 41)
          {
            *a1 = v13 + 2;
            goto LABEL_45;
          }

          goto LABEL_40;
        case 297:
LABEL_40:
          v15 = a1;
          v16 = 8;
LABEL_42:
          sub_29781FDE0(v15, v16);
          goto LABEL_45;
      }
    }

LABEL_25:
    sub_2978208D4(a1, v7);
    goto LABEL_45;
  }

  if ((v7 - 305) >= 9)
  {
    if (v7 == 379)
    {
      v15 = a1;
      v16 = 13;
      goto LABEL_42;
    }

    if (v7 != 381)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  v8 = (v7 & 0xFFFFFEFF) - 48;
  if (*(a1 + 144 + 8 * v8))
  {
    sub_29781F75C(a1, 939524096, (v7 & 0xFFFFFEFF) - 48);
    sub_297820868(a1, *(a1 + 8 * v8 + 64) + 1, *(a1 + 144 + 8 * v8));
    sub_29781F75C(a1, 0x40000000, (v7 & 0xFFFFFEFF) - 48);
  }

  else
  {
    sub_29781FDE0(a1, 6);
  }

  *(*(a1 + 56) + 120) = 1;
LABEL_45:
  v17 = *a1;
  v18 = *(a1 + 8);
  if (*a1 < v18)
  {
    v19 = v17 + 1;
    v20 = *v17;
    if (v20 == 42)
    {
      *a1 = v19;
      sub_2978203CC(a1, 1207959552, *(a1 + 40) - v4 + 1, v4);
      sub_29781F75C(a1, 1342177280, *(a1 + 40) - v4);
      sub_2978203CC(a1, 1476395008, *(a1 + 40) - v4 + 1, v4);
      sub_29781F75C(a1, 1610612736, *(a1 + 40) - v4);
      return 0;
    }

    if (v19 < v18 && v20 == 92 && *v19 == 123)
    {
      *a1 = v17 + 2;
      v21 = sub_297820984(a1);
      v22 = v21;
      v24 = *a1;
      v23 = *(a1 + 8);
      v25 = v21;
      if (*a1 < v23)
      {
        v25 = v21;
        if (*v24 == 44)
        {
          v26 = v24 + 1;
          *a1 = v26;
          if (v26 >= v23 || *v26 - 48 > 9)
          {
            v25 = 256;
          }

          else
          {
            v25 = sub_297820984(a1);
            if (v22 > v25)
            {
              sub_29781FDE0(a1, 10);
            }
          }
        }
      }

      sub_297820A18(a1, v4, v22, v25);
      v29 = *a1;
      v28 = *(a1 + 8);
      if (*a1 >= v28)
      {
LABEL_70:
        sub_29781FDE0(a1, 9);
      }

      else
      {
        v30 = v29 + 1;
        if ((v29 + 1) < v28 && *v29 == 92 && *v30 == 125)
        {
          *a1 = v29 + 2;
          return 0;
        }

        while (v30 >= v28 || *(v30 - 1) != 92 || *v30 != 125)
        {
          *a1 = v30;
          if (v30++ == v28)
          {
            goto LABEL_70;
          }
        }
      }

      sub_29781FDE0(a1, 10);
      return 0;
    }
  }

  return v7 == 36;
}

uint64_t sub_297821C04(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 20);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = (v2 + 7) >> 3;
  v4 = *(a1 + 32);
  while (!*(v4 + a2))
  {
    v4 += *(a1 + 16);
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_297821C48(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = *(a1 + 20);
  if (v3 < 1)
  {
    return 1;
  }

  v4 = (v3 + 7) >> 3;
  v5 = *(a1 + 32);
  while (*(v5 + a2) == *(v5 + a3))
  {
    v5 += *(a1 + 16);
    if (!--v4)
    {
      return 1;
    }
  }

  return 0;
}

size_t sub_297821C98(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1 == 255)
  {
    v6 = sub_297821D9C(a2, __str);
  }

  else
  {
    v7 = &dword_29EE6EA50;
    do
    {
      v9 = *v7;
      v7 += 6;
      v8 = v9;
      if (v9)
      {
        v10 = v8 == (a1 & 0xFFFFFEFF);
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if ((a1 & 0x100) != 0)
    {
      v6 = __str;
      if (v8)
      {
        sub_2978242D4(__str, *(v7 - 2), 50);
      }

      else
      {
        snprintf(__str, 0x32uLL, "REG_0x%x", a1 & 0xFFFFFEFF);
      }
    }

    else
    {
      v6 = *(v7 - 1);
    }
  }

  v11 = strlen(v6);
  if (a4)
  {
    sub_2978242D4(a3, v6, a4);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11 + 1;
}

const char *sub_297821D9C(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  if (!strcmp("REG_NOMATCH", v3))
  {
    v5 = 1;
LABEL_7:
    snprintf(a2, 0x32uLL, "%d", v5);
  }

  else
  {
    v4 = off_29EE6EA70;
    while (1)
    {
      v5 = *(v4 - 2);
      if (!v5)
      {
        return "0";
      }

      v6 = *v4;
      v4 += 3;
      if (!strcmp(v6, v3))
      {
        goto LABEL_7;
      }
    }
  }

  return a2;
}

uint64_t sub_297821E40(uint64_t a1, char *a2, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v5 = *(a1 + 24);
  if (*v5 != 53829 || (*(v5 + 72) & 4) != 0)
  {
    return 2;
  }

  v6 = a5 & 7;
  if (*(v5 + 48) > 64)
  {
    return sub_297822284(v5, a2, a3, a4, v6);
  }

  else
  {
    return sub_297821E8C(v5, a2, a3, a4, v6);
  }
}

uint64_t sub_297821E8C(uint64_t a1, char *__s, uint64_t a3, void *a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if ((*(a1 + 40) & 4) != 0)
  {
    a3 = 0;
  }

  if ((a5 & 4) != 0)
  {
    v11 = a4[1];
    v12 = &__s[*a4];
  }

  else
  {
    v11 = strlen(__s);
    v12 = __s;
  }

  v13 = &__s[v11];
  if (&__s[v11] < v12)
  {
    return 16;
  }

  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v15 = *(a1 + 96);
  if (v15)
  {
    v16 = v12;
    if (v12 < v13)
    {
      v40 = v5;
      v41 = v6;
      v42 = a3;
      v17 = *v15;
      v18 = (&__s[v11] - v12);
      v39 = &__s[v11];
      v19 = v18;
      v16 = v12;
      while (1)
      {
        if (*v16 == v17)
        {
          v20 = *(a1 + 104);
          if (v19 >= v20 && !memcmp(v16, v15, v20))
          {
            break;
          }
        }

        ++v16;
        --v19;
        if (!--v18)
        {
          v16 = v39;
          break;
        }
      }

      v6 = v41;
      a3 = v42;
      v5 = v40;
    }

    if (v16 == v13)
    {
      return 1;
    }
  }

  v44 = a1;
  LODWORD(v45) = v5;
  *&v46 = __s;
  *(&v46 + 1) = v12;
  *&v48 = 0;
  *&v47 = v13;
  v49 = 0u;
  v50 = 0u;
  if (!sub_2978226AC(&v44, v12, v13, v8 + 1, v9))
  {
LABEL_50:
    free(*(&v45 + 1));
    free(v48);
    return 1;
  }

  while (2)
  {
    if (!a3 && !*(a1 + 120))
    {
      goto LABEL_59;
    }

    for (i = *(&v47 + 1); ; *(&v47 + 1) = i)
    {
      v22 = sub_297822954(&v44, i, v13, v8 + 1, v9);
      if (v22)
      {
        break;
      }

      ++i;
    }

    v23 = v22;
    if (a3 == 1 && !*(a1 + 120))
    {
      v38 = &v22[-v46];
      *v6 = &i[-v46];
      v6[1] = v38;
LABEL_59:
      if (*(&v45 + 1))
      {
        free(*(&v45 + 1));
      }

      result = v48;
      if (v48)
      {
        free(v48);
        return 0;
      }

      return result;
    }

    v24 = *(&v45 + 1);
    if (*(&v45 + 1) || (v24 = malloc_type_malloc(16 * *(v44 + 112) + 16, 0x1000040451B5BE8uLL), (*(&v45 + 1) = v24) != 0))
    {
      v25 = *(v44 + 112);
      if (v25)
      {
        if ((v25 + 1) > 2)
        {
          v26 = v25 + 1;
        }

        else
        {
          v26 = 2;
        }

        memset(v24 + 16, 255, 16 * v26 - 16);
      }

      if (!*(a1 + 120) && (BYTE1(v45) & 4) == 0)
      {
        v27 = sub_297822BFC(&v44, *(&v47 + 1), v23, v8 + 1, v9);
        goto LABEL_43;
      }

      v28 = *(a1 + 128);
      v29 = v48;
      if (v28 >= 1 && !v48)
      {
        v29 = malloc_type_malloc(8 * v28 + 8, 0x10040436913F5uLL);
        *&v48 = v29;
        v28 = *(a1 + 128);
      }

      if (v28 < 1 || v29)
      {
        v30 = *(&v47 + 1);
        v31 = v8 + 1;
        while (1)
        {
          v27 = sub_297822F50(&v44, v30, v23, v31, v9, 0, 0);
LABEL_43:
          if (v27)
          {
            goto LABEL_52;
          }

          v32 = *(&v47 + 1);
          if (v23 <= *(&v47 + 1))
          {
            break;
          }

          v23 = sub_297822954(&v44, *(&v47 + 1), v23 - 1, v8 + 1, v9);
          if (!v23)
          {
            break;
          }

          v31 = v8 + 1;
          v30 = v32;
        }

        if (v32 == v13)
        {
LABEL_52:
          if (a3)
          {
            v33 = &v23[-v46];
            *v6 = *(&v47 + 1) - v46;
            v6[1] = v33;
            if (a3 != 1)
            {
              v34 = v44;
              v35 = (*(&v45 + 1) + 16);
              v36 = v6 + 2;
              v37 = 1;
              do
              {
                if (v37 <= *(v34 + 112))
                {
                  *v36 = *v35;
                }

                else
                {
                  *v36 = -1;
                  v36[1] = -1;
                }

                ++v37;
                ++v35;
                v36 += 2;
              }

              while (a3 != v37);
            }
          }

          goto LABEL_59;
        }

        if (sub_2978226AC(&v44, (v32 + 1), v13, v8 + 1, v9))
        {
          continue;
        }

        goto LABEL_50;
      }

      free(*(&v45 + 1));
    }

    return 12;
  }
}

uint64_t sub_297822284(uint64_t a1, char *__s, unint64_t a3, void *a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a1;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  if ((*(a1 + 40) & 4) != 0)
  {
    a3 = 0;
  }

  if ((a5 & 4) != 0)
  {
    v12 = a4[1];
    v13 = &__s[*a4];
  }

  else
  {
    v12 = strlen(__s);
    v13 = __s;
  }

  v14 = &__s[v12];
  if (&__s[v12] >= v13)
  {
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v16 = *(v8 + 96);
    if (v16)
    {
      v17 = v8;
      v18 = v13;
      v46 = &__s[v12];
      if (v13 < &__s[v12])
      {
        v43 = v5;
        v44 = v6;
        v45 = a3;
        v19 = *v16;
        v20 = (&__s[v12] - v13);
        v42 = &__s[v12];
        v21 = v20;
        v18 = v13;
        while (1)
        {
          if (*v18 == v19)
          {
            v22 = *(v17 + 104);
            if (v21 >= v22 && !memcmp(v18, v16, v22))
            {
              break;
            }
          }

          ++v18;
          --v21;
          if (!--v20)
          {
            v18 = v42;
            break;
          }
        }

        v6 = v44;
        a3 = v45;
        v5 = v43;
      }

      v23 = v18 == v46;
      v8 = v17;
      v14 = v46;
      if (v23)
      {
        return 1;
      }
    }

    v47 = v8;
    LODWORD(v48) = v5;
    *&v49 = __s;
    *(&v49 + 1) = v13;
    v51 = 0;
    *&v50 = v14;
    v24 = malloc_type_malloc(4 * *(v8 + 48), 0xB700EE77uLL);
    v53 = v24;
    if (!v24)
    {
      return 12;
    }

    v25 = *(v8 + 48);
    v55 = &v24[v25];
    v56 = &v24[2 * v25];
    v54 = v24;
    v52 = 4;
    v57 = &v24[3 * v25];
    bzero(v57, v25);
    if (sub_2978236B8(&v47, v13, v14, v9 + 1, v10))
    {
LABEL_21:
      if (!a3 && !*(v8 + 120))
      {
LABEL_59:
        if (*(&v48 + 1))
        {
          free(*(&v48 + 1));
        }

        if (v51)
        {
          free(v51);
        }

        v15 = 0;
        goto LABEL_64;
      }

      for (i = *(&v50 + 1); ; i = ++*(&v50 + 1))
      {
        v27 = sub_2978239A4(&v47, i, v14, v9 + 1, v10);
        if (v27)
        {
          break;
        }
      }

      v28 = v27;
      if (a3 == 1 && !*(v8 + 120))
      {
LABEL_53:
        v36 = &v28[-v49];
        *v6 = *(&v50 + 1) - v49;
        v6[1] = v36;
        if (a3 >= 2)
        {
          v37 = v47;
          v38 = (*(&v48 + 1) + 16);
          v39 = v6 + 2;
          v40 = 1;
          do
          {
            if (v40 <= *(v37 + 112))
            {
              *v39 = *v38;
            }

            else
            {
              *v39 = -1;
              v39[1] = -1;
            }

            ++v40;
            ++v38;
            v39 += 2;
          }

          while (a3 != v40);
        }

        goto LABEL_59;
      }

      v29 = *(&v48 + 1);
      if (*(&v48 + 1) || (v29 = malloc_type_malloc(16 * *(v47 + 112) + 16, 0x1000040451B5BE8uLL), (*(&v48 + 1) = v29) != 0))
      {
        v30 = *(v47 + 112);
        if (v30)
        {
          if ((v30 + 1) > 2)
          {
            v31 = v30 + 1;
          }

          else
          {
            v31 = 2;
          }

          memset(v29 + 16, 255, 16 * v31 - 16);
        }

        if (!*(v8 + 120) && (BYTE1(v48) & 4) == 0)
        {
          v32 = sub_297823C90(&v47, *(&v50 + 1), v28, v9 + 1, v10);
          goto LABEL_44;
        }

        v33 = *(v8 + 128);
        v34 = v51;
        if (v33 >= 1 && !v51)
        {
          v34 = malloc_type_malloc(8 * v33 + 8, 0x10040436913F5uLL);
          v51 = v34;
          v33 = *(v8 + 128);
        }

        if (v33 < 1 || v34)
        {
          v35 = *(&v50 + 1);
          while (1)
          {
            v32 = sub_297822F50(&v47, v35, v28, v9 + 1, v10, 0, 0);
LABEL_44:
            if (v32)
            {
              break;
            }

            v35 = *(&v50 + 1);
            if (v28 > *(&v50 + 1))
            {
              v28 = sub_2978239A4(&v47, *(&v50 + 1), v28 - 1, v9 + 1, v10);
              v35 = *(&v50 + 1);
              if (v28)
              {
                continue;
              }
            }

            if (v35 != v14)
            {
              if (sub_2978236B8(&v47, (v35 + 1), v14, v9 + 1, v10))
              {
                goto LABEL_21;
              }

              goto LABEL_50;
            }

            break;
          }

          if (!a3)
          {
            goto LABEL_59;
          }

          goto LABEL_53;
        }

        free(*(&v48 + 1));
      }

      v15 = 12;
    }

    else
    {
LABEL_50:
      free(*(&v48 + 1));
      free(v51);
      v15 = 1;
    }

LABEL_64:
    free(v53);
    return v15;
  }

  return 16;
}

char *sub_2978226AC(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  if (*(a1 + 32) == a2)
  {
    v8 = 128;
  }

  else
  {
    v8 = *(a2 - 1);
  }

  v9 = *a1;
  v10 = sub_2978234E4(*a1, a4, a5, 1 << a4, 132, 1 << a4);
  v11 = 0;
  v24 = *(a1 + 40);
  v26 = v10;
  v12 = v10;
  while (1)
  {
    if (v7 == v24)
    {
      v13 = 128;
    }

    else
    {
      v13 = *v7;
    }

    if (v12 == v26)
    {
      v11 = v7;
    }

    if (v8 == 128)
    {
      if (*(a1 + 8))
      {
        goto LABEL_13;
      }
    }

    else if (v8 != 10 || (*(v9 + 40) & 8) == 0)
    {
LABEL_13:
      v14 = 0;
      v15 = 0;
      v16 = 130;
      goto LABEL_16;
    }

    v15 = *(v9 + 76);
    v14 = 129;
    v16 = 131;
LABEL_16:
    if (v13 == 128)
    {
      if ((*(a1 + 8) & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else if (v13 != 10 || (*(v9 + 40) & 8) == 0)
    {
LABEL_19:
      v16 = v14;
      goto LABEL_22;
    }

    v15 += *(v9 + 80);
LABEL_22:
    if (v15 >= 1)
    {
      v17 = v15 + 1;
      do
      {
        v12 = sub_2978234E4(v9, a4, a5, v12, v16, v12);
        --v17;
      }

      while (v17 > 1);
    }

    if (v16 == 129)
    {
      if (v13 == 128)
      {
        v16 = 129;
      }

      else
      {
LABEL_32:
        v19 = isalnum(v13);
        if (v13 == 95 || v19 != 0)
        {
          v16 = 133;
        }
      }

      if (v8 == 128)
      {
        goto LABEL_41;
      }

      v18 = v8;
      goto LABEL_39;
    }

    if (v8 == 128)
    {
      goto LABEL_41;
    }

    v18 = v8;
    if (!isalnum(v8) && v8 != 95 && v13 != 128)
    {
      goto LABEL_32;
    }

LABEL_39:
    if (!isalnum(v18) && v8 != 95 || v16 != 130 && (v13 == 128 || isalnum(v13) || v13 == 95))
    {
LABEL_41:
      if ((v16 - 133) > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v16 = 134;
LABEL_45:
    v12 = sub_2978234E4(v9, a4, a5, v12, v16, v12);
LABEL_46:
    v21 = v12 & (1 << a5);
    if (v7 == a3 || v21)
    {
      break;
    }

    v12 = sub_2978234E4(v9, a4, a5, v12, v13, v26);
    ++v7;
    v8 = v13;
  }

  *(a1 + 48) = v11;
  if (v21)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

char *sub_297822954(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v24 = *(a1 + 96);
  if (*(a1 + 32) == a2)
  {
    v8 = 128;
  }

  else
  {
    v8 = *(a2 - 1);
  }

  v9 = *a1;
  v10 = sub_2978234E4(*a1, a4, a5, 1 << a4, 132, 1 << a4);
  v11 = 0;
  v23 = *(a1 + 40);
  while (1)
  {
    v12 = v7 == v23 ? 128 : *v7;
    if (v8 == 128)
    {
      if (*(a1 + 8))
      {
        goto LABEL_11;
      }
    }

    else if (v8 != 10 || (*(v9 + 40) & 8) == 0)
    {
LABEL_11:
      v13 = 0;
      v14 = 0;
      v15 = 130;
      goto LABEL_14;
    }

    v14 = *(v9 + 76);
    v13 = 129;
    v15 = 131;
LABEL_14:
    if (v12 == 128)
    {
      if ((*(a1 + 8) & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else if (v12 != 10 || (*(v9 + 40) & 8) == 0)
    {
LABEL_17:
      v15 = v13;
      goto LABEL_20;
    }

    v14 += *(v9 + 80);
LABEL_20:
    if (v14 >= 1)
    {
      v16 = v14 + 1;
      do
      {
        v10 = sub_2978234E4(v9, a4, a5, v10, v15, v10);
        --v16;
      }

      while (v16 > 1);
    }

    if (v15 == 129)
    {
      if (v12 == 128)
      {
        v15 = 129;
      }

      else
      {
LABEL_30:
        v18 = isalnum(v12);
        if (v12 == 95 || v18 != 0)
        {
          v15 = 133;
        }
      }

      if (v8 == 128)
      {
        goto LABEL_39;
      }

      v17 = v8;
      goto LABEL_37;
    }

    if (v8 == 128)
    {
      goto LABEL_39;
    }

    v17 = v8;
    if (!isalnum(v8) && v8 != 95 && v12 != 128)
    {
      goto LABEL_30;
    }

LABEL_37:
    if (!isalnum(v17) && v8 != 95)
    {
LABEL_39:
      v20 = v24;
      goto LABEL_40;
    }

    if (v15 == 130)
    {
      v15 = 134;
      v20 = v24;
LABEL_44:
      v10 = sub_2978234E4(v9, a4, a5, v10, v15, v10);
      goto LABEL_45;
    }

    v20 = v24;
    if (v12 != 128 && !isalnum(v12) && v12 != 95)
    {
      v15 = 134;
      goto LABEL_44;
    }

LABEL_40:
    if ((v15 - 133) <= 1)
    {
      goto LABEL_44;
    }

LABEL_45:
    if ((v10 & (1 << a5)) != 0)
    {
      v11 = v7;
    }

    if (v7 == a3 || v10 == v20)
    {
      return v11;
    }

    v10 = sub_2978234E4(v9, a4, a5, v10, v12, v20);
    ++v7;
    v8 = v12;
  }
}

char *sub_297822BFC(void *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    while (1)
    {
      v10 = v7;
      v11 = *(*a1 + 8);
      v12 = *(v11 + 8 * v7);
      v13 = v12 & 0xF8000000;
      if ((v12 & 0xF8000000) == 0x48000000 || v13 == 1476395008)
      {
        v15 = (v12 & 0x7FFFFFF) + v7;
      }

      else
      {
        v16 = v13 != 2013265920 || (v12 & 0xF8000000) == 2415919104;
        v15 = v7;
        if (!v16)
        {
          v17 = *(v11 + 8 * v7);
          v15 = v7;
          do
          {
            v15 += v17 & 0x7FFFFFF;
            v17 = *(v11 + 8 * v15);
          }

          while ((v17 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v15 + 1;
      v18 = ((v12 & 0xF8000000) - 0x8000000) >> 27;
      if (v18 > 9)
      {
        if (((v12 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
        {
          if (v18 == 13)
          {
            *(a1[2] + 16 * (v12 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
            v20 = v5;
            goto LABEL_49;
          }

          v31 = a3;
          if (v18 == 14)
          {
            do
            {
              v20 = sub_297822954(a1, v5, v31, v10, v15 + 1);
              v32 = sub_297822954(a1, v20, a3, v15 + 1, a5);
              v31 = v20 - 1;
            }

            while (v32 != a3);
            v15 = v10 + (v12 & 0x7FFFFFF) - 1;
            v33 = v10 + 1;
            while (sub_297822954(a1, v5, v20, v33, v15) != v20)
            {
              v34 = *(v11 + 8 * (v15 + 1)) & 0x7FFFFFFLL;
              v35 = v34 + v15 + 1;
              v36 = v34 + v15;
              v33 = v15 + 2;
              if ((*(v11 + 8 * v35) & 0xF8000000) == 0x88000000)
              {
                v15 = v36;
              }

              else
              {
                v15 = v35;
              }
            }

            v28 = a1;
            v25 = v5;
            v26 = v20;
            v27 = v33;
            goto LABEL_48;
          }
        }

        else
        {
          v29 = a3;
          if (v18 == 10)
          {
            do
            {
              v20 = sub_297822954(a1, v5, v29, v10, v15 + 1);
              v30 = sub_297822954(a1, v20, a3, v15 + 1, a5);
              v29 = v20 - 1;
            }

            while (v30 != a3);
            if (!sub_297822954(a1, v5, v20, v10 + 1, v15))
            {
              goto LABEL_49;
            }

            v27 = v10 + 1;
            v28 = a1;
            v25 = v5;
            v26 = v20;
            goto LABEL_48;
          }

          if (v18 == 12)
          {
            *(a1[2] + 16 * (v12 & 0x7FFFFFF)) = &v5[-a1[3]];
          }
        }
      }

      else
      {
        if (v18 - 4 < 2 || v18 == 1)
        {
          v20 = v5 + 1;
          goto LABEL_49;
        }

        v19 = a3;
        if (v18 == 8)
        {
          do
          {
            v20 = sub_297822954(a1, v5, v19, v10, v15 + 1);
            v21 = sub_297822954(a1, v20, a3, v15 + 1, a5);
            v19 = v20 - 1;
          }

          while (v21 != a3);
          v22 = v5;
          do
          {
            v23 = v22;
            v22 = v5;
            v24 = sub_297822954(a1, v5, v20, v10 + 1, v15);
            v5 = v24;
          }

          while (v24 && v24 != v22);
          if (v24)
          {
            v25 = v22;
          }

          else
          {
            v25 = v23;
          }

          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v22;
          }

          v27 = v10 + 1;
          v28 = a1;
LABEL_48:
          sub_297822BFC(v28, v25, v26, v27, v15);
          goto LABEL_49;
        }
      }

      v20 = v5;
LABEL_49:
      v5 = v20;
      if (v7 >= a5)
      {
        return v20;
      }
    }
  }

  return a2;
}

uint64_t sub_297822F50(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a3;
  if (a4 >= a5)
  {
    goto LABEL_89;
  }

  v10 = a4;
  while (2)
  {
    v12 = v10;
LABEL_4:
    v13 = *a1;
    v14 = *(*a1 + 8);
    while (1)
    {
      v15 = *(v14 + 8 * v12);
      v16 = ((v15 & 0xF8000000) - 0x10000000) >> 27;
      if (v16 > 3)
      {
        break;
      }

      if (((v15 & 0xF8000000) - 0x10000000) >> 27 > 1)
      {
        if (v16 == 2)
        {
          v26 = a1[5];
          if (a2 == v26 && (a1[1] & 2) == 0)
          {
            goto LABEL_64;
          }

          if (a2 >= v26)
          {
            return 0;
          }

          v22 = *a2;
LABEL_42:
          if (v22 != 10 || (*(v13 + 40) & 8) == 0)
          {
            return 0;
          }

          goto LABEL_64;
        }

        if (v16 != 3)
        {
          goto LABEL_66;
        }

        if (a2 == v7)
        {
          return 0;
        }

        ++a2;
      }

      else
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_66;
          }

          if (a2 == a1[4] && (a1[1] & 1) == 0)
          {
            goto LABEL_64;
          }

          if (a2 >= a1[5])
          {
            return 0;
          }

          v22 = *(a2 - 1);
          goto LABEL_42;
        }

        if (a2 == v7)
        {
          return 0;
        }

        v25 = *a2++;
        if (v25 != v15)
        {
          return 0;
        }
      }

LABEL_64:
      if (++v12 >= a5)
      {
        goto LABEL_89;
      }
    }

    if (((v15 & 0xF8000000) - 0x10000000) >> 27 > 0xD)
    {
      if (v16 == 14)
      {
        ++v12;
        v27 = *(v14 + 8 * v12);
        do
        {
          v12 += v27 & 0x7FFFFFF;
          v27 = *(v14 + 8 * v12);
        }

        while ((v27 & 0xF8000000) != 0x90000000);
        goto LABEL_64;
      }

      if (v16 != 17)
      {
        if (v16 != 18)
        {
          goto LABEL_66;
        }

        v17 = a1[5];
        if (a2 != v17 || (a1[1] & 2) != 0)
        {
          if (a2 >= v17)
          {
            return 0;
          }

          v18 = *a2;
          if (v18 != 10 || (*(v13 + 40) & 8) == 0)
          {
            v19 = isalnum(*a2);
            result = 0;
            if (v18 == 95 || v19)
            {
              return result;
            }
          }
        }

        if (a2 <= a1[4])
        {
          return 0;
        }

        v21 = *(a2 - 1);
        goto LABEL_60;
      }

      v23 = a1[4];
      if (a2 == v23)
      {
        v24 = a1[5];
        if ((a1[1] & 1) == 0)
        {
LABEL_58:
          if (a2 >= v24)
          {
            return 0;
          }

          v21 = *a2;
LABEL_60:
          v32 = isalnum(v21);
          if (v21 == 95)
          {
            v7 = a3;
          }

          else
          {
            v7 = a3;
            if (!v32)
            {
              return 0;
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
        v24 = a1[5];
      }

      if (a2 >= v24 || *(a2 - 1) != 10 || (*(v13 + 40) & 8) == 0)
      {
        if (a2 <= v23)
        {
          return 0;
        }

        v30 = *(a2 - 1);
        v31 = isalnum(v30);
        result = 0;
        if (v30 == 95 || v31)
        {
          return result;
        }
      }

      goto LABEL_58;
    }

    if (v16 == 4)
    {
      if (a2 == v7)
      {
        return 0;
      }

      v28 = *(v13 + 24) + 32 * (v15 & 0x7FFFFFF);
      v29 = *a2++;
      if ((*(v28 + 8) & *(*v28 + v29)) == 0)
      {
        return 0;
      }

      goto LABEL_64;
    }

    if (v16 == 10)
    {
      goto LABEL_64;
    }

LABEL_66:
    v10 = v12 + 1;
    v33 = *(*a1 + 8);
    v34 = *(v33 + 8 * v12);
    v35 = ((v34 & 0xF8000000) - 939524096) >> 27;
    if (v35 == 4)
    {
      result = sub_297822F50(a1, a2, v7, v12 + 1, a5, a6, a7);
      if (result)
      {
        return result;
      }

      v12 = (v34 & 0x7FFFFFF) + v10;
      goto LABEL_69;
    }

    if (((v34 & 0xF8000000) - 939524096) >> 27 > 5)
    {
      if (v35 == 6)
      {
        v49 = 16 * (v34 & 0x7FFFFFF);
        v50 = a1[2];
        v51 = *(v50 + v49);
        *(v50 + v49) = &a2[-a1[3]];
        result = sub_297822F50(a1, a2, v7, v12 + 1, a5, a6, a7);
        if (!result)
        {
          *(a1[2] + v49) = v51;
        }
      }

      else if (v35 == 7)
      {
        v52 = v34 & 0x7FFFFFF;
        v53 = a1[2] + 16 * v52;
        v54 = *(v53 + 8);
        *(v53 + 8) = &a2[-a1[3]];
        result = sub_297822F50(a1, a2, v7, v12 + 1, a5, a6, a7);
        if (!result)
        {
          *(a1[2] + 16 * v52 + 8) = v54;
        }
      }

      else
      {
        result = 0;
        if (v35 == 8)
        {
          v43 = v12 + (v34 & 0x7FFFFFF) - 1;
          result = sub_297822F50(a1, a2, a3, v12 + 1, v43, a6, a7);
          if (!result)
          {
            while (1)
            {
              v44 = *(*a1 + 8);
              if ((*(v44 + 8 * v43) & 0xF8000000) == 0x90000000)
              {
                break;
              }

              v45 = *(v44 + 8 * (v43 + 1)) & 0x7FFFFFFLL;
              v46 = v45 + v43 + 1;
              v47 = v45 + v43;
              if ((*(v44 + 8 * v46) & 0xF8000000) == 0x88000000)
              {
                v48 = v47;
              }

              else
              {
                v48 = v46;
              }

              result = sub_297822F50(a1, a2, a3, v43 + 2, v48, a6, a7);
              v43 = v48;
              if (result)
              {
                return result;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (v35)
      {
        if (v35 == 2)
        {
          ++a6;
          *(a1[7] + 8 * a6) = a2;
        }

        else
        {
          result = 0;
          if (v35 != 3)
          {
            return result;
          }

          v42 = a1[7];
          if (a2 == *(v42 + 8 * a6))
          {
            --a6;
            v7 = a3;
          }

          else
          {
            *(v42 + 8 * a6) = a2;
            v7 = a3;
            result = sub_297822F50(a1, a2, a3, v10 - (v34 & 0x7FFFFFF), a5, a6, a7);
            if (result)
            {
              return result;
            }

            --a6;
          }
        }

        if (v10 >= a5)
        {
          goto LABEL_89;
        }

        continue;
      }

      v36 = v34 & 0x7FFFFFF;
      v37 = (a1[2] + 16 * v36);
      v38 = v37[1];
      if (v38 == -1)
      {
        return 0;
      }

      v39 = *v37;
      v40 = v38 - v39;
      if (v38 == v39)
      {
        if (a7 <= 100)
        {
          ++a7;
          goto LABEL_77;
        }

        return 0;
      }

LABEL_77:
      if (a2 > &v7[-v40] || memcmp(a2, (a1[3] + v39), v40))
      {
        return 0;
      }

      do
      {
        v41 = *(v33 + 8 * v12++);
      }

      while (v41 != (v36 | 0x40000000));
      a2 += v40;
LABEL_69:
      if (v12 < a5)
      {
        goto LABEL_4;
      }

LABEL_89:
      if (a2 == v7)
      {
        return a2;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }
}

unint64_t sub_2978234E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * a2);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v12 = a5 == v8;
          goto LABEL_28;
        case 2uLL:
          v12 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_28;
        case 3uLL:
          v12 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_28;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v10 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
          if ((*(v10 + 8) & *(*v10 + a5)) == 0)
          {
            break;
          }

          v9 = v6 & a4;
LABEL_5:
          a6 |= 2 * v9;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v9 = v6 & a6;
          goto LABEL_5;
        case 9uLL:
          v13 = a6 | (2 * (v6 & a6));
          a6 = ((v13 & v6) >> v8) | v13;
          if (((v6 >> v8) & v13) == 0 && (a6 & (v6 >> v8)) != 0)
          {
            a2 += ~(*v7 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (v6 & a6))) & v6) << v8) | (2 * (v6 & a6));
          break;
        case 0xFuLL:
          if ((v6 & a6) == 0)
          {
            break;
          }

          v15 = v7[1];
          if ((v15 & 0xF8000000) == 0x90000000)
          {
            LOBYTE(v16) = 1;
          }

          else
          {
            v16 = 1;
            do
            {
              v16 += v15 & 0x7FFFFFF;
              v15 = v7[v16];
            }

            while ((v15 & 0xF8000000) != 0x90000000);
          }

          v11 = (v6 & a6) << v16;
          goto LABEL_36;
        case 0x10uLL:
          a6 |= 2 * (v6 & a6);
          if ((v7[*v7 & 0x7FFFFFF] & 0xF8000000) == 0x90000000)
          {
            break;
          }

          v11 = (a6 & v6) << v8;
LABEL_36:
          a6 |= v11;
          break;
        case 0x12uLL:
          v12 = a5 == 133;
          goto LABEL_28;
        case 0x13uLL:
          v12 = a5 == 134;
LABEL_28:
          if (v12)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *sub_2978236B8(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = a1[10];
  v10 = a1[11];
  __dst = a1[12];
  if (a1[4] == a2)
  {
    v11 = 128;
  }

  else
  {
    v11 = *(a2 - 1);
  }

  bzero(v9, *(*a1 + 48));
  *(v9 + a4) = 1;
  sub_297824020(*a1, a4, a5, v9, 132, v9);
  memmove(v10, v9, *(*a1 + 48));
  v12 = 0;
  __src = v10;
  while (1)
  {
    if (v7 == a1[5])
    {
      v13 = 128;
    }

    else
    {
      v13 = *v7;
    }

    v14 = *a1;
    if (!memcmp(v9, v10, *(*a1 + 48)))
    {
      v12 = v7;
    }

    if (v11 == 128)
    {
      if (a1[1])
      {
        goto LABEL_13;
      }
    }

    else if (v11 != 10 || (*(v14 + 40) & 8) == 0)
    {
LABEL_13:
      v15 = 0;
      v16 = 0;
      v17 = 130;
      goto LABEL_16;
    }

    v16 = *(v14 + 76);
    v15 = 129;
    v17 = 131;
LABEL_16:
    if (v13 == 128)
    {
      if ((a1[1] & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else if (v13 != 10 || (*(v14 + 40) & 8) == 0)
    {
LABEL_19:
      v17 = v15;
      goto LABEL_22;
    }

    v16 += *(v14 + 80);
LABEL_22:
    if (v16 >= 1)
    {
      v18 = v16 + 1;
      do
      {
        sub_297824020(*a1, a4, a5, v9, v17, v9);
        --v18;
      }

      while (v18 > 1);
    }

    if (v17 == 129)
    {
      if (v13 == 128)
      {
        v17 = 129;
      }

      else
      {
LABEL_32:
        v20 = isalnum(v13);
        if (v13 == 95 || v20 != 0)
        {
          v17 = 133;
        }
      }

      if (v11 == 128)
      {
        goto LABEL_41;
      }

      v19 = v11;
      goto LABEL_39;
    }

    if (v11 == 128)
    {
      goto LABEL_41;
    }

    v19 = v11;
    if (!isalnum(v11) && v11 != 95 && v13 != 128)
    {
      goto LABEL_32;
    }

LABEL_39:
    if (!isalnum(v19) && v11 != 95 || v17 != 130 && (v13 == 128 || isalnum(v13) || v13 == 95))
    {
LABEL_41:
      if ((v17 - 133) > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v17 = 134;
LABEL_45:
    sub_297824020(*a1, a4, a5, v9, v17, v9);
LABEL_46:
    if (v7 == a3 || *(v9 + a5))
    {
      break;
    }

    memmove(__dst, v9, *(*a1 + 48));
    v10 = __src;
    memmove(v9, __src, *(*a1 + 48));
    sub_297824020(*a1, a4, a5, __dst, v13, v9);
    ++v7;
    v11 = v13;
  }

  a1[6] = v12;
  if (*(v9 + a5))
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2978239A4(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = a1[10];
  __s2 = a1[13];
  __dst = a1[12];
  if (a1[4] == a2)
  {
    v10 = 128;
  }

  else
  {
    v10 = *(a2 - 1);
  }

  bzero(v9, *(*a1 + 48));
  *(v9 + a4) = 1;
  sub_297824020(*a1, a4, a5, v9, 132, v9);
  v11 = 0;
  while (1)
  {
    v12 = v7 == a1[5] ? 128 : *v7;
    if (v10 == 128)
    {
      if ((a1[1] & 1) == 0)
      {
        v13 = *a1;
LABEL_14:
        v14 = *(v13 + 76);
        v15 = 129;
        v16 = 131;
        goto LABEL_16;
      }
    }

    else if (v10 == 10)
    {
      v13 = *a1;
      if ((*(*a1 + 40) & 8) != 0)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v14 = 0;
    v16 = 130;
LABEL_16:
    if (v12 == 128)
    {
      if ((a1[1] & 2) == 0)
      {
        v17 = *a1;
LABEL_22:
        v14 += *(v17 + 80);
        goto LABEL_24;
      }
    }

    else if (v12 == 10)
    {
      v17 = *a1;
      if ((*(*a1 + 40) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    v16 = v15;
LABEL_24:
    if (v14 >= 1)
    {
      v18 = v14 + 1;
      do
      {
        sub_297824020(*a1, a4, a5, v9, v16, v9);
        --v18;
      }

      while (v18 > 1);
    }

    if (v16 == 129)
    {
      if (v12 == 128)
      {
        v16 = 129;
      }

      else
      {
LABEL_34:
        v20 = isalnum(v12);
        if (v12 == 95 || v20 != 0)
        {
          v16 = 133;
        }
      }

      if (v10 == 128)
      {
        goto LABEL_43;
      }

      v19 = v10;
      goto LABEL_41;
    }

    if (v10 == 128)
    {
      goto LABEL_43;
    }

    v19 = v10;
    if (!isalnum(v10) && v10 != 95 && v12 != 128)
    {
      goto LABEL_34;
    }

LABEL_41:
    if (!isalnum(v19) && v10 != 95)
    {
LABEL_43:
      v22 = __s2;
      goto LABEL_44;
    }

    if (v16 == 130)
    {
      v16 = 134;
      v22 = __s2;
LABEL_48:
      sub_297824020(*a1, a4, a5, v9, v16, v9);
      goto LABEL_49;
    }

    v22 = __s2;
    if (v12 != 128 && !isalnum(v12) && v12 != 95)
    {
      v16 = 134;
      goto LABEL_48;
    }

LABEL_44:
    if ((v16 - 133) <= 1)
    {
      goto LABEL_48;
    }

LABEL_49:
    if (*(v9 + a5))
    {
      v11 = v7;
    }

    v23 = *(*a1 + 48);
    v24 = memcmp(v9, v22, v23);
    if (v7 == a3 || !v24)
    {
      return v11;
    }

    memmove(__dst, v9, v23);
    memmove(v9, v22, *(*a1 + 48));
    sub_297824020(*a1, a4, a5, __dst, v12, v9);
    ++v7;
    v10 = v12;
  }
}

char *sub_297823C90(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    while (1)
    {
      v10 = v7;
      v11 = *(*a1 + 8);
      v12 = *(v11 + 8 * v7);
      v13 = v12 & 0xF8000000;
      if ((v12 & 0xF8000000) == 0x48000000 || v13 == 1476395008)
      {
        v15 = (v12 & 0x7FFFFFF) + v7;
      }

      else
      {
        v16 = v13 != 2013265920 || (v12 & 0xF8000000) == 2415919104;
        v15 = v7;
        if (!v16)
        {
          v17 = *(v11 + 8 * v7);
          v15 = v7;
          do
          {
            v15 += v17 & 0x7FFFFFF;
            v17 = *(v11 + 8 * v15);
          }

          while ((v17 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v15 + 1;
      v18 = ((v12 & 0xF8000000) - 0x8000000) >> 27;
      if (v18 <= 9)
      {
        if (v18 - 4 < 2 || v18 == 1)
        {
          v20 = v5 + 1;
        }

        else
        {
          v19 = a3;
          if (v18 == 8)
          {
            do
            {
              v20 = sub_2978239A4(a1, v5, v19, v10, v15 + 1);
              v21 = sub_2978239A4(a1, v20, a3, v15 + 1, a5);
              v19 = v20 - 1;
            }

            while (v21 != a3);
            v22 = v5;
            do
            {
              v23 = v22;
              v22 = v5;
              v24 = sub_2978239A4(a1, v5, v20, v10 + 1, v15);
              v5 = v24;
            }

            while (v24 && v24 != v22);
            if (v24)
            {
              v25 = v22;
            }

            else
            {
              v25 = v23;
            }

            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = v22;
            }

            sub_297823C90(a1, v25, v26, v10 + 1, v15);
          }

          else
          {
            v20 = v5;
          }
        }

        goto LABEL_52;
      }

      if (((v12 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
      {
        if (v18 == 13)
        {
          *(a1[2] + 16 * (v12 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
          v20 = v5;
          goto LABEL_52;
        }

        v33 = a3;
        if (v18 == 14)
        {
          do
          {
            v20 = sub_2978239A4(a1, v5, v33, v10, v15 + 1);
            v34 = sub_2978239A4(a1, v20, a3, v15 + 1, a5);
            v33 = v20 - 1;
          }

          while (v34 != a3);
          v15 = v10 + (*(*(*a1 + 8) + 8 * v10) & 0x7FFFFFFLL) - 1;
          v35 = v10 + 1;
          while (sub_2978239A4(a1, v5, v20, v35, v15) != v20)
          {
            v36 = *(*a1 + 8);
            v37 = *(v36 + 8 * (v15 + 1)) & 0x7FFFFFFLL;
            v38 = v37 + v15 + 1;
            v39 = v37 + v15;
            v35 = v15 + 2;
            if ((*(v36 + 8 * v38) & 0xF8000000) == 0x88000000)
            {
              v15 = v39;
            }

            else
            {
              v15 = v38;
            }
          }

          v30 = a1;
          v31 = v5;
          v32 = v20;
          v29 = v35;
LABEL_48:
          sub_297823C90(v30, v31, v32, v29, v15);
          goto LABEL_52;
        }
      }

      else
      {
        v27 = a3;
        if (v18 == 10)
        {
          do
          {
            v20 = sub_2978239A4(a1, v5, v27, v10, v15 + 1);
            v28 = sub_2978239A4(a1, v20, a3, v15 + 1, a5);
            v27 = v20 - 1;
          }

          while (v28 != a3);
          if (!sub_2978239A4(a1, v5, v20, v10 + 1, v15))
          {
            goto LABEL_52;
          }

          v29 = v10 + 1;
          v30 = a1;
          v31 = v5;
          v32 = v20;
          goto LABEL_48;
        }

        if (v18 == 12)
        {
          *(a1[2] + 16 * (v12 & 0x7FFFFFF)) = &v5[-a1[3]];
        }
      }

      v20 = v5;
LABEL_52:
      v5 = v20;
      if (v7 >= a5)
      {
        return v20;
      }
    }
  }

  return a2;
}

uint64_t sub_297824020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_31;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_31;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_31;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_31;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_31;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_6;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_6:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_31;
        case 0x13uLL:
          if (a5 == 134)
          {
LABEL_31:
            *(a6 + 1 + a2) |= *(a4 + a2);
          }

          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

void sub_297824238(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

unsigned __int8 *sub_2978242D4(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (v4)
    {
      v5 = *v3++;
      *a1++ = v5;
      --v4;
      if (!v5)
      {
        return &v3[~a2];
      }
    }

    *a1 = 0;
  }

    ;
  }

  return &v3[~a2];
}

uint64_t sub_297824314(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v1045 = sub_297828314(a3);
  v1046 = v9;
  if (sub_2977FB7B8(&v1045) >= 4)
  {
    sub_2977FB7B4(&v1043, "__");
    if (sub_297807C54(&v1045, v1043, v1044))
    {
      sub_2977FB7B4(&v1043, "__");
      if (sub_297828360(&v1045, v1043, v1044))
      {
        v10 = sub_2977FB7B8(&v1045);
        v1045 = sub_297805EA4(&v1045, 2uLL, v10 - 4);
        v1046 = v11;
      }
    }
  }

  result = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      sub_2978102C8(&v1043, v1045, v1046);
      v25 = sub_297811C4C(a4);
      v26 = 1;
      if (v25 != 1)
      {
        v26 = sub_297811C4C(a4) == 22;
      }

      v1042 = v26;
      v27 = sub_297812160(&v1043, "interrupt", &v1042);
      v1041 = 1;
      v28 = sub_2978283B8(v27, "acquire_capability", &v1041);
      v1040 = 1;
      v29 = sub_297828430(v28, "acquire_shared_capability", &v1040);
      v1039 = 1;
      v30 = sub_2978284B4(v29, "exclusive_lock_function", &v1039);
      v1038 = 1;
      v31 = sub_29782852C(v30, "shared_lock_function", &v1038);
      v1037 = 1;
      v32 = sub_2978283B8(v31, "acquire_capability", &v1037);
      v1036 = 1;
      v33 = sub_297828430(v32, "acquire_shared_capability", &v1036);
      v1035 = 1;
      v34 = sub_2978284B4(v33, "exclusive_lock_function", &v1035);
      v1034 = 1;
      v35 = sub_29782852C(v34, "shared_lock_function", &v1034);
      v1033 = 1;
      v36 = sub_2978283B8(v35, "acquire_capability", &v1033);
      v1032 = 1;
      v37 = sub_297828430(v36, "acquire_shared_capability", &v1032);
      v1031 = 1;
      v38 = sub_2978284B4(v37, "exclusive_lock_function", &v1031);
      v1030 = 1;
      v39 = sub_29782852C(v38, "shared_lock_function", &v1030);
      v1029 = 1;
      v40 = sub_2978283B8(v39, "acquire_capability", &v1029);
      v1028 = 1;
      v41 = sub_297828430(v40, "acquire_shared_capability", &v1028);
      v1027 = 1;
      v42 = sub_2978284B4(v41, "exclusive_lock_function", &v1027);
      v1026 = 1;
      v43 = sub_29782852C(v42, "shared_lock_function", &v1026);
      v1025 = 1;
      v44 = sub_297812248(v43, "acquired_after", &v1025);
      v1024 = 1;
      v45 = sub_2978285A4(v44, "acquired_before", &v1024);
      v1023 = 1;
      v46 = sub_297828618(v45, "address_space", &v1023);
      v1022 = 1;
      v47 = sub_2978103B4(v46, "alias", &v1022);
      v1021 = 1;
      v48 = sub_2978102CC(v47, "aligned", &v1021);
      v1020 = 1;
      v49 = sub_297828618(v48, "always_inline", &v1020);
      v1019 = 1;
      v50 = sub_29782868C(v49, "analyzer_noreturn", &v1019);
      v1018 = 1;
      v51 = sub_297810578(v50, "annotate", &v1018);
      v1017 = 1;
      v52 = sub_297828704(v51, "objc_arc_weak_reference_unavailable", &v1017);
      v1016 = 1;
      v53 = sub_297828770(v52, "argument_with_type_tag", &v1016);
      v1015 = 1;
      v54 = sub_2978287E8(v53, "pointer_with_type_tag", &v1015);
      v1014 = 1;
      v55 = sub_297828770(v54, "argument_with_type_tag", &v1014);
      v1013 = 1;
      v56 = sub_2978287E8(v55, "pointer_with_type_tag", &v1013);
      v1012 = 1;
      v57 = sub_29782868C(v56, "assert_capability", &v1012);
      v1011 = 1;
      v58 = sub_297828860(v57, "assert_shared_capability", &v1011);
      v1010 = 1;
      v59 = sub_29782868C(v58, "assert_capability", &v1010);
      v1009 = 1;
      v60 = sub_297828860(v59, "assert_shared_capability", &v1009);
      v1008 = 1;
      v61 = sub_2978287E8(v60, "assert_exclusive_lock", &v1008);
      v1007 = 1;
      v62 = sub_2978283B8(v61, "assert_shared_lock", &v1007);
      v1006 = 1;
      v63 = sub_2978121D4(v62, "availability", &v1006);
      v1005 = 1;
      v64 = sub_297810504(v63, "blocks", &v1005);
      v1004 = 1;
      v65 = sub_2978102CC(v64, "bounded", &v1004);
      v1003 = 1;
      v66 = sub_2978103B4(v65, "cdecl", &v1003);
      v1002 = 1;
      v67 = sub_2978288D8(v66, "cf_audited_transfer", &v1002);
      v1001 = 1;
      v68 = sub_297811E3C(v67, "cf_consumed", &v1001);
      v1000 = 1;
      v69 = sub_2978284B4(v68, "cf_returns_not_retained", &v1000);
      v999 = 1;
      v70 = sub_2978288D8(v69, "cf_returns_retained", &v999);
      v998 = 1;
      v71 = sub_2978288D8(v70, "cf_unknown_transfer", &v998);
      v997 = 1;
      v72 = sub_297810578(v71, "constant", &v997);
      v996 = 1;
      v73 = sub_297810504(v72, "device", &v996);
      v995 = 1;
      v74 = sub_297810504(v73, "global", &v995);
      v994 = 1;
      v75 = sub_29781049C(v74, "host", &v994);
      v993 = 1;
      v76 = sub_297828618(v75, "launch_bounds", &v993);
      v992 = 1;
      v77 = sub_297810504(v76, "shared", &v992);
      v991 = 1;
      v78 = sub_297828618(v77, "callable_when", &v991);
      v990 = 1;
      v79 = sub_297810340(v78, "capability", &v990);
      v989 = 1;
      v80 = sub_29782868C(v79, "shared_capability", &v989);
      v988 = 1;
      v81 = sub_297810340(v80, "capability", &v988);
      v987 = 1;
      v82 = sub_29782868C(v81, "shared_capability", &v987);
      v986 = 1;
      v83 = sub_2978283B8(v82, "carries_dependency", &v986);
      v985 = 1;
      v84 = sub_2978102CC(v83, "cleanup", &v985);
      v984 = 1;
      v85 = sub_29781049C(v84, "cold", &v984);
      v983 = 1;
      v86 = sub_297810504(v85, "common", &v983);
      v982 = 1;
      v87 = sub_2978103B4(v86, "const", &v982);
      v981 = 1;
      v88 = sub_2978102CC(v87, "__const", &v981);
      v980 = 1;
      v89 = sub_2978103B4(v88, "const", &v980);
      v979 = 1;
      v90 = sub_2978102CC(v89, "__const", &v979);
      v978 = 1;
      v91 = sub_297811E3C(v90, "constructor", &v978);
      v977 = 1;
      v92 = sub_297810340(v91, "consumable", &v977);
      v976 = 1;
      v93 = sub_297828950(v92, "consumable_auto_cast_state", &v976);
      v975 = 1;
      v94 = sub_2978289D4(v93, "consumable_set_state_on_read", &v975);
      v95 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v974 = v95;
      v96 = sub_297812160(v94, "dllexport", &v974);
      v97 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v973 = v97;
      v98 = sub_297812160(v96, "dllimport", &v973);
      v99 = 1;
      v972 = 1;
      v100 = sub_297810340(v98, "deprecated", &v972);
      v971 = 1;
      v101 = sub_297810340(v100, "destructor", &v971);
      v970 = 1;
      v102 = sub_297812160(v101, "enable_if", &v970);
      v969 = 1;
      v103 = sub_297828950(v102, "exclusive_trylock_function", &v969);
      v968 = 1;
      v104 = sub_2978285A4(v103, "ext_vector_type", &v968);
      v967 = 1;
      v105 = sub_297810578(v104, "fastcall", &v967);
      v966 = 1;
      v106 = sub_2978102CC(v105, "flatten", &v966);
      v965 = 1;
      v107 = sub_297810504(v106, "format", &v965);
      v964 = 1;
      v108 = sub_297810340(v107, "format_arg", &v964);
      v963 = 1;
      v109 = sub_297810340(v108, "gnu_inline", &v963);
      v962 = 1;
      v110 = sub_297810340(v109, "guarded_by", &v962);
      v961 = 1;
      v111 = sub_297811E3C(v110, "guarded_var", &v961);
      v960 = 1;
      v112 = sub_297810428(v111, "hot", &v960);
      v959 = 1;
      v113 = sub_297810578(v112, "ibaction", &v959);
      v958 = 1;
      v114 = sub_297810578(v113, "iboutlet", &v958);
      v957 = 1;
      v115 = sub_2978283B8(v114, "iboutletcollection", &v957);
      v956 = 1;
      v116 = sub_297828618(v115, "init_priority", &v956);
      v955 = 1;
      v117 = sub_297812248(v116, "intel_ocl_bicc", &v955);
      v954 = 1;
      v118 = sub_297828618(v117, "lock_returned", &v954);
      v953 = 1;
      v119 = sub_297810578(v118, "lockable", &v953);
      v952 = 1;
      v120 = sub_297812248(v119, "locks_excluded", &v952);
      v951 = 1;
      v121 = sub_297810504(v120, "ms_abi", &v951);
      v950 = sub_297811C4C(a4) == 10;
      v122 = sub_297812160(v121, "interrupt", &v950);
      v949 = 1;
      v123 = sub_297810504(v122, "malloc", &v949);
      v948 = 1;
      v124 = sub_297812160(v123, "may_alias", &v948);
      v947 = 1;
      v125 = sub_2978102CC(v124, "minsize", &v947);
      v126 = sub_297811C4C(a4);
      v127 = 1;
      if (v126 != 6)
      {
        v127 = sub_297811C4C(a4) == 7;
      }

      v946 = v127;
      v128 = sub_297810504(v125, "mips16", &v946);
      v945 = 1;
      v129 = sub_29781049C(v128, "mode", &v945);
      v944 = 1;
      v130 = sub_297812160(v129, "ms_struct", &v944);
      v943 = 1;
      v131 = sub_297811E3C(v130, "ns_consumed", &v943);
      v942 = 1;
      v132 = sub_297828A58(v131, "ns_consumes_self", &v942);
      v941 = 1;
      v133 = sub_2978284B4(v132, "ns_returns_autoreleased", &v941);
      v940 = 1;
      v134 = sub_2978284B4(v133, "ns_returns_not_retained", &v940);
      v939 = 1;
      v135 = sub_2978288D8(v134, "ns_returns_retained", &v939);
      v938 = 1;
      v136 = sub_2978103B4(v135, "naked", &v938);
      v937 = 1;
      v137 = sub_29782852C(v136, "neon_polyvector_type", &v937);
      v936 = 1;
      v138 = sub_297828A58(v137, "neon_vector_type", &v936);
      v935 = 1;
      v139 = sub_297810578(v138, "nocommon", &v935);
      v934 = 1;
      v140 = sub_2978102CC(v139, "nodebug", &v934);
      v933 = 1;
      v141 = sub_297811E3C(v140, "noduplicate", &v933);
      v932 = 1;
      v142 = sub_297810578(v141, "noescape", &v932);
      v931 = 1;
      v143 = sub_297810578(v142, "noinline", &v931);
      v930 = 1;
      v144 = sub_297828770(v143, "no_instrument_function", &v930);
      if (sub_297811C4C(a4) != 6)
      {
        v99 = sub_297811C4C(a4) == 7;
      }

      v929 = v99;
      v145 = sub_297810578(v144, "nomips16", &v929);
      v928 = 1;
      v146 = sub_297810578(v145, "noreturn", &v928);
      v927 = 1;
      v147 = sub_297828950(v146, "no_address_safety_analysis", &v927);
      v926 = 1;
      v148 = sub_2978288D8(v147, "no_sanitize_address", &v926);
      v925 = 1;
      v149 = sub_297828950(v148, "no_address_safety_analysis", &v925);
      v924 = 1;
      v150 = sub_2978288D8(v149, "no_sanitize_address", &v924);
      v923 = 1;
      v151 = sub_2978283B8(v150, "no_sanitize_memory", &v923);
      v922 = 1;
      v152 = sub_2978283B8(v151, "no_sanitize_thread", &v922);
      v921 = 1;
      v153 = sub_297812248(v152, "no_split_stack", &v921);
      v920 = 1;
      v154 = sub_297828430(v153, "no_thread_safety_analysis", &v920);
      v919 = 1;
      v155 = sub_2978102CC(v154, "nothrow", &v919);
      v918 = 1;
      v156 = sub_2978102CC(v155, "nonnull", &v918);
      v917 = 1;
      v157 = sub_297811E3C(v156, "objc_bridge", &v917);
      v916 = 1;
      v158 = sub_2978288D8(v157, "objc_bridge_mutable", &v916);
      v915 = 1;
      v159 = sub_2978288D8(v158, "objc_bridge_related", &v915);
      v914 = 1;
      v160 = sub_297828860(v159, "objc_complete_definition", &v914);
      v913 = 1;
      v161 = sub_297828AC4(v160, "objc_designated_initializer", &v913);
      v912 = 1;
      v162 = sub_297812248(v161, "objc_exception", &v912);
      v911 = 1;
      v163 = sub_297828B48(v162, "objc_protocol_requires_explicit_implementation", &v911);
      v910 = 1;
      v164 = sub_2978102CC(v163, "objc_gc", &v910);
      v909 = 1;
      v165 = sub_2978283B8(v164, "objc_method_family", &v909);
      v908 = 1;
      v166 = sub_297810578(v165, "NSObject", &v908);
      v907 = 1;
      v167 = sub_297812248(v166, "objc_ownership", &v907);
      v906 = 1;
      v168 = sub_2978287E8(v167, "objc_precise_lifetime", &v906);
      v905 = 1;
      v169 = sub_297828BB4(v168, "objc_requires_property_definitions", &v905);
      v904 = 1;
      v170 = sub_2978288D8(v169, "objc_requires_super", &v904);
      v903 = 1;
      v171 = sub_297828950(v170, "objc_returns_inner_pointer", &v903);
      v902 = 1;
      v172 = sub_2978285A4(v171, "objc_root_class", &v902);
      v901 = 1;
      v173 = sub_29782868C(v172, "objc_runtime_name", &v901);
      v900 = 1;
      v174 = sub_297828AC4(v173, "objc_subclassing_restricted", &v900);
      v899 = 1;
      v175 = sub_2978102CC(v174, "optnone", &v899);
      v898 = 1;
      v176 = sub_2978121D4(v175, "overloadable", &v898);
      v897 = 1;
      v177 = sub_2978285A4(v176, "ownership_holds", &v897);
      v896 = 1;
      v178 = sub_29782868C(v177, "ownership_returns", &v896);
      v895 = 1;
      v179 = sub_2978285A4(v178, "ownership_takes", &v895);
      v894 = 1;
      v180 = sub_2978285A4(v179, "ownership_holds", &v894);
      v893 = 1;
      v181 = sub_29782868C(v180, "ownership_returns", &v893);
      v892 = 1;
      v182 = sub_2978285A4(v181, "ownership_takes", &v892);
      v891 = 1;
      v183 = sub_2978285A4(v182, "ownership_holds", &v891);
      v890 = 1;
      v184 = sub_29782868C(v183, "ownership_returns", &v890);
      v889 = 1;
      v185 = sub_2978285A4(v184, "ownership_takes", &v889);
      v888 = 1;
      v186 = sub_297810504(v185, "packed", &v888);
      v887 = 1;
      v187 = sub_2978285A4(v186, "param_typestate", &v887);
      v886 = 1;
      v188 = sub_297810504(v187, "pascal", &v886);
      v885 = 1;
      v189 = sub_297810428(v188, "pcs", &v885);
      v884 = 1;
      v190 = sub_297812160(v189, "pnaclcall", &v884);
      v883 = 1;
      v191 = sub_297828618(v190, "pt_guarded_by", &v883);
      v882 = 1;
      v192 = sub_297812248(v191, "pt_guarded_var", &v882);
      v881 = 1;
      v193 = sub_29781049C(v192, "pure", &v881);
      v880 = 1;
      v194 = sub_2978102CC(v193, "regparm", &v880);
      v879 = 1;
      v195 = sub_2978283B8(v194, "release_capability", &v879);
      v878 = 1;
      v196 = sub_297828430(v195, "release_shared_capability", &v878);
      v877 = 1;
      v197 = sub_297828950(v196, "release_generic_capability", &v877);
      v876 = 1;
      v198 = sub_2978285A4(v197, "unlock_function", &v876);
      v875 = 1;
      v199 = sub_2978283B8(v198, "release_capability", &v875);
      v874 = 1;
      v200 = sub_297828430(v199, "release_shared_capability", &v874);
      v873 = 1;
      v201 = sub_297828950(v200, "release_generic_capability", &v873);
      v872 = 1;
      v202 = sub_2978285A4(v201, "unlock_function", &v872);
      v871 = 1;
      v203 = sub_2978283B8(v202, "release_capability", &v871);
      v870 = 1;
      v204 = sub_297828430(v203, "release_shared_capability", &v870);
      v869 = 1;
      v205 = sub_297828950(v204, "release_generic_capability", &v869);
      v868 = 1;
      v206 = sub_2978285A4(v205, "unlock_function", &v868);
      v867 = 1;
      v207 = sub_2978283B8(v206, "release_capability", &v867);
      v866 = 1;
      v208 = sub_297828430(v207, "release_shared_capability", &v866);
      v865 = 1;
      v209 = sub_297828950(v208, "release_generic_capability", &v865);
      v864 = 1;
      v210 = sub_2978285A4(v209, "unlock_function", &v864);
      v863 = 1;
      v211 = sub_29782852C(v210, "reqd_work_group_size", &v863);
      v862 = 1;
      v212 = sub_2978288D8(v211, "requires_capability", &v862);
      v861 = 1;
      v213 = sub_297828860(v212, "exclusive_locks_required", &v861);
      v860 = 1;
      v214 = sub_297828950(v213, "requires_shared_capability", &v860);
      v859 = 1;
      v215 = sub_2978287E8(v214, "shared_locks_required", &v859);
      v858 = 1;
      v216 = sub_2978288D8(v215, "requires_capability", &v858);
      v857 = 1;
      v217 = sub_297828860(v216, "exclusive_locks_required", &v857);
      v856 = 1;
      v218 = sub_297828950(v217, "requires_shared_capability", &v856);
      v855 = 1;
      v219 = sub_2978287E8(v218, "shared_locks_required", &v855);
      v854 = 1;
      v220 = sub_2978288D8(v219, "requires_capability", &v854);
      v853 = 1;
      v221 = sub_297828860(v220, "exclusive_locks_required", &v853);
      v852 = 1;
      v222 = sub_297828950(v221, "requires_shared_capability", &v852);
      v851 = 1;
      v223 = sub_2978287E8(v222, "shared_locks_required", &v851);
      v850 = 1;
      v224 = sub_2978288D8(v223, "requires_capability", &v850);
      v849 = 1;
      v225 = sub_297828860(v224, "exclusive_locks_required", &v849);
      v848 = 1;
      v226 = sub_297828950(v225, "requires_shared_capability", &v848);
      v847 = 1;
      v227 = sub_2978287E8(v226, "shared_locks_required", &v847);
      v846 = 1;
      v228 = sub_297828A58(v227, "return_typestate", &v846);
      v845 = 1;
      v229 = sub_2978285A4(v228, "returns_nonnull", &v845);
      v844 = 1;
      v230 = sub_297828618(v229, "returns_twice", &v844);
      v843 = 1;
      v231 = sub_2978285A4(v230, "scoped_lockable", &v843);
      v842 = 1;
      v232 = sub_2978102CC(v231, "section", &v842);
      v841 = 1;
      v233 = sub_297810578(v232, "sentinel", &v841);
      v840 = 1;
      v234 = sub_297828618(v233, "set_typestate", &v840);
      v839 = 1;
      v235 = sub_2978284B4(v234, "shared_trylock_function", &v839);
      v838 = 1;
      v236 = sub_2978102CC(v235, "stdcall", &v838);
      v837 = 1;
      v237 = sub_297810578(v236, "sysv_abi", &v837);
      v836 = 1;
      v238 = sub_297812160(v237, "tls_model", &v836);
      v835 = 1;
      v239 = sub_297812248(v238, "test_typestate", &v835);
      v834 = 1;
      v240 = sub_297810578(v239, "thiscall", &v834);
      v833 = 1;
      v241 = sub_29782868C(v240, "transparent_union", &v833);
      v832 = 1;
      v242 = sub_297828770(v241, "try_acquire_capability", &v832);
      v831 = 1;
      v243 = sub_297828C20(v242, "try_acquire_shared_capability", &v831);
      v830 = 1;
      v244 = sub_297828770(v243, "try_acquire_capability", &v830);
      v829 = 1;
      v245 = sub_297828C20(v244, "try_acquire_shared_capability", &v829);
      v828 = 1;
      v246 = sub_2978287E8(v245, "type_tag_for_datatype", &v828);
      v827 = 1;
      v247 = sub_2978285A4(v246, "type_visibility", &v827);
      v826 = 1;
      v248 = sub_297811E3C(v247, "unavailable", &v826);
      v825 = 1;
      v249 = sub_297810504(v248, "unused", &v825);
      v824 = 1;
      v250 = sub_29781049C(v249, "used", &v824);
      v823 = 1;
      v251 = sub_297812160(v250, "vecreturn", &v823);
      v822 = 1;
      v252 = sub_297828618(v251, "vec_type_hint", &v822);
      v821 = 1;
      v253 = sub_297811E3C(v252, "vector_size", &v821);
      v820 = 1;
      v254 = sub_297810340(v253, "visibility", &v820);
      v819 = 1;
      v255 = sub_297811E3C(v254, "warn_unused", &v819);
      v818 = 1;
      v256 = sub_2978283B8(v255, "warn_unused_result", &v818);
      v817 = 1;
      v257 = sub_29781049C(v256, "weak", &v817);
      v816 = 1;
      v258 = sub_297811E3C(v257, "weak_import", &v816);
      v815 = 1;
      v259 = sub_2978102CC(v258, "weakref", &v815);
      v814 = 1;
      v260 = sub_29782852C(v259, "work_group_size_hint", &v814);
      v813 = sub_297811C4C(a4) == 24;
      v23 = sub_2978284B4(v260, "force_align_arg_pointer", &v813);
      v812 = 0;
      v24 = &v812;
    }

    else
    {
      sub_2978102C8(&v1043, v1045, v1046);
      v283 = sub_297811C4C(a4);
      v284 = 1;
      v285 = 1;
      if (v283 != 1)
      {
        v285 = sub_297811C4C(a4) == 22;
      }

      v1042 = v285;
      v286 = sub_297812160(&v1043, "interrupt", &v1042);
      v1041 = 1;
      v287 = sub_2978283B8(v286, "acquire_capability", &v1041);
      v1040 = 1;
      v288 = sub_2978283B8(v287, "acquire_capability", &v1040);
      v1039 = 1;
      v289 = sub_297828430(v288, "acquire_shared_capability", &v1039);
      v1038 = 1;
      v290 = sub_297828430(v289, "acquire_shared_capability", &v1038);
      v1037 = 1;
      v291 = sub_2978284B4(v290, "exclusive_lock_function", &v1037);
      v1036 = 1;
      v292 = sub_29782852C(v291, "shared_lock_function", &v1036);
      v1035 = 1;
      v293 = sub_297812248(v292, "acquired_after", &v1035);
      v1034 = 1;
      v294 = sub_2978285A4(v293, "acquired_before", &v1034);
      v1033 = 1;
      v295 = sub_297828618(v294, "address_space", &v1033);
      v1032 = 1;
      v296 = sub_2978103B4(v295, "alias", &v1032);
      v1031 = 1;
      v297 = sub_2978103B4(v296, "alias", &v1031);
      v1030 = 1;
      v298 = sub_2978102CC(v297, "aligned", &v1030);
      v1029 = 1;
      v299 = sub_2978102CC(v298, "aligned", &v1029);
      v1028 = 1;
      v300 = sub_2978103B4(v299, "align", &v1028);
      v1027 = 1;
      v301 = sub_2978102CC(v300, "alignas", &v1027);
      v1026 = 1;
      v302 = sub_297810578(v301, "_Alignas", &v1026);
      v1025 = 1;
      v303 = sub_297828618(v302, "always_inline", &v1025);
      v1024 = 1;
      v304 = sub_297828618(v303, "always_inline", &v1024);
      v1023 = 1;
      v305 = sub_297828618(v304, "__forceinline", &v1023);
      v1022 = 1;
      v306 = sub_29782868C(v305, "analyzer_noreturn", &v1022);
      v1021 = 1;
      v307 = sub_297810578(v306, "annotate", &v1021);
      v1020 = 1;
      v308 = sub_297828704(v307, "objc_arc_weak_reference_unavailable", &v1020);
      v1019 = 1;
      v309 = sub_297828770(v308, "argument_with_type_tag", &v1019);
      v1018 = 1;
      v310 = sub_2978287E8(v309, "pointer_with_type_tag", &v1018);
      v1017 = 1;
      v311 = sub_297810428(v310, "asm", &v1017);
      v1016 = 1;
      v312 = sub_2978102CC(v311, "__asm__", &v1016);
      v1015 = 1;
      v313 = sub_29782868C(v312, "assert_capability", &v1015);
      v1014 = 1;
      v314 = sub_29782868C(v313, "assert_capability", &v1014);
      v1013 = 1;
      v315 = sub_297828860(v314, "assert_shared_capability", &v1013);
      v1012 = 1;
      v316 = sub_297828860(v315, "assert_shared_capability", &v1012);
      v1011 = 1;
      v317 = sub_2978287E8(v316, "assert_exclusive_lock", &v1011);
      v1010 = 1;
      v318 = sub_2978283B8(v317, "assert_shared_lock", &v1010);
      v1009 = 1;
      v319 = sub_2978121D4(v318, "availability", &v1009);
      v1008 = 1;
      v320 = sub_297810504(v319, "blocks", &v1008);
      v1007 = 1;
      v321 = sub_2978102CC(v320, "bounded", &v1007);
      v1006 = 1;
      v322 = sub_297812160(v321, "_Noreturn", &v1006);
      v1005 = 1;
      v323 = sub_2978103B4(v322, "cdecl", &v1005);
      v1004 = 1;
      v324 = sub_2978103B4(v323, "cdecl", &v1004);
      v1003 = 1;
      v325 = sub_2978102CC(v324, "__cdecl", &v1003);
      v1002 = 1;
      v326 = sub_297810504(v325, "_cdecl", &v1002);
      v1001 = 1;
      v327 = sub_2978288D8(v326, "cf_audited_transfer", &v1001);
      v1000 = 1;
      v328 = sub_297811E3C(v327, "cf_consumed", &v1000);
      v999 = 1;
      v329 = sub_2978284B4(v328, "cf_returns_not_retained", &v999);
      v998 = 1;
      v330 = sub_2978288D8(v329, "cf_returns_retained", &v998);
      v997 = 1;
      v331 = sub_2978288D8(v330, "cf_unknown_transfer", &v997);
      v996 = 1;
      v332 = sub_297810578(v331, "constant", &v996);
      v995 = 1;
      v333 = sub_297810504(v332, "device", &v995);
      v994 = 1;
      v334 = sub_297810504(v333, "global", &v994);
      v993 = 1;
      v335 = sub_29781049C(v334, "host", &v993);
      v992 = 1;
      v336 = sub_297828618(v335, "launch_bounds", &v992);
      v991 = 1;
      v337 = sub_297810504(v336, "shared", &v991);
      v990 = 1;
      v338 = sub_297810578(v337, "noreturn", &v990);
      v989 = 1;
      v339 = sub_297828618(v338, "callable_when", &v989);
      v988 = 1;
      v340 = sub_297810340(v339, "capability", &v988);
      v987 = 1;
      v341 = sub_297810340(v340, "capability", &v987);
      v986 = 1;
      v342 = sub_29782868C(v341, "shared_capability", &v986);
      v985 = 1;
      v343 = sub_29782868C(v342, "shared_capability", &v985);
      v984 = 1;
      v344 = sub_2978283B8(v343, "carries_dependency", &v984);
      v983 = 1;
      v345 = sub_2978283B8(v344, "carries_dependency", &v983);
      v982 = 1;
      v346 = sub_2978102CC(v345, "cleanup", &v982);
      v981 = 1;
      v347 = sub_2978102CC(v346, "cleanup", &v981);
      v980 = 1;
      v348 = sub_29781049C(v347, "cold", &v980);
      v979 = 1;
      v349 = sub_29781049C(v348, "cold", &v979);
      v978 = 1;
      v350 = sub_297810504(v349, "common", &v978);
      v977 = 1;
      v351 = sub_297810504(v350, "common", &v977);
      v976 = 1;
      v352 = sub_2978103B4(v351, "const", &v976);
      v975 = 1;
      v353 = sub_2978103B4(v352, "const", &v975);
      v974 = 1;
      v354 = sub_2978102CC(v353, "__const", &v974);
      v973 = 1;
      v355 = sub_2978102CC(v354, "__const", &v973);
      v972 = 1;
      v356 = sub_297811E3C(v355, "constructor", &v972);
      v971 = 1;
      v357 = sub_297811E3C(v356, "constructor", &v971);
      v970 = 1;
      v358 = sub_297810340(v357, "consumable", &v970);
      v969 = 1;
      v359 = sub_297828950(v358, "consumable_auto_cast_state", &v969);
      v968 = 1;
      v360 = sub_2978289D4(v359, "consumable_set_state_on_read", &v968);
      v361 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v967 = v361;
      v362 = sub_297812160(v360, "dllexport", &v967);
      v363 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v966 = v363;
      v364 = sub_297812160(v362, "dllexport", &v966);
      v365 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v965 = v365;
      v366 = sub_297812160(v364, "dllexport", &v965);
      v367 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v964 = v367;
      v368 = sub_297812160(v366, "dllimport", &v964);
      v369 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v963 = v369;
      v370 = sub_297812160(v368, "dllimport", &v963);
      v371 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
      v962 = v371;
      v372 = sub_297812160(v370, "dllimport", &v962);
      v961 = 1;
      v373 = sub_297810340(v372, "deprecated", &v961);
      v960 = 1;
      v374 = sub_297810340(v373, "deprecated", &v960);
      v959 = 1;
      v375 = sub_297810340(v374, "deprecated", &v959);
      v958 = 1;
      v376 = sub_297810340(v375, "deprecated", &v958);
      v957 = 1;
      v377 = sub_297810340(v376, "destructor", &v957);
      v956 = 1;
      v378 = sub_297810340(v377, "destructor", &v956);
      v955 = 1;
      v379 = sub_297812160(v378, "enable_if", &v955);
      v954 = 1;
      v380 = sub_297828950(v379, "exclusive_trylock_function", &v954);
      v953 = 1;
      v381 = sub_2978285A4(v380, "ext_vector_type", &v953);
      v952 = 1;
      v382 = sub_297811E3C(v381, "fallthrough", &v952);
      v951 = 1;
      v383 = sub_297810578(v382, "fastcall", &v951);
      v950 = 1;
      v384 = sub_297810578(v383, "fastcall", &v950);
      v949 = 1;
      v385 = sub_297810340(v384, "__fastcall", &v949);
      v948 = 1;
      v386 = sub_297812160(v385, "_fastcall", &v948);
      v947 = 1;
      v387 = sub_2978103B4(v386, "final", &v947);
      v946 = 1;
      v388 = sub_297810504(v387, "sealed", &v946);
      v945 = 1;
      v389 = sub_2978102CC(v388, "flatten", &v945);
      v944 = 1;
      v390 = sub_2978102CC(v389, "flatten", &v944);
      v943 = 1;
      v391 = sub_297810504(v390, "format", &v943);
      v942 = 1;
      v392 = sub_297810504(v391, "format", &v942);
      v941 = 1;
      v393 = sub_297810340(v392, "format_arg", &v941);
      v940 = 1;
      v394 = sub_297810340(v393, "format_arg", &v940);
      v939 = 1;
      v395 = sub_297810340(v394, "gnu_inline", &v939);
      v938 = 1;
      v396 = sub_297810340(v395, "gnu_inline", &v938);
      v937 = 1;
      v397 = sub_297810340(v396, "guarded_by", &v937);
      v936 = 1;
      v398 = sub_297811E3C(v397, "guarded_var", &v936);
      v935 = 1;
      v399 = sub_297810428(v398, "hot", &v935);
      v934 = 1;
      v400 = sub_297810428(v399, "hot", &v934);
      v933 = 1;
      v401 = sub_297810578(v400, "ibaction", &v933);
      v932 = 1;
      v402 = sub_297810578(v401, "iboutlet", &v932);
      v931 = 1;
      v403 = sub_2978283B8(v402, "iboutletcollection", &v931);
      v930 = 1;
      v404 = sub_297828618(v403, "init_priority", &v930);
      v929 = 1;
      v405 = sub_297810578(v404, "init_seg", &v929);
      v928 = 1;
      v406 = sub_297812248(v405, "intel_ocl_bicc", &v928);
      v927 = 1;
      v407 = sub_297828618(v406, "lock_returned", &v927);
      v926 = 1;
      v408 = sub_297810578(v407, "lockable", &v926);
      v925 = 1;
      v409 = sub_297812248(v408, "locks_excluded", &v925);
      v924 = 1;
      v410 = sub_29781049C(v409, "loop", &v924);
      v923 = 1;
      v411 = sub_297810504(v410, "unroll", &v923);
      v922 = 1;
      v412 = sub_297810578(v411, "nounroll", &v922);
      v921 = 1;
      v413 = sub_297810504(v412, "ms_abi", &v921);
      v920 = 1;
      v414 = sub_297810504(v413, "ms_abi", &v920);
      v919 = 1;
      v415 = sub_29782852C(v414, "__single_inheritance", &v919);
      v918 = 1;
      v416 = sub_297828770(v415, "__multiple_inheritance", &v918);
      v917 = 1;
      v417 = sub_2978287E8(v416, "__virtual_inheritance", &v917);
      v916 = 1;
      v418 = sub_297828430(v417, "__unspecified_inheritance", &v916);
      v915 = sub_297811C4C(a4) == 10;
      v419 = sub_297812160(v418, "interrupt", &v915);
      v914 = 1;
      v420 = sub_297810504(v419, "malloc", &v914);
      v913 = 1;
      v421 = sub_297810504(v420, "malloc", &v913);
      v912 = 1;
      v422 = sub_297812160(v421, "may_alias", &v912);
      v911 = 1;
      v423 = sub_297812160(v422, "may_alias", &v911);
      v910 = 1;
      v424 = sub_2978102CC(v423, "minsize", &v910);
      if (sub_297811C4C(a4) != 6)
      {
        v284 = sub_297811C4C(a4) == 7;
      }

      v909 = v284;
      v425 = sub_297810504(v424, "mips16", &v909);
      v426 = sub_297811C4C(a4);
      v427 = 1;
      v428 = 1;
      if (v426 != 6)
      {
        v428 = sub_297811C4C(a4) == 7;
      }

      v908 = v428;
      v429 = sub_297810504(v425, "mips16", &v908);
      v907 = 1;
      v430 = sub_29781049C(v429, "mode", &v907);
      v906 = 1;
      v431 = sub_29781049C(v430, "mode", &v906);
      v905 = 1;
      v432 = sub_297810578(v431, "property", &v905);
      v904 = 1;
      v433 = sub_297812160(v432, "ms_struct", &v904);
      v903 = 1;
      v434 = sub_297812160(v433, "ms_struct", &v903);
      v902 = 1;
      v435 = sub_297811E3C(v434, "ns_consumed", &v902);
      v901 = 1;
      v436 = sub_297828A58(v435, "ns_consumes_self", &v901);
      v900 = 1;
      v437 = sub_2978284B4(v436, "ns_returns_autoreleased", &v900);
      v899 = 1;
      v438 = sub_2978284B4(v437, "ns_returns_not_retained", &v899);
      v898 = 1;
      v439 = sub_2978288D8(v438, "ns_returns_retained", &v898);
      v897 = 1;
      v440 = sub_2978103B4(v439, "naked", &v897);
      v896 = 1;
      v441 = sub_2978103B4(v440, "naked", &v896);
      v895 = 1;
      v442 = sub_2978103B4(v441, "naked", &v895);
      v894 = 1;
      v443 = sub_29782852C(v442, "neon_polyvector_type", &v894);
      v893 = 1;
      v444 = sub_297828A58(v443, "neon_vector_type", &v893);
      v892 = 1;
      v445 = sub_297810578(v444, "nocommon", &v892);
      v891 = 1;
      v446 = sub_297810578(v445, "nocommon", &v891);
      v890 = 1;
      v447 = sub_2978102CC(v446, "nodebug", &v890);
      v889 = 1;
      v448 = sub_297811E3C(v447, "noduplicate", &v889);
      v888 = 1;
      v449 = sub_297811E3C(v448, "noduplicate", &v888);
      v887 = 1;
      v450 = sub_297810578(v449, "noescape", &v887);
      v886 = 1;
      v451 = sub_297810578(v450, "noescape", &v886);
      v885 = 1;
      v452 = sub_297810578(v451, "noinline", &v885);
      v884 = 1;
      v453 = sub_297810578(v452, "noinline", &v884);
      v883 = 1;
      v454 = sub_297810578(v453, "noinline", &v883);
      v882 = 1;
      v455 = sub_297828770(v454, "no_instrument_function", &v882);
      v881 = 1;
      v456 = sub_297828770(v455, "no_instrument_function", &v881);
      if (sub_297811C4C(a4) != 6)
      {
        v427 = sub_297811C4C(a4) == 7;
      }

      v880 = v427;
      v457 = sub_297810578(v456, "nomips16", &v880);
      v458 = sub_297811C4C(a4);
      v459 = 1;
      if (v458 != 6)
      {
        v459 = sub_297811C4C(a4) == 7;
      }

      v879 = v459;
      v460 = sub_297810578(v457, "nomips16", &v879);
      v878 = 1;
      v461 = sub_297810578(v460, "noreturn", &v878);
      v877 = 1;
      v462 = sub_297810578(v461, "noreturn", &v877);
      v876 = 1;
      v463 = sub_297810578(v462, "noreturn", &v876);
      v875 = 1;
      v464 = sub_297828950(v463, "no_address_safety_analysis", &v875);
      v874 = 1;
      v465 = sub_297828950(v464, "no_address_safety_analysis", &v874);
      v873 = 1;
      v466 = sub_2978288D8(v465, "no_sanitize_address", &v873);
      v872 = 1;
      v467 = sub_2978288D8(v466, "no_sanitize_address", &v872);
      v871 = 1;
      v468 = sub_2978283B8(v467, "no_sanitize_memory", &v871);
      v870 = 1;
      v469 = sub_2978283B8(v468, "no_sanitize_thread", &v870);
      v869 = 1;
      v470 = sub_297812248(v469, "no_split_stack", &v869);
      v868 = 1;
      v471 = sub_297812248(v470, "no_split_stack", &v868);
      v867 = 1;
      v472 = sub_297828430(v471, "no_thread_safety_analysis", &v867);
      v866 = 1;
      v473 = sub_2978102CC(v472, "nothrow", &v866);
      v865 = 1;
      v474 = sub_2978102CC(v473, "nothrow", &v865);
      v864 = 1;
      v475 = sub_2978102CC(v474, "nothrow", &v864);
      v863 = 1;
      v476 = sub_2978102CC(v475, "nonnull", &v863);
      v862 = 1;
      v477 = sub_2978102CC(v476, "nonnull", &v862);
      v861 = 1;
      v478 = sub_297811E3C(v477, "objc_bridge", &v861);
      v860 = 1;
      v479 = sub_2978288D8(v478, "objc_bridge_mutable", &v860);
      v859 = 1;
      v480 = sub_2978288D8(v479, "objc_bridge_related", &v859);
      v858 = 1;
      v481 = sub_297828860(v480, "objc_complete_definition", &v858);
      v857 = 1;
      v482 = sub_297828AC4(v481, "objc_designated_initializer", &v857);
      v856 = 1;
      v483 = sub_297812248(v482, "objc_exception", &v856);
      v855 = 1;
      v484 = sub_297828B48(v483, "objc_protocol_requires_explicit_implementation", &v855);
      v854 = 1;
      v485 = sub_2978102CC(v484, "objc_gc", &v854);
      v853 = 1;
      v486 = sub_2978283B8(v485, "objc_method_family", &v853);
      v852 = 1;
      v487 = sub_297810578(v486, "NSObject", &v852);
      v851 = 1;
      v488 = sub_297812248(v487, "objc_ownership", &v851);
      v850 = 1;
      v489 = sub_2978287E8(v488, "objc_precise_lifetime", &v850);
      v849 = 1;
      v490 = sub_297828BB4(v489, "objc_requires_property_definitions", &v849);
      v848 = 1;
      v491 = sub_2978288D8(v490, "objc_requires_super", &v848);
      v847 = 1;
      v492 = sub_297828950(v491, "objc_returns_inner_pointer", &v847);
      v846 = 1;
      v493 = sub_2978285A4(v492, "objc_root_class", &v846);
      v845 = 1;
      v494 = sub_29782868C(v493, "objc_runtime_name", &v845);
      v844 = 1;
      v495 = sub_297828AC4(v494, "objc_subclassing_restricted", &v844);
      v843 = 1;
      v496 = sub_297810340(v495, "__constant", &v843);
      v842 = 1;
      v497 = sub_297810578(v496, "constant", &v842);
      v841 = 1;
      v498 = sub_297810578(v497, "__global", &v841);
      v840 = 1;
      v499 = sub_297810504(v498, "global", &v840);
      v839 = 1;
      v500 = sub_297811E3C(v499, "__read_only", &v839);
      v838 = 1;
      v501 = sub_297812160(v500, "read_only", &v838);
      v837 = 1;
      v502 = sub_2978121D4(v501, "__write_only", &v837);
      v836 = 1;
      v503 = sub_297810340(v502, "write_only", &v836);
      v835 = 1;
      v504 = sub_2978121D4(v503, "__read_write", &v835);
      v834 = 1;
      v505 = sub_297810340(v504, "read_write", &v834);
      v833 = 1;
      v506 = sub_297810578(v505, "__kernel", &v833);
      v832 = 1;
      v507 = sub_297810504(v506, "kernel", &v832);
      v831 = 1;
      v508 = sub_2978102CC(v507, "__local", &v831);
      v830 = 1;
      v509 = sub_2978103B4(v508, "local", &v830);
      v829 = 1;
      v510 = sub_297812160(v509, "__private", &v829);
      v828 = 1;
      v511 = sub_2978102CC(v510, "private", &v828);
      v827 = 1;
      v512 = sub_2978102CC(v511, "optnone", &v827);
      v826 = 1;
      v513 = sub_2978102CC(v512, "optnone", &v826);
      v825 = 1;
      v514 = sub_2978121D4(v513, "overloadable", &v825);
      v824 = 1;
      v515 = sub_297810578(v514, "override", &v824);
      v823 = 1;
      v516 = sub_2978285A4(v515, "ownership_holds", &v823);
      v822 = 1;
      v517 = sub_29782868C(v516, "ownership_returns", &v822);
      v821 = 1;
      v518 = sub_2978285A4(v517, "ownership_takes", &v821);
      v820 = 1;
      v519 = sub_297810504(v518, "packed", &v820);
      v819 = 1;
      v520 = sub_297810504(v519, "packed", &v819);
      v818 = 1;
      v521 = sub_2978285A4(v520, "param_typestate", &v818);
      v817 = 1;
      v522 = sub_297810504(v521, "pascal", &v817);
      v816 = 1;
      v523 = sub_297810578(v522, "__pascal", &v816);
      v815 = 1;
      v524 = sub_2978102CC(v523, "_pascal", &v815);
      v814 = 1;
      v525 = sub_297810428(v524, "pcs", &v814);
      v813 = 1;
      v526 = sub_297810428(v525, "pcs", &v813);
      v812 = 1;
      v527 = sub_297812160(v526, "pnaclcall", &v812);
      v811 = 1;
      v528 = sub_297828618(v527, "pt_guarded_by", &v811);
      v810 = 1;
      v529 = sub_297812248(v528, "pt_guarded_var", &v810);
      v809 = 1;
      v530 = sub_2978102CC(v529, "__ptr32", &v809);
      v808 = 1;
      v531 = sub_2978102CC(v530, "__ptr64", &v808);
      v807 = 1;
      v532 = sub_29781049C(v531, "pure", &v807);
      v806 = 1;
      v533 = sub_29781049C(v532, "pure", &v806);
      v805 = 1;
      v534 = sub_2978102CC(v533, "regparm", &v805);
      v804 = 1;
      v535 = sub_2978102CC(v534, "regparm", &v804);
      v803 = 1;
      v536 = sub_2978283B8(v535, "release_capability", &v803);
      v802 = 1;
      v537 = sub_2978283B8(v536, "release_capability", &v802);
      v801 = 1;
      v538 = sub_297828430(v537, "release_shared_capability", &v801);
      v800 = 1;
      v539 = sub_297828430(v538, "release_shared_capability", &v800);
      v799 = 1;
      v540 = sub_297828950(v539, "release_generic_capability", &v799);
      v798 = 1;
      v541 = sub_297828950(v540, "release_generic_capability", &v798);
      v797 = 1;
      v542 = sub_2978285A4(v541, "unlock_function", &v797);
      v796 = 1;
      v543 = sub_29782852C(v542, "reqd_work_group_size", &v796);
      v795 = 1;
      v544 = sub_2978288D8(v543, "requires_capability", &v795);
      v794 = 1;
      v545 = sub_2978288D8(v544, "requires_capability", &v794);
      v793 = 1;
      v546 = sub_297828860(v545, "exclusive_locks_required", &v793);
      v792 = 1;
      v547 = sub_297828950(v546, "requires_shared_capability", &v792);
      v791 = 1;
      v548 = sub_297828950(v547, "requires_shared_capability", &v791);
      v790 = 1;
      v549 = sub_2978287E8(v548, "shared_locks_required", &v790);
      v789 = 1;
      v550 = sub_297828A58(v549, "return_typestate", &v789);
      v788 = 1;
      v551 = sub_2978285A4(v550, "returns_nonnull", &v788);
      v787 = 1;
      v552 = sub_2978285A4(v551, "returns_nonnull", &v787);
      v786 = 1;
      v553 = sub_297828618(v552, "returns_twice", &v786);
      v785 = 1;
      v554 = sub_297828618(v553, "returns_twice", &v785);
      v784 = 1;
      v555 = sub_297810504(v554, "__sptr", &v784);
      v783 = 1;
      v556 = sub_2978285A4(v555, "scoped_lockable", &v783);
      v782 = 1;
      v557 = sub_2978102CC(v556, "section", &v782);
      v781 = 1;
      v558 = sub_2978102CC(v557, "section", &v781);
      v780 = 1;
      v559 = sub_297810578(v558, "allocate", &v780);
      v779 = 1;
      v560 = sub_297812160(v559, "selectany", &v779);
      v778 = 1;
      v561 = sub_297810578(v560, "sentinel", &v778);
      v777 = 1;
      v562 = sub_297810578(v561, "sentinel", &v777);
      v776 = 1;
      v563 = sub_297828618(v562, "set_typestate", &v776);
      v775 = 1;
      v564 = sub_2978284B4(v563, "shared_trylock_function", &v775);
      v774 = 1;
      v565 = sub_2978102CC(v564, "stdcall", &v774);
      v773 = 1;
      v566 = sub_2978102CC(v565, "stdcall", &v773);
      v772 = 1;
      v567 = sub_297812160(v566, "__stdcall", &v772);
      v771 = 1;
      v568 = sub_297810578(v567, "_stdcall", &v771);
      v770 = 1;
      v569 = sub_297810578(v568, "sysv_abi", &v770);
      v769 = 1;
      v570 = sub_297810578(v569, "sysv_abi", &v769);
      v768 = 1;
      v571 = sub_297812160(v570, "tls_model", &v768);
      v767 = 1;
      v572 = sub_297812160(v571, "tls_model", &v767);
      v766 = 1;
      v573 = sub_297812248(v572, "test_typestate", &v766);
      v765 = 1;
      v574 = sub_297810578(v573, "thiscall", &v765);
      v764 = 1;
      v575 = sub_297810578(v574, "thiscall", &v764);
      v763 = 1;
      v576 = sub_297810340(v575, "__thiscall", &v763);
      v762 = 1;
      v577 = sub_297812160(v576, "_thiscall", &v762);
      v761 = 1;
      v578 = sub_297810504(v577, "thread", &v761);
      v760 = 1;
      v579 = sub_29782868C(v578, "transparent_union", &v760);
      v759 = 1;
      v580 = sub_29782868C(v579, "transparent_union", &v759);
      v758 = 1;
      v581 = sub_297828770(v580, "try_acquire_capability", &v758);
      v757 = 1;
      v582 = sub_297828770(v581, "try_acquire_capability", &v757);
      v756 = 1;
      v583 = sub_297828C20(v582, "try_acquire_shared_capability", &v756);
      v755 = 1;
      v584 = sub_297828C20(v583, "try_acquire_shared_capability", &v755);
      v754 = 1;
      v585 = sub_297812160(v584, "__nonnull", &v754);
      v753 = 1;
      v586 = sub_2978283B8(v585, "__null_unspecified", &v753);
      v752 = 1;
      v587 = sub_297810340(v586, "__nullable", &v752);
      v751 = 1;
      v588 = sub_2978287E8(v587, "type_tag_for_datatype", &v751);
      v750 = 1;
      v589 = sub_2978285A4(v588, "type_visibility", &v750);
      v749 = 1;
      v590 = sub_2978285A4(v589, "type_visibility", &v749);
      v748 = 1;
      v591 = sub_297810504(v590, "__uptr", &v748);
      v747 = 1;
      v592 = sub_297811E3C(v591, "__unaligned", &v747);
      v746 = 1;
      v593 = sub_297811E3C(v592, "unavailable", &v746);
      v745 = 1;
      v594 = sub_297810504(v593, "unused", &v745);
      v744 = 1;
      v595 = sub_297810504(v594, "unused", &v744);
      v743 = 1;
      v596 = sub_29781049C(v595, "used", &v743);
      v742 = 1;
      v597 = sub_29781049C(v596, "used", &v742);
      v741 = 1;
      v598 = sub_29781049C(v597, "uuid", &v741);
      v740 = 1;
      v599 = sub_297812160(v598, "vecreturn", &v740);
      v739 = 1;
      v600 = sub_297828618(v599, "vec_type_hint", &v739);
      v738 = 1;
      v601 = sub_297811E3C(v600, "vector_size", &v738);
      v737 = 1;
      v602 = sub_297811E3C(v601, "vector_size", &v737);
      v736 = 1;
      v603 = sub_297810340(v602, "visibility", &v736);
      v735 = 1;
      v604 = sub_297810340(v603, "visibility", &v735);
      v734 = 1;
      v605 = sub_297811E3C(v604, "warn_unused", &v734);
      v733 = 1;
      v606 = sub_2978283B8(v605, "warn_unused_result", &v733);
      v732 = 1;
      v607 = sub_2978283B8(v606, "warn_unused_result", &v732);
      v731 = 1;
      v608 = sub_2978283B8(v607, "warn_unused_result", &v731);
      v730 = 1;
      v609 = sub_29781049C(v608, "weak", &v730);
      v729 = 1;
      v610 = sub_29781049C(v609, "weak", &v729);
      v728 = 1;
      v611 = sub_297811E3C(v610, "weak_import", &v728);
      v727 = 1;
      v612 = sub_2978102CC(v611, "weakref", &v727);
      v726 = 1;
      v613 = sub_2978102CC(v612, "weakref", &v726);
      v725 = 1;
      v614 = sub_2978103B4(v613, "__w64", &v725);
      v724 = 1;
      v615 = sub_29782852C(v614, "work_group_size_hint", &v724);
      v723 = sub_297811C4C(a4) == 24;
      v23 = sub_2978284B4(v615, "force_align_arg_pointer", &v723);
      v722 = 0;
      v24 = &v722;
    }

    return sub_297828CA4(v23, v24);
  }

  if (a1 == 2)
  {
    v261 = sub_2978102C8(&v1043, v1045, v1046);
    v1042 = 1;
    v262 = sub_2978103B4(v261, "align", &v1042);
    v263 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
    v1041 = v263;
    v264 = sub_297812160(v262, "dllexport", &v1041);
    v265 = (sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12;
    v1040 = v265;
    v266 = sub_297812160(v264, "dllimport", &v1040);
    v1039 = 1;
    v267 = sub_297810340(v266, "deprecated", &v1039);
    v1038 = 1;
    v268 = sub_297810578(v267, "property", &v1038);
    v1037 = 1;
    v269 = sub_2978103B4(v268, "naked", &v1037);
    v1036 = 1;
    v270 = sub_297810578(v269, "noinline", &v1036);
    v1035 = 1;
    v271 = sub_297810578(v270, "noreturn", &v1035);
    v1034 = 1;
    v272 = sub_2978102CC(v271, "nothrow", &v1034);
    v1033 = 1;
    v273 = sub_297810578(v272, "allocate", &v1033);
    v1032 = 1;
    v274 = sub_297812160(v273, "selectany", &v1032);
    v1031 = 1;
    v275 = sub_297810504(v274, "thread", &v1031);
    v1030 = 1;
    v23 = sub_29781049C(v275, "uuid", &v1030);
    v1029 = 0;
    v24 = &v1029;
    return sub_297828CA4(v23, v24);
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      return result;
    }

    v13 = sub_2978102C8(&v1043, v1045, v1046);
    v1042 = 1;
    v14 = sub_297810578(v13, "init_seg", &v1042);
    v1041 = 1;
    v15 = sub_29781049C(v14, "loop", &v1041);
    v1040 = 1;
    v16 = sub_297810504(v15, "unroll", &v1040);
    v1039 = 1;
    v17 = sub_297810578(v16, "nounroll", &v1039);
    v1038 = 1;
    v18 = sub_29781049C(v17, "loop", &v1038);
    v1037 = 1;
    v19 = sub_297810504(v18, "unroll", &v1037);
    v1036 = 1;
    v20 = sub_297810578(v19, "nounroll", &v1036);
    v1035 = 1;
    v21 = sub_29781049C(v20, "loop", &v1035);
    v1034 = 1;
    v22 = sub_297810504(v21, "unroll", &v1034);
    v1033 = 1;
    v23 = sub_297810578(v22, "nounroll", &v1033);
    v1032 = 0;
    v24 = &v1032;
    return sub_297828CA4(v23, v24);
  }

  if (!a2 || (v276 = sub_297828314(a2), v278 = v277, sub_2977FB7B4(&v1043, &byte_2978FC3E5), sub_297804D28(v276, v278, v1043, v1044)))
  {
    v279 = sub_2978102C8(&v1043, v1045, v1046);
    v1042 = (*a5 & 0x80) != 0;
    v280 = sub_297810578(v279, "noreturn", &v1042);
    v1041 = (*a5 & 0x80) != 0;
    v281 = sub_2978283B8(v280, "carries_dependency", &v1041);
    v1040 = (*a5 & 0x80) != 0;
    v282 = sub_297810340(v281, "deprecated", &v1040);
    v1039 = (*a5 & 0x80) != 0;
    v23 = sub_297810340(v282, "deprecated", &v1039);
    v1038 = 0;
    v24 = &v1038;
    return sub_297828CA4(v23, v24);
  }

  v616 = sub_297828314(a2);
  v618 = v617;
  sub_2977FB7B4(&v1043, "clang");
  if (sub_297804D28(v616, v618, v1043, v1044))
  {
    v619 = sub_2978102C8(&v1043, v1045, v1046);
    v1042 = (*a5 & 0x80) != 0;
    v620 = sub_2978283B8(v619, "acquire_capability", &v1042);
    v1041 = (*a5 & 0x80) != 0;
    v621 = sub_297828430(v620, "acquire_shared_capability", &v1041);
    v1040 = (*a5 & 0x80) != 0;
    v622 = sub_2978283B8(v621, "acquire_capability", &v1040);
    v1039 = (*a5 & 0x80) != 0;
    v623 = sub_297828430(v622, "acquire_shared_capability", &v1039);
    v1038 = (*a5 & 0x80) != 0;
    v624 = sub_29782868C(v623, "assert_capability", &v1038);
    v1037 = (*a5 & 0x80) != 0;
    v625 = sub_297828860(v624, "assert_shared_capability", &v1037);
    v1036 = (*a5 & 0x80) != 0;
    v626 = sub_29782868C(v625, "assert_capability", &v1036);
    v1035 = (*a5 & 0x80) != 0;
    v627 = sub_297828860(v626, "assert_shared_capability", &v1035);
    v1034 = (*a5 & 0x80) != 0;
    v628 = sub_297810340(v627, "capability", &v1034);
    v1033 = (*a5 & 0x80) != 0;
    v629 = sub_29782868C(v628, "shared_capability", &v1033);
    v1032 = (*a5 & 0x80) != 0;
    v630 = sub_297810340(v629, "capability", &v1032);
    v1031 = (*a5 & 0x80) != 0;
    v631 = sub_29782868C(v630, "shared_capability", &v1031);
    v1030 = (*a5 & 0x80) != 0;
    v632 = sub_297811E3C(v631, "fallthrough", &v1030);
    v1029 = (*a5 & 0x80) != 0;
    v633 = sub_297811E3C(v632, "noduplicate", &v1029);
    v1028 = (*a5 & 0x80) != 0;
    v634 = sub_2978102CC(v633, "optnone", &v1028);
    v1027 = (*a5 & 0x80) != 0;
    v635 = sub_2978283B8(v634, "release_capability", &v1027);
    v1026 = (*a5 & 0x80) != 0;
    v636 = sub_297828430(v635, "release_shared_capability", &v1026);
    v1025 = (*a5 & 0x80) != 0;
    v637 = sub_297828950(v636, "release_generic_capability", &v1025);
    v1024 = (*a5 & 0x80) != 0;
    v638 = sub_2978283B8(v637, "release_capability", &v1024);
    v1023 = (*a5 & 0x80) != 0;
    v639 = sub_297828430(v638, "release_shared_capability", &v1023);
    v1022 = (*a5 & 0x80) != 0;
    v640 = sub_297828950(v639, "release_generic_capability", &v1022);
    v1021 = (*a5 & 0x80) != 0;
    v641 = sub_2978283B8(v640, "release_capability", &v1021);
    v1020 = (*a5 & 0x80) != 0;
    v642 = sub_297828430(v641, "release_shared_capability", &v1020);
    v1019 = (*a5 & 0x80) != 0;
    v643 = sub_297828950(v642, "release_generic_capability", &v1019);
    v1018 = (*a5 & 0x80) != 0;
    v644 = sub_2978288D8(v643, "requires_capability", &v1018);
    v1017 = (*a5 & 0x80) != 0;
    v645 = sub_297828950(v644, "requires_shared_capability", &v1017);
    v1016 = (*a5 & 0x80) != 0;
    v646 = sub_2978288D8(v645, "requires_capability", &v1016);
    v1015 = (*a5 & 0x80) != 0;
    v647 = sub_297828950(v646, "requires_shared_capability", &v1015);
    v1014 = (*a5 & 0x80) != 0;
    v648 = sub_297828770(v647, "try_acquire_capability", &v1014);
    v1013 = (*a5 & 0x80) != 0;
    v649 = sub_297828C20(v648, "try_acquire_shared_capability", &v1013);
    v1012 = (*a5 & 0x80) != 0;
    v650 = sub_297828770(v649, "try_acquire_capability", &v1012);
    v1011 = (*a5 & 0x80) != 0;
    v651 = sub_297828C20(v650, "try_acquire_shared_capability", &v1011);
    v1010 = (*a5 & 0x80) != 0;
    v652 = sub_2978285A4(v651, "type_visibility", &v1010);
    v1009 = (*a5 & 0x80) != 0;
    v23 = sub_2978283B8(v652, "warn_unused_result", &v1009);
    v1008 = 0;
    v24 = &v1008;
    return sub_297828CA4(v23, v24);
  }

  v653 = sub_297828314(a2);
  v655 = v654;
  sub_2977FB7B4(&v1043, "gnu");
  result = sub_297804D28(v653, v655, v1043, v1044);
  if (result)
  {
    v656 = sub_2978102C8(&v1043, v1045, v1046);
    v1042 = (*a5 & 0x80) != 0;
    v657 = sub_2978103B4(v656, "alias", &v1042);
    v1041 = (*a5 & 0x80) != 0;
    v658 = sub_2978102CC(v657, "aligned", &v1041);
    v1040 = (*a5 & 0x80) != 0;
    v659 = sub_297828618(v658, "always_inline", &v1040);
    v1039 = (*a5 & 0x80) != 0;
    v660 = sub_2978103B4(v659, "cdecl", &v1039);
    v1038 = (*a5 & 0x80) != 0;
    v661 = sub_2978102CC(v660, "cleanup", &v1038);
    v1037 = (*a5 & 0x80) != 0;
    v662 = sub_29781049C(v661, "cold", &v1037);
    v1036 = (*a5 & 0x80) != 0;
    v663 = sub_297810504(v662, "common", &v1036);
    v1035 = (*a5 & 0x80) != 0;
    v664 = sub_2978103B4(v663, "const", &v1035);
    v1034 = (*a5 & 0x80) != 0;
    v665 = sub_2978102CC(v664, "__const", &v1034);
    v1033 = (*a5 & 0x80) != 0;
    v666 = sub_2978103B4(v665, "const", &v1033);
    v1032 = (*a5 & 0x80) != 0;
    v667 = sub_2978102CC(v666, "__const", &v1032);
    v1031 = (*a5 & 0x80) != 0;
    v668 = sub_297811E3C(v667, "constructor", &v1031);
    if ((sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12)
    {
      v669 = *a5 >> 7;
    }

    else
    {
      LOBYTE(v669) = 0;
    }

    v1030 = v669;
    v670 = sub_297812160(v668, "dllexport", &v1030);
    if ((sub_297811C4C(a4) == 24 || sub_297811C4C(a4) == 25 || sub_297811C4C(a4) == 1 || sub_297811C4C(a4) == 22) && sub_297811C44(a4) == 12)
    {
      v671 = *a5 >> 7;
    }

    else
    {
      LOBYTE(v671) = 0;
    }

    v1029 = v671;
    v672 = sub_297812160(v670, "dllimport", &v1029);
    v1028 = (*a5 & 0x80) != 0;
    v673 = sub_297810340(v672, "deprecated", &v1028);
    v1027 = (*a5 & 0x80) != 0;
    v674 = sub_297810340(v673, "destructor", &v1027);
    v1026 = (*a5 & 0x80) != 0;
    v675 = sub_297810578(v674, "fastcall", &v1026);
    v1025 = (*a5 & 0x80) != 0;
    v676 = sub_2978102CC(v675, "flatten", &v1025);
    v1024 = (*a5 & 0x80) != 0;
    v677 = sub_297810504(v676, "format", &v1024);
    v1023 = (*a5 & 0x80) != 0;
    v678 = sub_297810340(v677, "format_arg", &v1023);
    v1022 = (*a5 & 0x80) != 0;
    v679 = sub_297810340(v678, "gnu_inline", &v1022);
    v1021 = (*a5 & 0x80) != 0;
    v680 = sub_297810428(v679, "hot", &v1021);
    v1020 = (*a5 & 0x80) != 0;
    v681 = sub_297810504(v680, "ms_abi", &v1020);
    v1019 = (*a5 & 0x80) != 0;
    v682 = sub_297810504(v681, "malloc", &v1019);
    v1018 = (*a5 & 0x80) != 0;
    v683 = sub_297812160(v682, "may_alias", &v1018);
    if (sub_297811C4C(a4) == 6 || sub_297811C4C(a4) == 7)
    {
      v684 = *a5 >> 7;
    }

    else
    {
      LOBYTE(v684) = 0;
    }

    v1017 = v684;
    v685 = sub_297810504(v683, "mips16", &v1017);
    v1016 = (*a5 & 0x80) != 0;
    v686 = sub_29781049C(v685, "mode", &v1016);
    v1015 = (*a5 & 0x80) != 0;
    v687 = sub_297812160(v686, "ms_struct", &v1015);
    v1014 = (*a5 & 0x80) != 0;
    v688 = sub_2978103B4(v687, "naked", &v1014);
    v1013 = (*a5 & 0x80) != 0;
    v689 = sub_297810578(v688, "nocommon", &v1013);
    v1012 = (*a5 & 0x80) != 0;
    v690 = sub_297810578(v689, "noescape", &v1012);
    v1011 = (*a5 & 0x80) != 0;
    v691 = sub_297810578(v690, "noinline", &v1011);
    v1010 = (*a5 & 0x80) != 0;
    v692 = sub_297828770(v691, "no_instrument_function", &v1010);
    if (sub_297811C4C(a4) == 6 || sub_297811C4C(a4) == 7)
    {
      v693 = *a5 >> 7;
    }

    else
    {
      LOBYTE(v693) = 0;
    }

    v1009 = v693;
    v694 = sub_297810578(v692, "nomips16", &v1009);
    v1008 = (*a5 & 0x80) != 0;
    v695 = sub_297810578(v694, "noreturn", &v1008);
    v1007 = (*a5 & 0x80) != 0;
    v696 = sub_297828950(v695, "no_address_safety_analysis", &v1007);
    v1006 = (*a5 & 0x80) != 0;
    v697 = sub_2978288D8(v696, "no_sanitize_address", &v1006);
    v1005 = (*a5 & 0x80) != 0;
    v698 = sub_297828950(v697, "no_address_safety_analysis", &v1005);
    v1004 = (*a5 & 0x80) != 0;
    v699 = sub_2978288D8(v698, "no_sanitize_address", &v1004);
    v1003 = (*a5 & 0x80) != 0;
    v700 = sub_297812248(v699, "no_split_stack", &v1003);
    v1002 = (*a5 & 0x80) != 0;
    v701 = sub_2978102CC(v700, "nothrow", &v1002);
    v1001 = (*a5 & 0x80) != 0;
    v702 = sub_2978102CC(v701, "nonnull", &v1001);
    v1000 = (*a5 & 0x80) != 0;
    v703 = sub_297810504(v702, "packed", &v1000);
    v999 = (*a5 & 0x80) != 0;
    v704 = sub_297810428(v703, "pcs", &v999);
    v998 = (*a5 & 0x80) != 0;
    v705 = sub_29781049C(v704, "pure", &v998);
    v997 = (*a5 & 0x80) != 0;
    v706 = sub_2978102CC(v705, "regparm", &v997);
    v996 = (*a5 & 0x80) != 0;
    v707 = sub_2978285A4(v706, "returns_nonnull", &v996);
    v995 = (*a5 & 0x80) != 0;
    v708 = sub_297828618(v707, "returns_twice", &v995);
    v994 = (*a5 & 0x80) != 0;
    v709 = sub_2978102CC(v708, "section", &v994);
    v993 = (*a5 & 0x80) != 0;
    v710 = sub_297810578(v709, "sentinel", &v993);
    v992 = (*a5 & 0x80) != 0;
    v711 = sub_2978102CC(v710, "stdcall", &v992);
    v991 = (*a5 & 0x80) != 0;
    v712 = sub_297810578(v711, "sysv_abi", &v991);
    v990 = (*a5 & 0x80) != 0;
    v713 = sub_297812160(v712, "tls_model", &v990);
    v989 = (*a5 & 0x80) != 0;
    v714 = sub_297810578(v713, "thiscall", &v989);
    v988 = (*a5 & 0x80) != 0;
    v715 = sub_29782868C(v714, "transparent_union", &v988);
    v987 = (*a5 & 0x80) != 0;
    v716 = sub_297810504(v715, "unused", &v987);
    v986 = (*a5 & 0x80) != 0;
    v717 = sub_29781049C(v716, "used", &v986);
    v985 = (*a5 & 0x80) != 0;
    v718 = sub_297811E3C(v717, "vector_size", &v985);
    v984 = (*a5 & 0x80) != 0;
    v719 = sub_297810340(v718, "visibility", &v984);
    v983 = (*a5 & 0x80) != 0;
    v720 = sub_2978283B8(v719, "warn_unused_result", &v983);
    v982 = (*a5 & 0x80) != 0;
    v721 = sub_29781049C(v720, "weak", &v982);
    v981 = (*a5 & 0x80) != 0;
    v23 = sub_2978102CC(v721, "weakref", &v981);
    v980 = 0;
    v24 = &v980;
    return sub_297828CA4(v23, v24);
  }

  return result;
}