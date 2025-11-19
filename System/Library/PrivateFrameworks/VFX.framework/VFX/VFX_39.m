void *sub_1AF421118(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1ED72F7B0, sub_1AF446420, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[4 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 32 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF446420();
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF42124C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638CE8, type metadata accessor for RGPass, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1AF42135C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638CF8, &type metadata for MetalIOData, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 32 * v9;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_1AF42145C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638D10, &type metadata for RGGraphTranslator.LoadResourceInfo, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_1AF421560(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638D18, sub_1AF448A1C, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[5 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 40 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF448A1C();
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4216A8(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638CC0, sub_1AF44846C, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF44846C();
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4217DC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1AF4218E0(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638980, &type metadata for TexturePreview, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF421A08(char a1, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v10 < a2)
    {
      a2 = v11;
    }

    else
    {
      a2 = v10;
    }
  }

  v12 = a4[2];
  if (a2 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = a2;
  }

  if (v13)
  {
    sub_1AF42B9E0(0, a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4498F4(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1AF421B4C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED726A40, &type metadata for ShaderCache.Library, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF421C6C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638A98, &type metadata for ScriptDiagnostic, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[56 * v9])
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF421D94(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB638AA0, &type metadata for ScriptMarker, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
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

char *sub_1AF421ECC(char a1, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (v8 < a2)
    {
      a2 = v9;
    }

    else
    {
      a2 = v8;
    }
  }

  v10 = *(a4 + 2);
  if (a2 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = a2;
  }

  if (v11)
  {
    a5(0);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1AF421FCC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB638958, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1AF4220C4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED7269C8, &type metadata for TextureCPURuntime.Slice, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[64 * v9])
    {
      memmove(v14, v15, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v9 << 6);
  }

  return v11;
}

void *sub_1AF4221FC(char a1, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = a4[2];
  if (a2 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449890(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF43FD98();
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1AF422330(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = *(a4 + 2);
  if (a2 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449B08(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v11);
  }

  return v13;
}

char *sub_1AF42242C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF442F60();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1AF422524(char a1, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (v8 < a2)
    {
      a2 = v9;
    }

    else
    {
      a2 = v8;
    }
  }

  v10 = *(a4 + 2);
  if (a2 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = a2;
  }

  if (v11)
  {
    a5(0);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1AF422624(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB6309C8, &type metadata for MetalFunctionReflection.Arg, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[48 * v9])
    {
      memmove(v13, v14, 48 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF422778(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638838, sub_1AF445070, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[6 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 48 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF445070(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4228D4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 112);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[112 * v9])
    {
      memmove(v13, v14, 112 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4229F8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638178, &type metadata for ShadowRenderingCommand, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 160);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[160 * v9])
    {
      memmove(v13, v14, 160 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 160 * v9);
  }

  return v11;
}

char *sub_1AF422B38(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v10 < a2)
    {
      a2 = v11;
    }

    else
    {
      a2 = v10;
    }
  }

  v12 = *(a4 + 2);
  if (a2 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = a2;
  }

  if (v13)
  {
    sub_1AF445778(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (a1)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  return v14;
}

char *sub_1AF422C4C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6381C0, &type metadata for MeshPart, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 176);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[176 * v9])
    {
      memmove(v13, v14, 176 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF422D88(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = *(a4 + 2);
  if (a2 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449B08(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1AF422EA4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB6388F8, type metadata accessor for vfx_vertex_attribute, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1AF422FB4(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638200, sub_1AF43CA44, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF43CA44();
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4230FC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED722F60, &type metadata for RelationPair, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_1AF423200(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638938, sub_1AF445A88, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[5 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 40 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF445A88();
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF423364(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB6309D8, &type metadata for GraphNodeLibrary.Entry, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF423470(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB633A58, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
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

void *sub_1AF423590(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF4457D8();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4236B8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &unk_1ED7268F0, sub_1AF445854, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1AF4237C8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED726998, &type metadata for Scheduler.Job, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 96);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[96 * v9])
    {
      memmove(v13, v14, 96 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4238E8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED722F38, &type metadata for EntityInstance, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1AF4239EC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &unk_1EB638340, type metadata accessor for simd_float4x4, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[64 * v9])
    {
      memmove(v14, v15, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v9 << 6);
  }

  return v11;
}

char *sub_1AF423AFC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB633A88, &type metadata for GraphScriptGroup, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF423C1C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638420, &type metadata for MappedLocation, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
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

void *sub_1AF423D3C(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF4426B8();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[5 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 40 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF423E78(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB6384F8, sub_1AF443068, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 32 * v9;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_1AF423F84(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638DA8, &type metadata for VFXEmitter, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1AF42409C(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = *(a4 + 2);
  if (a2 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449B08(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || v15 >= &v16[48 * v11])
    {
      memmove(v15, v16, 48 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1AF4241F0(char a1, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v10 < a2)
    {
      a2 = v11;
    }

    else
    {
      a2 = v10;
    }
  }

  v12 = a4[2];
  if (a2 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = a2;
  }

  if (v13)
  {
    sub_1AF442B48(0, a5, a6);
    sub_1AF43CC28(0, a6, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v15 = *(*(v14 - 8) + 72);
    v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v17[2] = v12;
    v17[3] = 2 * ((v18 - v16) / v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF43CC28(0, a6, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v20 = *(v19 - 8);
  if (a1)
  {
    if (v17 < a4 || (v21 = (*(v20 + 80) + 32) & ~*(v20 + 80), v17 + v21 >= a4 + v21 + *(v20 + 72) * v12))
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

char *sub_1AF424490(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = *(a4 + 2);
  if (a2 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449B08(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 29;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 2);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || v16 >= &v17[4 * v11])
    {
      memmove(v16, v17, 4 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 4 * v11);
  }

  return v13;
}

char *sub_1AF42458C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638540, type metadata accessor for simd_quatf, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1AF4246B0(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
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

char *sub_1AF4247CC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4248E0(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF445F94(0, &unk_1ED7269E0, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_1AF4249DC(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF43DA80();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[6 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 48 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4485F8(0, &qword_1ED7256D0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF424B3C(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB6327C0, sub_1AF44569C, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF44569C(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF424C8C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638C10, &type metadata for ShaderCache.ComputePipeline, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[64 * v9])
    {
      memmove(v14, v15, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF424D98(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638C18, &type metadata for ShaderCache.RenderPipeline, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 432);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[432 * v9])
    {
      memmove(v13, v14, 432 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF424EC0(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638818, &_s9ErrorInfoVN, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[64 * v9])
    {
      memmove(v14, v15, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF424FCC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638880, &_s12MetadataTypeON, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4250EC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB638820, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4251F8(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF445550();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 88);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[11 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 88 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF425364(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6388D8, &_s8MetadataVN, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 88);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[88 * v9])
    {
      memmove(v13, v14, 88 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4254B4(char a1, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v10 < a2)
    {
      a2 = v11;
    }

    else
    {
      a2 = v10;
    }
  }

  v12 = a4[2];
  if (a2 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = a2;
  }

  if (v13)
  {
    a5(0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4485F8(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1AF4255E0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF4453AC();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[8 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, v9 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF445424(0, &qword_1EB6388A0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF425704(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638860, &_s7ContextC14AssignmentInfoVN, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF425824(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB6388A8, sub_1AF445480, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF445480();
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF425958(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB633A68, &type metadata for EntityComponentProperty, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF425A64(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB633A60, &type metadata for EntityComponentPropertyLite, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[56 * v9])
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF425B8C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB6382F0, &type metadata for GraphScriptingConfig.EvaluationMode, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 8 * v9;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_1AF425C8C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6386B0, &type metadata for GeneratedScriptCode, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF425DAC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6386E0, &type metadata for FlowScope, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

void *sub_1AF425EC0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638760, sub_1AF4447E8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4447E8();
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF426008(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6386F0, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 120);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[120 * v9])
    {
      memmove(v13, v14, 120 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF42612C(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF443F68();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 88);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[11 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 88 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF0D8108(0, &qword_1EB638700);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF426264(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF426384(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = *(a4 + 2);
  if (a2 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449B08(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1AF426490(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6386E8, &type metadata for GraphCodeGen.CodeGenParameter, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[48 * v9])
    {
      memmove(v13, v14, 48 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4265C4(char a1, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (v9 < a2)
    {
      a2 = v10;
    }

    else
    {
      a2 = v9;
    }
  }

  v11 = *(a4 + 2);
  if (a2 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    sub_1AF449B08(0, a5, a6, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 + 31;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 6);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || v16 >= &v17[64 * v11])
    {
      memmove(v16, v17, v11 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1AF4266D0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF43DAF8();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, &unk_1ED7225E0, &type metadata for ManagedBufferSlice, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF42680C(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF442FF0();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[6 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 48 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4485F8(0, &qword_1ED7223C0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF426968(char a1, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v10 < a2)
    {
      a2 = v11;
    }

    else
    {
      a2 = v10;
    }
  }

  v12 = a4[2];
  if (a2 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = a2;
  }

  if (v13)
  {
    a5(0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4485F8(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1AF426AAC(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF43FBE8();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF0D8108(0, &qword_1EB631350);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF426BC8(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF441DD8();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF426D24(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB6309B8, &type metadata for Node.Port, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF426E64(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638A80, sub_1AF446B2C, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF446B2C();
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF426FC0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF444238();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[7 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 56 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF0D8108(0, &qword_1EB638730);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4270F8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED721E58, &type metadata for Lexer.Token, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF427218(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED721EC0, &type metadata for ScriptParser.Argument, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF427324(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED722F58, &type metadata for ScriptParser.ParsedScriptParameter, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[72 * v9])
    {
      memmove(v13, v14, 72 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF427460(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB6386C0, &type metadata for CollisionTriggerEvent, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 80);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[80 * v9])
    {
      memmove(v13, v14, 80 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF42757C(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6386B8, &type metadata for TriggerOSEvent, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 < a4 || v11 + 4 >= &a4[4 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4276E0(char a1, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v11 < a2)
    {
      a2 = v12;
    }

    else
    {
      a2 = v11;
    }
  }

  v13 = a4[2];
  if (a2 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = a2;
  }

  if (v14)
  {
    sub_1AF449890(0, a5, a6, MEMORY[0x1E69E6F90]);
    v15 = *(a7(0) - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v18[2] = v13;
    v18[3] = 2 * ((v19 - v17) / v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(a7(0) - 8);
  if (a1)
  {
    if (v18 < a4 || (v21 = (*(v20 + 80) + 32) & ~*(v20 + 80), v18 + v21 >= a4 + v21 + *(v20 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

void *sub_1AF4278BC(char a1, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v10 < a2)
    {
      a2 = v11;
    }

    else
    {
      a2 = v10;
    }
  }

  v12 = a4[2];
  if (a2 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = a2;
  }

  if (v13)
  {
    sub_1AF42B9E0(0, a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4498F4(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1AF427A00(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF44310C();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_1AF427ADC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF443E40();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 12);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[12 * v9])
    {
      memmove(v13, v14, 12 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 12 * v9);
  }

  return v11;
}

char *sub_1AF427BD4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF443298();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1AF427CB4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638518, &type metadata for ParticleFlockingSolverData.Cell, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1AF427DB8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638510, &type metadata for FlockingParticle, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 112);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 112 * v9;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

char *sub_1AF427EE4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF443374();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1AF427FC4(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF443654();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

char *sub_1AF4280BC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF4435DC();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1AF42819C(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638560, sub_1AF4433E4, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 96);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[12 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 96 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4433E4(0, a2);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4282E0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6386A8, &type metadata for TriggerWorldPair, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

  if (a1)
  {
    if (v11 < a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF428410(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB638690, &type metadata for VFXHandTracker.HandsInstance, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

  if (a1)
  {
    if (v11 < a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF428540(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449620();
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_1AF428620(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v2 = a1;
    v3 = 0;
    v4 = (MEMORY[0x1E69E7CC0] + 32);
    do
    {
      if (!v3)
      {
        if ((v1[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v1[3] & 0xFFFFFFFFFFFFFFFELL;
        }

        sub_1AF449B08(0, &qword_1EB638DD8, &type metadata for QueryOptions, MEMORY[0x1E69E6F90]);
        v8 = swift_allocObject();
        v9 = j__malloc_size(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 25;
        }

        v11 = v10 >> 3;
        v8[2] = v7;
        v8[3] = 2 * (v10 >> 3);
        v12 = (v8 + 4);
        v13 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v12 >= &v1[v13 + 4])
          {
            memmove(v8 + 4, v1 + 4, 8 * v13);
          }

          v1[2] = 0;
        }

        v4 = (v12 + 8 * v13);
        v3 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v1 = v8;
      }

      v5 = v2 & -v2;
      --v3;
      *v4++ = v5;
      v6 = v2 == v5;
      v2 ^= v5;
    }

    while (!v6);
  }

  else
  {
    v3 = 0;
  }

  v15 = v1[3];
  if (v15 >= 2)
  {
    v1[2] = (v15 >> 1) - v3;
  }

  return v1;
}

void *sub_1AF428780(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = MEMORY[0x1E69E6530];
    while (1)
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 8 * v6) >> v5;
      if (!v12)
      {
        break;
      }

LABEL_15:
      v14 = __clz(__rbit64(v12)) + v5;
      if (!v4)
      {
        if ((v2[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v2[3] & 0xFFFFFFFFFFFFFFFELL;
        }

        sub_1AF449B08(0, &qword_1ED726988, v8, MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        v17 = j__malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 25;
        }

        v19 = v18 >> 3;
        v16[2] = v15;
        v16[3] = 2 * (v18 >> 3);
        v20 = (v16 + 4);
        v21 = v2[3] >> 1;
        if (v2[2])
        {
          v22 = v2 + 4;
          if (v16 != v2 || v20 >= v22 + 8 * v21)
          {
            memmove(v16 + 4, v22, 8 * v21);
          }

          v2[2] = 0;
        }

        v7 = (v20 + 8 * v21);
        v4 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v2 = v16;
      }

      --v4;
      *v7++ = v14;
      v5 = v14 + 1;
      v6 = (v14 + 1) >> 6;
      v1 = *(a1 + 24);
      if (v6 >= v1)
      {
        goto LABEL_4;
      }
    }

    v5 = v6 << 6;
    v13 = v6 + 1;
    while (v13 < v1)
    {
      v12 = *(v11 + 8 * v13);
      v5 += 64;
      ++v13;
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_4:
  v9 = v2[3];
  if (v9 >= 2)
  {
    v2[2] = (v9 >> 1) - v4;
  }

  return v2;
}

uint64_t *sub_1AF42892C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1AF449890(0, &unk_1EB630A18, sub_1AF44479C, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = 0;
    v9 = v7 - 32;
    if (v7 < 32)
    {
      v9 = v7 - 25;
    }

    v10 = v9 >> 3;
    v6[2] = v4;
    v6[3] = 2 * v10;
    v11 = v6 + 4;
    v37 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = a2 + 32;
    v13 = v4;
    do
    {
      if (v8 == v4)
      {
        v14 = 1;
        v8 = v4;
      }

      else
      {
        v15 = *(v12 + 8 * v8);
        if (*(a1 + 16) && (v16 = sub_1AF0D3F10(*(v12 + 8 * v8)), (v17 & 1) != 0))
        {
          v18 = *(*(a1 + 56) + 8 * v16);
        }

        else
        {
          v18 = 1;
        }

        ++v8;
        v41 = v15;
        v42 = v18;
        a3(&v40, &v41);
        sub_1AF0DB74C(v18);
        v14 = v40;
      }

      *v11++ = v14;
      --v13;
    }

    while (v13);
    v19 = v37 - v4;
    v20 = v4 - v8;
    if (v4 != v8)
    {
      v23 = (a2 + 8 * v8 + 32);
      do
      {
        v24 = *v23;
        if (*(a1 + 16) && (v25 = sub_1AF0D3F10(*v23), (v26 & 1) != 0))
        {
          v27 = *(*(a1 + 56) + 8 * v25);
        }

        else
        {
          v27 = 1;
        }

        v41 = v24;
        v42 = v27;
        a3(&v40, &v41);
        sub_1AF0DB74C(v27);
        v28 = v40;
        if (!v19)
        {
          if ((v6[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v6[3] & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF449890(0, &unk_1EB630A18, sub_1AF44479C, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          v31 = j__malloc_size(v30);
          v32 = v31 - 32;
          if (v31 < 32)
          {
            v32 = v31 - 25;
          }

          v33 = v32 >> 3;
          v30[2] = v29;
          v30[3] = 2 * (v32 >> 3);
          v34 = (v30 + 4);
          v35 = v6[3] >> 1;
          if (v6[2])
          {
            if (v30 != v6 || v34 >= &v6[v35 + 4])
            {
              memmove(v30 + 4, v6 + 4, 8 * v35);
            }

            v6[2] = 0;
          }

          v11 = (v34 + 8 * v35);
          v19 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

          v6 = v30;
        }

        --v19;
        *v11++ = v28;
        ++v23;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v19 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = v6[3];
  if (v21 >= 2)
  {
    v6[2] = (v21 >> 1) - v19;
  }

  return v6;
}

void *sub_1AF428C1C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t *))
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = a2 - a1;
  if (a2 == a1)
  {
    i = 0;
  }

  else
  {
    v8 = a1;
    if (v4 <= 0)
    {
      v11 = *(MEMORY[0x1E69E7CC0] + 24);
    }

    else
    {
      sub_1AF43A038();
      v3 = swift_allocObject();
      v9 = j__malloc_size(v3);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v11 = 2 * (v10 >> 4);
      v3[2] = v4;
      v3[3] = v11;
    }

    v12 = v3 + 4;
    v13 = v8 + (v11 >> 1);
    do
    {
      if (v8 == a2)
      {
        v14 = 0;
        v15 = 0;
        v8 = a2;
      }

      else
      {
        v29 = v8;
        a3(&v28, &v29);
        v15 = *(&v28 + 1);
        v14 = v28;
        ++v8;
      }

      *v12 = v14;
      v12[1] = v15;
      v12 += 2;
      --v4;
    }

    while (v4);
    for (i = v13 - a2; a2 != v8; v12 += 2)
    {
      v29 = v8;
      a3(&v28, &v29);
      v18 = v28;
      if (!i)
      {
        v27 = v28;
        if ((v3[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v3[3] & 0xFFFFFFFFFFFFFFFELL;
        }

        sub_1AF43A038();
        v20 = swift_allocObject();
        v21 = j__malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 17;
        }

        v23 = v22 >> 4;
        v20[2] = v19;
        v20[3] = 2 * (v22 >> 4);
        v24 = (v20 + 4);
        v25 = v3[3] >> 1;
        if (v3[2])
        {
          if (v20 != v3 || v24 >= &v3[2 * v25 + 4])
          {
            memmove(v20 + 4, v3 + 4, 16 * v25);
          }

          v3[2] = 0;
        }

        v12 = (v24 + 16 * v25);
        i = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v3 = v20;
        v18 = v27;
      }

      ++v8;
      --i;
      *v12 = v18;
    }
  }

  v16 = v3[3];
  if (v16 >= 2)
  {
    v3[2] = (v16 >> 1) - i;
  }

  return v3;
}

void *sub_1AF428E18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1AF449B08(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = 0;
    v9 = v7 - 32;
    if (v7 < 32)
    {
      v9 = v7 - 25;
    }

    v10 = v9 >> 3;
    v6[2] = v4;
    v6[3] = (2 * v10) | 1;
    v44 = v6;
    v11 = v6 + 4;
    v42 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = a2 + 32;
    v13 = v4;
    do
    {
      if (v8 == v4)
      {
        v14 = 0;
        v8 = v4;
      }

      else
      {
        v15 = (v12 + 16 * v8);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(a1 + 16);

        if (v18 && (v19 = sub_1AF41A54C(v17, v16, MEMORY[0x1E69E60C8], sub_1AF41B38C), (v20 & 1) != 0))
        {
          v21 = *(*(a1 + 56) + 8 * v19);
        }

        else
        {
          v21 = 0;
        }

        ++v8;
        v47 = v17;
        v48 = v16;
        v49 = v21;
        a3(&v46, &v47);

        v14 = v46;
      }

      *v11++ = v14;
      --v13;
    }

    while (v13);
    v22 = v42 - v4;
    v23 = v4 - v8;
    if (v4 != v8)
    {
      v26 = (a2 + 16 * v8 + 40);
      do
      {
        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = *(a1 + 16);

        if (v29 && (v30 = sub_1AF41A54C(v28, v27, MEMORY[0x1E69E60C8], sub_1AF41B38C), (v31 & 1) != 0))
        {
          v32 = *(*(a1 + 56) + 8 * v30);
        }

        else
        {
          v32 = 0;
        }

        v47 = v28;
        v48 = v27;
        v49 = v32;
        a3(&v46, &v47);

        v33 = v46;
        if (!v22)
        {
          if ((v44[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = v44[3] & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF449B08(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v35 = swift_allocObject();
          v36 = j__malloc_size(v35);
          v37 = v36 - 32;
          if (v36 < 32)
          {
            v37 = v36 - 25;
          }

          v38 = v37 >> 3;
          v35[2] = v34;
          v35[3] = (2 * (v37 >> 3)) | 1;
          v39 = (v35 + 4);
          v40 = v44[3] >> 1;
          if (v44[2])
          {
            v41 = v44 + 4;
            if (v35 != v44 || v39 >= v41 + 8 * v40)
            {
              memmove(v35 + 4, v41, 8 * v40);
            }

            v44[2] = 0;
          }

          v11 = (v39 + 8 * v40);
          v22 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v40;

          v44 = v35;
        }

        --v22;
        *v11++ = v33;
        v26 += 2;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v22 = 0;
    v44 = MEMORY[0x1E69E7CC0];
  }

  result = v44;
  v25 = v44[3];
  if (v25 >= 2)
  {
    v44[2] = (v25 >> 1) - v22;
  }

  return result;
}

char *sub_1AF429194(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, _BYTE *))
{
  v3 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1AF449890(0, &unk_1EB6309A8, sub_1AF448148, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    v7 = 0;
    v8 = (j__malloc_size(v6) - 32) / 144;
    *(v6 + 2) = v4;
    *(v6 + 3) = 2 * v8;
    v55 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v57 = a2 + 32;
    v58 = v6;
    v9 = v6 + 176;
    v10 = v4 - 1;
LABEL_3:
    v11 = *(v57 + 8 * v7);
    if (*(v3 + 16))
    {
      v12 = sub_1AF0D3F10(*(v57 + 8 * v7));
      if (v13)
      {
        v14 = (*(v3 + 56) + 144 * v12);
        v64[0] = *v14;
        v15 = v14[4];
        v17 = v14[1];
        v16 = v14[2];
        v64[3] = v14[3];
        v64[4] = v15;
        v64[1] = v17;
        v64[2] = v16;
        v19 = v14[6];
        v18 = v14[7];
        v20 = v14[5];
        *(&v64[7] + 9) = *(v14 + 121);
        v64[6] = v19;
        v64[7] = v18;
        v64[5] = v20;
        memmove(&__dst, v14, 0x89uLL);
        nullsub_106();
        sub_1AF4495B8(v64, v61, sub_1AF448148);
      }

      else
      {
        sub_1AF4481DC(&__dst);
      }

      v90 = v81;
      v91[0] = v82[0];
      *(v91 + 9) = *(v82 + 9);
      v86 = v77;
      v87 = v78;
      v88 = v79;
      v89 = v80;
      v84 = __dst;
      v85 = v76;
    }

    else
    {
      sub_1AF4481DC(&v84);
    }

    *(&v64[5] + 8) = v89;
    *(&v64[6] + 8) = v90;
    *(&v64[7] + 8) = v91[0];
    *(&v64[8] + 1) = *(v91 + 9);
    *(&v64[1] + 8) = v85;
    *(&v64[2] + 8) = v86;
    *(&v64[3] + 8) = v87;
    *(&v64[4] + 8) = v88;
    *(v64 + 8) = v84;
    v62[6] = v90;
    v63[0] = v91[0];
    *(v63 + 9) = *(v91 + 9);
    v62[2] = v86;
    v62[3] = v87;
    v62[4] = v88;
    v62[5] = v89;
    v62[0] = v84;
    v62[1] = v85;
    *&v61[88] = v89;
    *&v61[104] = v90;
    *&v61[120] = v91[0];
    *&v61[129] = *(v91 + 9);
    *&v61[24] = v85;
    *&v61[40] = v86;
    *&v61[56] = v87;
    *&v61[72] = v88;
    *&v61[8] = v84;
    *&v64[0] = v11;
    sub_1AF4495B8(v62, &__dst, sub_1AF448148);
    sub_1AF4481F8(v64);
    ++v7;
    *v61 = v11;
    a3(v65, v61);
    v73 = v65[6];
    v74[0] = v66[0];
    *(v74 + 9) = *(v66 + 9);
    v69 = v65[2];
    v70 = v65[3];
    v71 = v65[4];
    v72 = v65[5];
    v67 = v65[0];
    v68 = v65[1];
    nullsub_106();
    v81 = *&v61[96];
    v82[0] = *&v61[112];
    v82[1] = *&v61[128];
    v83 = v61[144];
    v77 = *&v61[32];
    v78 = *&v61[48];
    v79 = *&v61[64];
    v80 = *&v61[80];
    __dst = *v61;
    v76 = *&v61[16];
    sub_1AF4481F8(&__dst);
    v98 = v73;
    v99[0] = v74[0];
    *(v99 + 9) = *(v74 + 9);
    v94 = v69;
    v95 = v70;
    v96 = v71;
    v97 = v72;
    v92 = v67;
    v93 = v68;
    v3 = a1;
    while (1)
    {
      v21 = v9 - 144;
      v22 = v99[0];
      *(v21 + 6) = v98;
      *(v21 + 7) = v22;
      *(v21 + 121) = *(v99 + 9);
      v23 = v95;
      *(v21 + 2) = v94;
      *(v21 + 3) = v23;
      v24 = v97;
      *(v21 + 4) = v96;
      *(v21 + 5) = v24;
      v25 = v93;
      *v21 = v92;
      *(v21 + 1) = v25;
      if (!v10)
      {
        break;
      }

      v9 += 144;
      --v10;
      if (v7 != v4)
      {
        goto LABEL_3;
      }

      sub_1AF4481DC(&v92);
      v7 = v4;
    }

    v26 = v55 - v4;
    v27 = v4 - v7;
    if (v4 != v7)
    {
      v30 = (a2 + 8 * v7 + 32);
      do
      {
        v37 = *v30;
        if (*(v3 + 16))
        {
          v38 = sub_1AF0D3F10(*v30);
          if (v39)
          {
            v40 = (*(v3 + 56) + 144 * v38);
            v64[0] = *v40;
            v41 = v40[4];
            v43 = v40[1];
            v42 = v40[2];
            v64[3] = v40[3];
            v64[4] = v41;
            v64[1] = v43;
            v64[2] = v42;
            v45 = v40[6];
            v44 = v40[7];
            v46 = *(v40 + 121);
            v64[5] = v40[5];
            *(&v64[7] + 9) = v46;
            v64[6] = v45;
            v64[7] = v44;
            memmove(&__dst, v40, 0x89uLL);
            nullsub_106();
            sub_1AF4495B8(v64, v61, sub_1AF448148);
            v47 = v80;
            v98 = v81;
            v99[0] = v82[0];
            *(v99 + 9) = *(v82 + 9);
            v94 = v77;
            v95 = v78;
          }

          else
          {
            sub_1AF4481DC(&__dst);
            v98 = v81;
            v99[0] = v82[0];
            *(v99 + 9) = *(v82 + 9);
            v94 = v77;
            v95 = v78;
            v47 = v80;
          }

          v96 = v79;
          v97 = v47;
          v92 = __dst;
          v93 = v76;
        }

        else
        {
          sub_1AF4481DC(&v92);
        }

        *(&v64[5] + 8) = v97;
        *(&v64[6] + 8) = v98;
        *(&v64[7] + 8) = v99[0];
        *(&v64[8] + 1) = *(v99 + 9);
        *(&v64[1] + 8) = v93;
        *(&v64[2] + 8) = v94;
        *(&v64[3] + 8) = v95;
        *(&v64[4] + 8) = v96;
        *(v64 + 8) = v92;
        v72 = v97;
        v73 = v98;
        v74[0] = v99[0];
        *(v74 + 9) = *(v99 + 9);
        v69 = v94;
        v70 = v95;
        v71 = v96;
        v67 = v92;
        v68 = v93;
        *&v61[88] = v97;
        *&v61[104] = v98;
        *&v61[120] = v99[0];
        *&v61[129] = *(v99 + 9);
        *&v61[24] = v93;
        *&v61[40] = v94;
        *&v61[56] = v95;
        *&v61[72] = v96;
        *&v61[8] = v92;
        *&v64[0] = v37;
        sub_1AF4495B8(&v67, &__dst, sub_1AF448148);
        sub_1AF4481F8(v64);
        *v61 = v37;
        a3(&v84, v61);
        v81 = *&v61[96];
        v82[0] = *&v61[112];
        v82[1] = *&v61[128];
        v83 = v61[144];
        v77 = *&v61[32];
        v78 = *&v61[48];
        v79 = *&v61[64];
        v80 = *&v61[80];
        __dst = *v61;
        v76 = *&v61[16];
        sub_1AF4481F8(&__dst);
        if (!v26)
        {
          if ((*(v58 + 3) & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v48 = 1;
          }

          else
          {
            v48 = *(v58 + 3) & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF449890(0, &unk_1EB6309A8, sub_1AF448148, MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          v50 = (j__malloc_size(v49) - 32) / 144;
          *(v49 + 2) = v48;
          *(v49 + 3) = 2 * v50;
          v51 = v49 + 32;
          v52 = *(v58 + 3) >> 1;
          v53 = 144 * v52;
          if (*(v58 + 2))
          {
            v54 = v58 + 32;
            if (v49 != v58 || v51 >= &v54[v53])
            {
              memmove(v49 + 32, v54, 144 * v52);
            }

            *(v58 + 2) = 0;
          }

          v9 = &v51[v53];
          v26 = (v50 & 0x7FFFFFFFFFFFFFFFLL) - v52;

          v58 = v49;
        }

        --v26;
        v31 = v84;
        v32 = v85;
        v33 = v87;
        *(v9 + 2) = v86;
        *(v9 + 3) = v33;
        *v9 = v31;
        *(v9 + 1) = v32;
        v34 = v88;
        v35 = v89;
        *(v9 + 121) = *(v91 + 9);
        v36 = v91[0];
        *(v9 + 6) = v90;
        *(v9 + 7) = v36;
        *(v9 + 4) = v34;
        *(v9 + 5) = v35;
        v9 += 144;
        ++v30;
        --v27;
        v3 = a1;
      }

      while (v27);
    }
  }

  else
  {
    v26 = 0;
    v58 = MEMORY[0x1E69E7CC0];
  }

  result = v58;
  v29 = *(v58 + 3);
  if (v29 >= 2)
  {
    *(v58 + 2) = (v29 >> 1) - v26;
  }

  return result;
}

void *sub_1AF429950(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v21 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  sub_1AF448C94();
  v7 = swift_allocObject();
  v8 = 0;
  v9 = (j__malloc_size(v7) - 32) / 12;
  v7[2] = v3;
  v7[3] = 2 * v9;
  v10 = v7 + 4;
  v42 = v7;
  v43 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  v11 = a2 + 32;
  v12 = v3;
  do
  {
    if (v8 == v3)
    {
      v13 = 0;
      v14 = 0;
      v8 = v3;
      goto LABEL_4;
    }

    v15 = *(v11 + 8 * v8);
    v16 = *(a1 + 16);
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = sub_1AF0D3F10(*(v11 + 8 * v8));
    if ((v18 & 1) == 0)
    {
      v16 = 0;
LABEL_10:
      v20 = 0;
      goto LABEL_11;
    }

    v19 = *(a1 + 56) + 12 * v17;
    v16 = *v19;
    v20 = *(v19 + 8);
LABEL_11:
    ++v8;
    v47 = v15;
    v48 = v16;
    v49 = v20;
    a3(&v45, &v47);
    v13 = v45;
    v14 = v46;
LABEL_4:
    *v10 = v13;
    *(v10 + 8) = v14;
    v10 = (v10 + 12);
    --v12;
  }

  while (v12);
  v21 = v43 - v3;
  v22 = v3 - v8;
  if (v3 != v8)
  {
    v23 = (a2 + 8 * v8 + 32);
    v44 = a1;
    v41 = a3;
    while (1)
    {
      v24 = *v23;
      v25 = *(a1 + 16);
      if (!v25)
      {
        goto LABEL_21;
      }

      v26 = sub_1AF0D3F10(*v23);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = *(a1 + 56) + 12 * v26;
      v25 = *v28;
      v29 = *(v28 + 8);
LABEL_22:
      v47 = v24;
      v48 = v25;
      v49 = v29;
      a3(&v45, &v47);
      v30 = v45;
      v31 = v46;
      if (!v21)
      {
        if ((v42[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v42[3] & 0xFFFFFFFFFFFFFFFELL;
        }

        v33 = swift_allocObject();
        v34 = (j__malloc_size(v33) - 32) / 12;
        v33[2] = v32;
        v33[3] = 2 * v34;
        v35 = (v33 + 4);
        v36 = v42[3] >> 1;
        v37 = 12 * v36;
        if (v42[2])
        {
          if (v33 != v42 || v35 >= v42 + v37 + 32)
          {
            memmove(v33 + 4, v42 + 4, 12 * v36);
          }

          v42[2] = 0;
        }

        v10 = (v35 + v37);
        v21 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v42 = v33;
        a3 = v41;
      }

      --v21;
      *v10 = v30;
      *(v10 + 8) = v31;
      v10 = (v10 + 12);
      ++v23;
      --v22;
      a1 = v44;
      if (!v22)
      {
        goto LABEL_34;
      }
    }

    v25 = 0;
LABEL_21:
    v29 = 0;
    goto LABEL_22;
  }

LABEL_34:
  result = v42;
  v40 = v42[3];
  if (v40 >= 2)
  {
    v42[2] = (v40 >> 1) - v21;
  }

  return result;
}

__int128 *sub_1AF429C28(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t *))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1AF441E54();
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = 0;
    v9 = v7 - 32;
    if (v7 < 32)
    {
      v9 = v7 - 17;
    }

    v10 = v9 >> 4;
    *(v6 + 2) = v4;
    *(v6 + 3) = 2 * v10;
    v46 = v6;
    v11 = v6 + 2;
    v42 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v44 = a2 + 32;
    v12 = xmmword_1AFE21110;
    v13 = v4;
    do
    {
      v16 = v4;
      v17 = v12;
      if (v8 != v4)
      {
        v18 = *(v44 + 8 * v8);
        if (*(a1 + 16) && (v19 = sub_1AF0D3F10(*(v44 + 8 * v8)), (v20 & 1) != 0))
        {
          v21 = (*(a1 + 56) + 16 * v19);
          v14 = *v21;
          v15 = v21[1];
        }

        else
        {
          v14 = 0;
          v15 = 1;
        }

        v16 = v8 + 1;
        v49 = v18;
        v50 = v14;
        v51 = v15;
        a3(&v48, &v49);
        sub_1AF447EB0(v14, v15);
        v17 = v48;
        v12 = xmmword_1AFE21110;
      }

      *v11++ = v17;
      v8 = v16;
      --v13;
    }

    while (v13);
    v22 = v42 - v4;
    v23 = v4 - v16;
    if (v4 != v16)
    {
      v26 = (a2 + 8 * v16 + 32);
      do
      {
        v28 = *v26;
        if (*(a1 + 16) && (v29 = sub_1AF0D3F10(*v26), (v30 & 1) != 0))
        {
          v31 = (*(a1 + 56) + 16 * v29);
          v32 = *v31;
          v33 = v31[1];
        }

        else
        {
          v32 = 0;
          v33 = 1;
        }

        v49 = v28;
        v50 = v32;
        v51 = v33;
        a3(&v48, &v49);
        sub_1AF447EB0(v32, v33);
        v27 = v48;
        if (!v22)
        {
          v45 = v48;
          if ((*(v46 + 3) & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = *(v46 + 3) & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF441E54();
          v35 = swift_allocObject();
          v36 = j__malloc_size(v35);
          v37 = v36 - 32;
          if (v36 < 32)
          {
            v37 = v36 - 17;
          }

          v38 = v37 >> 4;
          *(v35 + 2) = v34;
          *(v35 + 3) = 2 * (v37 >> 4);
          v39 = (v35 + 2);
          v40 = *(v46 + 3) >> 1;
          if (*(v46 + 2))
          {
            if (v35 != v46 || v39 >= &v46[v40 + 2])
            {
              memmove(v35 + 2, v46 + 2, 16 * v40);
            }

            *(v46 + 2) = 0;
          }

          v11 = (v39 + 16 * v40);
          v22 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v40;

          v46 = v35;
          v27 = v45;
        }

        --v22;
        *v11++ = v27;
        ++v26;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v22 = 0;
    v46 = MEMORY[0x1E69E7CC0];
  }

  result = v46;
  v25 = *(v46 + 3);
  if (v25 >= 2)
  {
    *(v46 + 2) = (v25 >> 1) - v22;
  }

  return result;
}

char *sub_1AF429F04(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
  while (v3 != *(a1 + 16))
  {
    v7 = *(v4 + 8 * v3);

    if (v7 && *(v7 + 16))
    {
      v8 = 0;
      ++v3;
      do
      {
        v9 = v7 + 16 * v8;
        v10 = *(v9 + 40);
        v21 = *(v9 + 32);
        if (v2)
        {

          v11 = v5;
        }

        else
        {
          if ((*(v5 + 3) & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = *(v5 + 3) & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF449B08(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v11 = swift_allocObject();
          v13 = j__malloc_size(v11);
          v14 = v13 - 32;
          if (v13 < 32)
          {
            v14 = v13 - 17;
          }

          v15 = v14 >> 4;
          *(v11 + 2) = v12;
          *(v11 + 3) = 2 * (v14 >> 4);
          v16 = v11 + 32;
          v17 = *(v5 + 3) >> 1;
          v6 = &v11[16 * v17 + 32];
          v2 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
          if (*(v5 + 2))
          {
            v18 = v5 + 32;
            if (v11 != v5 || v16 >= &v18[16 * v17])
            {
              memmove(v16, v18, 16 * v17);
            }

            *(v5 + 2) = 0;
          }

          else
          {
          }
        }

        ++v8;
        --v2;
        *v6 = v21;
        *(v6 + 1) = v10;
        v6 += 16;
        v5 = v11;
      }

      while (v8 != *(v7 + 16));
    }

    else
    {
      ++v3;
    }
  }

  v19 = *(v5 + 3);
  if (v19 >= 2)
  {
    *(v5 + 2) = (v19 >> 1) - v2;
  }

  return v5;
}

uint64_t *sub_1AF42A0E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1AF44979C();
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = 0;
    v9 = v7 - 32;
    if (v7 < 32)
    {
      v9 = v7 - 25;
    }

    v10 = v9 >> 3;
    v6[2] = v5;
    v6[3] = 2 * v10;
    v11 = v6 + 4;
    v37 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = a2 + 32;
    v13 = v5;
    do
    {
      if (v8 == v5)
      {
        v14 = 1;
        v8 = v5;
      }

      else
      {
        v15 = *(v12 + 8 * v8);
        if (*(a1 + 16) && (v16 = sub_1AF0D3F10(*(v12 + 8 * v8)), (v17 & 1) != 0))
        {
          v18 = *(*(a1 + 56) + 8 * v16);
        }

        else
        {
          v18 = 1;
        }

        ++v8;
        v40 = v15;
        v41 = v18;
        a3(&v39, &v40);
        sub_1AF0DB74C(v18);
        v14 = v39;
      }

      *v11++ = v14;
      --v13;
    }

    while (v13);
    v19 = v37 - v5;
    v20 = v5 - v8;
    if (v5 != v8)
    {
      v23 = (a2 + 8 * v8 + 32);
      do
      {
        v24 = *v23;
        if (*(a1 + 16) && (v25 = sub_1AF0D3F10(*v23), (v26 & 1) != 0))
        {
          v27 = *(*(a1 + 56) + 8 * v25);
        }

        else
        {
          v27 = 1;
        }

        v40 = v24;
        v41 = v27;
        a3(&v39, &v40);
        sub_1AF0DB74C(v27);
        v28 = v39;
        if (!v19)
        {
          if ((v6[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v6[3] & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF44979C();
          v30 = swift_allocObject();
          v31 = j__malloc_size(v30);
          v32 = v31 - 32;
          if (v31 < 32)
          {
            v32 = v31 - 25;
          }

          v33 = v32 >> 3;
          v30[2] = v29;
          v30[3] = 2 * (v32 >> 3);
          v34 = (v30 + 4);
          v35 = v6[3] >> 1;
          if (v6[2])
          {
            if (v30 != v6 || v34 >= &v6[v35 + 4])
            {
              memmove(v30 + 4, v6 + 4, 8 * v35);
            }

            v6[2] = 0;
          }

          v11 = (v34 + 8 * v35);
          v19 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

          v6 = v30;
        }

        --v19;
        *v11++ = v28;
        ++v23;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v19 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = v6[3];
  if (v21 >= 2)
  {
    v6[2] = (v21 >> 1) - v19;
  }

  return v6;
}

void *sub_1AF42A36C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1AF449B08(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = 0;
    v9 = v7 - 32;
    if (v7 < 32)
    {
      v9 = v7 - 25;
    }

    v10 = v9 >> 3;
    v6[2] = v4;
    v6[3] = (2 * v10) | 1;
    v11 = v6 + 4;
    v37 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = a2 + 32;
    v13 = v4;
    do
    {
      if (v8 == v4)
      {
        v14 = 0;
        v8 = v4;
      }

      else
      {
        v15 = *(v12 + 8 * v8);
        if (*(a1 + 16) && (v16 = sub_1AF0D3F10(*(v12 + 8 * v8)), (v17 & 1) != 0))
        {
          v18 = *(*(a1 + 56) + 8 * v16);
        }

        else
        {
          v18 = 0;
        }

        ++v8;
        v41 = v15;
        v42 = v18;
        a3(&v40, &v41);

        v14 = v40;
      }

      *v11++ = v14;
      --v13;
    }

    while (v13);
    v19 = v37 - v4;
    v20 = v4 - v8;
    if (v4 != v8)
    {
      v23 = (a2 + 8 * v8 + 32);
      do
      {
        v24 = *v23;
        if (*(a1 + 16) && (v25 = sub_1AF0D3F10(*v23), (v26 & 1) != 0))
        {
          v27 = *(*(a1 + 56) + 8 * v25);
        }

        else
        {
          v27 = 0;
        }

        v41 = v24;
        v42 = v27;
        a3(&v40, &v41);

        v28 = v40;
        if (!v19)
        {
          if ((v6[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v6[3] & 0xFFFFFFFFFFFFFFFELL;
          }

          sub_1AF449B08(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          v31 = j__malloc_size(v30);
          v32 = v31 - 32;
          if (v31 < 32)
          {
            v32 = v31 - 25;
          }

          v33 = v32 >> 3;
          v30[2] = v29;
          v30[3] = (2 * (v32 >> 3)) | 1;
          v34 = (v30 + 4);
          v35 = v6[3] >> 1;
          if (v6[2])
          {
            v36 = v6 + 4;
            if (v30 != v6 || v34 >= v36 + 8 * v35)
            {
              memmove(v30 + 4, v36, 8 * v35);
            }

            v6[2] = 0;
          }

          v11 = (v34 + 8 * v35);
          v19 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

          v6 = v30;
        }

        --v19;
        *v11++ = v28;
        ++v23;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v19 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = v6[3];
  if (v21 >= 2)
  {
    v6[2] = (v21 >> 1) - v19;
  }

  return v6;
}

unint64_t *sub_1AF42A658(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v4 >= v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    sub_1AF4442A8();
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (v8 - 32) / 24;
    v7[2] = v5;
    v7[3] = 2 * v12;
    v13 = v7 + 4;
    v35 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    v36 = v5;
    v37 = v2;
    v39 = a2 + 32;
    v41 = v2 + 32;
    do
    {
      v16 = 0;
      v17 = v9;
      v9 = 1;
      if ((v17 & 1) != 0 || v11 == v3)
      {
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v18 = v11 + 1;
        if (v10 == v4)
        {
          v16 = 0;
          v14 = 0;
          v15 = 0;
          v10 = v4;
          ++v11;
        }

        else
        {
          v16 = *(v41 + 8 * v11);
          v19 = (v39 + 16 * v10);
          v14 = *v19;
          v15 = v19[1];
          ++v10;
          sub_1AF442064(v16);

          v9 = 0;
          v11 = v18;
        }
      }

      *v13 = v16;
      v13[1] = v14;
      v13[2] = v15;
      v13 += 3;
      --v5;
    }

    while (v5);
    v20 = v35 - v36;
    v2 = v37;
    if (v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v20 = 0;
    v10 = 0;
    v11 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v13 = (MEMORY[0x1E69E7CC0] + 32);
  }

  v21 = v3 - v11;
  if (v21)
  {
    v22 = (v2 + 8 * v11 + 32);
    v23 = v4 - v10;
    v24 = (a2 + 16 * v10 + 40);
    while (1)
    {
      if (!v23)
      {
        goto LABEL_37;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v24;
      v42 = *(v24 - 1);
      if (!v20)
      {
        break;
      }

      sub_1AF442064(v26);

      v25 = v7;
LABEL_19:
      --v20;
      *v13 = v26;
      v13[1] = v42;
      v13[2] = v28;
      v13 += 3;
      --v23;
      v24 += 2;
      v7 = v25;
      if (!--v21)
      {
        goto LABEL_38;
      }
    }

    v40 = v22;
    if ((v7[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v7[3] & 0xFFFFFFFFFFFFFFFELL;
    }

    sub_1AF4442A8();
    v25 = swift_allocObject();
    v30 = (j__malloc_size(v25) - 32) / 24;
    v25[2] = v29;
    v25[3] = 2 * v30;
    v31 = v7[3] >> 1;
    v13 = &v25[3 * v31 + 4];
    v20 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v31;
    if (!v7[2])
    {
      sub_1AF442064(v26);

LABEL_36:

      v22 = v40;
      goto LABEL_19;
    }

    if (v25 < v7 || v25 + 4 >= &v7[3 * v31 + 4])
    {
      sub_1AF442064(v26);
    }

    else
    {
      sub_1AF442064(v26);
      if (v25 == v7)
      {
        goto LABEL_35;
      }
    }

    memmove(v25 + 4, v7 + 4, 24 * v31);
LABEL_35:

    v7[2] = 0;
    goto LABEL_36;
  }

LABEL_37:
  v25 = v7;
LABEL_38:
  v33 = v25[3];
  if (v33 >= 2)
  {
    v25[2] = (v33 >> 1) - v20;
  }

  return v25;
}

unint64_t *sub_1AF42A964(uint64_t a1, uint64_t a2, void (*a3)(unint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  v5 = *(a2 + 16);
  if (!v5)
  {
    v25 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  sub_1AF449B08(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = 0;
  v8 = (j__malloc_size(v6) - 32) / 40;
  v6[2] = v5;
  v6[3] = 2 * v8;
  v50 = a2;
  v52 = v6;
  v9 = v6 + 4;
  v49 = v8 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = a2 + 32;
  v11 = v5;
  do
  {
    if (v7 == v5)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0xF000000000000007;
      v7 = v5;
      goto LABEL_4;
    }

    v16 = (v10 + 16 * v7);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v4 + 16);

    v55 = 0u;
    if (!v19)
    {
      v24 = 0;
LABEL_11:
      v23 = 0xF000000000000007;
      goto LABEL_12;
    }

    v20 = sub_1AF41A54C(v18, v17, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    if ((v21 & 1) == 0)
    {
      v24 = 0;
      LOBYTE(v19) = 0;
      goto LABEL_11;
    }

    v22 = *(v4 + 56) + 40 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    v55 = *(v22 + 16);
    LOBYTE(v19) = *(v22 + 32);
    sub_1AF443EE0(*v22);
    sub_1AF444224(v55);
LABEL_12:
    ++v7;
    v62 = v18;
    v63 = v17;
    v64 = v23;
    v65 = v24;
    v66 = v55;
    v67 = v19;
    a3(&v58, &v62);

    sub_1AF443F24(v23);
    sub_1AF444AF4(v55);
    v15 = v58;
    v12 = v59;
    v14 = v60;
    v13 = v61;
    v4 = a1;
LABEL_4:
    *v9 = v15;
    *(v9 + 8) = v12;
    *(v9 + 1) = v14;
    *(v9 + 32) = v13;
    v9 += 5;
    --v11;
  }

  while (v11);
  v25 = v49 - v5;
  v26 = v5 - v7;
  if (v5 != v7)
  {
    v29 = (v50 + 16 * v7 + 40);
    while (1)
    {
      v33 = *(v29 - 1);
      v32 = *v29;
      v34 = *(v4 + 16);

      v56 = 0u;
      if (!v34)
      {
        break;
      }

      v35 = sub_1AF41A54C(v33, v32, MEMORY[0x1E69E60C8], sub_1AF41B38C);
      if ((v36 & 1) == 0)
      {
        v39 = 0;
        LOBYTE(v34) = 0;
        goto LABEL_27;
      }

      v37 = *(v4 + 56) + 40 * v35;
      v38 = *v37;
      v39 = *(v37 + 8);
      v56 = *(v37 + 16);
      LOBYTE(v34) = *(v37 + 32);
      sub_1AF443EE0(*v37);
      sub_1AF444224(v56);
LABEL_28:
      v62 = v33;
      v63 = v32;
      v64 = v38;
      v65 = v39;
      v66 = v56;
      v67 = v34;
      a3(&v58, &v62);

      sub_1AF443F24(v38);
      sub_1AF444AF4(v56);
      v40 = v58;
      v41 = v59;
      v30 = v60;
      v31 = v61;
      if (!v25)
      {
        v51 = v61;
        v57 = v60;
        if ((v52[3] & 0xFFFFFFFFFFFFFFFELL) <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v52[3] & 0xFFFFFFFFFFFFFFFELL;
        }

        sub_1AF449B08(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        v44 = (j__malloc_size(v43) - 32) / 40;
        v43[2] = v42;
        v43[3] = 2 * v44;
        v45 = (v43 + 4);
        v46 = v52[3] >> 1;
        v47 = 5 * v46;
        if (v52[2])
        {
          if (v43 != v52 || v45 >= &v52[v47 + 4])
          {
            memmove(v43 + 4, v52 + 4, 40 * v46);
          }

          v52[2] = 0;
        }

        v9 = (v45 + v47 * 8);
        v25 = (v44 & 0x7FFFFFFFFFFFFFFFLL) - v46;

        v52 = v43;
        v30 = v57;
        v31 = v51;
      }

      --v25;
      *v9 = v40;
      *(v9 + 8) = v41;
      *(v9 + 1) = v30;
      *(v9 + 32) = v31;
      v9 += 5;
      v29 += 2;
      --v26;
      v4 = a1;
      if (!v26)
      {
        goto LABEL_16;
      }
    }

    v39 = 0;
LABEL_27:
    v38 = 0xF000000000000007;
    goto LABEL_28;
  }

LABEL_16:
  result = v52;
  v28 = v52[3];
  if (v28 >= 2)
  {
    v52[2] = (v28 >> 1) - v25;
  }

  return result;
}

uint64_t sub_1AF42AE00(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return a2(v4);
}

uint64_t sub_1AF42AEBC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v2;
  v12[8] = *(a1 + 128);
  v13 = *(a1 + 144);
  v3 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v3;
  v4 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v4;
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v6 = *(a1 + 88);
  v7 = *(a1 + 120);
  a2[6] = *(a1 + 104);
  a2[7] = v7;
  *(a2 + 121) = *(a1 + 129);
  v8 = *(a1 + 24);
  v9 = *(a1 + 56);
  a2[2] = *(a1 + 40);
  a2[3] = v9;
  a2[4] = *(a1 + 72);
  a2[5] = v6;
  *a2 = *(a1 + 8);
  a2[1] = v8;
  return sub_1AF448280(v12, v11);
}

uint64_t sub_1AF42AF58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

void *sub_1AF42AF6C@<X0>(_OWORD *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, _OWORD *)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = a1[2];
  result = a2(&v9, v8);
  if (!v3)
  {
    v7 = v10;
    *a3 = v9;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_1AF42AFCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

double sub_1AF42AFD8@<D0>(_OWORD *a1@<X0>, void (*a2)(__int128 *__return_ptr, _OWORD *)@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  a2(&v8, v7);
  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
  }

  return result;
}

void *sub_1AF42B030@<X0>(_OWORD *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, _OWORD *)@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  result = a2(&v8, v7);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1AF42B0F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E5FE0];
  v4 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E5FE8]);
  v5 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    v6 = (a1 + 32);
    v7 = MEMORY[0x1E69E5FE0];
    while (1)
    {
      v8 = *v6;
      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1AF422330(v9 > 1, v10 + 1, 1, v5, &qword_1EB630978, v7);
      }

      *(v5 + 2) = v10 + 1;
      *&v5[8 * v10 + 32] = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_1AF0D3F10(v8);
      v14 = v13;
      v15 = v4[2] + ((v13 & 1) == 0);
      if (v4[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v17 = v12;
      sub_1AF843E24();
      v12 = v17;
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_3:
      v4[(v12 >> 6) + 8] |= 1 << v12;
      *(v4[6] + 8 * v12) = v8;
      ++v4[2];
LABEL_4:
      ++v6;
      if (!--v2)
      {
        return v4;
      }
    }

    sub_1AF82BA00(v15, isUniquelyReferenced_nonNull_native);
    v12 = sub_1AF0D3F10(v8);
    if ((v14 & 1) != (v16 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return v4;
}

uint64_t sub_1AF42B320(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AuthoringGraph();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v4;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = sub_1AF42B820(v4, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
  sub_1AFDFC308();
  v5[3] = a1;

  v9[16] = a2;
  v10 = &v12;
  v8[2] = sub_1AF441304;
  v8[3] = v9;
  v11[0] = sub_1AF42B0F4(v4);
  v11[1] = v6;
  sub_1AF412AA8(sub_1AF44131C, v8, 1, 0x1000000000000000uLL, 0, v4, v11);

  return v12;
}

void *sub_1AF42B4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4493DC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF41A9B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42B620(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, __n128), void (*a4)(uint64_t, char *))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a3(0, v10);
  v14 = sub_1AFDFE5C8();
  v15 = *(v7 + 48);
  v16 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);

  do
  {
    a4(v16, v12);
    v18 = sub_1AF419940(v12);
    *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
    v19 = v14[6];
    v20 = sub_1AFDFC318();
    (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v12, v20);
    *(v14[7] + 8 * v18) = *&v12[v15];
    ++v14[2];
    v16 += v17;
    --v13;
  }

  while (v13);

  return v14;
}

void *sub_1AF42B820(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, __n128), void (*a4)(uint64_t, char *))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a3(0, v10);
  v14 = sub_1AFDFE5C8();
  v15 = *(v7 + 48);
  v16 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);

  do
  {
    a4(v16, v12);
    v18 = sub_1AF419940(v12);
    *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
    v19 = v14[6];
    v20 = sub_1AFDFC318();
    (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v12, v20);
    *(v14[7] + 8 * v18) = *&v12[v15];
    ++v14[2];
    v16 += v17;
    --v13;
  }

  while (v13);

  return v14;
}

void sub_1AF42B9E0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF4498F4(255, a3);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1AF42BA48(uint64_t a1)
{
  sub_1AF44469C(0, &qword_1EB632740, MEMORY[0x1E69695A8], sub_1AF444718);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF448E3C(0, &qword_1EB630C30, sub_1AF444718);
  v9 = sub_1AFDFE5C8();
  v10 = &v7[*(v3 + 48)];
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF449A04(v11, v7, &qword_1EB632740, MEMORY[0x1E69695A8], sub_1AF444718, sub_1AF44469C);
    v13 = sub_1AF419940(v7);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v9[6];
    v15 = sub_1AFDFC318();
    (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v7, v15);
    v16 = v9[7] + 16 * v13;
    v17 = v10[8];
    *v16 = *v10;
    *(v16 + 8) = v17;
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1AF42BC98(uint64_t a1)
{
  sub_1AF43CC28(0, &qword_1EB632770, MEMORY[0x1E69695A8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444600();
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF447AA4(v11, v7, &qword_1EB632770, MEMORY[0x1E69695A8], &type metadata for TraversalTag, sub_1AF43CC28);
    v13 = sub_1AF419940(v7);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v9[6];
    v15 = sub_1AFDFC318();
    (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v7, v15);
    *(v9[7] + v13) = v7[v10];
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1AF42BEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4445A0();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;

    sub_1AF442064(v7);
    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

uint64_t sub_1AF42BFAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF44479C(0);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v8 = *i;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);

      if (v11 >= v10 >> 1)
      {
        v6 = sub_1AF422330(v10 > 1, v11 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[8 * v11 + 32] = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1AF0D3F10(v9);
      v15 = v14;
      v16 = v5[2] + ((v14 & 1) == 0);
      if (v5[3] < v16)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v18 = v13;
      sub_1AF84466C();
      v13 = v18;
      if (v15)
      {
LABEL_12:
        *(v5[7] + 8 * v13) = v8;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v13 >> 6) + 8] |= 1 << v13;
      *(v5[6] + 8 * v13) = v9;
      *(v5[7] + 8 * v13) = v8;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82C648(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(v9);
    if ((v15 & 1) != (v17 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF42C1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &unk_1EB630BE0, sub_1AF44479C);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42C2A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43A4E0();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42C370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444520();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    sub_1AF442064(v7);
    --v1;
  }

  while (v1);
  return v3;
}