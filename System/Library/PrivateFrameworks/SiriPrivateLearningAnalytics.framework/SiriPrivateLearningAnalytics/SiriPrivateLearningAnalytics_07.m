char *sub_222AA8B74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD98, &qword_222B0C110);
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

char *sub_222AA8C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
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

char *sub_222AA8D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDF0, &qword_222B0BD60);
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

char *sub_222AA8EE0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_222AA9000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDF8, &qword_222B0BD68);
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

char *sub_222AA910C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDE8, &qword_222B0BD58);
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

char *sub_222AA9224(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CA90, &qword_222B04978);
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

void *sub_222AA9364(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDE0, &unk_222B0BD48);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222AA94B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDC8, &qword_222B0BD28);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDD0, &unk_222B0BD30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222AA9618(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_222AA9738(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_222AA9858(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_222AA99D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

size_t sub_222AA9B94(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_222AA9D70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD78, &qword_222B0BCC0);
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

char *sub_222AA9E7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD90, &unk_222B0BCE0);
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

char *sub_222AA9F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD88, &qword_222B0BCD8);
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

void *sub_222AAA0A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD60, &qword_222B0BCA8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD68, &qword_222B0BCB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_222AAA1DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_222AAA2B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
      v7 = *(sub_222B018D8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_222B018D8() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_222AAA454(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78() & 1;
  }
}

unint64_t sub_222AAA4AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_222B02478();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_222B02548();
}

void *_s28SiriPrivateLearningAnalytics15WakeWordTrimmerV17getTriggerPhrases6localeSaySSGSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (a1 == 0x53555F6E65 && a2 == 0xE500000000000000)
  {
    return &unk_2835F1218;
  }

  v5 = sub_222B02F78();
  v7 = a1 == 0x55415F6E65 && a2 == 0xE500000000000000;
  result = &unk_2835F1218;
  if ((v5 & 1) == 0 && !v7)
  {
    v8 = sub_222B02F78();
    v9 = a1 == 0x41435F6E65 && a2 == 0xE500000000000000;
    v10 = v9;
    result = &unk_2835F1218;
    if ((v8 & 1) == 0 && !v10)
    {
      v11 = sub_222B02F78();
      v12 = a1 == 0x42475F6E65 && a2 == 0xE500000000000000;
      v13 = v12;
      result = &unk_2835F1218;
      if ((v11 & 1) == 0 && !v13)
      {
        v14 = sub_222B02F78();
        v15 = a1 == 0x45495F6E65 && a2 == 0xE500000000000000;
        v16 = v15;
        result = &unk_2835F1218;
        if ((v14 & 1) == 0 && !v16)
        {
          v17 = sub_222B02F78();
          v18 = a1 == 0x4E495F6E65 && a2 == 0xE500000000000000;
          v19 = v18;
          result = &unk_2835F1218;
          if ((v17 & 1) == 0 && !v19)
          {
            v20 = sub_222B02F78();
            v21 = a1 == 0x5A4E5F6E65 && a2 == 0xE500000000000000;
            v22 = v21;
            result = &unk_2835F1218;
            if ((v20 & 1) == 0 && !v22)
            {
              v23 = sub_222B02F78();
              v24 = a1 == 0x47535F6E65 && a2 == 0xE500000000000000;
              v25 = v24;
              result = &unk_2835F1218;
              if ((v23 & 1) == 0 && !v25)
              {
                v26 = sub_222B02F78();
                v27 = a1 == 0x415A5F6E65 && a2 == 0xE500000000000000;
                v28 = v27;
                result = &unk_2835F1218;
                if ((v26 & 1) == 0 && !v28)
                {
                  if (sub_222B02F78())
                  {
                    return &unk_2835F1218;
                  }

                  if (qword_280CBA628 != -1)
                  {
                    swift_once();
                  }

                  v29 = sub_222B02148();
                  __swift_project_value_buffer(v29, qword_280CBC458);

                  v30 = sub_222B02128();
                  v31 = sub_222B028E8();

                  if (os_log_type_enabled(v30, v31))
                  {
                    v32 = swift_slowAlloc();
                    v33 = swift_slowAlloc();
                    v34 = v33;
                    *v32 = 136315138;
                    *(v32 + 4) = sub_222A230FC(a1, a2, &v34);
                    _os_log_impl(&dword_222A1C000, v30, v31, "[ASRFeatureExtractor] #getTriggerPhrase: locale %s not enabled", v32, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v33);
                    MEMORY[0x223DC7E30](v33, -1, -1);
                    MEMORY[0x223DC7E30](v32, -1, -1);
                  }

                  return MEMORY[0x277D84F90];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_222AAA934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD30, &qword_222B0BBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AAA99C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78() & 1;
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_222AAAA18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_222AAAA60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222AAAAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_222A23B04(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_222B02BC8();
  v7 = result;
  v8 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v23 = *(*(a1 + 48) + 4 * v7);
    v11 = *(*(a1 + 56) + 8 * v7);
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_222A23B04((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v10);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_222A965F4(v7, v24, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_222A965F4(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_222AAAD30@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a2;
  v41 = a1;
  v38 = a4;
  v7 = &qword_27D01D840;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660);
  v37 = *(v42 - 8);
  v8 = *(v37 + 64);
  v10 = MEMORY[0x28223BE20](v42, v9);
  v45 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v39 = &v37 - v13;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = a3;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v44 = v5;
      v21 = v7;
      v22 = v20;
LABEL_9:
      v23 = __clz(__rbit64(v17)) | (v22 << 6);
      v24 = v43;
      v25 = *(v43 + 48);
      v26 = sub_222B018D8();
      v27 = v39;
      (*(*(v26 - 8) + 16))(v39, v25 + *(*(v26 - 8) + 72) * v23, v26);
      v28 = (*(v24 + 56) + 16 * v23);
      v29 = *v28;
      v30 = v28[1];
      v31 = &v27[*(v42 + 48)];
      *v31 = v29;
      *(v31 + 1) = v30;
      v32 = v27;
      v33 = v45;
      v7 = v21;
      sub_222AB959C(v32, v45, v21, &qword_222B09660);

      v34 = v44;
      v35 = v41(v33);
      v5 = v34;
      if (v34)
      {
        sub_222A34F20(v45, &qword_27D01D840, &qword_222B09660);
      }

      if (v35)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_222A34F20(v45, v21, &qword_222B09660);
      v20 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v36 = v38;
    sub_222AB959C(v45, v38, &qword_27D01D840, &qword_222B09660);
    return (*(v37 + 56))(v36, 0, 1, v42);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        return (*(v37 + 56))(v38, 1, 1, v42);
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v44 = v5;
        v21 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222AAB028(uint64_t (*a1)(uint64_t *))
{
  sub_222B02D68();
  while (1)
  {
    sub_222B02E18();
    v3 = v6;
    if (!v6)
    {

      return 0;
    }

    v4 = a1(&v6);
    if (v1)
    {
      break;
    }

    if (v4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return v3;
}

void *sub_222AAB0F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](j, a3);
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

uint64_t sub_222AAB204(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v242 = &v232 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v254 = &v232 - v11;
  v256 = sub_222B018D8();
  v261 = *(v256 - 1);
  v12 = *(v261 + 64);
  v14 = MEMORY[0x28223BE20](v256, v13);
  v241 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v246 = &v232 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v252 = &v232 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v251 = (&v232 - v24);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v244 = &v232 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v258 = &v232 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v232 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v232 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D838, &qword_222B0C0D0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v42 = &v232 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = MEMORY[0x28223BE20](v43, v46);
  v249 = &v232 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v250 = &v232 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v253 = &v232 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v243 = &v232 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v255 = &v232 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v257 = &v232 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v67 = &v232 - v66;
  MEMORY[0x28223BE20](v65, v68);
  v70 = &v232 - v69;
  swift_beginAccess();
  v248 = a1;
  v71 = *(a1 + 64);
  v259 = a2;
  v263 = a2;

  sub_222AAAD30(sub_222AB937C, v262, v71, v42);

  v72 = *(v44 + 48);
  v260 = v43;
  if (v72(v42, 1, v43) == 1)
  {
    sub_222A34F20(v42, &qword_27D01D838, &qword_222B0C0D0);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v73 = sub_222B02148();
    __swift_project_value_buffer(v73, qword_280CBC458);
    v74 = sub_222B02128();
    v75 = sub_222B028E8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_222A1C000, v74, v75, "#extractTurn: Request does not have a UEI turn ID. Skipping", v76, 2u);
      MEMORY[0x223DC7E30](v76, -1, -1);
    }

    return 0;
  }

  v236 = 0;
  sub_222AB959C(v42, v70, &qword_27D01D840, &qword_222B09660);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v77 = sub_222B02148();
  v78 = __swift_project_value_buffer(v77, qword_280CBC458);
  v79 = v261;
  v80 = v261 + 16;
  v239 = *(v261 + 16);
  v81 = v256;
  v239(v37, v259, v256);
  sub_222A34E48(v70, v67, &qword_27D01D840, &qword_222B09660);
  v240 = v78;
  v82 = sub_222B02128();
  v83 = sub_222B028D8();
  v84 = os_log_type_enabled(v82, v83);
  v247 = v70;
  v238 = v34;
  if (v84)
  {
    v85 = v81;
    v86 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v264 = v235;
    *v86 = 136315394;
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
    v234 = v83;
    v87 = sub_222B02F38();
    v233 = v82;
    v89 = v88;
    v237 = v80;
    v90 = *(v261 + 8);
    (v90)(v37, v85);
    v91 = sub_222A230FC(v87, v89, &v264);

    *(v86 + 4) = v91;
    *(v86 + 12) = 2080;
    v92 = v257;
    sub_222A34E48(v67, v257, &qword_27D01D840, &qword_222B09660);
    v93 = v260;
    v94 = (v92 + *(v260 + 48));
    v95 = *v94;

    v96 = v94[1];

    (*(v261 + 32))(v34, v92, v85);
    v97 = sub_222B02F38();
    v99 = v98;
    v100 = v34;
    v101 = v90;
    v80 = v237;
    (v101)(v100, v85);
    v79 = v261;
    sub_222A34F20(v67, &qword_27D01D840, &qword_222B09660);
    v102 = sub_222A230FC(v97, v99, &v264);
    v70 = v247;

    *(v86 + 14) = v102;
    v103 = v233;
    _os_log_impl(&dword_222A1C000, v233, v234, "#extractTurn: Called for request %s and turn %s", v86, 0x16u);
    v104 = v235;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v104, -1, -1);
    v105 = v86;
    v81 = v85;
    MEMORY[0x223DC7E30](v105, -1, -1);
  }

  else
  {

    sub_222A34F20(v67, &qword_27D01D840, &qword_222B09660);
    v101 = *(v79 + 8);
    (v101)(v37, v81);
    v93 = v260;
  }

  v106 = v255;
  sub_222A34E48(v70, v255, &qword_27D01D840, &qword_222B09660);
  v107 = (v106 + *(v93 + 48));
  v109 = *v107;
  v108 = v107[1];
  v110 = v258;
  if (!*(v108 + 16))
  {

    (v101)(v106, v81);
    v145 = v249;
    sub_222A34E48(v70, v249, &qword_27D01D840, &qword_222B09660);
    v146 = sub_222B02128();
    v147 = v101;
    v148 = sub_222B028E8();
    if (os_log_type_enabled(v146, v148))
    {
      v149 = swift_slowAlloc();
      v256 = v147;
      v150 = v79;
      v151 = v149;
      v152 = swift_slowAlloc();
      v264 = v152;
      *v151 = 136315138;
      v153 = v257;
      sub_222A34E48(v145, v257, &qword_27D01D840, &qword_222B09660);
      v154 = (v153 + *(v260 + 48));
      v155 = *v154;

      v156 = v154[1];

      v157 = v238;
      (*(v150 + 32))(v238, v153, v81);
      sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
      v158 = sub_222B02F38();
      v159 = v145;
      v161 = v160;
      (v256)(v157, v81);
      v162 = v159;
      v70 = v247;
      sub_222A34F20(v162, &qword_27D01D840, &qword_222B09660);
      v163 = sub_222A230FC(v158, v161, &v264);

      *(v151 + 4) = v163;
      _os_log_impl(&dword_222A1C000, v146, v148, "#extractTurn: Turn %s has no associated request id.", v151, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v152);
      MEMORY[0x223DC7E30](v152, -1, -1);
      MEMORY[0x223DC7E30](v151, -1, -1);
    }

    else
    {

      sub_222A34F20(v145, &qword_27D01D840, &qword_222B09660);
    }

    goto LABEL_28;
  }

  v111 = v239;
  v239(v258, (v108 + ((*(v79 + 80) + 32) & ~*(v79 + 80))), v81);

  v255 = v79 + 8;
  (v101)(v106, v81);
  sub_222AB93EC(&qword_280CB8300, MEMORY[0x277CC95F0]);
  v112 = v259;
  if ((sub_222B02338() & 1) == 0)
  {
    v164 = v243;
    sub_222A34E48(v70, v243, &qword_27D01D840, &qword_222B09660);
    v165 = v244;
    v111(v244, v110, v81);
    v166 = v112;
    v167 = v251;
    v111(v251, v166, v81);
    v168 = sub_222B02128();
    v169 = sub_222B028D8();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v256 = v101;
      v171 = v170;
      v259 = swift_slowAlloc();
      v264 = v259;
      *v171 = 136315650;
      v172 = v257;
      sub_222A34E48(v164, v257, &qword_27D01D840, &qword_222B09660);
      v173 = *(v260 + 48);
      LODWORD(v260) = v169;
      v174 = v172 + v173;
      v175 = *(v172 + v173);

      v176 = *(v174 + 8);

      v177 = v238;
      (*(v261 + 32))(v238, v172, v81);
      sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
      v178 = sub_222B02F38();
      v179 = v81;
      v181 = v180;
      v182 = v177;
      v183 = v164;
      v184 = v256;
      (v256)(v182, v179);
      sub_222A34F20(v183, &qword_27D01D840, &qword_222B09660);
      v185 = sub_222A230FC(v178, v181, &v264);

      *(v171 + 4) = v185;
      *(v171 + 12) = 2080;
      v186 = sub_222B02F38();
      v188 = v187;
      v184(v165, v179);
      v189 = sub_222A230FC(v186, v188, &v264);

      *(v171 + 14) = v189;
      *(v171 + 22) = 2080;
      v190 = v251;
      v70 = v247;
      v191 = sub_222B02F38();
      v193 = v192;
      v184(v190, v179);
      v194 = sub_222A230FC(v191, v193, &v264);

      *(v171 + 24) = v194;
      _os_log_impl(&dword_222A1C000, v168, v260, "#extractTurn: Turn %s (Primary Request: %s) has multiple requests. Skipping non primary request %s.", v171, 0x20u);
      v195 = v259;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v195, -1, -1);
      MEMORY[0x223DC7E30](v171, -1, -1);

      v184(v258, v179);
    }

    else
    {

      (v101)(v167, v81);
      (v101)(v165, v81);
      sub_222A34F20(v164, &qword_27D01D840, &qword_222B09660);
      (v101)(v110, v81);
    }

LABEL_28:
    sub_222A34F20(v70, &qword_27D01D840, &qword_222B09660);
    return 0;
  }

  sub_222A34E48(v70, v253, &qword_27D01D840, &qword_222B09660);
  v113 = v250;
  sub_222A34E48(v70, v250, &qword_27D01D840, &qword_222B09660);
  v114 = v252;
  v237 = v80;
  v111(v252, v110, v81);
  v115 = sub_222B02128();
  v116 = sub_222B028D8();
  v259 = v115;
  v117 = os_log_type_enabled(v115, v116);
  v256 = v101;
  if (v117)
  {
    v118 = v113;
    v119 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v264 = v251;
    *v119 = 134218498;
    v120 = v253;
    v121 = v257;
    sub_222A34E48(v253, v257, &qword_27D01D840, &qword_222B09660);
    v122 = v260;
    v123 = (v121 + *(v260 + 48));
    LODWORD(v249) = v116;
    v124 = *v123;
    v125 = *(v123[1] + 16);

    (v101)(v121, v81);
    sub_222A34F20(v120, &qword_27D01D840, &qword_222B09660);
    *(v119 + 4) = v125;
    *(v119 + 12) = 2080;
    sub_222A34E48(v118, v121, &qword_27D01D840, &qword_222B09660);
    v126 = (v121 + *(v122 + 48));
    v127 = *v126;

    v128 = v126[1];

    v129 = v238;
    (*(v261 + 32))(v238, v121, v81);
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
    v130 = sub_222B02F38();
    v132 = v131;
    v133 = v256;
    (v256)(v129, v81);
    sub_222A34F20(v250, &qword_27D01D840, &qword_222B09660);
    v134 = v130;
    v135 = v260;
    v136 = sub_222A230FC(v134, v132, &v264);
    v70 = v247;

    *(v119 + 14) = v136;
    *(v119 + 22) = 2080;
    v137 = v252;
    v138 = sub_222B02F38();
    v140 = v139;
    v133(v137, v81);
    v141 = sub_222A230FC(v138, v140, &v264);

    *(v119 + 24) = v141;
    v142 = v259;
    _os_log_impl(&dword_222A1C000, v259, v249, "#extractTurn: Extracting %ld requests as part of Turn %s (Primary Request: %s)", v119, 0x20u);
    v143 = v251;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v143, -1, -1);
    MEMORY[0x223DC7E30](v119, -1, -1);

    v144 = v246;
  }

  else
  {
    sub_222A34F20(v253, &qword_27D01D840, &qword_222B09660);

    (v101)(v114, v81);
    sub_222A34F20(v113, &qword_27D01D840, &qword_222B09660);
    v144 = v246;
    v121 = v257;
    v135 = v260;
  }

  v196 = *&v70[*(v135 + 48) + 8];
  v197 = v248;

  v259 = sub_222AB53EC(v196, v245, v197, sub_222AB183C);

  sub_222A34E48(v70, v121, &qword_27D01D840, &qword_222B09660);
  v198 = (v121 + *(v135 + 48));
  v199 = *v198;

  v200 = v198[1];

  v201 = v261;
  v202 = *(v261 + 32);
  v202(v144, v121, v81);
  v203 = *(v197 + 72);

  sub_222A66668(v144, v254);

  v204 = sub_222A7C100(v144);
  if (v204)
  {
    v205 = v204;
    v206 = v201;
    v207 = [v204 clockIdentifier];
    if (v207)
    {
      v208 = v207;
      v209 = [v207 value];
      if (v209)
      {
        v210 = v209;
        v211 = sub_222B01798();
        v213 = v212;

        v214 = v242;
        sub_222A67044(v211, v213, v242);

        sub_222A26530(v211, v213);
        if ((*(v206 + 48))(v214, 1, v81) != 1)
        {
          v226 = v241;
          v202(v241, v214, v81);
          v227 = v248;
          swift_beginAccess();
          v228 = *(v227 + 56);
          if (*(v228 + 16))
          {
            v229 = *(v227 + 56);

            v230 = sub_222A26F40(v226);
            v218 = v239;
            if (v231)
            {
              v216 = *(*(v228 + 56) + 8 * v230);
            }

            else
            {

              v216 = MEMORY[0x277D84F90];
            }
          }

          else
          {

            v216 = MEMORY[0x277D84F90];
            v218 = v239;
          }

          (v256)(v226, v81);
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v217 = *(v201 + 56);
    v214 = v242;
    v217(v242, 1, 1, v81);
LABEL_33:
    sub_222A34F20(v214, &unk_27D01DA50, &unk_222B04E20);
    v216 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v216 = MEMORY[0x277D84F90];
LABEL_34:
  v218 = v239;
LABEL_35:
  v219 = v238;
  v218(v238, v144, v81);
  v265 = v259;
  sub_222A96EC4(v216);
  v220 = v256;
  (v256)(v144, v81);
  v220(v258, v81);
  v221 = v265;
  v222 = type metadata accessor for Turn();
  v223 = *(v222 + 48);
  v224 = *(v222 + 52);
  v225 = swift_allocObject();
  v202(v225 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v219, v81);
  *(v225 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v221;
  sub_222AB959C(v254, v225 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date, &qword_27D01D700, &qword_222B07320);
  sub_222A34F20(v247, &qword_27D01D840, &qword_222B09660);
  return v225;
}

uint64_t sub_222AAC90C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_35:
    v5 = MEMORY[0x277D84F90];
LABEL_36:

    return v5;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v35 = a1 + 32;
  while (1)
  {
    v7 = v35 + 16 * v4;
    v8 = *(v7 + 8);
    v9 = *v7;

    v10 = v9;
    v11 = v3;
    v12 = sub_222AB5B58(v8, a2, v10);

    v13 = v12 >> 62;
    v14 = v12 >> 62 ? sub_222B02DC8() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v5 >> 62;
    if (v5 >> 62)
    {
      v33 = sub_222B02DC8();
      v17 = v33 + v14;
      if (__OFADD__(v33, v14))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v15)
      {
        goto LABEL_16;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = v14;
        goto LABEL_18;
      }
    }

    else
    {
      if (v15)
      {
LABEL_16:
        sub_222B02DC8();
        goto LABEL_17;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v18 + 16);
LABEL_17:
    v19 = v14;
    result = sub_222B02CC8();
    v5 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v22 >> 1) - v21) < v19)
    {
      goto LABEL_38;
    }

    v40 = v19;
    v38 = v5;
    v25 = v18 + 8 * v21 + 32;
    v34 = v18;
    if (v13)
    {
      if (v23 < 1)
      {
        goto LABEL_40;
      }

      sub_222A352E8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
        v27 = sub_222A6E00C(v39, i, v12);
        v29 = *v28;
        (v27)(v39, 0);
        *(v25 + 8 * i) = v29;
      }
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v5 = v38;
    v3 = v11;
    if (v40 >= 1)
    {
      v30 = *(v34 + 16);
      v31 = __OFADD__(v30, v40);
      v32 = v30 + v40;
      if (v31)
      {
        goto LABEL_39;
      }

      *(v34 + 16) = v32;
    }

LABEL_4:
    if (++v4 == v36)
    {
      goto LABEL_36;
    }
  }

  v24 = v18;
  result = sub_222B02DC8();
  v18 = v24;
  v23 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v19 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_222AACC74()
{
  v0 = sub_222B02058();
  v1 = sub_222B02048();
  v5 = v0;
  v6 = MEMORY[0x277D5FDD0];
  *&v4 = v1;
  type metadata accessor for FlatFileSignalReader();
  v2 = swift_allocObject();
  result = sub_222A1E5A8(&v4, v2 + 16);
  qword_280CB91E0 = v2;
  return result;
}

uint64_t static FlatFileSignalReader.shared.getter()
{
  if (qword_280CB91D8 != -1)
  {
    swift_once();
  }
}

uint64_t FlatFileSignalReader.__allocating_init(path:)(uint64_t a1)
{
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = sub_222B02058();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_222B02038();
  (*(v3 + 8))(a1, v2);
  v15 = v7;
  v16 = MEMORY[0x277D5FDD0];
  *&v14 = v10;
  type metadata accessor for FlatFileSignalReader();
  v11 = swift_allocObject();
  sub_222A1E5A8(&v14, v11 + 16);
  return v11;
}

uint64_t sub_222AACEA8()
{
  sub_222AACF18();
  v0 = sub_222AAB028(sub_222AB9634);

  return v0;
}

void *sub_222AACF18()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = sub_222B02028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE18, &qword_222B0BD80);
  v3 = swift_allocObject();
  v3[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  if (v2 >> 62)
  {
    v5 = sub_222B02DC8();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v3[2] = v4;
  v3[3] = v6;
  v3[4] = v7;
  v3[5] = v6;
  v8 = sub_222AB8108();

  return v8;
}

uint64_t sub_222AAD04C()
{
  sub_222AACF18();
  v0 = sub_222A84FB0();

  return v0;
}

uint64_t FlatFileSignalReader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222AAD0DC()
{
  v1 = *v0;
  sub_222AACF18();
  v2 = sub_222AAB028(sub_222AB9634);

  return v2;
}

uint64_t sub_222AAD174()
{
  v1 = *v0;
  sub_222AACF18();
  v2 = sub_222A84FB0();

  return v2;
}

void *FlatFileSignalReader.turns()@<X0>(void *a1@<X8>)
{
  result = sub_222AACF18();
  *a1 = sub_222AB8980;
  a1[1] = result;
  return result;
}

uint64_t FlatFileSignalReader.conversations()@<X0>(void *a1@<X8>)
{
  sub_222AACF18();
  v2 = sub_222A84FB0();

  *a1 = sub_222AB8998;
  a1[1] = v2;
  return result;
}

void *sub_222AAD23C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_222AACF18();
  *a1 = sub_222AB9670;
  a1[1] = result;
  return result;
}

uint64_t sub_222AAD278@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_222AACF18();
  v4 = sub_222A84FB0();

  *a1 = sub_222AB966C;
  a1[1] = v4;
  return result;
}

uint64_t sub_222AAD2D0()
{
  if (qword_280CB8F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280CBC430;
  v1 = type metadata accessor for BiomePLSELFStoreReader();
  v12[3] = v1;
  v12[4] = &off_2835F86D8;
  v12[0] = v0;
  type metadata accessor for BiomeSignalReader();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v12, v1);
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v3, v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  swift_retain_n();
  v9 = sub_222AB3B60(v8, v2);

  result = __swift_destroy_boxed_opaque_existential_0(v12);
  qword_280CBC450 = v9;
  return result;
}

uint64_t sub_222AAD440(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *a1;
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);
    v6 = v3;
    v7 = v4;
    v8 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](a1, a2);
    v6 = sub_222AAB028(sub_222AB8E50);
    v7 = 0;
    v8 = 0;
  }

  a2(&v6);
  return sub_222AB9134(v6, v7, v8);
}

uint64_t sub_222AAD500(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_222AB8108();
  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_27D01DE00);

  v9 = sub_222B02128();
  v10 = sub_222B028D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_222B02DB8();

    _os_log_impl(&dword_222A1C000, v9, v10, "Extracted %ld turn(s) from Biome", v11, 0xCu);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  else
  {
  }

  v13 = v7;
  v14 = 0;
  v15 = 0;

  a2(&v13);
  sub_222AB9134(v13, v14, v15);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_222AAED9C(a5);
  }
}

uint64_t sub_222AAD6AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v53 = sub_222B021D8();
  v55 = *(v53 - 8);
  v4 = v55[8];
  MEMORY[0x28223BE20](v53, v5);
  v50 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_222B02238();
  v52 = *(v54 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v54, v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B018D8();
  v56 = *(v11 - 8);
  v12 = v56;
  v13 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v47 - v19;
  v60 = v47 - v19;
  sub_222B018C8();
  v47[1] = *(v2 + 56);
  v21 = *(v12 + 16);
  v51 = v12 + 16;
  v61 = v21;
  v48 = v11;
  v21(v17, v20, v11);
  v22 = *(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  v49 = *(v12 + 32);
  v62 = v12 + 32;
  v49(v23 + ((v22 + 24) & ~v22), v17, v11);
  aBlock[4] = sub_222AB9208;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_94_0;
  v24 = _Block_copy(aBlock);

  sub_222B02208();
  v64 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  v25 = v50;
  v26 = v53;
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v10, v25, v24);
  _Block_release(v24);
  (v55[1])(v25, v26);
  (*(v52 + 8))(v10, v54);

  v27 = *(v3 + 40);
  v59 = v3;
  v55 = __swift_project_boxed_opaque_existential_1((v3 + 16), v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v60;
  v30 = v48;
  v61(v17, v60, v48);
  v47[0] = v22;
  v31 = (v22 + 40) & ~v22;
  v32 = swift_allocObject();
  v33 = v57;
  v34 = v58;
  v32[2] = v57;
  v32[3] = v34;
  v32[4] = v28;
  v35 = v30;
  v36 = v30;
  v37 = v49;
  v49(v32 + v31, v17, v35);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v29;
  v40 = v36;
  v61(v17, v39, v36);
  v41 = swift_allocObject();
  *(v41 + 2) = v33;
  *(v41 + 3) = v34;
  *(v41 + 4) = v38;
  v37(&v41[v31], v17, v40);
  v42 = *v55;
  swift_retain_n();

  v43 = sub_222AD3460(sub_222AB9668, v32, sub_222AB92D8, v41);

  v44 = v43;
  v45 = v60;
  sub_222AB3E1C(v60, v44, v59);

  return (*(v56 + 8))(v45, v40);
}

uint64_t sub_222AADCAC(void *a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 state])
  {
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v8 = sub_222B02148();
    __swift_project_value_buffer(v8, qword_27D01DE00);
    v9 = a1;
    v10 = sub_222B02128();
    v11 = sub_222B028E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v12 = 136315138;
      [v9 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, &v19);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v10, v11, "Failed to extract turns from SiriPrivateLearningSELFEvent stream, error=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DC7E30](v18, -1, -1);
      MEMORY[0x223DC7E30](v12, -1, -1);
    }

    v19 = [v9 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
    v19 = sub_222B023D8();
    v20 = v16;
    v21 = 1;
    a2(&v19);
    sub_222AB9134(v19, v20, v21);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222AAF4DC(a5, [a1 state] == 0);
  }

  return result;
}

uint64_t sub_222AADF3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v59 = a5;
  v56 = a3;
  v66 = a2;
  v67 = a1;
  v53 = sub_222B021D8();
  v55 = *(v53 - 8);
  v7 = v55[8];
  MEMORY[0x28223BE20](v53, v8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_222B02238();
  v52 = *(v54 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v54, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222B018D8();
  v57 = *(v14 - 8);
  v15 = v57;
  v16 = *(v57 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48 - v22;
  v62 = &v48 - v22;
  sub_222B018C8();
  v48 = *(v5 + 56);
  v24 = *(v15 + 16);
  v51 = v15 + 16;
  v63 = v24;
  v61 = v14;
  v24(v20, v23, v14);
  v25 = *(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  v64 = *(v15 + 32);
  v65 = v15 + 32;
  v64(v26 + ((v25 + 24) & ~v25), v20, v14);
  aBlock[4] = sub_222AB9654;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_72;
  v27 = _Block_copy(aBlock);

  sub_222B02208();
  v68 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  v28 = v49;
  v29 = v53;
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v13, v28, v27);
  _Block_release(v27);
  (v55[1])(v28, v29);
  (*(v52 + 8))(v13, v54);

  v30 = *(v6 + 40);
  v60 = v6;
  v55 = __swift_project_boxed_opaque_existential_1((v6 + 16), v30);
  v54 = *&v67[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark];
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = v61;
  v33 = v62;
  v63(v20, v62, v61);
  v34 = swift_allocObject();
  v35 = v56;
  v34[2] = v66;
  v34[3] = v35;
  v34[4] = v31;
  v64(v34 + ((v25 + 40) & ~v25), v20, v32);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v32;
  v63(v20, v33, v32);
  v38 = (v25 + 64) & ~v25;
  v39 = swift_allocObject();
  v39[2] = v66;
  v39[3] = v35;
  v40 = v59;
  v39[4] = v58;
  v39[5] = v40;
  v41 = v67;
  v39[6] = v67;
  v39[7] = v36;
  v64(v39 + v38, v20, v37);
  v42 = off_2835F86E8[0];
  type metadata accessor for BiomePLSELFStoreReader();
  swift_retain_n();

  v43 = v41;

  v44 = v42(v54, sub_222AB9000, v34, sub_222AB9018, v39);

  v45 = v44;
  v46 = v62;
  sub_222AB3E1C(v62, v45, v60);

  return (*(v57 + 8))(v46, v61);
}

uint64_t sub_222AAE5B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  sub_222AE9C5C(0, 0, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 64) = v7;
  return swift_endAccess();
}

uint64_t sub_222AAE63C(void *a1, uint64_t a2, void (*a3)(id *), uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = &off_2784BA000;
  if ([a1 state])
  {
    v34 = a5;
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v15 = sub_222B02148();
    __swift_project_value_buffer(v15, qword_27D01DE00);
    v16 = a1;
    v17 = sub_222B02128();
    v18 = sub_222B028E8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v19 = 136315138;
      v36 = [v16 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v20 = sub_222B023D8();
      v22 = sub_222A230FC(v20, v21, &v37);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_222A1C000, v17, v18, "Failed to extract turns from SiriPrivateLearningSELFEvent stream, error=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DC7E30](v33, -1, -1);
      v23 = v19;
      v14 = &off_2784BA000;
      MEMORY[0x223DC7E30](v23, -1, -1);
    }

    v37 = [v16 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
    v37 = sub_222B023D8();
    v38 = v24;
    v39 = 1;
    a3(&v37);
    sub_222AB9134(v37, v38, v39);
    (v34)(0);
  }

  else
  {
    v26 = *(a7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
    v25 = *(a7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
    v27 = type metadata accessor for StreamBookmark();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    *v29 = v26;
    *(v29 + 1) = v25;
    *&v28[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = a2;
    v30 = &v28[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
    *v30 = 0;
    v30[8] = 1;
    v35.receiver = v28;
    v35.super_class = v27;

    swift_unknownObjectRetain();
    v31 = objc_msgSendSuper2(&v35, sel_init);
    a5();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222AAF4DC(a9, [a1 v14[131]] == 0);
  }

  return result;
}

uint64_t sub_222AAE980(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = *a1;
  if (*(a1 + 16) == 1)
  {
    v5 = *(a1 + 8);
    v7 = v4;
    v8 = v5;
    v9 = 1;
  }

  else
  {
    v7 = sub_222A84FB0();
    v8 = 0;
    v9 = 0;
  }

  a2(&v7);
  return sub_222AB9134(v7, v8, v9);
}

void sub_222AAE9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 64);
  if (*(v12 + 16))
  {
    v13 = *(a1 + 64);

    v14 = sub_222A26F40(a2);
    if (v15)
    {
      v16 = (*(v12 + 56) + 16 * v14);
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];

      swift_beginAccess();
      swift_unknownObjectRetain();
      v20 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      if (v17)
      {
        v22 = 257;
      }

      else
      {
        v22 = 1;
      }

      if (v18)
      {
        v23 = 0x10000;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23 | v22;
      if (v19)
      {
        v25 = 0x1000000;
      }

      else
      {
        v25 = 0;
      }

      sub_222AE9C5C(v24 | v25, a3, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + 64) = v42;
      swift_endAccess();
      if (v18)
      {
        swift_beginAccess();
        v26 = sub_222ADEF00(a2);
        v28 = v27;
        swift_endAccess();
        sub_222AB8F30(v26, v28);
      }

      if ((v19 & v17) == 1)
      {
        swift_beginAccess();
        v29 = sub_222ADEF00(a2);
        v31 = v30;
        swift_endAccess();
        sub_222AB8F30(v29, v31);
      }

      return;
    }
  }

  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v32 = sub_222B02148();
  __swift_project_value_buffer(v32, qword_27D01DE00);
  (*(v7 + 16))(v11, a2, v6);
  v33 = sub_222B02128();
  v34 = sub_222B028E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 136315138;
    v37 = sub_222B01868();
    v39 = v38;
    (*(v7 + 8))(v11, v6);
    v40 = sub_222A230FC(v37, v39, &v43);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_222A1C000, v33, v34, "Attempting to mark non-existing subscription for key=%s as started", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x223DC7E30](v36, -1, -1);
    MEMORY[0x223DC7E30](v35, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_222AAED9C(uint64_t a1)
{
  v3 = sub_222B021D8();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222B02238();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222B018D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v21[1] = *(v1 + 56);
  (*(v14 + 16))(v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  (*(v14 + 32))(v18 + v17, v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_222AB8F44;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_66;
  v19 = _Block_copy(aBlock);

  sub_222B02208();
  v25 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v12, v7, v19);
  _Block_release(v19);
  (*(v24 + 8))(v7, v3);
  (*(v22 + 8))(v12, v23);
}

void sub_222AAF130(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 64);
  if (*(v10 + 16))
  {
    v11 = *(a1 + 64);

    v12 = sub_222A26F40(a2);
    if (v13)
    {
      v14 = (*(v10 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[2];
      v17 = v14[3];
      v18 = *(v14 + 1);
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_unknownObjectRetain();
      v19 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      if (v16)
      {
        v21 = 0x10000;
      }

      else
      {
        v21 = 0;
      }

      if (v17)
      {
        v22 = 0x1000000;
      }

      else
      {
        v22 = 0;
      }

      sub_222AE9C5C(v21 | v15 | v22 | 0x100, v18, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + 64) = v40;
      swift_endAccess();
      if (v16)
      {
        v23 = v15 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        swift_beginAccess();
        v24 = sub_222ADEF00(a2);
        v26 = v25;
        swift_endAccess();
        sub_222AB8F30(v24, v26);
      }

      if (v17)
      {
        if (v15)
        {
          swift_beginAccess();
          v27 = sub_222ADEF00(a2);
          v29 = v28;
          swift_endAccess();
          sub_222AB8F30(v27, v29);
        }
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v30 = sub_222B02148();
  __swift_project_value_buffer(v30, qword_27D01DE00);
  (*(v5 + 16))(v9, a2, v4);
  v31 = sub_222B02128();
  v32 = sub_222B028E8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    v35 = sub_222B01868();
    v37 = v36;
    (*(v5 + 8))(v9, v4);
    v38 = sub_222A230FC(v35, v37, &v41);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_222A1C000, v31, v32, "Attempting to mark non-existing subscription for key=%s as received", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x223DC7E30](v34, -1, -1);
    MEMORY[0x223DC7E30](v33, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_222AAF4DC(uint64_t a1, int a2)
{
  v23 = a2;
  v4 = sub_222B021D8();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_222B02238();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_222B018D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v24 = *(v2 + 56);
  (*(v15 + 16))(&v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  (*(v15 + 32))(v19 + v18, &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v14);
  *(v19 + v18 + v16) = v23;
  aBlock[4] = sub_222AB8E94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_9;
  v20 = _Block_copy(aBlock);

  sub_222B02208();
  v28 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v13, v8, v20);
  _Block_release(v20);
  (*(v27 + 8))(v8, v4);
  (*(v25 + 8))(v13, v26);
}

void sub_222AAF880(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 64);
  if (*(v12 + 16))
  {
    v13 = *(a1 + 64);

    v14 = sub_222A26F40(a2);
    if (v15)
    {
      v16 = (*(v12 + 56) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v16 + 1);
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_unknownObjectRetain();
      v20 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      if (v18)
      {
        v22 = 256;
      }

      else
      {
        v22 = 0;
      }

      v23 = a3 & 1;
      if (v23)
      {
        v24 = 0x1000000;
      }

      else
      {
        v24 = 0x10000;
      }

      sub_222AE9C5C(v24 | v17 | v22, v19, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + 64) = v38;
      swift_endAccess();
      if (v23)
      {
        if (!v18 || (v17 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (!v17)
      {
LABEL_21:
        swift_unknownObjectRelease();
        return;
      }

      swift_beginAccess();
      v34 = sub_222ADEF00(a2);
      v36 = v35;
      swift_endAccess();
      sub_222AB8F30(v34, v36);
      goto LABEL_21;
    }
  }

  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v25 = sub_222B02148();
  __swift_project_value_buffer(v25, qword_27D01DE00);
  (*(v7 + 16))(v11, a2, v6);
  v26 = sub_222B02128();
  v27 = sub_222B028E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    v30 = sub_222B01868();
    v32 = v31;
    (*(v7 + 8))(v11, v6);
    v33 = sub_222A230FC(v30, v32, &v39);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_222A1C000, v26, v27, "Attempting to mark non-existing subscription for key=%s as completed", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223DC7E30](v29, -1, -1);
    MEMORY[0x223DC7E30](v28, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_222AAFBF0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_222AAFC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = *v3;
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_222AAD6AC(sub_222AB8DDC, v13);
}

uint64_t sub_222AAFDD8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_222AAD6AC(sub_222AB8DC0, v6);
}

uint64_t sub_222AAFE5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_222AADF3C(a1, sub_222AB9688, v12, a4, a5);
}

uint64_t sub_222AAFF08()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DE00);
  v1 = __swift_project_value_buffer(v0, qword_27D01DE00);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AAFFD0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v21 - v5;
  v7 = *a1;
  v8 = sub_222A66E54();
  if (!v8)
  {
    v19 = sub_222B018D8();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 eventMetadata];
  if (v10 && (v11 = v10, v12 = [v10 turnID], v11, v12))
  {
    v13 = sub_222B01798();
    v15 = v14;

    sub_222A67044(v13, v15, v6);
    sub_222A26530(v13, v15);
  }

  else
  {
    v16 = sub_222B018D8();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  v17 = sub_222B018D8();
  v18 = 1;
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
  return v18;
}

uint64_t sub_222AB01C4(void **a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v47 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v47 - v17;
  v19 = *a1;
  v20 = sub_222A66E54();
  if (!v20)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
  }

  v21 = v20;
  v49 = v15;
  v50 = a2;
  v22 = [v20 eventMetadata];
  if (v22 && (v23 = v22, v24 = [v22 turnID], v23, v24))
  {
    v25 = sub_222B01798();
    v48 = v18;
    v27 = v26;

    sub_222A67044(v25, v27, v8);
    v18 = v48;
    sub_222A26530(v25, v27);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  v28 = (*(v10 + 48))(v8, 1, v9);
  v29 = v50;
  if (v28 == 1)
  {
    return sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
  }

  (*(v10 + 32))(v18, v8, v9);
  v48 = v19;
  v30 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v29;
  v32 = v51;
  *v29 = 0x8000000000000000;
  v34 = sub_222A26F40(v18);
  v35 = *(v32 + 16);
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
LABEL_20:
    sub_222B02648();
LABEL_18:
    sub_222B02688();
    return (*(v10 + 8))(v18, v9);
  }

  v38 = v33;
  if (*(v32 + 24) >= v37)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_222A2C4C0();
      v32 = v51;
    }

LABEL_15:
    v42 = *v29;
    *v29 = v32;

    v44 = *v29;
    if ((v38 & 1) == 0)
    {
      v45 = v49;
      (*(v10 + 16))(v49, v18, v9);
      v43 = sub_222AEC4C8(v34, v45, MEMORY[0x277D84F90], v44);
    }

    v46 = (*(v44 + 56) + 8 * v34);
    MEMORY[0x223DC6810](v43);
    if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  sub_222A28C30(v37, isUniquelyReferenced_nonNull_native);
  v32 = v51;
  v39 = sub_222A26F40(v18);
  if ((v38 & 1) == (v40 & 1))
  {
    v34 = v39;
    goto LABEL_15;
  }

  result = sub_222B030B8();
  __break(1u);
  return result;
}

BOOL sub_222AB05A0(uint64_t *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v25 - v12;
  v14 = *a1;
  v15 = *a2;
  type metadata accessor for SignalJoining();
  sub_222AB0A98(*(v14 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) == 1)
  {
    sub_222A34F20(v13, &qword_27D01DE38, &qword_222B0C100);
    return 0;
  }

  else
  {
    v25[3] = v2;
    v19 = *&v13[*(v16 + 48)];
    v20 = sub_222B018D8();
    v21 = (*(v20 - 8) + 8);
    v22 = v13;
    v23 = *v21;
    (*v21)(v22, v20);
    sub_222AB0A98(*(v15 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v10);
    if (v17(v10, 1, v16) == 1)
    {
      sub_222A34F20(v10, &qword_27D01DE38, &qword_222B0C100);
      return 1;
    }

    else
    {
      v24 = *&v10[*(v16 + 48)];
      v23(v10, v20);
      return v19 < v24;
    }
  }
}

uint64_t sub_222AB07D4(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_222A765CC(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_222AB217C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_222AB084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = sub_222A2E3A4(1);
  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);

  if (!v11)
  {
LABEL_7:

LABEL_8:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v12 = sub_222A26F40(a1);
  if ((v13 & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

LABEL_9:
  v15 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE48, &qword_222B0C118);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  MEMORY[0x28223BE20](v16, v17);

  v18 = sub_222ADDA20(sub_222AB9604);

  result = sub_222A96EC4(v18);
  *a3 = v14;
  return result;
}

uint64_t sub_222AB0A08@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_222A26364(1, a2, v6);

  v8 = sub_222AB575C(v7, a3, v6);

  *a4 = v8;
  return result;
}

uint64_t sub_222AB0A98@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v114 - v7;
  v123 = sub_222B018D8();
  v9 = *(v123 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v123, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v114 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v20 = &v114 - v19;
  if (a1 >> 62)
  {
LABEL_61:
    v113 = v18;
    v21 = sub_222B02DC8();
    v18 = v113;
    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
LABEL_38:
      (*(v9 + 56))(v8, 1, 1, v123);
      goto LABEL_39;
    }
  }

  v124 = a1 & 0xC000000000000001;
  v120 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x223DC6F00](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_65:
      swift_once();
      goto LABEL_50;
    }

    v22 = *(a1 + 32);
  }

  v23 = v22;
  v24 = sub_222A66E54();
  if (!v24)
  {

    goto LABEL_38;
  }

  v117 = v16;
  v16 = v24;
  v25 = [v16 eventMetadata];
  if (v25 && (v26 = v25, v27 = [v25 turnID], v26, v27))
  {
    v28 = sub_222B01798();
    v121 = v9;
    v29 = a2;
    v30 = v21;
    v31 = a1;
    v32 = v20;
    v34 = v33;

    sub_222A67044(v28, v34, v8);
    v35 = v34;
    v20 = v32;
    a1 = v31;
    v21 = v30;
    a2 = v29;
    v9 = v121;
    sub_222A26530(v28, v35);
  }

  else
  {
    (*(v9 + 56))(v8, 1, 1, v123);
  }

  if ((*(v9 + 48))(v8, 1, v123) == 1)
  {
LABEL_39:
    sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v62 = sub_222B02148();
    __swift_project_value_buffer(v62, qword_27D01DE00);
    v63 = sub_222B02128();
    v64 = sub_222B028D8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_222A1C000, v63, v64, "Cannot retrieve timestamp, unable to extract turn ID", v65, 2u);
      MEMORY[0x223DC7E30](v65, -1, -1);
    }

LABEL_44:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
    v67 = *(*(v66 - 8) + 56);
    v68 = a2;
    return v67(v68, 1, 1, v66);
  }

  v118 = a2;
  v115 = *(v9 + 32);
  v116 = v9 + 32;
  v115(v20, v8, v123);
  v36 = 0;
  v121 = v9;
  v122 = (a1 & 0xFFFFFFFFFFFFFF8);
  v119 = a1;
  while (1)
  {
    if (v124)
    {
      v37 = MEMORY[0x223DC6F00](v36, a1);
    }

    else
    {
      if (v36 >= v122[2])
      {
        goto LABEL_60;
      }

      v37 = *(a1 + 8 * v36 + 32);
    }

    v8 = v37;
    a2 = (v36 + 1);
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if ([v37 anyEventType] == 6)
    {
      v38 = [v8 payload];
      if (v38)
      {
        v39 = v38;
        v40 = sub_222B01798();
        v42 = v41;

        v43 = sub_222B01788();
        sub_222A26530(v40, v42);
      }

      else
      {
        v43 = 0;
      }

      v45 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

      v44 = [v45 event];
      if (!v44)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v44 = v8;
    }

    v46 = sub_222A250BC(0, &qword_280CB4B80, 0x277D5A800);
    [v44 anyEventType];
    v47 = sub_222B02A28();
    if (!v47 || v46 != v47)
    {
LABEL_26:

LABEL_27:
      v48 = 0;
      goto LABEL_28;
    }

    v49 = [v44 payload];
    if (v49)
    {
      v50 = v49;
      v51 = v21;
      v52 = sub_222B01798();
      v53 = v20;
      v55 = v54;

      v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v57 = sub_222B01788();
      v58 = v52;
      v21 = v51;
      v9 = v121;
      v59 = v55;
      v20 = v53;
      a1 = v119;
      sub_222A26530(v58, v59);
      v60 = v56;
    }

    else
    {
      v60 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v57 = 0;
    }

    v61 = [v60 initWithData_];

    if (!v61)
    {
      goto LABEL_27;
    }

    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    v44 = v61;
    if (!v48)
    {
      goto LABEL_26;
    }

LABEL_28:
    v16 = [v48 deviceDynamicContext];

    if (v16)
    {
      break;
    }

    ++v36;
    if (a2 == v21)
    {
      v21 = 0;
      goto LABEL_49;
    }
  }

  v21 = v8;
  v70 = sub_222A66E54();

  if (v70)
  {
    v71 = [v70 deviceDynamicContext];
    a2 = v118;
    if (v71)
    {
      v72 = v71;
      [v71 timeIntervalSince1970];
      v74 = v73;

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v76 = *(v75 + 48);
      v115(a2, v20, v123);
      *&a2[v76] = v74;
      return (*(*(v75 - 8) + 56))(a2, 0, 1, v75);
    }

    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v93 = sub_222B02148();
    __swift_project_value_buffer(v93, qword_27D01DE00);
    v94 = v117;
    (*(v9 + 16))(v117, v20, v123);
    v95 = sub_222B02128();
    v96 = sub_222B028D8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v120 = v97;
      v98 = swift_slowAlloc();
      v124 = v20;
      v125 = v98;
      v99 = v98;
      *v97 = 136315138;
      sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
      v122 = v21;
      v100 = v123;
      v101 = sub_222B02F38();
      v102 = v100;
      v104 = v103;
      v105 = *(v9 + 8);
      v106 = v94;
      v107 = v102;
      v105(v106, v102);
      v108 = sub_222A230FC(v101, v104, &v125);

      v109 = v120;
      *(v120 + 1) = v108;
      v110 = v109;
      _os_log_impl(&dword_222A1C000, v95, v96, "Cannot retrieve timestamp for the turn %s, unable to extract timestamp", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x223DC7E30](v99, -1, -1);
      MEMORY[0x223DC7E30](v110, -1, -1);

      v105(v124, v107);
    }

    else
    {

      v111 = *(v9 + 8);
      v112 = v123;
      v111(v94, v123);
      v111(v20, v112);
    }

    goto LABEL_44;
  }

LABEL_49:
  v16 = v118;
  if (qword_27D01C528 != -1)
  {
    goto LABEL_65;
  }

LABEL_50:
  v77 = sub_222B02148();
  __swift_project_value_buffer(v77, qword_27D01DE00);
  v78 = v120;
  (*(v9 + 16))(v120, v20, v123);
  v79 = sub_222B02128();
  v80 = sub_222B028D8();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v124 = v20;
    v125 = v82;
    v83 = v82;
    *v81 = 136315138;
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
    v84 = v123;
    v85 = sub_222B02F38();
    v122 = v21;
    v87 = v86;
    v88 = *(v9 + 8);
    v88(v78, v84);
    v89 = sub_222A230FC(v85, v87, &v125);

    *(v81 + 4) = v89;
    _os_log_impl(&dword_222A1C000, v79, v80, "Cannot retrieve timestamp for the turn %s, unable to find DeviceDynamicContext", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x223DC7E30](v83, -1, -1);
    v90 = v81;
    v16 = v118;
    MEMORY[0x223DC7E30](v90, -1, -1);

    v88(v124, v84);
  }

  else
  {

    v91 = *(v9 + 8);
    v92 = v123;
    v91(v78, v123);
    v91(v20, v92);
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
  v67 = *(*(v66 - 8) + 56);
  v68 = v16;
  return v67(v68, 1, 1, v66);
}

uint64_t sub_222AB1648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660) + 48));
  v14 = *v12;
  v13 = v12[1];
  v15 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v13 + 16);
  v28[1] = v3;
  if (v14)
  {

    sub_222AB384C(a2, v15, v16, (v14 + 16), v14 + 32);
    v18 = v17;

    v19 = v18 ^ 1;
  }

  else if (v16)
  {
    v28[3] = a2;
    v23 = *(v7 + 16);
    v21 = v7 + 16;
    v22 = v23;
    v24 = *(v21 + 56);
    v25 = (v21 - 8);
    v26 = v16 - 1;
    do
    {
      v27 = v26;
      v22(v11, v15, v6);
      sub_222AB93EC(&qword_280CB8300, MEMORY[0x277CC95F0]);
      v19 = sub_222B02338();
      (*v25)(v11, v6);
      if (v19)
      {
        break;
      }

      v26 = v27 - 1;
      v15 += v24;
    }

    while (v27);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void sub_222AB183C(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222AB4A68(a2, a1);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v14 = sub_222B02148();
  __swift_project_value_buffer(v14, qword_280CBC458);
  (*(v8 + 16))(v12, a1, v7);

  v15 = sub_222B02128();
  v16 = sub_222B028D8();
  if (os_log_type_enabled(v15, v16))
  {
    v26 = a3;
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v17 = 134218242;
    v27 = v3;
    if (v13 >> 62)
    {
      v18 = sub_222B02DC8();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    *(v17 + 12) = 2080;
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
    v19 = sub_222B02F38();
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = sub_222A230FC(v19, v21, &v28);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_222A1C000, v15, v16, "#extractTurn: Found %ld events for request id %s", v17, 0x16u);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DC7E30](v23, -1, -1);
    MEMORY[0x223DC7E30](v17, -1, -1);

    a3 = v26;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  *a3 = v13;
}

uint64_t sub_222AB1B24()
{
  v0 = type metadata accessor for DefaultInteractionReader();
  v1 = swift_allocObject();
  v2 = type metadata accessor for BiomeQuerying();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  result = sub_222B01A48();
  *(v1 + 16) = v5;
  qword_280CB8D80 = v0;
  unk_280CB8D88 = &protocol witness table for DefaultInteractionReader;
  qword_280CB8D68 = v1;
  return result;
}

uint64_t DefaultInteractionReader.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for BiomeQuerying();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222B01A48();
  *(v0 + 16) = v4;
  return v0;
}

uint64_t static DefaultInteractionReader.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280CB8D60 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_222A42E40(&qword_280CB8D68, v1);
}

uint64_t DefaultInteractionReader.init()()
{
  v1 = type metadata accessor for BiomeQuerying();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222B01A48();
  *(v0 + 16) = v4;
  return v0;
}

uint64_t DefaultInteractionReader.__allocating_init(biomeBasePath:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = type metadata accessor for BiomeQuerying();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 16) = sub_222AF8C34(a1, a2);
  return v4;
}

uint64_t DefaultInteractionReader.init(biomeBasePath:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BiomeQuerying();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_222AF8C34(a1, a2);
  return v3;
}

void sub_222AB1DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  sub_222AF8E18(a1, a2, a3);
  if (v4)
  {
    v7 = v4;
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v8 = sub_222B02148();
    __swift_project_value_buffer(v8, qword_27D01DE00);
    v9 = v4;
    v10 = sub_222B02128();
    v11 = sub_222B028E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      v14 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v15 = sub_222B023D8();
      v17 = sub_222A230FC(v15, v16, &v29);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_222A1C000, v10, v11, "Cannot read interactions, error=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DC7E30](v13, -1, -1);
      MEMORY[0x223DC7E30](v12, -1, -1);
    }

    v29 = v4;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v19 = sub_222B023D8();
    v21 = v20;
    sub_222AB89B0();
    swift_allocError();
    *v22 = v19;
    v22[1] = v21;
    swift_willThrow();
  }

  else
  {
    v23 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE28, &qword_222B0BD88);
    v24 = swift_allocObject();
    v24[6] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0);
    v27 = *(v23 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v24[2] = v25;
    v24[3] = v26;
    v24[4] = v28;
    v24[5] = v26;
  }
}

uint64_t DefaultInteractionReader.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DefaultInteractionReader.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222AB217C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222B02F18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Turn();
        v6 = sub_222B02668();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_222AB2598(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_222AB2280(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_222AB2280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11, v14);
  v46 = &v39 - v16;
  v40 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    type metadata accessor for SignalJoining();
    v45 = v17;
    v18 = (v17 + 8 * a3 - 8);
    v19 = a1 - a3;
    v44 = v13;
LABEL_6:
    v42 = v18;
    v43 = a3;
    v20 = *(v45 + 8 * a3);
    v41 = v19;
    v21 = v46;
    while (1)
    {
      v49 = v19;
      v22 = *v18;
      v23 = *(v20 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

      v24 = v22;

      sub_222AB0A98(v23, v21);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v26 = *(*(v25 - 8) + 48);
      if (v26(v21, 1, v25) == 1)
      {
        sub_222A34F20(v21, &qword_27D01DE38, &qword_222B0C100);

LABEL_5:
        a3 = v43 + 1;
        v18 = v42 + 1;
        v19 = v41 - 1;
        if (v43 + 1 == v40)
        {
          return result;
        }

        goto LABEL_6;
      }

      v27 = *&v21[*(v25 + 48)];
      v28 = sub_222B018D8();
      v29 = v21;
      v30 = v28;
      v31 = *(v28 - 8);
      v32 = *(v31 + 8);
      v47 = v31 + 8;
      v48 = v32;
      v32(v29, v28);
      v33 = *(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);
      v34 = v44;
      sub_222AB0A98(v33, v44);
      if (v26(v34, 1, v25) == 1)
      {
        sub_222A34F20(v34, &qword_27D01DE38, &qword_222B0C100);

        v21 = v46;
        v35 = v49;
      }

      else
      {
        v36 = *&v34[*(v25 + 48)];
        v48(v34, v30);

        v21 = v46;
        v35 = v49;
        if (v27 >= v36)
        {
          goto LABEL_5;
        }
      }

      if (!v45)
      {
        break;
      }

      v37 = *v18;
      v20 = v18[1];
      *v18 = v20;
      v18[1] = v37;
      --v18;
      v38 = __CFADD__(v35, 1);
      v19 = v35 + 1;
      if (v38)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222AB2598(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v119 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  result = MEMORY[0x28223BE20](v17, v18);
  v129 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_105:
    v30 = *v122;
    if (!*v122)
    {
      goto LABEL_146;
    }

    v27 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v27;
LABEL_108:
      v140 = result;
      v27 = *(result + 16);
      if (v27 >= 2)
      {
        while (*v129)
        {
          v115 = *(result + 16 * v27);
          v116 = result;
          v117 = *(result + 16 * (v27 - 1) + 40);
          sub_222AB30B4((*v129 + 8 * v115), (*v129 + 8 * *(result + 16 * (v27 - 1) + 32)), (*v129 + 8 * v117), v30);
          if (v5)
          {
          }

          if (v117 < v115)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_222AB3838(v116);
          }

          if (v27 - 2 >= *(v116 + 2))
          {
            goto LABEL_134;
          }

          v118 = &v116[16 * v27];
          *v118 = v115;
          *(v118 + 1) = v117;
          v140 = v116;
          sub_222AB37AC(v27 - 1);
          result = v140;
          v27 = *(v140 + 16);
          if (v27 <= 1)
          {
          }
        }

        goto LABEL_144;
      }
    }

LABEL_140:
    result = sub_222AB3838(v27);
    goto LABEL_108;
  }

  v126 = &v119 - v20;
  v123 = v22;
  v131 = v21;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v121 = a4;
  v134 = v15;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v124 = v24;
    if (v24 + 1 >= v23)
    {
      v30 = v24 + 1;
    }

    else
    {
      v136 = v23;
      v120 = v25;
      v28 = *v129;
      v29 = *(*v129 + 8 * v27);
      v138 = *(*v129 + 8 * v24);
      v139 = v29;

      LODWORD(v135) = sub_222AB05A0(&v139, &v138);
      if (v5)
      {
      }

      v30 = v24 + 2;
      if (v24 + 2 < v136)
      {
        type metadata accessor for SignalJoining();
        v27 = v28 + 8 * v24 + 16;
        v127 = 0;
        while (1)
        {
          v130 = v30;
          v31 = *(v27 - 8);
          v32 = *(*v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

          v137 = v31;

          v33 = v126;
          sub_222AB0A98(v32, v126);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
          v35 = *(*(v34 - 8) + 48);
          if (v35(v33, 1, v34) == 1)
          {
            sub_222A34F20(v33, &qword_27D01DE38, &qword_222B0C100);

            v5 = v127;
            if (v135)
            {
              v30 = v130;
              v27 = (v130 - 1);
              v25 = v120;
              a4 = v121;
              v15 = v134;
              if (v130 < v26)
              {
                goto LABEL_137;
              }

              goto LABEL_21;
            }
          }

          else
          {
            v36 = *&v33[*(v34 + 48)];
            v37 = sub_222B018D8();
            v38 = *(v37 - 8);
            v39 = *(v38 + 8);
            v132 = v38 + 8;
            v133 = v39;
            (v39)(v33, v37);
            v40 = v123;
            sub_222AB0A98(*&v137[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events], v123);
            if (v35(v40, 1, v34) == 1)
            {
              sub_222A34F20(v40, &qword_27D01DE38, &qword_222B0C100);

              v5 = v127;
              v26 = v124;
              if ((v135 & 1) == 0)
              {
                v25 = v120;
                a4 = v121;
                v15 = v134;
                v30 = v130;
                goto LABEL_22;
              }
            }

            else
            {
              v41 = *&v40[*(v34 + 48)];
              (v133)(v40, v37);

              v5 = v127;
              v26 = v124;
              if (((v135 ^ (v36 >= v41)) & 1) == 0)
              {
                v30 = v130;
                v27 = (v130 - 1);
LABEL_18:
                a4 = v121;
                break;
              }
            }
          }

          v30 = (v130 + 1);
          v27 += 8;
          if (v136 == v130 + 1)
          {
            v27 = v130;
            v30 = v136;
            goto LABEL_18;
          }
        }
      }

      v25 = v120;
      v15 = v134;
      if (v135)
      {
        if (v30 < v26)
        {
          goto LABEL_137;
        }

LABEL_21:
        if (v26 <= v27)
        {
          v63 = 8 * v30 - 8;
          v64 = 8 * v26;
          v65 = v30;
          v66 = v26;
          do
          {
            if (v66 != --v65)
            {
              v68 = *v129;
              if (!*v129)
              {
                goto LABEL_143;
              }

              v67 = *(v68 + v64);
              *(v68 + v64) = *(v68 + v63);
              *(v68 + v63) = v67;
            }

            ++v66;
            v63 -= 8;
            v64 += 8;
          }

          while (v66 < v65);
        }
      }
    }

LABEL_22:
    v42 = v129[1];
    if (v30 < v42)
    {
      if (__OFSUB__(v30, v26))
      {
        goto LABEL_136;
      }

      if (v30 - v26 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v30 < v26)
    {
      goto LABEL_135;
    }

    v69 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v69;
    }

    else
    {
      result = sub_222AA8B74(0, *(v69 + 16) + 1, 1, v69);
      v25 = result;
    }

    v27 = *(v25 + 16);
    v70 = *(v25 + 24);
    v71 = v27 + 1;
    if (v27 >= v70 >> 1)
    {
      result = sub_222AA8B74((v70 > 1), v27 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 16) = v71;
    v72 = v25 + 16 * v27;
    *(v72 + 32) = v26;
    *(v72 + 40) = v30;
    v24 = v30;
    v30 = *v122;
    if (!*v122)
    {
      goto LABEL_145;
    }

    if (v27)
    {
      while (1)
      {
        v73 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v74 = *(v25 + 32);
          v75 = *(v25 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_70:
          if (v77)
          {
            goto LABEL_124;
          }

          v90 = (v25 + 16 * v71);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_127;
          }

          v96 = (v25 + 32 + 16 * v73);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_131;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v71 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v100 = (v25 + 16 * v71);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_84:
        if (v95)
        {
          goto LABEL_126;
        }

        v103 = v25 + 16 * v73;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_91:
        v27 = v73 - 1;
        if (v73 - 1 >= v71)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v129)
        {
          goto LABEL_142;
        }

        v111 = v25;
        v112 = *(v25 + 32 + 16 * v27);
        v113 = *(v25 + 32 + 16 * v73 + 8);
        sub_222AB30B4((*v129 + 8 * v112), (*v129 + 8 * *(v25 + 32 + 16 * v73)), (*v129 + 8 * v113), v30);
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_222AB3838(v111);
        }

        if (v27 >= *(v111 + 2))
        {
          goto LABEL_121;
        }

        v114 = &v111[16 * v27];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        v140 = v111;
        result = sub_222AB37AC(v73);
        v25 = v140;
        v71 = *(v140 + 16);
        v15 = v134;
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v25 + 32 + 16 * v71;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_122;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_123;
      }

      v85 = (v25 + 16 * v71);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_125;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_128;
      }

      if (v89 >= v81)
      {
        v107 = (v25 + 32 + 16 * v73);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_132;
        }

        if (v76 < v110)
        {
          v73 = v71 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v23 = v129[1];
    a4 = v121;
    if (v24 >= v23)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v26, a4))
  {
    goto LABEL_138;
  }

  if (v26 + a4 < v42)
  {
    v42 = (v26 + a4);
  }

  if (v42 < v26)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v30 == v42)
  {
    goto LABEL_50;
  }

  v125 = v42;
  v120 = v25;
  v127 = v5;
  v43 = *v129;
  type metadata accessor for SignalJoining();
  v132 = v43;
  v44 = (v43 + 8 * v30 - 8);
  v45 = (v26 - v30);
LABEL_33:
  v130 = v30;
  v47 = *(v132 + 8 * v30);
  v48 = v45;
  v128 = v44;
  v133 = v45;
  while (1)
  {
    v137 = v48;
    v49 = *v44;
    v50 = *(v47 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

    sub_222AB0A98(v50, v15);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v27 = v52 + 48;
    if (v53(v15, 1, v51) == 1)
    {
      sub_222A34F20(v15, &qword_27D01DE38, &qword_222B0C100);

      v46 = v133;
      goto LABEL_32;
    }

    v54 = *&v15[*(v51 + 48)];
    v55 = sub_222B018D8();
    v56 = *(v55 - 8);
    v57 = *(v56 + 8);
    v135 = v56 + 8;
    v136 = v57;
    (v57)(v15, v55);
    v58 = v131;
    sub_222AB0A98(*(v49 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v131);
    if (v53(v58, 1, v51) == 1)
    {
      sub_222A34F20(v58, &qword_27D01DE38, &qword_222B0C100);

      goto LABEL_38;
    }

    v59 = *&v58[*(v51 + 48)];
    (v136)(v58, v55);

    if (v54 >= v59)
    {
      v46 = v133;
      v15 = v134;
LABEL_32:
      v30 = (v130 + 1);
      v44 = v128 + 1;
      v45 = v46 - 1;
      if (v130 + 1 == v125)
      {
        v26 = v124;
        v30 = v125;
        v5 = v127;
        v25 = v120;
        goto LABEL_50;
      }

      goto LABEL_33;
    }

LABEL_38:
    v46 = v133;
    v15 = v134;
    v60 = v137;
    if (!v132)
    {
      break;
    }

    v61 = *v44;
    v47 = v44[1];
    *v44 = v47;
    v44[1] = v61;
    --v44;
    v62 = __CFADD__(v60, 1);
    v48 = v60 + 1;
    if (v62)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_222AB30B4(char *a1, char *a2, char *a3, char *a4)
{
  v70 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v62 = &v59 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  MEMORY[0x28223BE20](v17, v18);
  v21 = &v59 - v20;
  v22 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v22 = a2 - a1;
  }

  v23 = v22 >> 3;
  v68 = a3;
  v24 = a3 - a2;
  v25 = v24 / 8;
  if (v22 >> 3 < v24 / 8)
  {
    v26 = a1;
    v65 = v19;
    if (v70 != a1 || &a1[8 * v23] <= v70)
    {
      memmove(v70, a1, 8 * v23);
    }

    v69 = &v70[8 * v23];
    if (a2 - a1 < 8 || a2 >= v68)
    {
      v43 = a1;
      v28 = v69;
      goto LABEL_46;
    }

    v27 = a2;
    type metadata accessor for SignalJoining();
    v28 = v69;
    v63 = v21;
    while (1)
    {
      v67 = v27;
      v29 = *v70;
      v30 = *(*v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

      sub_222AB0A98(v30, v21);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v32 = *(*(v31 - 8) + 48);
      if (v32(v21, 1, v31) == 1)
      {
        break;
      }

      v64 = v26;
      v34 = *&v21[*(v31 + 48)];
      v35 = sub_222B018D8();
      v36 = *(v35 - 8);
      v37 = *(v36 + 8);
      v38 = v21;
      v39 = v37;
      v66 = v36 + 8;
      v37(v38, v35);
      v40 = v65;
      sub_222AB0A98(*(v29 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v65);
      if (v32(v40, 1, v31) == 1)
      {
        sub_222A34F20(v40, &qword_27D01DE38, &qword_222B0C100);

        v27 = v67;
        v21 = v63;
        v26 = v64;
        v28 = v69;
      }

      else
      {
        v41 = *&v40[*(v31 + 48)];
        v39(v40, v35);

        v27 = v67;
        v21 = v63;
        v26 = v64;
        v28 = v69;
        if (v34 >= v41)
        {
          goto LABEL_12;
        }
      }

      v33 = v27;
      v42 = v26 == v27;
      v27 += 8;
      if (!v42)
      {
        goto LABEL_13;
      }

LABEL_14:
      v26 += 8;
      if (v70 >= v28 || v27 >= v68)
      {
        v43 = v26;
        goto LABEL_46;
      }
    }

    sub_222A34F20(v21, &qword_27D01DE38, &qword_222B0C100);

    v27 = v67;
LABEL_12:
    v33 = v70;
    v70 += 8;
    if (v26 == v33)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v26 = *v33;
    goto LABEL_14;
  }

  v64 = a1;
  v43 = a2;
  if (v70 != a2 || &a2[8 * v25] <= v70)
  {
    memmove(v70, a2, 8 * v25);
  }

  v28 = &v70[8 * v25];
  v44 = v62;
  if (v24 < 8 || v43 <= v64)
  {
    goto LABEL_46;
  }

  type metadata accessor for SignalJoining();
  v45 = v68;
  v60 = v12;
  do
  {
    v67 = v43;
    v43 -= 8;
    v45 -= 8;
    v46 = v28;
    v61 = v43;
    while (1)
    {
      v69 = v28;
      v47 = *(v46 - 1);
      v65 = v46 - 8;
      v48 = *v43;
      v49 = *&v47[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events];

      v66 = v48;

      sub_222AB0A98(v49, v44);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v51 = *(*(v50 - 8) + 48);
      if (v51(v44, 1, v50) == 1)
      {
        sub_222A34F20(v44, &qword_27D01DE38, &qword_222B0C100);

        v28 = v69;
        goto LABEL_35;
      }

      v63 = v47;
      v68 = v45;
      v52 = *&v44[*(v50 + 48)];
      v53 = sub_222B018D8();
      v54 = *(*(v53 - 8) + 8);
      v54(v44, v53);
      v55 = v60;
      sub_222AB0A98(*(v66 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v60);
      if (v51(v55, 1, v50) == 1)
      {
        break;
      }

      v56 = *&v55[*(v50 + 48)];
      v54(v55, v53);

      v57 = v64;
      v45 = v68;
      v28 = v69;
      v43 = v61;
      v44 = v62;
      if (v52 < v56)
      {
        goto LABEL_38;
      }

LABEL_35:
      v46 = v65;
      if (v45 + 8 != v28)
      {
        *v45 = *v65;
      }

      v45 -= 8;
      v28 = v46;
      if (v46 <= v70)
      {
        v28 = v46;
        v43 = v67;
        goto LABEL_46;
      }
    }

    sub_222A34F20(v55, &qword_27D01DE38, &qword_222B0C100);

    v57 = v64;
    v45 = v68;
    v28 = v69;
    v43 = v61;
    v44 = v62;
LABEL_38:
    if (v45 + 8 != v67)
    {
      *v45 = *v43;
    }
  }

  while (v28 > v70 && v43 > v57);
LABEL_46:
  if (v43 != v70 || v43 >= &v70[(v28 - v70 + (v28 - v70 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v43, v70, 8 * ((v28 - v70) / 8));
  }

  return 1;
}

uint64_t sub_222AB37AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_222AB3838(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_222AB384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v32 = a2;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_222AB93EC(&qword_280CBA1F0, MEMORY[0x277CC95F0]);
  v31[1] = a1;
  result = sub_222B022E8();
  v16 = 1 << *a4;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v18 & result;
    v20 = sub_222B01E48();
    *&v37 = a4;
    *(&v37 + 1) = a5;
    *&v38 = v19;
    *(&v38 + 1) = v20;
    *&v39 = v21;
    *(&v39 + 1) = v22;
    v40 = 0;
    v23 = sub_222B01E68();
    if ((v24 & 1) == 0)
    {
      v27 = *(v9 + 16);
      v26 = v9 + 16;
      v25 = v27;
      v28 = *(v26 + 56);
      do
      {
        v25(v13, v32 + v28 * v23, v8);
        sub_222AB93EC(&qword_280CB8300, MEMORY[0x277CC95F0]);
        v29 = sub_222B02338();
        (*(v26 - 8))(v13, v8);
        if (v29)
        {
          break;
        }

        sub_222B01E88();
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v23 = sub_222B01E68();
      }

      while ((v30 & 1) == 0);
    }

    return v23;
  }

  return result;
}

uint64_t sub_222AB3AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_222AB3AD0, 0, 0);
}

uint64_t sub_222AB3AD0()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  v3 = *(v2 + 16);
  sub_222B02E18();
  v4 = v0[5];
  swift_endAccess();
  *v1 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_222AB3B60(uint64_t a1, uint64_t a2)
{
  v19 = sub_222B02988();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v19, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222B02968();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_222B02238();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v21[3] = type metadata accessor for BiomePLSELFStoreReader();
  v21[4] = &off_2835F86D8;
  v21[0] = a1;
  v15 = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  v18[1] = "actionReader";
  v18[2] = v15;
  sub_222B021F8();
  v20 = MEMORY[0x277D84F90];
  sub_222AB93EC(&unk_280CBA210, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A352E8(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v19);
  *(a2 + 56) = sub_222B029A8();
  sub_222A42E40(v21, a2 + 16);
  v16 = sub_222A3A6A0(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_0(v21);
  *(a2 + 64) = v16;
  return a2;
}

uint64_t sub_222AB3E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a2;
  v5 = sub_222B021D8();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B02238();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222B018D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v25[1] = *(a3 + 56);
  (*(v16 + 16))(v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  (*(v16 + 32))(v20 + v19, v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v21 = v25[0];
  *(v20 + ((v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25[0];
  aBlock[4] = sub_222AB90A4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_88;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  sub_222B02208();
  v29 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v14, v9, v22);
  _Block_release(v22);
  (*(v28 + 8))(v9, v5);
  (*(v26 + 8))(v14, v27);
}

uint64_t sub_222AB41D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v72 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v83 = &v72 - v17;
  v18 = *(a1 + 24);
  v73 = sub_222ADF14C(1, a2);
  v78 = a1;
  v19 = *(a1 + 32);
  swift_beginAccess();
  v72 = sub_222ADEE38(a2);
  swift_endAccess();
  v20 = 0;
  v21 = 0;
  v23 = *(v10 + 16);
  v22 = v10 + 16;
  v80 = 0x8000000222B0FEB0;
  v81 = v23;
  v79 = (v10 + 48);
  v76 = (v10 + 8);
  v77 = (v10 + 32);
  *&v24 = 136315138;
  v74 = v24;
  v75 = v9;
  do
  {
    LODWORD(v25) = v20;
    v26 = *(&unk_2835F19E0 + v21 + 32);
    v81(v15, a2, v9);
    if (v26)
    {
      v27 = 0x6964654D73756C50;
    }

    else
    {
      v27 = 0xD000000000000018;
    }

    if (v26)
    {
      v28 = 0xE900000000000061;
    }

    else
    {
      v28 = v80;
    }

    sub_222A584E8(v15, v8);
    if ((*v79)(v8, 1, v9) != 1)
    {
      v82 = v25;
      (*v77)(v83, v8, v9);
      v25 = *(v78 + 16);
      swift_beginAccess();
      v41 = *(v25 + 16);
      if (*(v41 + 16) && (v42 = sub_222A2E3A4(1), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);

        if (!*(v44 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v44 = sub_222A392B0(MEMORY[0x277D84F90]);
        if (!*(v44 + 16))
        {
          goto LABEL_22;
        }
      }

      v45 = sub_222A26F40(a2);
      if (v46)
      {
        v47 = *(*(v44 + 56) + 8 * v45);

LABEL_23:
        sub_222ADF238(19, v83);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = v44;
        sub_222AE8CDC(v47, a2, isUniquelyReferenced_nonNull_native);
        v50 = v85[0];
        swift_beginAccess();

        v51 = *(v25 + 16);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v84 = *(v25 + 16);
        *(v25 + 16) = 0x8000000000000000;
        sub_222AE8CB0(v50, 1, v52);
        *(v25 + 16) = v84;
        swift_endAccess();

        v53 = *(v25 + 16);
        if (*(v53 + 16) && (v54 = sub_222A2E3A4(19), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 8 * v54);

          if (!*(v56 + 16))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v56 = sub_222A392B0(MEMORY[0x277D84F90]);
          if (!*(v56 + 16))
          {
            goto LABEL_30;
          }
        }

        v57 = sub_222A26F40(v83);
        if (v58)
        {
          v59 = *(*(v56 + 56) + 8 * v57);

LABEL_31:
          sub_222ADF238(1, a2);

          v61 = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = v56;
          v62 = v83;
          sub_222AE8CDC(v59, v83, v61);
          v63 = v85[0];
          swift_beginAccess();

          v64 = *(v25 + 16);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v84 = *(v25 + 16);
          *(v25 + 16) = 0x8000000000000000;
          sub_222AE8CB0(v63, 19, v65);
          *(v25 + 16) = v84;
          swift_endAccess();

          (*v76)(v62, v9);

          LOBYTE(v25) = v82;
          goto LABEL_3;
        }

LABEL_30:
        v60 = sub_222A39498(MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CCC0, &qword_222B04E18);
        v59 = swift_allocObject();
        *(v59 + 16) = v60;
        goto LABEL_31;
      }

LABEL_22:
      v48 = sub_222A39498(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CCC0, &qword_222B04E18);
      v47 = swift_allocObject();
      *(v47 + 16) = v48;
      goto LABEL_23;
    }

    sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v29 = sub_222B02148();
    __swift_project_value_buffer(v29, qword_280CBC458);
    v30 = sub_222B02128();
    v31 = sub_222B028E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v82 = v25;
      v25 = v32;
      v33 = v8;
      v34 = v15;
      v35 = v22;
      v36 = a2;
      v37 = swift_slowAlloc();
      v85[0] = v37;
      *v25 = v74;
      v38 = sub_222A230FC(v27, v28, v85);

      *(v25 + 4) = v38;
      _os_log_impl(&dword_222A1C000, v30, v31, "Failed to generate a plus id for domain %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v39 = v37;
      a2 = v36;
      v22 = v35;
      v15 = v34;
      v8 = v33;
      v9 = v75;
      MEMORY[0x223DC7E30](v39, -1, -1);
      v40 = v25;
      LOBYTE(v25) = v82;
      MEMORY[0x223DC7E30](v40, -1, -1);
    }

LABEL_3:
    v20 = 1;
    v21 = 1u;
  }

  while ((v25 & 1) == 0);
  if (v72)
  {
    v66 = v72;
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v67 = *(v78 + 16);
  v68 = sub_222A2604C(1, a2);
  v69 = sub_222A2604C(43, a2);
  v85[0] = v73;
  sub_222A96EC4(v66);
  v70 = v85[0];
  sub_222AF5CEC(v69, v68);

  return v70;
}

uint64_t sub_222AB4908(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21 - v12;
  v22 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v10, v18, v4);
      sub_222AE4114(v13, v10);
      (*(v15 - 8))(v13, v4);
      v18 += v19;
      --v14;
    }

    while (v14);
    return v22;
  }

  return a2;
}

uint64_t sub_222AB4A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v111 = *(v4 - 8);
  v5 = v111[8];
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v110 = &v98 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v98 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v109 = &v98 - v18;
  v19 = sub_222AB41D0(a1, a2);
  v21 = v20;
  v126 = v19;
  swift_beginAccess();
  v22 = *(v21 + 16);

  v24 = 0;
  v25 = sub_222AAAAE8(v23);

  v26 = sub_222AAC90C(v25, a1);

  v125 = v26;
  swift_beginAccess();
  v117 = a1;
  v27 = *(a1 + 40);
  if (*(v27 + 16))
  {
    v28 = *(a1 + 40);

    v29 = sub_222A26F40(a2);
    if (v30)
    {
      v31 = *(*(v27 + 56) + 8 * v29);
    }

    else
    {
      v31 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  v32 = *(v21 + 16);
  if (*(v32 + 16))
  {
    v33 = sub_222A2E3A4(43);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v36 = sub_222AB4908(v35, v31);

  if (*(v36 + 16) == 1)
  {
    v39 = 0;
    v40 = v36 + 56;
    v41 = 1 << *(v36 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & *(v36 + 56);
    v44 = (v41 + 63) >> 6;
    v107 = v111 + 4;
    v118 = (v111 + 1);
    *&v38 = 136315394;
    v98 = v38;
    v106 = v4;
    v105 = v9;
    v108 = v16;
    v102 = v36 + 56;
    v101 = v44;
    v99 = a2;
    v104 = v21;
    v103 = v36;
    v100 = v111 + 2;
    while (v43)
    {
LABEL_24:
      v116 = v24;
      v114 = v43;
      v115 = v39;
      v49 = v111;
      v50 = *(v36 + 48) + v111[9] * (__clz(__rbit64(v43)) | (v39 << 6));
      v51 = v111[2];
      v52 = v109;
      v51(v109, v50, v4);
      (v49[4])(v16, v52, v4);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v53 = sub_222B02148();
      __swift_project_value_buffer(v53, qword_280CBC458);
      v54 = v110;
      v51(v110, v16, v4);
      v51(v9, a2, v4);
      v55 = sub_222B02128();
      v56 = v4;
      v57 = v9;
      v58 = sub_222B028D8();
      if (os_log_type_enabled(v55, v58))
      {
        v59 = v54;
        v60 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v124 = v123;
        *v60 = v98;
        sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0]);
        LODWORD(v122) = v58;
        v61 = sub_222B02F38();
        v63 = v62;
        v64 = *v118;
        v65 = v59;
        v16 = v108;
        (*v118)(v65, v4);
        v66 = sub_222A230FC(v61, v63, &v124);

        *(v60 + 4) = v66;
        *(v60 + 12) = 2080;
        v67 = sub_222B02F38();
        v69 = v68;
        v113 = v64;
        v64(v57, v56);
        v70 = sub_222A230FC(v67, v69, &v124);

        *(v60 + 14) = v70;
        _os_log_impl(&dword_222A1C000, v55, v122, "#extractTurn: Found sub-request ID: %s for request id %s.", v60, 0x16u);
        v71 = v123;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v71, -1, -1);
        MEMORY[0x223DC7E30](v60, -1, -1);
      }

      else
      {

        v72 = *v118;
        (*v118)(v9, v4);
        v113 = v72;
        v72(v54, v4);
      }

      v45 = v117;
      v73 = sub_222AB41D0(v117, v16);
      v75 = v74;
      sub_222A96EC4(v73);
      swift_beginAccess();
      v112 = v75;
      v76 = *(v75 + 16);
      v77 = *(v76 + 16);
      if (v77)
      {
        v124 = MEMORY[0x277D84F90];

        sub_222A23B04(0, v77, 0);
        v78 = v124;
        v79 = v76 + 64;
        v80 = -1 << *(v76 + 32);
        result = sub_222B02BC8();
        v81 = result;
        v82 = 0;
        v83 = *(v76 + 36);
        v119 = v76 + 72;
        v120 = v77;
        v121 = v83;
        v122 = v76 + 64;
        while ((v81 & 0x8000000000000000) == 0 && v81 < 1 << *(v76 + 32))
        {
          v85 = v81 >> 6;
          if ((*(v79 + 8 * (v81 >> 6)) & (1 << v81)) == 0)
          {
            goto LABEL_53;
          }

          if (v83 != *(v76 + 36))
          {
            goto LABEL_54;
          }

          v123 = v82;
          v86 = *(*(v76 + 48) + 4 * v81);
          v87 = *(*(v76 + 56) + 8 * v81);
          v124 = v78;
          v88 = *(v78 + 16);
          v89 = *(v78 + 24);

          if (v88 >= v89 >> 1)
          {
            result = sub_222A23B04((v89 > 1), v88 + 1, 1);
            v78 = v124;
          }

          *(v78 + 16) = v88 + 1;
          v90 = v78 + 16 * v88;
          *(v90 + 32) = v86;
          *(v90 + 40) = v87;
          v84 = 1 << *(v76 + 32);
          if (v81 >= v84)
          {
            goto LABEL_55;
          }

          v79 = v122;
          v91 = *(v122 + 8 * v85);
          if ((v91 & (1 << v81)) == 0)
          {
            goto LABEL_56;
          }

          LODWORD(v83) = v121;
          if (v121 != *(v76 + 36))
          {
            goto LABEL_57;
          }

          v92 = v91 & (-2 << (v81 & 0x3F));
          if (v92)
          {
            v84 = __clz(__rbit64(v92)) | v81 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v93 = v85 << 6;
            v94 = v85 + 1;
            v95 = (v119 + 8 * v85);
            while (v94 < (v84 + 63) >> 6)
            {
              v97 = *v95++;
              v96 = v97;
              v93 += 64;
              ++v94;
              if (v97)
              {
                result = sub_222A965F4(v81, v121, 0);
                v84 = __clz(__rbit64(v96)) + v93;
                goto LABEL_32;
              }
            }

            result = sub_222A965F4(v81, v121, 0);
          }

LABEL_32:
          v82 = v123 + 1;
          v81 = v84;
          if (v123 + 1 == v120)
          {

            a2 = v99;
            v45 = v117;
            v16 = v108;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v78 = MEMORY[0x277D84F90];
      a2 = v99;
LABEL_18:
      v46 = v114;

      v24 = v116;
      v47 = sub_222AAC90C(v78, v45);

      sub_222A96EC4(v47);

      v4 = v106;
      result = (v113)(v16, v106);
      v43 = (v46 - 1) & v46;
      v9 = v105;
      v36 = v103;
      v39 = v115;
      v40 = v102;
      v44 = v101;
    }

    while (1)
    {
      v48 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v48 >= v44)
      {

        goto LABEL_51;
      }

      v43 = *(v40 + 8 * v48);
      ++v39;
      if (v43)
      {
        v39 = v48;
        goto LABEL_24;
      }
    }

LABEL_58:
    __break(1u);
  }

  else
  {

LABEL_51:
    v124 = v126;
    sub_222A96EC4(v125);

    return v124;
  }

  return result;
}

uint64_t sub_222AB53EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v36 = *(a1 + 16);
  if (!v36)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = 0;
  v8 = *(sub_222B018D8() - 8);
  v9 = MEMORY[0x277D84F90];
  v35 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v34 = *(v8 + 72);
  while (1)
  {
    v11 = v5;
    a4(&v42, v35 + v34 * v7, a2, a3);
    if (v5)
    {

      return v9;
    }

    v12 = v42;
    v13 = v42 >> 62;
    v14 = v42 >> 62 ? sub_222B02DC8() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      v32 = sub_222B02DC8();
      v17 = v32 + v14;
      if (__OFADD__(v32, v14))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v15)
      {
        goto LABEL_17;
      }

      v18 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v15)
      {
LABEL_17:
        sub_222B02DC8();
        goto LABEL_18;
      }

      v18 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = *(v18 + 16);
LABEL_18:
    result = sub_222B02CC8();
    v9 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v21 >> 1) - v20) < v14)
    {
      goto LABEL_40;
    }

    v40 = v9;
    v24 = v18 + 8 * v20 + 32;
    v33 = v18;
    if (v13)
    {
      if (v22 < 1)
      {
        goto LABEL_42;
      }

      sub_222A352E8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0);
      for (i = 0; i != v22; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
        v26 = sub_222A6E00C(v41, i, v12);
        v28 = *v27;
        (v26)(v41, 0);
        *(v24 + 8 * i) = v28;
      }
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v9 = v40;
    v5 = v11;
    if (v14 >= 1)
    {
      v29 = *(v33 + 16);
      v30 = __OFADD__(v29, v14);
      v31 = v29 + v14;
      if (v30)
      {
        goto LABEL_41;
      }

      *(v33 + 16) = v31;
    }

LABEL_4:
    if (++v7 == v36)
    {
      return v9;
    }
  }

  v23 = v18;
  result = sub_222B02DC8();
  v18 = v23;
  v22 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_222AB575C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 16);
  swift_beginAccess();
  v44 = v4;
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = *(sub_222B018D8() - 8);
  v41 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v7 = MEMORY[0x277D84F90];
  v40 = *(v6 + 72);
  v8 = &qword_27D01DB88;
  v9 = &qword_222B0B2E0;
  while (1)
  {
    v11 = *(a2 + 16);
    if (*(v11 + 16) && (v12 = sub_222A2E3A4(a3), (v13 & 1) != 0) && (v14 = *(*(v11 + 56) + 8 * v12), swift_beginAccess(), v15 = *(v14 + 16), *(v15 + 16)))
    {

      v16 = sub_222A26F40(v41 + v40 * v5);
      v17 = MEMORY[0x277D84F90];
      if (v18)
      {
        v17 = *(*(v15 + 56) + 8 * v16);
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v19 = v17 >> 62;
    v20 = v17 >> 62 ? sub_222B02DC8() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v7 >> 62;
    if (v7 >> 62)
    {
      v39 = sub_222B02DC8();
      v23 = v39 + v20;
      if (__OFADD__(v39, v20))
      {
LABEL_41:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v21)
      {
        goto LABEL_23;
      }

      v24 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v23 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = v7;
        goto LABEL_25;
      }
    }

    else
    {
      if (v21)
      {
LABEL_23:
        sub_222B02DC8();
        goto LABEL_24;
      }

      v24 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = *(v24 + 16);
LABEL_24:
    result = sub_222B02CC8();
    v47 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v49 = v20;
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    if (v19)
    {
      break;
    }

    v28 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v27 >> 1) - v26) < v49)
    {
      goto LABEL_45;
    }

    v46 = v5;
    v29 = v24 + 8 * v26 + 32;
    v43 = v24;
    if (v19)
    {
      if (v28 < 1)
      {
        goto LABEL_47;
      }

      sub_222A352E8(&unk_27D01E360, v8, v9);
      for (i = 0; i != v28; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
        v31 = sub_222A6E00C(v48, i, v17);
        v33 = v9;
        v34 = v8;
        v35 = *v32;
        (v31)(v48, 0);
        *(v29 + 8 * i) = v35;
        v8 = v34;
        v9 = v33;
      }
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v5 = v46;
    v7 = v47;
    if (v49 >= 1)
    {
      v36 = *(v43 + 16);
      v37 = __OFADD__(v36, v49);
      v38 = v36 + v49;
      if (v37)
      {
        goto LABEL_46;
      }

      *(v43 + 16) = v38;
    }

LABEL_4:
    if (++v5 == v44)
    {
      return v7;
    }
  }

  result = sub_222B02DC8();
  v28 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v7 = v47;
  if (v49 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_222AB5B58(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v50 = *(a1 + 16);
  if (!v50)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_222B018D8();
  v5 = 0;
  v6 = *(v4 - 8);
  v45 = v4;
  v46 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v44 = (v6 + 8);
  v7 = MEMORY[0x277D84F90];
  v47 = *(v6 + 72);
  v8 = &qword_27D01DB88;
  v9 = &qword_222B0B2E0;
  while (1)
  {
    v11 = *(a2 + 24);
    swift_beginAccess();
    v12 = *(v11 + 16);
    if (*(v12 + 16) && (v13 = sub_222A2E3A4(a3), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      swift_beginAccess();
      v16 = *(v15 + 16);

      v17 = sub_222A26F40(v46 + v47 * v5);
      if (v18)
      {
        v19 = v17;
        v20 = *(v15 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v15 + 16);
        v55 = v22;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_222A2C4C0();
          v22 = v55;
        }

        (*v44)(*(v22 + 48) + v19 * v47, v45);
        v23 = *(*(v22 + 56) + 8 * v19);
        sub_222ADF894(v19, v22);
        *(v15 + 16) = v22;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v23 = MEMORY[0x277D84F90];
      }

      v9 = &qword_222B0B2E0;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = v23 >> 62;
    v25 = v23 >> 62 ? sub_222B02DC8() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v7 >> 62;
    if (v7 >> 62)
    {
      break;
    }

    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = result + v25;
    if (__OFADD__(result, v25))
    {
      goto LABEL_46;
    }

LABEL_18:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v26)
      {
        goto LABEL_25;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v27 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v26)
      {
LABEL_25:
        sub_222B02DC8();
        goto LABEL_26;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = *(v28 + 16);
LABEL_26:
    result = sub_222B02CC8();
    v7 = result;
    v28 = result & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    v53 = v25;
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    if (v24)
    {
      v33 = v28;
      result = sub_222B02DC8();
      v28 = v33;
      v32 = result;
      if (result)
      {
LABEL_31:
        if (((v31 >> 1) - v30) < v53)
        {
          goto LABEL_48;
        }

        v52 = v5;
        v34 = v28 + 8 * v30 + 32;
        v49 = v28;
        if (v24)
        {
          if (v32 < 1)
          {
            goto LABEL_50;
          }

          sub_222A352E8(&unk_27D01E360, v8, v9);
          v35 = v9;
          for (i = 0; i != v32; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(v8, v35);
            v37 = v8;
            v38 = sub_222A6E00C(v54, i, v23);
            v40 = *v39;
            (v38)(v54, 0);
            v8 = v37;
            v35 = &qword_222B0B2E0;
            *(v34 + 8 * i) = v40;
          }
        }

        else
        {
          sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
          swift_arrayInitWithCopy();
          v35 = v9;
        }

        v9 = v35;

        v5 = v52;
        if (v53 >= 1)
        {
          v41 = *(v49 + 16);
          v42 = __OFADD__(v41, v53);
          v43 = v41 + v53;
          if (v42)
          {
            goto LABEL_49;
          }

          *(v49 + 16) = v43;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_31;
      }
    }

    if (v53 > 0)
    {
      goto LABEL_47;
    }

LABEL_4:
    if (++v5 == v50)
    {
      return v7;
    }
  }

  result = sub_222B02DC8();
  v27 = result + v25;
  if (!__OFADD__(result, v25))
  {
    goto LABEL_18;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_222AB5FBC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v262 = &v237 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v263 = &v237 - v8;
  v264 = sub_222B018D8();
  v9 = *(v264 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v264, v11);
  v247 = &v237 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v252 = &v237 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v246 = &v237 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v251 = &v237 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v245 = &v237 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v250 = &v237 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v244 = &v237 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v249 = &v237 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v253 = &v237 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v243 = &v237 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v255 = &v237 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v242 = &v237 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v248 = &v237 - v48;
  type metadata accessor for RequestLinkTable();
  v49 = swift_allocObject();
  v50 = sub_222A394AC(MEMORY[0x277D84F90]);
  v260 = v49;
  *(v49 + 16) = v50;
  type metadata accessor for ComponentEventTable();
  v261 = swift_allocObject();
  *(v261 + 16) = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    v51 = sub_222B02DC8();
    if (v51)
    {
      goto LABEL_3;
    }

    return v260;
  }

  v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
    return v260;
  }

LABEL_3:
  if (v51 >= 1)
  {
    v52 = 0;
    v53 = a1 & 0xC000000000000001;
    v241 = (v9 + 16);
    v254 = (v9 + 8);
    v258 = a1;
    v259 = (v9 + 56);
    v256 = (v9 + 32);
    v257 = (v9 + 48);
    v54 = &off_2784BA000;
    v265 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v53)
      {
        v55 = MEMORY[0x223DC6F00](v52, a1);
      }

      else
      {
        v55 = *(a1 + 8 * v52 + 32);
      }

      v56 = v55;
      v57 = [v55 v54[97]];
      if (!v57)
      {
        goto LABEL_6;
      }

      v58 = v57;
      v59 = [v57 payload];
      if (!v59)
      {
        break;
      }

      v60 = v59;
      v61 = sub_222B01798();
      v63 = v62;

      v64 = [v58 anyEventType];
      if (v64 <= 18)
      {
        switch(v64)
        {
          case 9:
            v92 = [v58 payload];
            if (v92)
            {
              v93 = v92;
              v94 = sub_222B01798();
              v96 = v95;

              v97 = sub_222B01788();
              v98 = v96;
              v53 = v265;
              sub_222A26530(v94, v98);
            }

            else
            {
              v97 = 0;
            }

            v127 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) initWithData_];

            if (v127)
            {
              sub_222A25788(v127);
              sub_222A26530(v61, v63);
            }

            else
            {
              sub_222A26530(v61, v63);
            }

            v54 = &off_2784BA000;
            goto LABEL_7;
          case 13:
            v115 = objc_allocWithZone(MEMORY[0x277D57500]);
            sub_222A55AB8(v61, v63);
            v116 = sub_222B01788();
            v117 = [v115 initWithData_];

            if (v117)
            {
              v118 = [v117 eventMetadata];

              if (v118)
              {
                v119 = [v118 flowId];

                if (v119)
                {
                  v120 = [v119 value];
                  if (v120)
                  {
                    v121 = v120;
                    v240 = sub_222B01798();
                    v123 = v122;

                    v124 = v123 >> 62;
                    if ((v123 >> 62) > 1)
                    {
                      if (v124 == 2)
                      {
                        v145 = *(v240 + 16);
                        v144 = *(v240 + 24);
                        v130 = __OFSUB__(v144, v145);
                        v146 = v144 - v145;
                        if (v130)
                        {
                          goto LABEL_251;
                        }

                        if (v146 == 16)
                        {
                          goto LABEL_105;
                        }
                      }
                    }

                    else
                    {
                      if (!v124)
                      {
                        if (BYTE6(v123) != 16)
                        {
                          goto LABEL_162;
                        }

LABEL_105:
                        sub_222A26530(v61, v63);
                        if (v124 == 2)
                        {
                          v239 = *(v240 + 16);
                          v213 = sub_222B015B8();
                          if (!v213)
                          {
                            goto LABEL_285;
                          }

                          v214 = v213;
                          v215 = sub_222B015D8();
                          if (__OFSUB__(v239, v215))
                          {
                            goto LABEL_261;
                          }

                          v149 = v239 - v215 + v214;
                          sub_222B015C8();
                          if (!v149)
                          {
                            goto LABEL_286;
                          }

                          goto LABEL_216;
                        }

                        if (v124 == 1)
                        {
                          v147 = v240;
                          if (v240 > v240 >> 32)
                          {
                            goto LABEL_255;
                          }

                          v239 = sub_222B015B8();
                          if (!v239)
                          {
                            goto LABEL_298;
                          }

                          v148 = sub_222B015D8();
                          if (__OFSUB__(v147, v148))
                          {
                            goto LABEL_268;
                          }

                          v149 = v147 - v148 + v239;
                          sub_222B015C8();
                          if (!v149)
                          {
                            goto LABEL_297;
                          }

LABEL_216:
                          v216 = v149;
                          v217 = v243;
                          (*v241)(v243, v216, v264);
                          v218 = v240;
                        }

                        else
                        {
                          v227 = v243;
                          v228 = v240;
                          v266 = v240;
                          v267 = v123;
                          v268 = BYTE2(v123);
                          v269 = BYTE3(v123);
                          v270 = BYTE4(v123);
                          v271 = BYTE5(v123);
                          (*v241)(v243, &v266, v264);
                          v218 = v228;
                          v217 = v227;
                        }

                        sub_222A26530(v218, v123);

                        v240 = *v256;
                        v229 = v262;
                        v230 = v217;
                        v231 = v264;
                        (v240)(v262, v230, v264);
                        v239 = *v259;
                        (v239)(v229, 0, 1, v231);
                        v232 = v263;
                        (v240)(v263, v229, v231);
                        (v239)(v232, 0, 1, v231);
                        v183 = *v257;
LABEL_189:
                        v185 = v263;
                        v186 = v264;
                        if (v183(v263, 1, v264) == 1)
                        {
                          sub_222A26530(v61, v63);

                          sub_222A34F20(v185, &unk_27D01DA50, &unk_222B04E20);
                        }

                        else
                        {
                          v187 = v255;
                          (*v256)(v255, v185, v186);
                          sub_222ADF020(3, v187, v58);

                          sub_222A26530(v61, v63);
                          (*v254)(v187, v186);
                        }

                        a1 = v258;
LABEL_228:
                        v53 = v265;
                        v54 = &off_2784BA000;
                        goto LABEL_7;
                      }

                      if (__OFSUB__(HIDWORD(v240), v240))
                      {
                        goto LABEL_249;
                      }

                      if (HIDWORD(v240) - v240 == 16)
                      {
                        goto LABEL_105;
                      }
                    }

LABEL_162:
                    sub_222A26530(v240, v123);
                  }
                }
              }
            }

            v165 = *v259;
            v166 = 1;
            (*v259)(v262, 1, 1, v264);
            v167 = objc_allocWithZone(MEMORY[0x277D57500]);
            v168 = sub_222B01788();
            sub_222A26530(v61, v63);
            v169 = [v167 initWithData_];

            if (!v169)
            {
              goto LABEL_187;
            }

            v170 = [v169 eventMetadata];

            if (v170)
            {
              v171 = [v170 taskId];

              if (v171)
              {
                v172 = [v171 value];
                if (v172)
                {
                  v173 = v172;
                  v240 = sub_222B01798();
                  v175 = v174;

                  v176 = v175 >> 62;
                  if ((v175 >> 62) > 1)
                  {
                    v177 = v240;
                    if (v176 == 2)
                    {
                      v179 = *(v240 + 16);
                      v178 = *(v240 + 24);
                      v130 = __OFSUB__(v178, v179);
                      v180 = v178 - v179;
                      if (v130)
                      {
                        goto LABEL_253;
                      }

                      if (v180 == 16)
                      {
                        goto LABEL_175;
                      }
                    }
                  }

                  else
                  {
                    if (!v176)
                    {
                      v177 = v240;
                      if (BYTE6(v175) != 16)
                      {
                        goto LABEL_184;
                      }

LABEL_175:
                      if (v176 == 2)
                      {
                        v239 = *(v177 + 16);
                        v238 = sub_222B015B8();
                        if (!v238)
                        {
                          goto LABEL_301;
                        }

                        v233 = sub_222B015D8();
                        if (__OFSUB__(v239, v233))
                        {
                          goto LABEL_273;
                        }

                        v239 = v239 - v233 + v238;
                        result = sub_222B015C8();
                        if (!v239)
                        {
                          goto LABEL_302;
                        }

                        goto LABEL_234;
                      }

                      if (v176 == 1)
                      {
                        v239 = v177;
                        if (v177 > v177 >> 32)
                        {
                          goto LABEL_272;
                        }

                        v238 = sub_222B015B8();
                        if (!v238)
                        {
                          goto LABEL_300;
                        }

                        v181 = sub_222B015D8();
                        if (__OFSUB__(v239, v181))
                        {
                          goto LABEL_274;
                        }

                        v239 = v239 - v181 + v238;
                        sub_222B015C8();
                        if (!v239)
                        {
                          goto LABEL_299;
                        }

LABEL_234:
                        v235 = *v241;
                      }

                      else
                      {
                        v266 = v177;
                        v267 = v175;
                        v268 = BYTE2(v175);
                        v269 = BYTE3(v175);
                        v270 = BYTE4(v175);
                        v271 = BYTE5(v175);
                        v235 = *v241;
                      }

                      v236 = v264;
                      (v235)(v253);
                      sub_222A26530(v240, v175);

                      (*v256)(v263, v253, v236);
                      v166 = 0;
LABEL_187:
                      v182 = v264;
                      v165(v263, v166, 1, v264);
                      v183 = *v257;
                      v184 = v262;
                      if ((*v257)(v262, 1, v182) != 1)
                      {
                        sub_222A34F20(v184, &unk_27D01DA50, &unk_222B04E20);
                      }

                      goto LABEL_189;
                    }

                    v177 = v240;
                    if (__OFSUB__(HIDWORD(v240), v240))
                    {
                      goto LABEL_252;
                    }

                    if (HIDWORD(v240) - v240 == 16)
                    {
                      goto LABEL_175;
                    }
                  }

LABEL_184:
                  sub_222A26530(v177, v175);
                }
              }
            }

            v166 = 1;
            goto LABEL_187;
          case 18:
            v76 = objc_allocWithZone(MEMORY[0x277D590F0]);
            sub_222A55AB8(v61, v63);
            v77 = sub_222B01788();
            sub_222A26530(v61, v63);
            v78 = [v76 initWithData_];

            if (v78)
            {
              v79 = [v78 eventMetadata];

              if (!v79)
              {
                goto LABEL_65;
              }

              v69 = [v79 nlId];

              if (!v69)
              {
                goto LABEL_65;
              }

              v80 = [v69 value];
              if (!v80)
              {
                goto LABEL_75;
              }

              v81 = v80;
              v240 = sub_222B01798();
              v73 = v82;

              v83 = v73 >> 62;
              if ((v73 >> 62) > 1)
              {
                if (v83 != 2)
                {
                  goto LABEL_101;
                }

                v75 = v240;
                v142 = *(v240 + 16);
                v141 = *(v240 + 24);
                v130 = __OFSUB__(v141, v142);
                v143 = v141 - v142;
                if (v130)
                {
                  goto LABEL_243;
                }

                if (v143 != 16)
                {
                  goto LABEL_157;
                }
              }

              else if (v83)
              {
                v75 = v240;
                if (__OFSUB__(HIDWORD(v240), v240))
                {
                  goto LABEL_241;
                }

                if (HIDWORD(v240) - v240 != 16)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                v75 = v240;
                if (BYTE6(v73) != 16)
                {
                  goto LABEL_157;
                }
              }

              if (v83 != 2)
              {
                if (v83 == 1)
                {
                  if (v75 > v75 >> 32)
                  {
                    goto LABEL_263;
                  }

                  v239 = sub_222B015B8();
                  if (!v239)
                  {
                    goto LABEL_296;
                  }

                  v162 = sub_222B015D8();
                  if (__OFSUB__(v75, v162))
                  {
                    goto LABEL_266;
                  }

                  v163 = (v75 - v162 + v239);
                  sub_222B015C8();
                  v164 = v163;
                  a1 = v258;
                  if (!v164)
                  {
                    goto LABEL_295;
                  }

LABEL_212:
                  v212 = *v241;
                }

                else
                {
                  v266 = v75;
                  v267 = v73;
                  v268 = BYTE2(v73);
                  v269 = BYTE3(v73);
                  v270 = BYTE4(v73);
                  v271 = BYTE5(v73);
                  v212 = *v241;
                  v164 = &v266;
                }

                v226 = v244;
                v212(v244, v164, v264);
                sub_222A26530(v240, v73);

                v220 = v249;
                v221 = v264;
                (*v256)(v249, v226, v264);
                v222 = 7;
                goto LABEL_227;
              }

              v239 = *(v75 + 16);
              v208 = sub_222B015B8();
              if (!v208)
              {
                goto LABEL_283;
              }

              v209 = v208;
              v210 = sub_222B015D8();
              if (__OFSUB__(v239, v210))
              {
                goto LABEL_257;
              }

              v211 = (v239 - v210 + v209);
              sub_222B015C8();
              v164 = v211;
              a1 = v258;
              if (!v164)
              {
                goto LABEL_284;
              }

              goto LABEL_212;
            }

            goto LABEL_66;
        }
      }

      else if (v64 > 22)
      {
        if (v64 == 23)
        {
          v107 = objc_allocWithZone(MEMORY[0x277D587F0]);
          sub_222A55AB8(v61, v63);
          v108 = sub_222B01788();
          sub_222A26530(v61, v63);
          v109 = [v107 initWithData_];

          if (v109)
          {
            v110 = [v109 eventMetadata];

            if (v110)
            {
              v69 = [v110 mhId];

              if (v69)
              {
                v111 = [v69 value];
                if (v111)
                {
                  v112 = v111;
                  v240 = sub_222B01798();
                  v73 = v113;

                  v114 = v73 >> 62;
                  if ((v73 >> 62) <= 1)
                  {
                    if (!v114)
                    {
                      v75 = v240;
                      if (BYTE6(v73) != 16)
                      {
                        goto LABEL_157;
                      }

LABEL_123:
                      if (v114 == 2)
                      {
                        v239 = *(v75 + 16);
                        v193 = sub_222B015B8();
                        if (!v193)
                        {
                          goto LABEL_277;
                        }

                        v194 = v193;
                        v195 = sub_222B015D8();
                        if (__OFSUB__(v239, v195))
                        {
                          goto LABEL_256;
                        }

                        v196 = (v239 - v195 + v194);
                        sub_222B015C8();
                        v155 = v196;
                        a1 = v258;
                        if (!v155)
                        {
                          goto LABEL_278;
                        }

                        goto LABEL_200;
                      }

                      if (v114 == 1)
                      {
                        if (v75 > v75 >> 32)
                        {
                          goto LABEL_262;
                        }

                        v239 = sub_222B015B8();
                        if (!v239)
                        {
                          goto LABEL_290;
                        }

                        v153 = sub_222B015D8();
                        if (__OFSUB__(v75, v153))
                        {
                          goto LABEL_267;
                        }

                        v154 = (v75 - v153 + v239);
                        sub_222B015C8();
                        v155 = v154;
                        a1 = v258;
                        if (!v155)
                        {
                          goto LABEL_289;
                        }

LABEL_200:
                        v197 = *v241;
                      }

                      else
                      {
                        v266 = v75;
                        v267 = v73;
                        v268 = BYTE2(v73);
                        v269 = BYTE3(v73);
                        v270 = BYTE4(v73);
                        v271 = BYTE5(v73);
                        v197 = *v241;
                        v155 = &v266;
                      }

                      v223 = v247;
                      v197(v247, v155, v264);
                      sub_222A26530(v240, v73);

                      v220 = v252;
                      v221 = v264;
                      (*v256)(v252, v223, v264);
                      v222 = 9;
LABEL_227:
                      sub_222ADF020(v222, v220, v58);

                      sub_222A26530(v61, v63);
                      (*v254)(v220, v221);
                      goto LABEL_228;
                    }

                    v75 = v240;
                    if (__OFSUB__(HIDWORD(v240), v240))
                    {
                      goto LABEL_240;
                    }

                    if (HIDWORD(v240) - v240 == 16)
                    {
                      goto LABEL_123;
                    }

LABEL_157:

                    sub_222A26530(v61, v63);
                    v125 = v75;
LABEL_158:
                    v126 = v73;
LABEL_159:
                    sub_222A26530(v125, v126);

                    goto LABEL_228;
                  }

                  if (v114 == 2)
                  {
                    v75 = v240;
                    v133 = *(v240 + 16);
                    v132 = *(v240 + 24);
                    v130 = __OFSUB__(v132, v133);
                    v134 = v132 - v133;
                    if (v130)
                    {
                      goto LABEL_242;
                    }

                    if (v134 == 16)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_157;
                  }

LABEL_101:

                  sub_222A26530(v61, v63);
                  v125 = v240;
                  goto LABEL_158;
                }

LABEL_75:

                v125 = v61;
                v126 = v63;
                goto LABEL_159;
              }
            }

LABEL_65:

            sub_222A26530(v61, v63);
            goto LABEL_228;
          }

LABEL_66:

          sub_222A26530(v61, v63);
          v54 = &off_2784BA000;
          goto LABEL_7;
        }

        if (v64 == 38)
        {
          v84 = objc_allocWithZone(MEMORY[0x277D59C50]);
          sub_222A55AB8(v61, v63);
          v85 = sub_222B01788();
          sub_222A26530(v61, v63);
          v86 = [v84 initWithData_];

          if (v86)
          {
            v87 = [v86 eventMetadata];

            if (!v87)
            {
              goto LABEL_65;
            }

            v69 = [v87 plusId];

            if (!v69)
            {
              goto LABEL_65;
            }

            v88 = [v69 value];
            if (!v88)
            {
              goto LABEL_75;
            }

            v89 = v88;
            v240 = sub_222B01798();
            v73 = v90;

            v91 = v73 >> 62;
            if ((v73 >> 62) > 1)
            {
              if (v91 != 2)
              {
                goto LABEL_101;
              }

              v75 = v240;
              v139 = *(v240 + 16);
              v138 = *(v240 + 24);
              v130 = __OFSUB__(v138, v139);
              v140 = v138 - v139;
              if (v130)
              {
                goto LABEL_246;
              }

              if (v140 != 16)
              {
                goto LABEL_157;
              }
            }

            else if (v91)
            {
              v75 = v240;
              if (__OFSUB__(HIDWORD(v240), v240))
              {
                goto LABEL_244;
              }

              if (HIDWORD(v240) - v240 != 16)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v75 = v240;
              if (BYTE6(v73) != 16)
              {
                goto LABEL_157;
              }
            }

            if (v91 != 2)
            {
              if (v91 == 1)
              {
                if (v75 > v75 >> 32)
                {
                  goto LABEL_259;
                }

                v239 = sub_222B015B8();
                if (!v239)
                {
                  goto LABEL_288;
                }

                v159 = sub_222B015D8();
                if (__OFSUB__(v75, v159))
                {
                  goto LABEL_271;
                }

                v160 = (v75 - v159 + v239);
                sub_222B015C8();
                v161 = v160;
                a1 = v258;
                if (!v161)
                {
                  goto LABEL_287;
                }

LABEL_208:
                v207 = *v241;
              }

              else
              {
                v266 = v75;
                v267 = v73;
                v268 = BYTE2(v73);
                v269 = BYTE3(v73);
                v270 = BYTE4(v73);
                v271 = BYTE5(v73);
                v207 = *v241;
                v161 = &v266;
              }

              v225 = v246;
              v207(v246, v161, v264);
              sub_222A26530(v240, v73);

              v220 = v251;
              v221 = v264;
              (*v256)(v251, v225, v264);
              v222 = 19;
              goto LABEL_227;
            }

            v239 = *(v75 + 16);
            v203 = sub_222B015B8();
            if (!v203)
            {
              goto LABEL_275;
            }

            v204 = v203;
            v205 = sub_222B015D8();
            if (__OFSUB__(v239, v205))
            {
              goto LABEL_265;
            }

            v206 = (v239 - v205 + v204);
            sub_222B015C8();
            v161 = v206;
            a1 = v258;
            if (!v161)
            {
              goto LABEL_276;
            }

            goto LABEL_208;
          }

          goto LABEL_66;
        }
      }

      else
      {
        if (v64 == 19)
        {
          v99 = objc_allocWithZone(MEMORY[0x277D59610]);
          sub_222A55AB8(v61, v63);
          v100 = sub_222B01788();
          sub_222A26530(v61, v63);
          v101 = [v99 initWithData_];

          if (v101)
          {
            v102 = [v101 eventMetadata];

            if (!v102)
            {
              goto LABEL_65;
            }

            v69 = [v102 requestId];

            if (!v69)
            {
              goto LABEL_65;
            }

            v103 = [v69 value];
            if (!v103)
            {
              goto LABEL_75;
            }

            v104 = v103;
            v240 = sub_222B01798();
            v73 = v105;

            v106 = v73 >> 62;
            if ((v73 >> 62) > 1)
            {
              if (v106 != 2)
              {
                goto LABEL_101;
              }

              v75 = v240;
              v129 = *(v240 + 16);
              v128 = *(v240 + 24);
              v130 = __OFSUB__(v128, v129);
              v131 = v128 - v129;
              if (v130)
              {
                goto LABEL_247;
              }

              if (v131 != 16)
              {
                goto LABEL_157;
              }
            }

            else if (v106)
            {
              v75 = v240;
              if (__OFSUB__(HIDWORD(v240), v240))
              {
                goto LABEL_245;
              }

              if (HIDWORD(v240) - v240 != 16)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v75 = v240;
              if (BYTE6(v73) != 16)
              {
                goto LABEL_157;
              }
            }

            if (v106 != 2)
            {
              if (v106 == 1)
              {
                if (v75 > v75 >> 32)
                {
                  goto LABEL_258;
                }

                v239 = sub_222B015B8();
                if (!v239)
                {
                  goto LABEL_294;
                }

                v150 = sub_222B015D8();
                if (__OFSUB__(v75, v150))
                {
                  goto LABEL_270;
                }

                v151 = (v75 - v150 + v239);
                sub_222B015C8();
                v152 = v151;
                a1 = v258;
                if (!v152)
                {
                  goto LABEL_293;
                }

LABEL_196:
                v192 = *v241;
              }

              else
              {
                v266 = v75;
                v267 = v73;
                v268 = BYTE2(v73);
                v269 = BYTE3(v73);
                v270 = BYTE4(v73);
                v271 = BYTE5(v73);
                v192 = *v241;
                v152 = &v266;
              }

              v219 = v245;
              v192(v245, v152, v264);
              sub_222A26530(v240, v73);

              v220 = v250;
              v221 = v264;
              (*v256)(v250, v219, v264);
              v222 = 1;
              goto LABEL_227;
            }

            v239 = *(v75 + 16);
            v188 = sub_222B015B8();
            if (!v188)
            {
              goto LABEL_281;
            }

            v189 = v188;
            v190 = sub_222B015D8();
            if (__OFSUB__(v239, v190))
            {
              goto LABEL_264;
            }

            v191 = (v239 - v190 + v189);
            sub_222B015C8();
            v152 = v191;
            a1 = v258;
            if (!v152)
            {
              goto LABEL_282;
            }

            goto LABEL_196;
          }

          goto LABEL_66;
        }

        if (v64 == 20)
        {
          v65 = objc_allocWithZone(MEMORY[0x277D56858]);
          sub_222A55AB8(v61, v63);
          v66 = sub_222B01788();
          sub_222A26530(v61, v63);
          v67 = [v65 initWithData_];

          if (v67)
          {
            v68 = [v67 eventMetadata];

            if (!v68)
            {
              goto LABEL_65;
            }

            v69 = [v68 asrId];

            if (!v69)
            {
              goto LABEL_65;
            }

            v70 = [v69 value];
            if (!v70)
            {
              goto LABEL_75;
            }

            v71 = v70;
            v240 = sub_222B01798();
            v73 = v72;

            v74 = v73 >> 62;
            if ((v73 >> 62) > 1)
            {
              if (v74 != 2)
              {
                goto LABEL_101;
              }

              v75 = v240;
              v136 = *(v240 + 16);
              v135 = *(v240 + 24);
              v130 = __OFSUB__(v135, v136);
              v137 = v135 - v136;
              if (v130)
              {
                goto LABEL_250;
              }

              if (v137 != 16)
              {
                goto LABEL_157;
              }
            }

            else if (v74)
            {
              v75 = v240;
              if (__OFSUB__(HIDWORD(v240), v240))
              {
                goto LABEL_248;
              }

              if (HIDWORD(v240) - v240 != 16)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v75 = v240;
              if (BYTE6(v73) != 16)
              {
                goto LABEL_157;
              }
            }

            if (v74 != 2)
            {
              if (v74 == 1)
              {
                if (v75 > v75 >> 32)
                {
                  goto LABEL_254;
                }

                v239 = sub_222B015B8();
                if (!v239)
                {
                  goto LABEL_292;
                }

                v156 = sub_222B015D8();
                if (__OFSUB__(v75, v156))
                {
                  goto LABEL_269;
                }

                v157 = (v75 - v156 + v239);
                sub_222B015C8();
                v158 = v157;
                a1 = v258;
                if (!v158)
                {
                  goto LABEL_291;
                }

LABEL_204:
                v202 = *v241;
              }

              else
              {
                v266 = v75;
                v267 = v73;
                v268 = BYTE2(v73);
                v269 = BYTE3(v73);
                v270 = BYTE4(v73);
                v271 = BYTE5(v73);
                v202 = *v241;
                v158 = &v266;
              }

              v224 = v242;
              v202(v242, v158, v264);
              sub_222A26530(v240, v73);

              v220 = v248;
              v221 = v264;
              (*v256)(v248, v224, v264);
              v222 = 8;
              goto LABEL_227;
            }

            v239 = *(v75 + 16);
            v198 = sub_222B015B8();
            if (!v198)
            {
              goto LABEL_279;
            }

            v199 = v198;
            v200 = sub_222B015D8();
            if (__OFSUB__(v239, v200))
            {
              goto LABEL_260;
            }

            v201 = (v239 - v200 + v199);
            sub_222B015C8();
            v158 = v201;
            a1 = v258;
            if (!v158)
            {
              goto LABEL_280;
            }

            goto LABEL_204;
          }

          goto LABEL_66;
        }
      }

      sub_222A26530(v61, v63);

LABEL_7:
      if (v51 == ++v52)
      {
        return v260;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  sub_222B015C8();
LABEL_276:
  __break(1u);
LABEL_277:
  sub_222B015C8();
LABEL_278:
  __break(1u);
LABEL_279:
  sub_222B015C8();
LABEL_280:
  __break(1u);
LABEL_281:
  sub_222B015C8();
LABEL_282:
  __break(1u);
LABEL_283:
  sub_222B015C8();
LABEL_284:
  __break(1u);
LABEL_285:
  sub_222B015C8();
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  sub_222B015C8();
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  sub_222B015C8();
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  sub_222B015C8();
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  sub_222B015C8();
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  sub_222B015C8();
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  sub_222B015C8();
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  sub_222B015C8();
  __break(1u);
LABEL_301:
  result = sub_222B015C8();
LABEL_302:
  __break(1u);
  return result;
}

uint64_t sub_222AB7D80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v41 = &v31 - v7;
  v40 = sub_222B018D8();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v40, v10);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v12 = sub_222B02DC8();
  }

  else
  {
    v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_222B02D38();
    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = 0;
      v33 = (v8 + 16);
      v34 = a3 & 0xC000000000000001;
      v32 = (v8 + 32);
      v35 = v12;
      v36 = a3;
      v15 = v40;
      do
      {
        if (v34)
        {
          v16 = MEMORY[0x223DC6F00](v14, a3);
        }

        else
        {
          v16 = *(a3 + 8 * v14 + 32);
        }

        ++v14;
        v17 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
        v18 = v37;
        v19 = sub_222A26364(2, v16 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, 1);
        v20 = v38;

        sub_222AB53EC(v19, v20, v18, sub_222AB084C);

        v21 = v39;
        (*v33)(v39, v16 + v17, v15);
        v42 = *(v16 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

        sub_222A96EC4(v22);
        v23 = v42;
        v24 = sub_222B01848();
        v25 = v41;
        (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
        v26 = type metadata accessor for Turn();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        v29 = swift_allocObject();
        (*v32)(v29 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v21, v15);
        *(v29 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v23;
        sub_222AB959C(v25, v29 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date, &qword_27D01D700, &qword_222B07320);

        sub_222B02D18();
        v30 = *(v43 + 16);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        a3 = v36;
      }

      while (v35 != v14);
      return v43;
    }
  }

  return result;
}

void *sub_222AB8108()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v89 = v77 - v3;
  v90 = sub_222B018D8();
  v4 = *(v90 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v90, v6);
  v88 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA68, &unk_222B0C0F0);
  v8 = *(*(v87 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v87, v9);
  v86 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v85 = v77 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v84 = v77 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v83 = v77 - v19;
  v20 = 0;
  v21 = sub_222B02D78();
  v92 = v4;
  if (v21 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
    v24 = sub_222AB93EC(&qword_280CBA1F0, MEMORY[0x277CC95F0]);
    v95 = MEMORY[0x223DC6520](i, v90, v23, v24);
    MEMORY[0x28223BE20](v95, v25);
    v77[-2] = &v95;
    sub_222B02D88();
    v77[1] = v20;
    v26 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    sub_222B02D68();
    sub_222B02E18();
    v27 = v93;
    if (v93)
    {
      v28 = sub_222A250BC(0, &qword_27D01DE30, 0x277D5A978);
      do
      {
        [v27 anyEventType];
        v29 = sub_222B02A28();
        if (v29 && v28 == v29)
        {
          v31 = [v27 payload];
          if (v31)
          {
            v32 = v31;
            v33 = sub_222B01798();
            v35 = v34;

            v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v37 = sub_222B01788();
            sub_222A26530(v33, v35);
            v38 = v36;
          }

          else
          {
            v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v37 = 0;
          }

          v30 = [v38 initWithData_];

          if (!v30)
          {
            goto LABEL_9;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            MEMORY[0x223DC6810]();
            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v39 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_222B02648();
            }

            sub_222B02688();
            v26 = v94;
            goto LABEL_9;
          }
        }

        else
        {
          v30 = v27;
        }

LABEL_9:
        sub_222B02E18();
        v27 = v93;
      }

      while (v93);
    }

    v40 = v95;
    v41 = *(v95 + 16);
    v42 = MEMORY[0x277D84F90];
    if (!v41)
    {
      break;
    }

    v77[0] = v26;
    v94 = MEMORY[0x277D84F90];
    sub_222B02D38();
    v43 = -1 << *(v40 + 32);
    v44 = sub_222B02BC8();
    v80 = (v92 + 16);
    v81 = (v92 + 32);
    v78 = v40 + 64;
    v79 = (v92 + 8);
    v82 = v40;
    v45 = v88;
    while (1)
    {
      v91 = v41;
      v46 = *(v40 + 36);
      v47 = v83;
      v92 = v46;
      v48 = sub_222A964AC(v83, v44, v46, 0, v40);
      v49 = *v81;
      v50 = v84;
      v51 = v47;
      v52 = v90;
      (*v81)(v84, v51, v90);
      v53 = v87;
      *(v50 + *(v87 + 48)) = v48;
      v20 = v85;
      sub_222A34E48(v50, v85, &qword_27D01DA68, &unk_222B0C0F0);
      v54 = *(v20 + *(v53 + 48));

      v55 = v50;
      v56 = v86;
      sub_222AB959C(v55, v86, &qword_27D01DA68, &unk_222B0C0F0);
      v57 = *(v56 + *(v53 + 48));
      (*v80)(v45, v20, v52);
      v58 = sub_222B01848();
      v59 = v89;
      (*(*(v58 - 8) + 56))(v89, 1, 1, v58);
      v60 = type metadata accessor for Turn();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      v63 = swift_allocObject();
      v49((v63 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID), v45, v52);
      *(v63 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v57;
      sub_222AB959C(v59, v63 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date, &qword_27D01D700, &qword_222B07320);
      v64 = *v79;
      (*v79)(v20, v52);
      v64(v56, v52);
      sub_222B02D18();
      v65 = *(v94 + 16);
      sub_222B02D48();
      v40 = v82;
      sub_222B02D58();
      sub_222B02D28();
      if (v44 < 0 || v44 >= -(-1 << *(v40 + 32)))
      {
        break;
      }

      if (((*(v78 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v92 != *(v40 + 36))
      {
        goto LABEL_32;
      }

      v44 = sub_222B02BE8();
      v41 = v91 - 1;
      if (v91 == 1)
      {
        v42 = v94;
        v26 = v77[0];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_27:
  v66 = sub_222AB5FBC(v26);
  v68 = v67;

  v69 = sub_222AB7D80(v66, v68, v42);

  v94 = v69;
  sub_222AB07D4(&v94);
  v70 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v71 = swift_allocObject();
  v71[6] = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  if (v70 >> 62)
  {
    v73 = sub_222B02DC8();
  }

  else
  {
    v73 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0);
  v75 = swift_allocObject();
  *(v75 + 16) = v73;

  v71[2] = v72;
  v71[3] = v74;
  v71[4] = v75;
  v71[5] = v74;
  return v71;
}

unint64_t sub_222AB89B0()
{
  result = qword_27D01DE20;
  if (!qword_27D01DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DE20);
  }

  return result;
}

uint64_t sub_222AB8DDC(uint64_t a1)
{
  v3 = *(*(sub_222B018D8() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_222AAD440(a1, v4);
}

uint64_t sub_222AB8E50(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_222B01888() & 1;
}

void sub_222AB8E94()
{
  v1 = *(sub_222B018D8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_222AAF880(v2, v3, v4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222AB8F30(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_222AB8F44()
{
  v1 = *(sub_222B018D8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_222AAF130(v2, v3);
}

void sub_222AB90A4()
{
  v1 = *(sub_222B018D8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_222AAE9FC(v3, v0 + v2, v4);
}

uint64_t sub_222AB9134(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_62Tm()
{
  v1 = sub_222B018D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_77Tm()
{
  v1 = sub_222B018D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222AB92F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_222B018D8() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_222AB939C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_222B02D68();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t sub_222AB93EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222AB9434(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A34620;

  return sub_222A327C8(a1, v1);
}

uint64_t sub_222AB94D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222AB3AB0(a1, v1);
}

uint64_t sub_222AB959C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t UniversalSuggestionsStoreCoreData.__allocating_init()()
{
  v1 = static Config.universalSuggestionsStoreFilePath.getter();
  v2 = *(v0 + 120);

  return v2(v1);
}

id sub_222AB96D8()
{
  result = sub_222AB96F8();
  qword_280CB51F8 = result;
  return result;
}

id sub_222AB96F8()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UniversalSuggestionsStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (!v10)
  {
    goto LABEL_3;
  }

  sub_222B01718();

  v11 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v12 = sub_222B016A8();
  v13 = [v11 initWithContentsOfURL_];

  (*(v1 + 8))(v5, v0);
  result = v13;
  if (!v13)
  {
LABEL_3:
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v15 = sub_222B02148();
    __swift_project_value_buffer(v15, qword_27D01DE58);
    v16 = sub_222B02128();
    v17 = sub_222B028E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222A1C000, v16, v17, "UniversalSuggestionsCoreData: Error loading data base model from bundle", v18, 2u);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_222AB99B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (!a2)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CBC458);
    v7 = sub_222B02128();
    v8 = sub_222B028E8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222A1C000, v7, v8, "Store path unavailable, possibly no access to data container", v9, 2u);
      MEMORY[0x223DC7E30](v9, -1, -1);
    }

    goto LABEL_9;
  }

  v5 = sub_222AC263C(a1, a2, a3 & 1);

  if (!v5)
  {
LABEL_9:
    type metadata accessor for UniversalSuggestionsStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 16) = v5;
  *(v3 + 24) = [v5 newBackgroundContext];
  return v4;
}

uint64_t sub_222AB9B04()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = &off_2784BA000;
  v2 = [*(v0 + 16) persistentStoreCoordinator];
  v3 = [v2 persistentStores];

  sub_222A250BC(0, &qword_280CB4BA8, 0x277CBE4D0);
  v4 = sub_222B025F8();

  if (v4 >> 62)
  {
    v5 = sub_222B02DC8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DC6F00](i, v4);
        }

        else
        {
          v8 = *(v4 + 8 * i + 32);
        }

        v9 = v8;
        v10 = [*(v19 + 16) v1[206]];
        v20[0] = 0;
        v11 = [v10 removePersistentStore:v9 error:v20];

        if (v11)
        {
          v7 = v20[0];
        }

        else
        {
          v12 = v20[0];
          v13 = v1;
          v14 = sub_222B01628();

          swift_willThrow();
          v15 = v14;
          v1 = v13;
        }
      }

      v17 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_222AB9D28(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_27D01DE58);
    v7 = a2;
    v8 = a1;
    v9 = sub_222B02128();
    v10 = sub_222B028E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v14 = sub_222B02B18();
      v16 = sub_222A230FC(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222A1C000, v9, v10, "UniversalSuggestionsCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222A34F20(v12, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DC7E30](v13, -1, -1);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }
  }
}

id sub_222AB9F20()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v18[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v18[0];
  }

  else
  {
    v4 = v18[0];
    v5 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_27D01DE58);
    v7 = v5;
    v8 = sub_222B02128();
    v9 = sub_222B028E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "UniversalSuggestionsCoreData: Unresolved error in saveChanges error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_222ABA130()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222ABA26C;
  *(v2 + 24) = v0;
  v5[4] = sub_222ABA270;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222A50B98;
  v5[3] = &block_descriptor_10;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_222ABA290()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 initWithEntityName_];

  v4 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v5 = *(v0 + 24);
  v26[0] = 0;
  v6 = [v5 executeRequest:v4 error:v26];
  if (v6)
  {
    v7 = v6;
    v8 = v26[0];

    if (sub_222AB9F20())
    {
    }

    else
    {
      if (qword_27D01C548 != -1)
      {
        swift_once();
      }

      v21 = sub_222B02148();
      __swift_project_value_buffer(v21, qword_27D01DE58);
      v22 = sub_222B02128();
      v23 = sub_222B028E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_222A1C000, v22, v23, "UniversalSuggestionsCoreData: Cannot reset store, failed to save", v24, 2u);
        MEMORY[0x223DC7E30](v24, -1, -1);
      }
    }
  }

  else
  {
    v9 = v26[0];
    v10 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_27D01DE58);
    v12 = v10;
    v13 = sub_222B02128();
    v14 = sub_222B028E8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136315138;
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v18 = sub_222B023D8();
      v20 = sub_222A230FC(v18, v19, v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_222A1C000, v13, v14, "UniversalSuggestionsCoreData: Cannot reset store, error=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DC7E30](v16, -1, -1);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    else
    {
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

size_t sub_222ABA5FC()
{
  v1 = type metadata accessor for UniversalCandidate(0);
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UniversalSuggestion(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE70, &qword_222B0C130);
  result = sub_222B02A58();
  v19 = v56;
  v50 = *(v56 + 16);
  if (v50)
  {
    v20 = 0;
    v21 = *(v11 + 24);
    v48 = v56 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v49 = v21;
    v54 = v7 + 32;
    v55 = (v7 + 16);
    v22 = MEMORY[0x277D84F90];
    v47 = v6;
    v23 = v51;
    v44 = v16;
    v45 = v12;
    v43 = v56;
    while (v20 < *(v19 + 16))
    {
      v52 = v20;
      v53 = v22;
      sub_222AC1D9C(v48 + *(v12 + 72) * v20, v16, type metadata accessor for UniversalSuggestion);
      v25 = *&v16[v49];
      v26 = *(v25 + 16);
      if (v26)
      {
        v56 = MEMORY[0x277D84F90];
        sub_222A23D50(0, v26, 0);
        v27 = v56;
        v28 = v25 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v29 = *(v46 + 72);
        do
        {
          sub_222AC1D9C(v28, v5, type metadata accessor for UniversalCandidate);
          (*v55)(v23, v5, v6);
          sub_222AC1FC0(v5, type metadata accessor for UniversalCandidate);
          v56 = v27;
          v30 = v6;
          v32 = *(v27 + 16);
          v31 = *(v27 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_222A23D50(v31 > 1, v32 + 1, 1);
            v27 = v56;
          }

          *(v27 + 16) = v32 + 1;
          (*(v7 + 32))(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v23, v30);
          v28 += v29;
          --v26;
          v6 = v30;
        }

        while (v26);
        v16 = v44;
        result = sub_222AC1FC0(v44, type metadata accessor for UniversalSuggestion);
        v12 = v45;
        v19 = v43;
      }

      else
      {
        result = sub_222AC1FC0(v16, type metadata accessor for UniversalSuggestion);
        v27 = MEMORY[0x277D84F90];
      }

      v33 = *(v27 + 16);
      v22 = v53;
      v34 = v53[2];
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_29;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v35 > v22[3] >> 1)
      {
        if (v34 <= v35)
        {
          v36 = v34 + v33;
        }

        else
        {
          v36 = v34;
        }

        result = sub_222AA8E90(result, v36, 1, v22);
        v22 = result;
      }

      v6 = v47;
      v23 = v51;
      if (*(v27 + 16))
      {
        if ((v22[3] >> 1) - v22[2] < v33)
        {
          goto LABEL_31;
        }

        v37 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v38 = *(v7 + 72);
        swift_arrayInitWithCopy();

        v24 = v52;
        if (v33)
        {
          v39 = v22[2];
          v40 = __OFADD__(v39, v33);
          v41 = v39 + v33;
          if (v40)
          {
            goto LABEL_32;
          }

          v22[2] = v41;
        }
      }

      else
      {

        v24 = v52;
        if (v33)
        {
          goto LABEL_30;
        }
      }

      v20 = v24 + 1;
      if (v20 == v50)
      {

        return v22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}