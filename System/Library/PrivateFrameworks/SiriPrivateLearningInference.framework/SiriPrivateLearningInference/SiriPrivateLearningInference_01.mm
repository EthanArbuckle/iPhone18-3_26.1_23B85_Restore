char *sub_222B4CBD4(char *a1, int64_t a2, char a3)
{
  result = sub_222B4E54C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4CBF4(char *a1, int64_t a2, char a3)
{
  result = sub_222B4E66C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_222B4CC14(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024DE0, &unk_222C96BB0, &qword_27D024DE8, &qword_222CA55A0);
  *v3 = result;
  return result;
}

size_t sub_222B4CC54(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024E60, &qword_222C96C20, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
  *v3 = result;
  return result;
}

char *sub_222B4CC98(char *a1, int64_t a2, char a3)
{
  result = sub_222B4E77C(a1, a2, a3, *v3, &qword_27D024E48, &qword_222C96C08);
  *v3 = result;
  return result;
}

void *sub_222B4CCD0(void *a1, int64_t a2, char a3)
{
  result = sub_222B4E8A0(a1, a2, a3, *v3, &qword_27D024D50, &qword_222C96B28, &qword_27D024D58, &qword_222C96B30);
  *v3 = result;
  return result;
}

size_t sub_222B4CD10(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024D60, &qword_222C96B38, &unk_27D026290, &qword_222C96B40);
  *v3 = result;
  return result;
}

size_t sub_222B4CD50(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024D68, &qword_222C96B48, type metadata accessor for ContactSuggestionProvidedClassification);
  *v3 = result;
  return result;
}

size_t sub_222B4CD94(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024C50, &qword_222C96A28, type metadata accessor for SessionGroundTruths);
  *v3 = result;
  return result;
}

char *sub_222B4CDD8(char *a1, int64_t a2, char a3)
{
  result = sub_222B4EBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4CDF8(char *a1, int64_t a2, char a3)
{
  result = sub_222B4ECB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_222B4CE18(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024C28, &qword_222C96A00, &qword_27D024C30, &qword_222C96A08);
  *v3 = result;
  return result;
}

size_t sub_222B4CE58(size_t a1, int64_t a2, char a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024C38, &unk_222C96A10, &qword_27D024C40, &unk_222CA5FA0);
  *v3 = result;
  return result;
}

char *sub_222B4CE98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
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

char *sub_222B4CFB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FF8, &qword_222C96DB0);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_222B4D0C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025000, &qword_222C96DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4D1FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
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

char *sub_222B4D308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C78, &qword_222C96A50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4D414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DB8, &qword_222C96B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_222B4D518(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_222B4D610(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D28, &unk_222C96B00);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_222B4D72C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_222B4D828(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F78, &unk_222C96D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F80, &qword_222C9A0D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4D970(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_222B4DAB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CF8, &qword_222C96AD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D00, &qword_222C96AD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4DBFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CE8, &qword_222C96AC0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CF0, &qword_222C96AC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4DD44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F60, &qword_222C96D18);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F68, &qword_222C96D20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4DE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F40, &qword_222C96CF0);
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

char *sub_222B4DF84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F38, &qword_222C96CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4E0A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EF8, &qword_222C96CA8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F00, &qword_222C96CB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4E1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CA0, &qword_222C96A78);
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

void *sub_222B4E2F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_222B4E42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EA8, &qword_222C96C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4E54C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EA0, &qword_222C96C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4E66C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C18, &qword_222C969F0);
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

char *sub_222B4E77C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_222B4E8A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_222B4E9D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_222B4EBB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DF8, &qword_222C96BC8);
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
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_222B4ECB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DA0, &qword_222C96B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_222B4EDD4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_222B4EFBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C00, &qword_222C9A400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C08, &qword_222C969E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_222B4F0F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
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
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024FB8, &qword_27D024FB0, &qword_222C96D68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FB0, &qword_222C96D68);
            v9 = sub_222B7E140(v13, i, a3);
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
        sub_222C9378C();
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

uint64_t sub_222B4F280(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
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
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024E70, &qword_27D024E68, &qword_222C96C28);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E68, &qword_222C96C28);
            v9 = sub_222B7E2D0(v13, i, a3);
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
        sub_222C941FC();
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

uint64_t sub_222B4F410(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
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
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024E88, &qword_27D024E80, &unk_222C96C30);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E80, &unk_222C96C30);
            v9 = sub_222B7E248(v13, i, a3);
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
        sub_222B505A8(0, &qword_27D024E78, 0x277D5A790);
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

uint64_t sub_222B4F5B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
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
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024DD0, &qword_27D024DC8, &qword_222C96BA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DC8, &qword_222C96BA0);
            v9 = sub_222B7E1C8(v13, i, a3);
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
        sub_222B505A8(0, &qword_27D024DC0, 0x277D59CC8);
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

uint64_t sub_222B4F750(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
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
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024E10, &qword_27D024E08, &qword_222C96BD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E08, &qword_222C96BD0);
            v9 = sub_222B7E1C8(v13, i, a3);
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
        sub_222B505A8(0, &qword_27D024E00, 0x277D59DF0);
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

uint64_t sub_222B4F8F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_222B405A0(&v12, v10 + 40 * a1 + 32);
}

void sub_222B4F988(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 mediaItems];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  sub_222B505A8(0, &qword_27D025018, 0x277CD3DB8);
  v6 = sub_222C9471C();

  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v8 = sub_222C94C6C();
  if (!v8)
  {
LABEL_28:

LABEL_29:
    v10 = [a1 mediaContainer];
    goto LABEL_30;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223DC9B30](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v9 = *(v6 + 32);
  }

  v10 = v9;
  if (v7)
  {
    if (sub_222C94C6C() < 2)
    {
      goto LABEL_9;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_9:

LABEL_30:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_31:
    *a2 = v10;
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v16;
    a2[4] = v17;
    return;
  }

  if (v8 < 1)
  {
    goto LABEL_34;
  }

  if (!v7)
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (sub_222C94C6C() >= 1)
  {
    v11 = sub_222C94C6C();
LABEL_17:
    if (v11 >= v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {

        if (v8 != 1)
        {
          v12 = 1;
          do
          {
            v13 = v12 + 1;
            sub_222C94D6C();
            v12 = v13;
          }

          while (v8 != v13);
        }
      }

      else
      {
      }

      if (v7)
      {
        v14 = sub_222C94F5C();
        v15 = v18;
        v16 = v19;
        v17 = v20;
      }

      else
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        v15 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v16 = 1;
        v17 = (2 * v8) | 1;
      }

      goto LABEL_31;
    }

    goto LABEL_35;
  }

LABEL_36:
  __break(1u);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_222B4FC6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_222B4FCD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_222B4FD34(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_222B4FDCC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_222B4FE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_222B4FE78(a3, a4);
  }
}

uint64_t sub_222B4FE78(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t dispatch thunk of INPlayMediaIntentFeatureExtractor.extract(from:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222B505F0;

  return v8(a1);
}

uint64_t dispatch thunk of INPlayMediaIntentFeatureExtractor.extractMediaItemFeatures(from:intent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222B5016C;

  return v10(a1, a2);
}

uint64_t sub_222B5016C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of INPlayMediaIntentFeatureExtractor.buildMediaItem(_:intent:isPrimaryItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_222B503AC;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_222B503AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_222B504F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_222B505A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OneShotSuccessfulGroundTruthGenerator.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  OneShotSuccessfulGroundTruthGenerator.init(_:)(a1);
  return v5;
}

char *OneShotSuccessfulGroundTruthGenerator.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for OneShotSuccessfulGroundTruthGenerator();
  *(v1 + 2) = static InferenceLogUtils.loggerTag<A>(_:)();
  *(v1 + 3) = v5;
  (*(*(v3 - 8) + 32))(&v1[*(*v1 + 104)], a1, v3);
  return v1;
}

uint64_t sub_222B50798(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_222C94B5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  sub_222B509E8(a1, a2, v13);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v13, v8);
    return sub_222C9477C();
  }

  else
  {
    v20 = *(v14 + 32);
    v19 = v14 + 32;
    v20(v17, v13, AssociatedTypeWitness);
    v21 = sub_222B51F4C(AssociatedTypeWitness, AssociatedTypeWitness);
    v22 = *(v21 + 52);
    v23 = *(v19 + 40);
    v24 = (*(v19 + 48) + *(v21 + 48)) & ~*(v19 + 48);
    swift_allocObject();
    v25 = sub_222C9473C();
    v20(v26, v17, AssociatedTypeWitness);
    sub_222C947FC();
    return v25;
  }
}

uint64_t sub_222B509E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a2;
  v131 = a1;
  v141 = a3;
  v4 = *v3;
  v122 = sub_222C9367C();
  v121 = *(v122 - 8);
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v125 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[11];
  v8 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = sub_222C94B5C();
  v118 = *(v119 - 8);
  v10 = *(v118 + 64);
  v11 = MEMORY[0x28223BE20](v119);
  v123 = &v115 - v12;
  v129 = AssociatedTypeWitness;
  v128 = *(AssociatedTypeWitness - 8);
  v13 = *(v128 + 64);
  MEMORY[0x28223BE20](v11);
  v124 = &v115 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v127 = sub_222C94B5C();
  v126 = *(v127 - 8);
  v16 = *(v126 + 64);
  v17 = MEMORY[0x28223BE20](v127);
  v120 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v130 = &v115 - v20;
  v134 = v15;
  v133 = *(v15 - 8);
  v21 = *(v133 + 64);
  MEMORY[0x28223BE20](v19);
  v132 = &v115 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025020, &unk_222C98410);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v145 = &v115 - v25;
  v148 = type metadata accessor for TurnPairRestatementClassification();
  v144 = *(v148 - 8);
  v26 = *(v144 + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v115 - v30;
  v32 = type metadata accessor for EntityPromptClassification();
  v143 = *(v32 - 8);
  v33 = *(v143 + 64);
  MEMORY[0x28223BE20](v32);
  v146 = (&v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = swift_getAssociatedTypeWitness();
  v136 = sub_222C94B5C();
  v135 = *(v136 - 8);
  v36 = *(v135 + 64);
  v37 = MEMORY[0x28223BE20](v136);
  v39 = &v115 - v38;
  v40 = *(v35 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v43 = &v115 - v42;
  *&v150 = v142;
  v44 = v4[13];
  v138 = v3;
  v137 = v44;
  v139 = v8;
  v140 = v7;
  sub_222B51D30(v3 + v44, v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025030, &qword_222C98420);
  sub_222B520D0();
  v45 = v40;
  v46 = sub_222C9466C();

  *&v150 = v46;
  sub_222C947FC();
  swift_getWitnessTable();
  sub_222C949CC();
  if ((*(v40 + 48))(v39, 1, v35) != 1)
  {
    v57 = *(v40 + 32);
    v136 = v43;
    v57(v43, v39, v35);

    v58 = *(v142 + 16);
    v117 = v35;
    v116 = v45;
    if (v58)
    {
      v59 = v142 + 32;
      v60 = (v143 + 56);
      v61 = (v143 + 48);
      v62 = MEMORY[0x277D84F90];
      v63 = v142 + 32;
      v64 = v58;
      do
      {
        sub_222B43E3C(v63, &v150);
        sub_222B405A0(&v150, v149);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        v65 = swift_dynamicCast();
        (*v60)(v31, v65 ^ 1u, 1, v32);
        if ((*v61)(v31, 1, v32) == 1)
        {
          sub_222B4FCD4(v31, &qword_27D025028, &unk_222C96EC0);
        }

        else
        {
          sub_222B52134(v31, v146, type metadata accessor for EntityPromptClassification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_222B49F90(0, v62[2] + 1, 1, v62);
          }

          v67 = v62[2];
          v66 = v62[3];
          v68 = v62;
          if (v67 >= v66 >> 1)
          {
            v68 = sub_222B49F90(v66 > 1, v67 + 1, 1, v62);
          }

          *(v68 + 16) = v67 + 1;
          v62 = v68;
          sub_222B52134(v146, v68 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v67, type metadata accessor for EntityPromptClassification);
        }

        v63 += 40;
        --v64;
      }

      while (v64);
      v146 = v62;
      v69 = v145;
      v70 = (v144 + 56);
      v71 = (v144 + 48);
      v72 = MEMORY[0x277D84F90];
      v73 = v139;
      do
      {
        sub_222B43E3C(v59, &v150);
        sub_222B405A0(&v150, v149);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        v74 = v148;
        v75 = swift_dynamicCast();
        (*v70)(v69, v75 ^ 1u, 1, v74);
        if ((*v71)(v69, 1, v74) == 1)
        {
          sub_222B4FCD4(v69, &qword_27D025020, &unk_222C98410);
        }

        else
        {
          sub_222B52134(v69, v147, type metadata accessor for TurnPairRestatementClassification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_222B4A2A0(0, v72[2] + 1, 1, v72);
          }

          v77 = v72[2];
          v76 = v72[3];
          if (v77 >= v76 >> 1)
          {
            v72 = sub_222B4A2A0(v76 > 1, v77 + 1, 1, v72);
          }

          v72[2] = v77 + 1;
          sub_222B52134(v147, v72 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v77, type metadata accessor for TurnPairRestatementClassification);
          v69 = v145;
        }

        v59 += 40;
        --v58;
      }

      while (v58);
      v78 = v141;
      v79 = v146;
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
      v72 = MEMORY[0x277D84F90];
      v73 = v139;
      v78 = v141;
    }

    v80 = *(v79 + 16);

    v81 = v140;
    v82 = v138;
    v83 = v136;
    if (v80)
    {
    }

    else
    {
      v84 = v72[2];

      if (!v84)
      {
        v92 = v130;
        v93 = v131;
        (*(v81 + 80))(v131, v83, v73, v81);
        v94 = v133;
        v95 = v134;
        if ((*(v133 + 48))(v92, 1, v134) != 1)
        {
          (*(v94 + 32))(v132, v92, v95);
          v97 = v123;
          (*(v81 + 88))(v93, v73, v81);
          v98 = v128;
          v99 = v93;
          v100 = v129;
          if ((*(v128 + 48))(v97, 1, v129) != 1)
          {
            (*(v98 + 32))(v124, v97, v100);
            type metadata accessor for SuccessfulTaskMetadata();
            v108 = swift_allocObject();
            v109 = v142;
            *(v108 + 16) = v99;
            *(v108 + 24) = v109;

            sub_222C9366C();
            v110 = v120;
            v111 = v134;
            (*(v94 + 16))(v120, v132, v134);
            (*(v94 + 56))(v110, 0, 1, v111);
            v112 = v125;
            v113 = v124;
            v114 = v132;
            (*(v81 + 96))(v125, v124, v110, v132, v108, v73, v81);

            (*(v126 + 8))(v110, v127);
            (*(v121 + 8))(v112, v122);
            (*(v128 + 8))(v113, v129);
            (*(v94 + 8))(v114, v134);
            return (*(v116 + 8))(v83, v117);
          }

          v101 = v134;
          (*(v118 + 8))(v97, v119);
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v102 = sub_222C9431C();
          __swift_project_value_buffer(v102, qword_280FE2340);

          v103 = sub_222C942FC();
          v104 = sub_222C94A3C();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = v101;
            v107 = swift_slowAlloc();
            *&v150 = v107;
            *v105 = 136315138;
            *(v105 + 4) = sub_222B437C0(v82[2], v82[3], &v150);
            _os_log_impl(&dword_222B39000, v103, v104, "%s Could not extract exactly one uso entity. Skipping positive ground truth generation.", v105, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v107);
            MEMORY[0x223DCA8C0](v107, -1, -1);
            MEMORY[0x223DCA8C0](v105, -1, -1);

            (*(v133 + 8))(v132, v106);
          }

          else
          {

            (*(v133 + 8))(v132, v101);
          }

LABEL_37:
          (*(v116 + 8))(v83, v117);
          v91 = swift_getAssociatedTypeWitness();
          return (*(*(v91 - 8) + 56))(v78, 1, 1, v91);
        }

        (*(v126 + 8))(v92, v127);
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v96 = sub_222C9431C();
        __swift_project_value_buffer(v96, qword_280FE2340);

        v86 = sub_222C942FC();
        v87 = sub_222C94A3C();

        if (!os_log_type_enabled(v86, v87))
        {
LABEL_36:

          goto LABEL_37;
        }

        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v150 = v89;
        *v88 = 136315138;
        *(v88 + 4) = sub_222B437C0(v82[2], v82[3], &v150);
        v90 = "%s Could not extract exactly one entity reference. Skipping positive ground truth generation.";
LABEL_35:
        _os_log_impl(&dword_222B39000, v86, v87, v90, v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        MEMORY[0x223DCA8C0](v89, -1, -1);
        MEMORY[0x223DCA8C0](v88, -1, -1);
        goto LABEL_36;
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v85 = sub_222C9431C();
    __swift_project_value_buffer(v85, qword_280FE2340);

    v86 = sub_222C942FC();
    v87 = sub_222C94A3C();

    if (!os_log_type_enabled(v86, v87))
    {
      goto LABEL_36;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v150 = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_222B437C0(v82[2], v82[3], &v150);
    v90 = "%s Prompt or restatement present in conversation. Skipping positive ground truth generation.";
    goto LABEL_35;
  }

  (*(v135 + 8))(v39, v136);

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v47 = sub_222C9431C();
  __swift_project_value_buffer(v47, qword_280FE2340);
  v48 = v138;

  v49 = sub_222C942FC();
  v50 = sub_222C94A3C();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v141;
  if (v51)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v150 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_222B437C0(v48[2], v48[3], &v150);
    _os_log_impl(&dword_222B39000, v49, v50, "%s No successful event associated with session. Skipping one shot successful event GT generation.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x223DCA8C0](v54, -1, -1);
    MEMORY[0x223DCA8C0](v53, -1, -1);
  }

  v55 = swift_getAssociatedTypeWitness();
  return (*(*(v55 - 8) + 56))(v52, 1, 1, v55);
}

uint64_t (*sub_222B51D30(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_222B5219C;
}

char *OneShotSuccessfulGroundTruthGenerator.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  return v0;
}

uint64_t OneShotSuccessfulGroundTruthGenerator.__deallocating_deinit()
{
  OneShotSuccessfulGroundTruthGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222B51F4C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  }

  else
  {

    return sub_222C9518C();
  }
}

uint64_t sub_222B51FC0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_222B51FE0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_222B520D0()
{
  result = qword_280FDB7E8;
  if (!qword_280FDB7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025030, &qword_222C98420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDB7E8);
  }

  return result;
}

uint64_t sub_222B52134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B5219C()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 64))();
}

uint64_t _s28SiriPrivateLearningInference16SuggestionDomainO9hashValueSivg_0()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t sub_222B52290()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t sub_222B522D4()
{
  if (*v0)
  {
    result = 0x6B63616264656566;
  }

  else
  {
    result = 0x6974636572726F63;
  }

  *v0;
  return result;
}

uint64_t sub_222B52314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974636572726F63 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222B52404(uint64_t a1)
{
  v2 = sub_222B529BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B52440(uint64_t a1)
{
  v2 = sub_222B529BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B52490(uint64_t a1)
{
  v2 = sub_222B52AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B524CC(uint64_t a1)
{
  v2 = sub_222B52AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B52508()
{
  sub_222C952FC();
  MEMORY[0x223DCA0B0](0);
  return sub_222C9534C();
}

uint64_t sub_222B5254C()
{
  sub_222C952FC();
  MEMORY[0x223DCA0B0](0);
  return sub_222C9534C();
}

uint64_t sub_222B5258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_222C951FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_222B5260C(uint64_t a1)
{
  v2 = sub_222B52A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B52648(uint64_t a1)
{
  v2 = sub_222B52A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaGroundTruthSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025038, &qword_222C96ED0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025040, &qword_222C96ED8);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025048, &qword_222C96EE0);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B529BC();
  sub_222C9536C();
  if (v14 < 0)
  {
    v18 = v14 & 0x7F;
    v30 = 1;
    sub_222B52A10();
    v19 = v22;
    v20 = v26;
    sub_222C950BC();
    v29 = v18;
    sub_222B52A64();
    v21 = v24;
    sub_222C9512C();
    (*(v23 + 8))(v19, v21);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    v28 = 0;
    sub_222B52AB8();
    v16 = v26;
    sub_222C950BC();
    v27 = v14;
    sub_222B52B0C();
    sub_222C9512C();
    (*(v25 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v16);
  }
}

unint64_t sub_222B529BC()
{
  result = qword_27D025050;
  if (!qword_27D025050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025050);
  }

  return result;
}

unint64_t sub_222B52A10()
{
  result = qword_27D025058;
  if (!qword_27D025058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025058);
  }

  return result;
}

unint64_t sub_222B52A64()
{
  result = qword_27D025060;
  if (!qword_27D025060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025060);
  }

  return result;
}

unint64_t sub_222B52AB8()
{
  result = qword_27D025068;
  if (!qword_27D025068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025068);
  }

  return result;
}

unint64_t sub_222B52B0C()
{
  result = qword_27D025070;
  if (!qword_27D025070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025070);
  }

  return result;
}

uint64_t MediaGroundTruthSource.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x223DCA0B0](v1 >> 7);
  return MEMORY[0x223DCA0B0](v1 & 0x7F);
}

uint64_t MediaGroundTruthSource.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1 >> 7);
  MEMORY[0x223DCA0B0](v1 & 0x7F);
  return sub_222C9534C();
}

uint64_t MediaGroundTruthSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025078, &qword_222C96EE8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025080, &qword_222C96EF0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025088, &qword_222C96EF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_222B529BC();
  v18 = v35;
  sub_222C9535C();
  if (!v18)
  {
    v35 = v7;
    v19 = v12;
    v20 = v33;
    v21 = v34;
    v22 = sub_222C9508C();
    if (*(v22 + 16) == 1)
    {
      v30[1] = v22;
      if (*(v22 + 32))
      {
        v40 = 1;
        sub_222B52A10();
        sub_222C94FFC();
        sub_222B551D4();
        sub_222C9507C();
        (*(v32 + 8))(v6, v20);
        (*(v19 + 8))(v15, v11);
        swift_unknownObjectRelease();
        *v21 = v39 | 0x80;
      }

      else
      {
        v38 = 0;
        sub_222B52AB8();
        v27 = v10;
        sub_222C94FFC();
        sub_222B55228();
        v29 = v35;
        sub_222C9507C();
        (*(v31 + 8))(v27, v29);
        (*(v19 + 8))(v15, v11);
        swift_unknownObjectRelease();
        *v21 = v37;
      }
    }

    else
    {
      v23 = sub_222C94DBC();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v25 = &type metadata for MediaGroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v19 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t sub_222B530B4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B530E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B5311C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B53150()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B531B4()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1 >> 7);
  MEMORY[0x223DCA0B0](v1 & 0x7F);
  return sub_222C9534C();
}

uint64_t sub_222B53208()
{
  v1 = *v0;
  MEMORY[0x223DCA0B0](v1 >> 7);
  return MEMORY[0x223DCA0B0](v1 & 0x7F);
}

uint64_t sub_222B53248()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1 >> 7);
  MEMORY[0x223DCA0B0](v1 & 0x7F);
  return sub_222C9534C();
}

unint64_t sub_222B53298()
{
  v1 = *v0;
  v2 = 0x6C6F467070416E69;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000039;
  }

  v3 = 0xD000000000000021;
  if (*v0)
  {
    v3 = 0xD000000000000027;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222B5334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B56EB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B53380(uint64_t a1)
{
  v2 = sub_222B5527C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B533BC(uint64_t a1)
{
  v2 = sub_222B5527C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B53404(uint64_t a1)
{
  v2 = sub_222B552D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B53440(uint64_t a1)
{
  v2 = sub_222B552D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B5347C(uint64_t a1)
{
  v2 = sub_222B55324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B534B8(uint64_t a1)
{
  v2 = sub_222B55324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B534F4(uint64_t a1)
{
  v2 = sub_222B55378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B53530(uint64_t a1)
{
  v2 = sub_222B55378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B5356C(uint64_t a1)
{
  v2 = sub_222B55420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B535A8(uint64_t a1)
{
  v2 = sub_222B55420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B535E4(uint64_t a1)
{
  v2 = sub_222B553CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B53620(uint64_t a1)
{
  v2 = sub_222B553CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaCorrectionGroundTruthSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250A8, &qword_222C96F08);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250B0, &qword_222C96F10);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250B8, &qword_222C96F18);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250C0, &qword_222C96F20);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250C8, &qword_222C96F28);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250D0, &qword_222C96F30);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_222B5527C();
  sub_222C9536C();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_222B553CC();
      v38 = v52;
      sub_222C950BC();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_222B55420();
      v38 = v52;
      sub_222C950BC();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_222B55378();
      v29 = v40;
      v30 = v52;
      sub_222C950BC();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_222B55324();
      v29 = v43;
      v30 = v52;
      sub_222C950BC();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_222B552D0();
      v29 = v46;
      v30 = v52;
      sub_222C950BC();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

uint64_t MediaCorrectionGroundTruthSource.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t MediaCorrectionGroundTruthSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025108, &qword_222C96F38);
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v39[-v4];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025110, &qword_222C96F40);
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v51 = &v39[-v6];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025118, &qword_222C96F48);
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v53 = &v39[-v8];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025120, &qword_222C96F50);
  v43 = *(v45 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025128, &qword_222C96F58);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025130, &unk_222C96F60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39[-v19];
  v22 = a1[3];
  v21 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_222B5527C();
  v23 = v55;
  sub_222C9535C();
  if (!v23)
  {
    v41 = v12;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_222C9508C();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
    {
      v31 = sub_222C94DBC();
      swift_allocError();
      v33 = v32;
      v34 = v16;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v33 = &type metadata for MediaCorrectionGroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = *(v27 + 32);
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_222B553CC();
          sub_222C94FFC();
          (*(v43 + 8))(v11, v45);
        }

        else
        {
          v57 = 0;
          sub_222B55420();
          sub_222C94FFC();
          (*(v42 + 8))(v15, v41);
        }

        (*(v55 + 8))(v20, v16);
      }

      else
      {
        v45 = v27;
        v37 = v55;
        if (v29 == 2)
        {
          v59 = 2;
          sub_222B55378();
          sub_222C94FFC();
          (*(v44 + 8))(v24, v46);
          (*(v37 + 8))(v26, v16);
        }

        else
        {
          if (v29 == 3)
          {
            v60 = 3;
            sub_222B55324();
            v38 = v51;
            sub_222C94FFC();
            (*(v47 + 8))(v38, v49);
          }

          else
          {
            v61 = 4;
            sub_222B552D0();
            sub_222C94FFC();
            (*(v48 + 8))(v25, v50);
          }

          (*(v37 + 8))(v26, v16);
        }
      }

      swift_unknownObjectRelease();
      *v52 = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v56);
}

uint64_t MediaGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaGroundTruth();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MediaGroundTruth.usoEntity.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaGroundTruth() + 24));
}

uint64_t MediaGroundTruth.originalEntityReference.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaGroundTruth() + 28));
}

uint64_t MediaGroundTruth.correctedEntityReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaGroundTruth() + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 24);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_222B554C0(&v9, v8);
}

uint64_t MediaGroundTruth.originalRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaGroundTruth() + 36);

  return sub_222B5551C(v3, a1);
}

unint64_t sub_222B54570()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000018;
  if (v1 != 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x656372756F73;
  if (v1 != 1)
  {
    v4 = 0x7469746E456F7375;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222B5462C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B5706C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B54660(uint64_t a1)
{
  v2 = sub_222B559D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B5469C(uint64_t a1)
{
  v2 = sub_222B559D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025138, &unk_222C96F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B559D8();
  sub_222C9536C();
  LOBYTE(v26[0]) = 0;
  sub_222C9367C();
  sub_222B57270(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for MediaGroundTruth();
    LOBYTE(v26[0]) = *(v3 + v11[5]);
    LOBYTE(v22) = 1;
    sub_222B52B0C();
    sub_222C9512C();
    *&v26[0] = *(v3 + v11[6]);
    LOBYTE(v22) = 2;
    sub_222C9386C();
    sub_222B57270(&qword_27D025150, MEMORY[0x277D5E9D8]);
    sub_222C9512C();
    v29 = *(v3 + v11[7]);
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025158, &qword_222CA61E0);
    sub_222B55AD4(&qword_27D025160, sub_222B55A2C);
    sub_222C9512C();
    v12 = (v3 + v11[8]);
    v13 = v12[1];
    v26[0] = *v12;
    v26[1] = v13;
    v15 = *v12;
    v14 = v12[1];
    v26[2] = v12[2];
    v27 = *(v12 + 24);
    v22 = v15;
    v23 = v14;
    v24 = v12[2];
    v25 = *(v12 + 24);
    v21 = 4;
    sub_222B554C0(v26, v19);
    sub_222B55A2C();
    sub_222C9512C();
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v20 = v25;
    sub_222B55A80(v19);
    v16 = v11[9];
    v18[15] = 5;
    sub_222C950DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MediaGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_222C9367C();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025170, &qword_222C96F80);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for MediaGroundTruth();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_222B559D8();
  v35 = v14;
  v21 = v36;
  sub_222C9535C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  v36 = v6;
  v22 = v18;
  v23 = v32;
  LOBYTE(v38) = 0;
  v24 = sub_222B57270(&qword_27D025178, MEMORY[0x277CC95F0]);
  sub_222C9507C();
  v30 = v24;
  (*(v23 + 32))(v18, v10, v7);
  v43 = 1;
  sub_222B55228();
  sub_222C9507C();
  v18[v15[5]] = v38;
  sub_222C9386C();
  v43 = 2;
  sub_222B57270(&qword_27D025180, MEMORY[0x277D5E9D8]);
  sub_222C9507C();
  v25 = v33;
  *&v18[v15[6]] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025158, &qword_222CA61E0);
  v43 = 3;
  sub_222B55AD4(&qword_27D025188, sub_222B55B4C);
  sub_222C9507C();
  *&v18[v15[7]] = v38;
  v43 = 4;
  sub_222B55B4C();
  sub_222C9507C();
  v26 = &v18[v15[8]];
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  *(v26 + 2) = v40;
  *(v26 + 24) = v41;
  v42 = 5;
  v28 = v36;
  sub_222C9502C();
  (*(v25 + 8))(v35, v34);
  sub_222B55BA0(v28, v22 + v15[9]);
  sub_222B55C10(v22, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  return sub_222B55C74(v22);
}

uint64_t sub_222B55138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_222B551D4()
{
  result = qword_27D025098;
  if (!qword_27D025098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025098);
  }

  return result;
}

unint64_t sub_222B55228()
{
  result = qword_27D0250A0;
  if (!qword_27D0250A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250A0);
  }

  return result;
}

unint64_t sub_222B5527C()
{
  result = qword_27D0250D8;
  if (!qword_27D0250D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250D8);
  }

  return result;
}

unint64_t sub_222B552D0()
{
  result = qword_27D0250E0;
  if (!qword_27D0250E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250E0);
  }

  return result;
}

unint64_t sub_222B55324()
{
  result = qword_27D0250E8;
  if (!qword_27D0250E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250E8);
  }

  return result;
}

unint64_t sub_222B55378()
{
  result = qword_27D0250F0;
  if (!qword_27D0250F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250F0);
  }

  return result;
}

unint64_t sub_222B553CC()
{
  result = qword_27D0250F8;
  if (!qword_27D0250F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250F8);
  }

  return result;
}

unint64_t sub_222B55420()
{
  result = qword_27D025100;
  if (!qword_27D025100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025100);
  }

  return result;
}

uint64_t type metadata accessor for MediaGroundTruth()
{
  result = qword_280FDFB40;
  if (!qword_280FDFB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B5551C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s28SiriPrivateLearningInference16MediaGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for MediaGroundTruth();
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    return 0;
  }

  v18 = v17;
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(a1 + *(v17 + 24)), *(a2 + *(v17 + 24))) & 1) == 0)
  {
    return 0;
  }

  if ((sub_222BBDC04(*(a1 + v18[7]), *(a2 + v18[7])) & 1) == 0)
  {
    return 0;
  }

  v36 = v5;
  v19 = (a1 + v18[8]);
  v20 = v19[1];
  v47[0] = *v19;
  v47[1] = v20;
  v22 = *v19;
  v21 = v19[1];
  v47[2] = v19[2];
  v48 = *(v19 + 24);
  v23 = v19[2];
  v46 = *(v19 + 24);
  v43 = v22;
  v44 = v21;
  v45 = v23;
  v24 = (a2 + v18[8]);
  v25 = v24[2];
  v26 = *v24;
  v27 = *v24;
  v50 = v24[1];
  v51 = v25;
  v49 = v26;
  v52 = *(v24 + 24);
  v39 = v27;
  v40 = v50;
  v41 = v24[2];
  v42 = *(v24 + 24);
  sub_222B554C0(v47, v38);
  sub_222B554C0(&v49, v38);
  v37 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v43, &v39);
  v53[0] = v39;
  v53[1] = v40;
  v53[2] = v41;
  v54 = v42;
  sub_222B55A80(v53);
  v55[0] = v43;
  v55[1] = v44;
  v55[2] = v45;
  v56 = v46;
  sub_222B55A80(v55);
  if (!v37)
  {
    return 0;
  }

  v28 = v18[9];
  v29 = *(v13 + 48);
  sub_222B5551C(a1 + v28, v16);
  sub_222B5551C(a2 + v28, &v16[v29]);
  v30 = v36;
  v31 = *(v36 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v29], 1, v4) == 1)
    {
      sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
      return 1;
    }

    goto LABEL_11;
  }

  sub_222B5551C(v16, v12);
  if (v31(&v16[v29], 1, v4) == 1)
  {
    (*(v30 + 8))(v12, v4);
LABEL_11:
    sub_222B4FCD4(v16, &qword_27D025290, &unk_222C97C30);
    return 0;
  }

  (*(v30 + 32))(v8, &v16[v29], v4);
  sub_222B57270(&qword_280FE02A0, MEMORY[0x277CC95F0]);
  v33 = sub_222C9447C();
  v34 = *(v30 + 8);
  v34(v8, v4);
  v34(v12, v4);
  sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
  return (v33 & 1) != 0;
}

unint64_t sub_222B559D8()
{
  result = qword_27D025140;
  if (!qword_27D025140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025140);
  }

  return result;
}

unint64_t sub_222B55A2C()
{
  result = qword_27D025168;
  if (!qword_27D025168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025168);
  }

  return result;
}

uint64_t sub_222B55AD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025158, &qword_222CA61E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222B55B4C()
{
  result = qword_27D025190;
  if (!qword_27D025190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025190);
  }

  return result;
}

uint64_t sub_222B55BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B55C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B55C74(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222B55CD4()
{
  result = qword_27D025198;
  if (!qword_27D025198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025198);
  }

  return result;
}

unint64_t sub_222B55D2C()
{
  result = qword_27D0251A0;
  if (!qword_27D0251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251A0);
  }

  return result;
}

unint64_t sub_222B55D84()
{
  result = qword_27D0251A8;
  if (!qword_27D0251A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0251B0, &qword_222C970F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251A8);
  }

  return result;
}

uint64_t sub_222B55DE8(uint64_t a1)
{
  *(a1 + 8) = sub_222B57270(&qword_27D0251B8, type metadata accessor for MediaGroundTruth);
  result = sub_222B57270(&qword_27D0251C0, type metadata accessor for MediaGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaGroundTruthSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MediaGroundTruthSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_222B5604C()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9386C();
    if (v1 <= 0x3F)
    {
      sub_222B56110();
      if (v2 <= 0x3F)
      {
        sub_222B56160();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222B56110()
{
  if (!qword_280FDB7D8)
  {
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7D8);
    }
  }
}

void sub_222B56160()
{
  if (!qword_280FE0290)
  {
    sub_222C9367C();
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280FE0290);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaGroundTruth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaGroundTruth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactSuggestionTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactSuggestionTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaReferenceSourceApp(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaReferenceSourceApp(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222B5661C()
{
  result = qword_27D0251C8;
  if (!qword_27D0251C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251C8);
  }

  return result;
}

unint64_t sub_222B56674()
{
  result = qword_27D0251D0;
  if (!qword_27D0251D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251D0);
  }

  return result;
}

unint64_t sub_222B566CC()
{
  result = qword_27D0251D8;
  if (!qword_27D0251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251D8);
  }

  return result;
}

unint64_t sub_222B56724()
{
  result = qword_27D0251E0;
  if (!qword_27D0251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251E0);
  }

  return result;
}

unint64_t sub_222B5677C()
{
  result = qword_27D0251E8;
  if (!qword_27D0251E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251E8);
  }

  return result;
}

unint64_t sub_222B567D4()
{
  result = qword_27D0251F0;
  if (!qword_27D0251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251F0);
  }

  return result;
}

unint64_t sub_222B5682C()
{
  result = qword_27D0251F8;
  if (!qword_27D0251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251F8);
  }

  return result;
}

unint64_t sub_222B56884()
{
  result = qword_27D025200;
  if (!qword_27D025200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025200);
  }

  return result;
}

unint64_t sub_222B568DC()
{
  result = qword_27D025208;
  if (!qword_27D025208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025208);
  }

  return result;
}

unint64_t sub_222B56934()
{
  result = qword_27D025210;
  if (!qword_27D025210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025210);
  }

  return result;
}

unint64_t sub_222B5698C()
{
  result = qword_27D025218;
  if (!qword_27D025218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025218);
  }

  return result;
}

unint64_t sub_222B569E4()
{
  result = qword_27D025220;
  if (!qword_27D025220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025220);
  }

  return result;
}

unint64_t sub_222B56A3C()
{
  result = qword_27D025228;
  if (!qword_27D025228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025228);
  }

  return result;
}

unint64_t sub_222B56A94()
{
  result = qword_27D025230;
  if (!qword_27D025230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025230);
  }

  return result;
}

unint64_t sub_222B56AEC()
{
  result = qword_27D025238;
  if (!qword_27D025238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025238);
  }

  return result;
}

unint64_t sub_222B56B44()
{
  result = qword_27D025240;
  if (!qword_27D025240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025240);
  }

  return result;
}

unint64_t sub_222B56B9C()
{
  result = qword_27D025248;
  if (!qword_27D025248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025248);
  }

  return result;
}

unint64_t sub_222B56BF4()
{
  result = qword_27D025250;
  if (!qword_27D025250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025250);
  }

  return result;
}

unint64_t sub_222B56C4C()
{
  result = qword_27D025258;
  if (!qword_27D025258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025258);
  }

  return result;
}

unint64_t sub_222B56CA4()
{
  result = qword_27D025260;
  if (!qword_27D025260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025260);
  }

  return result;
}

unint64_t sub_222B56CFC()
{
  result = qword_27D025268;
  if (!qword_27D025268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025268);
  }

  return result;
}

unint64_t sub_222B56D54()
{
  result = qword_27D025270;
  if (!qword_27D025270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025270);
  }

  return result;
}

unint64_t sub_222B56DAC()
{
  result = qword_27D025278;
  if (!qword_27D025278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025278);
  }

  return result;
}

unint64_t sub_222B56E04()
{
  result = qword_27D025280;
  if (!qword_27D025280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025280);
  }

  return result;
}

unint64_t sub_222B56E5C()
{
  result = qword_27D025288;
  if (!qword_27D025288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025288);
  }

  return result;
}

uint64_t sub_222B56EB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x8000000222CA9830 == a2;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000222CA9860 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000039 && 0x8000000222CA9890 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000222CA98D0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F467070416E69 && a2 == 0xED00007075776F6CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_222B5706C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469746E456F7375 && a2 == 0xE900000000000079 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CA98F0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CA9910 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9930 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_222B57270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InAppFollowupClassification.init(priorEvent:followupEventId:followupEventType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_222B43E3C(a1, a6);
  a6[5] = a2;
  a6[6] = a3;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 8);
  v14 = *(v13 + 16);

  a6[9] = v14(v11, v13);
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = (*(*(v15 + 8) + 24))(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_222B48F64(inited);
  a6[10] = v17;
  a6[7] = a4;
  a6[8] = a5;
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t InAppFollowupClassification.followupEventId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t InAppFollowupClassification.followupEventType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_222B574E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222B57528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222B575A0()
{
  v1 = 0x736567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x73746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6143656E6F6870;
  }
}

uint64_t sub_222B57600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B587E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B57634(uint64_t a1)
{
  v2 = sub_222B57B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B57670(uint64_t a1)
{
  v2 = sub_222B57B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B576AC(uint64_t a1)
{
  v2 = sub_222B57BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B576E8(uint64_t a1)
{
  v2 = sub_222B57BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B57724(uint64_t a1)
{
  v2 = sub_222B57C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B57760(uint64_t a1)
{
  v2 = sub_222B57C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B5779C(uint64_t a1)
{
  v2 = sub_222B57C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B577D8(uint64_t a1)
{
  v2 = sub_222B57C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactSuggestionDomain.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025298, &qword_222C97D00);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252A0, &qword_222C97D08);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252A8, &qword_222C97D10);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252B0, &qword_222C97D18);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B57B80();
  sub_222C9536C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_222B57C28();
      v12 = v26;
      sub_222C950BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_222B57BD4();
      v12 = v29;
      sub_222C950BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_222B57C7C();
    sub_222C950BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_222B57B80()
{
  result = qword_27D0252B8;
  if (!qword_27D0252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252B8);
  }

  return result;
}

unint64_t sub_222B57BD4()
{
  result = qword_27D0252C0;
  if (!qword_27D0252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252C0);
  }

  return result;
}

unint64_t sub_222B57C28()
{
  result = qword_27D0252C8;
  if (!qword_27D0252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252C8);
  }

  return result;
}

unint64_t sub_222B57C7C()
{
  result = qword_27D0252D0;
  if (!qword_27D0252D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252D0);
  }

  return result;
}

uint64_t ContactSuggestionDomain.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t ContactSuggestionDomain.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252D8, &qword_222C97D20);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252E0, &qword_222C97D28);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252E8, &qword_222C97D30);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252F0, &unk_222C97D38);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_222B57B80();
  v20 = v43;
  sub_222C9535C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_222C9508C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_222B572CC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_222C94DBC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v30 = &type metadata for ContactSuggestionDomain;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_222B57C28();
          sub_222C94FFC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_222B57BD4();
          v33 = v22;
          sub_222C94FFC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_222B57C7C();
        sub_222C94FFC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

unint64_t sub_222B582E8()
{
  result = qword_27D0252F8;
  if (!qword_27D0252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreChange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScoreChange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222B584D0()
{
  result = qword_27D025300;
  if (!qword_27D025300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025300);
  }

  return result;
}

unint64_t sub_222B58528()
{
  result = qword_27D025308;
  if (!qword_27D025308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025308);
  }

  return result;
}

unint64_t sub_222B58580()
{
  result = qword_27D025310;
  if (!qword_27D025310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025310);
  }

  return result;
}

unint64_t sub_222B585D8()
{
  result = qword_27D025318;
  if (!qword_27D025318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025318);
  }

  return result;
}

unint64_t sub_222B58630()
{
  result = qword_27D025320;
  if (!qword_27D025320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025320);
  }

  return result;
}

unint64_t sub_222B58688()
{
  result = qword_27D025328;
  if (!qword_27D025328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025328);
  }

  return result;
}

unint64_t sub_222B586E0()
{
  result = qword_27D025330;
  if (!qword_27D025330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025330);
  }

  return result;
}

unint64_t sub_222B58738()
{
  result = qword_27D025338;
  if (!qword_27D025338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025338);
  }

  return result;
}

unint64_t sub_222B58790()
{
  result = qword_27D025340;
  if (!qword_27D025340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025340);
  }

  return result;
}

uint64_t sub_222B587E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6143656E6F6870 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222B58968@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for INPlayMediaIntentEventAsyncStreamProcessor();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222B627C0(MEMORY[0x277D84F90]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025380, &qword_222C98320);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_222C9426C();
  *(v2 + 24) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_222B589E8()
{
  type metadata accessor for INPlayMediaIntentEventAsyncStreamProcessor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025378, &qword_222C98318);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025348 = 91;
  unk_27D025350 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B58A78(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v70 - v9;
  v11 = sub_222C935EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v72 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v74 = a1[4];
  v75 = v16;
  sub_222B41CB8(v17, v8);
  v18 = *(v12 + 48);
  if (v18(v8, 1, v11) == 1)
  {
    sub_222B41CE4(v17);
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      sub_222C935AC();
      v20 = 0;
    }

    (*(v12 + 56))(v10, v20, 1, v11);
    if (v18(v8, 1, v11) != 1)
    {
      sub_222B4FCD4(v8, &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  if (v18(v10, 1, v11) == 1)
  {
    sub_222B4FCD4(v10, &qword_27D025360, &unk_222C98300);
  }

  else
  {
    v70 = v15;
    v71 = v17;
    v21 = v73;
    (*(v12 + 32))(v73, v10, v11);
    v22 = swift_beginAccess();
    v23 = *(v2 + 16);
    MEMORY[0x28223BE20](v22);
    *(&v70 - 2) = v21;

    v24 = sub_222B5A5C8(sub_222B5A7E0, (&v70 - 4), v23);

    v26 = 0;
    v27 = 1 << *(v24 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v24 + 64);
    v30 = (v27 + 63) >> 6;
    v76 = v12;
    v77 = v11;
    while (v29)
    {
LABEL_20:
      v35 = __clz(__rbit64(v29)) | (v26 << 6);
      v36 = (*(v24 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      v39 = *(*(v24 + 56) + 8 * v35);
      swift_beginAccess();
      v40 = *(v2 + 16);

      v41 = sub_222B8C9DC(v37, v38);
      if (v42)
      {
        v43 = v41;
        v44 = *(v2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v2 + 16);
        v78 = v46;
        *(v2 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_222B92DDC();
          v46 = v78;
        }

        v31 = *(*(v46 + 48) + 16 * v43 + 8);

        v32 = *(*(v46 + 56) + 8 * v43);

        sub_222B92238(v43, v46);
        *(v2 + 16) = v46;
      }

      v29 &= v29 - 1;
      swift_endAccess();

      v33 = *(v39 + 64);
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;

      v12 = v76;
      v11 = v77;
    }

    while (1)
    {
      v34 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v34 >= v30)
      {
        break;
      }

      v29 = *(v24 + 64 + 8 * v34);
      ++v26;
      if (v29)
      {
        v26 = v34;
        goto LABEL_20;
      }
    }

    (*(v12 + 8))(v73, v11);
    v15 = v70;
    v17 = v71;
  }

  v48 = v74;
  v47 = v75;
  if ((v75 != 0xD000000000000011 || 0x8000000222CA87C0 != v74) && (sub_222C951FC() & 1) == 0)
  {
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  v79[0] = v15;
  v79[1] = v72;
  v79[2] = v17;
  v79[3] = v47;
  v79[4] = v48;
  sub_222B59204(v79);
  while (1)
  {
    v54 = *(v2 + 24);
    v25 = sub_222C9420C();
    if (v25 >> 62)
    {
LABEL_46:
      v68 = v25;
      v55 = sub_222C94C6C();
      v25 = v68;
      if (!v55)
      {
LABEL_47:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v55 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v55)
      {
        goto LABEL_47;
      }
    }

    v2 = v25;
    v79[0] = MEMORY[0x277D84F90];
    sub_222B4C374(0, v55 & ~(v55 >> 63), 0);
    if ((v55 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_50:
    swift_once();
LABEL_29:
    v49 = sub_222C9431C();
    __swift_project_value_buffer(v49, qword_280FE2340);
    v50 = sub_222C942FC();
    v51 = sub_222C94A4C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v79[0] = v53;
      *v52 = 136315138;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v52 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, v79);
      _os_log_impl(&dword_222B39000, v50, v51, "%s Unexpected event discarded", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x223DCA8C0](v53, -1, -1);
      MEMORY[0x223DCA8C0](v52, -1, -1);
    }
  }

  v56 = 0;
  v57 = v79[0];
  v58 = v2;
  v76 = v2 & 0xC000000000000001;
  v77 = v2;
  do
  {
    if (v76)
    {
      v59 = MEMORY[0x223DC9B30](v56, v58);
    }

    else
    {
      v59 = *(v58 + 8 * v56 + 32);
    }

    v61 = v59[2];
    v60 = v59[3];
    v63 = v59[4];
    v62 = v59[5];
    v64 = v59[6];

    v79[0] = v57;
    v66 = *(v57 + 16);
    v65 = *(v57 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_222B4C374((v65 > 1), v66 + 1, 1);
      v57 = v79[0];
    }

    ++v56;
    *(v57 + 16) = v66 + 1;
    v67 = (v57 + 40 * v66);
    v67[4] = v61;
    v67[5] = v60;
    v67[6] = v63;
    v67[7] = v62;
    v67[8] = v64;
    v58 = v77;
  }

  while (v55 != v56);

  return v57;
}

void sub_222B59204(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_222B4183C(v4, v72);
  v7 = *(&v72[0] + 1);
  if (!*(&v72[0] + 1))
  {
    goto LABEL_5;
  }

  v8 = *&v72[0];

  sub_222B4FCD4(v72, &qword_27D025370, &qword_222C98310);
  v9 = sub_222B41CFC(v4);
  if (v9 == 2 || (v10 = v9, v64 = v2, sub_222B41D14(v4, &v66), v11 = v66, v66 == 2))
  {

LABEL_5:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A4C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v66 = v16;
      *v15 = 136315138;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v66);
      _os_log_impl(&dword_222B39000, v13, v14, "%s INPlayMediaIntent features missing", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x223DCA8C0](v16, -1, -1);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    return;
  }

  v62 = v5;
  v63 = v3;
  v65 = v1;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v17 = sub_222C9431C();
  __swift_project_value_buffer(v17, qword_280FE2340);
  v18 = sub_222C942FC();
  v19 = sub_222C94A3C();
  if (os_log_type_enabled(v18, v19))
  {
    v61 = v6;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66 = v21;
    *v20 = 136315394;
    if (qword_27D024660 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v66);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v10 & 1;
    _os_log_impl(&dword_222B39000, v18, v19, "%s Play media event isSiriDonated =  %{BOOL}d / event origin = eventOrigin.rawValue", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x223DCA8C0](v21, -1, -1);
    MEMORY[0x223DCA8C0](v20, -1, -1);

    v6 = v61;
  }

  else
  {
  }

  swift_beginAccess();
  v22 = *(v1 + 16);
  if (*(v22 + 16) && (v23 = *(v1 + 16), v24 = sub_222B8C9DC(v8, v7), (v25 & 1) != 0))
  {
    v26 = *(*(v22 + 56) + 8 * v24);
    swift_endAccess();
    v27 = *(v26 + 64);
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;

    swift_beginAccess();
    sub_222B5A748(v8, v7);
    swift_endAccess();

    if (v10)
    {
      v66 = v64;
      v67 = v63;
      v68 = v4;
      v69 = v62;
      v70 = v6;
      sub_222B59D64(v8, v7, &v66);

LABEL_25:

      return;
    }

    if (v11)
    {

LABEL_42:
      v44 = sub_222C942FC();
      v45 = sub_222C94A3C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66 = v47;
        *v46 = 136315138;
        v48 = v65;
        if (qword_27D024660 != -1)
        {
          swift_once();
        }

        *(v46 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v66);
        _os_log_impl(&dword_222B39000, v44, v45, "%s This is not a siri related event - call queueUntrackedEvent", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x223DCA8C0](v47, -1, -1);
        MEMORY[0x223DCA8C0](v46, -1, -1);
      }

      else
      {

        v48 = v65;
      }

      type metadata accessor for QueuedEvent();
      v49 = swift_allocObject();
      v49[2] = v64;
      v49[3] = v63;
      v49[4] = v4;
      v49[5] = v62;
      v49[7] = 0;
      v49[8] = 0;
      v49[6] = v6;
      v50 = *(v48 + 24);
      v66 = v49;

      sub_222C9422C();

LABEL_50:

      return;
    }

    v43 = sub_222C951FC();

    if (v43)
    {
      goto LABEL_42;
    }

    v53 = sub_222C942FC();
    v54 = sub_222C94A3C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = v6;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71 = v57;
      *v56 = 136315394;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v56 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v71);
      *(v56 + 12) = 2080;
      v66 = v64;
      v67 = v63;
      v68 = v4;
      v69 = v62;
      v70 = v55;

      v58 = sub_222C944EC();
      v60 = sub_222B437C0(v58, v59, &v71);

      *(v56 + 14) = v60;
      _os_log_impl(&dword_222B39000, v53, v54, "%s follow on INPlayMediaIntent suppressed %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v57, -1, -1);
      MEMORY[0x223DCA8C0](v56, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    if (v10)
    {
      v66 = v64;
      v67 = v63;
      v68 = v4;
      v69 = v62;
      v70 = v6;
      sub_222B59D64(v8, v7, &v66);
      goto LABEL_25;
    }

    if (v11)
    {
      v28 = sub_222C951FC();

      if ((v28 & 1) == 0)
      {

        v29 = sub_222C942FC();
        v30 = sub_222C94A3C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v66 = v32;
          *v31 = 136315138;
          v33 = v65;
          if (qword_27D024660 != -1)
          {
            swift_once();
          }

          *(v31 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v66);
          _os_log_impl(&dword_222B39000, v29, v30, "%s This is not a siri related event - call queueUntrackedEvent", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          MEMORY[0x223DCA8C0](v32, -1, -1);
          MEMORY[0x223DCA8C0](v31, -1, -1);
        }

        else
        {

          v33 = v65;
        }

        type metadata accessor for QueuedEvent();
        v51 = swift_allocObject();
        v51[2] = v64;
        v51[3] = v63;
        v51[4] = v4;
        v51[5] = v62;
        v51[7] = 0;
        v51[8] = 0;
        v51[6] = v6;
        v52 = *(v33 + 24);
        v66 = v51;

        sub_222C9422C();
        goto LABEL_50;
      }
    }

    else
    {
    }

    v34 = v6;
    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66 = v38;
      *v37 = 136315138;
      v39 = v65;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v66);
      _os_log_impl(&dword_222B39000, v35, v36, "%s This is a siri-triggered app donation - track this media id", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v37, -1, -1);
    }

    else
    {

      v39 = v65;
    }

    type metadata accessor for QueuedEvent();
    v40 = swift_allocObject();
    v40[2] = v64;
    v40[3] = v63;
    v40[4] = v4;
    v40[5] = v62;
    v40[6] = v34;
    v40[7] = v8;
    v40[8] = v7;
    swift_beginAccess();

    v41 = *(v39 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v39 + 16);
    *(v39 + 16) = 0x8000000000000000;
    sub_222BAA2EC(v40, v8, v7, isUniquelyReferenced_nonNull_native);

    *(v39 + 16) = v71;
    swift_endAccess();
  }
}

uint64_t sub_222B59D64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[4];
  type metadata accessor for QueuedEvent();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  v12[7] = a1;
  v12[8] = a2;
  swift_beginAccess();

  v13 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_222BAA2EC(v12, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v17;
  swift_endAccess();
  v15 = *(v4 + 24);
  sub_222C9422C();
}

char *sub_222B59E7C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x277D84F98];

  v2 = *(v0 + 24);
  v3 = sub_222C9423C();
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v19 = v3;
  v4 = sub_222C94C6C();
  v3 = v19;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v5 = v3;
  v22 = MEMORY[0x277D84F90];
  result = sub_222B4C374(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v22;
    v9 = v5;
    v20 = v5 & 0xC000000000000001;
    v21 = v5;
    do
    {
      if (v20)
      {
        v10 = MEMORY[0x223DC9B30](v7, v9);
      }

      else
      {
        v10 = *(v9 + 8 * v7 + 32);
      }

      v12 = v10[2];
      v11 = v10[3];
      v14 = v10[4];
      v13 = v10[5];
      v15 = v10[6];

      v17 = *(v22 + 16);
      v16 = *(v22 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_222B4C374((v16 > 1), v17 + 1, 1);
      }

      ++v7;
      *(v22 + 16) = v17 + 1;
      v18 = (v22 + 40 * v17);
      v18[4] = v12;
      v18[5] = v11;
      v18[6] = v14;
      v18[7] = v13;
      v18[8] = v15;
      v9 = v21;
    }

    while (v4 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B5A034()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222B5A098(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_222B58A78(a1);
  v5 = *(v2 + 8);

  return v5(v4);
}

uint64_t sub_222B5A0FC()
{
  v2 = *v0;
  v3 = sub_222B59E7C();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_222B5A160(uint64_t a1)
{
  v26[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = sub_222C935EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v26[0] = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - v14;
  v16 = v1[3];
  v17 = v1[4];
  v18 = v1[6];

  sub_222B41CB8(v17, v6);
  v19 = *(v10 + 48);
  if (v19(v6, 1, v9) == 1)
  {
    sub_222B41CE4(v17);
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      sub_222C935AC();
      v21 = 0;
    }

    (*(v10 + 56))(v8, v21, 1, v9);
    if (v19(v6, 1, v9) != 1)
    {
      sub_222B4FCD4(v6, &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    (*(v10 + 32))(v8, v6, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  if (v19(v8, 1, v9) == 1)
  {
    sub_222B4FCD4(v8, &qword_27D025360, &unk_222C98300);
    v22 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v23 = v26[0];
    sub_222C9358C();
    v22 = sub_222C9356C();
    v24 = *(v10 + 8);
    v24(v23, v9);
    v24(v15, v9);
  }

  return v22 & 1;
}

uint64_t sub_222B5A498()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

unint64_t sub_222B5A54C(uint64_t a1)
{
  result = sub_222B5A574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222B5A574()
{
  result = qword_27D025358;
  if (!qword_27D025358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025358);
  }

  return result;
}

uint64_t sub_222B5A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_222B5AC78(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_222B5AE10(v12, v7, a3, v5);
  result = MEMORY[0x223DCA8C0](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222B5A748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_222B8C9DC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222B92DDC();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_222B92238(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_222B5A7E0(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *a2;
  return sub_222B5A160(v3) & 1;
}

uint64_t sub_222B5A814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_222B8CA54(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222B93310();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_222C9367C();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_222B923E8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_222C9367C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_222B5A9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_222B8C9DC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222B93740();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_222B92238(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_222B5AA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_222B8CA54(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222B93E70();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_222C9367C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
    v22 = *(v15 - 8);
    sub_222B5B33C(v14 + *(v22 + 72) * v8, a2);
    sub_222B92898(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_222B5ABCC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_222B8CFCC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222B9490C();
      v12 = v14;
    }

    sub_222B5B328(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    sub_222B405A0((*(v12 + 56) + 40 * v9), a3);
    sub_222B92BDC(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_222B5AC78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v26 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v18 = v14;
    v28 = *(v15 + 8 * v14);

    v19 = a4(v27, &v28);

    if (v4)
    {
      return result;
    }

    v9 = v26;
    if (v19)
    {
      *(v22 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_222B5AEA0(v22, a2, v23, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_222B5AEA0(v22, a2, v23, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v26 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_222B5AE10(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_222B5AC78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222B5AEA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
  result = sub_222C94F8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222B5B0E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025388, &qword_222C98328);
  result = sub_222C94F8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222B5B328(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_222B5B33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionStoreUpdate.source.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SuggestionStoreUpdate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SuggestionStoreUpdate() + 20);
  v4 = sub_222C935EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SuggestionStoreUpdate()
{
  result = qword_27D025390;
  if (!qword_27D025390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestionStoreUpdate.init(source:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SuggestionStoreUpdate() + 20);
  v7 = sub_222C935EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_222B5B544()
{
  result = sub_222C935EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222B5B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for EntityPromptClassification();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4;
  v16 = *(a2 + 16);
  if (!v16)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v36 = a1;
  v37 = a3;
  v17 = a2 + 32;
  v18 = MEMORY[0x277D84F90];
  v19 = v17;
  v20 = v16;
  do
  {
    sub_222B43E3C(v19, &v53);
    sub_222B405A0(&v53, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v46 = 0;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
LABEL_4:
      sub_222B4FCD4(&v41, &qword_27D0253A0, &unk_222C983C8);
      goto LABEL_5;
    }

    if (!*(&v42 + 1))
    {
      goto LABEL_4;
    }

    v49 = v43;
    v50 = v44;
    v51 = v45;
    v52 = v46;
    v47 = v41;
    v48 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_222B49FB8(0, *(v18 + 2) + 1, 1, v18);
    }

    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_222B49FB8((v21 > 1), v22 + 1, 1, v18);
    }

    *(v18 + 2) = v22 + 1;
    v23 = &v18[88 * v22];
    v24 = v48;
    *(v23 + 2) = v47;
    *(v23 + 3) = v24;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    *(v23 + 14) = v52;
    *(v23 + 5) = v26;
    *(v23 + 6) = v27;
    *(v23 + 4) = v25;
LABEL_5:
    v19 += 40;
    --v20;
  }

  while (v20);
  v28 = (v39 + 56);
  v29 = (v39 + 48);
  v30 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43E3C(v17, &v47);
    sub_222B405A0(&v47, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
    v31 = swift_dynamicCast();
    (*v28)(v11, v31 ^ 1u, 1, v12);
    if ((*v29)(v11, 1, v12) == 1)
    {
      v14 = sub_222B4FCD4(v11, &qword_27D025028, &unk_222C96EC0);
    }

    else
    {
      sub_222B5ECF4(v11, v40, type metadata accessor for EntityPromptClassification);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_222B49F90(0, v30[2] + 1, 1, v30);
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_222B49F90(v32 > 1, v33 + 1, 1, v30);
      }

      v30[2] = v33 + 1;
      v14 = sub_222B5ECF4(v40, v30 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, type metadata accessor for EntityPromptClassification);
    }

    v17 += 40;
    --v16;
  }

  while (v16);
  a3 = v37;
  a1 = v36;
LABEL_24:
  MEMORY[0x28223BE20](v14);
  *(&v36 - 4) = &v54;
  *(&v36 - 3) = a1;
  *(&v36 - 2) = v30;
  v34 = v38(a3);

  return v34;
}

uint64_t sub_222B5BB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v131 = a4;
  v129 = type metadata accessor for QuickHangupClassification();
  v9 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v130 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v115 - v16;
  v18 = type metadata accessor for EntityPromptClassification();
  v132 = *(v18 - 8);
  v19 = *(v132 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v136 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = (&v115 - v22);
  v24 = *(a2 + 56);
  v25 = *(a2 + 64);
  v133 = a2;
  if (v24 == 0xD000000000000011 && 0x8000000222CA8780 == v25 || (sub_222C951FC() & 1) != 0)
  {
    sub_222B43E3C(v133, &v142);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253A8, &qword_222C983D8);
    if (swift_dynamicCast())
    {
      v125 = v17;
      v126 = v26;
      v123 = v12;
      v124 = v11;
      v127 = v5;
      sub_222B405A0(v140, v145);
      v27 = v146;
      v28 = v147;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v29 = (*(v28 + 16))(v27, v28);
      if (v29)
      {
        v30 = v29;
        v31 = v133;
        sub_222B5DA50(*(v133 + 40), *(v133 + 48), a1, &v142);
        v122 = *(&v142 + 1);
        if (!*(&v142 + 1))
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v57 = sub_222C9431C();
          __swift_project_value_buffer(v57, qword_280FE2340);
          sub_222B45038(v133, &v142);
          v58 = v127;

          v59 = sub_222C942FC();
          v60 = sub_222C94A4C();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v137 = v62;
            *v61 = 136315394;
            *&v140[0] = 91;
            *(&v140[0] + 1) = 0xE100000000000000;
            v139 = *v58;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
            v63 = sub_222C944EC();
            MEMORY[0x223DC9330](v63);

            MEMORY[0x223DC9330](8285, 0xE200000000000000);

            v64 = sub_222B437C0(*&v140[0], *(&v140[0] + 1), &v137);

            *(v61 + 4) = v64;
            *(v61 + 12) = 2080;
            sub_222B45038(&v142, v140);
            v65 = sub_222C944EC();
            v67 = v66;
            sub_222B45094(&v142);
            v68 = sub_222B437C0(v65, v67, &v137);

            *(v61 + 14) = v68;
            _os_log_impl(&dword_222B39000, v59, v60, "%s Failed to extract the contact reference from followup event in classification=%s", v61, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DCA8C0](v62, -1, -1);
            MEMORY[0x223DCA8C0](v61, -1, -1);
          }

          else
          {

            sub_222B45094(&v142);
          }

          v70 = v131;
          v71 = type metadata accessor for PhoneCallGroundTruth();
          (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
          return __swift_destroy_boxed_opaque_existential_0Tm(v145);
        }

        v120 = v142;
        v121 = v143;
        sub_222B43E3C(v31, v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253B8, &qword_222C983F0);
        if (swift_dynamicCast())
        {
          v32 = *(&v143 + 1);
          v33 = v144;
          __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
          v34 = (*(v33 + 16))(v32, v33);
          if (v35)
          {
            sub_222B5DA50(v34, v35, a1, &v137);

            v119 = *(&v137 + 1);
            v117 = v137;
            v37 = *(&v138 + 1);
            v36 = v138;
          }

          else
          {
            v37 = 0;
            v36 = 0;
            v119 = 0;
            v117 = 0;
            v137 = 0u;
            v138 = 0u;
          }

          v116 = v36;
          v69 = __swift_destroy_boxed_opaque_existential_0Tm(&v142);
        }

        else
        {
          v144 = 0;
          v142 = 0u;
          v143 = 0u;
          v69 = sub_222B4FCD4(&v142, &qword_27D0253C0, &qword_222C983F8);
          v116 = 0;
          v117 = 0;
          v119 = 0;
          v37 = 0;
        }

        v115 = v37;
        v118 = v30;
        MEMORY[0x28223BE20](v69);
        *(&v115 - 2) = v133;

        v72 = a3;
        v43 = 0;
        v73 = sub_222B65F60(sub_222B5EE94, (&v115 - 4), v72);
        v135 = *(v73 + 16);
        if (v135)
        {
          v74 = 0;
          v134 = MEMORY[0x277D84F90];
          v75 = v132;
          while (v74 < *(v73 + 16))
          {
            v5 = ((*(v75 + 80) + 32) & ~*(v75 + 80));
            v76 = v73;
            v77 = *(v75 + 72);
            v78 = sub_222B5EC1C(v5 + v73 + v77 * v74, v23, type metadata accessor for EntityPromptClassification);
            v79 = v23[2];
            v80 = v23[3];
            if (v79 != 0x73746361746E6F63 || v80 != 0xE800000000000000)
            {
              v82 = v23[2];
              v83 = v23[3];
              v78 = sub_222C951FC();
              if ((v78 & 1) == 0 && (v79 != 0x6E65697069636572 || v80 != 0xE900000000000074))
              {
                v78 = sub_222C951FC();
                if ((v78 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }
            }

            v84 = v23[1];
            *&v142 = *v23;
            *(&v142 + 1) = v84;
            MEMORY[0x28223BE20](v78);
            *(&v115 - 2) = &v142;
            if (sub_222B42F4C(sub_222B5EEB0, (&v115 - 4), &unk_283607100))
            {
              sub_222B5ECF4(v23, v136, type metadata accessor for EntityPromptClassification);
              v85 = v134;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v140[0] = v85;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_222B4C330(0, *(v85 + 16) + 1, 1);
                v85 = *&v140[0];
              }

              v88 = *(v85 + 16);
              v87 = *(v85 + 24);
              if (v88 >= v87 >> 1)
              {
                sub_222B4C330(v87 > 1, v88 + 1, 1);
                v85 = *&v140[0];
              }

              *(v85 + 16) = v88 + 1;
              v134 = v85;
              sub_222B5ECF4(v136, v5 + v85 + v88 * v77, type metadata accessor for EntityPromptClassification);
              v75 = v132;
              v73 = v76;
            }

            else
            {
LABEL_31:
              v73 = v76;
              sub_222B5ED94(v23, type metadata accessor for EntityPromptClassification);
            }

            if (v135 == ++v74)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
          goto LABEL_64;
        }

        v134 = MEMORY[0x277D84F90];
LABEL_49:

        sub_222C9366C();
        v89 = v133;
        sub_222B43E3C(v133, &v142);
        v90 = v128;
        if (swift_dynamicCast())
        {
          sub_222B5ED94(v90, type metadata accessor for QuickHangupClassification);
          v91 = 0;
          v92 = v131;
        }

        else
        {
          v93 = swift_dynamicCast();
          v92 = v131;
          if ((v93 & 1) == 0)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(&v142);
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v105 = sub_222C9431C();
            __swift_project_value_buffer(v105, qword_280FE2340);
            sub_222B45038(v89, &v142);
            v106 = sub_222C942FC();
            v107 = sub_222C94A4C();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              *&v137 = v109;
              *v108 = 136315138;
              sub_222B45038(&v142, v140);
              v110 = sub_222C944EC();
              v112 = v111;
              sub_222B45094(&v142);
              v113 = sub_222B437C0(v110, v112, &v137);

              *(v108 + 4) = v113;
              _os_log_impl(&dword_222B39000, v106, v107, "Failed to derive ground truth type from followup event for classification=%s", v108, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v109);
              MEMORY[0x223DCA8C0](v109, -1, -1);
              MEMORY[0x223DCA8C0](v108, -1, -1);

              sub_222B450E8(v120, v122);
              sub_222B450E8(v117, v119);
            }

            else
            {

              sub_222B450E8(v120, v122);
              sub_222B450E8(v117, v119);
              sub_222B45094(&v142);
            }

            (*(v123 + 8))(v125, v124);
            v114 = type metadata accessor for PhoneCallGroundTruth();
            (*(*(v114 - 8) + 56))(v92, 1, 1, v114);
            return __swift_destroy_boxed_opaque_existential_0Tm(v145);
          }

          v91 = 1;
        }

        v94 = v124;
        __swift_destroy_boxed_opaque_existential_0Tm(&v142);
        sub_222B44BFC(v120, v122, v134, &v142);

        v96 = *(&v142 + 1);
        v95 = v142;
        v98 = *(&v143 + 1);
        v97 = v143;
        v99 = *(v123 + 32);
        v99(v130, v125, v94);
        if (v119)
        {
          sub_222B450E8(v95, v96);
          v97 = v116;
          v95 = v117;
          v96 = v119;
          v98 = v115;
        }

        v99(v92, v130, v94);
        v100 = type metadata accessor for PhoneCallGroundTruth();
        *(v92 + v100[5]) = v91;
        *(v92 + v100[6]) = v118;
        v101 = (v92 + v100[7]);
        *v101 = v95;
        v101[1] = v96;
        v101[2] = v97;
        v101[3] = v98;
        v102 = (v92 + v100[8]);
        v103 = v122;
        *v102 = v120;
        v102[1] = v103;
        v104 = *(&v121 + 1);
        v102[2] = v121;
        v102[3] = v104;
        (*(*(v100 - 1) + 56))(v92, 0, 1, v100);
        return __swift_destroy_boxed_opaque_existential_0Tm(v145);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v145);
      v5 = v127;
    }

    else
    {
      v141 = 0;
      memset(v140, 0, sizeof(v140));
      sub_222B4FCD4(v140, &qword_27D0253B0, &unk_222C983E0);
    }

    v43 = v133;
    if (qword_280FDFE78 == -1)
    {
LABEL_16:
      v44 = sub_222C9431C();
      __swift_project_value_buffer(v44, qword_280FE2340);
      sub_222B45038(v43, &v142);

      v45 = sub_222C942FC();
      v46 = sub_222C94A4C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v145[0] = v48;
        *v47 = 136315394;
        *&v140[0] = 91;
        *(&v140[0] + 1) = 0xE100000000000000;
        *&v137 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
        v49 = sub_222C944EC();
        MEMORY[0x223DC9330](v49);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v50 = sub_222B437C0(*&v140[0], *(&v140[0] + 1), v145);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        sub_222B45038(&v142, v140);
        v51 = sub_222C944EC();
        v53 = v52;
        sub_222B45094(&v142);
        v54 = sub_222B437C0(v51, v53, v145);

        *(v47 + 14) = v54;
        _os_log_impl(&dword_222B39000, v45, v46, "%s Classification that supports followup is missing a USO person associated with the query=%s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v48, -1, -1);
        MEMORY[0x223DCA8C0](v47, -1, -1);
      }

      else
      {

        sub_222B45094(&v142);
      }

      v55 = v131;
      v56 = type metadata accessor for PhoneCallGroundTruth();
      return (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    }

LABEL_64:
    swift_once();
    goto LABEL_16;
  }

  v38 = type metadata accessor for PhoneCallGroundTruth();
  v39 = *(*(v38 - 8) + 56);
  v40 = v38;
  v41 = v131;

  return v39(v41, 1, 1, v40);
}

uint64_t sub_222B5CB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_222C9367C();
  v121 = *(v10 - 8);
  v11 = *(v121 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = &v109 - v14;
  v15 = type metadata accessor for EntityPromptClassification();
  v123 = *(v15 - 8);
  v16 = *(v123 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v127 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v109 - v19);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v124 = a2;
  if (v21 == 0xD000000000000013 && 0x8000000222CA87A0 == v22 || (sub_222C951FC() & 1) != 0)
  {
    sub_222B43E3C(v124, &v133);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253A8, &qword_222C983D8);
    v119 = v23;
    if (swift_dynamicCast())
    {
      v117 = v10;
      v118 = v5;
      sub_222B405A0(v131, v136);
      v24 = v137;
      v25 = v138;
      __swift_project_boxed_opaque_existential_1(v136, v137);
      v26 = (*(v25 + 16))(v24, v25);
      if (v26)
      {
        v27 = v26;
        v28 = v124;
        v29 = v118;
        sub_222B5DF14(*(v124 + 40), *(v124 + 48), a1, &v133);
        v30 = *(&v133 + 1);
        if (*(&v133 + 1))
        {
          v114 = v133;
          v115 = v134;
          sub_222B43E3C(v28, v131);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253B8, &qword_222C983F0);
          v31 = swift_dynamicCast();
          v112 = v27;
          v116 = v30;
          if (v31)
          {
            v32 = *(&v134 + 1);
            v33 = v135;
            __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
            v34 = (*(v33 + 16))(v32, v33);
            if (v35)
            {
              sub_222B5DF14(v34, v35, a1, &v128);

              v111 = v128;
              v109 = *(&v129 + 1);
              v110 = v129;
            }

            else
            {
              v109 = 0;
              v110 = 0;
              v111 = 0uLL;
              v128 = 0u;
              v129 = 0u;
            }

            v64 = v123;
            v63 = __swift_destroy_boxed_opaque_existential_0Tm(&v133);
          }

          else
          {
            v135 = 0;
            v133 = 0u;
            v134 = 0u;
            v63 = sub_222B4FCD4(&v133, &qword_27D0253C0, &qword_222C983F8);
            v111 = 0uLL;
            v109 = 0;
            v110 = 0;
            v64 = v123;
          }

          v113 = a4;
          MEMORY[0x28223BE20](v63);
          *(&v109 - 2) = v124;

          v66 = a3;
          v39 = 0;
          v67 = sub_222B65F60(sub_222B5EB84, (&v109 - 4), v66);
          v68 = v67;
          v126 = *(v67 + 16);
          if (v126)
          {
            v5 = 0;
            a4 = MEMORY[0x277D84F90];
            v125 = v67;
            while (v5 < *(v68 + 16))
            {
              v69 = (*(v64 + 80) + 32) & ~*(v64 + 80);
              v70 = *(v64 + 72);
              v71 = sub_222B5EC1C(v68 + v69 + v70 * v5, v20, type metadata accessor for EntityPromptClassification);
              v72 = v20[2];
              v73 = v20[3];
              if (v72 != 0x73746361746E6F63 || v73 != 0xE800000000000000)
              {
                v75 = v20[2];
                v76 = v20[3];
                v71 = sub_222C951FC();
                if ((v71 & 1) == 0 && (v72 != 0x6E65697069636572 || v73 != 0xE900000000000074))
                {
                  v71 = sub_222C951FC();
                  if ((v71 & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }
              }

              v77 = v20[1];
              *&v133 = *v20;
              *(&v133 + 1) = v77;
              MEMORY[0x28223BE20](v71);
              *(&v109 - 2) = &v133;
              if (sub_222B42F4C(sub_222B5EBA4, (&v109 - 4), &unk_283607100))
              {
                sub_222B5ECF4(v20, v127, type metadata accessor for EntityPromptClassification);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v131[0] = a4;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_222B4C330(0, *(a4 + 16) + 1, 1);
                  a4 = *&v131[0];
                }

                v80 = *(a4 + 16);
                v79 = *(a4 + 24);
                if (v80 >= v79 >> 1)
                {
                  sub_222B4C330(v79 > 1, v80 + 1, 1);
                  a4 = *&v131[0];
                }

                *(a4 + 16) = v80 + 1;
                sub_222B5ECF4(v127, a4 + v69 + v80 * v70, type metadata accessor for EntityPromptClassification);
                v64 = v123;
                v68 = v125;
              }

              else
              {
LABEL_31:
                v68 = v125;
                sub_222B5ED94(v20, type metadata accessor for EntityPromptClassification);
              }

              if (v126 == ++v5)
              {
                goto LABEL_49;
              }
            }

            __break(1u);
            goto LABEL_62;
          }

          a4 = MEMORY[0x277D84F90];
LABEL_49:

          v81 = v122;
          sub_222C9366C();
          v82 = v124;
          sub_222B43E3C(v124, &v133);
          if (swift_dynamicCast())
          {

            sub_222B44C10(v114, v116, a4, &v133);

            v83 = v133;
            v85 = *(&v134 + 1);
            v84 = v134;
            v86 = v120;
            v87 = *(v121 + 32);
            v87(v120, v81, v117);
            v88 = *(&v111 + 1);
            if (*(&v111 + 1))
            {
              sub_222B450E8(v83, *(&v83 + 1));
              v89 = v113;
              v84 = v110;
              v90 = v111;
              v85 = v109;
            }

            else
            {
              v88 = *(&v83 + 1);
              v90 = v83;
              v89 = v113;
            }

            v87(v89, v86, v117);
            v104 = type metadata accessor for MessagesGroundTruth();
            *(v89 + v104[5]) = 0;
            *(v89 + v104[6]) = v112;
            v105 = (v89 + v104[7]);
            *v105 = v90;
            v105[1] = v88;
            v105[2] = v84;
            v105[3] = v85;
            v106 = (v89 + v104[8]);
            v107 = v116;
            *v106 = v114;
            v106[1] = v107;
            v108 = *(&v115 + 1);
            v106[2] = v115;
            v106[3] = v108;
            (*(*(v104 - 1) + 56))(v89, 0, 1, v104);
          }

          else
          {

            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v91 = sub_222C9431C();
            __swift_project_value_buffer(v91, qword_280FE2340);
            sub_222B45038(v82, &v133);
            v92 = sub_222C942FC();
            v93 = sub_222C94A4C();
            v94 = os_log_type_enabled(v92, v93);
            v95 = v113;
            v96 = v111;
            if (v94)
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              *&v128 = v98;
              *v97 = 136315138;
              sub_222B45038(&v133, v131);
              v99 = sub_222C944EC();
              v101 = v100;
              sub_222B45094(&v133);
              v102 = sub_222B437C0(v99, v101, &v128);

              *(v97 + 4) = v102;
              _os_log_impl(&dword_222B39000, v92, v93, "Failed to derive ground truth type from followup event for classification=%s", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v98);
              MEMORY[0x223DCA8C0](v98, -1, -1);
              MEMORY[0x223DCA8C0](v97, -1, -1);

              sub_222B450E8(v114, v116);
              sub_222B450E8(v96, *(&v96 + 1));
            }

            else
            {

              sub_222B450E8(v114, v116);
              sub_222B450E8(v96, *(&v96 + 1));

              sub_222B45094(&v133);
            }

            (*(v121 + 8))(v122, v117);
            v103 = type metadata accessor for MessagesGroundTruth();
            (*(*(v103 - 8) + 56))(v95, 1, 1, v103);
          }
        }

        else
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v52 = sub_222C9431C();
          __swift_project_value_buffer(v52, qword_280FE2340);
          sub_222B45038(v124, &v133);

          v53 = sub_222C942FC();
          v54 = sub_222C94A4C();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v128 = v56;
            *v55 = 136315394;
            *&v131[0] = 91;
            *(&v131[0] + 1) = 0xE100000000000000;
            v130 = *v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
            v57 = sub_222C944EC();
            MEMORY[0x223DC9330](v57);

            MEMORY[0x223DC9330](8285, 0xE200000000000000);

            v58 = sub_222B437C0(*&v131[0], *(&v131[0] + 1), &v128);

            *(v55 + 4) = v58;
            *(v55 + 12) = 2080;
            sub_222B45038(&v133, v131);
            v59 = sub_222C944EC();
            v61 = v60;
            sub_222B45094(&v133);
            v62 = sub_222B437C0(v59, v61, &v128);

            *(v55 + 14) = v62;
            _os_log_impl(&dword_222B39000, v53, v54, "%s Failed to extract the contact reference from followup event in classification=%s", v55, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DCA8C0](v56, -1, -1);
            MEMORY[0x223DCA8C0](v55, -1, -1);
          }

          else
          {

            sub_222B45094(&v133);
          }

          v65 = type metadata accessor for MessagesGroundTruth();
          (*(*(v65 - 8) + 56))(a4, 1, 1, v65);
        }

        return __swift_destroy_boxed_opaque_existential_0Tm(v136);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v136);
      v5 = v118;
    }

    else
    {
      v132 = 0;
      memset(v131, 0, sizeof(v131));
      sub_222B4FCD4(v131, &qword_27D0253B0, &unk_222C983E0);
    }

    v39 = v124;
    if (qword_280FDFE78 == -1)
    {
LABEL_16:
      v40 = sub_222C9431C();
      __swift_project_value_buffer(v40, qword_280FE2340);
      sub_222B45038(v39, &v133);

      v41 = sub_222C942FC();
      v42 = sub_222C94A4C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v136[0] = v44;
        *v43 = 136315394;
        *&v131[0] = 91;
        *(&v131[0] + 1) = 0xE100000000000000;
        *&v128 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
        v45 = sub_222C944EC();
        MEMORY[0x223DC9330](v45);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v46 = sub_222B437C0(*&v131[0], *(&v131[0] + 1), v136);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2080;
        sub_222B45038(&v133, v131);
        v47 = sub_222C944EC();
        v49 = v48;
        sub_222B45094(&v133);
        v50 = sub_222B437C0(v47, v49, v136);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_222B39000, v41, v42, "%s Classification that supports followup is missing a USO person associated with the query=%s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v44, -1, -1);
        MEMORY[0x223DCA8C0](v43, -1, -1);
      }

      else
      {

        sub_222B45094(&v133);
      }

      v51 = type metadata accessor for MessagesGroundTruth();
      return (*(*(v51 - 8) + 56))(a4, 1, 1, v51);
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

  v36 = type metadata accessor for MessagesGroundTruth();
  v37 = *(*(v36 - 8) + 56);

  return v37(a4, 1, 1, v36);
}

double sub_222B5DA50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  Array<A>.findEvent(eventId:)(a1, a2, a3, &v36);
  v7 = v37;
  if (v37)
  {
    v8 = v36;
    v10 = v38;
    v9 = v39;
    v11 = v40;

    v13 = sub_222B41660(v12);

    if (v13)
    {
      v14 = *(v13 + 16);

      if (v14 == 1)
      {
        v36 = v8;
        v37 = v7;
        v38 = v10;
        v39 = v9;
        v40 = v11;
        extractContactReference(event:)(&v36, a4);
        sub_222B5EE44(v8, v7);
        return result;
      }

      sub_222B5EE44(v8, v7);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v25 = sub_222C9431C();
      __swift_project_value_buffer(v25, qword_280FE2340);

      v26 = sub_222C942FC();
      v27 = sub_222C94A4C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 136315394;
        v35 = v29;
        v36 = 91;
        v37 = 0xE100000000000000;
        v34 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
        v30 = sub_222C944EC();
        MEMORY[0x223DC9330](v30);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v31 = sub_222B437C0(v36, v37, &v35);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2048;
        *(v28 + 14) = v14;
        _os_log_impl(&dword_222B39000, v26, v27, "%s Event does not have a single contact (has %ld)", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x223DCA8C0](v29, -1, -1);
        MEMORY[0x223DCA8C0](v28, -1, -1);
      }
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v16 = sub_222C9431C();
      __swift_project_value_buffer(v16, qword_280FE2340);

      sub_222B5EDF4(v8, v7);
      v17 = sub_222C942FC();
      v18 = sub_222C94A4C();

      sub_222B5EE44(v8, v7);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v19 = 136315394;
        v35 = v32;
        v36 = 91;
        v37 = 0xE100000000000000;
        v33 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
        v20 = sub_222C944EC();
        MEMORY[0x223DC9330](v20);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v21 = sub_222B437C0(v36, v37, &v35);

        *(v19 + 4) = v21;
        *(v19 + 12) = 2080;
        v36 = v8;
        v37 = v7;
        v38 = v10;
        v39 = v9;
        v40 = v11;
        v22 = sub_222C944EC();
        v24 = sub_222B437C0(v22, v23, &v35);

        *(v19 + 14) = v24;
        _os_log_impl(&dword_222B39000, v17, v18, "%s Failed to get contact count from event=%s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v32, -1, -1);
        MEMORY[0x223DCA8C0](v19, -1, -1);
      }

      else
      {
        sub_222B5EE44(v8, v7);
      }
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

void sub_222B5DF14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v58 = type metadata accessor for FeaturisedTurn(0);
  v10 = *(v58 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v58);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v57 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = v51 - v17;
  v51[0] = v10;
  v54 = (v10 + 48);
  v55 = (v10 + 56);
  v60 = a3;

  v59 = 0;
  while (1)
  {
    v22 = v59;
    v24 = *(v60 + 16);
    if (v59 == v24)
    {
      v25 = 1;
      v21 = v57;
      v26 = v58;
      v20 = v56;
      goto LABEL_15;
    }

    v21 = v57;
    v26 = v58;
    v20 = v56;
    if (v59 >= v24)
    {
      break;
    }

    sub_222B5EC1C(v60 + ((*(v51[0] + 80) + 32) & ~*(v51[0] + 80)) + *(v51[0] + 72) * v59, v56, type metadata accessor for FeaturisedTurn);
    v25 = 0;
    ++v22;
LABEL_15:
    (*v55)(v20, v25, 1, v26);
    sub_222B5EC84(v20, v21);
    if ((*v54)(v21, 1, v26) == 1)
    {

LABEL_30:
      v49 = 0uLL;
      v50 = v52;
      goto LABEL_33;
    }

    v59 = v22;
    v27 = v21;
    v21 = v53;
    sub_222B5ECF4(v27, v53, type metadata accessor for FeaturisedTurn);
    v20 = *(v21 + *(v26 + 28));

    sub_222B5ED94(v21, type metadata accessor for FeaturisedTurn);

    v28 = v20;
    if (v20)
    {
      v6 = (v20 + 64);
      v18 = -1;
      while (1)
      {
        ++v18;
        v19 = *(v28 + 16);
        if (v18 == v19)
        {
          break;
        }

        if (v18 >= v19)
        {
          __break(1u);
          goto LABEL_36;
        }

        v5 = *(v6 - 4);
        v20 = *(v6 - 3);
        v22 = *(v6 - 2);
        v21 = *(v6 - 1);
        v4 = *v6;
        if (v5 == a1 && v20 == a2)
        {
          v5 = a1;
LABEL_19:

          v29 = sub_222B41660(v22);
          v6 = v51[1];
          if (v29)
          {
            v30 = *(v29 + 16);

            if (v30 == 1)
            {
              v61 = v5;
              v62 = v20;
              v63 = v22;
              v64 = v21;
              v65 = v4;
              extractContactReference(event:)(&v61, v52);

              return;
            }

            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v42 = sub_222C9431C();
            __swift_project_value_buffer(v42, qword_280FE2340);

            v43 = sub_222C942FC();
            v44 = sub_222C94A4C();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              *v45 = 136315394;
              v61 = 91;
              v62 = 0xE100000000000000;
              v66 = *v6;
              v67 = v46;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
              v47 = sub_222C944EC();
              MEMORY[0x223DC9330](v47);

              MEMORY[0x223DC9330](8285, 0xE200000000000000);
              v48 = sub_222B437C0(v61, v62, &v67);

              *(v45 + 4) = v48;
              *(v45 + 12) = 2048;
              *(v45 + 14) = v30;
              _os_log_impl(&dword_222B39000, v43, v44, "%s Event does not have a single contact (has %ld)", v45, 0x16u);
              __swift_destroy_boxed_opaque_existential_0Tm(v46);
              MEMORY[0x223DCA8C0](v46, -1, -1);
              MEMORY[0x223DCA8C0](v45, -1, -1);
            }

            goto LABEL_30;
          }

          if (qword_280FDFE78 != -1)
          {
            goto LABEL_37;
          }

          goto LABEL_23;
        }

        v6 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_23:
  v31 = sub_222C9431C();
  __swift_project_value_buffer(v31, qword_280FE2340);

  v32 = sub_222C942FC();
  v33 = sub_222C94A4C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60 = v35;
    *v34 = 136315394;
    v61 = 91;
    v62 = 0xE100000000000000;
    v66 = *v6;
    v67 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
    v36 = sub_222C944EC();
    MEMORY[0x223DC9330](v36);

    MEMORY[0x223DC9330](8285, 0xE200000000000000);
    v37 = sub_222B437C0(v61, v62, &v67);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v61 = v5;
    v62 = v20;
    v63 = v22;
    v64 = v21;
    v65 = v4;
    v38 = sub_222C944EC();
    v40 = sub_222B437C0(v38, v39, &v67);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_222B39000, v32, v33, "%s Failed to get contact count from event=%s", v34, 0x16u);
    v41 = v60;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v41, -1, -1);
    MEMORY[0x223DCA8C0](v34, -1, -1);
  }

  else
  {
  }

  v50 = v52;
  v49 = 0uLL;
LABEL_33:
  *v50 = v49;
  v50[1] = v49;
}

uint64_t sub_222B5E698(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v7 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v37 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = type metadata accessor for EntityPromptClassification();
  v19 = *(v4 + 16);
  v19(v17, a1 + *(v18 + 44), v3);
  v20 = *(v4 + 56);
  v21 = 1;
  v20(v17, 0, 1, v3);
  v22 = *(v36 + 72);
  if (*(v22 + 16))
  {
    v19(v15, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v21 = 0;
  }

  v20(v15, v21, 1, v3);
  v23 = *(v35 + 48);
  v24 = v37;
  sub_222B5551C(v17, v37);
  sub_222B5551C(v15, v24 + v23);
  v25 = *(v4 + 48);
  if (v25(v24, 1, v3) != 1)
  {
    v27 = v34;
    sub_222B5551C(v24, v34);
    if (v25(v24 + v23, 1, v3) != 1)
    {
      v28 = v24 + v23;
      v29 = v33;
      (*(v4 + 32))(v33, v28, v3);
      sub_222B5EBC4();
      v26 = sub_222C9447C();
      v30 = *(v4 + 8);
      v30(v29, v3);
      sub_222B4FCD4(v15, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v17, &unk_27D026290, &qword_222C96B40);
      v30(v34, v3);
      sub_222B4FCD4(v24, &unk_27D026290, &qword_222C96B40);
      return v26 & 1;
    }

    sub_222B4FCD4(v15, &unk_27D026290, &qword_222C96B40);
    sub_222B4FCD4(v17, &unk_27D026290, &qword_222C96B40);
    (*(v4 + 8))(v27, v3);
    goto LABEL_8;
  }

  sub_222B4FCD4(v15, &unk_27D026290, &qword_222C96B40);
  v24 = v37;
  sub_222B4FCD4(v17, &unk_27D026290, &qword_222C96B40);
  if (v25(v24 + v23, 1, v3) != 1)
  {
LABEL_8:
    sub_222B4FCD4(v24, &qword_27D025290, &unk_222C97C30);
    v26 = 0;
    return v26 & 1;
  }

  sub_222B4FCD4(v24, &unk_27D026290, &qword_222C96B40);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_222B5EB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = **(v2 + 16);
  return sub_222B5CB34(v4, a1, v5, a2);
}