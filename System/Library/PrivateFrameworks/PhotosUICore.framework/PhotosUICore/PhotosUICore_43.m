uint64_t sub_1A4198E0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x64657461657263;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x657469726F766166;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x64657461657263;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A4198F10()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4198FB0()
{
  sub_1A524C794();
}

uint64_t sub_1A419903C()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A41990D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A419B4CC();
  *a1 = result;
  return result;
}

void sub_1A4199108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x657469726F766166;
  if (v2 != 1)
  {
    v5 = 0x64657461657263;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A4199174()
{
  sub_1A3D5F9DC();
  v0 = sub_1A524DF94();

  return v0;
}

uint64_t sub_1A41992AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1A4199300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 25) = v2;
  return result;
}

uint64_t sub_1A4199354()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

uint64_t sub_1A41993A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 32) = v1;
  return result;
}

uint64_t sub_1A41993F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 40) = v1;
  return result;
}

unint64_t sub_1A4199490()
{
  result = qword_1EB133DC0;
  if (!qword_1EB133DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DC0);
  }

  return result;
}

void sub_1A41994E4()
{
  sub_1A524B974();
  if (v0 <= 0x3F)
  {
    sub_1A524CB74();
    if (v1 <= 0x3F)
    {
      sub_1A419B518(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A41995C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A419973C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((v17 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1A4199978()
{
  result = sub_1A524B974();
  if (v1 <= 0x3F)
  {
    result = sub_1A524CB74();
    if (v2 <= 0x3F)
    {
      result = sub_1A3C3637C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4199A20(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A4199B78(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1A4199D54()
{
  result = sub_1A524B974();
  if (v1 <= 0x3F)
  {
    result = sub_1A524CB74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4199DE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A4199F34(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

id sub_1A419A19C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for LemonadeSegmentedControl.StandardPicker() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1A4194A24(a1, v5, v3);
}

void sub_1A419A278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A419A338(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A419B518(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A419A40C()
{
  if (!qword_1EB121F50)
  {
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249E64();
    sub_1A3D6E520();
    sub_1A419A504(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F50);
    }
  }
}

uint64_t sub_1A419A504(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A419A5C4()
{
  if (!qword_1EB13E210)
  {
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249544();
    sub_1A3D6E520();
    sub_1A419A504(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E210);
    }
  }
}

uint64_t sub_1A419A6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LemonadeSegmentedControl.PillPicker() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A4195BB8(a1, v8, v5, v6, a2);
}

unint64_t sub_1A419A764()
{
  result = qword_1EB133DF0;
  if (!qword_1EB133DF0)
  {
    sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
    sub_1A419A858();
    sub_1A419AB6C(&qword_1EB133E10, sub_1A419A54C, sub_1A419ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DF0);
  }

  return result;
}

unint64_t sub_1A419A858()
{
  result = qword_1EB133DF8;
  if (!qword_1EB133DF8)
  {
    sub_1A419A230(255);
    sub_1A419AB6C(&qword_1EB133E00, sub_1A419A2FC, sub_1A419A938);
    sub_1A419A504(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DF8);
  }

  return result;
}

unint64_t sub_1A419A938()
{
  result = qword_1EB133E08;
  if (!qword_1EB133E08)
  {
    sub_1A419A3D0(255);
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249E64();
    sub_1A3D6E520();
    sub_1A419A504(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1A419AA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E08);
  }

  return result;
}

unint64_t sub_1A419AA5C()
{
  result = qword_1EB1220F0;
  if (!qword_1EB1220F0)
  {
    sub_1A419B518(255, &qword_1EB127838, MEMORY[0x1E697C2B0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1220F0);
  }

  return result;
}

unint64_t sub_1A419AAE4()
{
  result = qword_1EB127888;
  if (!qword_1EB127888)
  {
    sub_1A419B518(255, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127888);
  }

  return result;
}

uint64_t sub_1A419AB6C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A419AAE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A419ABF0()
{
  result = qword_1EB133E18;
  if (!qword_1EB133E18)
  {
    sub_1A419A588(255);
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249544();
    sub_1A3D6E520();
    sub_1A419A504(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1A419AA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E18);
  }

  return result;
}

uint64_t objectdestroy_70Tm()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeSegmentedControl.PillPicker() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v3;

  v7 = sub_1A524B974();
  v8 = *(v4 + 8);
  v8(v6 + *(v7 + 32), v1);

  v8(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1A419AE84()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeSegmentedControl.PillPicker();
  v3 = *(*(v2 - 8) + 80);
  return sub_1A419B00C(v0 + ((((v3 + 32) & ~v3) + *(*(v2 - 8) + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v2);
}

uint64_t sub_1A419AF44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A419AFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A419B00C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1A524B974();
  return sub_1A524B904();
}

void sub_1A419B0DC()
{
  if (!qword_1EB133E38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133E38);
    }
  }
}

uint64_t sub_1A419B138(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A419B518(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A419B19C()
{
  result = qword_1EB133E48;
  if (!qword_1EB133E48)
  {
    sub_1A419B7FC(255, &qword_1EB133E28, &qword_1EB133E30, sub_1A419B0DC, &qword_1EB133E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E48);
  }

  return result;
}

uint64_t sub_1A419B220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A419B2A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A419B300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1A419B380(uint64_t a1)
{
  result = sub_1A419B3A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A419B3A8()
{
  result = qword_1EB1AC8C0[0];
  if (!qword_1EB1AC8C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1AC8C0);
  }

  return result;
}

unint64_t sub_1A419B400()
{
  result = qword_1EB133E50;
  if (!qword_1EB133E50)
  {
    sub_1A419B9F4(255, &qword_1EB133E58, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E50);
  }

  return result;
}

unint64_t sub_1A419B478()
{
  result = qword_1EB1ACA50[0];
  if (!qword_1EB1ACA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1ACA50);
  }

  return result;
}

uint64_t sub_1A419B4CC()
{
  v0 = sub_1A524E824();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1A419B518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A419B57C()
{
  if (!qword_1EB133E68)
  {
    sub_1A419B610();
    sub_1A419B6C0(255, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133E68);
    }
  }
}

void sub_1A419B610()
{
  if (!qword_1EB133E70)
  {
    sub_1A419B66C();
    v0 = type metadata accessor for LemonadeSegmentedControl();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133E70);
    }
  }
}

unint64_t sub_1A419B66C()
{
  result = qword_1EB1ACB60[0];
  if (!qword_1EB1ACB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1ACB60);
  }

  return result;
}

void sub_1A419B6C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E6981148]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A419B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A419B774(uint64_t a1)
{
  sub_1A419B7FC(0, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A419B7FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A419B518(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A419B138(a5, a3, a4);
    v9 = sub_1A524B894();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A419B89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A419B904(uint64_t a1, uint64_t a2)
{
  sub_1A419B7FC(0, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A419B994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A419B9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PreviewItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A419BA48()
{
  result = qword_1EB133E90;
  if (!qword_1EB133E90)
  {
    sub_1A419BAC8();
    sub_1A419BBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E90);
  }

  return result;
}

void sub_1A419BAC8()
{
  if (!qword_1EB133E98)
  {
    sub_1A419BB28();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133E98);
    }
  }
}

void sub_1A419BB28()
{
  if (!qword_1EB133EA0)
  {
    sub_1A419B7FC(255, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
    sub_1A3E73A2C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133EA0);
    }
  }
}

unint64_t sub_1A419BBBC()
{
  result = qword_1EB133EA8;
  if (!qword_1EB133EA8)
  {
    sub_1A419BB28();
    sub_1A419BC6C();
    sub_1A419A504(&qword_1EB128040, sub_1A3E73A2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133EA8);
  }

  return result;
}

unint64_t sub_1A419BC6C()
{
  result = qword_1EB133EB0;
  if (!qword_1EB133EB0)
  {
    sub_1A419B7FC(255, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133EB0);
  }

  return result;
}

uint64_t sub_1A419BCF8()
{
  v0 = sub_1A419BDA8();
  v5 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    MEMORY[0x1A5907D70]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v1 = v4;
  }

  sub_1A419BF78(&v5);
  return v1;
}

uint64_t sub_1A419BDA8()
{
  sub_1A419C0AC(0, &unk_1EB134160, off_1E7721310);
  if (([v0 allowsPreviewHeader] & 1) == 0 && MEMORY[0x1A590D320]())
  {
    sub_1A524C184();
  }

  return 0;
}

uint64_t sub_1A419BF78(uint64_t a1)
{
  sub_1A419C0AC(0, &qword_1EB133EB8, sub_1A419BFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A419BFF0()
{
  result = qword_1EB133EC0;
  if (!qword_1EB133EC0)
  {
    sub_1A524C184();
  }

  return result;
}

uint64_t sub_1A419C054()
{
  result = qword_1EB134170;
  if (!qword_1EB134170)
  {
    sub_1A524C184();
  }

  return result;
}

void sub_1A419C0AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A419C100()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    aBlock[4] = sub_1A40178A4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_115;
    v2 = _Block_copy(aBlock);
    [v1 performChanges_];
    _Block_release(v2);
  }
}

unint64_t sub_1A419C1CC()
{
  result = qword_1EB12AC38;
  if (!qword_1EB12AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AC38);
  }

  return result;
}

uint64_t sub_1A419C220@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

BOOL sub_1A419C230()
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  sub_1A419C1CC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  return v2 == v1;
}

uint64_t sub_1A419C2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  return sub_1A3C34460(a3, a4 + 24);
}

id sub_1A419C314(void *a1)
{
  result = [a1 containerCollection];
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1A419C37C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 container])
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      *a2 = result;
      v5 = 2;
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 container])
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      *a2 = result;
      v5 = 3;
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  result = [a1 containerCollection];
  if (result)
  {
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      result = [v6 px_isFeaturedPhotosCollection];
      if (!result)
      {
        *a2 = v7;
        *(a2 + 8) = 0;
        return result;
      }
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = 0;
  v5 = -1;
LABEL_14:
  *(a2 + 8) = v5;
  return result;
}

void sub_1A419C4B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v3 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
  if (v3)
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = objc_opt_self();
    v7 = v3;
    v8 = [v6 currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v15.receiver = v1;
      v15.super_class = ObjectType;
      objc_msgSendSuper2(&v15, sel_safeAreaInsets);
      sub_1A524D1D4();
    }

    v10 = v7;
    [v1 bounds];
    [v10 setFrame_];
  }
}

id sub_1A419C76C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A41A96F4(a1, v3 + OBJC_IVAR____TtCC12PhotosUICore23PhotosDynamicHeaderView8UserData_configuration);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A41A972C(a1);
  return v4;
}

id sub_1A419C7E0@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for PhotosDynamicHeaderView.UserData();
  *a1 = v3;

  return v3;
}

uint64_t sub_1A419C968()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData;
  swift_beginAccess();
  if (*&v0[v1] && (type metadata accessor for PhotosDynamicHeaderView.UserData(), (v2 = swift_dynamicCastClass()) != 0))
  {
    sub_1A41A96F4(v2 + OBJC_IVAR____TtCC12PhotosUICore23PhotosDynamicHeaderView8UserData_configuration, v47);
  }

  else
  {
    memset(v47, 0, sizeof(v47));
  }

  v3 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration;
  swift_beginAccess();
  sub_1A41AB3F8(&v0[v3], v46, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  swift_beginAccess();
  sub_1A41AC610(v47, &v0[v3], &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration, MEMORY[0x1E69E6720], sub_1A41ACB80);
  swift_endAccess();
  v4 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration;
  swift_beginAccess();
  sub_1A41AB3F8(&v0[v4], &v56, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  sub_1A41AB3F8(v46, v58, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (!v56)
  {
    if (!*&v58[0])
    {
      sub_1A41AA7D0(&v56, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
      goto LABEL_42;
    }

    goto LABEL_12;
  }

  sub_1A41AB3F8(&v56, &v52, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (!*&v58[0])
  {
    sub_1A41A972C(&v52);
LABEL_12:
    sub_1A41AC4E8(&v56, sub_1A41AC548);
    goto LABEL_13;
  }

  v48 = v58[0];
  v49 = v58[1];
  v50 = v58[2];
  v51 = v58[3];
  v5 = sub_1A41A93B0(&v52, &v48);
  sub_1A41A972C(&v48);
  sub_1A41A972C(&v52);
  sub_1A41AA7D0(&v56, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (v5)
  {
    goto LABEL_42;
  }

LABEL_13:
  sub_1A41AB3F8(&v0[v4], &v52, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (v52)
  {
    v56 = v52;
    v57[0] = v53;
    v57[1] = v54;
    v57[2] = v55;
    v6 = [v52 fullscreenOverlayControllers];
    if (v6)
    {

      v7 = BYTE8(v56);
      v8 = *&v57[0];
      v9 = v56;
      sub_1A49107E4(v8, &v52);
      v10 = v52;
      v11 = BYTE8(v52);
      v12 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView;
      v13 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
      if (v13 && (v14 = v13 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration, v15 = *v14, v16 = *(v14 + 8), v17 = *(v14 + 16), v18 = *(v14 + 24), v45 = *v14, swift_unknownObjectRetain(), v15))
      {
        *&v52 = v15;
        *(&v52 + 1) = v16;
        *&v53 = v17;
        BYTE8(v53) = v18;
        if (v9)
        {
          *&v48 = v9;
          BYTE8(v48) = v7;
          *&v49 = v10;
          BYTE8(v49) = v11;
          swift_unknownObjectRetain();
          v19 = v9;
          v44 = v11;
          v20 = v9;
          v21 = v7;
          v22 = v19;
          sub_1A41AC684(v15);
          v43 = sub_1A41AA388(&v52, &v48);

          v7 = v21;
          v9 = v20;
          v11 = v44;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          sub_1A41AC5D0(v15);
          if ((v43 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_31:
          v32 = *&v0[v12];
          if (v32)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }

        swift_unknownObjectRetain();
        sub_1A41AC684(v15);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
        if (!v9)
        {
          sub_1A41AC5D0(0);
          goto LABEL_31;
        }

        v31 = v9;
        v15 = 0;
      }

      sub_1A41AC5D0(v15);
      sub_1A41AC5D0(v9);
LABEL_35:
      v33 = *&v0[v12];
      *&v0[v12] = 0;
      if (v33)
      {
        [v33 removeFromSuperview];
        v34 = *&v0[v12];
        if (v34)
        {
          v35 = v11;
          v36 = v9;
          v37 = v7;
          v38 = v34;
          [v0 addSubview_];
          [v0 setNeedsLayout];

          v7 = v37;
          v9 = v36;
          v11 = v35;
        }

        v32 = *&v0[v12];
        if (v32)
        {
LABEL_39:
          sub_1A3C341C8(v57 + 8, &v52);
          v40 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets;
          swift_beginAccess();
          sub_1A3C5DA30(v32 + v40, &v48, &unk_1EB12AC08, &unk_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
          swift_beginAccess();
          v41 = v32;
          sub_1A41AC610(&v52, v32 + v40, &unk_1EB12AC08, &unk_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
          swift_endAccess();
          sub_1A419E1B0(&v48);
        }
      }

LABEL_40:
      *&v52 = v9;
      BYTE8(v52) = v7;
      *&v53 = v10;
      BYTE8(v53) = v11;
      objc_allocWithZone(type metadata accessor for PhotosDynamicHeaderContentView(0));
      swift_unknownObjectRetain();
      v39 = v9;
      sub_1A419D554();
    }

    v27 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView;
    v28 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
    *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView] = 0;
    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = *&v0[v27];
      if (v29)
      {
        v30 = v29;
        [v0 addSubview_];
        [v0 setNeedsLayout];
      }
    }

    sub_1A41A972C(&v56);
  }

  else
  {
    sub_1A41AA7D0(&v52, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
    v23 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView;
    v24 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
    *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView] = 0;
    if (v24)
    {
      [v24 removeFromSuperview];
      v25 = *&v0[v23];
      if (v25)
      {
        v26 = v25;
        [v0 addSubview_];
        [v0 setNeedsLayout];
      }
    }
  }

LABEL_42:
  sub_1A41AA7D0(v46, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  return sub_1A41AA7D0(v47, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
}

id sub_1A419D400(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration];
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *&v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData] = 0;
  v5 = &v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_clippingRect];
  *v5 = 0u;
  v5[1] = 0u;
  v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_isFloating] = 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1A419E1B0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets);
  swift_beginAccess();
  v4 = v3[3];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    *(&v25 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v24);
    sub_1A524E424();
    (*(v6 + 8))(v9, v4);
    v10 = *(&v25 + 1);
    v11 = AssociatedConformanceWitness;
    v12 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    *(&v28 + 1) = v10;
    v29 = *(v11 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
    __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  sub_1A3C5DA30(a1, v22, &unk_1EB12AC08, &unk_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_1A524E424();
    v14 = AssociatedTypeWitness;
    v15 = v21;
    v16 = __swift_project_boxed_opaque_existential_1(v19, AssociatedTypeWitness);
    *(&v25 + 1) = v14;
    AssociatedConformanceWitness = *(v15 + 8);
    v17 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    __swift_destroy_boxed_opaque_existential_0(v19);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    sub_1A41AB614(v22, &unk_1EB12AC08, &unk_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
    v24 = 0u;
    v25 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_1A5246794();
}

id sub_1A419E648(id result)
{
  v2 = &v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding];
  v3 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding];
  v4 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding + 16];
  v5 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1A419E6B0(uint64_t a1)
{
  if ((a1 & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  v3 = [*&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel] appearState];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 1;
LABEL_10:
      sub_1A419E868(v4);
      goto LABEL_11;
    }

    if (v3 != 3)
    {
LABEL_21:
      type metadata accessor for PXViewControllerAppearState(0);
      sub_1A524EB44();
      __break(1u);
      return;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((a1 & 0x2000000000000) == 0 || !sub_1A419F578(1, 0))
  {
LABEL_16:
    if ((a1 & 0x800000000000) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = v5;

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 viewModel];
    swift_unknownObjectRelease();
    if (v9)
    {
      v11[4] = sub_1A41ACC14;
      v11[5] = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1A3D59380;
      v11[3] = &block_descriptor_338;
      v10 = _Block_copy(v11);
      [v9 performChanges_];
      _Block_release(v10);
    }

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  if ((a1 & 0x800000000000) != 0)
  {
LABEL_17:
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1A419E868(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear) = result;
  if (v2 != (result & 1))
  {
    v3 = ([*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationState) visibilityState] != 3) & result;
    if (sub_1A419F578(1, 0))
    {
      v6 = v4;

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 viewModel];
        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = [v8 isPerformingAnyExportOperation];

          v3 = (v9 ^ 1) & v3;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return sub_1A419E980(v3);
  }

  return result;
}

uint64_t sub_1A419E980(uint64_t result)
{
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive;
  v3 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive];
  v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive] = result;
  if (v3 != (result & 1))
  {
    result = [v1 setNeedsLayout];
    if (v1[v2] != 1)
    {
      if (sub_1A419F578(0, 0))
      {
        v7 = v4;
        v8 = v5;

        ObjectType = swift_getObjectType();
        (*(v7 + 48))(0, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      result = sub_1A419F578(1, 0);
      if (result)
      {
        v13 = v10;
        v14 = v11;

        v15 = swift_getObjectType();
        (*(v13 + 48))(0, v15, v13);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1A419F484()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___allowedMovieChromeItems);
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___allowedMovieChromeItems + 8) != 1)
  {
    return *v1;
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 movieCurationAffordance];

  if (v3 == 1)
  {
    result = 3158227968;
  }

  else
  {
    result = 3024010240;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1A419F530()
{
  if (*v0)
  {
    return 0x6569766F4DLL;
  }

  else
  {
    return 0x77656976657250;
  }
}

uint64_t sub_1A419F578(char a1, char a2)
{
  v3 = v2;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 enableSolariumDetailsView];

  if (v7 && (a1 & 1) != 0)
  {
    if (qword_1EB15B6F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB15B6F8);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "unexpectedly attempting to load movie", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    return 0;
  }

  v12 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_storyContentsByKind;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16) || (v14 = sub_1A3C345C4(a1 & 1), (v15 & 1) == 0))
  {
    if (a2)
    {
      sub_1A419EAA8();
    }

    return 0;
  }

  v16 = *(v13 + 56) + 32 * v14;
  v17 = *v16;
  v18 = *(v16 + 24);
  v19 = *(v16 + 16);
  v20 = v18;
  swift_unknownObjectRetain();
  return v17;
}

uint64_t sub_1A419F8BC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_storyContentsByKind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v21 = *(v0 + v1);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v21 + 56) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      ObjectType = swift_getObjectType();
      v22 = *(v15 + 40);
      v23 = ObjectType;
      v19 = v16;
      v20 = v17;
      swift_unknownObjectRetain();
      if (v22(v23, v15))
      {
        break;
      }

      v8 &= v8 - 1;

      result = swift_unknownObjectRelease();
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A419FA80()
{
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1A3EA52F4(0, 0, v2, &unk_1A53221D0, v7);
}

uint64_t sub_1A419FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A419FCB8, v6, v5);
}

uint64_t sub_1A419FCB8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong setNeedsLayout];
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_1A419FDFC()
{
  v1 = v0;
  v2 = sub_1A5247CF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v161 - v7;
  v9 = sub_1A52425F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v173 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v161 - v13;
  v15 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets;
  swift_beginAccess();
  sub_1A3C5DA30(&v1[v15], &aBlock, &unk_1EB12AC08, &unk_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
  if (!v177)
  {
    sub_1A41AB614(&aBlock, &unk_1EB12AC08, &unk_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
    return;
  }

  v170 = v8;
  v167 = v5;
  v168 = v3;
  v169 = v2;
  sub_1A3C34460(&aBlock, v180);
  v16 = [v1 bounds];
  v17 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_overlayController];
  v18 = *(*v17 + 152);
  v172 = v19;
  v171 = v20;
  v18(v16, v19, v20);
  v21 = v181;
  v22 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v23 = (*(v22 + 24))(v21, v22);
  (*(*v17 + 176))(v23);
  v24 = v181;
  v25 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v26 = (*(v25 + 32))(v24, v25);
  (*(*v17 + 200))(v26);
  v27 = v181;
  v28 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v29 = (*(v28 + 40))(v27, v28);
  (*(*v17 + 224))(v29);
  v30 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 8];
  LOBYTE(v27) = [objc_opt_self() isReduceTransparencyEnabled];
  sub_1A3C52C70(0, &qword_1EB126A10);
  v31 = [swift_getObjCClassFromMetadata() sharedInstance];
  v32 = [v31 enableSolariumDetailsView];

  if (v27)
  {
    v33 = v30;
    (*(*v17 + 248))(0);
  }

  else
  {
    v33 = v30;
    v35 = v30 == 0;
    v36 = v32 ^ 1;
    if (v35)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    (*(*v17 + 248))(v37);
    v38 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel];
    v39 = [v38 currentDataSource];
    v40 = [v39 containsAnyItems];

    if ((v40 & 1) != 0 || (v41 = [v1 traitCollection], v42 = objc_msgSend(v41, sel_userInterfaceStyle), v41, v42 == 2))
    {
      v34 = ([v38 allowsPreviewHeader] | v36) & (v33 == 0);
      goto LABEL_12;
    }
  }

  v34 = 0;
LABEL_12:
  v43 = (*(*v17 + 272))(v34);
  v44 = (*(*v17 + 288))(v43);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = (*(*v17 + 296))();
  v52 = v51;
  if (v51 <= 0.0)
  {
    v53 = v181;
    v54 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v54 + 40))(v53, v54);
    v51 = 0.0;
    if (v55 >= 0.0)
    {
      v51 = 1.0 - v48 / v55;
    }
  }

  v56 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model];
  *&aBlock = v51;
  BYTE8(aBlock) = v52 <= 0.0;
  (*(*v56 + 304))(&aBlock);
  v57 = (*(*v56 + 328))(1);
  v58 = 0.0;
  if (MEMORY[0x1A590D320](v57))
  {
    v59 = v181;
    v60 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v60 + 24))(v59, v60);
    v62 = v61;
    v63 = v181;
    v64 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v64 + 32))(v63, v64);
    if (v62 - v65 <= 0.0)
    {
      v58 = v62 - v65;
    }

    else
    {
      v58 = 0.0;
    }
  }

  [v1 bounds];
  v185.origin.x = UIEdgeInsetsInsetRect(v66, v67, v68, v69, v44, v46);
  v186 = CGRectOffset(v185, 0.0, v58);
  v71 = *MEMORY[0x1E69DDCE0];
  v72 = *(MEMORY[0x1E69DDCE0] + 8);
  v73 = *(MEMORY[0x1E69DDCE0] + 16);
  v74 = *(MEMORY[0x1E69DDCE0] + 24);
  v75 = v44 == *MEMORY[0x1E69DDCE0];
  if (v46 != v72)
  {
    v75 = 0;
  }

  if (v48 != v73)
  {
    v75 = 0;
  }

  y = v186.origin.y;
  height = v186.size.height;
  v78 = v75 && v50 == v74;
  if (v78)
  {
    v79 = -1;
  }

  else
  {
    v79 = 0;
  }

  v80 = vdupq_n_s64(v79);
  v183[0] = vbicq_s8(v186.origin, v80);
  v183[1] = vbicq_s8(v186.size, v80);
  v184 = v78 & 1;
  LODWORD(v81) = v33;
  if (!v33)
  {
    (*(*v56 + 464))();
    v82 = sub_1A52425C4();
    v83 = sub_1A419F578(0, v82 & 1);
    v165 = v9;
    if (v83)
    {
      v87 = v84;
      v163 = v85;
      v164 = 0;
      v166 = v10;
      v88 = v86;
      [v1 bounds];
      [v88 setFrame_];
      [v88 setAlpha_];
      ObjectType = swift_getObjectType();
      v90 = *(v87 + 24);
      swift_unknownObjectRetain();
      v90(v183, ObjectType, v87);
      if ((sub_1A52425E4() & 1) != 0 && v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive] == 1)
      {
        sub_1A5243304();
        sub_1A52427D4();

        v91 = v168;
        v92 = v167;
        (*(v168 + 104))(v167, *MEMORY[0x1E697BE38], v169);
        v93 = sub_1A5247CE4();
        v162 = v14;
        v94 = *(v91 + 8);
        v95 = v92;
        v96 = v169;
        v94(v95, v169);
        v94(v170, v96);
        v14 = v162;
      }

      else
      {
        v93 = 0;
      }

      v9 = v165;
      LODWORD(v81) = v164;
      (*(v87 + 48))(v93 & 1, ObjectType, v87);
      swift_unknownObjectRelease_n();

      v10 = v166;
    }

    v99 = *(v10 + 8);
    v98 = v10 + 8;
    v97 = v99;
    v100 = v99(v14, v9);
    v101 = (*(*v56 + 512))(v100);
    v102 = v173;
    (*(*v56 + 560))();
    v103 = sub_1A52425C4();
    if (sub_1A419F578(1, v103 & 1))
    {
      v107 = v104;
      v162 = v105;
      v163 = v97;
      v166 = v98;
      v108 = v106;
      [v1 bounds];
      [v108 setFrame_];
      [v108 setAlpha_];
      v109 = swift_getObjectType();
      v110 = *(v107 + 24);
      swift_unknownObjectRetain();
      v110(v183, v109, v107);
      v102 = v173;
      if ((sub_1A52425E4() & 1) != 0 && v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive] == 1)
      {
        sub_1A5243304();
        sub_1A52427D4();

        v111 = *MEMORY[0x1E697BE38];
        v164 = v81;
        v81 = v168;
        v112 = v167;
        v113 = v169;
        (*(v168 + 104))(v167, v111, v169);
        v114 = sub_1A5247CE4();
        v115 = *(v81 + 8);
        v115(v112, v113);
        v116 = v113;
        v102 = v173;
        v115(v170, v116);
        LOBYTE(v81) = v164;
      }

      else
      {
        v114 = 0;
      }

      v9 = v165;
      (*(v107 + 48))(v114 & 1, v109, v107);
      swift_unknownObjectRelease_n();

      v97 = v163;
    }

    v70 = (v97)(v102, v9);
  }

  if ((*(*v56 + 416))(v70))
  {
    LOBYTE(aBlock) = v81;
    v174 = 1;
    sub_1A41ABE60();
    v117 = sub_1A524C594() ^ 1;
  }

  else
  {
    v117 = 0;
  }

  v118 = (*(*v56 + 608))();
  if (sub_1A419F578(1, 0))
  {
    v121 = v119;

    objc_opt_self();
    v122 = swift_dynamicCastObjCClass();
    v123 = v122;
    if (v122)
    {
      [v122 setDisableGestures_];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v123 = 0;
  }

  v124 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel];
  v125 = swift_allocObject();
  *(v125 + 16) = v117 & 1;
  *(v125 + 24) = v1;
  *(v125 + 32) = v118;
  *(v125 + 40) = v123;
  v178 = sub_1A41AB674;
  v179 = v125;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v176 = COERCE_DOUBLE(sub_1A3D7692C);
  v177 = &block_descriptor_316;
  v126 = _Block_copy(&aBlock);
  v127 = v123;
  v128 = v1;

  [v124 performChanges_];
  _Block_release(v126);
  v129 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_playbackOverlayController];
  if (v129)
  {
    if (v117)
    {
      v130 = sub_1A41A1A4C();
    }

    else
    {
      v130 = 0;
    }

    (*(*v129 + 152))(v130 & 1);
  }

  v131 = v181;
  v132 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v133 = (*(v132 + 32))(v131, v132);
  v135 = v134;
  *&aBlock = v133;
  *(&aBlock + 1) = v136;
  v177 = v137;
  v138 = v181;
  v139 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v140 = (*(v139 + 48))(v138, v139);
  v176 = v135 - v141;
  v142 = &v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding];
  if ((v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding + 32] & 1) == 0)
  {
    v143 = *(v142 + 3);
    *(&aBlock + 1) = *(v142 + 1);
    v177 = v143;
  }

  MEMORY[0x1EEE9AC00](v140);
  *(&v161 - 6) = v128;
  *(&v161 - 40) = v117 & 1;
  *(&v161 - 4) = &aBlock;
  v144 = v171;
  *(&v161 - 3) = v172;
  *(&v161 - 2) = v144;
  *(&v161 - 1) = v118;
  sub_1A4016ABC(sub_1A41ABDF0);
  v145 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_overlayViewController];
  v146 = UIViewController.pxView.getter();
  [v128 bounds];
  [v146 setFrame_];
  v147 = [v145 parentViewController];
  if (!v147)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_59;
    }

    v149 = Strong;
    [Strong addChildViewController_];
    [v128 addSubview_];
    [v145 didMoveToParentViewController_];
    v147 = v149;
  }

LABEL_59:
  v150 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_movieStoryViewController];
  if (v150)
  {
    v151 = v150;
    v152 = [v151 navigationController];
    if (v152)
    {
      v153 = v152;
      v154 = [v152 view];

      if (!v154)
      {
        __break(1u);
        return;
      }

      [v154 safeAreaInsets];
      v71 = v155;
      v72 = v156;
      v73 = v157;
      v74 = v158;
    }

    [v151 setAdditionalSafeAreaInsets_];
  }

  v159 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_previewHeaderContentView];
  if (v159)
  {
    v160 = v159;
    [v160 setHidden_];
  }

  __swift_destroy_boxed_opaque_existential_0(v180);
}

BOOL sub_1A41A1008(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] != 3)
  {
    return 0;
  }

  [a1 locationInView_];
  v37.value.super.isa = 0;
  if (!UIView.point(inside:withEvent:)(__PAIR128__(v10, v9), v37))
  {
    return 0;
  }

  if ((*(**(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 416))())
  {
    if (sub_1A419F578(1, 0))
    {
      v13 = v11;

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 viewModel];
        swift_unknownObjectRelease();
        if (v15)
        {
          v35 = sub_1A41A1600;
          v36 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1A3D59380;
          v34 = &block_descriptor_310;
          v16 = _Block_copy(&aBlock);
          [v15 performChanges_];

          _Block_release(v16);
          return 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (qword_1EB1579C0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB1579C8;
    sub_1A5246F34();
    v25 = sub_1A5246F04();
    v26 = sub_1A524D244();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v27 = 136315138;
      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v18 = sub_1A41A169C();
  if (v18 == 2)
  {
    return 1;
  }

  if ((v18 & 1) == 0)
  {
    v22 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel);
    v35 = sub_1A41A14F8;
    v36 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1A3D7692C;
    v34 = &block_descriptor_307;
    v23 = _Block_copy(&aBlock);
    [v22 performChanges_];
    _Block_release(v23);
    return 1;
  }

  v19 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_previewHeaderContentView);
  if (!v19)
  {
    if (qword_1EB15B6F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1EB15B6F8);
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1A3C1C000, v28, v29, "can't navigate to 1-up because header isn't displaying any asset", v30, 2u);
      MEMORY[0x1A590EEC0](v30, -1, -1);
    }

    return 0;
  }

  v20 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel);
  v21 = v19;
  LOBYTE(v20) = sub_1A48E15E0(v20);

  return (v20 & 1) != 0;
}

id sub_1A41A1600(void *a1)
{
  v2 = [a1 wantsChromeVisible] ^ 1;

  return [a1 setWantsChromeVisible_];
}

uint64_t sub_1A41A169C()
{
  (*(**(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 296))(&v4);
  if ((v5 & 1) == 0 && v4 > 0.001)
  {
    return 2;
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v2 enableSolariumDetailsView];

  return v1;
}

void sub_1A41A176C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosDynamicHeaderContentView(0);
  objc_msgSendSuper2(&v3, sel_willMoveToWindow_, a1);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41A1970()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    if ([v5 viewMode] == 2 && objc_msgSend(v5, sel_isInSelectMode))
    {

      return 0;
    }

    v6 = [v5 wantsChromeVisible];

    return v6;
  }

  return result;
}

uint64_t sub_1A41A1A4C()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v4 = v2;

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 viewModel];
      swift_unknownObjectRelease();
      if (v6)
      {
        if (([v6 chromeItemsToBeDisplayedExternally] & 4) != 0)
        {
          v7 = [*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel) currentDataSource];
          v8 = [v7 containsAnyItems];

          return v8;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

__n128 sub_1A41A1B3C()
{
  if (!sub_1A419F578(1, 0))
  {
    return result;
  }

  v3 = v0;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return result;
  }

  v5 = [v4 viewModel];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return result;
  }

  if (([v5 chromeItemsToBeDisplayedExternally] & 0x200) != 0)
  {
    v7 = sub_1A41A328C();
    v8 = sub_1A3C5A374();
    PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)(0xD00000000000001DLL, 0x80000001A53CB230, v7, v8 & 1, 0xD00000000000001DLL, 0x80000001A53CB250, &v26);
    v9 = sub_1A41A8B08(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1A41A8B08((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v6 = v9;
    v12 = &v9[104 * v11];
    v13 = v31;
    *(v12 + 6) = v30;
    *(v12 + 7) = v13;
    *(v12 + 16) = v32;
    v14 = v27;
    *(v12 + 2) = v26;
    *(v12 + 3) = v14;
    v15 = v29;
    *(v12 + 4) = v28;
    *(v12 + 5) = v15;
    if (!MEMORY[0x1A590D320]())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!MEMORY[0x1A590D320]())
    {
      goto LABEL_16;
    }
  }

  v16 = [v5 viewMode];
  if (v16 == 2)
  {
    if (([v5 chromeItems] & 0x20000) != 0)
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0x747475426B636162, 0xEA00000000006E6FLL, 0xD000000000000010, 0x80000001A53CB1B0, 1, 0x747475426B636142, 0xEA00000000006E6FLL, sub_1A41AB478, &v26, v18);
      goto LABEL_18;
    }

LABEL_16:

    return result;
  }

  if (v16 != 4)
  {
    goto LABEL_16;
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000013, 0x80000001A53CB1D0, 0xD000000000000016, 0x80000001A53CB1F0, 1, 0xD000000000000015, 0x80000001A53CB210, sub_1A41AB498, &v26, v17);
LABEL_18:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1A41A8B08(0, *(v6 + 2) + 1, 1, v6);
  }

  v20 = *(v6 + 2);
  v19 = *(v6 + 3);
  if (v20 >= v19 >> 1)
  {
    v6 = sub_1A41A8B08((v19 > 1), v20 + 1, 1, v6);
  }

  *(v6 + 2) = v20 + 1;
  v21 = &v6[104 * v20];
  v22 = v26;
  v23 = v28;
  *(v21 + 3) = v27;
  *(v21 + 4) = v23;
  *(v21 + 2) = v22;
  result = v29;
  v24 = v30;
  v25 = v31;
  *(v21 + 16) = v32;
  *(v21 + 6) = v24;
  *(v21 + 7) = v25;
  *(v21 + 5) = result;
  return result;
}

id sub_1A41A1EEC(void *a1)
{
  [a1 setViewMode_];

  return [a1 rewindToBeginningOfCurrentSegment];
}

uint64_t sub_1A41A1F38()
{
  if (!sub_1A419F578(1, 0))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0;

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v4 = [v3 viewModel];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (sub_1A419F578(1, 0))
  {
    v7 = v5;

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 viewModel];
      swift_unknownObjectRelease();
      v10 = [v9 actionPerformer];

      if (v10)
      {
        v11 = [v4 chromeItemsToBeDisplayedExternally];
        if ((v11 & 0x40000000) != 0 && (v12 = sub_1A41A354C()) != 0)
        {
          v13 = v12;
          v14 = sub_1A3C5A374();
          PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)(0xD000000000000013, 0x80000001A53CB170, v13, v14 & 1, 0xD000000000000013, 0x80000001A53CB190, &v89);
          v15 = sub_1A41A8B08(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v17 = *(v15 + 2);
          v16 = *(v15 + 3);
          if (v17 >= v16 >> 1)
          {
            v15 = sub_1A41A8B08((v16 > 1), v17 + 1, 1, v15);
          }

          *(v15 + 2) = v17 + 1;
          v18 = &v15[104 * v17];
          v19 = v94;
          *(v18 + 6) = v93;
          *(v18 + 7) = v19;
          *(v18 + 16) = v95;
          v20 = v90;
          *(v18 + 2) = v89;
          *(v18 + 3) = v20;
          v21 = v92;
          *(v18 + 4) = v91;
          *(v18 + 5) = v21;
          if ((v11 & 0x1000000) == 0)
          {
LABEL_12:
            if ((v11 & 0x10000) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
          if ((v11 & 0x1000000) == 0)
          {
            goto LABEL_12;
          }
        }

        if ([v4 isMuted])
        {
          v22 = 0xED00006873616C73;
        }

        else
        {
          v22 = 0xEE00322E65766177;
        }

        v23 = swift_allocObject();
        *(v23 + 16) = v10;
        swift_unknownObjectRetain();
        PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000010, 0x80000001A53CB130, 0x2E72656B61657073, v22, 1, 0xD000000000000010, 0x80000001A53CB150, sub_1A41AB3E8, &v89, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
        }

        v25 = *(v15 + 2);
        v24 = *(v15 + 3);
        if (v25 >= v24 >> 1)
        {
          v15 = sub_1A41A8B08((v24 > 1), v25 + 1, 1, v15);
        }

        *(v15 + 2) = v25 + 1;
        v26 = &v15[104 * v25];
        v27 = v89;
        v28 = v91;
        *(v26 + 3) = v90;
        *(v26 + 4) = v28;
        *(v26 + 2) = v27;
        v29 = v92;
        v30 = v93;
        v31 = v94;
        *(v26 + 16) = v95;
        *(v26 + 6) = v30;
        *(v26 + 7) = v31;
        *(v26 + 5) = v29;
        if ((v11 & 0x10000) == 0)
        {
LABEL_13:
          if ((sub_1A419F484() & 0x2000000) == 0)
          {
LABEL_38:
            v53 = [objc_opt_self() isMemoryCreationButtonInWatchNextEnabled];
            if ((v11 & 0x100000000) != 0)
            {
              if (v53)
              {
                v54 = [v4 generativeStoryInWatchNextController];
                sub_1A524E0B4();
                swift_unknownObjectRelease();
                type metadata accessor for GenerativeStoryInWatchNextController();
                v53 = swift_dynamicCast();
                if (v53)
                {
                  v55 = sub_1A524C634();
                  v56 = PXMemoryCreationLocalizedString(v55);

                  v57 = sub_1A524C674();
                  v59 = v58;

                  v60 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  PhotosBarButtonItem.init(id:title:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000014, 0x80000001A53BACB0, v57, v59, 1, 0xD000000000000032, 0x80000001A53CB070, sub_1A41AB378, &v89, v60);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
                  }

                  v62 = *(v15 + 2);
                  v61 = *(v15 + 3);
                  if (v62 >= v61 >> 1)
                  {
                    v15 = sub_1A41A8B08((v61 > 1), v62 + 1, 1, v15);
                  }

                  *(v15 + 2) = v62 + 1;
                  v63 = &v15[104 * v62];
                  v64 = v89;
                  v65 = v91;
                  *(v63 + 3) = v90;
                  *(v63 + 4) = v65;
                  *(v63 + 2) = v64;
                  v66 = v92;
                  v67 = v93;
                  v68 = v94;
                  *(v63 + 16) = v95;
                  *(v63 + 6) = v67;
                  *(v63 + 7) = v68;
                  *(v63 + 5) = v66;
                }
              }
            }

            if (!MEMORY[0x1A590D320](v53) || [v4 viewMode] != 2)
            {
              goto LABEL_55;
            }

            if (([v4 chromeItems] & 0x80000000) != 0)
            {
              v69 = swift_allocObject();
              *(v69 + 16) = v10;
              swift_unknownObjectRetain();
              PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000012, 0x80000001A53CB030, 0x72616D6B63656863, 0xE90000000000006BLL, 1, 0x73417463656C6553, 0xEC00000073746573, sub_1A41AB358, &v89, v69);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
              }

              v71 = *(v15 + 2);
              v70 = *(v15 + 3);
              if (v71 >= v70 >> 1)
              {
                v15 = sub_1A41A8B08((v70 > 1), v71 + 1, 1, v15);
              }

              *(v15 + 2) = v71 + 1;
              v72 = &v15[104 * v71];
              v73 = v89;
              v74 = v91;
              *(v72 + 3) = v90;
              *(v72 + 4) = v74;
              *(v72 + 2) = v73;
              v75 = v92;
              v76 = v93;
              v77 = v94;
              *(v72 + 16) = v95;
              *(v72 + 6) = v76;
              *(v72 + 7) = v77;
              *(v72 + 5) = v75;
            }

            if (([v4 chromeItems] & 0x20000000) != 0)
            {
              v79 = swift_allocObject();
              *(v79 + 16) = v10;
              swift_unknownObjectRetain();
              PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0x6F746F6850646461, 0xEF6E6F7474754273, 1937075312, 0xE400000000000000, 1, 0x7465737341646441, 0xE900000000000073, sub_1A41AB338, &v89, v79);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
              }

              v81 = *(v15 + 2);
              v80 = *(v15 + 3);
              if (v81 >= v80 >> 1)
              {
                v15 = sub_1A41A8B08((v80 > 1), v81 + 1, 1, v15);
              }

              swift_unknownObjectRelease();

              *(v15 + 2) = v81 + 1;
              v82 = &v15[104 * v81];
              v83 = v89;
              v84 = v91;
              *(v82 + 3) = v90;
              *(v82 + 4) = v84;
              *(v82 + 2) = v83;
              v85 = v92;
              v86 = v93;
              v87 = v94;
              *(v82 + 16) = v95;
              *(v82 + 6) = v86;
              *(v82 + 7) = v87;
              *(v82 + 5) = v85;
            }

            else
            {
LABEL_55:

              swift_unknownObjectRelease();
            }

            return v15;
          }

LABEL_31:
          sub_1A3C52C70(0, &qword_1EB126860);
          v41 = [swift_getObjCClassFromMetadata() sharedInstance];
          v42 = [v41 centralizedFeedbackUI];

          if (!v42)
          {
            v43 = sub_1A41A37D4();
            if (v43)
            {
              v44 = v43;
              PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)(0xD000000000000015, 0x80000001A53CB0B0, v44, 0, 0xD000000000000018, 0x80000001A53CB0D0, &v89);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
              }

              v46 = *(v15 + 2);
              v45 = *(v15 + 3);
              if (v46 >= v45 >> 1)
              {
                v15 = sub_1A41A8B08((v45 > 1), v46 + 1, 1, v15);
              }

              *(v15 + 2) = v46 + 1;
              v47 = &v15[104 * v46];
              v48 = v89;
              v49 = v91;
              *(v47 + 3) = v90;
              *(v47 + 4) = v49;
              *(v47 + 2) = v48;
              v50 = v92;
              v51 = v93;
              v52 = v94;
              *(v47 + 16) = v95;
              *(v47 + 6) = v51;
              *(v47 + 7) = v52;
              *(v47 + 5) = v50;
            }
          }

          goto LABEL_38;
        }

LABEL_26:
        v32 = swift_allocObject();
        *(v32 + 16) = v10;
        swift_unknownObjectRetain();
        PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000014, 0x80000001A53CB0F0, 0x74616D616C637865, 0xEF6B72616D6E6F69, 1, 0xD000000000000014, 0x80000001A53CB110, sub_1A41AB3C8, &v89, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
        }

        v34 = *(v15 + 2);
        v33 = *(v15 + 3);
        if (v34 >= v33 >> 1)
        {
          v15 = sub_1A41A8B08((v33 > 1), v34 + 1, 1, v15);
        }

        *(v15 + 2) = v34 + 1;
        v35 = &v15[104 * v34];
        v36 = v89;
        v37 = v91;
        *(v35 + 3) = v90;
        *(v35 + 4) = v37;
        *(v35 + 2) = v36;
        v38 = v92;
        v39 = v93;
        v40 = v94;
        *(v35 + 16) = v95;
        *(v35 + 6) = v39;
        *(v35 + 7) = v40;
        *(v35 + 5) = v38;
        if ((sub_1A419F484() & 0x2000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A41A29E0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1A41AB3F8(a1, v13, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  [a2 performActionForChromeActionMenuItem:a3 withValue:0 sender:v11 presentationSource:0];
  return swift_unknownObjectRelease();
}

uint64_t sub_1A41A2B48()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 viewModel];
      swift_unknownObjectRelease();
      if (!v5)
      {
        return 0;
      }

      v6 = [v5 viewMode];
      if (v6 == 2 || v6 == 4)
      {
LABEL_6:

        return 0;
      }

      sub_1A41A1970();
      v7 = [v5 wantsRelatedOverlayVisible];

      if (v7)
      {
        return 0;
      }

      result = sub_1A419F578(1, 0);
      if (!result)
      {
        return result;
      }

      v10 = v8;

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v5 = [v11 viewModel];
        swift_unknownObjectRelease();
        if (!v5)
        {
          return 0;
        }

        if (([v5 chromeItemsToBeDisplayedExternally] & 0x200) == 0)
        {
          v12 = sub_1A41A328C();

          return v12;
        }

        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_1A41A2CA8()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 viewMode];
    if (v6 == 2 || v6 == 4)
    {
LABEL_6:

      return 0;
    }

    sub_1A41A1970();
    v7 = [v5 wantsRelatedOverlayVisible];

    if (v7)
    {
      return 0;
    }

    v8 = sub_1A41A354C();
    if (v8)
    {
      v5 = v8;
      if (!sub_1A419F578(1, 0))
      {
        goto LABEL_6;
      }

      v11 = v9;

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 viewModel];
        swift_unknownObjectRelease();
        if (v13)
        {
          v14 = [v13 chromeItemsToBeDisplayedExternally];

          if ((v14 & 0x40000000) == 0)
          {
            return v5;
          }
        }

        goto LABEL_6;
      }

LABEL_17:
      swift_unknownObjectRelease();
      return 0;
    }

    result = sub_1A41A37D4();
    if (!result)
    {
      return sub_1A41A3218();
    }
  }

  return result;
}

uint64_t sub_1A41A2E28()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
LABEL_7:
      swift_unknownObjectRelease();
      return 0;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 viewMode];
    if (v6 == 2 || v6 == 4)
    {

      return 0;
    }

    sub_1A41A1970();
    v7 = [v5 wantsRelatedOverlayVisible];

    if (v7)
    {
      return 0;
    }

    result = sub_1A419F578(1, 0);
    if (result)
    {
      v10 = v8;

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 viewModel];
        swift_unknownObjectRelease();
        if (v12)
        {
          if (([v12 chromeItemsToBeDisplayedExternally] & 0x200) == 0)
          {
            sub_1A41ACB80(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_1A52F9790;
            *(v13 + 32) = sub_1A41A338C();

            return v13;
          }
        }

        return 0;
      }

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1A41A2FE4()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 viewMode];
    if (v6 == 2 || v6 == 4)
    {

      return 0;
    }

    sub_1A41A1970();
    v7 = [v5 wantsRelatedOverlayVisible];

    if (v7)
    {
      return 0;
    }

    v8 = sub_1A41A3690();
    if (v8)
    {
      v9 = v8;
      if (!sub_1A419F578(1, 0))
      {
LABEL_22:

        return 0;
      }

      v12 = v10;

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 viewModel];
        swift_unknownObjectRelease();
        if (v14)
        {
          if (([v14 chromeItemsToBeDisplayedExternally] & 0x40000000) == 0)
          {
            sub_1A41ACB80(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_1A52F9790;
            *(v15 + 32) = v9;

            return v15;
          }
        }

        goto LABEL_22;
      }

LABEL_7:
      swift_unknownObjectRelease();
      return 0;
    }

    v16 = sub_1A41A3998();
    if (v16)
    {
      v17 = v16;
      sub_1A41ACB80(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      result = swift_allocObject();
      *(result + 16) = xmmword_1A52F9790;
      *(result + 32) = v17;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

id sub_1A41A3218()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A41A328C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherButton);
  if (!v1)
  {
    sub_1A3C52C70(0, &qword_1EB126570);
    v3 = swift_allocObject();
    swift_unknownObjectUnownedInit();

    sub_1A4112CF0(0xD000000000000012, 0x80000001A53C8330, 0, 0, sub_1A41AB204, v3);
  }

  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherButton);
  v4 = v1;
  return v2;
}

id sub_1A41A338C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126B80);
    sub_1A3C52C70(0, &qword_1EB126590);
    v4 = sub_1A524C634();
    v5 = [objc_opt_self() _systemImageNamed_];

    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = v6;
    v7 = v0;
    sub_1A524DC64();
    v8 = sub_1A524D2F4();
    v9 = sub_1A524C634();
    [v8 setAccessibilityIdentifier_];

    v10 = *(v7 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1A41A354C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationButton;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationButton);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 movieCurationAffordance];

  v3 = 0;
  if (v5 != 2)
  {
LABEL_7:
    v12 = *(v0 + v1);
    *(v0 + v1) = v3;
    v13 = v3;
    sub_1A3C327F4(v12);
LABEL_8:
    sub_1A3C327E4(v2);
    return v3;
  }

  result = sub_1A419F578(1, 0);
  if (result)
  {
    v9 = v7;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      result = swift_unknownObjectRelease();
      if (v11)
      {
        type metadata accessor for StoryViewCurationButton(0);
        v3 = StoryViewCurationButton.__allocating_init(storyViewModel:)(v11);
        goto LABEL_7;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41A3690()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationBarButtonItem);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 movieCurationAffordance];

  v3 = 0;
  if (v5 != 2)
  {
LABEL_7:
    v12 = *(v0 + v1);
    *(v0 + v1) = v3;
    v13 = v3;
    sub_1A3C327F4(v12);
LABEL_8:
    sub_1A3C327E4(v2);
    return v3;
  }

  result = sub_1A419F578(1, 0);
  if (result)
  {
    v9 = v7;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      result = swift_unknownObjectRelease();
      if (v11)
      {
        type metadata accessor for StoryViewCurationBarButtonItem(0);
        v3 = StoryViewCurationBarButtonItem.__allocating_init(storyViewModel:)(v11);
        goto LABEL_7;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41A37D4()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 centralizedFeedbackUI];

  if (!v2 && !*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v4 = result;
    swift_unknownObjectRetain_n();
    if ([v4 isGenerative])
    {
      if (sub_1A41A4A2C())
      {
        type metadata accessor for GenerativeStoryFeedbackButton();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1A47562D4();
      }
    }

    swift_unknownObjectRelease_n();
  }

  return 0;
}

void *sub_1A41A3998()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___feedbackBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___feedbackBarButtonItem);
  v3 = v2;
  if (v2 == 1)
  {
    sub_1A3C52C70(0, &qword_1EB126860);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 centralizedFeedbackUI];

    if (!v5 && !*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24))
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
        goto LABEL_5;
      }

      swift_unknownObjectRetain_n();
      if ([v3 isGenerative])
      {
        v9 = sub_1A41A4A2C();
        if (v9)
        {
          v10 = v9;
          sub_1A3C52C70(0, &qword_1EB126B80);
          v11 = sub_1A524C634();
          v12 = [objc_opt_self() systemImageNamed_];

          static GenerativeStoryFeedbackMenuFactory.makeMenu(memory:actionPerformer:invertedOrder:presentationPrepareHandler:)(v3, v10, 1, 0, 0);
          v3 = sub_1A524D2F4();

          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v3 = 0;
        }

        goto LABEL_5;
      }

      swift_unknownObjectRelease_n();
    }

    v3 = 0;
LABEL_5:
    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1A3C327F4(v6);
  }

  sub_1A3C327E4(v2);
  return v3;
}

uint64_t sub_1A41A3BA0()
{
  v1 = v0;
  sub_1A3C7D010(0, &unk_1EB134160, off_1E7721310, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  if (sub_1A419F578(1, 0))
  {
    v6 = v4;

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 viewModel];
      swift_unknownObjectRelease();
      if (v8)
      {
        PXStoryViewModel.currentlyAvailableMenuActions.getter();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1A3C52C70(0, &qword_1EB126860);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 centralizedFeedbackUI];

  if (v10 == 1 && !*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRetain();
      if ([v12 isGenerative] && (v13 = sub_1A41A4A2C()) != 0)
      {
        v14 = v13;
        (*((*MEMORY[0x1E69E7D40] & *v13) + 0x78))(3, 0);
        if (v15)
        {

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

uint64_t sub_1A41A425C(uint64_t a1, void *a2, void *a3)
{
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1A41A45B0();
  }

  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1A524CC54();
  v11 = a2;
  v12 = a3;
  v13 = sub_1A524CC44();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  sub_1A3D4D930(0, 0, v7, &unk_1A5322190, v14);
}

uint64_t sub_1A41A43E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1A524CC54();
  v5[3] = sub_1A524CC44();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1A3E5387C;

  return PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(3, a5, PXDisplayCollectionDetailedCountsMake, 0);
}

uint64_t sub_1A41A44C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A41A9214(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1A41A45B0()
{
  if (sub_1A419F578(1, 0))
  {
    v2 = v0;

    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 viewModel];
      swift_unknownObjectRelease();
      if (v4)
      {
        v6[4] = sub_1A4173E38;
        v6[5] = 0;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 1107296256;
        v6[2] = sub_1A3D59380;
        v6[3] = &block_descriptor_261;
        v5 = _Block_copy(v6);
        [v4 performChanges_];
        _Block_release(v5);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A41A46DC(char a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v9 = v7;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      result = swift_unknownObjectRelease();
      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = a1 & 1;
        *(v12 + 24) = a2;
        *(v12 + 32) = a3;
        v13[4] = sub_1A41AAE70;
        v13[5] = v12;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 1107296256;
        v13[2] = sub_1A3D59380;
        v13[3] = &block_descriptor_258;
        _Block_copy(v13);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A41A4860()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCustomExcludedActionTypes);
  if (v1 == 1)
  {
    sub_1A41ACB80(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FF950;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v3;
    *(inited + 48) = sub_1A524C674();
    *(inited + 56) = v4;
    *(inited + 64) = sub_1A524C674();
    *(inited + 72) = v5;
    sub_1A5246784();
  }

  sub_1A41AAE60(v1);
  return v1;
}

void *sub_1A41A497C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___customBannerView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___customBannerView);
  v3 = v2;
  if (v2 == 1)
  {
    swift_unknownObjectRetain();
    v3 = sub_1A3C6E9EC();
    swift_unknownObjectRelease();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1A3C327F4(v4);
  }

  sub_1A3C327E4(v2);
  return v3;
}

id sub_1A41A4A2C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___centralizedFeedbackActionPerformer;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___centralizedFeedbackActionPerformer);
  v3 = v2;
  if (v2 == 1)
  {
    type metadata accessor for PhotosFeedbackActionPerformer();
    v4 = v0;
    v3 = PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_overlayViewController));
    v5 = *(v0 + v1);
    *(v4 + v1) = v3;
    v6 = v3;
    sub_1A3C327F4(v5);
  }

  sub_1A3C327E4(v2);
  return v3;
}

uint64_t sub_1A41A4ABC(uint64_t result)
{
  v2 = result;
  if ((result & 0x40840020000A008) != 0)
  {
    result = [v1 setNeedsLayout];
  }

  if ((v2 & 0x4000000000000) != 0)
  {
    v3 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear];
    v4 = ([*&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationState] visibilityState] != 3) & v3;
    if (sub_1A419F578(1, 0))
    {
      v7 = v5;

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 viewModel];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = [v9 isPerformingAnyExportOperation];

          v4 = (v10 ^ 1) & v4;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return sub_1A419E980(v4);
  }

  return result;
}

id sub_1A41A4C00()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy);
  }

  else
  {
    v4 = type metadata accessor for PhotosDynamicHeaderContentView.Proxy();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A41A4D40(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 16);
  v4 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24);
  v5 = Strong;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  v11[4] = sub_1A41AA4D4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3D7692C;
  v11[3] = &block_descriptor_237;
  v8 = _Block_copy(v11);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v9 = [v6 menuWithDeferredConfiguration_];

  _Block_release(v8);
  return v9;
}

uint64_t sub_1A41A4EF4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-1] - v6;
  v8 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = sub_1A419F8BC(), v15 = v14, v17 = v16, v19 = v18, v12, v13))
  {

    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v21 = sub_1A524CC44();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v13;
    v22[5] = v15;
    v22[6] = a2;
    v22[7] = a3;
    sub_1A3D4D930(0, 0, v7, &unk_1A5322168, v22);

    return swift_unknownObjectRelease();
  }

  else
  {
    v25 = sub_1A5241144();
    v26 = *(*(v25 - 8) + 56);
    v26(v10, 1, 1, v25);
    v26(&v10[*(v8 + 20)], 1, 1, v25);
    v29[3] = v8;
    v29[4] = &off_1F16FB810;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    sub_1A41AA08C(v10, boxed_opaque_existential_1);
    a2(v29);
    sub_1A41AC4E8(v10, type metadata accessor for PlaceholderTransitionsPauseToken);
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }
}

uint64_t sub_1A41A51BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[21] = swift_task_alloc();
  v7[22] = sub_1A524CC54();
  v7[23] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v7[24] = v9;
  v7[25] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A41A52B8, v9, v8);
}

uint64_t sub_1A41A52B8()
{
  v1 = v0[17];
  v10 = v0[18];
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  v0[26] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v10;
  v4 = *(v10 + 88);
  swift_unknownObjectRetain();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  v6 = sub_1A3C34400(0, &qword_1EB12A978);
  *v5 = v0;
  v5[1] = sub_1A41A5450;
  v7 = v0[18];

  return (v9)(v0 + 7, sub_1A41AA1E4, v3, v6, ObjectType, v7);
}

uint64_t sub_1A41A5450()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A41A5594, v3, v2);
}

uint64_t sub_1A41A5594()
{

  if (*(v0 + 80))
  {
    sub_1A3C34460((v0 + 56), v0 + 16);
  }

  else
  {
    v1 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
    *(v0 + 40) = v1;
    *(v0 + 48) = &off_1F16FB810;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v3 = sub_1A5241144();
    v4 = *(*(v3 - 8) + 56);
    v4(boxed_opaque_existential_1, 1, 1, v3);
    v4((boxed_opaque_existential_1 + *(v1 + 20)), 1, 1, v3);
    if (*(v0 + 80))
    {
      sub_1A41AB614(v0 + 56, &qword_1EB12A970, &qword_1EB12A978, &protocol descriptor for PhotosDynamicHeaderViewTransitionsPauseToken, sub_1A3E792C4);
    }
  }

  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1A3C341C8(v0 + 16, v0 + 96);

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v6;
  sub_1A3C34460((v0 + 96), (v10 + 6));
  sub_1A3D4D930(0, 0, v5, &unk_1A5322178, v10);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A41A57C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  *(a4 + 1) = a2;
  swift_unknownObjectRetain();
  sub_1A5241134();
  v12 = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  v13 = *(v12 + 20);
  [a3 timeIntoCurrentSegment];
  sub_1A524DAE4();
  sub_1A5241064();
  v14 = *(v9 + 56);
  v14(&a4[v13], 0, 1, v8);
  v15 = *(v12 + 24);
  [a3 timeLeftInCurrentSegment];
  sub_1A524DAE4();
  sub_1A5241064();
  swift_unknownObjectRelease();

  (*(v9 + 8))(v11, v8);
  return (v14)(&a4[v15], 0, 1, v8);
}

uint64_t sub_1A41A5970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A5A0C, v8, v7);
}

uint64_t sub_1A41A5A0C()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A41A5A84(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28[-2] - v10;
  v12 = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v28[-2] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28[-2] - v16;
  sub_1A3C341C8(a1, v29);
  sub_1A3C34400(0, &qword_1EB12A978);
  if (swift_dynamicCast())
  {
    sub_1A41A9EB4(v17, v14);
    v18 = sub_1A524CCB4();
    v19 = *(*(v18 - 8) + 56);
    v27 = *v14;
    v19(v11, 1, 1, v18);
    sub_1A524CC54();
    swift_unknownObjectRetain_n();

    v20 = sub_1A524CC44();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    *(v21 + 32) = v27;
    *(v21 + 48) = a2;
    *(v21 + 56) = a3;
    sub_1A3D4D930(0, 0, v11, &unk_1A5322140, v21);
    swift_unknownObjectRelease();

    v23 = type metadata accessor for StoryContentViewTransitionsPauseToken;
    v24 = v14;
LABEL_5:
    sub_1A41AC4E8(v24, v23);
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  if (swift_dynamicCast())
  {
    a2();
    v23 = type metadata accessor for PlaceholderTransitionsPauseToken;
    v24 = v8;
    goto LABEL_5;
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1A524E404();

  v28[5] = 0xD000000000000017;
  v28[6] = 0x80000001A53CAEF0;
  sub_1A3C341C8(a1, v28);
  v26 = sub_1A524C714();
  MEMORY[0x1A5907B60](v26);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A41A5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[4] = swift_task_alloc();
  v7[5] = sub_1A524CC54();
  v7[6] = sub_1A524CC44();
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 88) + **(a5 + 88));
  v10 = swift_task_alloc();
  v7[7] = v10;
  *v10 = v7;
  v10[1] = sub_1A41A600C;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return v13(v7 + 8, sub_1A41A6260, 0, v11, ObjectType, a5);
}

uint64_t sub_1A41A600C()
{

  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A6148, v1, v0);
}

uint64_t sub_1A41A6148()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  sub_1A3D4D930(0, 0, v1, &unk_1A5322158, v6);

  v8 = v0[1];

  return v8();
}

void sub_1A41A6260(void *a1)
{
  v3[4] = sub_1A41A6308;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D59380;
  v3[3] = &block_descriptor_216;
  v2 = _Block_copy(v3);
  [a1 performChanges_];
  _Block_release(v2);
}

id sub_1A41A6308(void *a1)
{
  [a1 setShouldPauseTransitions_];

  return [a1 rewindToBeginningOfCurrentSegment];
}

uint64_t sub_1A41A6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A63EC, v7, v6);
}

uint64_t sub_1A41A63EC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1A41A6458(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = *a2;
  v18 = *(v7 + 16);
  v18(a3, a1, v6, v14);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v26 = [swift_getObjCClassFromMetadata() sharedInstance];
  v19 = [v26 dynamicHeaderDebugBehavior];
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v28 = v17;
      v27 = 0;
      if (static PhotosDynamicHeaderViewModel.ContentKind.== infix(_:_:)(&v28, &v27))
      {
LABEL_8:
        sub_1A5241034();

        (*(v7 + 8))(a3, v6);
        (*(v7 + 32))(a3, v9, v6);
        return;
      }
    }

    else if (v19 == 3)
    {
      v30 = v17;
      v29 = 1;
      if (static PhotosDynamicHeaderViewModel.ContentKind.== infix(_:_:)(&v30, &v29))
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    v25 = v26;

    return;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      sub_1A5241044();
    }

    goto LABEL_14;
  }

  v20 = &selRef_dynamicHeaderMaximumDelayFromMovie;
  if (!v17)
  {
    v20 = &selRef_dynamicHeaderMaximumDelayFromPreview;
  }

  [v26 *v20];
  sub_1A52410A4();
  sub_1A41AAEE8(&unk_1EB134140, MEMORY[0x1E6969530]);
  v21 = sub_1A524C534();

  v22 = a3;
  v23 = *(v7 + 8);
  v26 = v22;
  v23();
  if (v21)
  {
    v24 = *(v7 + 32);
    v24(v16, v12, v6);
    v24(v26, v16, v6);
  }

  else
  {
    (v23)(v12, v6);
    (v18)(v16, a1, v6);
    (*(v7 + 32))(v26, v16, v6);
  }
}

id sub_1A41A6808(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A41A6850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A524CC54();
  v8 = v3;
  v9 = a2;
  v10 = a3;
  return sub_1A3C67884(sub_1A41AA05C, &v7);
}

uint64_t sub_1A41A68D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  return sub_1A3C67884(sub_1A41A9E44, v8);
}

void sub_1A41A6C20()
{
  if (qword_1EB176270 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A41A6E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A6EF8, v7, v6);
}

uint64_t sub_1A41A6EF8()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = [v1 viewModel];
  v6 = [v5 mainModel];

  v4(v6);
  (*(*(v2 - 8) + 56))(v3, 0, 1, v2);
  v7 = v0[1];

  return v7();
}

id PXStoryViewModel.proto_isActive.setter(char a1)
{
  v3 = a1 & 1;
  sub_1A3C7D010(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v1 isActive];
  if (result != v3)
  {
    if (a1)
    {
      sub_1A41A8488();
    }

    sub_1A5241134();
    v13 = swift_allocObject();
    *(v13 + 16) = a1 & 1;
    *(v13 + 17) = 0;
    aBlock[4] = sub_1A41A9780;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = &block_descriptor_116;
    v14 = _Block_copy(aBlock);

    [v1 performChanges_];
    _Block_release(v14);
    (*(v8 + 16))(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_1A41A8488();
  }

  return result;
}

void PXStoryView.contentFrameOverride.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  sub_1A41A6C20();
}

void sub_1A41A7848(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  PXStoryView.contentFrameOverride.setter();
}

uint64_t sub_1A41A7914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A41A6E58(a1, a2, a3, a4);
}

uint64_t sub_1A41A79D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A41A7A74, v7, v6);
}

uint64_t sub_1A41A7A74()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0x90))();
  *(v0 + 80) = v1;
  v8 = (*(*v1 + 216) + **(*v1 + 216));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1A41A7BD0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return v8(v5, v6, v3, v4);
}

uint64_t sub_1A41A7BD0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D568, v3, v2);
}

uint64_t sub_1A41A7D14()
{
  v1 = sub_1A52425F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v3);
  sub_1A3E72EF0(0, &qword_1EB1296E8);
  swift_getOpaqueTypeConformance2();
  sub_1A5242094();
  swift_unknownObjectRelease();
  v6 = sub_1A52425E4();
  (*(v2 + 8))(v5, v1);
  return v6 & 1;
}

uint64_t sub_1A41A7E6C(char a1)
{
  v3 = sub_1A52425F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v5);
  v8 = MEMORY[0x1E69C1EE8];
  if ((a1 & 1) == 0)
  {
    v8 = MEMORY[0x1E69C1EE0];
  }

  (*(v4 + 104))(v7, *v8, v3);
  sub_1A3E72EF0(0, &qword_1EB1296E8);
  swift_getOpaqueTypeConformance2();
  sub_1A52420A4();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A41A7FD4(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  (*(*v3 + 192))(a1);
}

uint64_t sub_1A41A8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A41A79D4(a1, a2, a3, a4);
}

uint64_t sub_1A41A8128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1A524CC54();
  v4[4] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A81C0, v6, v5);
}

uint64_t sub_1A41A81C0()
{
  v1 = v0[3];
  v2 = v0[2];

  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  v3 = v0[1];

  return v3();
}

double *sub_1A41A8260(double *result)
{
  if ((result[4] & 1) == 0)
  {
    return [v1 setFrame_];
  }

  return result;
}

uint64_t sub_1A41A82EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3D60150;

  return sub_1A41A8128(a1, v7, v8, a4);
}

id sub_1A41A83B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

id (*PXStoryViewModel.proto_isActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isActive];
  return sub_1A41A8460;
}

void sub_1A41A8488()
{
  if (qword_1EB176130 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A41A88B4()
{
  result = sub_1A42E6FA8(1);
  byte_1EB17C918 = result & 1;
  return result;
}

uint64_t sub_1A41A8A10()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1579C8 = result;
  return result;
}

uint64_t sub_1A41A8A7C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B6F8);
  __swift_project_value_buffer(v0, qword_1EB15B6F8);
  if (qword_1EB1579C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1579C8;
  return sub_1A5246F34();
}

char *sub_1A41A8B08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A41ACB80(0, &unk_1EB1262A0, &type metadata for PhotosBarButtonItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A41A8C48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A41AC0C4();
  v36 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 32 * v20;
      v37 = *v22;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if ((v36 & 1) == 0)
      {
        v25 = v24;
        v26 = v23;
        swift_unknownObjectRetain();
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v21);
      result = sub_1A524ECE4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v37;
      *(v16 + 16) = v24;
      *(v16 + 24) = v23;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A41A8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = a5 & 1;
  v15 = sub_1A3C345C4(a5 & 1);
  v17 = *(v13 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v13 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A41A8C48(v20, a6 & 1);
      v15 = sub_1A3C345C4(v14);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1A41A9094();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    *(v25[6] + v15) = v14;
    v28 = (v25[7] + 32 * v15);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
    v29 = v25[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v25[2] = v30;
      return;
    }

    goto LABEL_15;
  }

  v26 = (v25[7] + 32 * v15);
  v27 = v26[3];
  v31 = v26[2];
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;

  swift_unknownObjectRelease();
}

void *sub_1A41A9094()
{
  v1 = v0;
  sub_1A41AC0C4();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        v23 = v19;
        v24 = v20;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A41A9214(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3C7D010(0, &qword_1EB134178, sub_1A419BFF0, MEMORY[0x1E69E62F8]);
          sub_1A41AAF30();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A419BFF0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41A93B0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v8 = v4;
  v9 = v6;
  if (sub_1A524DBF4())
  {
    LOBYTE(v22[0]) = v5;
    LOBYTE(v19[0]) = v7;
    sub_1A419C1CC();
    sub_1A524C9C4();
    sub_1A524C9C4();

    if (v26[0] == v23[0] && (sub_1A524DBF4() & 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_1A524E424();
      v10 = AssociatedTypeWitness;
      v11 = AssociatedConformanceWitness;
      v12 = __swift_project_boxed_opaque_existential_1(v23, AssociatedTypeWitness);
      v26[3] = v10;
      v26[4] = *(v11 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
      __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
      v20 = swift_getAssociatedTypeWitness();
      v21 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1A524E424();
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v22[3] = v14;
      v22[4] = *(v15 + 8);
      v17 = __swift_allocate_boxed_opaque_existential_1(v22);
      (*(*(v14 - 8) + 16))(v17, v16, v14);
      sub_1A5246794();
    }
  }

  else
  {
  }

  return 0;
}

id sub_1A41A9780(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  result = [a1 setIsActive_];
  if (v4 == 1)
  {

    return [a1 setDesiredPlayState_];
  }

  return result;
}

uint64_t sub_1A41A9810(uint64_t a1)
{
  result = sub_1A3C3A220(&qword_1EB126D10, &qword_1EB126D18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41A9864(uint64_t a1)
{
  result = sub_1A41AAEE8(&qword_1EB1296E0, type metadata accessor for LemonadeInlineStoryPlayerUIView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41A98BC(uint64_t a1)
{
  result = sub_1A41AAEE8(&qword_1EB125EB8, type metadata accessor for PhotosPreviewHeaderContentView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A41A9B04()
{
  sub_1A3C7D010(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A41A9D70()
{
  result = qword_1EB134130;
  if (!qword_1EB134130)
  {
    sub_1A41ACB80(255, &qword_1EB134138, &type metadata for PhotosDynamicHeaderContentView.ContentKind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134130);
  }

  return result;
}

unint64_t sub_1A41A9DF0()
{
  result = qword_1EB18FB50;
  if (!qword_1EB18FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18FB50);
  }

  return result;
}

uint64_t sub_1A41A9EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41A9F18()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A41A5E38(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A41A9FC4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A41A6354(v4, v5, v6, v2, v3);
}

uint64_t sub_1A41AA08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_196Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A41AA138()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A41A51BC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A41AA1E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v10[4] = sub_1A41A57B4;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D59380;
  v10[3] = &block_descriptor_231_0;
  v7 = _Block_copy(v10);
  [a1 performChanges_];
  _Block_release(v7);
  a2[3] = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  a2[4] = &off_1F16FB7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  swift_unknownObjectRetain();
  return sub_1A41A57C4(v5, v6, a1, boxed_opaque_existential_1);
}

uint64_t sub_1A41AA2E4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A41A5970(v4, v5, v6, v2, v3, v0 + 48);
}

uint64_t sub_1A41AA388(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v10 = v2;
  v11 = v6;
  if ((sub_1A524DBF4() & 1) == 0)
  {

    goto LABEL_5;
  }

  v19 = v3;
  v18 = v7;
  sub_1A419C1CC();
  sub_1A524C9C4();
  sub_1A524C9C4();

  if (v16 != v14)
  {
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  v16 = v4;
  v17 = v5;
  v14 = v8;
  v15 = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = static PhotosPreviewableCollection.== infix(_:_:)(&v16, &v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12 & 1;
}

void sub_1A41AA4D4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = sub_1A524C634();
  v7 = sub_1A524C634();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  v10[4] = sub_1A41AA664;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3F4ECC0;
  v10[3] = &block_descriptor_243;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  [a1 addItemWithTitle:v6 systemImageName:v7 handler:v9];
  _Block_release(v9);
}

uint64_t objectdestroy_233Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A41AA664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A41AA840;
  *(v5 + 24) = v4;
  v9[4] = sub_1A3D78DD0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D35A90;
  v9[3] = &block_descriptor_252;
  v6 = _Block_copy(v9);
  swift_unknownObjectRetain();

  v7 = [v1 presentAlertWithConfigurationHandler_];
  swift_unknownObjectRelease();
  _Block_release(v6);
  LODWORD(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A41AA7D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A41ACB80(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A41AA840(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1A524C634();
  [a1 setTitle_];

  LOBYTE(v8) = v4;
  sub_1A3E560D4();
  swift_unknownObjectRetain();
  sub_1A524EA44();
  swift_unknownObjectRelease();
  v6 = sub_1A524C634();

  [a1 setMessage_];

  v7 = sub_1A524C634();
  [a1 addActionWithTitle:v7 style:0 action:0];
}

void sub_1A41AA94C()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets;
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insetsObservation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_tapGestureRecognizer) = 0;
  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_scenePhaseView;
  *(v0 + v4) = [objc_allocWithZone(sub_1A5243314()) init];
  v5 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModelObservation);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationStateObservation);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive) = 0;
  v7 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___allowedMovieChromeItems;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_storyContentsByKind) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_movieStoryViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_previewHeaderContentView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherButton) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationButton) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationBarButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___feedbackBarButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCustomExcludedActionTypes) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___customBannerView) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___centralizedFeedbackActionPerformer) = 1;
  v8 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_movieStoryViewModelObservation);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy) = 0;
  sub_1A524E6E4();
  __break(1u);
}

BOOL sub_1A41AAB20(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_tapGestureRecognizer);
  if (!v5 || (sub_1A3C52C70(0, &qword_1EB126A00), v6 = v5, v7 = a1, v8 = sub_1A524DBF4(), v6, v7, (v8 & 1) == 0))
  {
    if (qword_1EB1579C0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB1579C8;
    sub_1A524E404();

    v11 = a1;
    v12 = [v11 description];
    v13 = sub_1A524C674();
    v15 = v14;

    MEMORY[0x1A5907B60](v13, v15);

    v16 = v10;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return (*(**(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 512))() == 0.0 && *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 8) == 0;
}

uint64_t sub_1A41AAE50(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A41AAE60(uint64_t result)
{
  if (result != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A41AAE70(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  [a1 setMenuIsOpen:v3 withIdentifier:v4];
}

uint64_t sub_1A41AAEE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A41AAF30()
{
  result = qword_1EB134180;
  if (!qword_1EB134180)
  {
    sub_1A3C7D010(255, &qword_1EB134178, sub_1A419BFF0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134180);
  }

  return result;
}

uint64_t sub_1A41AAFB8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A41A43E4(v4, v5, v6, v2, v3);
}

void sub_1A41AB050(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A41A46DC(a1 & 1, 0xD00000000000001ALL, 0x80000001A53CAFC0);
  }
}

void sub_1A41AB0C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_1A419F578(1, 0))
    {
      v4 = v2;

      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 viewModel];
        swift_unknownObjectRelease();
        if (v6)
        {
          aBlock[4] = sub_1A4173E38;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3D59380;
          aBlock[3] = &block_descriptor_277_0;
          v7 = _Block_copy(aBlock);
          [v6 performChanges_];
          _Block_release(v7);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A41AB204()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!sub_1A419F578(1, 0))
  {
    goto LABEL_8;
  }

  v3 = v1;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v5 = [v4 viewModel];
  swift_unknownObjectRelease();
  v6 = [v5 actionPerformer];

  if (!v6)
  {
LABEL_8:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  [v6 presentStyleSwitcher];

  return swift_unknownObjectRelease();
}

void sub_1A41AB378()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3E9C0EC();
  }
}

uint64_t sub_1A41AB3F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A41ACB80(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A41AB4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_1A419F578(1, 0))
    {
      v9 = v7;

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 viewModel];

        swift_unknownObjectRelease();
        if (!v11)
        {
          return;
        }

        v6 = [v11 mainModel];

        aBlock[4] = a2;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3D59380;
        aBlock[3] = a3;
        v12 = _Block_copy(aBlock);
        [v6 performChanges_];
        _Block_release(v12);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A41AB614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A41AB674(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_getObjectType();
  v5 = sub_1A524C634();
  [a1 setScrollDisabled:v3 axis:2 forReason:v5];

  if (v3 == 1)
  {
    v8 = sub_1A419F578(1, 0);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v6;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      swift_unknownObjectRelease();
      if (v11)
      {
        v12 = [v11 viewMode];

        v8 = ((v12 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v8 = 0;
LABEL_8:
  v13 = sub_1A524C634();
  [a1 setScrollDisabled:v8 axis:1 forReason:v13];

  v16 = sub_1A419F578(1, 0);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v14;

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = [v18 viewModel];
    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = [v19 viewMode];

      v16 = ((v20 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
      goto LABEL_14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v16 = 0;
LABEL_14:
  v21 = sub_1A524C634();
  [a1 setModalInPresentation:v16 forReason:v21];

  [a1 setChromeOpacity_];
  [a1 setAlwaysRequiresLightChrome_];
  if (!v3)
  {
    [a1 setAllowedChromeItems_];
    [a1 setChromeItemsToBeConsideredVisibleForLayoutPurpose_];
    sub_1A47F8AFC(0);
    sub_1A47F9010(0);
    v29 = 0;
    goto LABEL_33;
  }

  if (sub_1A419F578(1, 0))
  {
    v24 = v22;

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = [v25 viewModel];
      swift_unknownObjectRelease();
      if (v26)
      {
        v27 = [v26 viewMode];
        if (v27 == 2)
        {

          v28 = 18;
        }

        else if (v27 == 4)
        {

          v28 = 0;
        }

        else
        {
          if (sub_1A41A1970())
          {
            v42 = 3683;
          }

          else
          {
            v42 = 96;
          }

          v43 = [v26 wantsRelatedOverlayVisible];

          v44 = v42 & 0xFE01;
          if ((v42 & 2) == 0)
          {
            v44 = v42;
          }

          v28 = v44 & 0xE03;
          if (!v43)
          {
            v28 = v42;
          }
        }

LABEL_24:
        [a1 setAllowedChromeItems_];
        if (sub_1A419F578(1, 0))
        {
          v32 = v30;

          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 viewModel];
            swift_unknownObjectRelease();
            if (v34)
            {
              v35 = [v34 viewMode];
              if (v35 == 2)
              {

                v36 = 18;
                goto LABEL_32;
              }

              if (v35 != 4)
              {
                if (sub_1A41A1970())
                {
                  v45 = 3683;
                }

                else
                {
                  v45 = 96;
                }

                v46 = [v34 wantsRelatedOverlayVisible];

                v47 = v45 & 0xFE01;
                if ((v45 & 2) == 0)
                {
                  v47 = v45;
                }

                v36 = v47 & 0xE03;
                if (!v46)
                {
                  v36 = v45;
                }

                goto LABEL_32;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v36 = 0;
LABEL_32:
        [a1 setChromeItemsToBeConsideredVisibleForLayoutPurpose_];
        sub_1A41A1B3C();
        sub_1A47F8AFC(v37);
        v38 = sub_1A41A1F38();
        sub_1A47F9010(v38);
        v29 = sub_1A41A2B48();
LABEL_33:
        [a1 setCustomLeadingAccessoryView_];

        if (v3)
        {
          v39 = sub_1A41A2CA8();
          [a1 setCustomTrailingAccessoryView_];

          if (sub_1A41A2E28())
          {
            sub_1A3C52C70(0, &qword_1EB126B80);
            v40 = sub_1A524CA14();

LABEL_38:
            [a1 setCustomLeadingAccessoryBarButtonItems_];

            if (v3 && sub_1A41A2FE4())
            {
              sub_1A3C52C70(0, &qword_1EB126B80);
              v41 = sub_1A524CA14();
            }

            else
            {
              v41 = 0;
            }

            [a1 setCustomTrailingAccessoryBarButtonItems_];

            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_1A524D7F4();
          }
        }

        else
        {
          [a1 setCustomTrailingAccessoryView_];
        }

        v40 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v28 = 0;
  goto LABEL_24;
}

void sub_1A41ABDF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1A401684C(*(v0 + 24));
  v5.f64[0] = *v1;
  v6.f64[0] = v1[2];
  sub_1A40168D8(v5, v1[1], v6, v1[3]);
  sub_1A4016980(v2, v3);
  sub_1A40167C4(v4);
}

unint64_t sub_1A41ABE60()
{
  result = qword_1EB12AC48;
  if (!qword_1EB12AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AC48);
  }

  return result;
}

uint64_t sub_1A41ABEB4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(**(result + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 416))())
    {
      v2 = sub_1A41A3BA0();

      return v2;
    }

    else
    {
      v3 = sub_1A419BCF8();
      v4 = v3;
      if (v3 >> 62)
      {
        v5 = sub_1A524E2B4();
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = v4;
      if (!v5)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_1A41ABFAC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A41A46DC(a1 & 1, 0xD00000000000001DLL, 0x80000001A53CB2B0);
  }
}

uint64_t sub_1A41AC01C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  if ((*(**(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 416))())
  {
    v2 = sub_1A41A4860();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A41AC0C4()
{
  if (!qword_1EB126490)
  {
    sub_1A41AC128();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126490);
    }
  }
}

unint64_t sub_1A41AC128()
{
  result = qword_1EB18FB60;
  if (!qword_1EB18FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18FB60);
  }

  return result;
}

void sub_1A41AC17C(void *a1)
{
  swift_getObjectType();
  [a1 setAllowedChromeItems_];
  PXStoryMutableViewModel.actionContext.setter();
}

unint64_t sub_1A41AC278()
{
  result = qword_1EB176260;
  if (!qword_1EB176260)
  {
    sub_1A3C52C70(255, &qword_1EB126D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB176260);
  }

  return result;
}

uint64_t sub_1A41AC2E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A41AC328()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  v2 = v1;
  sub_1A524D7A4();
}

uint64_t (*sub_1A41AC3E4())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A41AC440;
}

uint64_t sub_1A41AC448(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A419FC20(a1, v5, v6, v4);
}

uint64_t sub_1A41AC4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41AC548()
{
  if (!qword_1EB12ACB0)
  {
    sub_1A41ACB80(255, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12ACB0);
    }
  }
}

void *sub_1A41AC5D0(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A41AC610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

id sub_1A41AC684(id result)
{
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    return v1;
  }

  return result;
}

void sub_1A41AC6C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void sub_1A41AC730()
{
  if (!qword_1EB1298C0)
  {
    sub_1A3E72EF0(255, &qword_1EB12A9E8);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for TransparentHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1298C0);
    }
  }
}

BOOL sub_1A41AC7C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1A41A1008(a1);
  }

  else
  {
    return 0;
  }

  return v4;
}

void sub_1A41AC844(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

void sub_1A41AC8B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear);
      v6 = ([*(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationState) visibilityState] != 3) & v5;
      if (sub_1A419F578(1, 0))
      {
        v9 = v7;

        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 viewModel];
          swift_unknownObjectRelease();
          if (v11)
          {
            v12 = [v11 isPerformingAnyExportOperation];

            v6 = (v12 ^ 1) & v6;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_1A419E980(v6);
    }
  }
}

void sub_1A41ACA00()
{
  sub_1A3C7D010(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A41ACAE4()
{
  sub_1A3C7D010(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A41ACB80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A41ACC88()
{
  v0 = swift_allocObject();
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C374();
  sub_1A524C454();
  v1 = sub_1A3C6D790();

  *(v0 + 16) = v1;
  return v0;
}

id OneUpSharePlaySessionMediaProvider.__allocating_init(sessionCoordinator:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A41B4ECC(a1);

  return v4;
}

id OneUpSharePlaySessionMediaProvider.init(sessionCoordinator:)(uint64_t a1)
{
  v1 = sub_1A41B4ECC(a1);

  return v1;
}

uint64_t sub_1A41ACDEC()
{
  v1 = *(v0 + 16);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1A41B68AC(&v4);
  os_unfair_lock_unlock((v1 + v2));
  return v4;
}

uint64_t sub_1A41ACEE0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  *(v10 + 448) = v19;
  *(v10 + 456) = v20;
  *(v10 + 432) = a9;
  *(v10 + 440) = a10;
  *(v10 + 416) = a1;
  *(v10 + 424) = a2;
  *(v10 + 400) = a7;
  *(v10 + 408) = a8;
  *(v10 + 392) = a6;
  *(v10 + 464) = *a9;
  v11 = sub_1A524BEE4();
  *(v10 + 472) = v11;
  *(v10 + 480) = *(v11 - 8);
  *(v10 + 488) = swift_task_alloc();
  v12 = sub_1A524BF64();
  *(v10 + 496) = v12;
  *(v10 + 504) = *(v12 - 8);
  *(v10 + 512) = swift_task_alloc();
  v13 = MEMORY[0x1E69E87C8];
  sub_1A41B6A28(0, &unk_1EB1342A8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87C8]);
  *(v10 + 520) = v14;
  *(v10 + 528) = *(v14 - 8);
  *(v10 + 536) = swift_task_alloc();
  sub_1A41B6A28(0, &qword_1EB1342B8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87B8]);
  *(v10 + 544) = v15;
  *(v10 + 552) = *(v15 - 8);
  *(v10 + 560) = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, v13);
  *(v10 + 568) = v16;
  *(v10 + 576) = *(v16 - 8);
  *(v10 + 584) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41AD1E4, 0, 0);
}

id sub_1A41AD1E4()
{
  v1 = *(v0 + 392);
  v2 = [v1 resultHandlerQueue];
  if (!v2)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v2 = sub_1A524D474();
  }

  *(v0 + 592) = v2;
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  [v3 pixelWidth];
  [v3 pixelHeight];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [v1 deliveryMode];
  if (!v5)
  {
    v28 = sub_1A524D264();
    v29 = *sub_1A486DB9C();
    if (os_log_type_enabled(v29, v28))
    {
      v31 = *(v0 + 400);
      v30 = *(v0 + 408);
      swift_unknownObjectRetain();
      v32 = v29;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 134349314;
      *(v33 + 4) = v30;
      *(v33 + 12) = 2082;
      v35 = [v31 uuid];
      result = swift_unknownObjectRelease();
      if (v35)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_29;
    }

    result = [*(v0 + 400) uuid];
    if (result)
    {
      v36 = result;
      sub_1A524C674();

      sub_1A524DA74();
    }

    goto LABEL_27;
  }

  if (v5 != 2)
  {
LABEL_11:
    v19 = sub_1A524D264();
    v20 = *sub_1A486DB9C();
    if (os_log_type_enabled(v20, v19))
    {
      v22 = *(v0 + 400);
      v21 = *(v0 + 408);
      swift_unknownObjectRetain();
      v23 = v20;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 134349314;
      *(v24 + 4) = v21;
      *(v24 + 12) = 2082;
      v26 = [v22 uuid];
      result = swift_unknownObjectRelease();
      if (v26)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    else
    {
      result = [*(v0 + 400) uuid];
      if (result)
      {
        v27 = result;
        sub_1A524C674();

        sub_1A524DA74();
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v6 = sub_1A524D264();
  v7 = *sub_1A486DB9C();
  if (os_log_type_enabled(v7, v6))
  {
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v7;
    swift_unknownObjectRetain();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134349314;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2082;
    v12 = [v9 uuid];
    result = swift_unknownObjectRelease();
    if (v12)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_28;
  }

  result = [*(v0 + 400) uuid];
  if (!result)
  {
    goto LABEL_26;
  }

  v14 = result;
  v15 = *(v0 + 408);
  v16 = sub_1A524C674();
  v18 = v17;

  *(v0 + 312) = v15;
  *(v0 + 320) = v16;
  *(v0 + 336) = &type metadata for ImageRequestFastFormatChooser;
  *(v0 + 344) = &off_1F16FC070;
  *(v0 + 328) = v18;
  sub_1A3C34460((v0 + 312), v0 + 192);
  v37 = swift_task_alloc();
  *(v0 + 600) = v37;
  *v37 = v0;
  v37[1] = sub_1A41AD868;
  v38 = *(v0 + 584);
  v39 = *(v0 + 400);
  v40 = *(v0 + 408);

  return sub_1A4340ED8(v38, v39, v40);
}

uint64_t sub_1A41AD868()
{

  return MEMORY[0x1EEE6DFA0](sub_1A41AD990, 0, 0);
}

uint64_t sub_1A41AD990()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 192), v5);
  (*(v6 + 8))(v1, v5, v6);
  sub_1A524CD24();
  (*(v3 + 8))(v2, v4);
  *(v0 + 362) = 0;
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_1A41ADAFC;
  v8 = *(v0 + 544);

  return MEMORY[0x1EEE6DB90](v0 + 352, 0, 0, v8, v0 + 368);
}

uint64_t sub_1A41ADAFC()
{

  if (v0)
  {
    v1 = sub_1A41AEE00;
  }

  else
  {
    v1 = sub_1A41ADC38;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41ADC38()
{
  v1 = *(v0 + 352);
  *(v0 + 616) = v1;
  if (v1)
  {
    v2 = *(v0 + 360);
    if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290())
    {
      v69 = *(v0 + 512);
      v72 = *(v0 + 504);
      v73 = *(v0 + 496);
      v70 = *(v0 + 488);
      v3 = *(v0 + 472);
      v71 = *(v0 + 480);
      v4 = *(v0 + 448);
      v5 = *(v0 + 456);
      v7 = *(v0 + 400);
      v6 = *(v0 + 408);
      v8 = swift_allocObject();
      *(v8 + 16) = v1;
      *(v8 + 24) = v2 & 1;
      *(v8 + 32) = v6;
      *(v8 + 40) = v7;
      *(v8 + 48) = v4;
      *(v8 + 56) = v5;
      *(v0 + 176) = sub_1A41B6CEC;
      *(v0 + 184) = v8;
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1A3C2E0D0;
      *(v0 + 168) = &block_descriptor_92;
      v9 = _Block_copy((v0 + 144));
      swift_unknownObjectRetain();
      v10 = v1;

      sub_1A524BF14();
      *(v0 + 384) = MEMORY[0x1E69E7CC0];
      sub_1A4059F40();
      sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v69, v70, v9);
      _Block_release(v9);

      (*(v71 + 8))(v70, v3);
      (*(v72 + 8))(v69, v73);

      *(v0 + 362) = 1;
      v11 = swift_task_alloc();
      *(v0 + 608) = v11;
      *v11 = v0;
      v11[1] = sub_1A41ADAFC;
      v12 = *(v0 + 544);
      v13 = v0 + 352;
      v14 = v0 + 368;
      v15 = 0;
      v16 = 0;

      return MEMORY[0x1EEE6DB90](v13, v15, v16, v12, v14);
    }

    v17 = sub_1A524D264();
    v18 = *sub_1A486DB9C();
    if (os_log_type_enabled(v18, v17))
    {
      v20 = *(v0 + 400);
      v19 = *(v0 + 408);
      swift_unknownObjectRetain();
      v21 = v18;
      v22 = swift_slowAlloc();
      swift_slowAlloc();
      *v22 = 134349314;
      *(v22 + 4) = v19;
      *(v22 + 12) = 2082;
      v23 = [v20 uuid];
      swift_unknownObjectRelease();
      if (v23)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:

      v13 = swift_unknownObjectRelease();
      __break(1u);
      return MEMORY[0x1EEE6DB90](v13, v15, v16, v12, v14);
    }

    v24 = swift_task_alloc();
    *(v0 + 624) = v24;
    *v24 = v0;
    v25 = sub_1A41AE97C;
LABEL_21:
    v24[1] = v25;
    v38 = *(v0 + 400);
    v37 = *(v0 + 408);

    return sub_1A4341188(v38, v37);
  }

  (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
  if ((sub_1A524CDC4() & 1) != 0 || !sub_1A41AF290())
  {
    v31 = sub_1A524D264();
    v32 = *sub_1A486DB9C();
    if (os_log_type_enabled(v32, v31))
    {
      v34 = *(v0 + 400);
      v33 = *(v0 + 408);
      swift_unknownObjectRetain();
      v21 = v32;
      v35 = swift_slowAlloc();
      swift_slowAlloc();
      *v35 = 134349314;
      *(v35 + 4) = v33;
      *(v35 + 12) = 2082;
      v36 = [v34 uuid];
      swift_unknownObjectRelease();
      if (v36)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_39;
    }

    v24 = swift_task_alloc();
    *(v0 + 632) = v24;
    *v24 = v0;
    v25 = sub_1A41AEBD8;
    goto LABEL_21;
  }

  if (*(v0 + 362) == 1)
  {
    v26 = *(v0 + 392);
    if (v26 && [v26 progressHandler])
    {
      v27 = *(v0 + 408);
      *(v0 + 361) = 0;
      sub_1A3C5D688(0, &qword_1EB1261F0, &qword_1EB126F70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 40) = v29;
      *(inited + 48) = v27;
      v30 = sub_1A3C5D7A8(inited);
      swift_setDeallocating();
      sub_1A41B6C90(inited + 32, &qword_1EB126F70);
      sub_1A41AF384(v30);
    }

    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    __swift_destroy_boxed_opaque_existential_0(v0 + 192);
LABEL_34:
    v49 = *(v0 + 592);
    sub_1A41AF658();
    goto LABEL_35;
  }

  v40 = sub_1A524D264();
  v41 = *sub_1A486DB9C();
  if (os_log_type_enabled(v41, v40))
  {
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    swift_unknownObjectRetain();
    v21 = v41;
    v44 = swift_slowAlloc();
    swift_slowAlloc();
    *v44 = 134349314;
    *(v44 + 4) = v42;
    *(v44 + 12) = 2082;
    v45 = [v43 uuid];
    swift_unknownObjectRelease();
    if (v45)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_40;
  }

  v46 = *(v0 + 584);
  v47 = *(v0 + 576);
  v48 = *(v0 + 568);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.Error();
  swift_getWitnessTable();
  v21 = swift_allocError();
  swift_willThrow();
  (*(v47 + 8))(v46, v48);
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);
  if ((sub_1A524CDC4() & 1) == 0)
  {
    v50 = sub_1A524D264();
    v51 = *sub_1A486DB9C();
    if (os_log_type_enabled(v51, v50))
    {
      v52 = *(v0 + 400);
      v53 = *(v0 + 408);
      swift_unknownObjectRetain();
      v51;
      v54 = v21;
      v55 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v55 = 134349570;
      *(v55 + 4) = v53;
      *(v55 + 12) = 2082;
      v56 = [v52 uuid];
      if (v56)
      {
        v57 = v56;

        swift_unknownObjectRelease();
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_41;
    }

    v59 = *(v0 + 504);
    v58 = *(v0 + 512);
    v60 = *(v0 + 488);
    v74 = *(v0 + 496);
    v61 = *(v0 + 472);
    v62 = *(v0 + 480);
    v63 = *(v0 + 448);
    v64 = *(v0 + 456);
    v65 = swift_allocObject();
    v65[2] = v63;
    v65[3] = v64;
    v65[4] = v21;
    *(v0 + 128) = sub_1A41B6AE8;
    *(v0 + 136) = v65;
    *(v0 + 96) = MEMORY[0x1E69E9820];
    *(v0 + 104) = 1107296256;
    *(v0 + 112) = sub_1A3C2E0D0;
    *(v0 + 120) = &block_descriptor_83;
    v66 = _Block_copy((v0 + 96));

    v67 = v21;
    sub_1A524BF14();
    *(v0 + 376) = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v58, v60, v66);
    _Block_release(v66);

    (*(v62 + 8))(v60, v61);
    (*(v59 + 8))(v58, v74);

    goto LABEL_34;
  }

  v49 = *(v0 + 592);

LABEL_35:

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1A41AE97C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A41AEAA4, 0, 0);
}

uint64_t sub_1A41AEAA4()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A41AEBD8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A41AED00, 0, 0);
}

uint64_t sub_1A41AED00()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A41AEE00()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  (*(v0[69] + 8))(v0[70], v0[68]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[46];
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  if (sub_1A524CDC4())
  {
    v5 = v0[74];

LABEL_7:

    v24 = v0[1];

    return v24();
  }

  v6 = sub_1A524D264();
  v7 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v7, v6))
  {
    v15 = v0[63];
    v14 = v0[64];
    v16 = v0[61];
    v26 = v0[62];
    v17 = v0[59];
    v18 = v0[60];
    v19 = v0[56];
    v20 = v0[57];
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v4;
    v0[16] = sub_1A41B6AE8;
    v0[17] = v21;
    v0[12] = MEMORY[0x1E69E9820];
    v0[13] = 1107296256;
    v0[14] = sub_1A3C2E0D0;
    v0[15] = &block_descriptor_83;
    v22 = _Block_copy(v0 + 12);

    v23 = v4;
    sub_1A524BF14();
    v0[47] = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v14, v16, v22);
    _Block_release(v22);

    (*(v18 + 8))(v16, v17);
    (*(v15 + 8))(v14, v26);

    v5 = v0[74];
    sub_1A41AF658();
    goto LABEL_7;
  }

  v8 = v0[50];
  v9 = v0[51];
  swift_unknownObjectRetain();
  v7;
  v10 = v4;
  v11 = swift_slowAlloc();
  swift_slowAlloc();
  swift_slowAlloc();
  *v11 = 134349570;
  *(v11 + 4) = v9;
  *(v11 + 12) = 2082;
  v12 = [v8 uuid];
  if (v12)
  {
    v13 = v12;

    swift_unknownObjectRelease();
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

BOOL sub_1A41AF290()
{
  v1 = *(v0 + 16);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1A41B60E8(&v4);
  os_unfair_lock_unlock((v1 + v2));
  return v4;
}

void sub_1A41AF384(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A41B6F54(0, &qword_1EB1263C0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41AF658()
{
  v1 = *(v0 + 16);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1A41B618C();
  os_unfair_lock_unlock((v1 + v2));
}

void sub_1A41AF744()
{
  v1 = *(v0 + 16);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1A41B64F8();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_1A41AF838(void *a1, int a2, void *a3, int a4, void *a5, void *aBlock, double a7, double a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_unknownObjectRetain();
  v15 = a5;
  v16 = a1;
  v17 = sub_1A41B4FA8(a3, a5, sub_1A41B786C, v14, a7, a8);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t OneUpSharePlaySessionMediaProvider.requestImageData(for:options:resultHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a2;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v11 = qword_1EB134210;

  v12 = sub_1A41ACDEC();

  v13 = sub_1A524D264();
  v14 = *sub_1A486DB9C();
  if (os_log_type_enabled(v14, v13))
  {
    v26[1] = a4;
    v26[2] = v11;
    v26[0] = v14;
    swift_unknownObjectRetain();
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 134349314;
    *(v15 + 4) = v12;
    *(v15 + 12) = 2082;
    v16 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v16)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v18 = sub_1A524CCB4();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = *(v5 + qword_1EB134218);
    v20 = *(v5 + v11);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v23 = v27;
    v22 = v28;
    v21[4] = v28;
    v21[5] = a1;
    v21[6] = v19;
    v21[7] = v12;
    v21[8] = v20;
    v21[9] = v23;
    v21[10] = a4;
    v24 = v22;

    swift_unknownObjectRetain();

    v25 = sub_1A3D4D930(0, 0, v10, &unk_1A5322320, v21);
    sub_1A3EE1368(v25, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744();

    return v12;
  }

  return result;
}

uint64_t sub_1A41AFC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[37] = v13;
  v8[38] = v14;
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[32] = a4;
  v8[39] = *a6;
  v9 = sub_1A524BEE4();
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  v10 = sub_1A524BF64();
  v8[43] = v10;
  v8[44] = *(v10 - 8);
  v8[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41AFD8C, 0, 0);
}

uint64_t sub_1A41AFD8C()
{
  v1 = [*(v0 + 256) resultHandlerQueue];
  if (!v1)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v1 = sub_1A524D474();
  }

  *(v0 + 368) = v1;
  *(v0 + 232) = *(v0 + 264);
  sub_1A3D435C4();
  sub_1A3C34400(0, &qword_1EB134290);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v2);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  }

  else
  {
    *(v0 + 144) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    sub_1A41B649C(v0 + 112, &unk_1EB134298, &qword_1EB134290, &protocol descriptor for OneUpSharePlayExtendedAssetProperties, sub_1A3C34400);
    v4 = 0;
  }

  if ([*(v0 + 264) respondsToSelector_])
  {
    v5 = [*(v0 + 264) isSpatialMedia];
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_1A41AFF88;
  v7 = *(v0 + 280);
  v8 = *(v0 + 264);

  return sub_1A43414F8(v0 + 152, v8, v5, (v5 | v4) & 1, v7);
}

uint64_t sub_1A41AFF88()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1A41B0558;
  }

  else
  {
    v2 = sub_1A41B009C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A41B009C()
{
  if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290())
  {
    v26 = v0[45];
    v28 = v0[44];
    v29 = v0[43];
    v1 = v0[42];
    v27 = v0[41];
    v3 = v0[39];
    v2 = v0[40];
    v4 = v0[37];
    v5 = v0[38];
    v6 = v0[35];
    v7 = v0[33];
    v8 = swift_allocObject();
    *(v8 + 16) = *(v3 + 80);
    *(v8 + 24) = *(v3 + 88);
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    *(v8 + 48) = v4;
    *(v8 + 56) = v5;
    v9 = *(v0 + 21);
    *(v8 + 64) = *(v0 + 19);
    *(v8 + 80) = v9;
    *(v8 + 96) = *(v0 + 92);
    v0[12] = sub_1A41B6728;
    v0[13] = v8;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1A3C2E0D0;
    v0[11] = &block_descriptor_69_1;
    v10 = _Block_copy(v0 + 8);
    swift_unknownObjectRetain();

    v11 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v0 + 24, v0 + 19, v11);
    sub_1A524BF14();
    v0[31] = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v26, v1, v10);
    _Block_release(v10);
    (*(v12 + 8))(v0 + 19, v11);
    (*(v27 + 8))(v1, v2);
    (*(v28 + 8))(v26, v29);

    v13 = v0[46];
    sub_1A41AF658();

LABEL_8:

    v25 = v0[1];

    return v25();
  }

  v14 = sub_1A524D264();
  v15 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v15, v14))
  {
    v21 = v0[46];
    v22 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
    v23 = *(*(v22 - 8) + 8);
    swift_unknownObjectRetain();
    v24 = v15;
    v23(v0 + 19, v22);

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v16 = v0[35];
  v17 = v0[33];
  swift_unknownObjectRetain();
  v15;
  v18 = swift_slowAlloc();
  swift_slowAlloc();
  *v18 = 134349314;
  *(v18 + 4) = v16;
  *(v18 + 12) = 2082;
  v19 = [v17 uuid];
  result = swift_unknownObjectRelease();
  if (v19)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B0558()
{
  if (sub_1A524CDC4())
  {
    v1 = *(v0 + 368);

LABEL_7:

    v23 = *(v0 + 8);

    return v23();
  }

  v2 = sub_1A524D264();
  v3 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v3, v2))
  {
    v12 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 352);
    v25 = *(v0 + 344);
    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 320);
    v18 = *(v0 + 296);
    v19 = *(v0 + 304);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v12;
    *(v0 + 48) = sub_1A41B65D4;
    *(v0 + 56) = v20;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1A3C2E0D0;
    *(v0 + 40) = &block_descriptor_62;
    v21 = _Block_copy((v0 + 16));

    v22 = v12;
    sub_1A524BF14();
    *(v0 + 240) = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v13, v15, v21);
    _Block_release(v21);

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v13, v25);

    v1 = *(v0 + 368);
    sub_1A41AF658();
    goto LABEL_7;
  }

  v4 = *(v0 + 384);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  swift_unknownObjectRetain();
  v3;
  v7 = v4;
  v8 = swift_slowAlloc();
  swift_slowAlloc();
  swift_slowAlloc();
  *v8 = 134349570;
  *(v8 + 4) = v5;
  *(v8 + 12) = 2082;
  v9 = [v6 uuid];
  v10 = *(v0 + 384);
  if (v9)
  {
    v11 = v9;

    swift_unknownObjectRelease();
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1A41B0958(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  v12 = OneUpSharePlaySessionMediaProvider.requestImageData(for:options:resultHandler:)(a3, a4, sub_1A41B5C04, v9);
  swift_unknownObjectRelease();

  return v12;
}

void sub_1A41B0A14(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  if (a2 >> 60 != 15)
  {
    v11 = sub_1A5240E84();
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if (a4)
  {
LABEL_5:
    v10 = sub_1A524C634();
  }

LABEL_6:
  if (a6)
  {
    v12 = sub_1A524C3D4();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a7 + 16))(a7, v11, v10, a5);
}

uint64_t sub_1A41B0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v14;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = sub_1A41B0C2C;

  return sub_1A4348308(a5, a6);
}

uint64_t sub_1A41B0C2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1A41B0FF4;
  }

  else
  {
    v4 = sub_1A41B0D40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A41B0D40()
{
  if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290())
  {
    v1 = *(v0 + 72);
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = sub_1A524CCB4();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v8 = v1;
    v9 = sub_1A524CC44();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v5;
    v10[6] = v4;
    v10[7] = v3;
    v10[8] = v8;
    sub_1A3D4D930(0, 0, v2, &unk_1A5322538, v10);

    sub_1A41AF658();
LABEL_8:

    v19 = *(v0 + 8);

    return v19();
  }

  v12 = sub_1A524D264();
  v13 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v13, v12))
  {

    goto LABEL_8;
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();
  v13;
  v16 = swift_slowAlloc();
  swift_slowAlloc();
  *v16 = 134349314;
  *(v16 + 4) = v14;
  *(v16 + 12) = 2082;
  v17 = [v15 uuid];
  result = swift_unknownObjectRelease();
  if (v17)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B0FF4()
{
  if (sub_1A524CDC4())
  {
  }

  else
  {
    v1 = *(v0 + 80);
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = sub_1A524CCB4();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v8 = v1;
    v9 = sub_1A524CC44();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v5;
    v10[6] = v1;
    v10[7] = v4;
    v10[8] = v3;
    sub_1A3D4D930(0, 0, v2, &unk_1A5322528, v10);

    sub_1A41AF658();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A41B116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1A524CC54();
  v8[7] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B120C, v10, v9);
}

uint64_t sub_1A41B120C()
{

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v2;
    swift_unknownObjectRetain();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134349314;
    *(v5 + 4) = v3;
    *(v5 + 12) = 2082;
    v7 = [v4 uuid];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    (*(v0 + 32))(*(v0 + 48), 0);
    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t sub_1A41B13B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  sub_1A524CC54();
  v8[26] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B1458, v10, v9);
}

uint64_t sub_1A41B1458()
{

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    v2;
    swift_unknownObjectRetain();
    v6 = v3;
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134349570;
    *(v7 + 4) = v5;
    *(v7 + 12) = 2082;
    v9 = [v4 uuid];
    v10 = v0[23];
    if (v9)
    {
      v11 = v9;

      swift_unknownObjectRelease();
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v12 = v0[24];
    sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v0[18] = sub_1A524C674();
    v0[19] = v14;
    sub_1A524E384();
    swift_getErrorValue();
    v15 = v0[15];
    v16 = v0[16];
    *(inited + 96) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    v18 = sub_1A3DAED90(inited);
    swift_setDeallocating();
    sub_1A41B6C90(inited + 32, &qword_1EB126530);
    v12(0, v18);

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_1A41B17A0(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  v12 = sub_1A41B53C8(a3, sub_1A41B786C, v9);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_1A41B1864(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = v16;
  *(v10 + 72) = v17;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  *(v10 + 32) = a9;
  *(v10 + 40) = a10;
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v10 + 80) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v10 + 88) = v13;
  *v13 = v10;
  v13[1] = sub_1A41B1988;

  return sub_1A4351188(a7, a8);
}

uint64_t sub_1A41B1988(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1A41B1D48;
  }

  else
  {
    v4 = sub_1A41B1A9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A41B1A9C()
{
  if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290())
  {
    v1 = v0[12];
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v8 = v0[2];
    v9 = v0[3];
    v10 = sub_1A524CCB4();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v11 = sub_1A524CC44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v7;
    v12[5] = v1;
    v12[6] = v6;
    v12[7] = v5;
    v12[8] = v9;
    v12[9] = v8;
    v12[10] = v4;
    v12[11] = v3;
    sub_1A3D4D930(0, 0, v2, &unk_1A5322508, v12);

    sub_1A41AF658();
LABEL_7:

    v22 = v0[1];

    return v22();
  }

  v14 = sub_1A524D264();
  v15 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v15, v14))
  {
    goto LABEL_7;
  }

  v17 = v0[2];
  v16 = v0[3];
  swift_unknownObjectRetain();
  v18 = v15;
  v19 = swift_slowAlloc();
  swift_slowAlloc();
  *v19 = 134349314;
  *(v19 + 4) = v16;
  *(v19 + 12) = 2082;
  v20 = [v17 uuid];
  result = swift_unknownObjectRelease();
  if (v20)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B1D48()
{
  if (sub_1A524CDC4())
  {
  }

  else
  {
    v1 = *(v0 + 104);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = sub_1A524CCB4();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v8 = v1;
    v9 = sub_1A524CC44();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v5;
    v10[6] = v1;
    v10[7] = v4;
    v10[8] = v3;
    sub_1A3D4D930(0, 0, v2, &unk_1A53224F8, v10);

    sub_1A41AF658();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A41B1EC4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 112) = a10;
  *(v10 + 120) = v15;
  *(v10 + 96) = a8;
  *(v10 + 104) = a9;
  *(v10 + 80) = a1;
  *(v10 + 88) = a2;
  *(v10 + 64) = a6;
  *(v10 + 72) = a7;
  sub_1A524CC54();
  *(v10 + 128) = sub_1A524CC44();
  v12 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B1F70, v12, v11);
}

uint64_t sub_1A41B1F70()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = *(v0 + 104);

  v6 = objc_opt_self();
  sub_1A5240E64();
  v7 = sub_1A524CA14();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v12;
  *(v8 + 40) = v1;
  *(v0 + 48) = sub_1A41B5F60;
  *(v0 + 56) = v8;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1A4044608;
  *(v0 + 40) = &block_descriptor_117;
  v9 = _Block_copy((v0 + 16));
  swift_unknownObjectRetain();

  [v6 requestLivePhotoWithResourceFileURLs:v7 placeholderImage:0 targetSize:v5 contentMode:1 prefersHDR:v9 resultHandler:{v4, v3}];
  _Block_release(v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A41B210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[25] = a4;
  sub_1A524CC54();
  v8[30] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B21AC, v10, v9);
}

uint64_t sub_1A41B21AC()
{

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = v0[25];
    v6 = v2;
    swift_unknownObjectRetain();
    v7 = v3;
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 134349570;
    *(v8 + 4) = v5;
    *(v8 + 12) = 2082;
    v9 = [v4 uuid];
    v10 = v0[27];
    if (v9)
    {
      v11 = v9;

      swift_unknownObjectRelease();
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v12 = v0[28];
    sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v0[21] = sub_1A524C674();
    v0[22] = v14;
    sub_1A524E384();
    swift_getErrorValue();
    v15 = v0[15];
    v16 = v0[16];
    *(inited + 96) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    v18 = sub_1A3DAED90(inited);
    swift_setDeallocating();
    sub_1A41B6C90(inited + 32, &qword_1EB126530);
    v12(0, v18);

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_1A41B24D0(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock, double a7, double a8)
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  swift_unknownObjectRetain();
  v16 = a5;
  v17 = a1;
  v18 = sub_1A41B56E8(a3, a4, sub_1A41B5BE8, v15, a7, a8);
  swift_unknownObjectRelease();

  return v18;
}

void sub_1A41B25AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1A524C3D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall OneUpSharePlaySessionMediaProvider.cancelImageRequest(_:)(Swift::Int a1)
{
  v3 = sub_1A524D264();
  v4 = *sub_1A486DB9C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "MediaProvider: [%{public}ld] Cancelling request", v6, 0xCu);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  v7 = *(v1 + qword_1EB134210);

  v8 = *(v7 + 16);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  sub_1A3C564D0(0, &qword_1EB140920, MEMORY[0x1E695BF10], MEMORY[0x1E69E6720]);
  v9 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v9));
  sub_1A41B5C0C(&v10);
  os_unfair_lock_unlock((v8 + v9));
  if (v10)
  {

    sub_1A5247884();
  }
}

void sub_1A41B2840(void *a1, uint64_t a2, Swift::Int a3)
{
  v4 = a1;
  OneUpSharePlaySessionMediaProvider.cancelImageRequest(_:)(a3);
}

id OneUpSharePlaySessionMediaProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpSharePlaySessionMediaProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A41B297C()
{
}

void sub_1A41B29C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v31 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - v19;
  v21 = sub_1A524CCB4();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, a2, v13);
  v22 = v8;
  (*(v9 + 16))(v11, a1, v8);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v9 + 80) + v24 + 24) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v14 + 32))(v26 + v23, v17, v13);
  v27 = (v26 + v24);
  v28 = v33;
  *v27 = v32;
  v27[1] = v28;
  v27[2] = v34;
  (*(v9 + 32))(v26 + v25, v30, v22);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41B2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  sub_1A41B6A28(0, &qword_1EB1342E8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8780]);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342F0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87B8]);
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41B2E84, 0, 0);
}

uint64_t sub_1A41B2E84()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  sub_1A524CD24();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1A41B2F6C;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v2, v0 + 48);
}

uint64_t sub_1A41B2F6C()
{

  if (v0)
  {
    v1 = sub_1A41B32D4;
  }

  else
  {
    v1 = sub_1A41B307C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41B307C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A524D264();
    v3 = sub_1A486DB9C();
    if (os_log_type_enabled(*v3, v2))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    *(v0 + 32) = v1;
    *(v0 + 40) = 0;
    sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
    sub_1A524CE74();
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  *(v0 + 64) = 0;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A41B32D4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[6];
  v2 = sub_1A524D264();
  v3 = sub_1A486DB9C();
  if (os_log_type_enabled(*v3, v2))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v0[7] = v1;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A41B3514(uint64_t a1)
{
  sub_1A41B6A28(0, &qword_1EB1342D8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8798]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-v4];
  v6 = *(v1 + 2);
  v10 = a1;
  v11 = *v1;
  v12 = v6;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8790]);
  return sub_1A524CEC4();
}

uint64_t sub_1A41B364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[27] = a4;
  sub_1A41B6A28(0, &qword_1EB1342E8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8780]);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342F0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87B8]);
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41B37B4, 0, 0);
}

uint64_t sub_1A41B37B4()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  sub_1A524CD24();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_1A41B389C;
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DB90](v0 + 160, 0, 0, v2, v0 + 192);
}

uint64_t sub_1A41B389C()
{

  if (v0)
  {
    v1 = sub_1A41B3E94;
  }

  else
  {
    v1 = sub_1A41B39AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41B39AC()
{
  if (*(v0 + 160))
  {
    [*(v0 + 160) size];
    sub_1A524DA74();
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  *(v0 + 208) = 0;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A41B3E94()
{
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[24];
  v2 = sub_1A524D264();
  v3 = *sub_1A486DB9C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[28];
    sub_1A41B7270(v4, (v0 + 2));
    v5 = v3;
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 134349570;
    *(v6 + 4) = *v4;
    sub_1A41B72A8(v4);
    *(v6 + 12) = 2082;
    sub_1A3C2EF94();
  }

  v0[25] = v1;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v7 = v0[1];

  return v7();
}

void sub_1A41B40F4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a5;
  v30 = a2;
  v31 = a4;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v28 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v29 = &v28 - v9;
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, v30, v12);
  (*(v8 + 16))(v10, a1, v7);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v8 + 80) + v22 + 48) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v13 + 32))(v24 + v21, v16, v12);
  v25 = (v24 + v22);
  v26 = v32;
  v27 = v32[1];
  *v25 = *v32;
  v25[1] = v27;
  v25[2] = v26[2];
  (*(v8 + 32))(v24 + v23, v29, v28);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41B442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  sub_1A41B6A28(0, &qword_1EB1342E8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8780]);
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342F0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87B8]);
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41B4594, 0, 0);
}

uint64_t sub_1A41B4594()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  sub_1A524CD24();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1A41B467C;
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DB90](v0 + 112, 0, 0, v2, v0 + 144);
}

uint64_t sub_1A41B467C()
{

  if (v0)
  {
    v1 = sub_1A41B4B3C;
  }

  else
  {
    v1 = sub_1A41B478C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41B478C()
{
  if (*(v0 + 112))
  {
    [*(v0 + 112) size];
    sub_1A524DA74();
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  *(v0 + 160) = 0;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A41B4B3C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[18];
  v2 = sub_1A524D264();
  v3 = *sub_1A486DB9C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[22];
    sub_1A41B7644(v4, (v0 + 2));
    v5 = v3;
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 134349570;
    *(v6 + 4) = *v4;
    sub_1A41B767C(v4);
    *(v6 + 12) = 2082;
    sub_1A3C2EF94();
  }

  v0[19] = v1;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A41B4D9C(uint64_t a1)
{
  sub_1A41B6A28(0, &qword_1EB1342D8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8798]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v1[2];
  v9 = a1;
  v10 = v11;
  (*(v6 + 104))(&v8[-v4], *MEMORY[0x1E69E8790]);
  return sub_1A524CEC4();
}

id sub_1A41B4ECC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1EB134210;
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker();
  *&v1[v4] = sub_1A41ACC88();
  *&v1[qword_1EB134218] = *(a1 + *(*a1 + 896));
  v6.receiver = v1;
  v6.super_class = ObjectType;

  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1A41B4FA8(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v31 = a3;
  v32 = a2;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v30 - v13;
  v15 = qword_1EB134210;

  v16 = sub_1A41ACDEC();

  v17 = sub_1A524D264();
  v18 = *sub_1A486DB9C();
  if (os_log_type_enabled(v18, v17))
  {
    v30[1] = a4;
    v30[2] = v15;
    v30[0] = v18;
    swift_unknownObjectRetain();
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v19 = 134349826;
    *(v19 + 4) = v16;
    *(v19 + 12) = 2082;
    v20 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v20)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v22 = sub_1A524CCB4();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = *(v7 + qword_1EB134218);
    v24 = *(v7 + v15);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v27 = v31;
    v26 = v32;
    *(v25 + 32) = v32;
    *(v25 + 40) = a1;
    *(v25 + 48) = v16;
    *(v25 + 56) = a5;
    *(v25 + 64) = a6;
    *(v25 + 72) = v23;
    *(v25 + 80) = v24;
    *(v25 + 88) = v27;
    *(v25 + 96) = a4;
    v28 = v26;

    swift_unknownObjectRetain();

    v29 = sub_1A3D4D930(0, 0, v14, &unk_1A5322550, v25);
    sub_1A3EE1368(v29, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744();

    return v16;
  }

  return result;
}

uint64_t sub_1A41B52F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41AFC34(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B53C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v10 = qword_1EB134210;

  v11 = sub_1A41ACDEC();

  v12 = sub_1A524D264();
  v13 = *sub_1A486DB9C();
  if (os_log_type_enabled(v13, v12))
  {
    v22[2] = v10;
    v22[3] = a3;
    v22[1] = v13;
    swift_unknownObjectRetain();
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 134349314;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2082;
    v15 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v15)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v17 = sub_1A524CCB4();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = *(v4 + qword_1EB134218);
    v19 = *(v4 + v10);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a1;
    v20[6] = v11;
    v20[7] = v19;
    v20[8] = v23;
    v20[9] = a3;
    swift_unknownObjectRetain();

    v21 = sub_1A3D4D930(0, 0, v9, &unk_1A5322518, v20);
    sub_1A3EE1368(v21, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744();

    return v11;
  }

  return result;
}