unint64_t sub_261B39AC0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65766F6D6572;
    }

    else
    {
      v6 = 6579297;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65766F6D6572 : 6579297;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39BF4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 1920298856;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 1920298856 : 0x6574756E696DLL;
        v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE600000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE300000000000000;
        v8 = 7954788;
      }

      else
      {
        v8 = v7 == 3 ? 1801807223 : 0x68746E6F6DLL;
        v9 = v7 == 3 ? 0xE400000000000000 : 0xE500000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1801807223;
      }

      else
      {
        v10 = 0x68746E6F6DLL;
      }

      if (v6 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v10 = 7954788;
        v11 = 0xE300000000000000;
      }

      if (v6)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v5 = 0x6574756E696DLL;
        v12 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v5 : v10;
      v14 = v6 <= 1 ? v12 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_261D00614();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 1920298856;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

size_t sub_261B39DB8(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA670, &qword_261D03228, type metadata accessor for ReminderEntity);
  *v3 = result;
  return result;
}

size_t sub_261B39DFC(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA590, &qword_261D03178, &qword_27FEDA598, &qword_261D05740);
  *v3 = result;
  return result;
}

size_t sub_261B39E3C(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &unk_27FEDA5A0, &qword_261D03180, &unk_27FEDE140, &qword_261D03188);
  *v3 = result;
  return result;
}

char *sub_261B39E7C(char *a1, int64_t a2, char a3)
{
  result = sub_261B3A468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B39E9C(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA660, &qword_261D03220, _s20CategorizedRemindersV12EditableItemOMa);
  *v3 = result;
  return result;
}

size_t sub_261B39EE0(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA630, &qword_261D031F0, MEMORY[0x277CB9DA8]);
  *v3 = result;
  return result;
}

size_t sub_261B39F24(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA638, &qword_261D031F8, &qword_27FEDA640, &qword_261D03200);
  *v3 = result;
  return result;
}

size_t sub_261B39F64(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA648, &qword_261D03208, &qword_27FEDA650, &qword_261D03210);
  *v3 = result;
  return result;
}

char *sub_261B39FA4(char *a1, int64_t a2, char a3)
{
  result = sub_261B3A588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B39FC4(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA618, &qword_261D031D8, &qword_27FEDA620, &qword_261D031E0);
  *v3 = result;
  return result;
}

void *sub_261B3A004(void *a1, int64_t a2, char a3)
{
  result = sub_261B3A694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B3A024(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA6E8, &qword_261D03280, &qword_27FEDA6E0, &qword_261D03278);
  *v3 = result;
  return result;
}

size_t sub_261B3A064(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA6A0, &qword_261D03258, MEMORY[0x277D45308]);
  *v3 = result;
  return result;
}

size_t sub_261B3A0A8(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA700, &qword_261D03290, &qword_27FEDA6F8, &qword_261D03288);
  *v3 = result;
  return result;
}

size_t sub_261B3A0E8(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA610, &qword_261D031D0, type metadata accessor for ListEntity);
  *v3 = result;
  return result;
}

char *sub_261B3A12C(char *a1, int64_t a2, char a3)
{
  result = sub_261B3A7C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B3A14C(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA6C0, &qword_261D03268, MEMORY[0x277CB9DA0]);
  *v3 = result;
  return result;
}

size_t sub_261B3A190(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA608, &qword_261D031C8, type metadata accessor for AppEntityID);
  *v3 = result;
  return result;
}

void *sub_261B3A1D4(void *a1, int64_t a2, char a3)
{
  result = sub_261B3A8F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B3A1F4(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA5B8, &qword_261D03198, &qword_27FEDA5C0, &qword_261D031A0);
  *v3 = result;
  return result;
}

size_t sub_261B3A234(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA6A8, &qword_261D03260, _s20CategorizedRemindersV15FetchedReminderVMa);
  *v3 = result;
  return result;
}

size_t sub_261B3A278(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA678, &qword_261D03230, &qword_27FEDA680, &qword_261D03238);
  *v3 = result;
  return result;
}

size_t sub_261B3A2B8(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA688, &qword_261D03240, &qword_27FEDA690, &qword_261D03248);
  *v3 = result;
  return result;
}

size_t sub_261B3A2F8(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA698, &qword_261D03250, type metadata accessor for GroupEntity);
  *v3 = result;
  return result;
}

char *sub_261B3A33C(char *a1, int64_t a2, char a3)
{
  result = sub_261B3AC0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B3A35C(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA628, &qword_261D031E8, MEMORY[0x277D45D50]);
  *v3 = result;
  return result;
}

void *sub_261B3A3A0(void *a1, int64_t a2, char a3)
{
  result = sub_261B3AD00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261B3A3C0(char *a1, int64_t a2, char a3)
{
  result = sub_261B3AE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261B3A3E0(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA578, &qword_261D03160, type metadata accessor for SiriUtilities.Grouping);
  *v3 = result;
  return result;
}

size_t sub_261B3A424(size_t a1, int64_t a2, char a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA580, &qword_261D03168, type metadata accessor for SiriUtilities.Day);
  *v3 = result;
  return result;
}

char *sub_261B3A468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5B0, &qword_261D03190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B3A588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261B3A694(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA718, &qword_261D032A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA720, &qword_261D032A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B3A7C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6C8, &qword_261D03270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261B3A8F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5C8, &qword_261D031A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA5D0, &qword_261D0A790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_261B3AA24(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_261B3AC0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA658, &qword_261D03218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_261B3AD00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5F8, &qword_261D031B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA600, &qword_261D031C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B3AE34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA588, &qword_261D03170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_261B3AF40(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_261B3B11C(unint64_t a1)
{
  v30 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_261D00274();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26671CA10](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v29 = v8;
        v9 = v7;
        v10 = [v7 entityName];
        v11 = sub_261CFFA74();
        v13 = v12;

        v15 = sub_261B37CE8(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_261CA31D4(v18, 1);
          v4 = v30;
          v20 = sub_261B37CE8(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_261D00654();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x26671C310](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_261CFFC84();
          }

          sub_261CFFCB4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_261D030F0;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v29 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_261B3B3B0(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_261B37CA4(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v8[3] < v16)
  {
    sub_261CA31C0(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_261B37CA4(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v11 = sub_261D00654();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v20 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v11 >> 6) + 8] |= 1 << v11;
    *(v20[6] + 8 * v11) = v9;
    *(v20[7] + 8 * v11) = v10;
    v26 = v20[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v27;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v11;
  sub_261CA49DC();
  v11 = v25;
  v20 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v11;
  v22 = *(v20[7] + 8 * v11);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v32 = *v5;
      v33 = *a3;
      v10 = *(v5 - 1);
      v6 = v32;
      v34 = sub_261B37CA4(v10);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v15 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v15)
      {
        goto LABEL_23;
      }

      v9 = v35;
      if (v33[3] < v38)
      {
        sub_261CA31C0(v38, 1);
        v39 = *a3;
        v34 = sub_261B37CA4(v10);
        if ((v9 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v41 = *a3;
      if (v9)
      {
        v28 = v34;
        v29 = *(v41[7] + 8 * v34);

        v30 = v41[7];
        v31 = *(v30 + 8 * v28);
        *(v30 + 8 * v28) = v29;
      }

      else
      {
        v41[(v34 >> 6) + 8] |= 1 << v34;
        *(v41[6] + 8 * v34) = v10;
        *(v41[7] + 8 * v34) = v6;
        v42 = v41[2];
        v15 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v41[2] = v43;
      }

      v5 += 2;
      if (!--v17)
      {
        return;
      }
    }
  }
}

void *sub_261B3B638(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v32 = type metadata accessor for ListEntity();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v26 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(type metadata accessor for AppEntityID() - 8);
  v27 = v11;
  v18 = (v11 + 48);
  v19 = (a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
  v20 = *(v17 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = a2;
  v29 = a3;
  while (1)
  {
    sub_261B35144(v19, a2, a3, v10);
    if (v3)
    {
      break;
    }

    if ((*v18)(v10, 1, v32) == 1)
    {
      sub_261AE6A40(v10, &unk_27FEDE0C0, &unk_261D02500);
    }

    else
    {
      v22 = v30;
      sub_261B01E2C(v10, v30);
      sub_261B01E2C(v22, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_261B419E8(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_261B419E8(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_261B01E2C(v31, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24);
      a2 = v28;
      a3 = v29;
    }

    v19 = (v19 + v20);
    if (!--v16)
    {
      return v21;
    }
  }

  return v21;
}

unint64_t sub_261B3B918()
{
  result = qword_27FEDA570;
  if (!qword_27FEDA570)
  {
    sub_261B05020(255, &qword_280D21DF0, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA570);
  }

  return result;
}

uint64_t sub_261B3B980(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_261B3B994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261B3B9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_261B3BA3C()
{
  result = qword_27FEDA710;
  if (!qword_27FEDA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA710);
  }

  return result;
}

uint64_t sub_261B3BA90()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA750);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA750);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.perform(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = *(*(type metadata accessor for SectionEntityID() - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = type metadata accessor for SectionEntity();
  *(v2 + 56) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;
  *(v2 + 88) = *(a2 + 16);
  sub_261CFFD24();
  *(v2 + 96) = sub_261CFFD14();
  v11 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261B3BCBC, v11, v10);
}

{
  v67 = *MEMORY[0x277D85DE8];
  *(v3 + 968) = v2;
  *(v3 + 960) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  *(v3 + 976) = swift_task_alloc();
  *(v3 + 984) = swift_task_alloc();
  v6 = type metadata accessor for ReminderEntity();
  *(v3 + 992) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 1000) = swift_task_alloc();
  v8 = sub_261CFD7E4();
  *(v3 + 1008) = v8;
  v9 = *(v8 - 8);
  *(v3 + 1016) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 1024) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA988, &unk_261D03480) - 8) + 64) + 15;
  *(v3 + 1032) = swift_task_alloc();
  v12 = sub_261CFD844();
  *(v3 + 1040) = v12;
  v13 = *(v12 - 8);
  *(v3 + 1048) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 1056) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0) - 8) + 64) + 15;
  *(v3 + 1064) = swift_task_alloc();
  *(v3 + 1072) = swift_task_alloc();
  v16 = sub_261CFC954();
  *(v3 + 1080) = v16;
  v17 = *(v16 - 8);
  *(v3 + 1088) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 1096) = swift_task_alloc();
  *(v3 + 1104) = swift_task_alloc();
  *(v3 + 1112) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA990, &unk_261D03490) - 8) + 64) + 15;
  *(v3 + 1120) = swift_task_alloc();
  v20 = sub_261CFF6A4();
  *(v3 + 1128) = v20;
  v21 = *(v20 - 8);
  *(v3 + 1136) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = swift_task_alloc();
  v23 = sub_261CFE1F4();
  *(v3 + 1160) = v23;
  v24 = *(v23 - 8);
  *(v3 + 1168) = v24;
  v25 = *(v24 + 64) + 15;
  *(v3 + 1176) = swift_task_alloc();
  *(v3 + 1184) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200) - 8) + 64) + 15;
  *(v3 + 1192) = swift_task_alloc();
  v27 = sub_261CFC7E4();
  *(v3 + 1200) = v27;
  v28 = *(v27 - 8);
  *(v3 + 1208) = v28;
  v29 = *(v28 + 64) + 15;
  *(v3 + 1216) = swift_task_alloc();
  *(v3 + 1224) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0) - 8) + 64) + 15;
  *(v3 + 1232) = swift_task_alloc();
  *(v3 + 1240) = swift_task_alloc();
  v31 = sub_261CFDA54();
  *(v3 + 1248) = v31;
  v32 = *(v31 - 8);
  *(v3 + 1256) = v32;
  v33 = *(v32 + 64) + 15;
  *(v3 + 1264) = swift_task_alloc();
  *(v3 + 1272) = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220) - 8) + 64) + 15;
  *(v3 + 1280) = swift_task_alloc();
  *(v3 + 1288) = swift_task_alloc();
  v35 = sub_261CFD4E4();
  *(v3 + 1296) = v35;
  v36 = *(v35 - 8);
  *(v3 + 1304) = v36;
  v37 = *(v36 + 64) + 15;
  *(v3 + 1312) = swift_task_alloc();
  *(v3 + 1320) = swift_task_alloc();
  *(v3 + 1328) = swift_task_alloc();
  v38 = sub_261CFDEA4();
  *(v3 + 1336) = v38;
  v39 = *(v38 - 8);
  *(v3 + 1344) = v39;
  v40 = *(v39 + 64) + 15;
  *(v3 + 1352) = swift_task_alloc();
  v41 = sub_261CFE8C4();
  *(v3 + 1360) = v41;
  v42 = *(v41 - 8);
  *(v3 + 1368) = v42;
  v43 = *(v42 + 64) + 15;
  *(v3 + 1376) = swift_task_alloc();
  *(v3 + 1384) = swift_task_alloc();
  *(v3 + 1392) = swift_task_alloc();
  v44 = sub_261CFDC34();
  *(v3 + 1400) = v44;
  v45 = *(v44 - 8);
  *(v3 + 1408) = v45;
  v46 = *(v45 + 64) + 15;
  *(v3 + 1416) = swift_task_alloc();
  v47 = sub_261CFD754();
  *(v3 + 1424) = v47;
  v48 = *(v47 - 8);
  *(v3 + 1432) = v48;
  v49 = *(v48 + 64) + 15;
  *(v3 + 1440) = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0) - 8) + 64) + 15;
  *(v3 + 1448) = swift_task_alloc();
  v51 = sub_261CFD524();
  *(v3 + 1456) = v51;
  v52 = *(v51 - 8);
  *(v3 + 1464) = v52;
  v53 = *(v52 + 64) + 15;
  *(v3 + 1472) = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8) - 8) + 64) + 15;
  *(v3 + 1480) = swift_task_alloc();
  *(v3 + 1488) = swift_task_alloc();
  RemindersPerformingContext = type metadata accessor for CreateRemindersPerformingContext();
  *(v3 + 1496) = RemindersPerformingContext;
  v56 = *(*(RemindersPerformingContext - 8) + 64) + 15;
  *(v3 + 1504) = swift_task_alloc();
  v57 = *(a2 + 176);
  *(v3 + 176) = *(a2 + 160);
  *(v3 + 192) = v57;
  *(v3 + 208) = *(a2 + 192);
  *(v3 + 224) = *(a2 + 208);
  v58 = *(a2 + 112);
  *(v3 + 112) = *(a2 + 96);
  *(v3 + 128) = v58;
  v59 = *(a2 + 144);
  *(v3 + 144) = *(a2 + 128);
  *(v3 + 160) = v59;
  v60 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v60;
  v61 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v61;
  v62 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v62;
  sub_261CFFD24();
  *(v3 + 1512) = sub_261CFFD14();
  v63 = sub_261CFFCF4();
  *(v3 + 1520) = v63;
  *(v3 + 1528) = v64;
  v65 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B438C4, v63, v64);
}

{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *a2;
  *(v3 + 96) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261B81DDC, v5, v4);
}

{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  *(v3 + 112) = *a2;
  v4 = *(a2 + 16);
  *(v3 + 184) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(v3 + 128) = v4;
  *(v3 + 136) = v5;
  sub_261CFFD24();
  *(v3 + 144) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 152) = v7;
  *(v3 + 160) = v6;

  return MEMORY[0x2822009F8](sub_261B88B98, v7, v6);
}

{
  v17 = *MEMORY[0x277D85DE8];
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v5 = sub_261CFE344();
  *(v3 + 128) = v5;
  v6 = *(v5 - 8);
  *(v3 + 136) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v8 = type metadata accessor for AppEntityID();
  *(v3 + 160) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v10 = type metadata accessor for GroupEntity();
  *(v3 + 176) = v10;
  v11 = *(v10 - 8);
  *(v3 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;
  *(v3 + 216) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 224) = sub_261CFFD14();
  v13 = sub_261CFFCF4();
  *(v3 + 232) = v13;
  *(v3 + 240) = v14;
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BBC078, v13, v14);
}

{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v5 = type metadata accessor for ListEntity();
  *(v3 + 136) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 104) = *a2;
  v8 = *(a2 + 16);
  *(v3 + 168) = v7;
  *(v3 + 176) = v8;
  v9 = *(a2 + 72);
  *(v3 + 48) = *(a2 + 56);
  *(v3 + 64) = v9;
  *(v3 + 80) = *(a2 + 88);
  *(v3 + 96) = *(a2 + 104);
  v10 = *(a2 + 40);
  *(v3 + 16) = *(a2 + 24);
  *(v3 + 32) = v10;
  sub_261CFFD24();
  *(v3 + 184) = sub_261CFFD14();
  v12 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BE9054, v12, v11);
}

{
  v24 = *MEMORY[0x277D85DE8];
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v5 = *(*(sub_261CFD754() - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v3 + 128) = v6;
  v7 = *(v6 - 8);
  *(v3 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v9 = type metadata accessor for ListEntity();
  *(v3 + 152) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v11 = sub_261CFD884();
  *(v3 + 168) = v11;
  v12 = *(v11 - 8);
  *(v3 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v14 = type metadata accessor for AppEntityID();
  *(v3 + 192) = v14;
  v15 = *(v14 - 8);
  *(v3 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440) - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298) - 8) + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = *a2;
  *(v3 + 296) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 304) = sub_261CFFD14();
  v20 = sub_261CFFCF4();
  v22 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BF12E4, v20, v21);
}

{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);
  sub_261CFFD24();
  *(v3 + 80) = sub_261CFFD14();
  v5 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C65810, v5, v4);
}

{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(*(type metadata accessor for SectionEntityID() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  v6 = type metadata accessor for AppEntityID();
  *(v3 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v8 = type metadata accessor for SectionEntity();
  *(v3 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v10 = *(a2 + 16);
  *(v3 + 120) = *a2;
  *(v3 + 136) = v10;
  *(v3 + 152) = *(a2 + 32);
  sub_261CFFD24();
  *(v3 + 160) = sub_261CFFD14();
  v12 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CE5D44, v12, v11);
}

uint64_t sub_261B3BCBC()
{
  v39 = v0;
  v1 = *(v0 + 96);

  if (qword_27FED9858 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = sub_261CFF7A4();
  __swift_project_value_buffer(v5, qword_27FEDA750);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v6 = sub_261CFF784();
  v7 = sub_261CFFE84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136446466;
    sub_261CFCBB4();
    sub_261B3C0DC(v10 + *(v11 + 24), v12);
    sub_261B3C140(v10, type metadata accessor for SectionEntity);
    v15 = SectionEntityID.entityIdentifierString.getter();
    v17 = v16;
    sub_261B3C140(v12, type metadata accessor for SectionEntityID);
    v18 = sub_261B879C8(v15, v17, &v38);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_261CFCBB4();
    v19 = *(v0 + 105);
    if (v19 == 2)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      *(v0 + 106) = v19 & 1;
      v21 = sub_261CFFAB4();
      v20 = v22;
    }

    v23 = sub_261B879C8(v21, v20, &v38);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_261AE2000, v6, v7, "[OpenSectionAppIntent] Open section with sectionID: %{public}s, showExpanded: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v14, -1, -1);
    MEMORY[0x26671D560](v13, -1, -1);
  }

  v24 = *(v0 + 72);
  v25 = *(v0 + 80);
  v26 = *(v0 + 64);
  v27 = *(v0 + 40);
  sub_261CFCBB4();
  v28 = *(v0 + 104);
  if (v28 == 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = (v28 & 1) == 0;
  }

  sub_261CFCBB4();
  sub_261BBEA50(v29, v27);
  sub_261B3C140(v26, type metadata accessor for SectionEntity);
  v30 = [objc_opt_self() defaultWorkspace];
  if (v30)
  {
    v31 = v30;
    v32 = *(v0 + 40);
    sub_261D00034();
  }

  v33 = *(v0 + 64);
  v34 = *(v0 + 48);
  v35 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  sub_261CFC9A4();

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_261B3C03C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B3C0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntityID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B3C140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B3C1A0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA768);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA768);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B3C288()
{
  v47 = v0;
  if (qword_27FED9860 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDA768);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v41 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x26671C340](v5, MEMORY[0x277D837D0]);
    v10 = sub_261B879C8(v8, v9, &v41);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v3, v4, "[ColorEntityQueryPerforming] Query color entities with identifiers: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v11 = v0[2];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 40;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_24;
        }

        v18 = v0[3];
        v20 = *(v16 - 1);
        v19 = *v16;
        sub_261CFD104();
        sub_261B3C598(v20, v19, &v41);

        v21 = *(&v41 + 1);
        if (*(&v41 + 1))
        {
          break;
        }

        sub_261AF98C8(v41, 0);
        v16 += 2;
        ++v17;
        if (v13 == v12)
        {
          goto LABEL_20;
        }
      }

      v39 = v42;
      v40 = v41;
      v38 = v43;
      v22 = v44;
      v23 = v45;
      v24 = v46;
      v37 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_261B41A10(0, *(v15 + 2) + 1, 1, v15);
      }

      v26 = *(v15 + 2);
      v25 = *(v15 + 3);
      v27 = v38;
      v28 = v39;
      v29 = v40;
      if (v26 >= v25 >> 1)
      {
        v34 = sub_261B41A10((v25 > 1), v26 + 1, 1, v15);
        v27 = v38;
        v28 = v39;
        v32 = v22;
        v31 = v23;
        v30 = v24;
        v15 = v34;
        v29 = v40;
      }

      else
      {
        v30 = v24;
        v31 = v23;
        v32 = v22;
      }

      *(v15 + 2) = v26 + 1;
      v33 = &v15[56 * v26];
      *(v33 + 4) = v29;
      *(v33 + 5) = v21;
      *(v33 + 6) = v28;
      *(v33 + 7) = v27;
      *(v33 + 8) = v32;
      *(v33 + 9) = v31;
      *(v33 + 10) = v30;
      v14 = v37;
    }

    while (v13 != v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v35 = v0[1];

  return v35(v15);
}

uint64_t sub_261B3C598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v141 = a3;
  v137 = sub_261CFD674();
  v136 = *(v137 - 8);
  v5 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v140 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD6A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_261CFDC74();
  v146 = *(v148 - 8);
  v16 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA828, &qword_261D033A8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = &v113 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA830, &qword_261D033B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v113 - v28;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA838, &qword_261D033B8);
  v143 = *(v144 - 8);
  v30 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v113 - v31;
  if (qword_27FED9868 != -1)
  {
LABEL_57:
    swift_once();
  }

  v32 = __swift_project_value_buffer(v18, qword_27FEDA780);
  (*(v19 + 16))(v25, v32, v18);
  v138 = a1;
  v139 = a2;
  sub_261CFFBF4();
  sub_261B01D28(&qword_27FEDA840, &qword_27FEDA828, &qword_261D033A8);
  sub_261CFE984();
  sub_261CFE9B4();

  v33 = *(v19 + 8);
  v33(v23, v18);
  v33(v25, v18);
  v34 = v144;
  v35 = v143;
  if ((*(v143 + 48))(v29, 1, v144) == 1)
  {
    result = sub_261AE6A40(v29, &qword_27FEDA830, &qword_261D033B0);
    v37 = v141;
    *v141 = 0u;
    v37[1] = 0u;
    v37[2] = 0u;
    *(v37 + 6) = 0;
    return result;
  }

  v126 = 0;
  (*(v35 + 32))(v142, v29, v34);
  sub_261CFE9C4();

  v19 = v154;
  v38 = v155;
  v39 = v156;
  v41 = v157;
  v40 = v158;
  v119 = v159;
  v118 = v160;
  v124 = v161;
  v131 = v162;
  v117 = v163;
  v42 = v165;
  v116 = v164;
  v128 = v168;
  v130 = v170;
  v129 = v169;
  v127 = v167;
  v132 = v166;
  if (v154)
  {
    v120 = v157;
    v121 = v156;
    v122 = v155;
    v123 = v158;
    v125 = v165;
    v43 = v151;
    v44 = v152;
    v29 = v153;
    a1 = sub_261CFDCC4();
    a2 = sub_261CFDC44();
    v25 = 0;
    v45 = *(a2 + 16);
    v145 = v146 + 16;
    v115 = v43;
    v18 = v43 >> 16;
    v114 = v44;
    v46 = v44 >> 16;
    v23 = (v146 + 8);
    while (v45 != v25)
    {
      if (v25 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      (*(v146 + 16))(v147, a2 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v25, v148);
      v48 = sub_261CFDC64();
      a1 = v49;
      if ((v49 & 0x2000000000000000) != 0)
      {
        v50 = HIBYTE(v49) & 0xF;
      }

      else
      {
        v50 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (v29 == v48 && v19 == v49 && !v18 && v46 == v50)
      {

        (*v23)(v147, v148);
LABEL_17:

        v148 = MEMORY[0x26671C1B0](v115, v114, v29, v19);
        v52 = v51;

        goto LABEL_21;
      }

      v47 = sub_261D005E4();

      (*v23)(v147, v148);
      ++v25;
      if (v47)
      {
        goto LABEL_17;
      }
    }

    v148 = 0;
    v52 = 0;
LABEL_21:
    v53 = v140;
    v42 = v125;
    v40 = v123;
    v38 = v122;
    v39 = v121;
    v41 = v120;
    if (!v123)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v148 = 0;
    v52 = 0;
    v53 = v140;
    if (!v158)
    {
      goto LABEL_27;
    }
  }

  if ((v39 ^ v38) >= 0x4000)
  {
    v54 = v53;
    v55 = v38;
    v56 = v39;
    v57 = v40;
    v58 = sub_261BD1624(v38, v39, v41, v40, 16);
    if ((v59 & 0x100) != 0)
    {
      sub_261CFD104();
      v146 = sub_261BD0C18(v55, v56, v41, v57, 16);
      v60 = v61;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v60 = v59;
      v146 = v58;
    }

    v53 = v54;
    v62 = v132;
    if (v60)
    {
      goto LABEL_27;
    }

    v75 = v124;
    if (!v131)
    {
      goto LABEL_28;
    }

    v147 = v52;
    v125 = v42;
    v76 = v119;
    v77 = v118;
    if ((v118 ^ v119) < 0x4000)
    {
    }

    else
    {
      v78 = v131;
      v79 = sub_261BD1624(v119, v118, v124, v131, 16);
      if ((v80 & 0x100) != 0)
      {
        sub_261CFD104();
        v81 = sub_261BD0C18(v76, v77, v75, v78, 16);
        v84 = v83;
        swift_bridgeObjectRelease_n();
        if ((v84 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v81 = v79;
        v82 = v80;

        if ((v82 & 1) == 0)
        {
LABEL_41:
          v52 = v147;
          v85 = v117;
          v86 = v116;
          v87 = v125;
          if (!v62)
          {
            goto LABEL_29;
          }

          if ((v116 ^ v117) < 0x4000)
          {
            goto LABEL_28;
          }

          v88 = sub_261BD1624(v117, v116, v125, v62, 16);
          if ((v89 & 0x100) != 0)
          {
            sub_261CFD104();
            v90 = sub_261BD0C18(v85, v86, v87, v62, 16);
            v93 = v92;
            swift_bridgeObjectRelease_n();
            if (v93)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v90 = v88;
            v91 = v89;

            if (v91)
            {
              goto LABEL_29;
            }
          }

          v94 = v146 / 255.0;
          v95 = v81 / 255.0;
          v96 = 0.0;
          v97 = v90 / 255.0;
          if (v130 >= 2)
          {
            v98 = v128;
            if ((v128 ^ v127) >> 14)
            {
              v99 = v129;
              v100 = v127;
              v101 = v130;
              v102 = sub_261BD1624(v127, v128, v129, v130, 16);
              v104 = v98;
              if ((v103 & 0x100) != 0)
              {
                sub_261B426A4(v100, v98, v99, v101);
                v105 = sub_261BD0C18(v100, v98, v99, v101, 16);
                v106 = v107;
                sub_261B42690(v100, v104, v99, v101);
              }

              else
              {
                v105 = v102;
                v106 = v103;
              }

              sub_261B42690(v100, v104, v99, v101);
              if ((v106 & 1) == 0)
              {
                LODWORD(v140) = 0;
                v96 = v105 / 255.0;
                goto LABEL_55;
              }
            }

            else
            {
              sub_261B42690(v127, v128, v129, v130);
            }
          }

          LODWORD(v140) = 1;
LABEL_55:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
          sub_261CFF9B4();
          sub_261CFD874();
          v108 = *MEMORY[0x277CC9110];
          v109 = *(v136 + 104);
          v110 = v137;
          v109(v53, v108, v137);
          sub_261CFD6C4();
          v146 = sub_261CFCB14();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
          sub_261CFF9B4();
          sub_261CFD874();
          v109(v53, v108, v110);
          sub_261CFD6B4();
          v70 = sub_261CFCB44();
          sub_261CFF9B4();
          sub_261CFD874();
          LODWORD(v132) = v108;
          v109(v53, v108, v110);
          sub_261CFD6B4();
          v145 = sub_261CFCB44();
          sub_261CFF9B4();
          sub_261CFD874();
          v109(v53, v108, v110);
          v111 = v109;
          sub_261CFD6B4();
          v112 = sub_261CFCB44();
          sub_261CFF9B4();
          sub_261CFD874();
          v111(v53, v132, v110);
          v68 = v146;
          v71 = v112;
          v69 = v145;
          sub_261CFD6C4();
          v72 = sub_261CFCB44();
          v149 = *&v148;
          v150 = v147;
          v52 = v139;
          sub_261CFD104();
          sub_261CFCA14();
          v149 = v94;
          LOBYTE(v150) = 0;
          sub_261CFCA14();
          v149 = v95;
          LOBYTE(v150) = 0;
          sub_261CFCA14();
          v149 = v97;
          LOBYTE(v150) = 0;
          sub_261CFCA14();
          v149 = v96;
          LOBYTE(v150) = v140;
          goto LABEL_31;
        }
      }
    }

    v52 = v147;
    goto LABEL_29;
  }

LABEL_27:

LABEL_28:

LABEL_29:
  sub_261B42690(v127, v128, v129, v130);
  if (!v52)
  {
    result = (*(v143 + 8))(v142, v144);
    v73 = 0;
    v68 = 0;
    v70 = 0;
    v69 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  v147 = v52;
  sub_261CFD874();
  v63 = *MEMORY[0x277CC9110];
  v64 = *(v136 + 104);
  v65 = v137;
  v64(v53, v63, v137);
  sub_261CFD6C4();
  v146 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v64(v53, v63, v65);
  sub_261CFD6B4();
  v140 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v64(v53, v63, v65);
  sub_261CFD6B4();
  v145 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v64(v53, v63, v65);
  sub_261CFD6B4();
  v66 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v67 = v65;
  v68 = v146;
  v64(v53, v63, v67);
  v69 = v145;
  v70 = v140;
  sub_261CFD6C4();
  v71 = v66;
  v72 = sub_261CFCB44();
  v149 = *&v148;
  v150 = v147;
  v52 = v139;
  sub_261CFD104();
  sub_261CFCA14();
  v149 = 0.0;
  LOBYTE(v150) = 1;
  sub_261CFCA14();
  v149 = 0.0;
  LOBYTE(v150) = 1;
  sub_261CFCA14();
  v149 = 0.0;
  LOBYTE(v150) = 1;
  sub_261CFCA14();
  v149 = 0.0;
  LOBYTE(v150) = 1;
LABEL_31:
  sub_261CFCA14();
  result = (*(v143 + 8))(v142, v144);
  v73 = v138;
LABEL_33:
  v74 = v141;
  *v141 = v73;
  v74[1] = v52;
  v74[2] = v68;
  v74[3] = v70;
  v74[4] = v69;
  v74[5] = v71;
  v74[6] = v72;
  return result;
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:targetList:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_261CFDC74();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = type metadata accessor for ListEntity();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B3DC2C, 0, 0);
}

uint64_t sub_261B3DC2C()
{
  v89 = v0;
  v88 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_261B425D4(v0[8], v3);
  v4 = 0x27FED9000uLL;
  v80 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_261AE6A40(v0[13], &unk_27FEDE0C0, &unk_261D02500);
    if (qword_27FED9860 != -1)
    {
      swift_once();
    }

    v5 = sub_261CFF7A4();
    __swift_project_value_buffer(v5, qword_27FEDA768);
    v6 = sub_261CFF784();
    v7 = sub_261CFFE84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261AE2000, v6, v7, "[ColorEntityQueryPerforming] Query suggested entities with no target list", v8, 2u);
      MEMORY[0x26671D560](v8, -1, -1);
    }

    sub_261CFDCC4();
    v9 = sub_261CFDC44();
    v10 = *(v9 + 16);
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  sub_261B01E2C(v0[13], v0[17]);
  if (qword_27FED9860 != -1)
  {
    swift_once();
  }

  v25 = v0[16];
  v26 = v0[17];
  v27 = sub_261CFF7A4();
  __swift_project_value_buffer(v27, qword_27FEDA768);
  sub_261B0A18C(v26, v25);
  v28 = sub_261CFF784();
  v29 = sub_261CFFE84();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[16];
  v32 = 0x277D44000uLL;
  v33 = &unk_279AFB000;
  if (v30)
  {
    v34 = v0[14];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    v37 = (v31 + *(v34 + 20));
    v38 = *(type metadata accessor for AppEntityID() + 20);
    v39 = *v37;
    v40 = v37[1];
    v41 = objc_allocWithZone(MEMORY[0x277D44700]);
    v42 = sub_261CFD814();
    v43 = sub_261CFFA54();
    v44 = v41;
    v32 = 0x277D44000;
    v45 = [v44 initWithUUID:v42 entityName:v43];

    v4 = 0x27FED9000;
    sub_261B0A1F0(v31);
    *(v35 + 4) = v45;
    *v36 = v45;
    v33 = &unk_279AFB000;
    v0 = v80;
    _os_log_impl(&dword_261AE2000, v28, v29, "[ColorEntityQueryPerforming] Query suggested entities with target list: %{public}@", v35, 0xCu);
    sub_261AE6A40(v36, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v36, -1, -1);
    MEMORY[0x26671D560](v35, -1, -1);
  }

  else
  {

    sub_261B0A1F0(v31);
  }

  v46 = *(v0[9] + 16);
  v47 = (v0[17] + *(v0[14] + 20));
  v48 = *(type metadata accessor for AppEntityID() + 20);
  v49 = *v47;
  v50 = v47[1];
  v51 = objc_allocWithZone(*(v32 + 1792));
  v52 = sub_261CFD814();
  v53 = sub_261CFFA54();
  v54 = [v51 v33[46]];

  v0[7] = 0;
  v55 = [v46 fetchListWithObjectID:v54 error:v0 + 7];

  v56 = v0[7];
  v57 = v0[17];
  if (v55)
  {
    sub_261CFDCC4();
    v58 = sub_261B42644();
    v59 = MEMORY[0x277D45F10];
    v0[5] = v58;
    v0[6] = v59;
    v0[2] = v55;
    v60 = v56;
    v61 = sub_261CFDC54();
    sub_261B0A1F0(v57);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v9 = v61;
    v10 = *(v61 + 16);
    if (v10)
    {
LABEL_7:
      v11 = v0[11];
      v13 = *(v11 + 16);
      v12 = v11 + 16;
      v79 = v13;
      v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v15 = *(v12 + 56);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = v0[12];
        v18 = v0[10];
        v79(v17, v14, v18);
        v19 = sub_261CFDC64();
        ColorEntity.init(name:)(v19, v20, &v84);
        (*(v12 - 8))(v17, v18);
        v21 = v84;
        v82 = v86;
        v83 = v85;
        v81 = v87;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_261B41A10(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_261B41A10((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v24 = &v16[56 * v23];
        *(v24 + 4) = v21;
        *(v24 + 40) = v83;
        *(v24 + 56) = v82;
        *(v24 + 72) = v81;
        v14 += v15;
        --v10;
        v0 = v80;
      }

      while (v10);

      v4 = 0x27FED9000;
      goto LABEL_22;
    }

LABEL_21:

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    if (*(v4 + 2144) != -1)
    {
      swift_once();
    }

    v62 = sub_261CFF7A4();
    __swift_project_value_buffer(v62, qword_27FEDA768);
    sub_261CFD104();
    v63 = sub_261CFF784();
    v64 = sub_261CFFE84();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      *(v65 + 4) = *(v16 + 2);

      _os_log_impl(&dword_261AE2000, v63, v64, "[ColorEntityQueryPerforming] Query suggested entities populated %ld colors", v65, 0xCu);
      MEMORY[0x26671D560](v65, -1, -1);
    }

    else
    {
    }

    v67 = v0[16];
    v66 = v0[17];
    v69 = v0[12];
    v68 = v0[13];

    v70 = v0[1];
    v71 = *MEMORY[0x277D85DE8];

    return v70(v16);
  }

  v73 = v0[16];
  v75 = v0[12];
  v74 = v0[13];
  v76 = v56;
  sub_261CFD654();

  swift_willThrow();
  sub_261B0A1F0(v57);

  v77 = v0[1];
  v78 = *MEMORY[0x277D85DE8];

  return v77();
}

uint64_t REMStoreIntentPerformer.entities(query:matching:targetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_261CFD6A4();
  *(v5 + 144) = v8;
  v9 = *(v8 - 8);
  *(v5 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = *a1;
  *(v5 + 200) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_261B3E4B4, 0, 0);
}

uint64_t sub_261B3E4B4()
{
  v15 = v0;
  if (qword_27FED9860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDA768);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_261B879C8(v6, v5, &v14);
    _os_log_impl(&dword_261AE2000, v3, v4, "[ColorEntityQueryPerforming] Query color entities with string: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v9 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v9;
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_261B3E680;
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);

  return REMStoreIntentPerformer.suggestedEntities(query:targetList:)(v10, v11);
}

uint64_t sub_261B3E680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_261B3EC28;
  }

  else
  {
    v5 = sub_261B3E794;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_261B3E794()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v46 = v0[19];
    v48 = -v2;
    v4 = MEMORY[0x277D84F90];
    v5 = v1 + 40;
    v49 = v0[27];
    v39 = v1 + 40;
    while (1)
    {
      v40 = v4;
      v6 = (v5 + 56 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *v6;
        v47 = *(v6 - 1);
        v8 = v6[1];
        v9 = v6[2];
        v11 = v6[3];
        v10 = v6[4];
        v12 = v6[5];
        sub_261CFD104();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v50 = v11;
        sub_261CFCDA4();
        v51 = v10;
        sub_261CFCDA4();
        v52 = v12;
        sub_261CFCDA4();
        sub_261CFCA04();
        v13 = v0[6];
        if (v13)
        {
          break;
        }

LABEL_5:

        ++v3;
        v6 += 7;
        v1 = v49;
        if (v48 + v3 == 1)
        {
          v4 = v40;
          goto LABEL_21;
        }
      }

      v14 = v0[5];
      if (qword_27FED99F8 != -1)
      {
        v29 = v0[5];
        swift_once();
        v14 = v29;
      }

      v15 = qword_27FEF3E40;
      if (!*(qword_27FEF3E40 + 16))
      {
        break;
      }

      v16 = sub_261B37CE8(v14, v13);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      v45 = v9;
      v20 = v0[21];
      v19 = v0[22];
      v21 = v0[18];
      v41 = v0[20];
      v42 = v0[17];
      v44 = v0[14];
      v43 = v0[13];
      v22 = *(v15 + 56) + *(v46 + 72) * v16;
      v23 = *(v46 + 16);
      v23(v20, v22, v21);
      (*(v46 + 32))(v19, v20, v21);
      v23(v41, v19, v21);
      v0[7] = sub_261CFFA94();
      v0[8] = v24;
      sub_261CFD874();
      v25 = sub_261CFD884();
      (*(*(v25 - 8) + 56))(v42, 0, 1, v25);
      sub_261B3BA3C();
      v26 = sub_261D00194();
      v28 = v27;
      sub_261AE6A40(v42, &qword_27FEDA708, &qword_261D03298);

      v0[9] = v26;
      v0[10] = v28;
      v0[11] = v43;
      v0[12] = v44;
      LOBYTE(v26) = sub_261D00184();

      (*(v46 + 8))(v19, v21);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      v4 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261B3A12C(0, *(v40 + 16) + 1, 1);
        v4 = v40;
      }

      v5 = v39;
      v31 = *(v4 + 16);
      v30 = *(v4 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_261B3A12C((v30 > 1), v31 + 1, 1);
        v4 = v40;
      }

      *(v4 + 16) = v31 + 1;
      v32 = (v4 + 56 * v31);
      v32[4] = v47;
      v32[5] = v7;
      v32[6] = v8;
      v32[7] = v45;
      v32[8] = v50;
      v32[9] = v51;
      v32[10] = v52;
      v1 = v49;
      if (!(v48 + v3))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_21:
  v33 = v0[27];
  v34 = v0[21];
  v35 = v0[22];
  v36 = v0[20];
  v37 = v0[17];

  v38 = v0[1];

  v38(v4);
}

uint64_t sub_261B3EC28()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[17];

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_261B3ECB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA828, &qword_261D033A8);
  __swift_allocate_value_buffer(v5, qword_27FEDA780);
  __swift_project_value_buffer(v5, qword_27FEDA780);
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610);
  sub_261CFE9A4();
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA868, &qword_261D033C8);
  sub_261B01D28(&qword_27FEDA840, &qword_27FEDA828, &qword_261D033A8);
  sub_261CFE9A4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_261B3EE94@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_261CFE944();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v36 = *(v32 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v31 - v8;
  MEMORY[0x28223BE20](v7);
  v40 = &v31 - v9;
  v10 = sub_261CFDB44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA950, &qword_261D03448);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  sub_261CFE974();
  sub_261B42714();
  sub_261CFDB54();
  v23 = sub_261B01D28(&qword_27FEDA958, &qword_27FEDA950, &qword_261D03448);
  v31 = v22;
  MEMORY[0x26671A1D0](v20, v12, v23);
  v24 = *(v13 + 8);
  v24(v20, v12);
  sub_261CFE974();
  sub_261CFDB54();
  MEMORY[0x26671A1D0](v17, v12, v23);
  v24(v17, v12);
  sub_261CFDB14();
  v25 = v35;
  sub_261CFDB34();
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610);
  v26 = v32;
  v27 = v33;
  sub_261CFE904();
  v28 = v34;
  sub_261CFE904();
  sub_261CFE8D4();
  v29 = *(v36 + 8);
  v29(v28, v26);
  v29(v27, v26);
  (*(v38 + 8))(v25, v39);
  v29(v40, v26);
  v24(v20, v12);
  return (v24)(v31, v12);
}

uint64_t sub_261B3F34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA870, &qword_261D033D0);
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA878, &qword_261D033D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA880, &qword_261D033E0);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v63 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v56 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA890, &qword_261D033F0);
  v67 = *(v65 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v21 = v56 - v20;
  v73 = sub_261CFE944();
  v77 = *(v73 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x28223BE20](v73);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v56 - v27;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A0, &qword_261D033F8);
  v76 = *(v59 - 8);
  v29 = *(v76 + 64);
  v30 = MEMORY[0x28223BE20](v59);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v57 = v56 - v33;
  v34 = sub_261CFE994();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v56[1] = v35 + 56;
  v36(v28, 1, 1, v34);
  sub_261CFDB34();
  sub_261B3FB64(v18);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A8, &qword_261D03400);
  v75 = MEMORY[0x277D85AC0];
  sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8);
  v58 = v21;
  sub_261CFE934();
  (*(v74 + 8))(v18, v15);
  v74 = *(v77 + 8);
  v77 += 8;
  v38 = v73;
  (v74)(v24, v73);
  sub_261AE6A40(v28, &qword_27FEDA898, &unk_261D08600);
  MEMORY[0x26671A1F0](v21, v37);
  v39 = sub_261B01D28(&qword_27FEDA8B8, &qword_27FEDA8A0, &qword_261D033F8);
  v40 = v59;
  MEMORY[0x26671A1D0](v32, v59, v39);
  v41 = *(v76 + 8);
  v76 += 8;
  v60 = v41;
  v41(v32, v40);
  v36(v28, 1, 1, v34);
  sub_261CFDB34();
  v42 = v61;
  sub_261B4032C(v66, v61);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8C0, &qword_261D03408);
  sub_261B01D28(&qword_27FEDA8C8, &qword_27FEDA870, &qword_261D033D0);
  v44 = v62;
  v45 = v70;
  sub_261CFE934();
  (*(v71 + 8))(v42, v45);
  (v74)(v24, v38);
  sub_261AE6A40(v28, &qword_27FEDA898, &unk_261D08600);
  v46 = v63;
  MEMORY[0x26671A1F0](v44, v43);
  v47 = sub_261B01D28(&qword_27FEDA8D0, &qword_27FEDA880, &qword_261D033E0);
  v48 = v64;
  v49 = v46;
  v50 = v68;
  MEMORY[0x26671A1D0](v46, v68, v47);
  v51 = *(v69 + 8);
  v51(v49, v50);
  v52 = v57;
  v53 = v58;
  sub_261CFDB14();
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA868, &qword_261D033C8);
  sub_261B01D28(&qword_27FEDA8D8, &qword_27FEDA890, &qword_261D033F0);
  v54 = v65;
  sub_261CFE8D4();
  (v74)(v24, v73);
  (*(v67 + 8))(v53, v54);
  v51(v48, v50);
  return v60(v52, v40);
}

uint64_t sub_261B3FB64@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v55 - v3;
  v5 = sub_261CFDB44();
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA938, &qword_261D03440);
  v66 = *(v9 - 8);
  v10 = *(v66 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v55 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v73 = *(v67 - 8);
  v14 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v67);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v63 = &v55 - v21;
  v22 = sub_261CFE944();
  v71 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v55 = &v55 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v72 = *(v64 - 8);
  v29 = *(v72 + 64);
  v30 = MEMORY[0x28223BE20](v64);
  v57 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v59 = &v55 - v32;
  v74 = 64;
  v75 = 0xE100000000000000;
  v60 = sub_261B426C0();
  MEMORY[0x26671A1D0](v76, &v74, MEMORY[0x277D837D0], v60);
  sub_261CFDB34();
  sub_261CFE954();
  v33 = sub_261CFE994();
  (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
  sub_261CFDB34();
  sub_261B42714();
  v34 = MEMORY[0x277D83E40];
  v56 = v17;
  sub_261CFE924();
  v69 = *(v23 + 8);
  v70 = v23 + 8;
  v69(v27, v22);
  sub_261AE6A40(v4, &qword_27FEDA898, &unk_261D08600);
  (*(v65 + 8))(v8, v5);
  v35 = v62;
  MEMORY[0x26671A290](v17, v34);
  v36 = sub_261B01D28(&qword_27FEDA948, &qword_27FEDA938, &qword_261D03440);
  v37 = v58;
  MEMORY[0x26671A1D0](v35, v9, v36);
  v38 = *(v66 + 1);
  v38(v35, v9);
  v39 = v61;
  sub_261CFDB14();
  v38(v37, v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610);
  v41 = v63;
  v65 = v40;
  v42 = v67;
  v43 = v55;
  sub_261CFE914();
  v44 = *(v73 + 8);
  v73 += 8;
  v66 = v44;
  v44(v39, v42);
  v45 = v43;
  v69(v43, v71);
  v46 = v57;
  MEMORY[0x26671A260](v41, v40);
  v47 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620);
  v48 = v59;
  v49 = v64;
  MEMORY[0x26671A1D0](v46, v64, v47);
  v50 = *(v72 + 8);
  v72 += 8;
  v50(v46, v49);
  v74 = v76[0];
  v75 = v76[1];
  sub_261CFDB14();

  v51 = v45;
  sub_261CFDB34();
  v52 = v56;
  sub_261CFE904();
  sub_261CFE8D4();
  v53 = v66;
  v66(v52, v42);
  v69(v51, v71);
  v53(v39, v42);
  return (v50)(v48, v49);
}

uint64_t sub_261B4032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E0, &qword_261D03410);
  v133 = *(v131 - 8);
  v3 = *(v133 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = &v121 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  v130 = *(v128 - 8);
  v5 = *(v130 + 64);
  MEMORY[0x28223BE20](v128);
  v142 = &v121 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA890, &qword_261D033F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v127 = &v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v140 = &v121 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A0, &qword_261D033F8);
  v152 = *(v141 - 8);
  v13 = *(v152 + 64);
  v14 = MEMORY[0x28223BE20](v141);
  v126 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v121 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v121 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v26 = *(v25 - 8);
  v149 = v25;
  v150 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v124 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v121 - v30;
  v146 = sub_261CFE944();
  v158 = *(v146 - 8);
  v32 = *(v158 + 64);
  v33 = MEMORY[0x28223BE20](v146);
  v122 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v121 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v38 = *(v37 - 8);
  v160 = v37;
  v161 = v38;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v123 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v138 = &v121 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v147 = &v121 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v148 = &v121 - v47;
  MEMORY[0x28223BE20](v46);
  v151 = &v121 - v48;
  v162 = 35;
  v163 = 0xE100000000000000;
  v125 = sub_261B426C0();
  MEMORY[0x26671A1D0](v164, &v162, MEMORY[0x277D837D0], v125);
  sub_261CFDB34();
  v139 = MEMORY[0x277D85AC0];
  v49 = sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610);
  v154 = v22;
  v134 = a1;
  MEMORY[0x26671A1D0](a1, v17, v49);
  sub_261CFDB14();
  v50 = *(v18 + 8);
  v50(v22, v17);
  v159 = v50;
  v51 = v18 + 8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  v157 = v31;
  v53 = v24;
  v145 = v24;
  v54 = v52;
  sub_261CFE914();
  v50(v53, v17);
  v55 = *(v158 + 8);
  v158 += 8;
  v136 = v55;
  v55(v36, v146);
  v56 = v148;
  MEMORY[0x26671A260](v31, v54);
  v153 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620);
  v57 = v56;
  v58 = v56;
  v59 = v160;
  MEMORY[0x26671A1D0](v57, v160, v153);
  v155 = *(v161 + 8);
  v161 += 8;
  v155(v58, v59);
  v60 = v36;
  sub_261CFDB34();
  v61 = v154;
  MEMORY[0x26671A1D0](a1, v17, v49);
  v62 = v145;
  sub_261CFDB14();
  v63 = v61;
  v64 = v159;
  v156 = v51;
  v159(v63, v17);
  v65 = v157;
  v144 = v54;
  sub_261CFE914();
  v64(v62, v17);
  v135 = v60;
  v66 = v146;
  v136(v60, v146);
  v67 = v147;
  MEMORY[0x26671A260](v65, v54);
  v68 = v160;
  v69 = v153;
  MEMORY[0x26671A1D0](v67, v160, v153);
  v155(v67, v68);
  sub_261CFDB34();
  v70 = v154;
  v71 = v49;
  MEMORY[0x26671A1D0](v134, v17, v49);
  sub_261CFDB14();
  v72 = v159;
  v159(v70, v17);
  v73 = v157;
  v74 = v144;
  v75 = v135;
  sub_261CFE914();
  v72(v62, v17);
  v76 = v66;
  v77 = v136;
  v136(v75, v76);
  v78 = v138;
  MEMORY[0x26671A260](v73, v74);
  v79 = v160;
  MEMORY[0x26671A1D0](v78, v160, v69);
  v155(v78, v79);
  v80 = sub_261CFE994();
  (*(*(v80 - 8) + 56))(v140, 1, 1, v80);
  sub_261CFDB34();
  v81 = v122;
  sub_261CFDB34();
  v82 = v154;
  MEMORY[0x26671A1D0](v134, v17, v71);
  v121 = v71;
  sub_261CFDB14();
  v83 = v82;
  v84 = v17;
  v137 = v17;
  v85 = v159;
  v159(v83, v17);
  v86 = v124;
  v87 = v144;
  sub_261CFE914();
  v85(v62, v84);
  v88 = v146;
  v77(v81, v146);
  v89 = v77;
  v90 = v123;
  MEMORY[0x26671A260](v86, v87);
  v91 = v138;
  v92 = v160;
  MEMORY[0x26671A1D0](v90, v160, v153);
  v93 = v90;
  v94 = v155;
  v155(v93, v92);
  v95 = v157;
  sub_261CFDB14();
  v94(v91, v92);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A8, &qword_261D03400);
  v124 = sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8);
  v97 = v127;
  v98 = v140;
  v99 = v149;
  v100 = v135;
  sub_261CFE934();
  v101 = *(v150 + 8);
  v150 += 8;
  v138 = v101;
  (v101)(v95, v99);
  v102 = v100;
  v89(v100, v88);
  sub_261AE6A40(v98, &qword_27FEDA898, &unk_261D08600);
  v103 = v126;
  MEMORY[0x26671A1F0](v97, v96);
  v134 = sub_261B01D28(&qword_27FEDA8B8, &qword_27FEDA8A0, &qword_261D033F8);
  v104 = v141;
  MEMORY[0x26671A1D0](v103, v141, v134);
  v105 = *(v152 + 8);
  v152 += 8;
  v140 = v105;
  (v105)(v103, v104);
  v162 = v164[0];
  v163 = v164[1];
  sub_261CFDB14();

  v106 = v102;
  sub_261CFDB34();
  v107 = v154;
  v108 = v137;
  v109 = v106;
  sub_261CFE904();
  sub_261CFE8D4();
  v159(v107, v108);
  v89(v106, v88);
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA910, &qword_261D03428);
  sub_261CFE8D4();
  v89(v106, v88);
  v110 = v89;
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA918, &qword_261D03430);
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418);
  v111 = v129;
  v112 = v147;
  v113 = v128;
  sub_261CFE8D4();
  v114 = v88;
  v110(v106, v88);
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA928, &qword_261D03438);
  sub_261B01D28(&qword_27FEDA930, &qword_27FEDA8E0, &qword_261D03410);
  v115 = v143;
  v116 = v131;
  v117 = v141;
  sub_261CFE8D4();
  v110(v109, v114);
  (*(v133 + 8))(v111, v116);
  (*(v130 + 8))(v142, v113);
  (v138)(v157, v149);
  v159(v145, v137);
  (v140)(v115, v117);
  v118 = v160;
  v119 = v155;
  v155(v112, v160);
  v119(v148, v118);
  return (v119)(v151, v118);
}

uint64_t sub_261B41348(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:for:)(v6, a2);
}

uint64_t sub_261B413E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B0D584;

  return REMStoreIntentPerformer.suggestedEntities(query:targetList:)(v6, a2);
}

uint64_t sub_261B41478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:matching:targetList:)(a1, a2, a3, a4);
}

char *sub_261B415B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5B0, &qword_261D03190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B41720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7D0, &qword_261D03350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261B418E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA818, &qword_261D03398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_261B41A10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6C8, &qword_261D03270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B41B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_261B41CE0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_261B41EC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7B0, &qword_261D03330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7B8, &qword_261D03338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B42010(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7E8, &qword_261D03368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B42130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA658, &qword_261D03218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_261B42274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA800, &qword_261D03380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_261B423F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_261B425D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261B42644()
{
  result = qword_27FEDB0E0;
  if (!qword_27FEDB0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDB0E0);
  }

  return result;
}

uint64_t sub_261B42690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_261B426A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_261CFD104();
  }

  return result;
}

unint64_t sub_261B426C0()
{
  result = qword_27FEDA8F8;
  if (!qword_27FEDA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA8F8);
  }

  return result;
}

unint64_t sub_261B42714()
{
  result = qword_27FEDA940;
  if (!qword_27FEDA940)
  {
    sub_261CFDB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA940);
  }

  return result;
}

double ColorEntity.init(list:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFDC94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_261CFDCC4();
  sub_261AE498C(a1, &v15);
  sub_261CFDCA4();
  sub_261B428E0(&v15);
  (*(v5 + 16))(v9, v11, v4);
  sub_261B42948(v9, &v15);
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v5 + 8))(v11, v4);
  *a2 = v15;
  v12 = v17;
  *(a2 + 8) = v16;
  *(a2 + 24) = v12;
  result = *&v18;
  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_261B428E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA960, &qword_261D03460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B42948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFDC74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFDC94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D45C48])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    v15 = sub_261CFDC64();
    ColorEntity.init(name:)(v15, v16, &v30);
    (*(v10 + 8))(a1, v9);
    result = (*(v5 + 8))(v8, v4);
LABEL_5:
    v26 = v31;
    v27 = v32;
    v28 = v33;
    *a2 = v30;
    *(a2 + 8) = v26;
    *(a2 + 24) = v27;
    *(a2 + 40) = v28;
    return result;
  }

  if (v14 == *MEMORY[0x277D45C40])
  {
    (*(v10 + 96))(v13, v9);
    v18 = *v13;
    [*v13 red];
    v20 = v19;
    [v18 green];
    v22 = v21;
    [v18 blue];
    v24 = v23;
    [v18 alpha];
    ColorEntity.init(red:green:blue:alpha:)(v25, 0, &v30, v20, v22, v24);

    result = (*(v10 + 8))(a1, v9);
    goto LABEL_5;
  }

  result = sub_261D00604();
  __break(1u);
  return result;
}

id sub_261B42C3C(char a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[3];
  sub_261CFCA04();
  if (v29)
  {
    v8 = 0;
  }

  else
  {
    sub_261CFCA04();
    sub_261CFCA04();
    sub_261CFCA04();
    v13 = v28;
    v14 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_261D01420;
    v16 = sub_261BBB14C(v28);
    v17 = MEMORY[0x277D83B88];
    v18 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v18;
    *(v15 + 32) = v16;
    v19 = sub_261BBB14C(v28);
    *(v15 + 96) = v17;
    *(v15 + 104) = v18;
    *(v15 + 72) = v19;
    v20 = sub_261BBB14C(v28);
    *(v15 + 136) = v17;
    *(v15 + 144) = v18;
    *(v15 + 112) = v20;
    v21 = sub_261CFFA84();
    v8 = v22;
    v28 = *&v21;
    v29 = v22;
    if ((v14 & 1) == 0 && v13 >= 0.0 && v13 < 1.0)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_261D03450;
      v24 = sub_261BBB14C(v13);
      *(v23 + 56) = v17;
      *(v23 + 64) = v18;
      *(v23 + 32) = v24;
      v25 = sub_261CFFA84();
      MEMORY[0x26671C210](v25);

      v8 = v29;
    }
  }

  sub_261CFCA04();
  if (v29)
  {
    v9 = sub_261CFFA54();

    if (a1)
    {
      if (v8)
      {
        v10 = sub_261CFFA54();
      }

      else
      {
        v10 = 0;
      }

      v26 = [objc_allocWithZone(MEMORY[0x277D445D0]) initWithCKSymbolicColorName:v9 hexString:{v10, *&v28}];
    }

    else
    {
      if (v8)
      {
        v10 = sub_261CFFA54();
      }

      else
      {
        v10 = 0;
      }

      v26 = [objc_allocWithZone(MEMORY[0x277D445D0]) initWithDASymbolicColorName:v9 daHexString:{v10, *&v28}];
    }

    v12 = v26;

    goto LABEL_22;
  }

  if (v8)
  {
    v11 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v10 = sub_261CFFA54();

    v12 = [v11 initWithHexString_];
LABEL_22:

    return v12;
  }

  return 0;
}

uint64_t sub_261B42F2C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA970);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA970);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B438C4()
{
  v52 = v0;
  v51 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 16);
  v2 = *(v0 + 16);
  sub_261CFCBB4();
  v3 = *(v0 + 856);
  v4 = *(v0 + 864);

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_261CFCBB4();
    v6 = *(v0 + 840);
    v7 = *(v0 + 848);
  }

  else
  {
    v8 = *(v0 + 64);
    sub_261CFCBB4();
    v7 = *(v0 + 816);
    if (v7)
    {
      v6 = *(v0 + 808);
    }

    else
    {
      v6 = sub_261CFE2A4();
    }
  }

  *(v0 + 1544) = v7;
  *(v0 + 1536) = v6;
  if (qword_27FED9870 != -1)
  {
    swift_once();
  }

  v9 = sub_261CFF7A4();
  *(v0 + 1552) = __swift_project_value_buffer(v9, qword_27FEDA970);
  sub_261B49630(v0 + 16, v0 + 232);
  v10 = sub_261CFF784();
  v11 = sub_261CFFE84();
  sub_261B4968C(v0 + 16);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315138;
    v14 = *(v0 + 192);
    v47 = *(v0 + 176);
    v48 = v14;
    v49 = *(v0 + 208);
    v50 = *(v0 + 224);
    v15 = *(v0 + 128);
    v43 = *(v0 + 112);
    v44 = v15;
    v16 = *(v0 + 160);
    v45 = *(v0 + 144);
    v46 = v16;
    v17 = *(v0 + 64);
    v39 = *(v0 + 48);
    v40 = v17;
    v18 = *(v0 + 96);
    v41 = *(v0 + 80);
    v42 = v18;
    v19 = *(v0 + 32);
    v37 = *v1;
    v38 = v19;
    v20 = sub_261B46610();
    v22 = sub_261B879C8(v20, v21, &v36);

    *(v12 + 4) = v22;
    _os_log_impl(&dword_261AE2000, v10, v11, "[CreateReminderIntentPerforming] Creating reminder with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26671D560](v13, -1, -1);
    MEMORY[0x26671D560](v12, -1, -1);
  }

  v23 = *(v0 + 968);
  *(v0 + 688) = &type metadata for CreateReminderAppIntent;
  *(v0 + 696) = &off_287442DC0;
  v24 = swift_allocObject();
  *(v0 + 664) = v24;
  v25 = *(v0 + 192);
  *(v24 + 176) = *(v0 + 176);
  *(v24 + 192) = v25;
  *(v24 + 208) = *(v0 + 208);
  *(v24 + 224) = *(v0 + 224);
  v26 = *(v0 + 128);
  *(v24 + 112) = *(v0 + 112);
  *(v24 + 128) = v26;
  v27 = *(v0 + 160);
  *(v24 + 144) = *(v0 + 144);
  *(v24 + 160) = v27;
  v28 = *(v0 + 64);
  *(v24 + 48) = *(v0 + 48);
  *(v24 + 64) = v28;
  v29 = *(v0 + 96);
  *(v24 + 80) = *(v0 + 80);
  *(v24 + 96) = v29;
  v30 = *(v0 + 32);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v30;
  v31 = *(v23 + 16);
  *(v0 + 1560) = v31;
  sub_261B49630(v0 + 16, v0 + 448);
  v32 = swift_task_alloc();
  *(v0 + 1568) = v32;
  *v32 = v0;
  v32[1] = sub_261B43C0C;
  v33 = *(v0 + 1504);
  v34 = *MEMORY[0x277D85DE8];

  return sub_261B46EF4(v33, v0 + 664, v31);
}

uint64_t sub_261B43C0C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[196];
  v11 = *v1;
  (*v1)[197] = v0;

  if (v0)
  {
    v4 = v2[193];

    v5 = v2[191];
    v6 = v2[190];
    v7 = sub_261B46344;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 83);
    v5 = v2[191];
    v6 = v2[190];
    v7 = sub_261B43D6C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B43D6C()
{
  v432 = v0;
  v431 = *MEMORY[0x277D85DE8];
  v1 = v0[195];
  v2 = v0[193];
  v3 = v0[192];
  v4 = v0[189];
  v5 = v0[188];
  v6 = v0[187];
  v7 = v0[186];
  v8 = v0[183];
  v417 = v0[182];
  v9 = v0[181];

  v411 = *v5;
  v348 = *(v5 + 8);
  v10 = *(v5 + 16);
  v424 = *(v5 + 24);
  sub_261AFB668(v5 + *(v6 + 28), v7, &qword_27FEDA9B0, &qword_261D034B8);
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v337 = v10;
  v12 = [(SEL *)v11 updateList:v10];
  v13 = sub_261CFFA54();

  v370 = v11;
  v346 = v12;
  v14 = [(SEL *)v11 addReminderWithTitle:v13 toListChangeItem:v12];

  v15 = v0[3];
  sub_261CFCBB4();
  if ((*(v8 + 48))(v9, 1, v417) != 1)
  {
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[182];
    (*(v20 + 32))(v19, v0[181], v21);
    sub_261CFD514();
    v22 = *(v20 + 8);
    v3 = (v20 + 8);
    v22(v19, v21);
    v17 = v0;
    goto LABEL_5;
  }

  sub_261AE6A40(v0[181], &qword_27FEDA9A8, &qword_261D034B0);
  v16 = v0[9];
  sub_261CFCBB4();
  v17 = v0;
  if (v0[104])
  {
    v18 = v0[103];
LABEL_5:
    v23 = v424;
    v24 = sub_261CFFA54();

    goto LABEL_6;
  }

  v24 = 0;
  v23 = v424;
LABEL_6:
  [v14 setNotesAsString_];

  v25 = v17[21];
  sub_261CFCBB4();
  v26 = v17[114];
  if (*(v26 + 16))
  {
    (*(v17[179] + 16))(v17[180], v26 + ((*(v17[179] + 80) + 32) & ~*(v17[179] + 80)), v17[178]);

    v27 = [v14 attachmentContext];
    v28 = v17[180];
    v29 = v17[179];
    v30 = v17[178];
    if (v27)
    {
      v31 = v27;
      v32 = sub_261CFD724();
      v3 = [v31 addURLAttachmentWithURL_];
    }

    v33 = *(v29 + 8);
    v11 = (v29 + 8);
    v33(v28, v30);
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_15:
    v36 = 0;
    goto LABEL_16;
  }

  v39 = v17[114];

  if (!v23)
  {
    goto LABEL_15;
  }

LABEL_10:
  v34 = v23;
  v35 = [(SEL *)v370 updateReminder:v34];
  v36 = v35;
  if (v35)
  {
    v37 = [v35 subtaskContext];
    if (v37)
    {
      v38 = v37;
      [v37 insertReminderChangeItem:v14 afterReminderChangeItem:0];
    }
  }

LABEL_16:
  v40 = v17[24];
  sub_261CFCBB4();
  v41 = v17[111];
  v425 = v17;
  if (!v41)
  {
LABEL_26:
    v351 = 0;
    goto LABEL_30;
  }

  if (!*(v41 + 16) || (v42 = [v14 subtaskContext]) == 0)
  {

    goto LABEL_26;
  }

  v43 = v42;
  v44 = v36;
  v45 = *(v41 + 16);
  if (v45)
  {
    v408 = v14;
    v426 = MEMORY[0x277D84F90];
    sub_261D003A4();
    v47 = *(v41 + 16);
    v48 = v47 - 1;
    v49 = (v41 + 16 * v47 + 24);
    while (v48 != -1)
    {
      if (v48 >= *(v41 + 16))
      {
        goto LABEL_142;
      }

      v50 = *(v49 - 1);
      v51 = *v49;
      sub_261CFD104();
      v52 = sub_261CFFA54();
      v11 = [(SEL *)v370 addReminderWithTitle:v52 toReminderSubtaskContextChangeItem:v43];

      sub_261D00374();
      v3 = *(v426 + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      --v48;
      v49 -= 2;
      if (!--v45)
      {

        v53 = v426;
        v17 = v425;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_29:
  v351 = sub_261B48FBC(v53);

  v36 = v44;
LABEL_30:
  v54 = v17[185];
  v55 = v17[176];
  v56 = v17[175];
  sub_261AFB668(v17[186], v54, &qword_27FEDA9B0, &qword_261D034B8);
  v57 = (*(v55 + 48))(v54, 1, v56);
  v58 = v17[185];
  v343 = v36;
  if (v57 == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA9B0, &qword_261D034B8);
  }

  else
  {
    (*(v17[176] + 32))(v17[177], v58, v17[175]);
    if ((~v348 & 0xF000000000000007) != 0)
    {
      v59 = v17[171];
      *v17[172] = v411;
      v60 = *(v59 + 104);
      v61 = v17[172];
      v62 = v17[170];
      if (v348 < 0)
      {
        v60(v61, *MEMORY[0x277D45E78], v62);
        v63 = v411;
      }

      else
      {
        v60(v61, *MEMORY[0x277D45E80], v62);
        sub_261B49FA0(v411, v348);
      }

      v404 = v17[177];
      v412 = v17[176];
      v418 = v17[175];
      v64 = v17[174];
      v65 = v17[173];
      v66 = v17[172];
      v67 = v17[171];
      v68 = v17[170];
      v69 = v17[169];
      v70 = v17[168];
      v71 = v425[167];
      v72 = *(v67 + 32);
      v72(v65, v66, v68);
      v72(v64, v65, v68);
      v73 = sub_261CFE5B4();
      v74 = sub_261CFE494();
      v429 = v73;
      v430 = MEMORY[0x277D45E18];
      v426 = v74;
      v75 = sub_261CFE7F4();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      sub_261CFE7E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_261D030F0;
      *(v78 + 32) = v14;
      *v69 = v370;
      (*(v70 + 104))(v69, *MEMORY[0x277D45CB0], v71);
      v79 = v14;
      v80 = v370;
      MEMORY[0x26671AE90](v78, v404, v64, 0, v69);

      v81 = v71;
      v17 = v425;
      (*(v70 + 8))(v69, v81);
      (*(v67 + 8))(v64, v68);
      (*(v412 + 8))(v404, v418);
    }

    else
    {
      (*(v17[176] + 8))(v17[177], v17[175]);
    }
  }

  v82 = v17[163];
  v83 = v17[162];
  v84 = v17[160];
  v85 = v17[6];
  sub_261CFCBB4();
  v86 = *(v82 + 48);
  if (v86(v84, 1, v83) == 1)
  {
    v87 = v17[162];
    v88 = v17[161];
    v89 = v17[160];
    v90 = v17[11];
    sub_261CFCBB4();
    if (v86(v89, 1, v87) != 1)
    {
      sub_261AE6A40(v17[160], &qword_27FEDA160, &qword_261D02220);
    }
  }

  else
  {
    v91 = v17[163];
    v92 = v17[162];
    v93 = v17[161];
    (*(v91 + 32))(v93, v17[160], v92);
    (*(v91 + 56))(v93, 0, 1, v92);
  }

  v94 = v17[162];
  v95 = v17[161];
  if (v86(v95, 1, v94) == 1)
  {
    v96 = &qword_27FEDA160;
    v97 = &qword_261D02220;
  }

  else
  {
    v98 = *(v17[163] + 32);
    v98(v17[166], v95, v94);
    v99 = v17[10];
    sub_261CFCBB4();
    v100 = *(v17 + 1586);
    if (v100 != 2 && (v100 & 1) != 0)
    {
      v101 = v17[166];
      v102 = v17[165];
      v103 = v17[164];
      v104 = v425[163];
      v105 = v425[162];
      sub_261CFD434();
      sub_261CFD454();
      v106 = *(v104 + 8);
      v106(v103, v105);
      v106(v101, v105);
      v17 = v425;
      v98(v101, v102, v105);
    }

    v107 = v17[166];
    v108 = sub_261CFD464();
    [v14 setDueDateComponentsWithAlarmsIfNeeded_];

    v109 = v17[12];
    sub_261CFCBB4();
    v110 = v17[89];
    if (v110)
    {
      v111 = v17[88];
      v112 = v17[90];
      v113 = v17[91];
      v114 = [v14 dueDateDeltaAlertContext];
      if (v114)
      {
        v115 = v114;
        v426 = v111;
        v427 = v110;
        v428 = v112;
        v429 = v113;
        v116 = sub_261CF8274();
        v117 = [v115 addDueDateDeltaAlertWithDueDateDelta_];
        sub_261B49F50(v111, v110);

        v17 = v425;
      }

      else
      {
        sub_261B49F50(v111, v110);
      }
    }

    v118 = v17[157];
    v119 = v17[156];
    v120 = v17[154];
    v121 = v17[7];
    sub_261CFCBB4();
    v122 = *(v118 + 48);
    if (v122(v120, 1, v119) == 1)
    {
      v123 = v17[156];
      v124 = v17[155];
      v125 = v17[154];
      v126 = v17[13];
      sub_261CFCBB4();
      if (v122(v125, 1, v123) != 1)
      {
        sub_261AE6A40(v17[154], &qword_27FEDA9A0, &unk_261D034A0);
      }
    }

    else
    {
      v127 = v17[157];
      v128 = v17[156];
      v129 = v17[155];
      (*(v127 + 32))(v129, v17[154], v128);
      (*(v127 + 56))(v129, 0, 1, v128);
    }

    v130 = v17[156];
    v95 = v17[155];
    v131 = v122(v95, 1, v130);
    v132 = v17[163];
    if (v131 != 1)
    {
      v133 = v17[159];
      v134 = v17[158];
      v135 = v425[157];
      v399 = v135;
      v405 = v133;
      v413 = v17[162];
      v419 = v17[166];
      (*(v135 + 32))(v133, v95, v130);
      sub_261B05020(0, &qword_27FEDA9E0, 0x277D44740);
      (*(v135 + 16))(v134, v133, v130);
      v136 = REMRecurrenceRule.init(fromRule:)(v134);
      v137 = [v136 frequency];
      v391 = [v136 interval];
      v395 = [v136 firstDayOfTheWeek];
      v375 = [v136 daysOfTheWeek];
      v387 = [v136 daysOfTheMonth];
      v383 = [v136 monthsOfTheYear];
      v138 = [v136 weeksOfTheYear];
      v139 = [v136 daysOfTheYear];
      v140 = [v136 setPositions];
      v379 = v130;
      v141 = [v136 recurrenceEnd];
      v142 = v14;
      v143 = [v14 addRecurrenceRuleWithFrequency:v137 interval:v391 firstDayOfTheWeek:v395 daysOfTheWeek:v375 daysOfTheMonth:v387 monthsOfTheYear:v383 weeksOfTheYear:v138 daysOfTheYear:v139 setPositions:v140 end:v141];

      v14 = v142;
      (*(v399 + 8))(v405, v379);
      v17 = v425;
      (*(v132 + 8))(v419, v413);
      goto LABEL_59;
    }

    (*(v132 + 8))(v17[166], v17[162]);
    v96 = &qword_27FEDA9A0;
    v97 = &unk_261D034A0;
  }

  sub_261AE6A40(v95, v96, v97);
LABEL_59:
  v144 = v17[15];
  sub_261CFCBB4();
  v145 = *(v17 + 1584);
  if (v145 != 3)
  {
    v146 = [v14 flaggedContext];
    if (v146)
    {

      [v14 setFlagged_];
    }
  }

  v147 = v17[16];
  sub_261CFCBB4();
  v148 = *(v17 + 1585);
  if (v148 < 4)
  {
    [v14 setPriority_];
  }

  sub_261CFE144();
  sub_261B496E0(&qword_27FEDA9B8, MEMORY[0x277D45CF0]);
  v149 = v14;
  sub_261CFE194();
  v354 = v17[109];
  v150 = v17[5];
  sub_261CFCBB4();
  v151 = *(v17[110] + 16);

  if (v151)
  {
    sub_261CFCBB4();
    v152 = v17[119];
  }

  else
  {
    v153 = v17[20];
    sub_261CFCBB4();
    if (!v17[118])
    {
      goto LABEL_69;
    }

    sub_261B49EB8(v17[118]);
  }

  sub_261CFDFC4();

LABEL_69:
  v154 = v17[4];
  sub_261CFCBB4();
  v155 = *(v17[112] + 16);

  v340 = v149;
  if (v155)
  {
    sub_261CFCBB4();
    v156 = v17[113];
    v157 = *(v156 + 16);
    if (!v157)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v158 = v17[151];
    v159 = v17[150];
    v160 = v17[149];
    v161 = v17[25];
    sub_261CFCBB4();
    if ((*(v158 + 48))(v160, 1, v159) == 1)
    {
      sub_261AE6A40(v17[149], &qword_27FEDA998, &unk_261D10200);
      v156 = MEMORY[0x277D84F90];
      v157 = *(MEMORY[0x277D84F90] + 16);
      if (!v157)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v162 = v17[153];
      v163 = v17[151];
      v164 = v17[150];
      v165 = *(v163 + 32);
      v163 += 32;
      v165(v162, v17[149], v164);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7D8, &unk_261D034D0);
      v166 = *(v163 + 40);
      v167 = (*(v163 + 48) + 32) & ~*(v163 + 48);
      v168 = swift_allocObject();
      *(v168 + 16) = xmmword_261D03450;
      v165(v168 + v167, v162, v164);
      v156 = v168;
      v157 = *(v168 + 16);
      if (!v157)
      {
        goto LABEL_88;
      }
    }
  }

  v169 = v17[151];
  v365 = v17[147];
  v170 = v17[146];
  v171 = v17[142];
  v173 = *(v169 + 16);
  v169 += 16;
  v172 = v173;
  v174 = v156 + ((*(v169 + 64) + 32) & ~*(v169 + 64));
  v175 = *(v169 + 56);
  v176 = (v171 + 48);
  v392 = (v171 + 32);
  v420 = (v169 - 8);
  v359 = (v170 + 104);
  v362 = v170;
  v384 = (v170 + 32);
  v414 = MEMORY[0x277D84F90];
  v356 = *MEMORY[0x277D45D20];
  v400 = v175;
  v406 = v173;
  v396 = (v171 + 48);
  v388 = (v171 + 8);
  do
  {
    v178 = v17[141];
    v179 = v17[140];
    v172(v17[152], v174, v17[150]);
    sub_261CFC7C4();
    if ((*v176)(v179, 1, v178) == 1)
    {
      v177 = v17[140];
      (*v420)(v17[152], v17[150]);
      sub_261AE6A40(v177, &qword_27FEDA990, &unk_261D03490);
    }

    else
    {
      v180 = v17[143];
      v181 = v17[141];
      v409 = *v392;
      (*v392)(v17[144], v17[140], v181);
      sub_261CFF684();
      v182 = sub_261CFF694();
      v183 = *v388;
      (*v388)(v180, v181);
      v184 = v17[152];
      v185 = v17[150];
      if (v182)
      {
        v186 = v17[148];
        v187 = v17[147];
        v188 = v17;
        v189 = v17[145];
        v376 = v188[144];
        v380 = v186;
        v372 = v188[141];
        v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9D8, &qword_261D034C8) + 48);
        v191 = sub_261CFC7B4();
        v193 = v192;
        (*v420)(v184, v185);
        *v187 = v191;
        *(v365 + 8) = v193;
        v409(v187 + v190, v376, v372);
        (*v359)(v187, v356, v189);
        v194 = *v384;
        (*v384)(v380, v187, v189);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v414 = sub_261B41C6C(0, v414[2] + 1, 1, v414);
        }

        v176 = v396;
        v175 = v400;
        v196 = v414[2];
        v195 = v414[3];
        v17 = v425;
        if (v196 >= v195 >> 1)
        {
          v414 = sub_261B41C6C(v195 > 1, v196 + 1, 1, v414);
        }

        v197 = v425[148];
        v198 = v425[145];
        v414[2] = v196 + 1;
        v194(v414 + ((*(v362 + 80) + 32) & ~*(v362 + 80)) + *(v362 + 72) * v196, v197, v198);
        v172 = v406;
      }

      else
      {
        v183(v17[144], v17[141]);
        (*v420)(v184, v185);
        v175 = v400;
        v172 = v406;
        v176 = v396;
      }
    }

    v174 += v175;
    --v157;
  }

  while (v157);

  sub_261CFE024();
LABEL_88:

  v199 = v17[136];
  v200 = v17[135];
  v201 = v17[134];
  v202 = v17[22];
  sub_261CFCBB4();
  v203 = *(v199 + 48);
  if (v203(v201, 1, v200) == 1)
  {
    sub_261AE6A40(v17[134], &unk_27FEDB0B0, &unk_261D035D0);
  }

  else
  {
    v204 = v17[139];
    v205 = v17[138];
    v206 = v17[136];
    v207 = v17[135];
    (*(v206 + 32))(v204, v17[134], v207);
    sub_261B05020(0, &qword_27FEDB0D0, 0x277D445D8);
    (*(v206 + 16))(v205, v204, v207);
    v208 = sub_261C7D36C(v205);
    sub_261CFE054();

    (*(v206 + 8))(v204, v207);
  }

  v209 = v17[135];
  v210 = v17[133];
  v211 = v17[23];
  sub_261CFCBB4();
  if (v203(v210, 1, v209) == 1)
  {
    sub_261AE6A40(v17[133], &unk_27FEDB0B0, &unk_261D035D0);
    v212 = v17[197];
    goto LABEL_103;
  }

  (*(v17[136] + 32))(v17[137], v17[133], v17[135]);
  v213 = [v337 sharees];
  if (!v213)
  {
    goto LABEL_101;
  }

  v214 = v213;
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v215 = sub_261CFFC64();

  if (![v337 isShared])
  {

LABEL_101:
    v212 = v17[197];
    goto LABEL_102;
  }

  v212 = v17[197];
  v216 = v17[137];
  v217 = swift_task_alloc();
  *(v217 + 16) = v216;
  v218 = sub_261B49450(sub_261B49774, v217, v215);

  if (!v218)
  {
LABEL_102:
    (*(v17[136] + 8))(v17[137], v17[135]);
    goto LABEL_103;
  }

  if (!v17[27])
  {
LABEL_99:
    v223 = v17[137];
    v224 = v17[136];
    v225 = v17[135];
    v226 = [v218 objectID];
    sub_261CFDFA4();

    (*(v224 + 8))(v223, v225);
    goto LABEL_103;
  }

  v219 = v17[131];
  v220 = v17[130];
  v221 = v17[129];
  v222 = v17[26];
  sub_261CFD7F4();
  if ((*(v219 + 48))(v221, 1, v220) == 1)
  {
    sub_261AE6A40(v17[129], &qword_27FEDA988, &unk_261D03480);
    goto LABEL_99;
  }

  v300 = v17[136];
  v416 = v17[135];
  v423 = v17[137];
  v301 = v17[132];
  v302 = v17[131];
  v303 = v425[130];
  (*(v302 + 32))(v301, v425[129], v303);
  v304 = objc_opt_self();
  v305 = sub_261CFD814();
  v306 = [v304 objectIDWithUUID_];

  v307 = [v218 objectID];
  v308 = v306;
  sub_261CFDFA4();

  v309 = v303;
  v17 = v425;
  (*(v302 + 8))(v301, v309);
  (*(v300 + 8))(v423, v416);
LABEL_103:
  v227 = v17[14];
  sub_261CFCBB4();
  v228 = v17[98];
  if (v228)
  {
    v229 = v17[99];
    v230 = v17[100];
    sub_261B05020(0, &qword_27FEDA9C0, 0x277D44580);
    v426 = v228;
    v427 = v229;
    v428 = v230;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261B53114(&v426);
    if (v212)
    {
      v232 = v17[194];
      v233 = v212;
      v234 = sub_261CFF784();
      v235 = sub_261CFFE64();

      if (os_log_type_enabled(v234, v235))
      {
        v236 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v426 = v237;
        *v236 = 136315138;
        swift_getErrorValue();
        v421 = v234;
        v238 = v17[92];
        v239 = v17[93];
        v240 = v17[94];
        v241 = sub_261D00674();
        v243 = sub_261B879C8(v241, v242, &v426);

        *(v236 + 4) = v243;
        _os_log_impl(&dword_261AE2000, v421, v235, "%s", v236, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v237);
        MEMORY[0x26671D560](v237, -1, -1);
        MEMORY[0x26671D560](v236, -1, -1);
        sub_261B49728(v228);
      }

      else
      {
        sub_261B49728(v228);
      }
    }

    else
    {
      if (v231)
      {
        v244 = v231;
        v245 = v231;
        MEMORY[0x26671A740](v244);
        sub_261B49728(v228);
      }

      else
      {
        sub_261B05020(0, &qword_27FEDA9C8, 0x277D44590);
        v426 = v228;
        v427 = v229;
        v428 = v230;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v245 = sub_261B535B8(&v426);
        MEMORY[0x26671A730]();
        sub_261B49728(v228);
      }
    }
  }

  v246 = (v17 + 115);
  if (v348 < 0 && (v348 & 0xF000000000000007) != 0xF000000000000007)
  {
    v247 = v17[128];
    v248 = v17[127];
    v249 = v17[126];
    sub_261CFD7D4();
    sub_261CFE104();
    (*(v248 + 8))(v247, v249);
  }

  *v246 = 0;
  v250 = [(SEL *)v370 saveSynchronouslyWithError:v17 + 115];
  v251 = *v246;
  if (!v250)
  {
    v258 = v17[194];
    v259 = v251;

    v260 = sub_261CFD654();

    swift_willThrow();
    v261 = v260;
    v262 = sub_261CFF784();
    v263 = sub_261CFFE64();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v426 = v265;
      *v264 = 136315138;
      swift_getErrorValue();
      v266 = v17[95];
      v267 = v17[96];
      v268 = v17[97];
      v269 = sub_261D00674();
      v271 = sub_261B879C8(v269, v270, &v426);

      *(v264 + 4) = v271;
      _os_log_impl(&dword_261AE2000, v262, v263, "[CreateReminderIntentPerforming] Create reminder failed to save new reminder error: %s", v264, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v265);
      MEMORY[0x26671D560](v265, -1, -1);
      MEMORY[0x26671D560](v264, -1, -1);
    }

    v272 = v17[188];
    v273 = v17[186];
    sub_261B01D70();
    swift_allocError();
    *v274 = 19;
    swift_willThrow();

    goto LABEL_124;
  }

  v252 = v17[123];
  v253 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v253 - 8) + 56))(v252, 1, 1, v253);
  v3 = v343;
  v44 = v340;
  v254 = v251;
  v255 = [v44 listChangeItem];
  if (!v255 || (v11 = &unk_279AFB000, v256 = v255, v257 = [v255 storage], v256, !v257))
  {
    v272 = v17[188];
    v273 = v17[186];
    v275 = v17[123];

    sub_261B01D70();
    swift_allocError();
    *v276 = 11;
    swift_willThrow();

    sub_261AE6A40(v275, &qword_27FEDA108, &unk_261D020C0);
LABEL_124:
    sub_261AE6A40(v273, &qword_27FEDA9B0, &qword_261D034B8);
    sub_261B4AD70(v272, type metadata accessor for CreateRemindersPerformingContext);
    v277 = v17[188];
    v278 = v17[186];
    v279 = v425[185];
    v280 = v425[184];
    v281 = v425[181];
    v282 = v425[180];
    v283 = v425[177];
    v284 = v425[174];
    v285 = v425[173];
    v286 = v425[172];
    v287 = v425[169];
    v331 = v425[166];
    v333 = v425[165];
    v335 = v425[164];
    v338 = v425[161];
    v341 = v425[160];
    v344 = v425[159];
    v347 = v425[158];
    v349 = v425[155];
    v352 = v425[154];
    v355 = v425[153];
    v357 = v425[152];
    v360 = v425[149];
    v363 = v425[148];
    v366 = v425[147];
    v368 = v425[144];
    v371 = v425[143];
    v373 = v425[140];
    v377 = v425[139];
    v381 = v425[138];
    v385 = v425[137];
    v389 = v425[134];
    v393 = v425[133];
    v397 = v425[132];
    v401 = v425[129];
    v407 = v425[128];
    v410 = v425[125];
    v415 = v425[123];
    v422 = v425[122];

    v288 = v425[1];
    v289 = *MEMORY[0x277D85DE8];
    goto LABEL_125;
  }

  v417 = [v44 storage];
  v408 = [v44 accountCapabilities];
  if (v343)
  {
    v403 = [v3 storage];
  }

  else
  {
    v403 = 0;
  }

  v46 = v351;
  v411 = v257;
  if (v351)
  {
    if (!(v351 >> 62))
    {
      v291 = v351;
      v292 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v292)
      {
LABEL_144:

        v299 = MEMORY[0x277D84F90];
        goto LABEL_145;
      }

LABEL_132:
      v426 = MEMORY[0x277D84F90];
      sub_261D003A4();
      if (v292 < 0)
      {
        __break(1u);
      }

      v293 = 0;
      v294 = v291;
      do
      {
        if ((v291 & 0xC000000000000001) != 0)
        {
          v295 = MEMORY[0x26671CA10](v293);
        }

        else
        {
          v295 = *(v294 + 8 * v293 + 32);
        }

        v296 = v295;
        ++v293;
        v297 = [v295 v11[84]];

        sub_261D00374();
        v298 = *(v426 + 16);
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
        v294 = v351;
      }

      while (v292 != v293);

      v299 = v426;
      goto LABEL_145;
    }

LABEL_143:
    v291 = v46;
    v292 = sub_261D00274();
    if (!v292)
    {
      goto LABEL_144;
    }

    goto LABEL_132;
  }

  v299 = 0;
LABEL_145:
  v317 = v425[188];
  v316 = v425[186];
  v318 = v425[185];
  v319 = v425[184];
  v320 = v425[181];
  v321 = v425[180];
  v322 = v425[177];
  v323 = v425[174];
  v324 = v425[173];
  v325 = v425[172];
  v326 = v425[169];
  v327 = v425[166];
  v328 = v425[165];
  v329 = v425[164];
  v330 = v425[161];
  v332 = v425[160];
  v334 = v425[159];
  v336 = v425[158];
  v339 = v425[155];
  v342 = v425[154];
  v345 = v425[153];
  v350 = v425[152];
  v353 = v425[149];
  v358 = v425[148];
  v361 = v425[147];
  v364 = v425[144];
  v367 = v425[143];
  v369 = v425[140];
  v374 = v425[139];
  v378 = v425[138];
  v382 = v425[137];
  v386 = v425[134];
  v390 = v425[133];
  v394 = v425[132];
  v398 = v425[129];
  v402 = v425[128];
  v310 = v425[125];
  v311 = v425[124];
  v312 = v425[123];
  v313 = v425[122];
  v314 = v425[120];
  sub_261AFB668(v312, v313, &qword_27FEDA108, &unk_261D020C0);
  sub_261C7EDC4(v417, v411, v408, v403, v299, v313, v310);

  sub_261AE6A40(v312, &qword_27FEDA108, &unk_261D020C0);
  sub_261B496E0(&qword_280D22350, type metadata accessor for ReminderEntity);
  sub_261CFC994();

  sub_261B4AD70(v310, type metadata accessor for ReminderEntity);
  sub_261AE6A40(v316, &qword_27FEDA9B0, &qword_261D034B8);
  sub_261B4AD70(v317, type metadata accessor for CreateRemindersPerformingContext);

  v288 = v425[1];
  v315 = *MEMORY[0x277D85DE8];
LABEL_125:

  return v288();
}

uint64_t sub_261B46344()
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = v0[189];

  __swift_destroy_boxed_opaque_existential_0(v0 + 83);
  v2 = v0[188];
  v3 = v0[186];
  v4 = v0[185];
  v5 = v0[184];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[177];
  v9 = v0[174];
  v10 = v0[173];
  v11 = v0[172];
  v15 = v0[197];
  v16 = v0[169];
  v17 = v0[166];
  v18 = v0[165];
  v19 = v0[164];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[153];
  v27 = v0[152];
  v28 = v0[149];
  v29 = v0[148];
  v30 = v0[147];
  v31 = v0[144];
  v32 = v0[143];
  v33 = v0[140];
  v34 = v0[139];
  v35 = v0[138];
  v36 = v0[137];
  v37 = v0[134];
  v38 = v0[133];
  v39 = v0[132];
  v40 = v0[129];
  v41 = v0[128];
  v42 = v0[125];
  v43 = v0[123];
  v44 = v0[122];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_261B46610()
{
  v1 = sub_261CFD4E4();
  v81 = *(v1 - 8);
  v82 = v1;
  v2 = *(v81 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v72 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v79 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v67 - v10;
  v11 = sub_261CFD524();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v75 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = type metadata accessor for AppEntityID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v68 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v67 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v67 - v38;
  v40 = *v0;
  v41 = v0[4];
  v73 = v0[1];
  v74 = v41;
  v42 = v0[15];
  v78 = v0[14];
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD000000000000013, 0x8000000261D17970);
  sub_261CFCBB4();
  MEMORY[0x26671C210](v84, v85);

  MEMORY[0x26671C210](0x746567726174202CLL, 0xEE00203A7473694CLL);
  sub_261CFCBB4();
  v43 = type metadata accessor for ListEntity();
  v44 = 1;
  if (!(*(*(v43 - 8) + 48))(v32, 1, v43))
  {
    sub_261B4AD08(&v32[*(v43 + 20)], v39, type metadata accessor for AppEntityID);
    v44 = 0;
  }

  v45 = 7104878;
  sub_261AE6A40(v32, &unk_27FEDE0C0, &unk_261D02500);
  (*(v23 + 56))(v39, v44, 1, v22);
  sub_261AFB668(v39, v37, &qword_27FEDAA00, &qword_261D035A8);
  if ((*(v23 + 48))(v37, 1, v22) == 1)
  {
    v46 = 0xE300000000000000;
    v47 = 7104878;
  }

  else
  {
    sub_261B4ADD0(v37, v28, type metadata accessor for AppEntityID);
    sub_261B4AD08(v28, v68, type metadata accessor for AppEntityID);
    v47 = sub_261CFFAB4();
    v46 = v48;
    sub_261B4AD70(v28, type metadata accessor for AppEntityID);
  }

  v50 = v80;
  v49 = v81;
  sub_261AE6A40(v39, &qword_27FEDAA00, &qword_261D035A8);
  MEMORY[0x26671C210](v47, v46);

  MEMORY[0x26671C210](0x3A7365746F6E202CLL, 0xE900000000000020);
  sub_261CFCBB4();
  v51 = v75;
  sub_261AFB668(v21, v75, &qword_27FEDA9A8, &qword_261D034B0);
  v53 = v76;
  v52 = v77;
  if ((*(v76 + 48))(v51, 1, v77) == 1)
  {
    v54 = 0xE300000000000000;
    v55 = 7104878;
  }

  else
  {
    v56 = v70;
    (*(v53 + 32))(v70, v51, v52);
    (*(v53 + 16))(v69, v56, v52);
    v55 = sub_261CFFAB4();
    v54 = v57;
    (*(v53 + 8))(v56, v52);
  }

  sub_261AE6A40(v21, &qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x26671C210](v55, v54);

  MEMORY[0x26671C210](0x746144657564202CLL, 0xEB00000000203A65);
  sub_261CFCBB4();
  v58 = v79;
  sub_261AFB668(v50, v79, &qword_27FEDA160, &qword_261D02220);
  v59 = v82;
  if ((*(v49 + 48))(v58, 1, v82) == 1)
  {
    v60 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v62 = v72;
    (*(v49 + 32))(v72, v58, v59);
    (*(v49 + 16))(v71, v62, v59);
    v61 = sub_261CFFAB4();
    v60 = v63;
    (*(v49 + 8))(v62, v59);
  }

  sub_261AE6A40(v50, &qword_27FEDA160, &qword_261D02220);
  MEMORY[0x26671C210](v61, v60);

  MEMORY[0x26671C210](0x69726F697270202CLL, 0xEC000000203A7974);
  sub_261CFCBB4();
  if (v84 == 4)
  {
    v64 = 0xE300000000000000;
  }

  else
  {
    v83 = v84;
    v45 = sub_261CFFAB4();
    v64 = v65;
  }

  MEMORY[0x26671C210](v45, v64);

  MEMORY[0x26671C210](32032, 0xE200000000000000);
  return v86;
}

uint64_t sub_261B46EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_261CFE8C4();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for AppEntityID();
  v3[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for SectionEntityID();
  v3[18] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v11 = type metadata accessor for SectionEntity();
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v13 = *(v12 + 64) + 15;
  v3[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v16 = type metadata accessor for ReminderEntity();
  v3[27] = v16;
  v17 = *(v16 - 8);
  v3[28] = v17;
  v18 = *(v17 + 64) + 15;
  v3[29] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v20 = type metadata accessor for ListEntity();
  v3[33] = v20;
  v21 = *(v20 - 8);
  v3[34] = v21;
  v22 = *(v21 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B472BC, 0, 0);
}

uint64_t sub_261B472BC()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[7];
  v6 = v0[8];
  type metadata accessor for REMRemindersAppIntentDataView();
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = v6;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v8 = v6;
  sub_261C94504();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_261C94594();
  v9 = *(v4 + 48);
  v0[41] = v9;
  v0[42] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v2, 1, v3) == 1)
  {
    v10 = v0[37];
    v11 = v0[33];
    v12 = v0[34];
    v13 = v0[31];
    v41 = v0[21];
    v14 = v0[7];
    sub_261AE6A40(v0[32], &qword_27FEDA1E0, &unk_261D02300);
    v15 = *(v12 + 56);
    v15(v10, 1, 1, v11);
    __swift_project_boxed_opaque_existential_1(v14, v5[3]);
    sub_261C94594();
    v16 = v9(v13, 1, v41);
    v17 = v0[38];
    if (v16 == 1)
    {
      v18 = v0[33];
      sub_261AE6A40(v0[31], &qword_27FEDA1E0, &unk_261D02300);
      v15(v17, 1, 1, v18);
    }

    else
    {
      v27 = v0[31];
      v28 = *(v27 + *(v0[21] + 36));
      v29 = v0[38];
      sub_261CFCA04();
      sub_261B4AD70(v27, type metadata accessor for SectionEntity);
    }

    v25 = v15;
    v30 = v0[37];
    v26 = *(v0[34] + 48);
    if (v26(v30, 1, v0[33]) != 1)
    {
      sub_261AE6A40(v30, &unk_27FEDE0C0, &unk_261D02500);
    }
  }

  else
  {
    v20 = v0[37];
    v19 = v0[38];
    v21 = v0[33];
    v22 = v0[34];
    v23 = v0[32];
    v24 = *(v23 + 8);
    sub_261CFCA04();
    sub_261B4AD70(v23, type metadata accessor for SectionEntity);
    v25 = *(v22 + 56);
    v25(v20, 0, 1, v21);
    sub_261B4ADD0(v20, v19, type metadata accessor for ListEntity);
    v25(v19, 0, 1, v21);
    v26 = *(v22 + 48);
  }

  v31 = v0[38];
  v32 = v0[33];
  if (v26(v31, 1, v32) == 1)
  {
    sub_261AE6A40(v31, &unk_27FEDE0C0, &unk_261D02500);
  }

  else
  {
    v33 = v0[39];
    v34 = v0[36];
    v35 = v0[34];
    sub_261AE6A40(v33, &unk_27FEDE0C0, &unk_261D02500);
    sub_261B4ADD0(v31, v34, type metadata accessor for ListEntity);
    sub_261B4ADD0(v34, v33, type metadata accessor for ListEntity);
    v25(v33, 0, 1, v32);
  }

  v36 = swift_task_alloc();
  v0[43] = v36;
  *v36 = v0;
  v36[1] = sub_261B47708;
  v37 = v0[39];
  v38 = v0[8];
  v39 = *MEMORY[0x277D85DE8];

  return sub_261B49814(v37, v38);
}

uint64_t sub_261B47708(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *(*v3 + 344);
  v10 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v6 = sub_261B48E08;
  }

  else
  {
    v6 = sub_261B4784C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261B4784C()
{
  v254 = v0;
  v253[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  if (v1 < 0)
  {
    v2 = 0;
  }

  else
  {
    sub_261B49FA0(*(v0 + 352), *(v0 + 360));
    v2 = *(v0 + 352);
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  sub_261C9454C();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_261AE6A40(*(v0 + 208), &unk_27FEDE110, &unk_261D035B0);
    v6 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

  v15 = *(v0 + 368);
  v16 = *(v0 + 320);
  v17 = *(v0 + 232);
  v18 = *(v0 + 216);
  v19 = *(v0 + 104);
  sub_261B4ADD0(*(v0 + 208), v17, type metadata accessor for ReminderEntity);
  v20 = (v17 + *(v18 + 40));
  v21 = *(v19 + 20);
  v22 = *v20;
  v23 = v20[1];
  v24 = objc_allocWithZone(MEMORY[0x277D44700]);
  v25 = sub_261CFD814();
  v26 = sub_261CFFA54();
  v27 = [v24 initWithUUID:v25 entityName:v26];

  v28 = sub_261CFBFC8(v27);
  if (v15)
  {
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);
    v31 = *(v0 + 320);
    v32 = *(v0 + 232);
    sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

    sub_261B4AC84(v30, v29);

    v33 = v32;
LABEL_28:
    sub_261B4AD70(v33, type metadata accessor for ReminderEntity);
LABEL_38:
    v74 = *(v0 + 304);
    v73 = *(v0 + 312);
    v76 = *(v0 + 288);
    v75 = *(v0 + 296);
    v77 = *(v0 + 280);
    v79 = *(v0 + 248);
    v78 = *(v0 + 256);
    v81 = *(v0 + 232);
    v80 = *(v0 + 240);
    v82 = *(v0 + 208);
    v217 = *(v0 + 200);
    v220 = *(v0 + 192);
    v223 = *(v0 + 184);
    v227 = *(v0 + 160);
    v231 = *(v0 + 152);
    v235 = *(v0 + 136);
    v239 = *(v0 + 128);
    v241 = *(v0 + 120);
    v244 = *(v0 + 112);
    v248 = *(v0 + 96);
    v252 = *(v0 + 88);

    v83 = *(v0 + 8);
    v84 = *MEMORY[0x277D85DE8];
    goto LABEL_39;
  }

  v6 = v28;

  v52 = sub_261CFFDF4();
  v53 = [v52 supportsSubtasks];

  if (!v53)
  {
    v57 = *(v0 + 352);
    v56 = *(v0 + 360);
    v59 = *(v0 + 312);
    v63 = *(v0 + 320);
    v60 = *(v0 + 232);
    sub_261B01D70();
    swift_allocError();
    v62 = 18;
    goto LABEL_27;
  }

  if (([v6 isSubtask] & 1) != 0 || (__swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24)), (v54 = sub_261C945DC()) != 0) && (v55 = *(v54 + 16), , v55))
  {
    v57 = *(v0 + 352);
    v56 = *(v0 + 360);
    v59 = *(v0 + 312);
    v58 = *(v0 + 320);
    v60 = *(v0 + 232);
    sub_261B01D70();
    swift_allocError();
    v62 = 17;
LABEL_27:
    *v61 = v62;
    swift_willThrow();

    sub_261B4AC84(v57, v56);
    sub_261AE6A40(v59, &unk_27FEDE0C0, &unk_261D02500);
    v33 = v60;
    goto LABEL_28;
  }

  sub_261B4AD70(*(v0 + 232), type metadata accessor for ReminderEntity);
  if (v2)
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v65 = [v6 list];
    if (v65)
    {
      v2 = v65;
      goto LABEL_6;
    }
  }

LABEL_35:
  v66 = *(v0 + 64);
  *(v0 + 40) = 0;
  v67 = [v66 fetchDefaultListWithError_];
  v2 = v67;
  v68 = *(v0 + 40);
  if (v68)
  {
    v70 = *(v0 + 352);
    v69 = *(v0 + 360);
    v72 = *(v0 + 312);
    v71 = *(v0 + 320);
    v68;

    swift_willThrow();

    sub_261B4AC84(v70, v69);
    v14 = v72;
    goto LABEL_37;
  }

  if (!v67)
  {
    if (qword_27FED9870 != -1)
    {
      swift_once();
    }

    v86 = sub_261CFF7A4();
    __swift_project_value_buffer(v86, qword_27FEDA970);
    v87 = sub_261CFF784();
    v88 = sub_261CFFE64();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_261AE2000, v87, v88, "[CreateReminderIntentPerforming] Unable to fetch default list", v89, 2u);
      MEMORY[0x26671D560](v89, -1, -1);
    }

    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v11 = *(v0 + 312);
    v90 = *(v0 + 320);

    sub_261B01D70();
    swift_allocError();
    *v91 = 14;
    swift_willThrow();

    goto LABEL_9;
  }

LABEL_6:
  v7 = v2;
  if ([v7 isGroup])
  {
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    sub_261B01D70();
    swift_allocError();
    v13 = 4;
LABEL_8:
    *v12 = v13;
    swift_willThrow();

LABEL_9:
    sub_261B4AC84(v9, v8);
    v14 = v11;
LABEL_37:
    sub_261AE6A40(v14, &unk_27FEDE0C0, &unk_261D02500);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v34 = sub_261C945DC();
  if (v34)
  {
    v35 = *(v34 + 16);

    if (v35)
    {
      v36 = sub_261D000B4();
      v37 = [v36 supportsSubtasks];

      if ((v37 & 1) == 0)
      {
        v9 = *(v0 + 352);
        v8 = *(v0 + 360);
        v11 = *(v0 + 312);
        v64 = *(v0 + 320);
        sub_261B01D70();
        swift_allocError();
        v13 = 18;
        goto LABEL_8;
      }
    }
  }

  if (v6)
  {
    v251 = v6;
    v38 = v6;
    v39 = [v38 list];
    v40 = [v39 objectID];

    v41 = [v7 objectID];
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    LOBYTE(v39) = sub_261D000F4();

    if ((v39 & 1) == 0)
    {
      if (qword_27FED9870 != -1)
      {
        swift_once();
      }

      v42 = sub_261CFF7A4();
      __swift_project_value_buffer(v42, qword_27FEDA970);
      v247 = v7;
      v43 = v7;
      v44 = v38;
      v45 = sub_261CFF784();
      v46 = sub_261CFFE64();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412546;
        v49 = [v43 objectID];
        *(v47 + 4) = v49;
        *v48 = v49;
        *(v47 + 12) = 2112;
        v50 = [v44 objectID];
        *(v47 + 14) = v50;
        v48[1] = v50;
        _os_log_impl(&dword_261AE2000, v45, v46, "[CreateRemindersPerformingContext] Attempted to create reminder(s) as subtask(s) on a different list than the parent reminder. Skip. {targetList: %@, parentReminder: %@}", v47, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
        swift_arrayDestroy();
        MEMORY[0x26671D560](v48, -1, -1);
        MEMORY[0x26671D560](v47, -1, -1);
        v51 = v44;
      }

      else
      {
        v51 = v45;
        v45 = v44;
      }

      v251 = 0;
      v7 = v247;
    }
  }

  else
  {
    v251 = 0;
  }

  v92 = *(v0 + 200);
  v93 = sub_261CFDC34();
  v94 = *(v93 - 8);
  v95 = *(v94 + 56);
  v95(v92, 1, 1, v93);
  if ((v1 & 0xF000000000000007) == 0xF000000000000007)
  {
    v96 = *(v0 + 320);
    sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

    v97 = v7;
  }

  else
  {
    v242 = v95;
    v245 = v93;
    v249 = v7;
    v98 = *(v0 + 352);
    v99 = *(v0 + 360);
    v101 = *(v0 + 328);
    v100 = *(v0 + 336);
    v102 = *(v0 + 240);
    v103 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
    sub_261B49FA0(v98, v99);
    sub_261C94594();
    if (v101(v102, 1, v103) == 1)
    {
      v104 = *(v0 + 352);
      v105 = *(v0 + 360);
      v106 = *(v0 + 320);
      v107 = *(v0 + 240);
      sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

      sub_261B4AC84(v104, v105);
      v97 = v7;

      sub_261AE6A40(v107, &qword_27FEDA1E0, &unk_261D02300);
    }

    else
    {
      v108 = *(v0 + 184);
      v109 = *(v0 + 160);
      v110 = *(v0 + 168);
      v111 = *(v0 + 144);
      sub_261B4ADD0(*(v0 + 240), v108, type metadata accessor for SectionEntity);
      v112 = *(v110 + 24);
      sub_261B4AD08(v108 + v112, v109, type metadata accessor for SectionEntityID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v113 = *(v0 + 352);
        v114 = *(v0 + 360);
        v115 = *(v0 + 320);
        v116 = *(v0 + 184);
        v117 = *(v0 + 160);
        sub_261AE6A40(*(v0 + 312), &unk_27FEDE0C0, &unk_261D02500);

        sub_261B4AC84(v113, v114);
        v97 = v7;

        sub_261B4AD70(v117, type metadata accessor for SectionEntityID);
        sub_261B4AD70(v116, type metadata accessor for SectionEntity);
      }

      else
      {
        v118 = *(v0 + 192);
        v224 = *(v0 + 200);
        v119 = *(v0 + 152);
        v120 = *(v0 + 136);
        v121 = *(v0 + 104);
        v122 = *(v0 + 80);
        v228 = *(v0 + 88);
        v232 = *(v0 + 352);
        sub_261B4AD70(*(v0 + 160), type metadata accessor for SectionEntityID);
        sub_261B4AD08(v108 + v112, v119, type metadata accessor for SectionEntityID);
        sub_261B4ADD0(v119, v120, type metadata accessor for AppEntityID);
        v236 = v121;
        v123 = *(v121 + 20);
        v124 = *v120;
        v125 = v120[1];
        v126 = objc_allocWithZone(MEMORY[0x277D44700]);
        v127 = sub_261CFD814();
        v128 = sub_261CFFA54();
        v129 = [v126 initWithUUID:v127 entityName:v128];

        sub_261AE6A40(v224, &qword_27FEDA9B0, &qword_261D034B8);
        *v118 = v129;
        (*(v94 + 104))(v118, *MEMORY[0x277D45C38], v245);
        v242(v118, 0, 1, v245);
        sub_261B4AC98(v118, v224);
        *v228 = v232;
        v130 = *(v122 + 104);
        if (v1 < 0)
        {
          v130(*(v0 + 88), *MEMORY[0x277D45E78], *(v0 + 72));
          v133 = v232;
        }

        else
        {
          v131 = *(v0 + 352);
          v132 = *(v0 + 360);
          v130(*(v0 + 88), *MEMORY[0x277D45E80], *(v0 + 72));
          sub_261B49FA0(v131, v132);
        }

        v134 = v251;
        v135 = *(v0 + 280);
        v136 = *(v0 + 264);
        v137 = *(v0 + 184);
        v138 = *(v0 + 128);
        v139 = *(v0 + 96);
        v140 = *(v0 + 72);
        v141 = *(v0 + 80);
        (*(v141 + 32))(v139, *(v0 + 88), v140);
        v142 = sub_261CFE8B4();
        (*(v141 + 8))(v139, v140);
        v143 = *(v137 + 8);
        sub_261CFCA04();
        sub_261B4AD08(v135 + *(v136 + 20), v138, type metadata accessor for AppEntityID);
        sub_261B4AD70(v135, type metadata accessor for ListEntity);
        v144 = *(v236 + 20);
        v145 = *v138;
        v146 = v138[1];
        v147 = objc_allocWithZone(MEMORY[0x277D44700]);
        v148 = sub_261CFD814();
        v149 = sub_261CFFA54();
        v150 = [v147 initWithUUID:v148 entityName:v149];

        sub_261B4AD70(v138, type metadata accessor for AppEntityID);
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        LOBYTE(v148) = sub_261D000F4();

        v151 = v249;
        if ((v148 & 1) == 0)
        {
          if (qword_27FED9870 != -1)
          {
            swift_once();
          }

          v152 = *(v0 + 136);
          v153 = *(v0 + 120);
          v154 = sub_261CFF7A4();
          __swift_project_value_buffer(v154, qword_27FEDA970);
          sub_261B4AD08(v152, v153, type metadata accessor for AppEntityID);
          v155 = v249;
          v156 = sub_261CFF784();
          v157 = sub_261CFFE64();

          v158 = os_log_type_enabled(v156, v157);
          v159 = *(v0 + 200);
          v160 = *(v0 + 120);
          if (v158)
          {
            v161 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v253[0] = v163;
            *v161 = 138412546;
            v164 = [v155 objectID];
            *(v161 + 4) = v164;
            *v162 = v164;
            *(v161 + 12) = 2080;
            v165 = AppEntityID.entityIdentifierString.getter();
            v167 = v166;
            sub_261B4AD70(v160, type metadata accessor for AppEntityID);
            v168 = sub_261B879C8(v165, v167, v253);

            *(v161 + 14) = v168;
            _os_log_impl(&dword_261AE2000, v156, v157, "[CreateRemindersPerformingContext] Attempted to add reminder(s) to a section on a different list than the section's. Skip. {targetList: %@, section: %s}", v161, 0x16u);
            sub_261AE6A40(v162, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v162, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v163);
            v169 = v163;
            v134 = v251;
            MEMORY[0x26671D560](v169, -1, -1);
            v170 = v161;
            v151 = v249;
            MEMORY[0x26671D560](v170, -1, -1);
          }

          else
          {

            sub_261B4AD70(v160, type metadata accessor for AppEntityID);
          }

          sub_261AE6A40(v159, &qword_27FEDA9B0, &qword_261D034B8);
          v242(*(v0 + 200), 1, 1, v245);
        }

        if (v134)
        {
          if (qword_27FED9870 != -1)
          {
            swift_once();
          }

          v171 = *(v0 + 136);
          v172 = *(v0 + 112);
          v173 = sub_261CFF7A4();
          __swift_project_value_buffer(v173, qword_27FEDA970);
          sub_261B4AD08(v171, v172, type metadata accessor for AppEntityID);
          v174 = v151;
          v175 = sub_261CFF784();
          v176 = sub_261CFFE64();

          v177 = os_log_type_enabled(v175, v176);
          v178 = *(v0 + 360);
          v237 = *(v0 + 352);
          v180 = *(v0 + 312);
          v179 = *(v0 + 320);
          v181 = *(v0 + 200);
          v182 = *(v0 + 184);
          v183 = *(v0 + 136);
          v184 = *(v0 + 112);
          if (v177)
          {
            v225 = *(v0 + 320);
            v233 = *(v0 + 312);
            v185 = swift_slowAlloc();
            v229 = v181;
            v186 = swift_slowAlloc();
            v218 = v178;
            v187 = swift_slowAlloc();
            v253[0] = v187;
            *v185 = 138412546;
            v188 = [v174 objectID];
            *(v185 + 4) = v188;
            *v186 = v188;
            *(v185 + 12) = 2080;
            v221 = v182;
            v189 = v174;
            v190 = AppEntityID.entityIdentifierString.getter();
            v215 = v183;
            v192 = v191;
            sub_261B4AD70(v184, type metadata accessor for AppEntityID);
            v193 = sub_261B879C8(v190, v192, v253);

            *(v185 + 14) = v193;
            _os_log_impl(&dword_261AE2000, v175, v176, "[CreateRemindersPerformingContext] Attempted to add subtask(s) to a section. Skip. {targetList: %@, section: %s}", v185, 0x16u);
            sub_261AE6A40(v186, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v186, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v187);
            MEMORY[0x26671D560](v187, -1, -1);
            MEMORY[0x26671D560](v185, -1, -1);

            sub_261B4AC84(v237, v218);
            sub_261AE6A40(v229, &qword_27FEDA9B0, &qword_261D034B8);
            sub_261AE6A40(v233, &unk_27FEDE0C0, &unk_261D02500);
            sub_261B4AD70(v215, type metadata accessor for AppEntityID);
            v194 = v221;
          }

          else
          {
            v201 = *(v0 + 320);

            sub_261B4AC84(v237, v178);
            sub_261B4AD70(v184, type metadata accessor for AppEntityID);
            sub_261AE6A40(v181, &qword_27FEDA9B0, &qword_261D034B8);
            sub_261AE6A40(v180, &unk_27FEDE0C0, &unk_261D02500);
            sub_261B4AD70(v183, type metadata accessor for AppEntityID);
            v194 = v182;
          }

          sub_261B4AD70(v194, type metadata accessor for SectionEntity);
          v242(*(v0 + 200), 1, 1, v245);
          v97 = v249;
        }

        else
        {
          v195 = *(v0 + 352);
          v196 = *(v0 + 360);
          v198 = *(v0 + 312);
          v197 = *(v0 + 320);
          v199 = *(v0 + 184);
          v200 = *(v0 + 136);

          sub_261B4AC84(v195, v196);
          sub_261AE6A40(v198, &unk_27FEDE0C0, &unk_261D02500);
          sub_261B4AD70(v200, type metadata accessor for AppEntityID);
          sub_261B4AD70(v199, type metadata accessor for SectionEntity);
          v97 = v151;
        }
      }
    }
  }

  v203 = *(v0 + 304);
  v202 = *(v0 + 312);
  v204 = *(v0 + 288);
  v205 = *(v0 + 296);
  v206 = *(v0 + 280);
  v207 = *(v0 + 256);
  v212 = *(v0 + 248);
  v213 = *(v0 + 240);
  v208 = *(v0 + 200);
  v214 = *(v0 + 232);
  v216 = *(v0 + 208);
  v219 = *(v0 + 192);
  v222 = *(v0 + 184);
  v226 = *(v0 + 160);
  v230 = *(v0 + 152);
  v234 = *(v0 + 136);
  v238 = *(v0 + 128);
  v240 = *(v0 + 120);
  v243 = *(v0 + 112);
  v246 = *(v0 + 96);
  v250 = *(v0 + 88);
  v209 = *(v0 + 48);
  *v209 = *(v0 + 352);
  *(v209 + 16) = v97;
  *(v209 + 24) = v251;
  RemindersPerformingContext = type metadata accessor for CreateRemindersPerformingContext();
  sub_261B4AC98(v208, v209 + *(RemindersPerformingContext + 28));

  v83 = *(v0 + 8);
  v211 = *MEMORY[0x277D85DE8];
LABEL_39:

  return v83();
}

uint64_t sub_261B48E08()
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = v0[39];
  v1 = v0[40];

  sub_261AE6A40(v2, &unk_27FEDE0C0, &unk_261D02500);
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[26];
  v16 = v0[46];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[11];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

unint64_t sub_261B48FBC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_261D00274();
    if (v19)
    {
      v20 = v19;
      v1 = sub_261C44054(v19, 0);
      sub_261BBDF58(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_261D00274();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26671CA10]();
          v11 = MEMORY[0x26671CA10](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_261BA00C0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_261BA00C0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_261B491CC(void *a1)
{
  v2 = type metadata accessor for ReminderEntity();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v17 = &v16 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  for (i = v9 - 1; ; --i)
  {
    if (v10 == i)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = *(v16 + 72);
    result = sub_261B4AD08(a1 + v14 + v15 * v10, v17, type metadata accessor for ReminderEntity);
    if (i >= v13)
    {
      goto LABEL_14;
    }

    sub_261B4AD08(a1 + v14 + v15 * i, v6, type metadata accessor for ReminderEntity);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_261B9D834(a1);
    }

    result = sub_261B4AC20(v6, a1 + v14 + v15 * v10);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_261B4AC20(v17, a1 + v14 + v15 * i);
LABEL_5:
    if (v11 == ++v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261B493A4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void *sub_261B49450(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26671CA10](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void (*sub_261B49564(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26671CA10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return _s19RemindersAppIntents27QuickReminderViewControllerC13ConfigurationVwxx_0;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CreateRemindersPerformingContext()
{
  result = qword_27FEDA9E8;
  if (!qword_27FEDA9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261B496E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261B49728(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void (*sub_261B49794(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26671CA10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for QuickReminderViewController.Configuration;
  }

  __break(1u);
  return result;
}

uint64_t sub_261B49814(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ListEntity();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B49938, 0, 0);
}

uint64_t sub_261B49938()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_261AFB668(*(v0 + 32), v3, &unk_27FEDE0C0, &unk_261D02500);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_261AE6A40(*(v0 + 48), &unk_27FEDE0C0, &unk_261D02500);
    v4 = 0;
    v5 = 0xF000000000000007;
LABEL_10:
    v24 = *(v0 + 72);
    v25 = *(v0 + 48);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];

    return v26(v4, v5);
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_261B4ADD0(*(v0 + 48), v6, type metadata accessor for ListEntity);
  v8 = *(v6 + *(v7 + 84));
  v9 = (v6 + *(v7 + 20));
  v10 = *(type metadata accessor for AppEntityID() + 20);
  v11 = *v9;
  v12 = v9[1];
  v13 = objc_allocWithZone(MEMORY[0x277D44700]);
  v14 = sub_261CFD814();
  v15 = sub_261CFFA54();
  v16 = [v13 initWithUUID:v14 entityName:v15];

  v17 = *(v0 + 40);
  if ((v8 & 1) == 0)
  {
    *(v0 + 24) = 0;
    v4 = [v17 fetchListWithObjectID:v16 error:v0 + 24];

    v23 = *(v0 + 24);
    if (v4)
    {
      sub_261B4AD70(*(v0 + 72), type metadata accessor for ListEntity);
      v5 = 0;
      goto LABEL_10;
    }

    v34 = v23;
    goto LABEL_20;
  }

  *(v0 + 16) = 0;
  v4 = [v17 fetchCustomSmartListWithObjectID:v16 error:v0 + 16];

  v18 = *(v0 + 16);
  if (!v4)
  {
    v34 = v18;
LABEL_20:
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v4 customContext];
  if (v20)
  {
    v21 = v20;
    v22 = sub_261D00094();

    if (v22)
    {
      sub_261B4AD70(*(v0 + 72), type metadata accessor for ListEntity);
      v5 = v22 | 0x8000000000000000;
      goto LABEL_10;
    }
  }

  if (qword_27FED9870 != -1)
  {
    swift_once();
  }

  v29 = sub_261CFF7A4();
  __swift_project_value_buffer(v29, qword_27FEDA970);
  v30 = sub_261CFF784();
  v31 = sub_261CFFE64();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_261AE2000, v30, v31, "[CreateReminderIntentPerforming] Unable to fetch custom smart list filter", v32, 2u);
    MEMORY[0x26671D560](v32, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v33 = 10;
  swift_willThrow();

LABEL_21:
  v35 = *(v0 + 48);
  sub_261B4AD70(*(v0 + 72), type metadata accessor for ListEntity);

  v36 = *(v0 + 8);
  v37 = *MEMORY[0x277D85DE8];

  return v36();
}

uint64_t sub_261B49D78(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v4 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v5 = sub_261B3B918();
    result = MEMORY[0x26671C450](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26671CA10](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_261B9C850(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_261D00274();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_261B49EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26671C450](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_261CFD104();
      sub_261B9CA88(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_261B49F50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_261B49FA0(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = a2 & 0x7FFFFFFFFFFFFFFFLL;
    v5 = a1;
    a1 = v4;
  }

  return a1;
}

char *sub_261B49FEC(char *a1, void **a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *v4 = *a2;
    v4 = &v7[(v5 + 16) & ~v5];
    sub_261CFCDA4();
  }

  else
  {
    v6 = a2[1];
    if ((~v6 & 0xF000000000000007) != 0)
    {
      v8 = *a2;
      v9 = a3;
      sub_261B49FA0(*a2, a2[1]);
      a3 = v9;
      *v4 = v8;
      *(v4 + 1) = v6;
    }

    else
    {
      *a1 = *a2;
    }

    v10 = a2[2];
    v11 = a2[3];
    *(v4 + 2) = v10;
    *(v4 + 3) = v11;
    v12 = *(a3 + 28);
    v13 = sub_261CFDC34();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    v16 = v10;
    v17 = v11;
    if (v15(a2 + v12, 1, v13))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
      memcpy(&v4[v12], a2 + v12, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v4[v12], a2 + v12, v13);
      (*(v14 + 56))(&v4[v12], 0, 1, v13);
    }
  }

  return v4;
}

uint64_t sub_261B4A19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_261B4A290(*a1, v4);
  }

  v5 = *(a2 + 28);
  v6 = sub_261CFDC34();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

void sub_261B4A290(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = a2 & 0x7FFFFFFFFFFFFFFFLL;

    a1 = v3;
  }
}

char *sub_261B4A2DC(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v7 = *a2;
    sub_261B49FA0(*a2, *(a2 + 8));
    *a1 = v7;
    *(a1 + 1) = v6;
  }

  else
  {
    *a1 = *a2;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a1 + 2) = v8;
  *(a1 + 3) = v9;
  v10 = *(a3 + 28);
  v11 = sub_261CFDC34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v8;
  v15 = v9;
  if (v13(a2 + v10, 1, v11))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy(&a1[v10], (a2 + v10), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(&a1[v10], a2 + v10, v11);
    (*(v12 + 56))(&a1[v10], 0, 1, v11);
  }

  return a1;
}

char *sub_261B4A43C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = v6 & 0xF000000000000007;
  if ((~*(a1 + 1) & 0xF000000000000007) == 0)
  {
    if (v7 != 0xF000000000000007)
    {
      v8 = *a2;
      sub_261B49FA0(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 1) = v6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v7 == 0xF000000000000007)
  {
    sub_261B4A648(a1);
LABEL_6:
    *a1 = *a2;
    goto LABEL_8;
  }

  v9 = *a2;
  sub_261B49FA0(*a2, *(a2 + 8));
  v10 = *a1;
  v11 = *(a1 + 1);
  *a1 = v9;
  *(a1 + 1) = v6;
  sub_261B4A290(v10, v11);
LABEL_8:
  v12 = *(a2 + 16);
  v13 = *(a1 + 2);
  *(a1 + 2) = v12;
  v14 = v12;

  v15 = *(a1 + 3);
  v16 = *(a2 + 24);
  *(a1 + 3) = v16;
  v17 = v16;

  v18 = *(a3 + 28);
  v19 = sub_261CFDC34();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  LODWORD(v15) = v21(&a1[v18], 1, v19);
  v22 = v21((a2 + v18), 1, v19);
  if (!v15)
  {
    if (!v22)
    {
      (*(v20 + 24))(&a1[v18], a2 + v18, v19);
      return a1;
    }

    (*(v20 + 8))(&a1[v18], v19);
    goto LABEL_13;
  }

  if (v22)
  {
LABEL_13:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy(&a1[v18], (a2 + v18), *(*(v23 - 8) + 64));
    return a1;
  }

  (*(v20 + 16))(&a1[v18], a2 + v18, v19);
  (*(v20 + 56))(&a1[v18], 0, 1, v19);
  return a1;
}

uint64_t sub_261B4A678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a3 + 28);
  v7 = sub_261CFDC34();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t sub_261B4A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 8);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_261B4A648(a1);
LABEL_4:
    *a1 = *a2;
    goto LABEL_6;
  }

  v8 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v7;
  sub_261B4A290(v8, v6);
LABEL_6:
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v10 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v11 = *(a3 + 28);
  v12 = sub_261CFDC34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      (*(v13 + 40))(a1 + v11, a2 + v11, v12);
      return a1;
    }

    (*(v13 + 8))(a1 + v11, v12);
    goto LABEL_11;
  }

  if (v16)
  {
LABEL_11:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    memcpy((a1 + v11), (a2 + v11), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v13 + 32))(a1 + v11, a2 + v11, v12);
  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_261B4A990()
{
  sub_261B4AA40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_261B4AA40()
{
  if (!qword_27FEDA9F8)
  {
    sub_261CFDC34();
    v0 = sub_261D00154();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEDA9F8);
    }
  }
}

uint64_t assignWithCopy for CreateRemindersPerformingContext.IntendedList(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261B49FA0(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  sub_261B4A290(v5, v6);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t assignWithTake for CreateRemindersPerformingContext.IntendedList(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a1 = *a2;
  sub_261B4A290(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for CreateRemindersPerformingContext.IntendedList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CreateRemindersPerformingContext.IntendedList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_261B4AC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_261B4AC84(void *a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_261B4A290(a1, a2);
  }
}

uint64_t sub_261B4AC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B4AD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B4AD70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B4ADD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UpdateReminderAppIntent.isCompleted.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4AE74(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v13[10] = a2[10];
  v13[11] = v3;
  v4 = a2[13];
  v13[12] = a2[12];
  v13[13] = v4;
  v5 = a2[7];
  v13[6] = a2[6];
  v13[7] = v5;
  v6 = a2[9];
  v13[8] = a2[8];
  v13[9] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v12 = v2;
  sub_261B4E63C(v13, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.isCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4AFEC(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &qword_27FEDA9A8, &qword_261D034B0);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA9A8, &qword_261D034B0);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.note.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*UpdateReminderAppIntent.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.tags.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4B2C0(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.tags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4B43C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &qword_27FEDA160, &qword_261D02220);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &qword_27FEDA160, &qword_261D02220);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.dueDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*UpdateReminderAppIntent.dueDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4B700(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &qword_27FEDA9A0, &unk_261D034A0);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*UpdateReminderAppIntent.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.subtasks.getter()
{
  v1 = *(v0 + 40);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4B9D4(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.subtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4BB50(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &unk_27FEDE0C0, &unk_261D02500);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &unk_27FEDE0C0, &unk_261D02500);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDE0C0, &unk_261D02500);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.targetList.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 48);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t (*UpdateReminderAppIntent.targetList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4BE14(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &qword_27FEDA1E0, &unk_261D02300);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &qword_27FEDA1E0, &unk_261D02300);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA1E0, &unk_261D02300);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.targetSection.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 56);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t (*UpdateReminderAppIntent.targetSection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t static UpdateReminderAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDAA08 = a1;
  return result;
}

uint64_t sub_261B4C198()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDAA10);
  __swift_project_value_buffer(v9, qword_27FEDAA10);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9878 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t *sub_261B4C764(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for ReminderEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261B4C910(a1, v19 - v9);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261B4C910(v10, v8);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261B4C974(v10);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for ReminderEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 64);
  sub_261B4C910(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B4C974(a1);
}

uint64_t sub_261B4C910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B4C974(uint64_t a1)
{
  v2 = type metadata accessor for ReminderEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*UpdateReminderAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.title.getter()
{
  v1 = *(v0 + 72);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4CA9C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[11];
  v13[10] = a2[10];
  v13[11] = v4;
  v5 = a2[13];
  v13[12] = a2[12];
  v13[13] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v7 = a2[9];
  v13[8] = a2[8];
  v13[9] = v7;
  v8 = a2[3];
  v13[2] = a2[2];
  v13[3] = v8;
  v9 = a2[5];
  v13[4] = a2[4];
  v13[5] = v9;
  v10 = a2[1];
  v13[0] = *a2;
  v13[1] = v10;
  v12[28] = v3;
  v12[29] = v2;
  sub_261CFD104();
  sub_261B4E63C(v13, v12);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4CC14(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &unk_27FEDE0C0, &unk_261D02500);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &unk_27FEDE0C0, &unk_261D02500);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDE0C0, &unk_261D02500);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.list.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 80);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t (*UpdateReminderAppIntent.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4CED8(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &qword_27FEDA160, &qword_261D02220);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &qword_27FEDA160, &qword_261D02220);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.dueDateComponents.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 88);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*UpdateReminderAppIntent.dueDateComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4D19C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[11];
  v15[10] = a2[10];
  v15[11] = v6;
  v7 = a2[13];
  v15[12] = a2[12];
  v15[13] = v7;
  v8 = a2[7];
  v15[6] = a2[6];
  v15[7] = v8;
  v9 = a2[9];
  v15[8] = a2[8];
  v15[9] = v9;
  v10 = a2[3];
  v15[2] = a2[2];
  v15[3] = v10;
  v11 = a2[5];
  v15[4] = a2[4];
  v15[5] = v11;
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  v14[28] = v2;
  v14[29] = v3;
  v14[30] = v4;
  v14[31] = v5;
  sub_261B530B8(v2, v3);
  sub_261B4E63C(v15, v14);
  sub_261CFCBC4();
  return sub_261B4E674(v15);
}

uint64_t UpdateReminderAppIntent.earlyAlert.setter(__int128 *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  v5 = a1[1];
  return sub_261CFCBC4();
}

uint64_t (*UpdateReminderAppIntent.earlyAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t *sub_261B4D328(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &qword_27FEDA9A0, &unk_261D034A0);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.recurrenceRule.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 104);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*UpdateReminderAppIntent.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4D5EC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[11];
  v14[10] = a2[10];
  v14[11] = v5;
  v6 = a2[13];
  v14[12] = a2[12];
  v14[13] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  v13[28] = v2;
  v13[29] = v3;
  v13[30] = v4;
  sub_261B5306C(v2);
  sub_261B4E63C(v14, v13);
  sub_261CFCBC4();
  return sub_261B4E674(v14);
}

uint64_t UpdateReminderAppIntent.spatialEventTrigger.setter(__int128 *a1)
{
  v2 = *(v1 + 112);
  v4 = *a1;
  v5 = *(a1 + 2);
  return sub_261CFCBC4();
}

uint64_t (*UpdateReminderAppIntent.spatialEventTrigger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4D784(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &unk_27FEDB0B0, &unk_261D035D0);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.contactPerson.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 120);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*UpdateReminderAppIntent.contactPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4DA48(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &unk_27FEDB0B0, &unk_261D035D0);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.assignedPerson.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 128);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*UpdateReminderAppIntent.assignedPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.notes.getter()
{
  v1 = *(v0 + 136);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4DD1C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[11];
  v13[10] = a2[10];
  v13[11] = v4;
  v5 = a2[13];
  v13[12] = a2[12];
  v13[13] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v7 = a2[9];
  v13[8] = a2[8];
  v13[9] = v7;
  v8 = a2[3];
  v13[2] = a2[2];
  v13[3] = v8;
  v9 = a2[5];
  v13[4] = a2[4];
  v13[5] = v9;
  v10 = a2[1];
  v13[0] = *a2;
  v13[1] = v10;
  v12[28] = v3;
  v12[29] = v2;
  sub_261CFD104();
  sub_261B4E63C(v13, v12);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t (*UpdateReminderAppIntent.notes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4DE94(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v13[10] = a2[10];
  v13[11] = v3;
  v4 = a2[13];
  v13[12] = a2[12];
  v13[13] = v4;
  v5 = a2[7];
  v13[6] = a2[6];
  v13[7] = v5;
  v6 = a2[9];
  v13[8] = a2[8];
  v13[9] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v12 = v2;
  sub_261B4E63C(v13, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t UpdateReminderAppIntent.flags.setter(char *a1)
{
  v2 = *(v1 + 144);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateReminderAppIntent.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4E010(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v13[10] = a2[10];
  v13[11] = v3;
  v4 = a2[13];
  v13[12] = a2[12];
  v13[13] = v4;
  v5 = a2[7];
  v13[6] = a2[6];
  v13[7] = v5;
  v6 = a2[9];
  v13[8] = a2[8];
  v13[9] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v12 = v2;
  sub_261B4E63C(v13, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v13);
}

uint64_t UpdateReminderAppIntent.priorityLevel.setter(char *a1)
{
  v2 = *(v1 + 152);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateReminderAppIntent.priorityLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4E18C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_261AFB668(a1, v19 - v9, &unk_27FEDE110, &unk_261D035B0);
  v11 = a2[11];
  v20[10] = a2[10];
  v20[11] = v11;
  v12 = a2[13];
  v20[12] = a2[12];
  v20[13] = v12;
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  sub_261AFB668(v10, v8, &unk_27FEDE110, &unk_261D035B0);
  sub_261B4E63C(v20, v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDE110, &unk_261D035B0);
  return sub_261B4E674(v20);
}

uint64_t UpdateReminderAppIntent.parent.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 160);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t (*UpdateReminderAppIntent.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 160);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t *sub_261B4E42C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 168);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.reminderSubtasks.getter()
{
  v1 = *(v0 + 168);
  sub_261CFCBB4();
  return v3;
}

uint64_t *UpdateReminderAppIntent.reminderSubtasks.setter(uint64_t a1)
{
  v2 = v1[11];
  v11[10] = v1[10];
  v11[11] = v2;
  v3 = v1[13];
  v11[12] = v1[12];
  v11[13] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[9];
  v11[8] = v1[8];
  v11[9] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  v7 = v1[5];
  v11[4] = v1[4];
  v11[5] = v7;
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v10[28] = a1;
  sub_261B4E63C(v11, v10);
  sub_261CFCBC4();
  return sub_261B4E674(v11);
}

void (*UpdateReminderAppIntent.reminderSubtasks.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1D8uLL);
  }

  *a1 = v3;
  *(v3 + 464) = v1;
  v4 = *(v1 + 168);
  sub_261CFCBB4();
  return sub_261B4E720;
}