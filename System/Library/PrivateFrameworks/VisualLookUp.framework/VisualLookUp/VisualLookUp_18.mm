char *sub_1D9AFA6B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_1D9AFA7D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D9AFA8F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53340);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AFAA28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517D8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D9AFAB50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1D9AFACE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1D9AFAE40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53288);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1D9AFAF6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB08C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB1B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB2D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB3F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB51C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53358);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB628(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AFB748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AFB88C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_1D9AFBA70(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

size_t sub_1D9AFBC4C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB532F8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53300) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53300) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1D9AFBE3C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = result + 40; ; i += 16)
    {
      v6 = *(i - 8);
      sub_1D99A17C8(a2, v7);

      v6(v8, v7);
      if (v2)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      __swift_destroy_boxed_opaque_existential_0Tm(a2);
      sub_1D9979B9C(v8, a2);

      if (!--v3)
      {
        return result;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  return result;
}

void sub_1D9AFBEFC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1D9AE4CE0(v1 + 80, &v6);
  if (!v7)
  {
    sub_1D9AFCA20(&v6);
    sub_1D99A17C8(v1 + 16, &v6);
    swift_beginAccess();

    sub_1D9AFBE3C(v4, &v6);

    sub_1D99A17C8(&v6, v5);
    swift_beginAccess();
    sub_1D9AFC9B0(v5, v1 + 80);
    swift_endAccess();
  }

  sub_1D9979B9C(&v6, a1);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1D9AFC014()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + 72);
  if (v2)
  {
    swift_willThrow();
    v3 = v2;
    os_unfair_lock_unlock(v1 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v1 + 4);
    sub_1D9AFBEFC(v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v0 = (*(v5 + 24))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  return v0;
}

void sub_1D9AFC0D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  os_unfair_lock_lock(v5 + 4);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  sub_1D9AFC9B0(v11, v2 + 80);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 64) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D9AFA200(0, v6[2] + 1, 1, v6);
    *(v2 + 64) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D9AFA200((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a2;
  *(v2 + 64) = v6;
  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
}

void sub_1D9AFC1FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  static Logger.argos.getter(&v35 - v10);
  sub_1D9A3E0E0(v8);
  v12 = *(v6 + 8);
  v12(v11, v5);
  sub_1D99A17C8(a1, v39);
  v13 = sub_1D9C7D8BC();
  v14 = sub_1D9C7E09C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = v2;
    v16 = v15;
    *v15 = 67109120;
    v36 = a1;
    v37 = v5;
    v17 = v12;
    v18 = v40;
    v19 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v20 = *(v19 + 8);
    v21 = v19;
    v12 = v17;
    a1 = v36;
    LODWORD(v18) = v20(v18, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    *(v16 + 1) = v18;
    v5 = v37;
    _os_log_impl(&dword_1D9962000, v13, v14, "ImageContentLazy original.orientation: %u", v16, 8u);
    v22 = v16;
    v3 = v38;
    MEMORY[0x1DA7405F0](v22, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  v12(v8, v5);
  strcpy(v42, "ImageHandling");
  v42[7] = -4864;
  v43 = "Lazy input rotation";
  v44 = 19;
  v45 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v42, 0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = (*(v24 + 24))(v23, v24);
  if (v3)
  {
  }

  else
  {
    v26 = v25;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    v29 = *(v28 + 8);
    v30 = v26;
    v31 = v29(v27, v28);
    v32 = sub_1D9A55898(v31);

    v33 = v32;
    sub_1D9AFCCA4();

    v34 = v46;
    *(v46 + 24) = &type metadata for PixelImage;
    *(v34 + 32) = &off_1F5533940;
    *v34 = v33;
    *(v34 + 8) = 1;
  }
}

void sub_1D9AFC570(void *a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  strcpy(v25, "ImageHandling");
  v25[7] = -4864;
  v26 = "Lazy input resize";
  v27 = 17;
  v28 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v25, 0);
  if ((a3 & 1) != 0 || ((v9 = a2, v10 = a1[3], v11 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v10), v12 = (*(v11 + 16))(v10, v11), v13 = a1[3], v14 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v13), (*(v14 + 16))(v13, v14), v15 >= v12) ? (v16 = v12) : (v16 = v15), v16 <= v9))
  {
    sub_1D99A17C8(a1, a4);
  }

  else
  {
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v19 = (*(v18 + 24))(v17, v18);
    if (!v4)
    {
      v20 = v19;
      v21 = sub_1D9A3FCB0(v9);

      v22 = v21;
      sub_1D9AFCCA4();
      v23 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v23);
      LODWORD(v20) = (*(v24 + 8))(v23, v24);

      *(a4 + 24) = &type metadata for PixelImage;
      *(a4 + 32) = &off_1F5533940;
      *a4 = v22;
      *(a4 + 8) = v20;
      return;
    }
  }
}

uint64_t sub_1D9AFC7A8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  sub_1D9AFCA20(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9AFC824()
{
  sub_1D9AFBEFC(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2;
}

double sub_1D9AFC89C()
{
  sub_1D9AFBEFC(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 16))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2;
}

uint64_t sub_1D9AFC948@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  sub_1D9AFC0D4(sub_1D9AFC1FC, 0);
  a2[3] = type metadata accessor for ImageContentLazy();
  a2[4] = a1;
  *a2 = v5;
}

uint64_t sub_1D9AFC9B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AFCA20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1D9AFCCA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53138);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1D9C7D8AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12VisualLookUp19DurationMeasurement_timestamp;
  sub_1D9C7B8CC();
  v15 = v14 * -1000.0;
  if (v14 * -1000.0 < 0.0)
  {
    static Logger.argos.getter(v12);

    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E0AC();

    LODWORD(v44) = v17;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = v4;
      v19 = v18;
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v19 = 134218242;
      *(v19 + 4) = v15;
      *(v19 + 12) = 2080;
      v20 = sub_1D9C7E41C();
      v42 = v9;
      v22 = sub_1D9A0E224(v20, v21, v45);

      *(v19 + 14) = v22;
      _os_log_impl(&dword_1D9962000, v16, v44, "Invalid duration value %f of %s", v19, 0x16u);
      v23 = v41;
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x1DA7405F0](v23, -1, -1);
      v24 = v19;
      v4 = v43;
      MEMORY[0x1DA7405F0](v24, -1, -1);

      (*(v10 + 8))(v12, v42);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    goto LABEL_13;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v44 = v8;
    v27 = sub_1D9C7E41C();
    v29 = v28;
    v30 = (v0 + v13);
    sub_1D9C7B8DC();
    v32 = v31 * 1000.0;
    if (COERCE__INT64(fabs(v31 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -1.0)
    {
      if (v32 < 1.84467441e19)
      {
        v43 = v29;
        swift_beginAccess();
        v30 = *(v26 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + 16) = v30;
        v29 = v4;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_9:
          v35 = *(v30 + 2);
          v34 = *(v30 + 3);
          if (v35 >= v34 >> 1)
          {
            v30 = sub_1D9AF8728((v34 > 1), v35 + 1, 1, v30);
          }

          *(v30 + 2) = v35 + 1;
          v36 = &v30[32 * v35];
          v37 = v43;
          *(v36 + 4) = v27;
          *(v36 + 5) = v37;
          *(v36 + 6) = v15;
          *(v36 + 7) = v32;
          *(v26 + 16) = v30;
          swift_endAccess();

          v4 = v29;
          v8 = v44;
          goto LABEL_13;
        }

LABEL_19:
        v30 = sub_1D9AF8728(0, *(v30 + 2) + 1, 1, v30);
        *(v26 + 16) = v30;
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v38 = *(v1 + 16);
  sub_1D9C7E1EC();
  sub_1D9AFD448(v38 + OBJC_IVAR____TtC12VisualLookUp13SignpostEvent_signpostID, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D9AE99D0(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1D9C7D88C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D9AFD1DC()
{

  v1 = OBJC_IVAR____TtC12VisualLookUp19DurationMeasurement_timestamp;
  v2 = sub_1D9C7B90C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DurationMeasurement()
{
  result = qword_1EDD33790;
  if (!qword_1EDD33790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AFD2F8()
{
  result = sub_1D9C7B90C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9AFD3AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D9AFD3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9AFD448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AFD4B8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = sub_1D9C7B90C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7D8AC();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53138);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  swift_weakInit();
  v15 = *a1;
  v14 = *(a1 + 8);
  v33 = v2;
  v16 = v2 + OBJC_IVAR____TtC12VisualLookUp19DurationMeasurement_measurementDescription;
  v17 = *(a1 + 16);
  *v16 = *a1;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a1 + 32);
  type metadata accessor for SignpostEvent();
  v18 = swift_allocObject();
  v19 = qword_1EDD34670;
  v20 = swift_bridgeObjectRetain_n();
  if (v19 != -1)
  {
    v20 = swift_once();
  }

  v21 = qword_1EDD34678;
  MEMORY[0x1EEE9AC00](v20);
  *(&v31 - 2) = v15;
  *(&v31 - 1) = v14;

  os_unfair_lock_lock((v21 + 24));
  sub_1D9AFD8F4((v21 + 16), &v39);
  os_unfair_lock_unlock((v21 + 24));
  sub_1D9AFD910(a1);
  v22 = v39;

  *(v18 + OBJC_IVAR____TtC12VisualLookUp13SignpostEvent_osLog) = v22;
  v23 = v22;
  sub_1D9C7D89C();
  v24 = v38;
  (*(v38 + 56))(v13, 0, 1, v6);
  sub_1D9AFD940(v13, v18 + OBJC_IVAR____TtC12VisualLookUp13SignpostEvent_signpostID);
  v25 = v33;
  *(v33 + 16) = v18;
  v31 = *(a1 + 16);

  sub_1D9C7E1FC();
  sub_1D9AFD448(v18 + OBJC_IVAR____TtC12VisualLookUp13SignpostEvent_signpostID, v11);
  v26 = v25;
  if ((*(v24 + 48))(v11, 1, v6) == 1)
  {

    sub_1D9AFD910(a1);
    sub_1D9AE99D0(v11);
  }

  else
  {
    v27 = v38;
    v28 = v32;
    (*(v38 + 32))(v32, v11, v6);
    sub_1D9C7D88C();
    sub_1D9AFD910(a1);
    (*(v27 + 8))(v28, v6);
  }

  v29 = v34;
  sub_1D9C7B8FC();
  (*(v35 + 32))(v26 + OBJC_IVAR____TtC12VisualLookUp19DurationMeasurement_timestamp, v29, v36);
  swift_weakAssign();
  return v26;
}

uint64_t sub_1D9AFD940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AFD9B0()
{
  v1 = v0;
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() latestTaxonomyIdentifier];
  if (!v6)
  {
    sub_1D9C7DC7C();
    v6 = sub_1D9C7DC4C();
  }

  v22[0] = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69C0850]) initWithIdentifier:v6 error:v22];

  v8 = v22[0];
  *(v1 + 16) = v7;
  if (v8)
  {
    v9 = v8;
    static Logger.argos.getter(v5);
    v10 = v9;
    v11 = sub_1D9C7D8BC();
    v12 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = v2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136446210;
      v16 = sub_1D9A4FABC();
      v18 = sub_1D9A0E224(v16, v17, v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D9962000, v11, v12, "Failed to initialize VISceneTaxonomy: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1DA7405F0](v15, -1, -1);
      MEMORY[0x1DA7405F0](v14, -1, -1);

      (*(v3 + 8))(v5, v21);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1D9AFDC4C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MLModelRole(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLModelRole(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9AFDDFC()
{
  result = qword_1ECB533D0;
  if (!qword_1ECB533D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB533D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB533D0);
  }

  return result;
}

uint64_t sub_1D9AFDE60()
{
  sub_1D9C7DD6C();
}

unint64_t sub_1D9AFDFE0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65447463656A626FLL;
    v6 = 0xD000000000000019;
    if (a1 != 2)
    {
      v6 = 0x64656966696E75;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0x6F7765727574616ELL;
    v2 = 1685024614;
    if (a1 != 7)
    {
      v2 = 0x626D79536E676973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x766432736F677261;
    if (a1 != 4)
    {
      v3 = 0x6F7765727574616ELL;
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

uint64_t sub_1D9AFE138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9AFE290();
  *a1 = result;
  return result;
}

unint64_t sub_1D9AFE168@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9AFDFE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D9AFE194()
{
  sub_1D9C7E8DC();
  sub_1D9AFDE60();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9AFE1E4()
{
  sub_1D9C7E8DC();
  sub_1D9AFDE60();
  return sub_1D9C7E93C();
}

unint64_t sub_1D9AFE23C()
{
  result = qword_1EDD34B08[0];
  if (!qword_1EDD34B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD34B08);
  }

  return result;
}

uint64_t sub_1D9AFE290()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9AFE2F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9AFE310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp14NetworkServiceC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D9AFE36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9AFE3B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9AFE3F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D9AFE424(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1D9C7E40C();

    v5 = 0xD000000000000017;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1D9C7E40C();

    v5 = 0xD000000000000022;
LABEL_5:
    v7 = v5;
    MEMORY[0x1DA73DF90](a1, a2);
    return v7;
  }

  if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0x646465626D456F6ELL;
    }

    else
    {
      return 0x617461446F6ELL;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    if (a1 ^ 3 | a2)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else
  {
    return 0x656873696C627570;
  }
}

uint64_t sub_1D9AFE5CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  strcpy(v6, "NetworkError.");
  v4 = sub_1D9AFE424(v1, v2, v3);
  MEMORY[0x1DA73DF90](v4);

  return v6[0];
}

void sub_1D9AFE65C(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9B00184(v5);
  *a1 = v3;
}

void sub_1D9AFE704(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v98 = a5;
  v92 = a2;
  v96 = a1;
  v11 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v87 - v15;
  v16 = sub_1D9C7D8DC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v87 - v24;
  *&v103 = _s14DetectedResultVMa();
  v25 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  if (!a3[2])
  {
    goto LABEL_37;
  }

  v94 = v17;
  v88 = v16;
  *&v104 = *a4;
  v109 = a3;

  sub_1D9AFE65C(&v109);
  v90 = 0;
  v31 = v109;
  v32 = *(a6 + 12);
  v93 = a6;
  v95 = v12;
  v99 = v109;
  v100 = a7;
  if ((v32 & 1) == 0)
  {
LABEL_9:
    LODWORD(v102) = *(a6 + 8);
    v41 = v97;
    sub_1D99AB100(v98, v97, &unk_1ECB51B10);
    Context = type metadata accessor for VisualQueryContext();
    if ((*(*(Context - 8) + 48))(v41, 1, Context) == 1)
    {
      v43 = sub_1D99A6AE0(v41, &unk_1ECB51B10);
      v44 = v101;
      if (!v96)
      {
        goto LABEL_24;
      }

      v45 = 0;
    }

    else
    {
      v46 = *(v41 + 56);
      v43 = sub_1D9B017BC(v41, type metadata accessor for VisualQueryContext);
      v47 = v46 == 1;
      v45 = v46 == 1;
      v44 = v101;
      if (!v96)
      {
        if (v47)
        {
LABEL_21:
          LODWORD(v102) = *(a6 + 4);
          v58 = v89;
          static Logger.argos.getter(v89);
          v59 = v91;
          sub_1D9A3E0E0(v91);
          v60 = *(v94 + 8);
          v94 += 8;
          v60(v58, v88);
          v61 = sub_1D9C7D8BC();
          v62 = sub_1D9C7E09C();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 134217984;
            *(v63 + 4) = *&v102;
            _os_log_impl(&dword_1D9962000, v61, v62, "Use low threshold for screenshot: %f", v63, 0xCu);
            v64 = v63;
            v59 = v91;
            MEMORY[0x1DA7405F0](v64, -1, -1);
          }

          v60(v59, v88);
        }

LABEL_24:
        v96 = v31[2];
        if (v96)
        {
          v65 = 0;
          v97 = v31 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
          while (1)
          {
            v33 = v31[2];
            if (v65 >= v33)
            {
              break;
            }

            v66 = *(v12 + 72);
            v98 = v65;
            sub_1D9B01754(v97 + v66 * v65, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
            v67 = *(v44 + 7);
            v68 = *(v67 + 16);
            if (v68)
            {
              v69 = 0;
              v70 = *(v103 + 32);
              v71 = &v27[*(v103 + 28)];
              v72 = *v44;
              v73 = v44[1];
              v74 = v44[2];
              v75 = v44[3];
              v76 = *(v93 + 16);
              v77 = v67 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
              while (1)
              {
                v33 = *(v67 + 16);
                if (v69 >= v33)
                {
                  break;
                }

                sub_1D9B01754(v77 + *(v25 + 72) * v69, v27, _s14DetectedResultVMa);
                v78 = *(v71 + 1);
                v79 = *(v71 + 2);
                v80 = *(v71 + 3);
                v109 = *v71;
                v110 = v78;
                v111 = v79;
                v112 = v80;
                v113 = v104;
                v105 = 0;
                v106 = 0xE000000000000000;
                v107 = 0x34393538303251;
                v108 = 0xE700000000000000;

                LOBYTE(v80) = sub_1D9A375A8(&v109, &v105);

                v114.origin.x = v72;
                v114.origin.y = v73;
                v114.size.width = v74;
                v114.size.height = v75;
                Height = CGRectGetHeight(v114);
                v115.origin.x = v72;
                v115.origin.y = v73;
                v115.size.width = v74;
                v115.size.height = v75;
                Width = CGRectGetWidth(v115);
                v83 = *&v27[v70];
                sub_1D9B017BC(v27, _s14DetectedResultVMa);
                if ((v80 & 1) != 0 && Height * Width > v76 && *&v102 < v83)
                {

                  v84 = *(v101 + 1);
                  v104 = *v101;
                  v103 = v84;
                  sub_1D9B017BC(v101, type metadata accessor for VisualUnderstanding.ImageRegion);
                  v85 = v100;
                  v86 = v103;
                  *v100 = v104;
                  *(v85 + 16) = v86;
                  *(v85 + 32) = v83;
                  *(v85 + 36) = 0;
                  return;
                }

                if (v68 == ++v69)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_39;
            }

LABEL_26:
            v65 = v98 + 1;
            v44 = v101;
            sub_1D9B017BC(v101, type metadata accessor for VisualUnderstanding.ImageRegion);
            a7 = v100;
            v12 = v95;
            v31 = v99;
            if (v65 == v96)
            {
              goto LABEL_36;
            }
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_36:

LABEL_37:
        *(a7 + 32) = 0;
        *a7 = 0u;
        *(a7 + 16) = 0u;
        *(a7 + 36) = 1;
        return;
      }
    }

    MEMORY[0x1EEE9AC00](v43);
    *(&v87 - 2) = a6;
    v48 = v90;
    v49 = sub_1D9BC1958(sub_1D9B00164, (&v87 - 4), v92);
    v90 = v48;
    if (v45 || (v49 & 1) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v33 = v109[2];
  if (!v33)
  {
LABEL_41:
    __break(1u);

    __break(1u);
    return;
  }

  v34 = *(v109 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + 56);
  v35 = *(v34 + 16);

  v36 = 0;
  while (v35 != v36)
  {
    v33 = *(v34 + 16);
    if (v36 >= v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_1D9B01754(v34 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v36++, v30, _s14DetectedResultVMa);
    v37 = &v30[*(v103 + 28)];
    v38 = *(v37 + 1);
    v39 = *(v37 + 2);
    v40 = *(v37 + 3);
    v109 = *v37;
    v110 = v38;
    v111 = v39;
    v112 = v40;
    v113 = v104;
    v105 = 0;
    v106 = 0xE000000000000000;
    v107 = 0x34393538303251;
    v108 = 0xE700000000000000;

    LOBYTE(v40) = sub_1D9A375A8(&v109, &v105);

    sub_1D9B017BC(v30, _s14DetectedResultVMa);
    if (v40)
    {

      a7 = v100;
      a6 = v93;
      v12 = v95;
      v31 = v99;
      goto LABEL_9;
    }
  }

  v50 = v87;
  static Logger.argos.getter(v87);
  v51 = v102;
  sub_1D9A3E0E0(v102);
  v52 = *(v94 + 8);
  v53 = v88;
  v52(v50, v88);
  v54 = sub_1D9C7D8BC();
  v55 = sub_1D9C7E09C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1D9962000, v54, v55, "Largest box is not screenshot, do not refine the search region.", v56, 2u);
    MEMORY[0x1DA7405F0](v56, -1, -1);
  }

  v52(v51, v53);
  v57 = v100;
  *(v100 + 32) = 0;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 36) = 1;
}

BOOL sub_1D9AFF1F8(float *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(a1 + 1);
  v29 = *a1;
  v17 = a1[4];
  v26 = *(type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0) + 40);
  v27 = a2;
  sub_1D99AB100(a2 + v26, v8, &qword_1ECB52530);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    *(v15 + 4) = 0;
    sub_1D9C7D3BC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1D99A6AE0(v8, &qword_1ECB52530);
    }
  }

  else
  {
    sub_1D9B01EA0(v8, v15, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  }

  v20 = *v15;
  v19 = *(v15 + 1);

  sub_1D9B017BC(v15, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  if (v20 == v29 && v19 == v16)
  {
  }

  else
  {
    v22 = sub_1D9C7E7DC();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  v24 = v28;
  sub_1D99AB100(v27 + v26, v28, &qword_1ECB52530);
  if (v18(v24, 1, v9) == 1)
  {
    *v12 = 0;
    *(v12 + 1) = 0xE000000000000000;
    *(v12 + 4) = 0;
    sub_1D9C7D3BC();
    if (v18(v24, 1, v9) != 1)
    {
      sub_1D99A6AE0(v24, &qword_1ECB52530);
    }
  }

  else
  {
    sub_1D9B01EA0(v24, v12, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  }

  v25 = *(v12 + 4);
  sub_1D9B017BC(v12, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  return v25 < v17;
}

__objc2_class **sub_1D9AFF57C(void *a1)
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v104 = &v92 - v3;
  v103 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v92 - v6;
  Context = type metadata accessor for VisualQueryContext();
  v101 = *(Context - 1);
  MEMORY[0x1EEE9AC00](Context);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  v108 = v1;
  v100 = v1 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig;
  v109 = *(v1 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig);
  static Logger.argos.getter(&v92 - v16);
  v18 = sub_1D9C7D8BC();
  v19 = sub_1D9C7E09C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v11;
    v21 = v10;
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v109;
    _os_log_impl(&dword_1D9962000, v18, v19, "RefinedRegion version: %u", v22, 8u);
    v23 = v22;
    v10 = v21;
    v11 = v20;
    MEMORY[0x1DA7405F0](v23, -1, -1);
  }

  v26 = *(v11 + 8);
  v24 = v11 + 8;
  v25 = v26;
  v26(v17, v10);
  v27 = v110;
  [v110 regionOfInterest];
  v124.origin.x = 0.0;
  v124.origin.y = 0.0;
  v124.size.width = 1.0;
  v124.size.height = 1.0;
  v121 = CGRectIntersection(v120, v124);
  x = v121.origin.x;
  y = v121.origin.y;
  width = v121.size.width;
  height = v121.size.height;
  v32 = &off_1E858B000;
  if (([v27 imageType] & 0x8000000000000000) == 0 && objc_msgSend(v27, sel_imageType) <= 5)
  {
    v98 = v25;
    v96 = v24;
    v97 = v10;
    v33 = [v27 imageType];
    v34 = Context[10];
    v35 = sub_1D9C7B80C();
    v36 = *(*(v35 - 8) + 56);
    v36(&v9[v34], 1, 1, v35);
    v36(&v9[Context[14]], 1, 1, v35);
    v37 = MEMORY[0x1E69E7CC0];
    v38 = sub_1D9A455B8(MEMORY[0x1E69E7CC0]);
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = v37;
    *(v9 + 3) = v38;
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = v33;
    *&v9[Context[11]] = 0;
    *&v9[Context[12]] = 0;
    *&v9[Context[13]] = 0;
    v39 = &v9[Context[15]];
    *v39 = 0;
    *(v39 + 1) = 0;
    v40 = &v9[Context[16]];
    *v40 = 0;
    v40[8] = 1;
    *&v9[Context[17]] = 0;
    v41 = &v9[Context[18]];
    *v41 = 0;
    *(v41 + 1) = 0;
    v9[Context[19]] = 0;
    v42 = &v9[Context[20]];
    *v42 = 0;
    *(v42 + 1) = 0;
    v9[Context[21]] = 3;
    v43 = v108;
    v44 = *(v108 + 96);

    v45 = [v27 image];
    swift_getObjectType();
    sub_1D9AF6CF8(&v117);
    swift_unknownObjectRelease();
    v111 = x;
    v112 = y;
    v113 = width;
    v114 = height;
    v46 = *(*(v44 + 16) + 24);

    v95 = sub_1D9BE04B0(&v117, &v111, v46, [v27 preferredMetalDevice], 0);
    v92 = v47;
    v93 = v48;
    v94 = v49;

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v117);
    v111 = *(v43 + 32);
    v50 = v105;
    sub_1D9B01754(v9, v105, type metadata accessor for VisualQueryContext);
    (*(v101 + 56))(v50, 0, 1, Context);
    v51 = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig();
    v52 = v104;
    sub_1D99AB100(v100 + *(v51 + 28), v104, &qword_1ECB51050);
    v53 = *(v102 + 48);
    v54 = v103;
    if (v53(v52, 1, v103) == 1)
    {
      v55 = v106;
      *v106 = 0;
      *(v55 + 4) = 0;
      *(v55 + 4) = 0;
      v55[12] = 0;

      sub_1D9C7D3BC();
      v56 = *(v54 + 40);
      v57 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
      (*(*(v57 - 8) + 56))(&v55[v56], 1, 1, v57);
      v58 = v53(v52, 1, v54);
      v59 = v107;
      if (v58 != 1)
      {
        sub_1D99A6AE0(v52, &qword_1ECB51050);
      }
    }

    else
    {
      v55 = v106;
      sub_1D9B01EA0(v52, v106, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);

      v59 = v107;
    }

    v61 = v93;
    v62 = v95;
    sub_1D9AFE704(v93, v94, v95, &v111, v50, v55, &v117);
    sub_1D9B017BC(v55, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
    sub_1D99A6AE0(v50, &unk_1ECB51B10);

    v63 = v97;
    v64 = v98;
    if (v119)
    {
      v65 = sub_1D9B0181C(v62, v9);
      v66 = v61;
      v67 = v65;
      sub_1D99F2604(v92, v66);

      if (v67)
      {
        [v110 regionOfInterest];
        v125.origin.x = 0.0;
        v125.origin.y = 0.0;
        v125.size.width = 1.0;
        v125.size.height = 1.0;
        v123 = CGRectIntersection(v122, v125);
        v68 = v123.origin.x;
        v69 = v123.origin.y;
        v70 = v123.size.width;
        v71 = v123.size.height;
        v117 = v123;
        *&v118 = 1.0;
        v72 = 1.0;
        v119 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1D99F2604(v92, v61);
    }

    if (v119)
    {
      v73 = v99;
      static Logger.argos.getter(v99);
      v74 = sub_1D9C7D8BC();
      v75 = sub_1D9C7E09C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_1D9962000, v74, v75, "No detected refined region.", v76, 2u);
        MEMORY[0x1DA7405F0](v76, -1, -1);
      }

      v64(v73, v63);
      v77 = objc_allocWithZone(VIRefineRegionResult);
      sub_1D9B01E54();
      v78 = sub_1D9C7DF1C();
      v79 = [v77 initWithRefinedRegions:v78 version:v109];
      goto LABEL_22;
    }

    v72 = *&v118;
    v70 = v117.size.width;
    v71 = v117.size.height;
    v68 = v117.origin.x;
    v69 = v117.origin.y;
LABEL_19:
    static Logger.argos.getter(v59);
    v80 = sub_1D9C7D8BC();
    v81 = sub_1D9C7E09C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v116 = v83;
      *v82 = 136315138;
      v111 = v68;
      v112 = v69;
      v113 = v70;
      v114 = v71;
      v115 = v72;
      v84 = sub_1D9C7DD0C();
      v86 = sub_1D9A0E224(v84, v85, &v116);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_1D9962000, v80, v81, "Refined region: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x1DA7405F0](v83, -1, -1);
      MEMORY[0x1DA7405F0](v82, -1, -1);
    }

    v98(v59, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1D9C88F90;
    v88 = objc_allocWithZone(VIRefinedRegion);
    *&v89 = v72;
    *(v87 + 32) = [v88 initWithRegionOfInterest:v68 confidence:{v69, v70, v71, v89}];
    v90 = objc_allocWithZone(VIRefineRegionResult);
    sub_1D9B01E54();
    v78 = sub_1D9C7DF1C();

    v79 = [v90 initWithRefinedRegions:v78 version:v109];
LABEL_22:
    v32 = v79;

    sub_1D9B017BC(v9, type metadata accessor for VisualQueryContext);
    return v32;
  }

  sub_1D9B01700();
  swift_allocError();
  *v60 = 0xD000000000000013;
  v60[1] = 0x80000001D9CA9D50;
  swift_willThrow();
  return v32;
}

void sub_1D9B00184(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9B00574(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9B002B0(0, v2, 1, a1);
  }
}

void sub_1D9B002B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v36 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v36 - v15);
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v19;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    while (1)
    {
      sub_1D9B01754(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B01754(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = *v16;
      v24 = v16[1];
      v25 = v16[2];
      v26 = v16[3];
      v44.origin.x = *v16;
      v44.origin.y = v24;
      v44.size.width = v25;
      v44.size.height = v26;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v23;
      v45.origin.y = v24;
      v45.size.width = v25;
      v45.size.height = v26;
      v28 = Height * CGRectGetWidth(v45);
      v29 = *v12;
      v30 = v12[1];
      v31 = v12[2];
      v32 = v12[3];
      v46.origin.x = *v12;
      v46.origin.y = v30;
      v46.size.width = v31;
      v46.size.height = v32;
      v33 = CGRectGetHeight(v46);
      v47.origin.x = v29;
      v47.origin.y = v30;
      v47.size.width = v31;
      v47.size.height = v32;
      v34 = v33 * CGRectGetWidth(v47);
      sub_1D9B017BC(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B017BC(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v34 >= v28)
      {
LABEL_4:
        a3 = v42 + 1;
        v19 = v41 + v37;
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9B01EA0(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9B01EA0(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9B00574(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v146 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v142 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v136 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v130 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v130 - v16);
  v144 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v134;
    if (!*v134)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v125 = a4;
    }

    else
    {
LABEL_128:
      v125 = sub_1D99E8FDC(a4);
    }

    v147 = v125;
    a4 = *(v125 + 2);
    if (a4 >= 2)
    {
      while (*v144)
      {
        v126 = *&v125[16 * a4];
        v127 = v125;
        v128 = *&v125[16 * a4 + 24];
        sub_1D9B01028(*v144 + *(v142 + 72) * v126, *v144 + *(v142 + 72) * *&v125[16 * a4 + 16], *v144 + *(v142 + 72) * v128, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v128 < v126)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1D99E8FDC(v127);
        }

        if (a4 - 2 >= *(v127 + 2))
        {
          goto LABEL_122;
        }

        v129 = &v127[16 * a4];
        *v129 = v126;
        *(v129 + 1) = v128;
        v147 = v127;
        sub_1D99E8F50(a4 - 1);
        v125 = v147;
        a4 = *(v147 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v133 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v137 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v144;
      v25 = *(v142 + 72);
      v5 = *v144 + v25 * v22;
      sub_1D9B01754(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B01754(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = *v17;
      v27 = v17[1];
      v28 = v17[2];
      v29 = v17[3];
      v148.origin.x = *v17;
      v148.origin.y = v27;
      v148.size.width = v28;
      v148.size.height = v29;
      Height = CGRectGetHeight(v148);
      v149.origin.x = v26;
      v149.origin.y = v27;
      v149.size.width = v28;
      v149.size.height = v29;
      v31 = Height * CGRectGetWidth(v149);
      v32 = *v14;
      v33 = v14[1];
      v34 = v14[2];
      v35 = v14[3];
      v150.origin.x = *v14;
      v150.origin.y = v33;
      v150.size.width = v34;
      v150.size.height = v35;
      v36 = CGRectGetHeight(v150);
      v151.origin.x = v32;
      v151.origin.y = v33;
      v151.size.width = v34;
      v151.size.height = v35;
      v37 = v36 * CGRectGetWidth(v151);
      sub_1D9B017BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B017BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v132 = v23;
      v38 = v23 + 2;
      v143 = v25;
      v39 = v24 + v25 * v38;
      while (v18 != v38)
      {
        sub_1D9B01754(v39, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B01754(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v40 = *v17;
        v41 = v17[1];
        v42 = v17[2];
        v43 = v17[3];
        v152.origin.x = *v17;
        v152.origin.y = v41;
        v152.size.width = v42;
        v152.size.height = v43;
        v44 = CGRectGetHeight(v152);
        v153.origin.x = v40;
        v153.origin.y = v41;
        v153.size.width = v42;
        v153.size.height = v43;
        v45 = v44 * CGRectGetWidth(v153);
        v46 = *v14;
        v47 = v14[1];
        v48 = v14[2];
        v49 = v14[3];
        v154.origin.x = *v14;
        v154.origin.y = v47;
        v154.size.width = v48;
        v154.size.height = v49;
        v50 = CGRectGetHeight(v154);
        v155.origin.x = v46;
        v155.origin.y = v47;
        v155.size.width = v48;
        v155.size.height = v49;
        v51 = v50 * CGRectGetWidth(v155);
        sub_1D9B017BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B017BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v38;
        v39 += v143;
        v5 += v143;
        if (v37 < v31 == v51 >= v45)
        {
          v18 = v38 - 1;
          break;
        }
      }

      a4 = v133;
      v21 = v132;
      if (v37 < v31)
      {
        if (v18 < v132)
        {
          goto LABEL_125;
        }

        if (v132 < v18)
        {
          v131 = v6;
          v52 = v143 * (v18 - 1);
          v53 = v18 * v143;
          v141 = v18;
          v54 = v18;
          v55 = v132;
          v56 = v132 * v143;
          do
          {
            if (v55 != --v54)
            {
              v57 = *v144;
              if (!*v144)
              {
                goto LABEL_131;
              }

              v5 = v57 + v56;
              sub_1D9B01EA0(v57 + v56, v136, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v56 < v52 || v5 >= v57 + v53)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v56 != v52)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9B01EA0(v136, v57 + v52, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v55;
            v52 -= v143;
            v53 -= v143;
            v56 += v143;
          }

          while (v55 < v54);
          v6 = v131;
          a4 = v133;
          v21 = v132;
          v18 = v141;
        }
      }
    }

    v58 = v144[1];
    if (v18 < v58)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v58)
        {
          v59 = v144[1];
        }

        else
        {
          v59 = v21 + a4;
        }

        if (v59 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v59)
        {
          break;
        }
      }
    }

    v60 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v137;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v137 + 2) + 1, 1, v137);
    }

    a4 = *(v20 + 2);
    v61 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      v20 = sub_1D99E8FF0((v61 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v62 = &v20[16 * a4];
    *(v62 + 4) = v21;
    *(v62 + 5) = v60;
    v63 = *v134;
    if (!*v134)
    {
      goto LABEL_133;
    }

    v138 = v60;
    if (a4)
    {
      while (1)
      {
        v64 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v65 = *(v20 + 4);
          v66 = *(v20 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_52:
          if (v68)
          {
            goto LABEL_112;
          }

          v81 = &v20[16 * v5];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_115;
          }

          v87 = &v20[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_119;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v91 = &v20[16 * v5];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_66:
        if (v86)
        {
          goto LABEL_114;
        }

        v94 = &v20[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_117;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v64 - 1;
        if (v64 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_127;
        }

        if (!*v144)
        {
          goto LABEL_130;
        }

        v102 = v20;
        v103 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v64 + 40];
        sub_1D9B01028(*v144 + *(v142 + 72) * v103, *v144 + *(v142 + 72) * *&v20[16 * v64 + 32], *v144 + *(v142 + 72) * v5, v63);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v103)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1D99E8FDC(v102);
        }

        if (a4 >= *(v102 + 2))
        {
          goto LABEL_109;
        }

        v104 = &v102[16 * a4];
        *(v104 + 4) = v103;
        *(v104 + 5) = v5;
        v147 = v102;
        sub_1D99E8F50(v64);
        v20 = v147;
        v5 = *(v147 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v20[16 * v5 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_110;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_111;
      }

      v76 = &v20[16 * v5];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_113;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_116;
      }

      if (v80 >= v72)
      {
        v98 = &v20[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_120;
        }

        if (v67 < v101)
        {
          v64 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v144[1];
    v19 = v138;
    a4 = v133;
    if (v138 >= v18)
    {
      goto LABEL_95;
    }
  }

  v131 = v6;
  v105 = *v144;
  v106 = *(v142 + 72);
  v107 = *v144 + v106 * (v18 - 1);
  v108 = v21;
  v109 = -v106;
  v132 = v108;
  v110 = v108 - v18;
  v135 = v106;
  v5 = v105 + v18 * v106;
  v138 = v59;
LABEL_85:
  v140 = v110;
  v141 = v18;
  v139 = v5;
  v143 = v107;
  v111 = v107;
  while (1)
  {
    sub_1D9B01754(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B01754(v111, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v112 = *v17;
    v113 = v17[1];
    v114 = v17[2];
    v115 = v17[3];
    v156.origin.x = *v17;
    v156.origin.y = v113;
    v156.size.width = v114;
    v156.size.height = v115;
    v116 = CGRectGetHeight(v156);
    v157.origin.x = v112;
    v157.origin.y = v113;
    v157.size.width = v114;
    v157.size.height = v115;
    v117 = v116 * CGRectGetWidth(v157);
    v118 = *v14;
    v119 = v14[1];
    v120 = v14[2];
    v121 = v14[3];
    v158.origin.x = *v14;
    v158.origin.y = v119;
    v158.size.width = v120;
    v158.size.height = v121;
    v122 = CGRectGetHeight(v158);
    v159.origin.x = v118;
    v159.origin.y = v119;
    v159.size.width = v120;
    v159.size.height = v121;
    v123 = v122 * CGRectGetWidth(v159);
    sub_1D9B017BC(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B017BC(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v123 >= v117)
    {
LABEL_84:
      v18 = v141 + 1;
      v107 = v143 + v135;
      v110 = v140 - 1;
      v60 = v138;
      v5 = v139 + v135;
      if (v141 + 1 != v138)
      {
        goto LABEL_85;
      }

      v6 = v131;
      v21 = v132;
      if (v138 < v132)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v105)
    {
      break;
    }

    a4 = v145;
    sub_1D9B01EA0(v5, v145, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9B01EA0(a4, v111, type metadata accessor for VisualUnderstanding.ImageRegion);
    v111 += v109;
    v5 += v109;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D9B01028(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = a3;
  v59 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v59);
  v9 = (v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v54 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v60 - a2;
  if (v60 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v63 = a1;
  v62 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54[1] = v4;
    v33 = a4 + v18;
    if (v18 < 1)
    {
      v36 = a4 + v18;
    }

    else
    {
      v34 = -v14;
      v35 = a4 + v18;
      v36 = v33;
      v56 = v34;
      v57 = a4;
      while (2)
      {
        while (1)
        {
          v54[0] = v36;
          v37 = a2 + v34;
          v58 = a2;
          while (1)
          {
            v39 = v60;
            if (a2 <= a1)
            {
              v63 = a2;
              v61 = v54[0];
              goto LABEL_60;
            }

            v55 = v36;
            v60 += v34;
            v40 = v35 + v34;
            sub_1D9B01754(v40, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
            a2 = v37;
            sub_1D9B01754(v37, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
            v41 = *v12;
            v42 = v12[1];
            v43 = v12[2];
            v44 = v12[3];
            v68.origin.x = *v12;
            v68.origin.y = v42;
            v68.size.width = v43;
            v68.size.height = v44;
            Height = CGRectGetHeight(v68);
            v69.origin.x = v41;
            v69.origin.y = v42;
            v69.size.width = v43;
            v69.size.height = v44;
            v46 = Height * CGRectGetWidth(v69);
            v47 = *v9;
            v48 = v9[1];
            v49 = v9[2];
            v50 = v9[3];
            v70.origin.x = *v9;
            v70.origin.y = v48;
            v70.size.width = v49;
            v70.size.height = v50;
            v51 = CGRectGetHeight(v70);
            v71.origin.x = v47;
            v71.origin.y = v48;
            v71.size.width = v49;
            v71.size.height = v50;
            v52 = v51 * CGRectGetWidth(v71);
            sub_1D9B017BC(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
            sub_1D9B017BC(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
            if (v52 < v46)
            {
              break;
            }

            v36 = v40;
            if (v39 < v35 || v60 >= v35)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v35 = v40;
            a2 = v58;
            v38 = v40 > v57;
            v34 = v56;
            if (!v38)
            {
              goto LABEL_58;
            }
          }

          v53 = v57;
          if (v39 < v58 || v60 >= v58)
          {
            break;
          }

          v36 = v55;
          v34 = v56;
          if (v39 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v35 <= v53)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v36 = v55;
        v34 = v56;
        if (v35 > v53)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v63 = a2;
    v61 = v36;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v61 = a4 + v17;
    if (v17 >= 1 && a2 < v60)
    {
      do
      {
        sub_1D9B01754(a2, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B01754(a4, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = *v12;
        v22 = v12[1];
        v23 = v12[2];
        v24 = v12[3];
        v64.origin.x = *v12;
        v64.origin.y = v22;
        v64.size.width = v23;
        v64.size.height = v24;
        v25 = CGRectGetHeight(v64);
        v65.origin.x = v21;
        v65.origin.y = v22;
        v65.size.width = v23;
        v65.size.height = v24;
        v26 = v25 * CGRectGetWidth(v65);
        v27 = *v9;
        v28 = v9[1];
        v29 = v9[2];
        v30 = v9[3];
        v66.origin.x = *v9;
        v66.origin.y = v28;
        v66.size.width = v29;
        v66.size.height = v30;
        v31 = CGRectGetHeight(v66);
        v67.origin.x = v27;
        v67.origin.y = v28;
        v67.size.width = v29;
        v67.size.height = v30;
        v32 = v31 * CGRectGetWidth(v67);
        sub_1D9B017BC(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B017BC(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v32 >= v26)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v62 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v63 = a1;
      }

      while (a4 < v19 && a2 < v60);
    }
  }

LABEL_60:
  sub_1D9B01618(&v63, &v62, &v61, type metadata accessor for VisualUnderstanding.ImageRegion);
}

uint64_t sub_1D9B01618(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1D9B01700()
{
  result = qword_1ECB53540;
  if (!qword_1ECB53540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53540);
  }

  return result;
}

uint64_t sub_1D9B01754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B017BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B0181C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = _s14DetectedResultVMa();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 56) != 1)
  {
    static Logger.argos.getter(v7);
    v45 = sub_1D9C7D8BC();
    v46 = sub_1D9C7E09C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D9962000, v45, v46, "Do not fallback for non-screenshot images", v47, 2u);
      MEMORY[0x1DA7405F0](v47, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v53 = *(a1 + 16);
  if (!v53)
  {
LABEL_16:

    return 0;
  }

  v49 = v14;
  v50 = v10;
  v51 = v5;
  v52 = v4;
  v21 = 0;
  v59 = v56 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig;
  v22 = *(v19 + 80);
  v54 = *(v19 + 72);
  v55 = a1 + ((v22 + 32) & ~v22);
  while (1)
  {
    v58 = v21;
    v23 = v55 + v54 * v21;
    v24 = v57;
    sub_1D9B01754(v23, v57, type metadata accessor for VisualUnderstanding.ImageRegion);
    v25 = *(v24 + 56);

    result = sub_1D9B017BC(v24, type metadata accessor for VisualUnderstanding.ImageRegion);
    v27 = *(v25 + 16);
    if (v27)
    {
      break;
    }

LABEL_4:
    v21 = v58 + 1;

    if (v21 == v53)
    {
      goto LABEL_16;
    }
  }

  v28 = 0;
  v29 = *(v56 + 32);
  v30 = v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  while (1)
  {
    if (v28 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D9B01754(v30 + *(v12 + 72) * v28, v17, _s14DetectedResultVMa);
    v31 = &v17[*(v11 + 28)];
    v32 = v31[1];
    v33 = v31[2];
    v34 = v31[3];
    v61[0] = *v31;
    v61[1] = v32;
    v61[2] = v33;
    v61[3] = v34;
    v61[4] = v29;
    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    v60[2] = 0x34393538303251;
    v60[3] = 0xE700000000000000;

    LOBYTE(v32) = sub_1D9A375A8(v61, v60);

    if ((v32 & 1) == 0 && *(v59 + 4) < *&v17[*(v11 + 32)])
    {
      break;
    }

    ++v28;
    result = sub_1D9B017BC(v17, _s14DetectedResultVMa);
    if (v27 == v28)
    {
      goto LABEL_4;
    }
  }

  v35 = v50;
  static Logger.argos.getter(v50);
  v36 = v49;
  sub_1D9B01754(v17, v49, _s14DetectedResultVMa);
  v37 = sub_1D9C7D8BC();
  v38 = sub_1D9C7E09C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v61[0] = v40;
    *v39 = 136315138;
    v41 = sub_1D9B3AC64();
    v43 = v42;
    sub_1D9B017BC(v36, _s14DetectedResultVMa);
    v44 = sub_1D9A0E224(v41, v43, v61);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1D9962000, v37, v38, "Satisfied detector result %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x1DA7405F0](v40, -1, -1);
    MEMORY[0x1DA7405F0](v39, -1, -1);
  }

  else
  {

    sub_1D9B017BC(v36, _s14DetectedResultVMa);
  }

  (*(v51 + 8))(v35, v52);
  sub_1D9B017BC(v17, _s14DetectedResultVMa);
  return 1;
}

unint64_t sub_1D9B01E54()
{
  result = qword_1EDD2A6A8;
  if (!qword_1EDD2A6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2A6A8);
  }

  return result;
}

uint64_t sub_1D9B01EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B01F20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 56);
  v4 = *(v3 + 16);
  if (v4 <= result)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = result - v5;
  if (v6 >= v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v3 + 24 * v6;
    v8 = *(v7 + 48);
    *a2 = *(v7 + 32);
    *(a2 + 16) = v8;
  }

  return result;
}

VisualLookUp::S2Point __swiftcall S2Loop.vertex(_:)(Swift::Int a1)
{
  v3 = *(*v2 + 16);
  if (v3 <= a1)
  {
    v4 = *(*v2 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1 - v4;
  if (v5 >= v3)
  {
    __break(1u);
  }

  else
  {
    v6 = *v2 + 24 * v5;
    v7 = *(v6 + 48);
    v8 = *(v6 + 32);
    *v1 = v8;
    *(v1 + 16) = v7;
  }

  result.y = *&v8;
  result.x = v7;
  return result;
}

uint64_t sub_1D9B01F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 56);
    v5 = *(v4 + 16);
    if (v3 >= v5)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = 0;
    }

    v7 = v3 - v6;
    if (v7 < v5)
    {
      v8 = v4 + 24 * v7;
      v9 = *(v8 + 48);
      *a2 = *(v8 + 32);
      *(a2 + 16) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B02010()
{
}

uint64_t sub_1D9B0205C()
{

  return swift_deallocClassInstance();
}

uint64_t S2Loop.vertices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void S2Loop.init(vertices:)(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  *(a2 + 1) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = sub_1D9A47114(MEMORY[0x1E69E7CC0]);
  *(a2 + 3) = 0;
  if (qword_1ECB50AD0 != -1)
  {
    swift_once();
  }

  v5 = xmmword_1ECB528E0;
  a2[2] = xmmword_1D9C8C730;
  a2[3] = v5;
  *(a2 + 64) = 0;
  *(a2 + 9) = 0;
  *a2 = a1;
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[4];
  v15[3] = a2[3];
  v15[4] = v7;
  v15[2] = a2[2];
  type metadata accessor for S2Loop.S2LoopEdgeIndex();
  v8 = swift_allocObject();
  v9 = *a2;
  *(v8 + 72) = a2[1];
  v10 = a2[3];
  *(v8 + 88) = a2[2];
  *(v8 + 104) = v10;
  *(v8 + 120) = a2[4];
  *(v8 + 56) = v9;
  *(v8 + 16) = v4;
  *(v8 + 24) = v4;
  *(v8 + 32) = 30;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  sub_1D9B06024(v15, &v14);

  *(a2 + 1) = v8;
  sub_1D9B02288();
  sub_1D9B02560(v11, v12, v13);
  sub_1D9B02860();
  sub_1D9B0293C();
}

void sub_1D9B02288()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = 1 - v2;
  if (v2 > 1)
  {
    v3 = 1;
  }

  if (v3 >= v2)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = v0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = v1 + 4;
  v10 = &v1[3 * v3 + 4];
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = atan2(*(v10 + 16), sqrt(v11 * v11 + v12 * v12));
  if (v8 > v13 || v13 > v7)
  {
    goto LABEL_29;
  }

  v15 = atan2(v12, v11);
  *&v58 = v5;
  *(&v58 + 1) = v6;
  if (!S1Interval.contains(point:)(v15))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v0 + 64) = 0;
  v16 = *(v10 + 16);
  v65 = *v10;
  v66 = v16;
  S2Point.ortho.getter(&v63);
  v17 = v1[2];
  if (!v17)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = 2 - v17;
  if (v17 > 2)
  {
    v18 = 2;
  }

  if (v18 >= v17)
  {
    goto LABEL_32;
  }

  if (v17 <= (v17 != 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v46 = *(&v63 + 1);
  v47 = v63;
  v19 = v1[5];
  v45 = v64;
  v20 = v1[6];
  v21 = &v9[3 * v18];
  v22 = v21[1];
  v23 = v21[2];
  v24 = *v21;
  v25 = &v9[3 * (v17 != 1)];
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  *&v58 = v1[4];
  v44 = v58;
  *(&v58 + 1) = v19;
  *&v59 = v20;
  *&v53 = v26;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  v48 = v63;
  *&v49 = v64;
  v29 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v58, &v53, &v48);
  *&v58 = v24;
  *(&v58 + 1) = v22;
  *&v59 = v23;
  *&v53 = v26;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  *&v48 = v44;
  *(&v48 + 1) = v19;
  *&v49 = v20;
  v30 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v58, &v53, &v48);
  *&v58 = v47;
  *(&v58 + 1) = v46;
  *&v59 = v45;
  *&v53 = v26;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  *&v48 = v24;
  *(&v48 + 1) = v22;
  *&v49 = v23;
  v31 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v58, &v53, &v48);
  v32 = v4[1];
  v58 = *v4;
  v59 = v32;
  v33 = v4[3];
  v35 = *v4;
  v34 = v4[1];
  v60 = v4[2];
  v61 = v33;
  v37 = v4[2];
  v36 = v4[3];
  v62 = v4[4];
  v55 = v37;
  v56 = v36;
  v57 = v4[4];
  v53 = v35;
  v54 = v34;
  v38 = *(v58 + 16);
  v39 = 1 - v38;
  if (v38 > 1)
  {
    v39 = 1;
  }

  if (v39 >= v38)
  {
    goto LABEL_34;
  }

  v40 = v29 >= 0;
  if (v29 < 0)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2;
  }

  if (v30 >= 0)
  {
    v40 = v41;
  }

  if (v31 <= 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = v40 + 1;
  }

  sub_1D9B06024(&v58, &v48);
  v43 = S2Loop.contains(point:)(v67);
  v50 = v55;
  v51 = v56;
  v52 = v57;
  v48 = v53;
  v49 = v54;
  sub_1D9B0605C(&v48);
  if ((((v42 < 2) ^ v43) & 1) == 0)
  {
    *(v4 + 64) = 1;
  }
}

uint64_t sub_1D9B02560(double a1, double a2, double a3)
{
  v4 = v3;
  if (qword_1ECB50B20 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = xmmword_1ECB52C88;
  if (qword_1ECB50AC8 != -1)
  {
    v35 = xmmword_1ECB52C88;
    swift_once();
    v5 = v35;
  }

  v6 = 0;
  v7 = 0;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v64 = v5;
  v65 = xmmword_1ECB528D0;
  v8 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3 + 32;
  v11 = v9 == 0;
  v12 = 1;
  do
  {
    if (v6 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v13 = v10 + 24 * v6;
    v14 = *(v13 + 16);
    v56 = *v13;
    v15 = v56;
    *&v57 = v14;
    RectBounder.add(point:)(*(&a3 - 2));
    if (v11)
    {
      goto LABEL_12;
    }

    ++v7;
    if (v12 >= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v6 = v7 - v16;
    v11 = v9 == v12++;
  }

  while ((~v16 + v12) >= 0);
  __break(1u);
LABEL_12:
  v18 = *(&v64 + 1);
  v17 = *&v64;
  v20 = *(&v65 + 1);
  v19 = *&v65;
  if (qword_1ECB50AD0 != -1)
  {
    swift_once();
  }

  v21 = xmmword_1ECB528E0;
  *(v3 + 2) = xmmword_1D9C8C730;
  *(v3 + 3) = v21;
  v22 = *(v3 + 2);
  v23 = *v3;
  v52 = *(v3 + 1);
  v53 = v22;
  v24 = *(v3 + 2);
  v25 = *(v3 + 4);
  v54 = *(v3 + 3);
  v55 = v25;
  v26 = *v3;
  v48 = v24;
  v49 = v54;
  v50 = *(v3 + 4);
  v51 = v26;
  v46 = v23;
  v47 = v52;
  v41 = 0uLL;
  *&v42 = 0x3FF0000000000000;
  sub_1D9B06024(&v51, &v56);
  v27 = S2Loop.contains(point:)(v66);
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v56 = v46;
  v57 = v47;
  result = sub_1D9B0605C(&v56);
  if (v27)
  {
    v20 = *(&xmmword_1ECB528E0 + 1);
    v19 = *&xmmword_1ECB528E0;
  }

  if (v20 - v19 == 6.28318531)
  {
    v29 = *(v3 + 1);
    v30 = *(v3 + 3);
    v43 = *(v3 + 2);
    v44 = v30;
    v31 = *(v3 + 3);
    v45 = *(v3 + 4);
    v32 = *(v3 + 1);
    v41 = *v3;
    v42 = v32;
    v38 = v43;
    v39 = v31;
    v40 = *(v3 + 4);
    v36 = v41;
    v37 = v29;
    sub_1D9B06024(&v41, &v46);
    v33 = S2Loop.contains(point:)(v67);
    v48 = v38;
    v49 = v39;
    v50 = v40;
    v46 = v36;
    v47 = v37;
    result = sub_1D9B0605C(&v46);
    if (v33)
    {
      v17 = -1.57079633;
    }
  }

  v34 = 1.57079633;
  if (!v27)
  {
    v34 = v18;
  }

  v4[4] = v17;
  v4[5] = v34;
  v4[6] = v19;
  v4[7] = v20;
  return result;
}

void sub_1D9B02860()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    v0[3] = 0;
    return;
  }

  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = 1;
  while (1)
  {
    v7 = v5 >= v2 ? *(*v0 + 16) : 0;
    if (v5 - v7 >= v2)
    {
      break;
    }

    if (v3 >= v2)
    {
      v8 = *(*v0 + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = v3 - v8;
    if (v3 - v8 >= v2)
    {
      goto LABEL_24;
    }

    v10 = (v1 - 24 * v7);
    v11 = v10[7];
    v12 = (v4 + 24 * v9);
    v6 = v5;
    if (v11 >= *v12)
    {
      if (*v12 >= v11)
      {
        v13 = v10[8];
        v14 = v12[1];
        v6 = v5;
        if (v13 < v14)
        {
          goto LABEL_5;
        }

        if (v14 >= v13)
        {
          if (v10[9] >= v12[2])
          {
            v6 = v3;
          }

          else
          {
            v6 = v5;
          }

          goto LABEL_5;
        }
      }

      v6 = v3;
    }

LABEL_5:
    ++v5;
    v1 += 24;
    v3 = v6;
    if (v2 == v5)
    {
      v0[3] = v6;
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1D9B0293C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    return;
  }

  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = v0;
  v4 = *v0;
  v5 = 1;
  while (v2 != v5)
  {
    v6 = *(v1 + 16);
    if (v5 >= v6)
    {
      v7 = *(v1 + 16);
    }

    else
    {
      v7 = 0;
    }

    if (v5 - v7 >= v6)
    {
      goto LABEL_23;
    }

    v8 = (v4 - 24 * v7);
    v9 = v8[7];
    v10 = v8[8];
    v11 = v8[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v3[2];
    v14 = sub_1D99EE5EC(v9, v10, v11);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_1D9C0D338(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D99EE5EC(v9, v10, v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_27;
      }

LABEL_16:
      v22 = v13;
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v26 = v14;
    sub_1D9C160C4();
    v14 = v26;
    v22 = v13;
    if (v20)
    {
LABEL_4:
      *(v22[7] + 8 * v14) = v5;
      goto LABEL_5;
    }

LABEL_17:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    v23 = (v22[6] + 24 * v14);
    *v23 = v9;
    v23[1] = v10;
    v23[2] = v11;
    *(v22[7] + 8 * v14) = v5;
    v24 = v22[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_25;
    }

    v22[2] = v25;
LABEL_5:
    ++v5;
    v3[2] = v22;
    v4 += 24;
    if (v2 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1D9C7E84C();
  __break(1u);
}

__n128 S2Loop.init(cell:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v15 = *(a1 + 16);
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v15;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  S2Cell.rectBound.getter(v10);
  v9[0] = v10[0];
  v9[1] = v10[1];
  S2Loop.init(cell:bound:)(&v16, v9, v21);
  v7 = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v21[4];
  result = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = result;
  return result;
}

void S2Loop.init(cell:bound:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v8 = a1[2];
  v16 = *a2;
  v17 = a2[1];
  *(a3 + 1) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(a3 + 2) = sub_1D9A47114(MEMORY[0x1E69E7CC0]);
  *(a3 + 3) = 0;
  if (qword_1ECB50AD0 != -1)
  {
    swift_once();
  }

  *(a3 + 64) = 0;
  *(a3 + 9) = 0;
  a3[2] = v16;
  a3[3] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9C85E90;
  S2Cell.getVertex(_:)(0);
  S2Cell.getVertex(_:)(1);
  S2Cell.getVertex(_:)(2);
  *&v19 = v4;
  BYTE8(v19) = v5;
  BYTE9(v19) = v6;
  BYTE10(v19) = v7;
  *&v20 = v8;
  S2Cell.getVertex(_:)(3);

  *a3 = v10;
  v11 = a3[1];
  v19 = *a3;
  v20 = v11;
  v12 = a3[3];
  v21 = a3[2];
  v22 = v12;
  v23 = a3[4];
  type metadata accessor for S2Loop.S2LoopEdgeIndex();
  v13 = swift_allocObject();
  v14 = *a3;
  *(v13 + 72) = a3[1];
  v15 = a3[3];
  *(v13 + 88) = a3[2];
  *(v13 + 104) = v15;
  *(v13 + 120) = a3[4];
  *(v13 + 56) = v14;
  *(v13 + 16) = v9;
  *(v13 + 24) = v9;
  *(v13 + 32) = 30;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  sub_1D9B06024(&v19, v18);

  *(a3 + 1) = v13;
  sub_1D9B02288();
  sub_1D9B02860();
  sub_1D9B0293C();
}

uint64_t S2Loop.sign.getter()
{
  if (*(v0 + 72))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

Swift::Void __swiftcall S2Loop.normalize()()
{
  sub_1D9B031F0(0, v0);
  if (v0[0] > 6.28318531)
  {

    S2Loop.invert()();
  }
}

Swift::Void __swiftcall S2Loop.invert()()
{
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v3)
  {
    v1 = (v3 - 2) / 2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v2 = sub_1D9B1A79C(v2);
LABEL_3:
  v7 = *(v2 + 2);
  if (v1 >= v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v3 + ~v1;
  if (v8 >= v7)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1D9B02560(v4, *&v5, *&v6);
    goto LABEL_20;
  }

  v9 = &v2[24 * v1 + 32];
  v4 = *(v9 + 16);
  v10 = &v2[24 * v8 + 32];
  *(v9 + 16) = *(v10 + 16);
  v5 = *v9;
  v6 = *v10;
  *v9 = *v10;
  *v10 = v5;
  *(v10 + 16) = v4;
  if (v3 >= 4)
  {
    v11 = 24 * v1;
    v12 = 24 * v3 - 24 * v1;
    v13 = v3 - v1;
    while (v1-- >= 1)
    {
      v15 = *(v2 + 2);
      if (v1 >= v15)
      {
        goto LABEL_16;
      }

      if (v13 >= v15)
      {
        goto LABEL_17;
      }

      v16 = &v2[v11];
      v4 = *&v2[v11 + 24];
      v17 = &v2[v12];
      *&v5 = *&v2[v12 + 48];
      v6 = *&v2[v11 + 8];
      v18 = *&v2[v12 + 32];
      *(v16 + 3) = v5;
      *(v16 + 8) = v18;
      *(v17 + 2) = v6;
      *(v17 + 6) = v4;
      v12 += 24;
      ++v13;
      v11 -= 24;
      if (!v1)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

LABEL_11:
  *v0 = v2;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = sub_1D9A47114(MEMORY[0x1E69E7CC0]);

  *(v0 + 2) = v20;
  v21 = v0[4];
  v30[3] = v0[3];
  v31 = v21;
  v22 = v0[2];
  v30[1] = v0[1];
  v30[2] = v22;
  v30[0] = *v0;
  v23 = v31;
  v24 = v22;
  type metadata accessor for S2Loop.S2LoopEdgeIndex();
  v25 = swift_allocObject();
  v26 = *v0;
  *(v25 + 72) = v0[1];
  v27 = v0[3];
  *(v25 + 88) = v0[2];
  *(v25 + 104) = v27;
  *(v25 + 120) = v0[4];
  *(v25 + 56) = v26;
  *(v25 + 16) = v19;
  *(v25 + 24) = v19;
  *(v25 + 32) = 30;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  sub_1D9B06024(v30, &v29);

  *(v0 + 1) = v25;
  *(v0 + 64) = (v23 & 1) == 0;
  v4 = -1.57079633;
  if (*&v24 <= -1.57079633)
  {
    goto LABEL_19;
  }

  v4 = 1.57079633;
  if (*(&v24 + 1) >= 1.57079633)
  {
    goto LABEL_19;
  }

  if (qword_1ECB50AD0 != -1)
  {
    swift_once();
  }

  v28 = xmmword_1ECB528E0;
  v0[2] = xmmword_1D9C8C730;
  v0[3] = v28;
LABEL_20:
  sub_1D9B02860();
  sub_1D9B0293C();
}

void S2Loop.inverted.getter(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v8 = v1[2];
  v9 = v2;
  v10 = v1[4];
  v3 = v10;
  v4 = v1[1];
  v7[0] = *v1;
  v5 = v7[0];
  v7[1] = v4;
  a1[2] = v8;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  sub_1D9B06024(v7, &v6);
  S2Loop.invert()();
}

void sub_1D9B031F0(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v4 + 16);
  if (v5 > 2)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    v10 = fabs(v8);
    v11 = fabs(v7);
    v12 = fabs(v9);
    v13 = 2 * (v12 >= v11);
    v14 = 2;
    if (v12 < v10)
    {
      v14 = 1;
    }

    if (v10 >= v11)
    {
      v13 = v14;
    }

    if (v13 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 + 1;
    }

    if (v15 == 1)
    {
      v16 = v8 + 2.71828183e-10;
    }

    else if (v15)
    {
      v16 = v9 + 2.71828183e-10;
    }

    else
    {
      v7 = v7 + 2.71828183e-10;
      v16 = v7;
    }

    if (v15 == 1)
    {
      v8 = v16;
    }

    if (v15 == 2)
    {
      v9 = v16;
    }

    v17 = sqrt(v9 * v9 + v7 * v7 + v8 * v8);
    if (v17 != 0.0)
    {
      v17 = 1.0 / v17;
    }

    v51 = v8 * v17;
    v52 = v7 * v17;
    v50 = v9 * v17;
    v18 = v4 + 40;
    v49 = 0u;
    v19 = 0.0;
    v20 = 1;
    v48 = 0.0;
    do
    {
      v21 = v20 - 1;
      if (v20 - 1 >= v5)
      {
        v22 = v5;
      }

      else
      {
        v22 = 0;
      }

      if ((v21 - v22) < 0)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      v23 = *(v4 + 16);
      if (v21 - v22 >= v23)
      {
        goto LABEL_53;
      }

      if (v20 >= v5)
      {
        v24 = v5;
      }

      else
      {
        v24 = 0;
      }

      if (v20 - v24 >= v23)
      {
        goto LABEL_54;
      }

      v25 = (v18 - 24 * v22);
      v27 = *(v25 - 1);
      v26 = *v25;
      v28 = v25[1];
      v29 = (v18 - 24 * v24);
      v30 = v29[3];
      v53 = v19;
      v54 = v29[2];
      v31 = v29[4];
      v62.f64[0] = v52;
      v62.f64[1] = v51;
      v63 = v50;
      v59 = v27;
      v60 = v26;
      v61 = v28;
      *&v57 = v54;
      *(&v57 + 1) = v30;
      v58 = v31;
      sub_1D9AEF860(&v62, &v59, &v57, v54, v9, v8);
      v33 = v32;
      v34 = (v51 * v28 - v50 * v26) * v54 + (v50 * v27 - v52 * v28) * v30 + (v52 * v26 - v51 * v27) * v31;
      v35 = 1.0;
      if (v34 <= 1.6e-15)
      {
        v35 = -1.0;
        if (v34 >= -1.6e-15)
        {
          v62.f64[0] = v52;
          v62.f64[1] = v51;
          v63 = v50;
          v59 = v27;
          v60 = v26;
          v61 = v28;
          *&v57 = v54;
          *(&v57 + 1) = v30;
          v58 = v31;
          v36 = v33;
          v37 = sub_1D9AEF300(v62.f64, &v59, &v57);
          v33 = v36;
          v35 = v37;
        }
      }

      if (a1)
      {
        v59 = v52;
        v60 = v51;
        v61 = v50;
        if (v21 >= v23)
        {
          v38 = v23;
        }

        else
        {
          v38 = 0;
        }

        if (~v38 + v20 >= v23)
        {
          goto LABEL_55;
        }

        v39 = v18 - 24 * v38;
        v40 = *(v39 + 8);
        v57 = *(v39 - 8);
        v58 = v40;
        if (v20 >= v23)
        {
          v41 = v23;
        }

        else
        {
          v41 = 0;
        }

        if (v20 - v41 >= v23)
        {
          goto LABEL_56;
        }

        v42 = v18 - 24 * v41;
        v43 = *(v42 + 32);
        v55 = *(v42 + 16);
        v56 = v43;
        v44 = v33;
        static S2.trueCentroid(a:b:c:)(&v59, &v57, &v55, &v62);
        v33 = v44;
        v45 = vaddq_f64(v49, v62);
        v9 = v48 + v63;
        v48 = v48 + v63;
        v49 = v45;
      }

      else
      {
        v45 = 0uLL;
        v9 = 0.0;
      }

      v8 = v33 * v35;
      v19 = v53 + v33 * v35;
      if (v5 == v20)
      {
        goto LABEL_49;
      }

      v18 += 24;
    }

    while (!__OFADD__(v20++, 1));
    __break(1u);
LABEL_49:
    v47 = v19 + 12.5663706;
    if (v19 >= 0.0)
    {
      v47 = v53 + v33 * v35;
    }

    *a2 = v47;
    *(a2 + 8) = v45;
    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double S2Loop.centroid.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D9B031F0(1, v3);
  result = v5;
  *a1 = v4;
  *(a1 + 16) = result;
  return result;
}

void S2Loop.contains(other:)(uint64_t a1, double a2, double a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v51 = v13;
  v14 = *(v3 + 8);
  v16 = *(v3 + 16);
  v15 = *(v3 + 24);
  v17 = *(v3 + 32);
  v18 = *(v3 + 40);
  v19 = *(v3 + 48);
  v20 = *(v3 + 56);
  if (v10 >= v9 && (v17 > v9 || v10 > v18))
  {
    return;
  }

  v33 = *v3;
  v42 = *(v3 + 48);
  v43 = v20;
  *&v34 = v11;
  *(&v34 + 1) = v12;
  if (!S1Interval.contains(interval:)(__PAIR128__(*&a3, v13)))
  {
    return;
  }

  v42 = v33;
  v43 = v14;
  v44 = v16;
  v45 = v15;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v49 = v20;
  v50 = *(v3 + 64);
  if (!*(*&v5 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v22 = *(*&v5 + 48);
  v34 = *(*&v5 + 32);
  v23 = v34;
  v35 = v22;
  if (!S2Loop.contains(point:)(*(&v21 - 2)))
  {
    if (*(*&v5 + 16))
    {
      if (!*(*&v16 + 16))
      {
        return;
      }

      v31 = sub_1D99EE5EC(*(*&v5 + 32), *(*&v5 + 40), *(*&v5 + 48));
      if ((v32 & 1) == 0 || (*(*(*&v16 + 56) + 8 * v31) & 0x8000000000000000) != 0)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_7:
  v42 = v33;
  v43 = v14;
  v44 = v16;
  v45 = v15;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v49 = v20;
  v50 = *(v3 + 64);
  *&v34 = v5;
  *(&v34 + 1) = v6;
  v35 = v8;
  v36 = v7;
  v37 = v9;
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = *(a1 + 64);
  sub_1D9B03F98(&v34, &type metadata for WedgeContains, &protocol witness table for WedgeContains);
  if (v28 >= 1)
  {
    *&v34 = v17;
    *(&v34 + 1) = v18;
    v35 = v19;
    v36 = v20;
    v52 = S2LatLngRect.union(with:)(*&v24);
    if (v42 == -1.57079633 && v43 == 1.57079633 && v45 - v44 == 6.28318531)
    {
      v42 = v5;
      v43 = v6;
      v44 = v8;
      v45 = v7;
      v46 = v9;
      v47 = v10;
      v48 = v11;
      v49 = v12;
      v50 = v51;
      if (*(*&v33 + 16))
      {
        v29 = *(*&v33 + 48);
        v34 = *(*&v33 + 32);
        v30 = v34;
        v35 = v29;
        if (!S2Loop.contains(point:)(*&v52.lat.lo))
        {
          return;
        }

        if (*(*&v33 + 16))
        {
          if (*(*&v8 + 16))
          {
            sub_1D99EE5EC(*(*&v33 + 32), *(*&v33 + 40), *(*&v33 + 48));
          }

          return;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }
}

__n128 S2Loop.rectBound.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

Swift::Bool __swiftcall S2Loop.contains(point:)(VisualLookUp::S2Point point)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *v2;
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = atan2(v5, sqrt(v3 * v3 + v4 * v4));
  v13 = v7 > v12 || v12 > v8;
  if (v13 || (v14 = v2, v15 = atan2(v4, v3), *v74 = v9, *&v74[8] = v10, !(result = S1Interval.contains(point:)(v15))))
  {
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  if (qword_1ECB50C28 != -1)
  {
    goto LABEL_85;
  }

  v17 = *(v6 + 16);
  if (!v17)
  {
LABEL_86:
    __break(1u);
    return result;
  }

LABEL_8:
  v48 = v10;
  v50 = v9;
  v52 = v8;
  v54 = v7;
  v18 = v6 + 32;
  v19 = v6 + 32 + 24 * v17;
  v82.x = *(v19 - 8);
  v81 = 0u;
  *&v80[8] = 0u;
  *v74 = xmmword_1ECB531F0;
  *&v74[16] = qword_1ECB53200;
  v75 = v3;
  v76 = v4;
  v77 = v5;
  a = *&qword_1ECB53200;
  a_8 = *(&xmmword_1ECB531F0 + 1);
  v82.z = v3 * *&qword_1ECB53200 - v5 * *&xmmword_1ECB531F0;
  a_16 = *&xmmword_1ECB531F0;
  v78 = v5 * *(&xmmword_1ECB531F0 + 1) - v4 * *&qword_1ECB53200;
  z = v82.z;
  *v80 = v4 * *&xmmword_1ECB531F0 - v3 * *(&xmmword_1ECB531F0 + 1);
  v69 = *(v19 - 24);
  *&v82.y = v69;
  x = v82.x;
  EdgeCrosser.restartAt(point:)(v82);
  v59 = *&v74[8];
  v60 = *v74;
  v57 = v75;
  v58 = *&v74[16];
  v55 = v77;
  v56 = v76;
  v9 = z;
  v61 = v78;
  v10 = *v80;
  v20 = *&v80[8];
  v7 = *&v80[16];
  v21 = *(&v81 + 1);
  v8 = *&v81;
  v22 = *(v6 + 16);
  if (v22 <= 0x7CF)
  {
    if (!v22)
    {
      return v11 & 1;
    }

    for (i = (v6 + 48); ; i += 3)
    {
      v5 = v8;
      v4 = v7;
      v3 = v20;
      v20 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v25 = v61 * v20 + v9 * v7 + v10 * *i;
      if (v25 <= 1.6e-15)
      {
        if (v25 >= -1.6e-15)
        {
          *v74 = v60;
          *&v74[8] = v59;
          *&v74[16] = v58;
          *&v69 = v57;
          *(&v69 + 1) = v56;
          x = v55;
          v66 = v20;
          v67 = v7;
          v68 = v8;
          v14 = sub_1D9AEF300(v74, &v69, &v66);
        }

        else
        {
          v14 = -1;
        }
      }

      else
      {
        v14 = 1;
      }

      if (__OFSUB__(0, v21))
      {
        goto LABEL_79;
      }

      if (v14 == -v21 && v14)
      {
        break;
      }

      if ((v14 & v21) == 0)
      {
        v21 = -v14;
        if (__OFSUB__(0, v14))
        {
          goto LABEL_80;
        }

LABEL_28:
        *v74 = v60;
        *&v74[8] = v59;
        *&v74[16] = v58;
        *&v69 = v57;
        *(&v69 + 1) = v56;
        x = v55;
        v66 = v3;
        v67 = v4;
        v68 = v5;
        v63 = v20;
        v64 = v7;
        v65 = v8;
        v24 = _s12VisualLookUp10S2EdgeUtilV14vertexCrossing1a1b1c1dSbAA0D5PointV_A3JtFZ_0(v74, &v69, &v66, &v63);
        goto LABEL_13;
      }

      *v74 = v60;
      *&v74[8] = v59;
      *&v74[16] = v58;
      v75 = v57;
      v76 = v56;
      v77 = v55;
      v78 = v61;
      z = v9;
      *v80 = v10;
      *&v80[8] = v3;
      *&v80[16] = v4;
      *&v81 = v5;
      *(&v81 + 1) = v21;
      *&v69 = v20;
      *(&v69 + 1) = v7;
      x = v8;
      v26 = sub_1D9A68E70(&v69);
      v21 = -v14;
      if (__OFSUB__(0, v14))
      {
        goto LABEL_80;
      }

      if (v26 < 0)
      {
        goto LABEL_12;
      }

      if (!v26)
      {
        goto LABEL_28;
      }

      v24 = 1;
LABEL_13:
      v11 ^= v24;
      if (!--v22)
      {
        return v11 & 1;
      }
    }

    v21 = -v14;
    if (__OFSUB__(0, v14))
    {
      goto LABEL_80;
    }

LABEL_12:
    v24 = 0;
    goto LABEL_13;
  }

  *&v74[8] = *(v14 + 8);
  v27 = *(v14 + 24);
  *v74 = v6;
  v75 = v27;
  v76 = v54;
  v77 = v52;
  v78 = v50;
  z = v48;
  v80[0] = v11;
  *&v80[1] = *(v14 + 65);
  *&v80[8] = *(v14 + 72);
  sub_1D9B05078(v22, &v69);
  v83.y = a_16;
  *v74 = a_16;
  *&v74[8] = a_8;
  v83.x = a;
  *&v74[16] = a;
  v66 = v3;
  v67 = v4;
  v68 = v5;
  S2EdgeIndex.DataEdgeIterator.getCandidates(a:b:)(v83, v84);
  v28 = BYTE8(v69);
  v29 = *&x;
  v30 = v73;
  v51 = v71;
  v53 = v72;
  v49 = v72 + 32;
  for (j = -2; ; j = v14)
  {
    v14 = v29;
    if (v28)
    {
      if (v29 >= v51)
      {
        break;
      }

      ++v29;
      goto LABEL_43;
    }

    v33 = *(v53 + 16);
    if (v30 >= v33)
    {
      break;
    }

    if (v30 + 1 >= v33)
    {
      ++v30;
    }

    else
    {
      if (v30 < -1)
      {
        goto LABEL_84;
      }

      v29 = *(v49 + 8 * ++v30);
    }

LABEL_43:
    if (__OFSUB__(v14, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      result = swift_once();
      v17 = *(v6 + 16);
      if (!v17)
      {
        goto LABEL_86;
      }

      goto LABEL_8;
    }

    v4 = v20;
    v5 = v7;
    v3 = v8;
    if (j != v14 - 1)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (v14 >= *(v6 + 16))
      {
        goto LABEL_82;
      }

      v34 = (v18 + 24 * v14);
      v4 = *v34;
      v5 = v34[1];
      v3 = v34[2];
      v35 = v61 * *v34 + v9 * v5 + v10 * v3;
      if (v35 <= 1.6e-15)
      {
        if (v35 >= -1.6e-15)
        {
          *v74 = v60;
          *&v74[8] = v59;
          *&v74[16] = v58;
          v66 = v57;
          v67 = v56;
          v68 = v55;
          v63 = v4;
          v64 = v5;
          v65 = v3;
          v36 = sub_1D9AEF300(v74, &v66, &v63);
        }

        else
        {
          v36 = -1;
        }
      }

      else
      {
        v36 = 1;
      }

      v21 = -v36;
      if (__OFSUB__(0, v36))
      {
        goto LABEL_83;
      }
    }

    v37 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_75;
    }

    v38 = *(v6 + 16);
    if (v37 >= v38)
    {
      v39 = *(v6 + 16);
    }

    else
    {
      v39 = 0;
    }

    v40 = v37 - v39;
    if (v40 >= v38)
    {
      goto LABEL_76;
    }

    v41 = (v18 + 24 * v40);
    v20 = *v41;
    v7 = v41[1];
    v8 = v41[2];
    v42 = v61 * *v41 + v9 * v7 + v10 * v8;
    if (v42 <= 1.6e-15)
    {
      if (v42 >= -1.6e-15)
      {
        *v74 = v60;
        *&v74[8] = v59;
        *&v74[16] = v58;
        v66 = v57;
        v67 = v56;
        v68 = v55;
        v63 = v20;
        v64 = v7;
        v65 = v8;
        v43 = sub_1D9AEF300(v74, &v66, &v63);
      }

      else
      {
        v43 = -1;
      }
    }

    else
    {
      v43 = 1;
    }

    if (__OFSUB__(0, v21))
    {
      goto LABEL_77;
    }

    if (v43 == -v21 && v43)
    {
      v21 = -v43;
      if (__OFSUB__(0, v43))
      {
        goto LABEL_78;
      }

LABEL_33:
      v32 = 0;
      goto LABEL_34;
    }

    if ((v43 & v21) != 0)
    {
      *v74 = v60;
      *&v74[8] = v59;
      *&v74[16] = v58;
      v75 = v57;
      v76 = v56;
      v77 = v55;
      v78 = v61;
      z = v9;
      *v80 = v10;
      *&v80[8] = v4;
      *&v80[16] = v5;
      *&v81 = v3;
      *(&v81 + 1) = v21;
      v66 = v20;
      v67 = v7;
      v68 = v8;
      v44 = sub_1D9A68E70(&v66);
      v21 = -v43;
      if (__OFSUB__(0, v43))
      {
        goto LABEL_78;
      }

      if (v44 < 0)
      {
        goto LABEL_33;
      }

      if (v44)
      {
        v32 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v21 = -v43;
      if (__OFSUB__(0, v43))
      {
        goto LABEL_78;
      }
    }

    *v74 = v60;
    *&v74[8] = v59;
    *&v74[16] = v58;
    v66 = v57;
    v67 = v56;
    v68 = v55;
    v63 = v4;
    v64 = v5;
    v65 = v3;
    v62[0] = v20;
    v62[1] = v7;
    v62[2] = v8;
    v32 = _s12VisualLookUp10S2EdgeUtilV14vertexCrossing1a1b1c1dSbAA0D5PointV_A3JtFZ_0(v74, &v66, &v63, v62);
LABEL_34:
    v11 ^= v32;
  }

  return v11 & 1;
}

void sub_1D9B03F98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *v3;
  v131 = *(v3 + 3);
  v132 = *(v3 + 5);
  v133 = *(v3 + 7);
  v7 = v3[9];
  *&v130[8] = *(v3 + 1);
  *&v134 = v7;
  *v130 = v6;
  sub_1D9B05078(*(v5 + 16), &v136);
  v8 = *(v5 + 16);
  if (!v8)
  {
LABEL_108:

LABEL_109:

    return;
  }

  v9 = 0;
  v10 = v5 + 32;
  v11 = v6 + 32;
  v102 = a3;
  v106 = 1;
  v110 = v5;
  v111 = v5 + 32;
  v103 = *(v5 + 16);
LABEL_4:
  v12 = *(v5 + 16);
  if (v9 >= v12)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v13 = v9 + 1;
  if (v9 + 1 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 - v14;
  if (v13 - v14 >= v12)
  {
    goto LABEL_121;
  }

  if (!*(v6 + 16))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v16 = (v10 + 24 * v9);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = (v10 + 24 * v15);
  v22 = v20[1];
  v21 = v20[2];
  v23 = *v20;
  v24 = *(v6 + 48);
  v135 = 0u;
  v134 = 0u;
  *v130 = v17;
  *&v130[8] = v18;
  *&v130[16] = v19;
  *&v131 = v23;
  *(&v131 + 1) = v22;
  *&v132 = v21;
  v25 = v18 * v21 - v19 * v22;
  v142.z = v19 * v23 - v17 * v21;
  v142.y = v18 * v23;
  *(&v132 + 1) = v25;
  *&v133 = v142.z;
  *(&v133 + 1) = v17 * v22 - v142.y;
  v128 = *(v6 + 32);
  *&v142.x = v128;
  v129 = v24;
  EdgeCrosser.restartAt(point:)(v142);
  v29 = *(v5 + 16);
  if (v9 >= v29)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v116 = *&v130[8];
  v117 = *v130;
  v115 = *&v130[16];
  v119 = *(&v131 + 1);
  v120 = *&v131;
  v30 = *(&v132 + 1);
  v118 = *&v132;
  v31 = *(&v133 + 1);
  v32 = *&v133;
  v34 = *(&v134 + 1);
  v33 = *&v134;
  v35 = *(&v135 + 1);
  v36 = *&v135;
  v37 = *(v16 + 2);
  *v130 = *v16;
  *&v130[16] = v37;
  if (v15 >= v29)
  {
    goto LABEL_124;
  }

  v113 = *(&v133 + 1);
  v38 = v20[2];
  v128 = *v20;
  v39 = v128;
  v129 = v38;
  S2EdgeIndex.DataEdgeIterator.getCandidates(a:b:)(*(&v31 - 2), *&v26);
  v121 = v137;
  v40 = v9;
  v41 = v138;
  v112 = v139;
  v42 = v140;
  v43 = v141;
  v107 = v140 + 32;
  v105 = v40;
  v104 = v40 + 2;

  v114 = v42;

  v44 = -2;
  v108 = v32;
  v109 = v30;
  while (2)
  {
    v45 = v33;
    v46 = v34;
    v47 = v36;
    v48 = v44;
    v49 = v113;
    while (1)
    {
      v44 = v41;
      if (v121)
      {
        if (v41 >= v112)
        {
          goto LABEL_3;
        }

        ++v41;
      }

      else
      {
        v50 = *(v114 + 16);
        if (v43 >= v50)
        {
LABEL_3:

          v9 = v13;
          v8 = v103;
          v5 = v110;
          v10 = v111;
          if (v13 == v103)
          {
            goto LABEL_108;
          }

          goto LABEL_4;
        }

        if (v43 + 1 >= v50)
        {
          ++v43;
        }

        else
        {
          if (v43 < -1)
          {
            goto LABEL_119;
          }

          v41 = *(v107 + 8 * ++v43);
        }
      }

      if (__OFSUB__(v44, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v48 != v44 - 1)
      {
        v51 = *(v6 + 16);
        if (v44 >= v51)
        {
          v52 = *(v6 + 16);
        }

        else
        {
          v52 = 0;
        }

        v53 = v44 - v52;
        if (v53 >= v51)
        {
          goto LABEL_115;
        }

        v54 = (v11 + 24 * v53);
        v45 = *v54;
        v46 = v54[1];
        v47 = v54[2];
        v55 = v30 * *v54 + v32 * v46 + v49 * v47;
        if (v55 <= 1.6e-15)
        {
          if (v55 >= -1.6e-15)
          {
            *v130 = v117;
            *&v130[8] = v116;
            *&v130[16] = v115;
            *&v128 = v120;
            *(&v128 + 1) = v119;
            v129 = v118;
            *&v126 = v45;
            *(&v126 + 1) = v46;
            v127 = v47;
            v56 = sub_1D9AEF300(v130, &v128, &v126);
            v49 = v113;
          }

          else
          {
            v56 = -1;
          }
        }

        else
        {
          v56 = 1;
        }

        v35 = -v56;
        if (__OFSUB__(0, v56))
        {
          goto LABEL_116;
        }
      }

      v57 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_111;
      }

      v58 = *(v6 + 16);
      if (v57 >= v58)
      {
        v59 = *(v6 + 16);
      }

      else
      {
        v59 = 0;
      }

      v60 = v57 - v59;
      if (v60 >= v58)
      {
        goto LABEL_112;
      }

      v61 = (v11 + 24 * v60);
      v33 = *v61;
      v34 = v61[1];
      v36 = v61[2];
      v62 = v30 * *v61 + v32 * v34 + v49 * v36;
      if (v62 <= 1.6e-15)
      {
        if (v62 >= -1.6e-15)
        {
          *v130 = v117;
          *&v130[8] = v116;
          *&v130[16] = v115;
          *&v128 = v120;
          *(&v128 + 1) = v119;
          v129 = v118;
          *&v126 = v33;
          *(&v126 + 1) = v34;
          v127 = v36;
          v64 = sub_1D9AEF300(v130, &v128, &v126);
          v49 = v113;
          v63 = v64;
        }

        else
        {
          v63 = -1;
        }
      }

      else
      {
        v63 = 1;
      }

      if (__OFSUB__(0, v35))
      {
        goto LABEL_113;
      }

      if (v63 != -v35 || !v63)
      {
        if ((v63 & v35) == 0)
        {
          v66 = 0;
          v65 = 0;
          v35 = -v63;
          if (__OFSUB__(0, v63))
          {
            goto LABEL_114;
          }

          goto LABEL_72;
        }

        v67 = v46 * v36 - v47 * v34;
        v68 = v47 * v33 - v45 * v36;
        v69 = v45 * v34 - v46 * v33;
        v70 = v118 * v69 + v120 * v67 + v119 * v68;
        if (v70 <= 1.6e-15)
        {
          if (v70 >= -1.6e-15)
          {
            *v130 = v45;
            *&v130[8] = v46;
            *&v130[16] = v47;
            *&v128 = v33;
            *(&v128 + 1) = v34;
            v129 = v36;
            *&v126 = v120;
            *(&v126 + 1) = v119;
            v127 = v118;
            v71 = sub_1D9AEF300(v130, &v128, &v126);
            v67 = v46 * v36 - v47 * v34;
            v49 = v113;
          }

          else
          {
            v71 = -1;
          }
        }

        else
        {
          v71 = 1;
        }

        if (__OFSUB__(0, v71))
        {
          goto LABEL_118;
        }

        if (-v71 != v35)
        {
          v65 = 0;
          v66 = 1;
          v32 = v108;
          v30 = v109;
          v35 = -v63;
          if (__OFSUB__(0, v63))
          {
            goto LABEL_114;
          }

          goto LABEL_72;
        }

        v72 = v115 * v69 + v117 * v67 + v116 * v68;
        if (v72 <= 1.6e-15)
        {
          if (v72 >= -1.6e-15)
          {
            *v130 = v45;
            *&v130[8] = v46;
            *&v130[16] = v47;
            *&v128 = v33;
            *(&v128 + 1) = v34;
            v129 = v36;
            *&v126 = v117;
            *(&v126 + 1) = v116;
            v127 = v115;
            v73 = sub_1D9AEF300(v130, &v128, &v126);
            v49 = v113;
            v32 = v108;
            v30 = v109;
            if (v73 == v35)
            {
LABEL_71:
              v66 = 0;
              v65 = 1;
              v35 = -v63;
              if (__OFSUB__(0, v63))
              {
                goto LABEL_114;
              }

              goto LABEL_72;
            }
          }

          else
          {
            v32 = v108;
            v30 = v109;
            if (v35 == -1)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v32 = v108;
          v30 = v109;
          if (v35 == 1)
          {
            goto LABEL_71;
          }
        }
      }

      v65 = 0;
      v66 = 1;
      v35 = -v63;
      if (__OFSUB__(0, v63))
      {
        goto LABEL_114;
      }

LABEL_72:
      v45 = v33;
      v46 = v34;
      v47 = v36;
      v48 = v44;
      if ((v66 & 1) == 0)
      {
        if (v65)
        {
          goto LABEL_106;
        }

        v74 = *(v110 + 16);
        if (v13 >= v74)
        {
          v75 = *(v110 + 16);
        }

        else
        {
          v75 = 0;
        }

        v76 = v13 - v75;
        if (v76 >= v74)
        {
          goto LABEL_117;
        }

        v78 = v61[1];
        v77 = v61[2];
        v79 = *v61;
        v80 = (v111 + 24 * v76);
        v81 = *v61 == *v80 && v78 == v80[1];
        v82 = v81 && v77 == v80[2];
        v45 = v33;
        v46 = v34;
        v47 = v36;
        v48 = v44;
        if (v82)
        {
          break;
        }
      }
    }

    if (v44 >= v58)
    {
      v83 = v58;
    }

    else
    {
      v83 = 0;
    }

    v84 = v44 - v83;
    if (v84 >= v58)
    {
      goto LABEL_125;
    }

    v85 = v11 + 24 * v84;
    v86 = *(v85 + 16);
    *v130 = *v85;
    *&v130[16] = v86;
    *&v128 = v79;
    *(&v128 + 1) = v78;
    v129 = v77;
    v87 = v44 + 2;
    if (__OFADD__(v44, 2))
    {
      goto LABEL_126;
    }

    if (v87 >= v58)
    {
      v88 = v58;
    }

    else
    {
      v88 = 0;
    }

    v89 = v87 - v88;
    if (v89 < v58)
    {
      v90 = (v11 + 24 * v89);
      v91 = v90[2];
      v126 = *v90;
      v127 = v91;
      if (v105 >= v74)
      {
        v92 = v74;
      }

      else
      {
        v92 = 0;
      }

      v93 = v105 - v92;
      if (v93 >= v74)
      {
        goto LABEL_128;
      }

      v94 = (v111 + 24 * v93);
      v95 = *(v94 + 2);
      v124 = *v94;
      v125 = v95;
      if (v104 >= v74)
      {
        v96 = v74;
      }

      else
      {
        v96 = 0;
      }

      v97 = v104 - v96;
      if (v97 >= v74)
      {
        goto LABEL_129;
      }

      v98 = (v111 + 24 * v97);
      v99 = *(v98 + 2);
      v122 = *v98;
      v123 = v99;
      v100 = (*(v102 + 8))(v130, &v128, &v126, &v124, &v122);
      v101 = v106;
      if (v100 < v106)
      {
        v101 = v100;
      }

      v106 = v101;
      if (v101 < 0)
      {
LABEL_106:
        swift_bridgeObjectRelease_n();

        goto LABEL_109;
      }

      continue;
    }

    break;
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

BOOL S2Loop.intersects(with:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v61 = *(a1 + 64);
  v15 = v61;
  v16 = *(v5 + 8);
  v43 = *v5;
  v17 = *(v5 + 16);
  v18 = *(v5 + 24);
  v20 = *(v5 + 32);
  v19 = *(v5 + 40);
  v22 = *(v5 + 48);
  v21 = *(v5 + 56);
  v52 = v20;
  v53 = v19;
  v54 = v22;
  v55 = v21;
  *&v44 = v12;
  *(&v44 + 1) = v11;
  v45 = v14;
  v46 = v13;
  result = S2LatLngRect.intersects(with:)(*(&a3 - 1));
  if (!result)
  {
    goto LABEL_33;
  }

  v25 = v13 - v14;
  if (v13 - v14 >= 0.0)
  {
    v26 = v43;
    goto LABEL_11;
  }

  v25 = v25 + 6.28318531;
  v26 = v43;
  if (v25 > 0.0)
  {
LABEL_11:
    v29 = v21 - v22;
    if (v21 - v22 < 0.0 && (v24 = 0x401921FB54442D18, v29 = v29 + 6.28318531, v29 <= 0.0))
    {
      if (v25 <= -1.0)
      {
        goto LABEL_16;
      }
    }

    else if (v29 >= v25)
    {
      goto LABEL_16;
    }

LABEL_14:
    v52 = v8;
    v53 = v7;
    v54 = v9;
    v55 = v10;
    v56 = v12;
    v57 = v11;
    v58 = v14;
    v59 = v13;
    v60 = *(a1 + 64);
    *&v44 = v26;
    *(&v44 + 1) = v16;
    v45 = v17;
    v46 = v18;
    v47 = v20;
    v48 = v19;
    v49 = v22;
    v50 = v21;
    v51 = *(v5 + 64);
    v30 = S2Loop.intersects(with:)(&v44);
    return v30 & 1;
  }

  if (v21 - v22 < 0.0)
  {
    v27 = v21 - v22 + 6.28318531;
    if (v27 > 0.0 && v27 < -1.0)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  v52 = v26;
  v53 = v16;
  v54 = v17;
  v55 = v18;
  v56 = v20;
  v57 = v19;
  v58 = v22;
  v59 = v21;
  v60 = *(v5 + 64);
  if (!*(*&v8 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(*&v8 + 48);
  v44 = *(*&v8 + 32);
  v32 = v44;
  v45 = v31;
  result = S2Loop.contains(point:)(*(&v24 - 2));
  if (!result)
  {
    goto LABEL_22;
  }

  if (!*(*&v8 + 16))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!*(*&v17 + 16))
  {
    goto LABEL_34;
  }

  v33 = sub_1D99EE5EC(*(*&v8 + 32), *(*&v8 + 40), *(*&v8 + 48));
  if ((v34 & 1) == 0 || (*(*(*&v17 + 56) + 8 * v33) & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v52 = v43;
  v53 = v16;
  v54 = v17;
  v55 = v18;
  v56 = v20;
  v57 = v19;
  v58 = v22;
  v59 = v21;
  v60 = *(v5 + 64);
  *&v44 = v8;
  *(&v44 + 1) = v7;
  v45 = v9;
  v46 = v10;
  v47 = v12;
  v48 = v11;
  v49 = v14;
  v50 = v13;
  v51 = *(a1 + 64);
  sub_1D9B03F98(&v44, &type metadata for WedgeIntersects, &protocol witness table for WedgeIntersects);
  if (v37 < 0)
  {
    goto LABEL_34;
  }

  if (v19 >= v20 && (v12 > v20 || v19 > v11))
  {
    goto LABEL_33;
  }

  v52 = v14;
  v53 = v13;
  *&v44 = v22;
  *(&v44 + 1) = v21;
  result = S1Interval.contains(interval:)(__PAIR128__(v36, v35));
  if (!result)
  {
    goto LABEL_33;
  }

  v52 = v8;
  v53 = v7;
  v54 = v9;
  v55 = v10;
  v56 = v12;
  v57 = v11;
  v58 = v14;
  v59 = v13;
  v60 = v61;
  if (!*(*&v43 + 16))
  {
    goto LABEL_38;
  }

  v39 = *(*&v43 + 48);
  v44 = *(*&v43 + 32);
  v40 = v44;
  v45 = v39;
  result = S2Loop.contains(point:)(*(&v38 - 2));
  if (!result)
  {
LABEL_33:
    v30 = 0;
    return v30 & 1;
  }

  if (*(*&v43 + 16))
  {
    if (*(*&v9 + 16))
    {
      v41 = sub_1D99EE5EC(*(*&v43 + 32), *(*&v43 + 40), *(*&v43 + 48));
      if ((v42 & 1) != 0 && (*(*(*&v9 + 56) + 8 * v41) & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_34:
    v30 = 1;
    return v30 & 1;
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t S2Loop.containsNested(other:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + 6);
  v13 = *(v1 + 7);
  if (v4 >= v3 && (v10 > v3 || v4 > v11))
  {
    return 0;
  }

  v73 = *(v1 + 6);
  v74 = v13;
  v71 = v5;
  result = S1Interval.contains(interval:)(__PAIR128__(*&v3, v5));
  if ((result & 1) == 0)
  {
    return 0;
  }

  v17 = v2[2];
  v18 = 1 - v17;
  if (v17 > 1)
  {
    v18 = 1;
  }

  if (v18 >= v17)
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v19 = v2 + 4;
  if (!*(v8 + 16) || (result = sub_1D99EE5EC(*&v19[3 * v18], *&v19[3 * v18 + 1], *&v19[3 * v18 + 2]), (v20 & 1) == 0) || (v21 = *(*(v8 + 56) + 8 * result), (v21 & 0x8000000000000000) != 0))
  {
    v73 = *&v6;
    v74 = v7;
    v75 = v8;
    v76 = v9;
    v77 = v10;
    v78 = v11;
    v79 = v12;
    v80 = v13;
    v81 = *(v1 + 4);
    v51 = v2[2];
    v52 = 1 - v51;
    if (v51 > 1)
    {
      v52 = 1;
    }

    if (v52 < v51)
    {
      v53 = &v19[3 * v52];
      v55 = *v53;
      v54 = v53[2];
      return S2Loop.contains(point:)(*(&v16 - 2));
    }

    goto LABEL_54;
  }

  v22 = *(*&v6 + 16);
  v23 = -1;
  if (v21 > v22)
  {
    v23 = ~v22;
  }

  v24 = v23 + v21;
  if (v24 >= v22)
  {
    goto LABEL_55;
  }

  if (v21 >= v22)
  {
    v25 = *(*&v6 + 16);
  }

  else
  {
    v25 = 0;
  }

  v26 = v21 - v25;
  if (v26 >= v22)
  {
    goto LABEL_56;
  }

  v27 = __OFADD__(v21, 1);
  v28 = v21 + 1;
  if (v27)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v28 >= v22)
  {
    v29 = *(*&v6 + 16);
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 - v29;
  if (v30 >= v22)
  {
    goto LABEL_58;
  }

  v31 = v2[2];
  if (!v31)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v32 = 2;
  if (v31 <= 2)
  {
    v32 = 2 - v31;
  }

  if (v32 < v31)
  {
    v33 = (*&v6 + 32 + 24 * v24);
    v64 = *v33;
    v61 = v33[2];
    v62 = v33[1];
    v34 = (*&v6 + 32 + 24 * v26);
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v38 = (*&v6 + 32 + 24 * v30);
    v65 = v38[1];
    v67 = v38[2];
    v68 = *v38;
    v66 = v68;
    v40 = v2[4];
    v39 = v2[5];
    v63 = v2[6];
    v41 = &v19[3 * v32];
    v43 = v41[1];
    v44 = v41[2];
    v73 = *v41;
    v42 = v73;
    v74 = v43;
    v75 = v44;
    *&v71 = v35;
    *(&v71 + 1) = v36;
    v72 = v37;
    v69 = v65;
    v70 = v67;
    v45 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v73, &v71, &v68);
    v73 = v40;
    v74 = v39;
    v75 = v63;
    *&v71 = v35;
    *(&v71 + 1) = v36;
    v72 = v37;
    v68 = v42;
    v69 = v43;
    v70 = v44;
    v46 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v73, &v71, &v68);
    v47 = 1;
    v73 = v66;
    v74 = v65;
    if (v45 >= 0)
    {
      v47 = 2;
    }

    v75 = v67;
    if (v46 >= 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = v45 >= 0;
    }

    *&v71 = v35;
    *(&v71 + 1) = v36;
    v72 = v37;
    v68 = v40;
    v69 = v39;
    v70 = v63;
    if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v73, &v71, &v68) <= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 + 1;
    }

    if (v49 >= 2)
    {
      v73 = v64;
      v74 = v62;
      v75 = v61;
      *&v71 = v35;
      *(&v71 + 1) = v36;
      v72 = v37;
      v68 = v40;
      v69 = v39;
      v70 = v63;
      v56 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v73, &v71, &v68);
      v73 = v66;
      v74 = v65;
      v75 = v67;
      *&v71 = v35;
      *(&v71 + 1) = v36;
      v72 = v37;
      v68 = v64;
      v69 = v62;
      v70 = v61;
      v57 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v73, &v71, &v68);
      v58 = 1;
      v73 = v40;
      v74 = v39;
      if (v56 >= 0)
      {
        v58 = 2;
      }

      v75 = v63;
      if (v57 >= 0)
      {
        v59 = v58;
      }

      else
      {
        v59 = v56 >= 0;
      }

      *&v71 = v35;
      *(&v71 + 1) = v36;
      v72 = v37;
      v68 = v66;
      v69 = v65;
      v70 = v67;
      if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v73, &v71, &v68) <= 0)
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 + 1;
      }

      return v60 > 1;
    }

    return 0;
  }

LABEL_60:
  __break(1u);
  return result;
}

void S2Loop.containsOrCrosses(other:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v7 = *a1;
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(v5 + 2);
  v13 = *(v5 + 3);
  v14 = *(v5 + 4);
  v15 = *(v5 + 5);
  v16 = *(v5 + 6);
  v17 = *(v5 + 7);
  *&v32 = v14;
  *(&v32 + 1) = v15;
  v33 = v16;
  v34 = v17;
  *v25 = v9;
  *&v25[8] = v8;
  *&v25[16] = v10;
  v26 = v11;
  if (S2LatLngRect.intersects(with:)(*&a2))
  {
    v18 = *v5;
    v33 = v12;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v17;
    v39 = v5[4];
    *v25 = v7;
    *&v25[8] = *(a1 + 1);
    v26 = a1[3];
    v27 = v9;
    v28 = v8;
    v29 = v10;
    v30 = v11;
    v31 = *(a1 + 4);
    v32 = v18;
    sub_1D9B03F98(v25, &type metadata for WedgeContainsOrCrosses, &protocol witness table for WedgeContainsOrCrosses);
    if (v21 >= 1 && (v8 < v9 || v14 <= v9 && v8 <= v15))
    {
      *&v32 = v16;
      *(&v32 + 1) = v17;
      *v25 = v10;
      *&v25[8] = v11;
      if (S1Interval.contains(interval:)(__PAIR128__(v20, v19)))
      {
        v32 = *v5;
        v33 = v12;
        v34 = v13;
        v35 = v14;
        v36 = v15;
        v37 = v16;
        v38 = v17;
        v39 = v5[4];
        if (*(*&v7 + 16))
        {
          v23 = *(*&v7 + 48);
          *v25 = *(*&v7 + 32);
          v24 = *v25;
          *&v25[16] = v23;
          if (S2Loop.contains(point:)(*(&v22 - 2)))
          {
            return;
          }

          if (*(*&v7 + 16))
          {
            if (*(v12 + 16))
            {
              sub_1D99EE5EC(*(*&v7 + 32), *(*&v7 + 40), *(*&v7 + 48));
            }

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1D9B05078@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = result;
    result = swift_beginAccess();
    if ((*(v3 + 40) & 1) != 0 || *(*(v3 + 56) + 16) < 0x65uLL)
    {
      goto LABEL_7;
    }

    v6 = *(v3 + 48);
    v7 = __OFADD__(v6, v4);
    v8 = v6 + v4;
    if (!v7)
    {
      if (v8 >= 31)
      {
        sub_1D9B8CAA8();
      }

LABEL_7:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = MEMORY[0x1E69E7CC0];
      *(a2 + 40) = 0;
      *a2 = v3;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

VisualLookUp::S1Angle __swiftcall S2Loop.getDistance(to:)(VisualLookUp::S2Point to)
{
  v4 = v2;
  v5 = *v1;
  v6 = v1[1].f64[0];
  v7 = *v3;
  v8 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)) + v6 * v6);
  if (v8 != 0.0)
  {
    v8 = 1.0 / v8;
  }

  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v20 = vmulq_n_f64(v5, v8);
    v11 = v6 * v8;
    v12 = 3.14159265;
    v13 = v7;
    while (1)
    {
      v5.f64[0] = v20.f64[0];
      v25 = v20;
      v26 = v11;
      v14 = *(v7 + 16);
      if (v10 >= v14)
      {
        break;
      }

      v15 = v10 + 1;
      v5.f64[0] = *(v13 + 48);
      v23 = *(v13 + 32);
      v24 = v5.f64[0];
      if (v10 + 1 >= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = 0;
      }

      if (v10 - v16 + 1 >= v14)
      {
        goto LABEL_17;
      }

      v17 = v13 - 24 * v16;
      v18 = *(v17 + 72);
      v21 = *(v17 + 56);
      v22 = v18;
      static S2EdgeUtil.getDistance(x:a:b:)(v25.f64, &v23, &v21, &v27);
      v5.f64[0] = v27;
      if (v27 < v12)
      {
        v12 = v27;
      }

      v13 += 24;
      v10 = v15;
      if (v9 == v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v12 = 3.14159265;
LABEL_15:
    *v4 = v12;
  }

  return *&v5.f64[0];
}

void S2Loop.isValid.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 < 3)
  {
    return;
  }

  v116 = v1 + 32;
  v3 = (v1 + 40);
  v4 = *(*v0 + 16);
  do
  {
    v5 = vmulq_f64(*v3, *v3);
    if (fabs(v3[-1].f64[1] * v3[-1].f64[1] + v5.f64[0] + v5.f64[1] + -1.0) > 1.0e-15)
    {
      return;
    }

    v3 = (v3 + 24);
    --v4;
  }

  while (v4);
  v6 = 0;
  v133 = MEMORY[0x1E69E7CD0];
  v7 = (v1 + 48);
  do
  {
    if (v6 >= *(v1 + 16))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if ((sub_1D9B92848(v122, *(v7 - 2), *(v7 - 1), *v7) & 1) == 0)
    {

      return;
    }

    ++v6;
    v7 += 3;
  }

  while (v2 != v6);

  *v122 = v1;
  v8 = *(v0 + 1);
  *&v122[24] = *(v0 + 3);
  v9 = *(v0 + 7);
  v123 = *(v0 + 5);
  v124 = v9;
  *&v125 = v0[9];
  *&v122[8] = v8;
  sub_1D9B05078(*(v1 + 16), &v127);
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_83:

    return;
  }

  v11 = 0;
  v95 = *(v1 + 16);
LABEL_13:
  if (v11 + 1 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = *(v1 + 16);
  if (v11 >= v13)
  {
    goto LABEL_95;
  }

  if (v12 >= v13)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v110 = v11 + 1;
  v14 = v116 + 24 * v11;
  *&v15 = *(v14 + 16);
  v16 = *v14;
  v17 = (v116 + 24 * v12);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = *(v1 + 48);
  v126 = 0u;
  v22 = *&v15 * v19;
  v23 = *&v15 * v18;
  *(&v15 + 1) = v18;
  v125 = 0u;
  *v122 = v16;
  *&v122[16] = v15;
  *&v122[32] = v19;
  *&v123 = v20;
  *&v15 = vmuld_lane_f64(v20, v16, 1);
  v24 = v23 - v20 * v16.f64[0];
  v16.f64[0] = v19 * v16.f64[0] - vmuld_lane_f64(v18, v16, 1);
  *(&v123 + 1) = *&v15 - v22;
  *&v124 = v24;
  *(&v124 + 1) = *&v16.f64[0];
  v120 = *(v1 + 32);
  *&v15 = v120;
  v121 = v21;
  v25 = v12;
  EdgeCrosser.restartAt(point:)(*&v15);
  v30 = *(v1 + 16);
  if (v11 >= v30)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v100 = *&v122[8];
  v101 = *v122;
  v98 = *&v122[24];
  v99 = *&v122[16];
  v96 = *&v123;
  v97 = *&v122[32];
  v108 = *&v124;
  v109 = *(&v123 + 1);
  v31 = *&v125;
  v107 = *(&v124 + 1);
  v32 = *(&v125 + 1);
  v33 = *(&v126 + 1);
  v34 = *&v126;
  v35 = *(v14 + 16);
  *v122 = *v14;
  *&v122[16] = v35;
  if (v25 >= v30)
  {
    goto LABEL_98;
  }

  v36 = v17[2];
  v120 = *v17;
  v37 = v120;
  v121 = v36;
  v115 = v25;
  S2EdgeIndex.DataEdgeIterator.getCandidates(a:b:)(*(&v26 - 2), *&v27);
  v38 = v25;
  v39 = v128;
  v40 = v129;
  v41 = v132;
  v113 = v130;
  v114 = v131;
  v111 = v131 + 32;
  v42 = -2;
  while (2)
  {
    v105 = v42;
    v106 = v33;
    v102 = v34;
    v103 = v32;
    v104 = v31;
    do
    {
      while (1)
      {
        do
        {
          v43 = v40;
          if (v39)
          {
            if (v40 >= v113)
            {
              goto LABEL_12;
            }

            ++v40;
          }

          else
          {
            v44 = *(v114 + 16);
            if (v41 >= v44)
            {
LABEL_12:
              ++v11;
              v10 = v95;
              if (v110 == v95)
              {
                goto LABEL_83;
              }

              goto LABEL_13;
            }

            if (v41 + 1 >= v44)
            {
              ++v41;
            }

            else
            {
              if (v41 < -1)
              {
                goto LABEL_93;
              }

              v40 = *(v111 + 8 * ++v41);
            }
          }

          v45 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          v46 = *(v1 + 16);
          if (!v46)
          {
            goto LABEL_87;
          }

          v42 = v45 % v46;
        }

        while (v11 == v45 % v46 || v38 == v43 || v11 == v43);
        if (v11 >= v46)
        {
          v49 = v11 - v46;
        }

        else
        {
          v49 = v11;
        }

        if (v49 >= v46)
        {
          goto LABEL_88;
        }

        if (v38 >= v46)
        {
          v50 = *(v1 + 16);
        }

        else
        {
          v50 = 0;
        }

        v51 = v38 - v50;
        if (v51 >= v46)
        {
          goto LABEL_89;
        }

        if (v43 >= v46)
        {
          v52 = *(v1 + 16);
        }

        else
        {
          v52 = 0;
        }

        v53 = v43 - v52;
        if (v53 >= v46)
        {
          goto LABEL_90;
        }

        v54 = (v116 + 24 * v49);
        v55 = *v54;
        v56 = v54[1];
        v57 = v54[2];
        v58 = (v116 + 24 * v51);
        v60 = *v58;
        v59 = v58[1];
        v61 = v58[2];
        v62 = (v116 + 24 * v53);
        v63 = v62[1];
        v64 = v62[2];
        v65 = v56 * v61 - v57 * v59;
        v66 = v57 * v60 - v55 * v61;
        v67 = v55 * v59 - v56 * v60;
        v68 = v61 * v63 - v59 * v64;
        v69 = v60 * v64 - v61 * *v62;
        v112 = *v62;
        v70 = v59 * *v62 - v60 * v63;
        v71 = atan2(sqrt((v65 * v69 - v66 * v68) * (v65 * v69 - v66 * v68) + (v66 * v70 - v67 * v69) * (v66 * v70 - v67 * v69) + (v67 * v68 - v65 * v70) * (v67 * v68 - v65 * v70)), v67 * v70 + v65 * v68 + v66 * v69);
        v72 = fabs(v71) <= 1.0e-15 || fabs(v71 + -3.14159265) <= 1.0e-15;
        v73 = v11;
        if (v11 >= v46)
        {
          v73 = v11 - v46;
        }

        if (v73 >= v46)
        {
          goto LABEL_91;
        }

        if (v42 < 0)
        {
          goto LABEL_92;
        }

        v74 = (v116 + 24 * v73);
        v76 = v74[1];
        v75 = v74[2];
        v77 = (v116 + 24 * v42);
        v31 = *v77;
        v32 = v77[1];
        v34 = v77[2];
        v78 = v61 * v76 - v59 * v75;
        v79 = v60 * v75 - v61 * *v74;
        v80 = v59 * *v74 - v60 * v76;
        v81 = v61 * v32 - v59 * v34;
        v82 = v60 * v34 - v61 * *v77;
        v83 = v59 * *v77 - v60 * v32;
        v84 = atan2(sqrt((v78 * v82 - v79 * v81) * (v78 * v82 - v79 * v81) + (v79 * v83 - v80 * v82) * (v79 * v83 - v80 * v82) + (v80 * v81 - v78 * v83) * (v80 * v81 - v78 * v83)), v80 * v83 + v78 * v81 + v79 * v82);
        if (fabs(v84) > 1.0e-15)
        {
          break;
        }

        v38 = v115;
        if (!v72)
        {
          goto LABEL_64;
        }
      }

      v85 = fabs(v84 + -3.14159265) <= 1.0e-15 && v72;
      v38 = v115;
    }

    while (v85);
LABEL_64:
    v86 = v106;
    if (v105 != v43)
    {
      v87 = v109 * v112 + v108 * v63 + v107 * v64;
      if (v87 <= 1.6e-15)
      {
        if (v87 >= -1.6e-15)
        {
          *v122 = v101;
          *&v122[8] = v100;
          *&v122[16] = v99;
          *&v120 = v98;
          *(&v120 + 1) = v97;
          v121 = v96;
          v117 = v112;
          v118 = v63;
          v119 = v64;
          v88 = sub_1D9AEF300(v122, &v120, &v117);
          v38 = v115;
        }

        else
        {
          v88 = -1;
        }
      }

      else
      {
        v88 = 1;
      }

      v86 = -v88;
      if (__OFSUB__(0, v88))
      {
        goto LABEL_101;
      }

      v31 = *v77;
      v32 = v77[1];
      v103 = v63;
      v104 = v112;
      v102 = v64;
      v34 = v77[2];
    }

    v89 = v109 * v31 + v108 * v32 + v107 * v34;
    if (v89 <= 1.6e-15)
    {
      if (v89 >= -1.6e-15)
      {
        *v122 = v101;
        *&v122[8] = v100;
        *&v122[16] = v99;
        *&v120 = v98;
        *(&v120 + 1) = v97;
        v121 = v96;
        v117 = v31;
        v118 = v32;
        v119 = v34;
        v91 = sub_1D9AEF300(v122, &v120, &v117);
        v38 = v115;
        v90 = v91;
      }

      else
      {
        v90 = -1;
      }
    }

    else
    {
      v90 = 1;
    }

    if (__OFSUB__(0, v86))
    {
      goto LABEL_99;
    }

    v92 = 0;
    if (v90 != -v86 && (v90 & v86) != 0)
    {
      *v122 = v101;
      *&v122[8] = v100;
      *&v122[16] = v99;
      *&v122[24] = v98;
      *&v122[32] = v97;
      *&v123 = v96;
      *(&v123 + 1) = v109;
      *&v124 = v108;
      *(&v124 + 1) = v107;
      *&v125 = v104;
      *(&v125 + 1) = v103;
      *&v126 = v102;
      *(&v126 + 1) = v86;
      *&v120 = v31;
      *(&v120 + 1) = v32;
      v121 = v34;
      v93 = sub_1D9A68E70(&v120);
      v38 = v115;
      v92 = v93 > 0;
    }

    v94 = __OFSUB__(0, v90);
    v33 = -v90;
    if (!v94)
    {
      if (!v92)
      {
        continue;
      }

      goto LABEL_83;
    }

    break;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t S2Loop.contains(cell:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = a1[2];
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  *&v25 = *a1;
  BYTE8(v25) = v4;
  BYTE9(v25) = v5;
  BYTE10(v25) = v6;
  *&v26 = v7;
  S2Cell.rectBound.getter(&v32);
  v14 = v32;
  v15 = v33;
  if (*(&v32 + 1) < *&v32 || (v16 = 0, v8 <= *&v32) && *(&v32 + 1) <= v9)
  {
    *&v32 = v10;
    *(&v32 + 1) = v11;
    v25 = v33;
    if (S1Interval.contains(interval:)(__PAIR128__(v13, v12)))
    {
      *&v20 = v3;
      BYTE8(v20) = v4;
      BYTE9(v20) = v5;
      BYTE10(v20) = v6;
      *&v21 = v7;
      v25 = v14;
      v26 = v15;

      S2Loop.init(cell:bound:)(&v20, &v25, &v32);
      v17 = v2[1];
      v25 = *v2;
      v26 = v17;
      v27 = v8;
      v28 = v9;
      v29 = v10;
      v30 = v11;
      v31 = v2[4];
      v22 = v34;
      v23 = v35;
      v24 = v36;
      v20 = v32;
      v21 = v33;
      S2Loop.contains(other:)(&v20, *&v33, *&v32);
      v16 = v18;
      sub_1D9B0605C(&v32);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

BOOL S2Loop.mayIntersect(cell:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6 = a1[2];
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *(v1 + 7);
  S2Cell.rectBound.getter(&v30);
  v11 = v30;
  v12 = v31;
  *&v30 = v7;
  *(&v30 + 1) = v8;
  *&v31 = v9;
  *(&v31 + 1) = v10;
  v25 = v11;
  v26 = v12;
  if (S2LatLngRect.intersects(with:)(v35))
  {
    *&v18 = v2;
    BYTE8(v18) = v3;
    BYTE9(v18) = v4;
    BYTE10(v18) = v5;
    *&v19 = v6;
    v25 = v11;
    v26 = v12;

    S2Loop.init(cell:bound:)(&v18, &v25, &v30);
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v25 = v30;
    v26 = v31;
    v13 = v1[1];
    v18 = *v1;
    v19 = v13;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v1[4];
    v16 = S2Loop.intersects(with:)(&v18, *&v24, *&v13, v14, v15);
    sub_1D9B0605C(&v30);
  }

  else
  {
    return 0;
  }

  return v16;
}

__n128 sub_1D9B05D64@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t < infix(_:_:)(void *a1, void *a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1[3];
    v7 = a2[3];
    v8 = *a2 + 24 * v7;
    v9 = *a1 + 24 * v6;
    v10 = v7 - 0x7FFFFFFFFFFFFFFFLL;
    v11 = v6 - 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (v6 + v5 >= v2)
      {
        result = v2;
      }

      else
      {
        result = 0;
      }

      if (v6 + v5 - result >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      if (v7 + v5 >= v2)
      {
        v13 = v2;
      }

      else
      {
        v13 = 0;
      }

      if (v7 + v5 - v13 >= v2)
      {
        goto LABEL_34;
      }

      v14 = (v9 - 24 * result + v4);
      v16 = v14[5];
      v15 = v14[6];
      v17 = v14[4];
      v18 = (v8 - 24 * v13 + v4);
      v20 = v18[4];
      v19 = v18[5];
      v21 = v18[6];
      v22 = v17 == v20 && v16 == v19;
      if (!v22 || v15 != v21)
      {
        break;
      }

      result = v11 + v5;
      if (!(v11 + v5))
      {
        goto LABEL_35;
      }

      result = v10 + v5;
      if (!(v10 + v5))
      {
        goto LABEL_36;
      }

      ++v5;
      v4 += 24;
      if (v2 == v5)
      {
        return 0;
      }
    }

    if (v17 < v20)
    {
      return 1;
    }

    if (v20 >= v17)
    {
      if (v16 < v19)
      {
        return 1;
      }

      if (v19 >= v16)
      {
        return v15 < v21;
      }
    }
  }

  return 0;
}

unint64_t == infix(_:_:)(void *a1, void *a2)
{
  v2 = *(*a1 + 16);
  if (v2 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = a1[3];
  v6 = a2[3];
  v7 = *a2 + 24 * v6;
  v8 = *a1 + 24 * v5;
  while (1)
  {
    result = v5 + v4 >= v2 ? v2 : 0;
    if (v5 + v4 - result >= v2)
    {
      break;
    }

    if (v6 + v4 >= v2)
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }

    if (v6 + v4 - v10 >= v2)
    {
      goto LABEL_25;
    }

    v11 = (v8 - 24 * result + v3);
    v13 = v11[5];
    v12 = v11[6];
    v14 = v11[4];
    result = v7 - 24 * v10 + v3;
    v15 = *(result + 40);
    v16 = *(result + 48);
    LODWORD(result) = v14 == *(result + 32);
    if (v13 != v15)
    {
      LODWORD(result) = 0;
    }

    if (v12 == v16)
    {
      result = result;
    }

    else
    {
      result = 0;
    }

    if (result != 1)
    {
      return result;
    }

    if (!(v5 - 0x7FFFFFFFFFFFFFFFLL + v4))
    {
      goto LABEL_26;
    }

    if (!(v6 - 0x7FFFFFFFFFFFFFFFLL + v4))
    {
      goto LABEL_27;
    }

    ++v4;
    v3 += 24;
    if (v2 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D9B06090()
{
  result = qword_1ECB533E0;
  if (!qword_1ECB533E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB533E0);
  }

  return result;
}

uint64_t sub_1D9B060E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D9B0612C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B06190(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

void S2CellId.init(latlng:)(double *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = __sincos_stret(*a1);
  v5 = __sincos_stret(v3);
  v6[0] = v4.__cosval * v5.__cosval;
  v6[1] = v4.__cosval * v5.__sinval;
  v6[2] = v4.__sinval;
  S2CellId.init(point:)(v6, &v7);
  *a2 = v7;
}

uint64_t S2CellId.level.getter()
{
  v1 = *v0;
  if (*v0)
  {
    return 30;
  }

  v2 = HIDWORD(v1);
  if (v1)
  {
    LODWORD(v2) = *v0;
  }

  if (__OFSUB__(0, v2))
  {
    __break(1u);
  }

  else
  {
    v3 = v1 == 0;
    v4 = 15;
    if (v3)
    {
      v4 = -1;
    }

    v5 = -v2 & v2;
    if ((v5 & 0x5555) != 0)
    {
      v4 += 8;
    }

    if ((v5 & 0x550055) != 0)
    {
      v4 += 4;
    }

    if ((v5 & 0x5050505) != 0)
    {
      v4 += 2;
    }

    if ((v5 & 0x11111111) != 0)
    {
      return v4 + 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t S2CellId.parent(level:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (__OFSUB__(30, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (0x400000000000001ELL - result < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v3 = 2 * (30 - result);
  v4 = v3 - 65;
  v5 = 1 << v3;
  if (v3 >= 0x40)
  {
    v5 = 0;
  }

  v6 = 1uLL >> ((-2 * (30 - result)) & 0x3E);
  if (v3 <= 0xFFFFFFFFFFFFFFC0)
  {
    v6 = 0;
  }

  if (((30 - result) & 0x4000000000000000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v4 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v7 = 0;
  }

  *a2 = *v2 & -v7 | v7;
  return result;
}

uint64_t S2CellId.childEnd(level:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  if (__OFSUB__(0, *v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = 30 - result;
  if (__OFSUB__(30, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (0x400000000000001ELL - result < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = -*v2 & v3;
  v6 = 2 * v4;
  v7 = 2 * v4 - 65;
  v8 = 1 << v6;
  if (v6 >= 0x40)
  {
    v8 = 0;
  }

  v9 = 1uLL >> (-v6 & 0x3E);
  if (v6 <= 0xFFFFFFFFFFFFFFC0)
  {
    v9 = 0;
  }

  if (v6 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v7 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v10 = 0;
  }

  v11 = __CFADD__(v3, v5);
  v12 = v3 + v5;
  if (v11)
  {
    goto LABEL_19;
  }

  v11 = __CFADD__(v12, v10);
  v13 = v12 + v10;
  if (!v11)
  {
    *a2 = v13;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

void S2CellId.childBegin()(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = -*v1 & v2;
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4 = __CFADD__(v5, v3 >> 2);
  v6 = v5 + (v3 >> 2);
  if (!v4)
  {
    *a1 = v6;
    return;
  }

LABEL_8:
  __break(1u);
}

void S2CellId.next()(void *a1@<X8>)
{
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1 + 2 * (-*v1 & *v1);
  }
}

unint64_t *S2CellId.contains(other:)(unint64_t *result)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = -*v1 & v2;
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFSUB__(v2, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*result < v2 - v5)
  {
    return 0;
  }

  v4 = __OFADD__(v2, v5);
  v6 = v2 + v5;
  if (!v4)
  {
    return (*result <= v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t S2CellId.lowestOnBit.getter()
{
  if (!__OFSUB__(0, *v0))
  {
    return -*v0 & *v0;
  }

  __break(1u);
  return result;
}

void S2CellId.parent.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(0, 4 * (-*v1 & v2)))
  {
    *a1 = (-4 * (-*v1 & v2)) & v2 | (4 * (-*v1 & v2));
    return;
  }

  __break(1u);
}

void S2CellId.rangeMin.getter(void *a1@<X8>)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = -*v1 & v2;
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = __OFSUB__(v2, v5);
  v6 = v2 - v5;
  if (!v4)
  {
    *a1 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void S2CellId.rangeMax.getter(void *a1@<X8>)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = -*v1 & v2;
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = __OFADD__(v2, v5);
  v6 = v2 + v5;
  if (!v4)
  {
    *a1 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

double S2CellId.point.getter@<D0>(float64x2_t *a1@<X8>)
{
  v7 = *v1;
  S2CellId.rawPoint.getter(v5.f64);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)) + v6 * v6);
  if (v3 != 0.0)
  {
    v3 = 1.0 / v3;
  }

  result = v6 * v3;
  *a1 = vmulq_n_f64(v5, v3);
  a1[1].f64[0] = result;
  return result;
}

void sub_1D9B06624()
{
  v0 = sub_1D9C7DF5C();
  *(v0 + 16) = 1024;
  bzero((v0 + 32), 0x2000uLL);
  v1 = sub_1D9C7DF5C();
  *(v1 + 16) = 1024;
  bzero((v1 + 32), 0x2000uLL);
  off_1EDD2A998 = v0;
  off_1EDD2A9A0 = v1;
}

uint64_t sub_1D9B066A0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 == 4)
  {
LABEL_14:
    v11 = a3 + 16 * a2;
    if (!__OFADD__(a3, 16 * a2))
    {
      if (qword_1EDD2A990 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v11 = a1;
    v6 = qword_1F5528308;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (a6 > 3)
      {
        goto LABEL_28;
      }

      v13 = &qword_1F5528308[a6];
      v14 = v13[4];
      if (!*(v14 + 16))
      {
        goto LABEL_29;
      }

      v7 = 2 * a2;
      v15 = *(v14 + 32);
      v16 = __OFADD__(2 * a2, v15 >> 1);
      v17 = 2 * a2 + (v15 >> 1);
      if (v16)
      {
        goto LABEL_30;
      }

      p_name = 2 * a3;
      v18 = 4 * a5;
      sub_1D9B066A0(v11 + 1, v17, v15 & 1 | (2 * a3), a4, 4 * a5, a6 ^ 1);
      v19 = v13[4];
      if (*(v19 + 16) < 2uLL)
      {
        goto LABEL_31;
      }

      v20 = *(v19 + 40);
      if (__OFADD__(v7, v20 >> 1))
      {
        goto LABEL_32;
      }

      sub_1D9B066A0(v11 + 1, v7 + (v20 >> 1), v20 & 1 | p_name, a4, v18 | 1, a6);
      v21 = v13[4];
      if (*(v21 + 16) < 3uLL)
      {
        goto LABEL_33;
      }

      v22 = *(v21 + 48);
      if (__OFADD__(v7, v22 >> 1))
      {
        goto LABEL_34;
      }

      sub_1D9B066A0(v11 + 1, v7 + (v22 >> 1), v22 & 1 | p_name, a4, v18 | 2, a6);
      v23 = v13[4];
      if (*(v23 + 16) < 4uLL)
      {
        goto LABEL_35;
      }

      v24 = *(v23 + 56);
      a2 = v7 + (v24 >> 1);
      if (__OFADD__(v7, v24 >> 1))
      {
        goto LABEL_36;
      }

      a3 = v24 & 1 | p_name;
      a5 = v18 | 3;
      a6 ^= 3uLL;
      ++v11;
      if (v12 == 4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  v29 = a5;
  swift_once();
  a5 = v29;
LABEL_16:
  v25 = (4 * v11);
  v26 = 4 * v11 + a4;
  if (__OFADD__(4 * v11, a4))
  {
    __break(1u);
    goto LABEL_40;
  }

  v6 = 4 * a5;
  v7 = 4 * a5 + a6;
  if (__OFADD__(4 * a5, a6))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  p_name = &ObjectOntology.name;
  v11 = off_1EDD2A998;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_1EDD2A998 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_41:
  v11 = sub_1D9B1A6C0(v11);
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (v26 >= *(v11 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v11 + 8 * v26 + 32) = v7;
  *(p_name + 2456) = v11;
  v16 = __OFADD__(v6, a4);
  a4 += v6;
  if (v16)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = v25 + a6;
  if (__OFADD__(v25, a6))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v25 = &ObjectOntology.name;
  a6 = off_1EDD2A9A0;
  result = swift_isUniquelyReferenced_nonNull_native();
  off_1EDD2A9A0 = a6;
  if (result)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_46:
  result = sub_1D9B1A6C0(a6);
  a6 = result;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_25:
  if (a4 < *(a6 + 16))
  {
    *(a6 + 8 * a4 + 32) = v11;
    v25[308] = a6;
    return result;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t S2CellId.init(face:pos:level:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (__OFADD__(a2 | 1, result << 61))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(30, a3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (0x400000000000001ELL - a3 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v4 = 2 * (30 - a3);
  v5 = v4 - 65;
  v6 = 1 << v4;
  if (v4 >= 0x40)
  {
    v6 = 0;
  }

  v7 = 1uLL >> ((-2 * (30 - a3)) & 0x3E);
  if (v4 <= 0xFFFFFFFFFFFFFFC0)
  {
    v7 = 0;
  }

  if (((30 - a3) & 0x4000000000000000) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v5 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v8 = 0;
  }

  *a4 = ((a2 | 1) + (result << 61)) & -v8 | v8;
  return result;
}

void S2CellId.init(point:)(double *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = fabs(*a1);
  v6 = fabs(v3);
  v7 = fabs(v4);
  if (v6 >= v5)
  {
    if (v7 < v6)
    {
      if (v3 >= 0.0)
      {
        v8 = 1;
      }

      else
      {
        v8 = 4;
      }

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v7 >= v5)
  {
LABEL_8:
    if (v4 >= 0.0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 5;
    }

    goto LABEL_13;
  }

  if (*a1 >= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

LABEL_13:
  v19[0] = *a1;
  *&v19[1] = v3;
  *&v19[2] = v4;
  static S2Projections.validFaceXyzToUv(face:point:)(v8, v19, v20);
  v9 = v20[1];
  v10 = v20[0] * 3.0;
  if (v20[0] >= 0.0)
  {
    v11 = sqrt(v10 + 1.0) + -1.0;
  }

  else
  {
    v11 = 1.0 - sqrt(1.0 - v10);
  }

  v12 = round(v11 * 536870912.0 + 536870912.0);
  v13 = 0.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  if (v12 >= 1073741820.0)
  {
    v14 = 1073741820.0;
  }

  else
  {
    v14 = v13;
  }

  if (v12 < 1073741820.0 && v12 >= 0.0 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v9 * 3.0;
  if (v9 >= 0.0)
  {
    v16 = sqrt(v15 + 1.0) + -1.0;
  }

  else
  {
    v16 = 1.0 - sqrt(1.0 - v15);
  }

  v17 = round(v16 * 536870912.0 + 536870912.0);
  v18 = 0.0;
  if (v17 >= 0.0)
  {
    v18 = v17;
  }

  if (v17 >= 1073741820.0)
  {
    v18 = 1073741820.0;
    goto LABEL_35;
  }

  if (v17 >= 0.0 && (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_35:
  if (v18 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v18 < 9.22337204e18)
  {
    S2CellId.init(face:i:j:sameFace:)(v8, v14, v18, 1, v19);
    *a2 = v19[0];
    return;
  }

LABEL_43:
  __break(1u);
}

void S2CellId.init(face:i:j:sameFace:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v8 = a5;
  if ((a4 & 1) == 0)
  {
    v18 = 2 * a2;
    if (a2 <= -2)
    {
      v18 = -2;
    }

    v19 = 0x80000000;
    if (a2 < 0x40000000)
    {
      v19 = v18;
    }

    v20 = __OFADD__(v19, -1073741823);
    v21 = v19 - 0x3FFFFFFF;
    if (v20)
    {
      __break(1u);
      goto LABEL_69;
    }

    if (a3 < 0)
    {
      v22 = -1;
    }

    else
    {
      v22 = a3;
    }

    if (v22 >= 0x40000000)
    {
      v22 = 0x40000000;
    }

    v23 = vcvtd_n_f64_s64(v21, 0x1EuLL);
    v24 = vcvtd_n_f64_s64(2 * v22 - 0x3FFFFFFF, 0x1EuLL);
    if (a1 <= 1)
    {
      v25 = 1.0;
      if (!a1)
      {
        goto LABEL_38;
      }

      if (a1 == 1)
      {
        v25 = -v23;
        v23 = 1.0;
        goto LABEL_38;
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          v25 = -v23;
          v23 = -v24;
          v24 = 1.0;
          goto LABEL_38;
        case 3:
          v29 = -v24;
          v24 = -v23;
          v25 = -1.0;
          v23 = v29;
          goto LABEL_38;
        case 4:
          v25 = v24;
          v24 = -v23;
          v23 = -1.0;
          goto LABEL_38;
      }
    }

    v25 = v24;
    v24 = -1.0;
LABEL_38:
    v30 = fabs(v25);
    v31 = fabs(v23);
    v32 = fabs(v24);
    if (v31 >= v30)
    {
      if (v32 < v31)
      {
        if (v23 >= 0.0)
        {
          v33 = 1;
        }

        else
        {
          v33 = 4;
        }

        goto LABEL_50;
      }
    }

    else if (v32 < v30)
    {
      if (v25 >= 0.0)
      {
        v33 = 0;
      }

      else
      {
        v33 = 3;
      }

LABEL_50:
      v39[0] = v25;
      v39[1] = v23;
      v39[2] = v24;
      static S2Projections.validFaceXyzToUv(face:point:)(v33, v39, v40);
      v34 = round(v40[0] * 536870912.0 + 536870912.0);
      v35 = 0.0;
      if (v34 >= 0.0)
      {
        v35 = v34;
      }

      if (v34 >= 1073741820.0)
      {
        v35 = 1073741820.0;
        goto LABEL_56;
      }

      if (v34 < 0.0 || (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_56:
        if (v35 > -9.22337204e18)
        {
          if (v35 < 9.22337204e18)
          {
            v36 = round(v40[1] * 536870912.0 + 536870912.0);
            v37 = 0.0;
            if (v36 >= 0.0)
            {
              v37 = v36;
            }

            if (v36 >= 1073741820.0)
            {
              v37 = 1073741820.0;
              goto LABEL_64;
            }

            if (v36 < 0.0 || (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_64:
              if (v37 > -9.22337204e18)
              {
                if (v37 < 9.22337204e18)
                {
                  S2CellId.init(face:i:j:sameFace:)(v39, v33, v35, v37, 1);
                  v28 = *&v39[0];
                  goto LABEL_67;
                }

                goto LABEL_74;
              }

LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v24 >= 0.0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 5;
    }

    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C85EA0;
  *(inited + 32) = 0;
  *(inited + 40) = a1 << 28;
  v10 = a1 & 1;
  v11 = byte_1EDD2A9A8;
  v12 = 7;
  v13 = 56;
  v14 = 28;
  while (1)
  {
    if ((v11 & 1) == 0)
    {
      sub_1D9B066A0(0, 0, 0, 0, 0, 0);
      sub_1D9B066A0(0, 0, 0, 1uLL, 0, 1uLL);
      sub_1D9B066A0(0, 0, 0, 2uLL, 0, 2uLL);
      sub_1D9B066A0(0, 0, 0, 3uLL, 0, 3uLL);
      byte_1EDD2A9A8 = 1;
    }

    if (qword_1EDD2A990 == -1)
    {
      v11 = 1;
    }

    else
    {
      swift_once();
      v11 = byte_1EDD2A9A8;
    }

    v15 = (((a2 >> (v14 & 0x3C)) & 0xF) << 6) | v10 | (4 * ((a3 >> (v14 & 0x3C)) & 0xF));
    v16 = *(off_1EDD2A998 + 2);
    if (v15 >= v16)
    {
      break;
    }

    v16 = *(inited + 16);
    if (v12 >> 2 >= v16)
    {
      goto LABEL_31;
    }

    v17 = *(off_1EDD2A998 + v15 + 4);
    *(inited + 32 + 8 * (v12 >> 2)) |= v17 >> 2 << (v13 & 0x18);
    v10 = v17 & 3;
    --v12;
    v13 -= 8;
    v14 -= 4;
    if (v12 == -1)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  if (v16 < 2)
  {
    goto LABEL_75;
  }

  v27 = *(inited + 32);
  v26 = *(inited + 40);
  swift_setDeallocating();
  if (!__OFADD__(v27, v26 << 32))
  {
    v28 = (2 * (v27 + (v26 << 32))) | 1;
    v8 = a5;
LABEL_67:
    *v8 = v28;
    return;
  }

LABEL_76:
  __break(1u);
}