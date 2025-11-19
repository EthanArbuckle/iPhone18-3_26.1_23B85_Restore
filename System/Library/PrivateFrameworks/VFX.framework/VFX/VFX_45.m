unsigned int *sub_1AF480AAC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *result = 0;
        *result = a2 - 0x7FFFFFFF;
      }

      else
      {
        *result = a2;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1AF480CB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF480D5C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((v6 + 7 + ((v6 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = ~v7;
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v17 = (a2 + v8) & v14;
    v15(((v3 + v8) & v14), v17, v4);
    v18 = ((v9 + ((v3 + v8) & v14)) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v9 + v17) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    *((v18 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 19) & 0xFFFFFFFFFFFFFFF8);
    swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t sub_1AF480EC0(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF480F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1AF481040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v12[1] = v14;
  v15 = ((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t sub_1AF481134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF481204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  swift_unknownObjectRelease();
  v12[1] = v14;
  v15 = ((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t sub_1AF4812F0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    if ((v20 + 1) >= 2)
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

unsigned int *sub_1AF481454(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((((v12 + v11) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v23 = ((v12 + ((result + v10) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v23 = 0;
          v23[1] = 0;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v23 = a2;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t sub_1AF48165C()
{
  result = sub_1AFDFDD58();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1AF481700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v8 + v7;
  if (v7 <= 7u && (v7 & 0x100000) == 0 && ((((-18 - v7) | v7) - (v8 + v7)) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = ~v7;
    v14 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v14;
    *(a1 + 16) = *(a2 + 16);
    v15 = ((a1 + v7 + 17) & v13);
    v16 = ((a2 + v7 + 17) & v13);
    v17 = *(v5 + 48);

    if (v17(v16, 1, v4))
    {
      memcpy(v15, v16, v8);
    }

    else
    {
      (*(v6 + 16))(v15, v16, v4);
      (*(v6 + 56))(v15, 0, 1, v4);
    }

    v18 = &v15[v9];
    v19 = &v16[v9];
    if (v17((v19 & v13), 1, v4))
    {
      memcpy((v18 & v13), (v19 & v13), v8);
    }

    else
    {
      (*(v6 + 16))(v18 & v13, v19 & v13, v4);
      (*(v6 + 56))(v18 & v13, 0, 1, v4);
    }
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = v12 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16));
  }

  return a1;
}

uint64_t sub_1AF481914(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v13 = *(v4 - 8);
  v5 = *(v13 + 80);
  v6 = *(v13 + 48);
  v7 = ~v5;
  v8 = (a1 + v5 + 17) & ~v5;
  if (!v6(v8, 1, v4))
  {
    (*(v13 + 8))(v8, v4);
  }

  v9 = *(v13 + 64);
  if (*(v13 + 84))
  {
    v10 = v8 + v5 + v9;
  }

  else
  {
    v10 = v8 + v5 + v9 + 1;
  }

  result = (v6)(v10 & v7, 1, v4);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & v7, v4);
  }

  return result;
}

uint64_t sub_1AF481A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((v7 + 17 + a1) & ~v7);
  v10 = ((v7 + 17 + a2) & ~v7);
  v11 = *(v6 + 48);

  v19 = v11;
  if (v11(v10, 1, v5))
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
    if (v12)
    {
      v14 = *(v6 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v6 + 16))(v9, v10, v5);
    (*(v6 + 56))(v9, 0, 1, v5);
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = &v9[v7 + v15];
  v17 = &v10[v7 + v15];
  if (v19(v17 & v8, 1, v5))
  {
    memcpy((v16 & v8), (v17 & v8), v15);
  }

  else
  {
    (*(v6 + 16))(v16 & v8, v17 & v8, v5);
    (*(v6 + 56))(v16 & v8, 0, 1, v5);
  }

  return a1;
}

uint64_t sub_1AF481C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v23 = ~v8;
  v9 = ((v8 + 17 + a1) & ~v8);
  v10 = ((v8 + 17 + a2) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = &v9[v8 + v17];
  v19 = &v10[v8 + v17];
  v20 = v11((v18 & v23), 1, v6);
  v21 = v11((v19 & v23), 1, v6);
  if (!v20)
  {
    if (!v21)
    {
      (*(v7 + 24))(v18 & v23, v19 & v23, v6);
      return a1;
    }

    (*(v7 + 8))(v18 & v23, v6);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy((v18 & v23), (v19 & v23), v17);
    return a1;
  }

  (*(v7 + 16))(v18 & v23, v19 & v23, v6);
  (*(v7 + 56))(v18 & v23, 0, 1, v6);
  return a1;
}

uint64_t sub_1AF481F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = ((v6 + 17 + a1) & ~v6);
  v9 = ((v6 + 17 + a2) & ~v6);
  v17 = *(v5 + 48);
  if (v17(v9, 1, v4))
  {
    v10 = *(v5 + 84);
    v11 = *(v5 + 64);
    if (v10)
    {
      v12 = *(v5 + 64);
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(v8, v9, v12);
  }

  else
  {
    (*(v5 + 32))(v8, v9, v4);
    (*(v5 + 56))(v8, 0, 1, v4);
    v10 = *(v5 + 84);
    v11 = *(v5 + 64);
  }

  if (v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = &v8[v6 + v13];
  v15 = &v9[v6 + v13];
  if (v17((v15 & v7), 1, v4))
  {
    memcpy((v14 & v7), (v15 & v7), v13);
  }

  else
  {
    (*(v5 + 32))(v14 & v7, v15 & v7, v4);
    (*(v5 + 56))(v14 & v7, 0, 1, v4);
  }

  return a1;
}

uint64_t sub_1AF4820E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v23 = ~v8;
  v9 = ((v8 + 17 + a1) & ~v8);
  v10 = ((v8 + 17 + a2) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = &v9[v8 + v17];
  v19 = &v10[v8 + v17];
  v20 = v11((v18 & v23), 1, v6);
  v21 = v11((v19 & v23), 1, v6);
  if (!v20)
  {
    if (!v21)
    {
      (*(v7 + 40))(v18 & v23, v19 & v23, v6);
      return a1;
    }

    (*(v7 + 8))(v18 & v23, v6);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy((v18 & v23), (v19 & v23), v17);
    return a1;
  }

  (*(v7 + 32))(v18 & v23, v19 & v23, v6);
  (*(v7 + 56))(v18 & v23, 0, 1, v6);
  return a1;
}

uint64_t sub_1AF482388(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = ((v9 + v8 + ((v8 + 17) & ~v8)) & ~v8) + v9;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 17) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1AF48255C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + v11 + ((v11 + 17) & ~v11)) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0x7FFFFFFE)
  {
    v21 = (&a1[v11 + 17] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 17] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

void *initializeBufferWithCopyOfBuffer for EasingFunction(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EasingFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 13))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 12);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EasingFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF48293C(uint64_t a1)
{
  if (*(a1 + 12) <= 6u)
  {
    return *(a1 + 12);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_1AF482954(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 12) = a2;
  return result;
}

unint64_t sub_1AF4829C4()
{
  result = qword_1EB6397C0;
  if (!qword_1EB6397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6397C0);
  }

  return result;
}

unint64_t sub_1AF482A4C()
{
  result = qword_1EB6397D8;
  if (!qword_1EB6397D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6397D8);
  }

  return result;
}

unint64_t sub_1AF482AC0()
{
  result = qword_1EB6397E0;
  if (!qword_1EB6397E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6397E0);
  }

  return result;
}

unint64_t sub_1AF482B18()
{
  result = qword_1EB633600;
  if (!qword_1EB633600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633600);
  }

  return result;
}

unint64_t sub_1AF482B70()
{
  result = qword_1EB633608;
  if (!qword_1EB633608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633608);
  }

  return result;
}

unint64_t sub_1AF482BFC()
{
  result = qword_1EB633830;
  if (!qword_1EB633830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633830);
  }

  return result;
}

uint64_t sub_1AF482C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v1, 0);
    v4 = 0;
    v2 = v37;
    v5 = 1 << *(v3 + 32);
    v6 = (v5 + 63) >> 6;
    v31 = v3 + 64;
    v7 = (v3 + 64);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9)
      {
        break;
      }

      v4 -= 64;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v5 = __clz(__rbit64(v8)) - v4;
LABEL_7:
    v10 = 0;
    v30 = v3 + 72;
    v32 = v1;
    do
    {
      v33 = *(v3 + 36);
      v13 = v3;
      v14 = (*(v3 + 48) + 16 * v5);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v3 + 56) + 8 * v5);
      v35 = 0;
      v36 = 0xE000000000000000;

      MEMORY[0x1B2718AE0](v15, v16);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      sub_1AF871824(*(v17 + 16), *(v17 + 32), v34);
      sub_1AF441150(v34, v34[3]);
      sub_1AFDFEDD8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);

      v18 = v35;
      v19 = v36;
      v37 = v2;
      v21 = *(v2 + 16);
      v20 = *(v2 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC05CE4(v20 > 1, v21 + 1, 1);
        v2 = v37;
      }

      *(v2 + 16) = v21 + 1;
      v22 = v2 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v23 = v5 >> 6;
      if ((*(v31 + 8 * (v5 >> 6)) & (-2 << v5)) != 0)
      {
        v11 = __clz(__rbit64(*(v31 + 8 * (v5 >> 6)) & (-2 << v5))) | v5 & 0xFFFFFFFFFFFFFFC0;
        v12 = v32;
        v3 = v13;
      }

      else
      {
        v3 = v13;
        v11 = 1 << *(v13 + 32);
        v24 = v23 << 6;
        v25 = v23 + 1;
        v26 = (v30 + 8 * v23);
        v12 = v32;
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1AF0FBAE8(v5, v33, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v5, v33, 0);
      }

LABEL_9:
      ++v10;
      v5 = v11;
    }

    while (v10 != v12);
  }

  return v2;
}

uint64_t sub_1AF482F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  sub_1AF488158(0, &qword_1EB639868, sub_1AF488104, &type metadata for Bindings.Value.EnumInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF488104();
  sub_1AFDFF3F8();
  v18 = 0;
  v11 = v15;
  sub_1AFDFE8B8();
  if (!v11)
  {
    v16 = v14;
    v17 = 1;
    sub_1AF488038(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF4881C0(&qword_1EB639870);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF483190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73657361436C6C61;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73657361436C6C61;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF483230()
{
  if (*v0)
  {
    return 0x73657361436C6C61;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AF483264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73657361436C6C61 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF483340(uint64_t a1)
{
  v2 = sub_1AF488104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF48337C(uint64_t a1)
{
  v2 = sub_1AF488104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF4833B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF4877A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1AF483408()
{
  sub_1AF871620();
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  sub_1AF487018(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_id);

  sub_1AF487074(*(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo), *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo + 8));
  return v0;
}

uint64_t sub_1AF483494()
{
  sub_1AF483408();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Bindings.Value()
{
  result = qword_1ED723870;
  if (!qword_1ED723870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF483540()
{
  sub_1AF483618();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AF483618()
{
  if (!qword_1ED72DF30)
  {
    sub_1AFDFC318();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72DF30);
    }
  }
}

uint64_t destroy for Bindings.Value.EnumInfo()
{
}

void *sub_1AF4836AC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for Bindings.Value.EnumInfo(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for Bindings.Value.EnumInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for Bindings.Value.EnumInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Bindings.Value.EnumInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Bindings()
{
}

uint64_t sub_1AF483870(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for Bindings(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for Bindings(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedBufferSlice(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedBufferSlice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF483A1C()
{
  result = qword_1EB6397E8;
  if (!qword_1EB6397E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6397E8);
  }

  return result;
}

char *sub_1AF483A70()
{
  v1 = v0;
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v42 - v17;
  sub_1AF871824(*(v0 + 16), *(v0 + 32), v56);
  v19 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic);
  v49 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic + 8);
  v50 = v19;
  v20 = *(v3 + 56);
  v20(v18, 1, 1, v2);
  v51 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility);
  v48 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min);
  v47 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min + 8);
  v46 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max);
  v45 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max + 8);
  v44 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step);
  v43 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step + 8);
  v21 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual + 8);
  v42 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual);
  v22 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo + 8);
  v54 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo);
  v55 = v21;
  v52 = *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo + 16);
  v53 = v22;
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtCV3VFX8Bindings5Value_id;
  v20(&v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_id], 1, 1, v2);
  sub_1AF487314(v18, v14);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {

    sub_1AF487F80(v54, v53);
    sub_1AF487018(v14);
    sub_1AFDFC308();
    v20(v10, 0, 1, v2);
    sub_1AF48710C(v10, &v23[v24]);
  }

  else
  {
    v25 = *(v3 + 32);
    v25(v6, v14, v2);

    sub_1AF487F80(v54, v53);
    sub_1AF487018(&v23[v24]);
    v25(&v23[v24], v6, v2);
    v20(&v23[v24], 0, 1, v2);
  }

  v26 = OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility;
  v27 = &v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic];
  v28 = &v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_min];
  v29 = &v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_max];
  v30 = &v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_step];
  v31 = &v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual];
  v32 = &v23[OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo];
  v33 = v49;
  *v27 = v50;
  *(v27 + 1) = v33;
  sub_1AF441150(v56, v56[3]);
  DynamicType = swift_getDynamicType();
  *(v23 + 4) = DynamicType;
  v23[v26] = v51;
  *v28 = v48;
  v28[8] = v47;
  *v29 = v46;
  v29[8] = v45;
  *v30 = v44;
  v30[8] = v43;
  v36 = v54;
  v35 = v55;
  *v31 = v42;
  *(v31 + 1) = v35;
  v37 = v52;
  v38 = v53;
  *v32 = v36;
  v32[1] = v38;
  v32[2] = v37;
  v39 = sub_1AF87136C(DynamicType);
  v40 = swift_slowAlloc();
  *(v23 + 2) = v40;
  *(v23 + 3) = &v40[v39];
  sub_1AF8713D0(v56, v40, DynamicType);
  sub_1AF487018(v18);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
  return v23;
}

char *sub_1AF483F18()
{
  v1 = sub_1AFDFC318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v41 - v16;
  sub_1AF871824(*(v0 + 16), *(v0 + 32), v55);
  v18 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic);
  v44 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic + 8);
  v45 = v18;
  sub_1AF487314(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_id, v17);
  v50 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility);
  v49 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min);
  v48 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min + 8);
  v47 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max);
  v46 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max + 8);
  v43 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step);
  v42 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step + 8);
  v19 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual + 8);
  v41 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual);
  v20 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo + 8);
  v53 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo);
  v54 = v19;
  v51 = *(v0 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo + 16);
  v52 = v20;
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtCV3VFX8Bindings5Value_id;
  v23 = *(v2 + 56);
  v23(&v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_id], 1, 1, v1);
  sub_1AF487314(v17, v13);
  if ((*(v2 + 48))(v13, 1, v1) == 1)
  {

    sub_1AF487F80(v53, v52);
    sub_1AF487018(v13);
    sub_1AFDFC308();
    v23(v9, 0, 1, v1);
    sub_1AF48710C(v9, &v21[v22]);
  }

  else
  {
    v24 = *(v2 + 32);
    v24(v5, v13, v1);

    sub_1AF487F80(v53, v52);
    sub_1AF487018(&v21[v22]);
    v24(&v21[v22], v5, v1);
    v23(&v21[v22], 0, 1, v1);
  }

  v25 = OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility;
  v26 = &v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic];
  v27 = &v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_min];
  v28 = &v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_max];
  v29 = &v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_step];
  v30 = &v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual];
  v31 = &v21[OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo];
  v32 = v44;
  *v26 = v45;
  *(v26 + 1) = v32;
  sub_1AF441150(v55, v55[3]);
  DynamicType = swift_getDynamicType();
  *(v21 + 4) = DynamicType;
  v21[v25] = v50;
  *v27 = v49;
  v27[8] = v48;
  *v28 = v47;
  v28[8] = v46;
  *v29 = v43;
  v29[8] = v42;
  v35 = v53;
  v34 = v54;
  *v30 = v41;
  *(v30 + 1) = v34;
  v36 = v51;
  v37 = v52;
  *v31 = v35;
  v31[1] = v37;
  v31[2] = v36;
  v38 = sub_1AF87136C(DynamicType);
  v39 = swift_slowAlloc();
  *(v21 + 2) = v39;
  *(v21 + 3) = &v39[v38];
  sub_1AF8713D0(v55, v39, DynamicType);
  sub_1AF487018(v17);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
  return v21;
}

uint64_t sub_1AF4843B0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x63696C6275507369;
    v6 = 0x696C696269736976;
    if (a1 != 8)
    {
      v6 = 0x6F666E496D756E65;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1885697139;
    if (a1 != 5)
    {
      v7 = 0x756E614D72657375;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x6369746E616D6573;
    v3 = 7235949;
    if (a1 != 3)
    {
      v3 = 7889261;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65756C6176;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AF4844D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AF4843B0(*a1);
  v5 = v4;
  if (v3 == sub_1AF4843B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF484558()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF4843B0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF4845BC()
{
  sub_1AF4843B0(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF484610()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF4843B0(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF484670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF487754();
  *a1 = result;
  return result;
}

uint64_t sub_1AF4846A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF4843B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF4846E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF487754();
  *a1 = result;
  return result;
}

uint64_t sub_1AF48471C(uint64_t a1)
{
  v2 = sub_1AF486FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF484758(uint64_t a1)
{
  v2 = sub_1AF486FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF484794(void *a1)
{
  v3 = v1;
  v118 = *v1;
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v108 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v106 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v102 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v111 = &v102 - v21;
  sub_1AF488158(0, &qword_1ED722F78, sub_1AF486FC4, &type metadata for Bindings.Value.CodingKeys, MEMORY[0x1E69E6F48]);
  v116 = v22;
  v114 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102 - v27;
  v29 = OBJC_IVAR____TtCV3VFX8Bindings5Value_id;
  v30 = sub_1AFDFC318();
  v112 = *(v30 - 8);
  v31 = *(v112 + 56);
  v121 = v29;
  v115 = v30;
  v113 = v31;
  (v31)(v1 + v29, 1, 1);
  v107 = OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility;
  *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility) = 0;
  v109 = OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic;
  *(v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic) = xmmword_1AFE22A20;
  v32 = (v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min);
  *v32 = 0;
  v105 = v32;
  *(v32 + 8) = 1;
  v33 = (v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max);
  *v33 = 0;
  v104 = v33;
  *(v33 + 8) = 1;
  v34 = (v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step);
  *v34 = 0;
  v103 = v34;
  *(v34 + 8) = 1;
  v35 = (v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual);
  *v35 = 0;
  v35[1] = 0;
  v120 = v35;
  v36 = (v1 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo);
  v36[1] = 0;
  v36[2] = 0;
  v119 = v36;
  *v36 = 0;
  v37 = a1[3];
  v38 = a1[4];
  sub_1AF441150(a1, v37);
  if (!sub_1AF69504C(2003, v37, v38))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (v2)
    {
      goto LABEL_7;
    }

    v117 = a1;
    sub_1AF441150(&v124, v126);
    v42 = sub_1AFDFEA68();
    v44 = v43;
    sub_1AF448018(&v124, v126);
    sub_1AF4870B8();
    sub_1AFDFEAD8();
    sub_1AF449D40(&v122, v127);
    if ((v44 & 1) != 0 || v42 < 2)
    {
      sub_1AFDFC308();
      v113(v8, 0, 1, v115);
      sub_1AF48710C(v8, v3 + v121);
    }

    else
    {
      a1 = v117;
      v50 = v117[3];
      v51 = v117[4];
      sub_1AF441150(v117, v50);
      LODWORD(v50) = *(sub_1AF6950A0(v50, v51) + 81);

      if (v50 != 1)
      {
        sub_1AFDFC308();
        v113(v8, 0, 1, v115);
        sub_1AF48710C(v8, v3 + v121);
        sub_1AF448018(&v124, v126);
        sub_1AF758470();
        goto LABEL_21;
      }

      sub_1AF448018(&v124, v126);
      sub_1AF486FC4();
      sub_1AFDFEA38();
      LOBYTE(v122) = 0;
      sub_1AF487420(&qword_1ED72DF38, MEMORY[0x1E69695A8]);
      v52 = v108;
      v53 = v115;
      sub_1AFDFE6E8();
      v69 = v112;
      v111 = *(v112 + 48);
      v70 = (v111)(v52, 1, v53);
      v71 = v52;
      v72 = v121;
      if (v70 == 1)
      {
        v73 = v71;
        sub_1AFDFC308();
        v74 = (v111)(v73, 1, v53);
        v75 = v106;
        if (v74 != 1)
        {
          sub_1AF487018(v108);
        }
      }

      else
      {
        v75 = v106;
        (*(v69 + 32))(v106, v71, v53);
      }

      v113(v75, 0, 1, v53);
      sub_1AF48710C(v75, v3 + v72);
      v128 = 2;
      sub_1AF487170();
      sub_1AFDFE768();
      *(v3 + v109) = v122;
      v76 = a1[3];
      v77 = a1[4];
      sub_1AF441150(a1, v76);
      if (sub_1AF69504C(2045, v76, v77))
      {
        LOBYTE(v122) = 7;
        v78 = sub_1AFDFE6A8();
        v79 = ((v78 != 2) ^ v78) & 1;
      }

      else
      {
        v128 = 8;
        sub_1AF4871C4();
        sub_1AFDFE768();
        v79 = v122;
      }

      *(v3 + v107) = v79;
      LOBYTE(v122) = 3;
      v80 = sub_1AFDFE6B8();
      v81 = v105;
      *v105 = v80;
      *(v81 + 8) = v82 & 1;
      LOBYTE(v122) = 4;
      v83 = sub_1AFDFE6B8();
      v84 = v104;
      *v104 = v83;
      *(v84 + 8) = v85 & 1;
      LOBYTE(v122) = 5;
      v86 = sub_1AFDFE6B8();
      v87 = v103;
      *v103 = v86;
      *(v87 + 8) = v88 & 1;
      LOBYTE(v122) = 6;
      v89 = sub_1AFDFE698();
      v90 = v120;
      *v120 = v89;
      v90[1] = v91;

      v128 = 9;
      sub_1AF487218();
      sub_1AFDFE6E8();
      (*(v114 + 8))(v110, v116);
      v98 = v123;
      v99 = v119;
      v100 = *v119;
      v101 = v119[1];
      *v119 = v122;
      v99[2] = v98;
      sub_1AF487074(v100, v101);
    }

    a1 = v117;
LABEL_21:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
LABEL_22:
    sub_1AF0D5A54(v127, &v124);
    sub_1AF441150(&v124, v126);
    DynamicType = swift_getDynamicType();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
    v3[4] = DynamicType;
    v67 = sub_1AF87136C(DynamicType);
    v68 = swift_slowAlloc();
    v3[2] = v68;
    v3[3] = &v68[v67];
    sub_1AF8713D0(v127, v68, DynamicType);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v127);
    goto LABEL_8;
  }

  v39 = a1[3];
  v117 = a1;
  sub_1AF441150(a1, v39);
  sub_1AF486FC4();
  sub_1AFDFF3B8();
  if (!v2)
  {
    v40 = v28;
    LOBYTE(v124) = 0;
    sub_1AF487420(&qword_1ED72DF38, MEMORY[0x1E69695A8]);
    v41 = v115;
    sub_1AFDFE6E8();
    v46 = v112;
    v47 = *(v112 + 48);
    if (v47(v18, 1, v41) == 1)
    {
      v48 = v111;
      sub_1AFDFC308();
      v49 = v48;
      if (v47(v18, 1, v41) != 1)
      {
        sub_1AF487018(v18);
      }
    }

    else
    {
      v49 = v111;
      (*(v46 + 32))(v111, v18, v41);
    }

    v113(v49, 0, 1, v41);
    sub_1AF48710C(v49, v3 + v121);
    LOBYTE(v122) = 1;
    sub_1AF4870B8();
    v54 = v116;
    sub_1AFDFE768();
    sub_1AF449D40(&v124, v127);
    LOBYTE(v122) = 2;
    sub_1AF487170();
    sub_1AFDFE768();
    a1 = v117;
    *(v3 + v109) = v124;
    LOBYTE(v124) = 7;
    v55 = sub_1AFDFE6A8();
    *(v3 + v107) = ((v55 != 2) ^ v55) & 1;
    LOBYTE(v124) = 3;
    v56 = sub_1AFDFE6B8();
    v57 = v105;
    *v105 = v56;
    *(v57 + 8) = v58 & 1;
    LOBYTE(v124) = 4;
    v59 = sub_1AFDFE6B8();
    v60 = v104;
    *v104 = v59;
    *(v60 + 8) = v61 & 1;
    LOBYTE(v124) = 5;
    v62 = sub_1AFDFE6B8();
    v63 = v103;
    *v103 = v62;
    *(v63 + 8) = v64 & 1;
    LOBYTE(v124) = 6;
    v65 = sub_1AFDFE698();
    v92 = v120;
    *v120 = v65;
    v92[1] = v93;

    LOBYTE(v122) = 9;
    sub_1AF487218();
    sub_1AFDFE6E8();
    (*(v114 + 8))(v40, v54);
    v94 = v125;
    v95 = v119;
    v96 = *v119;
    v97 = v119[1];
    *v119 = v124;
    v95[2] = v94;
    sub_1AF487074(v96, v97);
    goto LABEL_22;
  }

  a1 = v117;
LABEL_7:
  sub_1AF487018(v3 + v121);

  sub_1AF487074(*v119, v119[1]);
  swift_deallocPartialClassInstance();
LABEL_8:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t sub_1AF485678(void *a1)
{
  v2 = v1;
  sub_1AF483618();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF488158(0, &qword_1EB6397F0, sub_1AF486FC4, &type metadata for Bindings.Value.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v25 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF871824(*(v2 + 16), *(v2 + 32), &v27);
  sub_1AF448018(v29, v30);
  sub_1AF48726C();
  v14 = v26;
  sub_1AFDFEC38();
  if (v14)
  {
    sub_1AF4872C0(&v27);
  }

  else
  {
    v26 = v5;
    sub_1AF4872C0(&v27);
    v15 = a1[3];
    v16 = a1[4];
    sub_1AF441150(a1, v15);
    LODWORD(v15) = *(sub_1AF6950BC(v15, v16) + 81);

    if (v15 == 1)
    {
      sub_1AF448018(v29, v30);
      sub_1AF486FC4();
      sub_1AFDFEBC8();
      sub_1AF487314(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_id, v8);
      LOBYTE(v27) = 0;
      sub_1AF487378();
      sub_1AFDFE918();
      sub_1AF487018(v8);
      v27 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic);
      v31 = 2;
      sub_1AF487468();
      sub_1AFDFE918();
      v17 = v25;
      LOBYTE(v27) = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility);
      v31 = 8;
      sub_1AF4874BC();
      sub_1AFDFE918();
      v19 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min + 8);
      *&v27 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_min);
      BYTE8(v27) = v19;
      v31 = 3;
      v20 = MEMORY[0x1E69E63B0];
      sub_1AF488038(0, &qword_1EB639818, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      sub_1AF487510(&qword_1EB639820, &qword_1EB639818, v20);
      sub_1AFDFE918();
      v21 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max + 8);
      *&v27 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_max);
      BYTE8(v27) = v21;
      v31 = 4;
      sub_1AFDFE918();
      v22 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step + 8);
      *&v27 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_step);
      BYTE8(v27) = v22;
      v31 = 5;
      sub_1AFDFE918();
      v27 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual);
      v31 = 6;
      v23 = MEMORY[0x1E69E6158];
      sub_1AF488038(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      sub_1AF487510(&qword_1EB6442C0, &qword_1ED726CC0, v23);
      sub_1AFDFE918();
      v24 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo + 16);
      v27 = *(v2 + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo);
      v28 = v24;
      v31 = 9;
      sub_1AF488038(0, &qword_1EB639828, &type metadata for Bindings.Value.EnumInfo, MEMORY[0x1E69E6720]);
      sub_1AF487588();
      sub_1AFDFE918();
      (*(v17 + 8))(v13, v10);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
}

void *sub_1AF485C74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF484794(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF485CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1AF42D954(MEMORY[0x1E69E7CC0]);
  ObjectType = swift_getObjectType();
  v32 = a2;
  v30 = *(a2 + 32);
  v6 = v30(ObjectType, a2);
  v33 = v3;
  v7 = 1 << *(*v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*v3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = v34 + 72;
  if (v6)
  {
    while (v9)
    {
      v13 = v11;
      v14 = v34;
LABEL_10:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = (*(v14 + 48) + 16 * (v15 | (v13 << 6)));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_1AF483A70();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1AF8529A0(v19, v17, v18, isUniquelyReferenced_nonNull_native);
    }

    v14 = v34;
    while (1)
    {
      v13 = v11 + 1;
      if (v11 + 1 >= v10)
      {
        break;
      }

      v9 = *(v12 + 8 * v11++);
      if (v9)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }
  }

  else
  {
    while (v9)
    {
      v21 = v11;
      v22 = v34;
LABEL_18:
      v23 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v24 = (*(v22 + 48) + 16 * (v23 | (v21 << 6)));
      v25 = *v24;
      v26 = v24[1];

      v27 = sub_1AF483F18();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_1AF8529A0(v27, v25, v26, v28);
    }

    v22 = v34;
    while (1)
    {
      v21 = v11 + 1;
      if (v11 + 1 >= v10)
      {
        break;
      }

      v9 = *(v12 + 8 * v11++);
      if (v9)
      {
        v11 = v21;
        goto LABEL_18;
      }
    }
  }

  *v33 = v5;
  *(v33 + 8) = 1;
  result = v30(ObjectType, v32);
  if (result)
  {

    return sub_1AF485F8C();
  }

  return result;
}

uint64_t sub_1AF485F8C()
{
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v61 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0[2] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v0[2];
    sub_1AF487FC4(0, &unk_1EB6331F0, type metadata accessor for PropertyDescription, MEMORY[0x1E69E6DC8]);
    sub_1AFDFE4B8();
    v0[2] = v77[0];
  }

  v4 = *v0;
  v5 = 1 << *(*v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v0 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v60 = v8;
  v62 = v0;
  while (v7)
  {
LABEL_13:
    v25 = __clz(__rbit64(v7)) | (v9 << 6);
    v26 = (v4[6] + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v4[7] + 8 * v25);
    v30 = v61;
    sub_1AF487314(v29 + OBJC_IVAR____TtCV3VFX8Bindings5Value_id, v61);
    v31 = sub_1AFDFC318();
    v32 = *(v31 - 8);
    (*(v32 + 48))(v30, 1, v31);

    v33 = sub_1AFDFC2B8();
    v73 = v34;
    v74 = v33;
    (*(v32 + 8))(v30, v31);
    if (v4[2])
    {
      v35 = sub_1AF419914(v27, v28);
      if (v36)
      {
        v72 = *(*(v4[7] + 8 * v35) + OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility);
        if (!v4[2])
        {
          goto LABEL_21;
        }
      }

      else
      {
        v72 = 0;
        if (!v4[2])
        {
          goto LABEL_21;
        }
      }

      v37 = sub_1AF419914(v27, v28);
      if (v38)
      {
        v39 = (*(v4[7] + 8 * v37) + OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo);
        v40 = *v39;
        v41 = v39[2];
        v70 = v39[1];
        v71 = v40;
        v69 = v41;
        sub_1AF487F80(v40, v70);
        goto LABEL_22;
      }
    }

    else
    {
      v72 = 0;
    }

LABEL_21:
    v70 = 0;
    v71 = 0;
    v69 = 0;
LABEL_22:
    v7 &= v7 - 1;
    v42 = *(v29 + 32);
    v43 = *(v29 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic + 8);
    v67 = *(v29 + OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic);
    v68 = v42;
    v65 = v29;
    v66 = v43;
    v44 = v4[2];
    v75 = v28;
    v76 = v27;
    if (v44)
    {
      v45 = sub_1AF419914(v27, v28);
      if (v46)
      {
        v47 = *(v4[7] + 8 * v45) + OBJC_IVAR____TtCV3VFX8Bindings5Value_min;
        v48 = *v47;
        v49 = *(v47 + 8);
      }

      else
      {
        v48 = 0;
        v49 = 1;
      }

      v63 = v49;
      if (!v4[2])
      {
        v10 = 0;
        v11 = 0;
        v64 = 0;
        v12 = 0;
        v13 = 1;
        v14 = 1;
        goto LABEL_7;
      }

      v50 = sub_1AF419914(v27, v28);
      if (v51)
      {
        v52 = *(v4[7] + 8 * v50) + OBJC_IVAR____TtCV3VFX8Bindings5Value_max;
        v11 = *v52;
        v14 = *(v52 + 8);
        if (v4[2])
        {
          goto LABEL_30;
        }

LABEL_34:
        v10 = 0;
        v64 = 0;
        v12 = 0;
        v13 = 1;
LABEL_7:
        v15 = v63;
        goto LABEL_8;
      }

      v11 = 0;
      v14 = 1;
      if (!v4[2])
      {
        goto LABEL_34;
      }

LABEL_30:
      v53 = sub_1AF419914(v27, v28);
      if (v54)
      {
        v55 = *(v4[7] + 8 * v53) + OBJC_IVAR____TtCV3VFX8Bindings5Value_step;
        v10 = *v55;
        v13 = *(v55 + 8);
        if (!v4[2])
        {
          goto LABEL_38;
        }

LABEL_36:
        v56 = sub_1AF419914(v76, v75);
        if (v57)
        {
          v58 = (*(v4[7] + 8 * v56) + OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual);
          v12 = v58[1];
          v64 = *v58;

          goto LABEL_7;
        }
      }

      else
      {
        v10 = 0;
        v13 = 1;
        if (v4[2])
        {
          goto LABEL_36;
        }
      }

LABEL_38:
      v64 = 0;
      v12 = 0;
      goto LABEL_7;
    }

    v10 = 0;
    v48 = 0;
    v11 = 0;
    v64 = 0;
    v12 = 0;
    v13 = 1;
    v15 = 1;
    v14 = 1;
LABEL_8:
    v77[3] = &type metadata for BindingPropertyDescription.BindingInfo;
    v16 = swift_allocObject();
    v77[0] = v16;
    v17 = v73;
    *(v16 + 16) = v74;
    *(v16 + 24) = v17;
    *(v16 + 32) = v72;
    v18 = v70;
    *(v16 + 40) = v71;
    *(v16 + 48) = v18;
    *(v16 + 56) = v69;
    v19 = sub_1AF493834(v68, v77, v76, v75, v48, v15, v11, v14, v10, v13, v67, v66, v64, v12, 0, &type metadata for Bindings, v68, &off_1F2511890);

    sub_1AF44CB60(v77);
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);

    v22 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v22[2];
    sub_1AF851750(v19, v20, v21, isUniquelyReferenced_nonNull_native);

    v22[2] = v77[0];
    v8 = v60;
  }

  while (1)
  {
    v24 = v9 + 1;
    if (v9 + 1 >= v8)
    {
    }

    v7 = v4[v9++ + 9];
    if (v7)
    {
      v9 = v24;
      goto LABEL_13;
    }
  }
}

_OWORD *sub_1AF486514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v44 - v23;
  if (*(a3 + 16) && (v25 = sub_1AF419914(a1, a2), (v26 & 1) != 0))
  {
    v27 = *(*(a3 + 56) + 8 * v25);
    sub_1AF871824(*(v27 + 16), *(v27 + 32), &v46);
    return sub_1AF449D40(&v46, a4);
  }

  else
  {
    v45 = a4;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v46 = 0xD000000000000029;
    *(&v46 + 1) = 0x80000001AFF29990;
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v29 = v46;
    v30 = sub_1AFDFDA08();
    *&v46 = 1;
    sub_1AF75A4B4(v30, v29, *(&v29 + 1), &v46);

    v47 = MEMORY[0x1E69E6530];
    *&v46 = 0;
    v31 = *(v9 + 56);
    v31(v24, 1, 1, v8);
    type metadata accessor for Bindings.Value();
    v32 = swift_allocObject();
    v33 = OBJC_IVAR____TtCV3VFX8Bindings5Value_id;
    v31(&v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_id], 1, 1, v8);
    sub_1AF487314(v24, v20);
    if ((*(v9 + 48))(v20, 1, v8) == 1)
    {
      sub_1AF487018(v20);
      sub_1AFDFC308();
      v31(v16, 0, 1, v8);
      sub_1AF48710C(v16, &v32[v33]);
    }

    else
    {
      v34 = *(v9 + 32);
      v34(v12, v20, v8);
      sub_1AF487018(&v32[v33]);
      v34(&v32[v33], v12, v8);
      v31(&v32[v33], 0, 1, v8);
    }

    v35 = OBJC_IVAR____TtCV3VFX8Bindings5Value_visibility;
    v36 = &v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_min];
    v37 = &v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_max];
    v38 = &v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_step];
    v39 = &v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_userManual];
    v40 = &v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_enumInfo];
    *&v32[OBJC_IVAR____TtCV3VFX8Bindings5Value_semantic] = xmmword_1AFE22A20;
    sub_1AF441150(&v46, v47);
    DynamicType = swift_getDynamicType();
    *(v32 + 4) = DynamicType;
    v32[v35] = 0;
    *v36 = 0;
    v36[8] = 1;
    *v37 = 0;
    v37[8] = 1;
    *v38 = 0;
    v38[8] = 1;
    *v39 = 0;
    *(v39 + 1) = 0;
    *(v40 + 1) = 0;
    *(v40 + 2) = 0;
    *v40 = 0;
    v42 = sub_1AF87136C(DynamicType);
    v43 = swift_slowAlloc();
    *(v32 + 2) = v43;
    *(v32 + 3) = &v43[v42];
    sub_1AF8713D0(&v46, v43, DynamicType);
    sub_1AF487018(v24);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
    sub_1AF871824(v43, DynamicType, v45);
    swift_setDeallocating();
    sub_1AF483408();
    return swift_deallocClassInstance();
  }
}

uint64_t sub_1AF4869F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if (*(v8 + 16) && (v9 = sub_1AF419914(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    sub_1AF441150(a1, a1[3]);
    if (swift_getDynamicType() == *(v11 + 32))
    {

      sub_1AF0D5A54(a1, v16);
      sub_1AF871630(v16, *(v11 + 16), *(v11 + 32));

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
      *(v4 + 8) = 1;
    }

    else
    {

      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF29970);
      v14 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v14);

      MEMORY[0x1B2718AE0](0x2079656B20746120, 0xE900000000000022);
      MEMORY[0x1B2718AE0](a2, a3);
      MEMORY[0x1B2718AE0](0x70797420666F2022, 0xEA00000000002065);
      v15 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v15);

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v16[1] = 0x80000001AFF29920;
    MEMORY[0x1B2718AE0](a2, a3);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v13 = sub_1AFDFDA08();
    v16[0] = 1;
    sub_1AF75A4B4(v13, 0xD000000000000029, 0x80000001AFF29920, v16);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return result;
}

void *sub_1AF486CD0@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42D954(MEMORY[0x1E69E7CC0]);
  result = sub_1AF42D96C(v2);
  *a1 = v3;
  *(a1 + 8) = 1;
  *(a1 + 16) = result;
  return result;
}

void *sub_1AF486D24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF487A18(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF486D5C(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v6 = v2;
  sub_1AF448018(v4, v5);
  sub_1AF487DA4();
  sub_1AF487420(&qword_1EB639850, sub_1AF487DA4);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF486E68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1AFC892CC(*(v1 + 16), 0);
  sub_1AFC869B0(&v5, (v3 + 32), v2, v1);

  sub_1AF0FBB14();
  return v3;
}

uint64_t sub_1AF486F20()
{
  sub_1AF482C60(*v0);
  sub_1AF488038(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v1 = sub_1AFDFCD98();

  return v1;
}

unint64_t sub_1AF486FC4()
{
  result = qword_1ED7238A0;
  if (!qword_1ED7238A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7238A0);
  }

  return result;
}

uint64_t sub_1AF487018(uint64_t a1)
{
  sub_1AF483618();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF487074(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1AF4870B8()
{
  result = qword_1ED7238A8;
  if (!qword_1ED7238A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7238A8);
  }

  return result;
}

uint64_t sub_1AF48710C(uint64_t a1, uint64_t a2)
{
  sub_1AF483618();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AF487170()
{
  result = qword_1ED729940;
  if (!qword_1ED729940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED729940);
  }

  return result;
}

unint64_t sub_1AF4871C4()
{
  result = qword_1EB633CA8;
  if (!qword_1EB633CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633CA8);
  }

  return result;
}

unint64_t sub_1AF487218()
{
  result = qword_1ED7220F0;
  if (!qword_1ED7220F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7220F0);
  }

  return result;
}

unint64_t sub_1AF48726C()
{
  result = qword_1EB6397F8;
  if (!qword_1EB6397F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6397F8);
  }

  return result;
}

uint64_t sub_1AF487314(uint64_t a1, uint64_t a2)
{
  sub_1AF483618();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AF487378()
{
  result = qword_1EB639800;
  if (!qword_1EB639800)
  {
    sub_1AF483618();
    sub_1AF487420(&qword_1EB639808, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639800);
  }

  return result;
}

uint64_t sub_1AF487420(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF487468()
{
  result = qword_1EB640070;
  if (!qword_1EB640070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640070);
  }

  return result;
}

unint64_t sub_1AF4874BC()
{
  result = qword_1EB639810;
  if (!qword_1EB639810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639810);
  }

  return result;
}

uint64_t sub_1AF487510(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF488038(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF487588()
{
  result = qword_1EB639830;
  if (!qword_1EB639830)
  {
    sub_1AF488038(255, &qword_1EB639828, &type metadata for Bindings.Value.EnumInfo, MEMORY[0x1E69E6720]);
    sub_1AF487624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639830);
  }

  return result;
}

unint64_t sub_1AF487624()
{
  result = qword_1EB639838;
  if (!qword_1EB639838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639838);
  }

  return result;
}

uint64_t sub_1AF487678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v6 = sub_1AF419914(a1, a2);
  if ((v7 & 1) != 0 && ((v8 = *(*(a4 + 56) + 8 * v6), *(v8 + 32) != a3) ? (v9 = a3 == MEMORY[0x1E69E7CA0] + 8) : (v9 = 1), v9))
  {
    return *(v8 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF4876E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1B27189E0]();
  if (*(a5 + 16))
  {
    sub_1AF419914(v6, v7);
    v9 = v8;

    if (v9)
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1AF487754()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF4877A0(void *a1)
{
  sub_1AF488158(0, &qword_1EB639858, sub_1AF488104, &type metadata for Bindings.Value.EnumInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF488104();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1AFDFE708();
    sub_1AF488038(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v11[30] = 1;
    sub_1AF4881C0(&qword_1ED726C58);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

void *sub_1AF487A18(void *a1)
{
  sub_1AF488158(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  sub_1AF42D954(MEMORY[0x1E69E7CC0]);
  v21 = 1;
  v22 = sub_1AF42D96C(v9);
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(2010, v10, v11))
  {
    v15 = v5;
    v12 = sub_1AF441150(a1, a1[3]);
    sub_1AF445B90();
    sub_1AFDFF3B8();
    if (!v1)
    {
      sub_1AF487FC4(0, &qword_1EB639840, type metadata accessor for Bindings.Value, MEMORY[0x1E69E5E28]);
      v16 = 0;
      v17 = 1;
      v18 = 1952672100;
      v19 = 0xE400000000000000;
      sub_1AF487EA0();
      sub_1AFDFE768();
      (*(v15 + 8))(v8, v4);

      v20 = v23;
LABEL_8:
      sub_1AF485F8C();
      v12 = v20;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v12;
    }
  }

  else
  {
    v12 = sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v16, v19);
      sub_1AF487DA4();
      sub_1AF487420(qword_1ED7258F0, sub_1AF487DA4);
      sub_1AFDFEE88();

      v20 = v23;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v16);
      goto LABEL_8;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  return v12;
}

void sub_1AF487DA4()
{
  if (!qword_1ED7258E8)
  {
    type metadata accessor for Bindings.Value();
    sub_1AF487420(&qword_1ED723880, type metadata accessor for Bindings.Value);
    sub_1AF487420(&qword_1ED723888, type metadata accessor for Bindings.Value);
    v0 = type metadata accessor for FastDictCoder();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7258E8);
    }
  }
}

unint64_t sub_1AF487EA0()
{
  result = qword_1EB639848;
  if (!qword_1EB639848)
  {
    sub_1AF487FC4(255, &qword_1EB639840, type metadata accessor for Bindings.Value, MEMORY[0x1E69E5E28]);
    sub_1AF487420(&qword_1ED723880, type metadata accessor for Bindings.Value);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639848);
  }

  return result;
}

uint64_t sub_1AF487F80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1AF487FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF488038(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF488088()
{
  result = qword_1ED726C68;
  if (!qword_1ED726C68)
  {
    sub_1AF488038(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C68);
  }

  return result;
}

unint64_t sub_1AF488104()
{
  result = qword_1EB639860;
  if (!qword_1EB639860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639860);
  }

  return result;
}

void sub_1AF488158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AF4881C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF488038(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF488244()
{
  result = qword_1EB633CB0;
  if (!qword_1EB633CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633CB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Bindings.Value.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Bindings.Value.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF4883FC()
{
  result = qword_1EB639878;
  if (!qword_1EB639878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639878);
  }

  return result;
}

unint64_t sub_1AF488454()
{
  result = qword_1EB639880;
  if (!qword_1EB639880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639880);
  }

  return result;
}

unint64_t sub_1AF4884AC()
{
  result = qword_1EB639888;
  if (!qword_1EB639888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639888);
  }

  return result;
}

unint64_t sub_1AF488504()
{
  result = qword_1EB639890;
  if (!qword_1EB639890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639890);
  }

  return result;
}

unint64_t sub_1AF48855C()
{
  result = qword_1ED723890;
  if (!qword_1ED723890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723890);
  }

  return result;
}

unint64_t sub_1AF4885B4()
{
  result = qword_1ED723898;
  if (!qword_1ED723898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723898);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OrthographicCamera(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OrthographicCamera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OrthographicCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF4886EC(uint64_t a1)
{
  v2 = sub_1AF48D6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF488728(uint64_t a1)
{
  v2 = sub_1AF48D6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF488764(void *a1)
{
  sub_1AF48E494(0, &qword_1EB6398B8, sub_1AF48D6A4, &type metadata for PointOfView.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48D6A4();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF4888A4(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v15 = a4;
  v16 = a5;
  v13 = a2;
  v14 = a3;
  sub_1AF48E494(0, &qword_1EB6398C8, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF445B90();
  sub_1AFDFF3F8();
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v17 = 0;
  v18 = 1;
  v19 = 0x65756C6176;
  v20 = 0xE500000000000000;
  sub_1AF48D74C();
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF488A4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF48BC88(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_1AF488AA8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E654C6C61636F66;
    v6 = 0x6953726F736E6573;
    if (a1 != 2)
    {
      v6 = 0x706F745366;
    }

    if (a1)
    {
      v5 = 0x7369447375636F66;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5A65737265766572;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0x7366664F6D6C6966;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657275736F707865;
    if (a1 != 4)
    {
      v3 = 0x65676E61527ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

double sub_1AF488BE0@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF48B444(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1AF488C2C()
{
  sub_1AFDFF288();
  sub_1AF3D4C3C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF488C7C()
{
  sub_1AFDFF288();
  sub_1AF3D4C3C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF488CC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF48B748();
  *a1 = result;
  return result;
}

uint64_t sub_1AF488CF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF488AA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF488D38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF48B748();
  *a1 = result;
  return result;
}

uint64_t sub_1AF488D6C(uint64_t a1)
{
  v2 = sub_1AF48C2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF488DA8(uint64_t a1)
{
  v2 = sub_1AF48C2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF488DE4(void *a1)
{
  v3 = v1;
  sub_1AF48E494(0, &qword_1EB639898, sub_1AF48C2D0, &type metadata for PerspectiveCamera.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48C2D0();
  sub_1AFDFF3F8();
  LOBYTE(v15) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v15) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v15) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v15) = 4;
    sub_1AFDFE8E8();
    v15 = *(v3 + 24);
    v14 = 5;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0);
    sub_1AFDFE918();
    LOBYTE(v15) = 6;
    sub_1AFDFE8C8();
    LOBYTE(v15) = *(v3 + 33);
    v14 = 7;
    sub_1AF48C430();
    sub_1AFDFE918();
    v15 = *(v3 + 40);
    v14 = 8;
    v12 = MEMORY[0x1E69E7428];
    sub_1AF48E494(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF48C484(&qword_1ED72F798, &unk_1ED72F770, v12);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF489150@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF48BE7C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1AF4891AC(void *a1)
{
  v3 = v1;
  sub_1AF48E494(0, &qword_1EB6398D0, sub_1AF48D7A0, &type metadata for OrthographicCamera.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48D7A0();
  sub_1AFDFF3F8();
  v17 = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v16 = *(v3 + 4);
    v15 = 1;
    sub_1AF48C430();
    sub_1AFDFE918();
    v12[1] = *(v3 + 8);
    v14 = 2;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0);
    sub_1AFDFE918();
    v13 = 3;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AF4893FC()
{
  v1 = 0x656C616373;
  v2 = 0x65676E61527ALL;
  if (*v0 != 2)
  {
    v2 = 0x5A65737265766572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF489474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF48BB24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF48949C(uint64_t a1)
{
  v2 = sub_1AF48D7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF4894D8(uint64_t a1)
{
  v2 = sub_1AF48D7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF489514@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF48C4E8(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF489570@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1065353216;
  *(a1 + 4) = 0;
  result = 5.59548971e29;
  *(a1 + 8) = 0x461C40003DCCCCCDLL;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1AF489594(void *a1)
{
  sub_1AF48E494(0, &qword_1EB639938, sub_1AF48DF90, &type metadata for CameraDepthOfField.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AF48DF90();
  sub_1AFDFF3F8();
  v10[15] = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v10[14] = 1;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF489728(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6163537375636F66;
  }

  else
  {
    v3 = 0x696F507375636F66;
  }

  if (v2)
  {
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v5 = 0x6163537375636F66;
  }

  else
  {
    v5 = 0x696F507375636F66;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656CLL;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF4897D4()
{
  if (*v0)
  {
    return 0x6163537375636F66;
  }

  else
  {
    return 0x696F507375636F66;
  }
}

uint64_t sub_1AF489814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x696F507375636F66 && a2 == 0xEA0000000000746ELL || (sub_1AFDFEE28() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6163537375636F66 && a2 == 0xEA0000000000656CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1AF4898F8(uint64_t a1)
{
  v2 = sub_1AF48DF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF489934(uint64_t a1)
{
  v2 = sub_1AF48DF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF489970(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF48C790(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF4899C0@<D0>(void *a1@<X8>)
{
  result = 524288.125;
  *a1 = 0x4120000040000000;
  return result;
}

uint64_t sub_1AF4899F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF48B468();
  *a1 = result;
  return result;
}

uint64_t sub_1AF489A28@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x7469736E65746E69;
  v6 = 0xEA00000000006E6FLL;
  v7 = 0x6974617275746173;
  if (v3 != 6)
  {
    v7 = 0x5168676948657375;
    v6 = 0xEE007974696C6175;
  }

  v8 = 0xEB00000000726574;
  v9 = 0x6C6946726F6C6F63;
  result = 0x74736172746E6F63;
  if (v3 != 4)
  {
    v9 = 0x74736172746E6F63;
    v8 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C6F687365726874;
  if (v3 != 2)
  {
    v11 = 0xD000000000000013;
    v2 = 0x80000001AFF22B30;
  }

  if (*v1)
  {
    v5 = 0x617265744978616DLL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1 > 1u)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 3u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1AF489B50()
{
  v1 = *v0;
  v2 = 0x7469736E65746E69;
  v3 = 0x6974617275746173;
  if (v1 != 6)
  {
    v3 = 0x5168676948657375;
  }

  v4 = 0x6C6946726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0x74736172746E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C6F687365726874;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x617265744978616DLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF489C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF48B468();
  *a1 = result;
  return result;
}

uint64_t sub_1AF489CA8(uint64_t a1)
{
  v2 = sub_1AF48DFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF489CE4(uint64_t a1)
{
  v2 = sub_1AF48DFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF489D20(void *a1)
{
  v3 = v1;
  sub_1AF48E494(0, &qword_1EB639940, sub_1AF48DFE4, &type metadata for CameraBloom.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48DFE4();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE8F8();
    LOBYTE(v13) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 3;
    sub_1AFDFE8E8();
    v13 = *(v3 + 32);
    v14 = 4;
    v12 = MEMORY[0x1E69E74A8];
    sub_1AF48E494(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF48C484(&qword_1ED72F710, &qword_1ED72F6E0, v12);
    sub_1AFDFE918();
    LOBYTE(v13) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 6;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 7;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF48A000@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF48C970(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

double sub_1AF48A064@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1065353216;
  *(a1 + 8) = 10;
  *(a1 + 16) = 0x3DCCCCCD3F800000;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 32) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = result;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_1AF48A15C(void *a1, int a2)
{
  v12 = a2;
  sub_1AF48E494(0, &qword_1EB639960, sub_1AF48E038, &type metadata for CameraLensBlur.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48E038();
  sub_1AFDFF3F8();
  v16 = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v15 = v12;
    v14 = 1;
    sub_1AF48E0E0();
    sub_1AFDFE918();
    v13 = 2;
    sub_1AFDFE8F8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF48A344(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x75517265746C6966;
  v4 = 0xED00007974696C61;
  if (v2 != 1)
  {
    v3 = 0x656E72654B78616DLL;
    v4 = 0xEF7375696461526CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x737569646172;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x75517265746C6966;
  v8 = 0xED00007974696C61;
  if (*a2 != 1)
  {
    v7 = 0x656E72654B78616DLL;
    v8 = 0xEF7375696461526CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x737569646172;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF48A474()
{
  v1 = 0x75517265746C6966;
  if (*v0 != 1)
  {
    v1 = 0x656E72654B78616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737569646172;
  }
}

uint64_t sub_1AF48A4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF48B4B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF48A50C(uint64_t a1)
{
  v2 = sub_1AF48E038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF48A548(uint64_t a1)
{
  v2 = sub_1AF48E038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF48A584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF48CD40(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 4) = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_1AF48A5DC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 32;
}

uint64_t sub_1AF48A5F0(void *a1)
{
  sub_1AF48E494(0, &qword_1EB639998, sub_1AF48E3EC, &type metadata for CameraVignetting.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AF48E3EC();
  sub_1AFDFF3F8();
  v10[15] = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v10[14] = 1;
    sub_1AFDFE8E8();
    v10[13] = 2;
    sub_1AFDFE8E8();
    v10[12] = 3;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF48A7E0()
{
  v1 = 0x7469736E65746E69;
  v2 = 0x7373656E74666F73;
  if (*v0 != 2)
  {
    v2 = 0x737569646172;
  }

  if (*v0)
  {
    v1 = 0x6870726F6D616E61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF48A860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF48B5D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF48A888(uint64_t a1)
{
  v2 = sub_1AF48E3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF48A8C4(uint64_t a1)
{
  v2 = sub_1AF48E3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF48A900(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF48CF68(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

double sub_1AF48A950@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0078125;
  *a1 = xmmword_1AFE53DE0;
  return result;
}

uint64_t sub_1AF48A960(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x657275736F707865;
    v7 = 1953393012;
    v8 = 0x6F6C6F437466696CLL;
    if (a1 != 3)
    {
      v8 = 0x7366664F7466696CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74617265706D6574;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7366664F6E696167;
    v2 = 0x74736172746E6F63;
    if (a1 != 9)
    {
      v2 = 0x6974617275746173;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6C6F43616D6D6167;
    v4 = 0x66664F616D6D6167;
    if (a1 != 6)
    {
      v4 = 0x6F6C6F436E696167;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AF48AAD4(void *a1)
{
  v3 = v1;
  sub_1AF48E494(0, &qword_1EB6399B0, sub_1AF48E440, &type metadata for CameraColorGrading.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48E440();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 2;
    sub_1AFDFE8E8();
    v13 = v3[1];
    v14 = 3;
    v12 = MEMORY[0x1E69E74A8];
    sub_1AF48E494(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF48C484(&qword_1ED72F710, &qword_1ED72F6E0, v12);
    sub_1AFDFE918();
    LOBYTE(v13) = 4;
    sub_1AFDFE8E8();
    v13 = v3[3];
    v14 = 5;
    sub_1AFDFE918();
    LOBYTE(v13) = 6;
    sub_1AFDFE8E8();
    v13 = v3[5];
    v14 = 7;
    sub_1AFDFE918();
    LOBYTE(v13) = 8;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 9;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 10;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF48AE40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AF48A960(*a1);
  v5 = v4;
  if (v3 == sub_1AF48A960(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF48AED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF48B794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF48AF04(uint64_t a1)
{
  v2 = sub_1AF48E440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF48AF40(uint64_t a1)
{
  v2 = sub_1AF48E440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1AF48AF7C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF48D1A8(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 92) = *(v8 + 12);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

double sub_1AF48AFE8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0;
  *(a1 + 48) = _Q0;
  *(a1 + 64) = 0;
  *(a1 + 80) = _Q0;
  result = 0.0078125;
  *(a1 + 96) = 0x3F80000000000000;
  *(a1 + 104) = 1065353216;
  return result;
}

uint64_t sub_1AF48B0E0(void *a1, char a2)
{
  sub_1AF48E494(0, &qword_1EB639980, sub_1AF48E2F0, &type metadata for CameraToneMapping.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48E2F0();
  sub_1AFDFF3F8();
  v12 = a2;
  sub_1AF48E398();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF48B258()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](0);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF48B29C()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](0);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF48B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F74617265706FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF48B37C(uint64_t a1)
{
  v2 = sub_1AF48E2F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF48B3B8(uint64_t a1)
{
  v2 = sub_1AF48E2F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AF48B3F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF48E134(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1AF48B444@<D0>(uint64_t a1@<X8>)
{
  result = 95168079.9;
  *a1 = xmmword_1AFE53DF0;
  *(a1 + 16) = xmmword_1AFE53E00;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AF48B468()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF48B4B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75517265746C6966 && a2 == 0xED00007974696C61 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E72654B78616DLL && a2 == 0xEF7375696461526CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF48B5D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6870726F6D616E61 && a2 == 0xEA00000000006369 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373656E74666F73 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1AF48B748()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF48B794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657275736F707865 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F437466696CLL && a2 == 0xE900000000000072 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7366664F7466696CLL && a2 == 0xEA00000000007465 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F43616D6D6167 && a2 == 0xEA0000000000726FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66664F616D6D6167 && a2 == 0xEB00000000746573 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C6F436E696167 && a2 == 0xE900000000000072 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7366664F6E696167 && a2 == 0xEA00000000007465 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74736172746E6F63 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974617275746173 && a2 == 0xEA00000000006E6FLL)
  {

    return 10;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1AF48BB24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AFF23760 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E61527ALL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5A65737265766572 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1AF48BC88(void *a1)
{
  sub_1AF48E494(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF445B90();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11 = 0;
    v12 = 1;
    v13 = 0x65756C6176;
    v14 = 0xE500000000000000;
    sub_1AF48D6F8();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10[2] = v16;
    v10[3] = v15;
    v10[0] = v18;
    v10[1] = v17;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF48BE7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF48E494(0, &qword_1EB632880, sub_1AF48C2D0, &type metadata for PerspectiveCamera.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
  v11 = a1[3];
  v34 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF48C2D0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  }

  v12 = v7;
  v35.i8[0] = 0;
  v13 = v6;
  sub_1AFDFE738();
  v15 = v14;
  v35.i8[0] = 1;
  sub_1AFDFE738();
  v17 = v16;
  v35.i8[0] = 2;
  sub_1AFDFE738();
  v19 = v18;
  v35.i8[0] = 3;
  sub_1AFDFE738();
  v22 = v21;
  v35.i8[0] = 4;
  sub_1AFDFE738();
  v24 = v23;
  sub_1AF48C324();
  v38 = 5;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v25 = v35;
  v35.i8[0] = 6;
  v37 = sub_1AFDFE718();
  v38 = 7;
  sub_1AF48C37C();
  sub_1AFDFE6E8();
  v26 = v35.i8[0];
  v27 = MEMORY[0x1E69E7428];
  sub_1AF48E494(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v38 = 8;
  sub_1AF48C484(&qword_1ED72F780, &unk_1ED72F770, v27);
  sub_1AFDFE6E8();
  v28 = v37 & 1;
  if (v36)
  {
    v29 = -1;
  }

  else
  {
    v29 = 0;
  }

  v30 = vbic_s8(v35, vdup_n_s32(v29));
  v31 = v15;
  v32 = atanf((v19 * 0.5) / v15);
  (*(v12 + 8))(v10, v13);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
  *a2 = v32 + v32;
  *(a2 + 4) = v31;
  *(a2 + 8) = v17;
  *(a2 + 12) = v19;
  *(a2 + 16) = v22;
  *(a2 + 20) = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v28;
  *(a2 + 33) = v26 & 1;
  *(a2 + 40) = v30;
  return result;
}

unint64_t sub_1AF48C2D0()
{
  result = qword_1EB632DB0;
  if (!qword_1EB632DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632DB0);
  }

  return result;
}

void sub_1AF48C324()
{
  if (!qword_1ED72F958)
  {
    v0 = sub_1AFDFD998();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F958);
    }
  }
}

unint64_t sub_1AF48C37C()
{
  result = qword_1EB6335F0;
  if (!qword_1EB6335F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335F0);
  }

  return result;
}

uint64_t sub_1AF48C3D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF48C324();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF48C430()
{
  result = qword_1EB639C90;
  if (!qword_1EB639C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639C90);
  }

  return result;
}

uint64_t sub_1AF48C484(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF48E494(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF48C4E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  sub_1AF48E494(0, &qword_1EB630AB8, sub_1AF48D7A0, &type metadata for OrthographicCamera.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v17 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48D7A0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v17[0];
  v22 = 0;
  sub_1AFDFE738();
  v12 = v11;
  v20 = 1;
  sub_1AF48C37C();
  sub_1AFDFE768();
  v13 = v21;
  sub_1AF48C324();
  v19 = 2;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v14 = v17[1];
  v18 = 3;
  v15 = sub_1AFDFE718();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  *(v10 + 4) = v13;
  *(v10 + 8) = v14;
  *(v10 + 16) = v15 & 1;
  return result;
}

float sub_1AF48C790(void *a1)
{
  sub_1AF48E494(0, &qword_1EB639928, sub_1AF48DF90, &type metadata for CameraDepthOfField.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48DF90();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AFDFE738();
    v2 = v10;
    v13 = 1;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF48C970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF48E494(0, &qword_1EB6328B8, sub_1AF48DFE4, &type metadata for CameraBloom.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v11 = a1[3];
  v33 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF48DFE4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
  }

  LOBYTE(v35) = 0;
  sub_1AFDFE738();
  v13 = v12;
  LOBYTE(v35) = 1;
  v32 = sub_1AFDFE748();
  LOBYTE(v35) = 2;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v35) = 3;
  sub_1AFDFE738();
  v18 = v17;
  v19 = MEMORY[0x1E69E74A8];
  sub_1AF48E494(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v34 = 4;
  sub_1AF48C484(&qword_1ED72F6F0, &qword_1ED72F6E0, v19);
  sub_1AFDFE6E8();
  if (v36)
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    _Q0 = v35;
  }

  v31 = _Q0;
  LOBYTE(v35) = 5;
  v25 = sub_1AFDFE6C8();
  if ((v25 & 0x100000000) != 0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = *&v25;
  }

  LOBYTE(v35) = 6;
  v27 = sub_1AFDFE6C8();
  LOBYTE(v35) = 7;
  v28 = sub_1AFDFE6A8();
  if ((v27 & 0x100000000) != 0)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = *&v27;
  }

  v30 = v28;
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
  *a2 = v13;
  *(a2 + 8) = v32;
  *(a2 + 16) = v16;
  *(a2 + 20) = v18;
  *(a2 + 32) = v31;
  *(a2 + 48) = v26;
  *(a2 + 52) = v29;
  *(a2 + 56) = (v30 == 2) | v30 & 1;
  return result;
}

uint64_t sub_1AF48CD40(void *a1)
{
  sub_1AF48E494(0, &qword_1EB639948, sub_1AF48E038, &type metadata for CameraLensBlur.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF48E038();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11[15] = 0;
    sub_1AFDFE738();
    v11[13] = 1;
    sub_1AF48E08C();
    sub_1AFDFE768();
    v9 = v11[14];
    v11[12] = 2;
    sub_1AFDFE748();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

float sub_1AF48CF68(void *a1)
{
  sub_1AF48E494(0, &qword_1EB639988, sub_1AF48E3EC, &type metadata for CameraVignetting.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48E3EC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v16 = 0;
    sub_1AFDFE738();
    v2 = v10;
    v15 = 1;
    sub_1AFDFE738();
    v14 = 2;
    sub_1AFDFE738();
    v13 = 3;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF48D1A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF48E494(0, &qword_1EB6399A0, sub_1AF48E440, &type metadata for CameraColorGrading.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF48E440();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v35) = 0;
  sub_1AFDFE738();
  v11 = v10;
  LOBYTE(v35) = 1;
  sub_1AFDFE738();
  v13 = v12;
  LOBYTE(v35) = 2;
  sub_1AFDFE738();
  v15 = v14;
  v16 = MEMORY[0x1E69E74A8];
  sub_1AF48E494(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v18 = v17;
  v36 = 3;
  sub_1AF48C484(&qword_1ED72F6F0, &qword_1ED72F6E0, v16);
  *&v33 = v18;
  sub_1AFDFE768();
  v32 = v35;
  LOBYTE(v35) = 4;
  sub_1AFDFE738();
  v20 = v19;
  v36 = 5;
  sub_1AFDFE768();
  v31 = v35;
  LOBYTE(v35) = 6;
  sub_1AFDFE738();
  v22 = v21;
  v36 = 7;
  sub_1AFDFE768();
  v33 = v35;
  LOBYTE(v35) = 8;
  sub_1AFDFE738();
  v24 = v23;
  LOBYTE(v35) = 9;
  sub_1AFDFE738();
  v26 = v25;
  LOBYTE(v35) = 10;
  sub_1AFDFE738();
  v28 = v27;
  (*(v6 + 8))(v9, v34);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 4) = v13;
  *(a2 + 8) = v15;
  v30 = v31;
  *(a2 + 16) = v32;
  *(a2 + 32) = v20;
  *(a2 + 48) = v30;
  *(a2 + 64) = v22;
  *(a2 + 80) = v33;
  *(a2 + 96) = v24;
  *(a2 + 100) = v26;
  *(a2 + 104) = v28;
  return result;
}

unint64_t sub_1AF48D5FC()
{
  result = qword_1EB6398A8;
  if (!qword_1EB6398A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6398A8);
  }

  return result;
}

unint64_t sub_1AF48D650()
{
  result = qword_1EB6398B0;
  if (!qword_1EB6398B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6398B0);
  }

  return result;
}

unint64_t sub_1AF48D6A4()
{
  result = qword_1EB6398C0;
  if (!qword_1EB6398C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6398C0);
  }

  return result;
}

unint64_t sub_1AF48D6F8()
{
  result = qword_1ED7258E0;
  if (!qword_1ED7258E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7258E0);
  }

  return result;
}

unint64_t sub_1AF48D74C()
{
  result = qword_1EB63DFE0;
  if (!qword_1EB63DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DFE0);
  }

  return result;
}

unint64_t sub_1AF48D7A0()
{
  result = qword_1EB631B18;
  if (!qword_1EB631B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerspectiveCamera.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerspectiveCamera.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeWithCopy for CameraBloom(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraBloom(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraBloom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraLensBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 16))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraLensBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

__n128 initializeWithCopy for CameraColorGrading(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraColorGrading(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 108))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraColorGrading(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 108) = v3;
  return result;
}

unint64_t sub_1AF48DBF4()
{
  result = qword_1EB6398E8;
  if (!qword_1EB6398E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6398E8);
  }

  return result;
}

unint64_t sub_1AF48DC7C()
{
  result = qword_1EB639900;
  if (!qword_1EB639900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639900);
  }

  return result;
}

unint64_t sub_1AF48DCD4()
{
  result = qword_1EB639908;
  if (!qword_1EB639908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639908);
  }

  return result;
}

unint64_t sub_1AF48DD2C()
{
  result = qword_1EB639910;
  if (!qword_1EB639910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639910);
  }

  return result;
}

unint64_t sub_1AF48DD84()
{
  result = qword_1EB631B08;
  if (!qword_1EB631B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B08);
  }

  return result;
}

unint64_t sub_1AF48DDDC()
{
  result = qword_1EB631B10;
  if (!qword_1EB631B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B10);
  }

  return result;
}

unint64_t sub_1AF48DE34()
{
  result = qword_1EB639918;
  if (!qword_1EB639918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639918);
  }

  return result;
}

unint64_t sub_1AF48DE8C()
{
  result = qword_1EB639920;
  if (!qword_1EB639920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639920);
  }

  return result;
}

unint64_t sub_1AF48DEE4()
{
  result = qword_1EB632DA0;
  if (!qword_1EB632DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632DA0);
  }

  return result;
}

unint64_t sub_1AF48DF3C()
{
  result = qword_1EB632DA8;
  if (!qword_1EB632DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632DA8);
  }

  return result;
}

unint64_t sub_1AF48DF90()
{
  result = qword_1EB639930;
  if (!qword_1EB639930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639930);
  }

  return result;
}

unint64_t sub_1AF48DFE4()
{
  result = qword_1EB633018;
  if (!qword_1EB633018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633018);
  }

  return result;
}

unint64_t sub_1AF48E038()
{
  result = qword_1EB639950;
  if (!qword_1EB639950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639950);
  }

  return result;
}

unint64_t sub_1AF48E08C()
{
  result = qword_1EB639958;
  if (!qword_1EB639958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639958);
  }

  return result;
}

unint64_t sub_1AF48E0E0()
{
  result = qword_1EB639CF0;
  if (!qword_1EB639CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639CF0);
  }

  return result;
}

unint64_t sub_1AF48E134(void *a1)
{
  sub_1AF48E494(0, &qword_1EB639968, sub_1AF48E2F0, &type metadata for CameraToneMapping.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF48E2F0();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48E344();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10 = v13;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

unint64_t sub_1AF48E2F0()
{
  result = qword_1EB639970;
  if (!qword_1EB639970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639970);
  }

  return result;
}

unint64_t sub_1AF48E344()
{
  result = qword_1EB639978;
  if (!qword_1EB639978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639978);
  }

  return result;
}

unint64_t sub_1AF48E398()
{
  result = qword_1EB639CE0;
  if (!qword_1EB639CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639CE0);
  }

  return result;
}

unint64_t sub_1AF48E3EC()
{
  result = qword_1EB639990;
  if (!qword_1EB639990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639990);
  }

  return result;
}

unint64_t sub_1AF48E440()
{
  result = qword_1EB6399A8;
  if (!qword_1EB6399A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399A8);
  }

  return result;
}

void sub_1AF48E494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ArgumentScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArgumentScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraBloom.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraBloom.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF48E7E0()
{
  result = qword_1EB6399B8;
  if (!qword_1EB6399B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399B8);
  }

  return result;
}

unint64_t sub_1AF48E838()
{
  result = qword_1EB6399C0;
  if (!qword_1EB6399C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399C0);
  }

  return result;
}

unint64_t sub_1AF48E890()
{
  result = qword_1EB6399C8;
  if (!qword_1EB6399C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399C8);
  }

  return result;
}

unint64_t sub_1AF48E8E8()
{
  result = qword_1EB6399D0;
  if (!qword_1EB6399D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399D0);
  }

  return result;
}

unint64_t sub_1AF48E940()
{
  result = qword_1EB6399D8;
  if (!qword_1EB6399D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399D8);
  }

  return result;
}

unint64_t sub_1AF48E998()
{
  result = qword_1EB6399E0;
  if (!qword_1EB6399E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399E0);
  }

  return result;
}

unint64_t sub_1AF48E9F0()
{
  result = qword_1EB6399E8;
  if (!qword_1EB6399E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399E8);
  }

  return result;
}

unint64_t sub_1AF48EA48()
{
  result = qword_1EB6399F0;
  if (!qword_1EB6399F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399F0);
  }

  return result;
}

unint64_t sub_1AF48EAA0()
{
  result = qword_1EB6399F8;
  if (!qword_1EB6399F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6399F8);
  }

  return result;
}

unint64_t sub_1AF48EAF8()
{
  result = qword_1EB639A00;
  if (!qword_1EB639A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A00);
  }

  return result;
}

unint64_t sub_1AF48EB50()
{
  result = qword_1EB639A08;
  if (!qword_1EB639A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A08);
  }

  return result;
}

unint64_t sub_1AF48EBA8()
{
  result = qword_1EB639A10;
  if (!qword_1EB639A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A10);
  }

  return result;
}

unint64_t sub_1AF48EC00()
{
  result = qword_1EB639A18;
  if (!qword_1EB639A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A18);
  }

  return result;
}

unint64_t sub_1AF48EC58()
{
  result = qword_1EB639A20;
  if (!qword_1EB639A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A20);
  }

  return result;
}

unint64_t sub_1AF48ECB0()
{
  result = qword_1EB633008;
  if (!qword_1EB633008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633008);
  }

  return result;
}

unint64_t sub_1AF48ED08()
{
  result = qword_1EB633010;
  if (!qword_1EB633010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633010);
  }

  return result;
}

unint64_t sub_1AF48ED60()
{
  result = qword_1EB639A28;
  if (!qword_1EB639A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A28);
  }

  return result;
}

unint64_t sub_1AF48EDB8()
{
  result = qword_1EB639A30;
  if (!qword_1EB639A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A30);
  }

  return result;
}

uint64_t sub_1AF48EE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFC148();
  if (v3)
  {

    sub_1AFDFE218();

    sub_1AFDFC128();
    sub_1AF48F374();
    v8 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v8);

    sub_1AF4567E0();
    swift_allocError();
    *v9 = 0xD000000000000026;
    *(v9 + 8) = 0x80000001AFF299C0;
    *(v9 + 16) = 96;
    return swift_willThrow();
  }

  v36 = 0;
  v41[0] = 0;
  v11 = v6;
  v12 = v7;
  v13 = sub_1AFDFC1A8();
  v15 = sub_1AF19ADC4(v13, &v36, v41, v14);

  if (!v15)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1AFDFE218();

    v37 = 0xD000000000000027;
    v38 = 0x80000001AFF299F0;
    sub_1AFDFC128();
    sub_1AF48F374();
    v25 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v25);

    v26 = v37;
    v27 = v38;
    sub_1AF4567E0();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 96;
    swift_willThrow();
    return sub_1AF439ED8(v11, v12);
  }

  v16 = v36;
  CFXTextureDescriptorMakeDefault(&v39);
  sub_1AF48F3CC(&v39);
  sub_1AF48F3E0(&v39);
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  sub_1AF46749C(v17, &v39);
  sub_1AF4674A4(v17, &v39);
  sub_1AF4674AC(v17, &v39);
  sub_1AF48F3EC(&v39);
  sub_1AF4674BC(&v39);
  sub_1AF48F3F8(&v39);
  sub_1AF48F404(&v39);
  sub_1AF48F414(&v39);
  *(a2 + 32) = v39;
  *(a2 + 48) = v40;
  v18 = v16 * v16 * v16;
  v19 = 16 * v18;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(a3, (16 * v18), 0);
  if (BufferWithLength)
  {
    v21 = BufferWithLength;
    v22 = sub_1AFDFCEC8();
    [v21 setLabel_];

    v23 = v41[0];
    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v24 = 0;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = [v21 contents];
      v29 = v21;
      if (!v18)
      {
LABEL_15:
        sub_1AF439ED8(v11, v12);
        result = swift_unknownObjectRelease();
        *a2 = v21;
        *(a2 + 8) = 0;
        *(a2 + 16) = v19;
        return result;
      }
    }

    v30 = (v23 + 8);
    do
    {
      *&v31 = *(v30 - 1);
      DWORD2(v31) = *v30;
      HIDWORD(v31) = 1.0;
      *v24++ = v31;
      v30 += 3;
      --v18;
    }

    while (v18);
    goto LABEL_15;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v32 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v32);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v34 = v37;
  v33 = v38;
  v35 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v37 = 0;
  sub_1AF0D4F18(v35, &v37, v34, v33);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF48F374()
{
  result = qword_1EB632790;
  if (!qword_1EB632790)
  {
    sub_1AFDFC128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632790);
  }

  return result;
}

uint64_t sub_1AF48F424@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF48F6B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF48F460(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1AFAE6C5C(0x6E77617073, 0xE500000000000000, a1, a2, a3, a4))
  {

    return 1;
  }

  else if (sub_1AFAE6C5C(1953066601, 0xE400000000000000, a1, a2, a3, a4) & 1) != 0 || (sub_1AFAE6C5C(0x696C616974696E69, 0xEA0000000000657ALL, a1, a2, a3, a4))
  {

    return 2;
  }

  else if (sub_1AFAE6C5C(0x657461647075, 0xE600000000000000, a1, a2, a3, a4))
  {

    return 3;
  }

  else
  {
    v9 = sub_1AFAE6C5C(0x7265646E6572, 0xE600000000000000, a1, a2, a3, a4);

    if (v9)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1AF48F5B8()
{
  result = qword_1EB639A38;
  if (!qword_1EB639A38)
  {
    sub_1AF48F610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A38);
  }

  return result;
}

void sub_1AF48F610()
{
  if (!qword_1EB639A40)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639A40);
    }
  }
}

unint64_t sub_1AF48F664()
{
  result = qword_1EB639A48;
  if (!qword_1EB639A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639A48);
  }

  return result;
}

uint64_t sub_1AF48F6B8(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AF48F6E4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF41FC9C(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48F810(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1AFDFE108();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*v2 >> 62)
  {
    v6 = sub_1AFDFE108();
  }

  else
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF56DDFC(v6 + v5);
  v7 = *v2;
  v8 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 >= 1)
  {
    *(v8 + 16) += v10;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1AF48F910(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v10 = *v4;
  v11 = *(*v4 + 16);
  if (swift_isUniquelyReferenced_nonNull_native() && v11 + v9 <= *(v10 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    goto LABEL_8;
  }

  v10 = a2();
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1AF5A9240(0, a3, a4, MEMORY[0x1E69E6720]);
  swift_arrayInitWithCopy();

  if (v9)
  {
    *(v10 + 16) += v9;
  }

LABEL_8:
  *v4 = v10;
  return result;
}

uint64_t sub_1AF48FA30(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF4209BC(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FAF8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FBC0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF420D58(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  memcpy(&v4[*(v4 + 2) + 32], (a1 + 32), v3);

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FC80(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF420E4C(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  memcpy(&v4[16 * *(v4 + 2) + 32], (a1 + 32), 16 * v3);

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FD40(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF420FF0(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  memcpy(&v4[24 * *(v4 + 2) + 32], (a1 + 32), 24 * v3);

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FE08(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v4[3] >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF421118(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1AF446420();
  swift_arrayInitWithCopy();

  if (v3)
  {
    v4[2] += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FED4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF4217DC(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  memcpy(&v4[8 * *(v4 + 2) + 32], (a1 + 32), 8 * v3);

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF48FF94(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF421B38(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490060(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF4228D4(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF49012C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF4237C8(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF4901F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v3 + 3) >> 1, v7 < v5))
  {
    if (v4 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_1AF4217DC(isUniquelyReferenced_nonNull_native, v8, 1, v3);
    v7 = *(v3 + 3) >> 1;
  }

  v9 = *(v3 + 2);
  v10 = v7 - v9;
  v11 = sub_1AFC892B4(&v46, &v3[8 * v9 + 32], v7 - v9, a1);
  v12 = v11;
  if (v11 >= 1)
  {
    *(v3 + 2) += v11;
  }

  v13 = v46;
  if (v12 != v10)
  {
    goto LABEL_10;
  }

  v15 = *(v3 + 2);
  v16 = v47;
  v17 = v48;
  v18 = v49;
  if (v50)
  {
    v19 = (v50 - 1) & v50;
    v20 = __clz(__rbit64(v50)) | (v49 << 6);
    v21 = (v48 + 64) >> 6;
  }

  else
  {
    v21 = (v48 + 64) >> 6;
    if (v21 <= (v49 + 1))
    {
      v22 = v49 + 1;
    }

    else
    {
      v22 = (v48 + 64) >> 6;
    }

    v23 = v22 - 1;
    v24 = v49 << 6;
    do
    {
      v25 = v18 + 1;
      if ((v18 + 1) >= v21)
      {
        v49 = v23;
        v50 = 0;
        goto LABEL_10;
      }

      v26 = *(v47 + 8 + 8 * v18);
      v24 += 64;
      ++v18;
    }

    while (!v26);
    v19 = (v26 - 1) & v26;
    v20 = __clz(__rbit64(v26)) + v24;
    v18 = v25;
  }

  v27 = *(*(v46 + 56) + 8 * v20);
  v28 = v47 + 8;
  while (1)
  {
    v29 = *(v3 + 3);
    v30 = v29 >> 1;
    if ((v29 >> 1) < v15 + 1)
    {
      break;
    }

    if (v15 < v30)
    {
      goto LABEL_26;
    }

LABEL_23:
    *(v3 + 2) = v15;
  }

  v43 = v21;
  v44 = v18;
  v45 = v13;
  v41 = v27;
  v42 = v16;
  v37 = v3;
  v38 = v28;
  v39 = sub_1AF4217DC(v29 > 1, v15 + 1, 1, v37);
  v27 = v41;
  v16 = v42;
  v28 = v38;
  v21 = v43;
  v18 = v44;
  v3 = v39;
  v13 = v45;
  v30 = *(v3 + 3) >> 1;
  if (v15 >= v30)
  {
    goto LABEL_23;
  }

LABEL_26:
  v31 = HIDWORD(v27);
  while (1)
  {
    v34 = &v3[8 * v15 + 32];
    *v34 = v27;
    *(v34 + 1) = v31;
    ++v15;
    if (!v19)
    {
      break;
    }

LABEL_27:
    v32 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v33 = (*(v13 + 56) + ((v18 << 9) | (8 * v32)));
    v27 = *v33;
    v31 = v33[1];
    if (v15 >= v30)
    {
      v27 |= v31 << 32;
      goto LABEL_23;
    }
  }

  v35 = v18;
  while (1)
  {
    v36 = v35 + 1;
    if ((v35 + 1) >= v21)
    {
      break;
    }

    v19 = *(v28 + 8 * v35++);
    if (v19)
    {
      v18 = v36;
      goto LABEL_27;
    }
  }

  if (v21 <= (v18 + 1))
  {
    v40 = v18 + 1;
  }

  else
  {
    v40 = v21;
  }

  v48 = v17;
  v49 = v40 - 1;
  v50 = 0;
  *(v3 + 2) = v15;
LABEL_10:
  result = sub_1AF0FBB14();
  *v1 = v3;
  return result;
}

uint64_t sub_1AF490474(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v3 + 3) >> 1, v7 < v5))
  {
    if (v4 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v8, 1, v3);
    v7 = *(v3 + 3) >> 1;
  }

  v9 = *(v3 + 2);
  v10 = v7 - v9;
  v11 = sub_1AFC892B8(&v38, &v3[16 * v9 + 32], v7 - v9, a1);
  if (v11 >= 1)
  {
    *(v3 + 2) += v11;
  }

  if (v11 != v10)
  {
    goto LABEL_10;
  }

  v13 = *(v3 + 2);
  v14 = v41;
  v37 = v39;
  if (v42)
  {
    v15 = (v42 - 1) & v42;
    v16 = __clz(__rbit64(v42)) | (v41 << 6);
    v35 = v40;
    v17 = (v40 + 64) >> 6;
  }

  else
  {
    v17 = (v40 + 64) >> 6;
    if (v17 <= (v41 + 1))
    {
      v18 = v41 + 1;
    }

    else
    {
      v18 = (v40 + 64) >> 6;
    }

    v19 = v18 - 1;
    v20 = v41 << 6;
    do
    {
      v21 = v14 + 1;
      if ((v14 + 1) >= v17)
      {
        v41 = v19;
        v42 = 0;
        goto LABEL_10;
      }

      v22 = *(v39 + 8 + 8 * v14);
      v20 += 64;
      ++v14;
    }

    while (!v22);
    v35 = v40;
    v15 = (v22 - 1) & v22;
    v16 = __clz(__rbit64(v22)) + v20;
    v14 = v21;
  }

  v36 = v38;
  v23 = (*(v38 + 48) + 16 * v16);
  v25 = *v23;
  v24 = v23[1];

  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v27)
    {
      goto LABEL_24;
    }

LABEL_21:
    *(v3 + 2) = v13;
  }

  v3 = sub_1AF420554(v26 > 1, v13 + 1, 1, v3);
  v27 = *(v3 + 3) >> 1;
  if (v13 >= v27)
  {
    goto LABEL_21;
  }

LABEL_24:
  while (1)
  {
    v28 = &v3[16 * v13 + 32];
    *v28 = v25;
    *(v28 + 1) = v24;
    ++v13;
    if (!v15)
    {
      break;
    }

    v29 = v36;
LABEL_30:
    v32 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v33 = (*(v29 + 48) + ((v14 << 10) | (16 * v32)));
    v25 = *v33;
    v24 = v33[1];

    if (v13 >= v27)
    {
      goto LABEL_21;
    }
  }

  v30 = v14;
  v29 = v36;
  while (1)
  {
    v31 = v30 + 1;
    if ((v30 + 1) >= v17)
    {
      break;
    }

    v15 = *(v37 + 8 + 8 * v30++);
    if (v15)
    {
      v14 = v31;
      goto LABEL_30;
    }
  }

  if (v17 <= (v14 + 1))
  {
    v34 = v14 + 1;
  }

  else
  {
    v34 = v17;
  }

  v40 = v35;
  v41 = v34 - 1;
  v42 = 0;
  *(v3 + 2) = v13;
LABEL_10:
  result = sub_1AF0FBB14();
  *v1 = v3;
  return result;
}

uint64_t sub_1AF490748(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF425A64(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490814(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF425C8C(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF4908E0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF425DAC(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  memcpy(&v4[16 * *(v4 + 2) + 32], (a1 + 32), 16 * v3);

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF4909A0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF426490(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490A6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490B4C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1AFDFE108();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*v2 >> 62)
  {
    v6 = sub_1AFDFE108();
  }

  else
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF56DDFC(v6 + v5);
  v7 = *v2;
  v8 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 >= 1)
  {
    *(v8 + 16) += v10;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1AF490C24(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF420C34(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490CF0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v4[3] >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF426CF0(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  type metadata accessor for EdgeCoder(0);
  swift_arrayInitWithCopy();

  if (v3)
  {
    v4[2] += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(a1 + 16);
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    goto LABEL_8;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v5)
  {
    *(v6 + 16) += v5;
  }

LABEL_8:
  *v2 = v6;
  return result;
}

uint64_t sub_1AF490F04(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_1AF4246B0(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    if (*(a1 + 16))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_4:
  swift_arrayInitWithCopy();

  if (v3)
  {
    *(v4 + 2) += v3;
  }

LABEL_11:
  *v1 = v4;
  return result;
}

uint64_t sub_1AF490FD0(uint64_t a1, int32x2_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = v5 + a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v8 = *(v4 + 24) >> 1, v8 < v6))
  {
    if (v5 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    result = sub_1AF41FDF8(result, v9, 1, v4);
    v4 = result;
    v8 = *(result + 24) >> 1;
  }

  v10 = *(v4 + 16);
  v11 = v8 - v10;
  v12 = a2.i32[0];
  if (v8 == v10)
  {
    if (!a1)
    {
      goto LABEL_46;
    }

    v18 = 0;
  }

  else
  {
    if (!a1)
    {
      goto LABEL_46;
    }

    v13 = (v4 + 4 * v10);
    v14 = v13 + 2;
    v15 = a1 - 1;
    if (a1 - 1 >= (v8 + ~v10))
    {
      v15 = v8 + ~v10;
    }

    v16 = v15 + 1;
    if (v16 > 8)
    {
      v30 = v16 & 7;
      if ((v16 & 7) == 0)
      {
        v30 = 8;
      }

      v17 = v16 - v30;
      v14 = (v14 + 4 * v17);
      v31 = vdupq_lane_s32(a2, 0);
      v32 = v13 + 3;
      v33 = v17;
      do
      {
        v32[-1] = v31;
        *v32 = v31;
        v32 += 2;
        v33 -= 8;
      }

      while (v33);
    }

    else
    {
      v17 = 0;
    }

    v34 = a1 - v17;
    v35 = v17 + v10 - v8 + 1;
    while (1)
    {
      v14->i32[0] = a2.i32[0];
      if (!v35)
      {
        break;
      }

      v14 = (v14 + 4);
      ++v35;
      if (!--v34)
      {
        v18 = a1;
        if (a1 <= 0)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    v18 = v11;
    if (v11 <= 0)
    {
      goto LABEL_45;
    }

LABEL_44:
    v10 += v18;
    *(v4 + 16) = v10;
LABEL_45:
    if (v18 != v11 || v18 == a1)
    {
      goto LABEL_46;
    }
  }

  v19 = v18 + 1;
  v20 = vdupq_lane_s32(a2, 0);
  while (1)
  {
    v21 = *(v4 + 24);
    v22 = v21 >> 1;
    if ((v21 >> 1) < v10 + 1)
    {
      break;
    }

    if (v10 < v22)
    {
      goto LABEL_19;
    }

LABEL_16:
    *(v4 + 16) = v10;
  }

  v36 = v20;
  result = sub_1AF41FDF8(v21 > 1, v10 + 1, 1, v4);
  v20 = v36;
  v12 = a2.i32[0];
  v4 = result;
  v22 = *(result + 24) >> 1;
  if (v10 >= v22)
  {
    goto LABEL_16;
  }

LABEL_19:
  v23 = v22 + ~v10;
  if (v23 >= a1 - v19)
  {
    v23 = a1 - v19;
  }

  v24 = v23 + 1;
  if (v24 >= 9)
  {
    v25 = v24 & 7;
    if ((v24 & 7) == 0)
    {
      v25 = 8;
    }

    v26 = v24 - v25;
    v19 += v26;
    v27 = v10 + v26;
    v28 = (v4 + 4 * v10 + 48);
    do
    {
      v28[-1] = v20;
      *v28 = v20;
      v28 += 2;
      v26 -= 8;
    }

    while (v26);
    v10 = v27;
  }

  v29 = v10 + 8;
  while (1)
  {
    *(v4 + 4 * v29) = v12;
    if (a1 == v19)
    {
      break;
    }

    ++v19;
    if (++v29 - v22 == 8)
    {
      v10 = v22;
      goto LABEL_16;
    }
  }

  *(v4 + 16) = v29 - 7;
LABEL_46:
  *v2 = v4;
  return result;
}

uint64_t sub_1AF491224(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      MEMORY[0x1B2718AE0](v5, v6);

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1AFC05CE4(v7 > 1, v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = 2109231;
      *(v9 + 40) = 0xE300000000000000;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AF491330()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v1);
  v2 = swift_checkMetadataState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  sub_1AFDFD2A8();
  if ((sub_1AFDFDF88() & 1) != 0 && sub_1AFDFDF78() > 64)
  {
    v21 = 0x8000000000000000;
    if (sub_1AFDFDF88())
    {
      if (sub_1AFDFDF78() < 64)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v10 = sub_1AFDFDF88();
    v11 = sub_1AFDFDF78();
    if (v10)
    {
      if (v11 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_1AFDFF158();
        v18 = v20;
        sub_1AFDFEDF8();
        v19 = sub_1AFDFCDB8();
        (*(v3 + 8))(v18, v2);
        if (v19)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

LABEL_8:
      sub_1AF5851E8();
      v12 = v20;
      sub_1AFDFDF38();
      sub_1AFDFCDB8();
      (*(v3 + 8))(v12, v2);
      goto LABEL_11;
    }

    if (v11 < 64)
    {
LABEL_10:
      sub_1AFDFDF68();
    }
  }

LABEL_11:
  if (sub_1AFDFDF78() > 64 || sub_1AFDFDF78() == 64 && (sub_1AFDFDF88() & 1) == 0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = sub_1AFDFDF88();
    v14 = sub_1AFDFDF78();
    if (v13)
    {
      if (v14 >= 65)
      {
LABEL_14:
        sub_1AF5851E8();
        v15 = v20;
        sub_1AFDFDF38();
        sub_1AFDFCDB8();
        (*(v3 + 8))(v15, v2);
        goto LABEL_20;
      }
    }

    else if (v14 > 63)
    {
      goto LABEL_14;
    }

    sub_1AFDFDF68();
  }

LABEL_20:
  v16 = sub_1AFDFDF68();
  (*(v3 + 8))(v9, v2);
  return v16;
}

uint64_t sub_1AF49178C(uint64_t result)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AF491880()
{
  if (qword_1EB6337D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C2A80;
  if (!(qword_1EB6C2A80 >> 62))
  {
    v1 = *((qword_1EB6C2A80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v1 = sub_1AFDFE108();
  if (!v1)
  {
    return 0;
  }

LABEL_5:
  sub_1AFDFE008();
  v2 = 0;
  while (1)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1B2719C70](v2, v0);
    }

    else
    {
      v3 = *(v0 + 8 * v2 + 32);
    }

    v4 = sub_1AFDFCE58();

    if (v4)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1AF4919C0()
{
  v0 = sub_1AFC6ABC8();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  v2 = sub_1AFDFE108();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1AFDFE008();
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B2719C70](v3, v1);
    }

    else
    {
      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = sub_1AFDFCE58();

    if (v5)
    {
      break;
    }

    if (v2 == ++v3)
    {
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t sub_1AF491AE4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = sub_1AF4A91F8(a1, a3 & 0x101);
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  v5 = sub_1AFDFE108();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1AFDFE008();
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = sub_1AFDFCE58();

    if (v8)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  return v7;
}

uint64_t sub_1AF491C10()
{
  if (qword_1EB6373B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C3698;

  v1 = sub_1AFC6E244();
  sub_1AF48F810(v1, sub_1AF56E184);
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  v2 = sub_1AFDFE108();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1AFDFE008();
  v3 = 0;
  while (1)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B2719C70](v3, v0);
    }

    else
    {
      v4 = *(v0 + 8 * v3 + 32);
    }

    v5 = sub_1AFDFCE58();

    if (v5)
    {
      break;
    }

    if (v2 == ++v3)
    {
      goto LABEL_11;
    }
  }

  return v4;
}

uint64_t sub_1AF491D94()
{
  v0 = sub_1AFC69AF0();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  v2 = sub_1AFDFE108();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1AFDFE008();
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B2719C70](v3, v1);
    }

    else
    {
      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = sub_1AFDFCE58();

    if (v5)
    {
      break;
    }

    if (v2 == ++v3)
    {
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t sub_1AF491EB8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6C2760;

  v4 = sub_1AF428E18(v2, v1, sub_1AF56F254);

  sub_1AF48F810(v4, sub_1AF56E184);
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  v5 = sub_1AFDFE108();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1AFDFE008();
  v6 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](v6, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = sub_1AFDFCE58();

    if (v8)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_11;
    }
  }

  return v7;
}

uint64_t sub_1AF492088()
{
  if (qword_1EB636D90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C2DC8;
  if (!(qword_1EB6C2DC8 >> 62))
  {
    v1 = *((qword_1EB6C2DC8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v1 = sub_1AFDFE108();
  if (!v1)
  {
    return 0;
  }

LABEL_5:
  sub_1AFDFE008();
  v2 = 0;
  while (1)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1B2719C70](v2, v0);
    }

    else
    {
      v3 = *(v0 + 8 * v2 + 32);
    }

    v4 = sub_1AFDFCE58();

    if (v4)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1AF4921C8(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v3 = *a3;
  if (!(*a3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v4 = sub_1AFDFE108();
  if (!v4)
  {
    return 0;
  }

LABEL_5:
  sub_1AFDFE008();
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = sub_1AFDFCE58();

    if (v7)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v6;
}