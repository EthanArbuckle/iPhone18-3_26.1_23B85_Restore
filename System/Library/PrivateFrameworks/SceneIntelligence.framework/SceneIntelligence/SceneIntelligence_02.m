uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<unsigned char,half>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v18 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 2)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 2)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              v26 = *v23;
              if (a6)
              {
                LOBYTE(v26) = *(a6 + v26);
              }

              ++v23;
              *v25++ = v26;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else if (a4)
    {
      v21 = 2 * a3;
      do
      {
        memcpy(v18, a2, v21);
        a2 += a5;
        v18 += BytesPerRow;
        --a4;
      }

      while (a4);
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = 136381955;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v30 = 1025;
      v31 = 35;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = Height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v28, 0x3Au);
    }

    result = 4;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<half,half>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v18 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 2)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 2)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              v26 = *v23;
              if (a6)
              {
                LOBYTE(v26) = *(a6 + v26);
                v26 = LOWORD(v26);
              }

              ++v23;
              *v25++ = v26;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else if (a4)
    {
      v21 = 2 * a3;
      do
      {
        memcpy(v18, a2, v21);
        a2 += a5;
        v18 += BytesPerRow;
        --a4;
      }

      while (a4);
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = 136381955;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v30 = 1025;
      v31 = 35;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = Height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v28, 0x3Au);
    }

    result = 4;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t SanitizationError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v8 = 0;
    if (*(v0 + 24) == 1)
    {
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](v2, v1);
      v4 = " be found in input OCR: ";
      v5 = 0xD000000000000045;
    }

    else
    {
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](v2, v1);
      v4 = "lBufferCopyTemplate.h";
      v5 = 0xD000000000000048;
    }

    MEMORY[0x223D4B2A0](v5, v4 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE53288();
    v6 = sub_21DEC6D60();
    MEMORY[0x223D4B2A0](v6);
  }

  else
  {

    sub_21DEC72F0();

    v8 = 0xD00000000000002CLL;
    if (!v1)
    {
      sub_21DE53334(v2, 0, v3, 0);
      v1 = 0xED0000726F727245;
      v2 = 0x206E776F6E6B6E55;
    }

    MEMORY[0x223D4B2A0](v2, v1);
  }

  return v8;
}

void *sub_21DE513A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[3] = a3;
  v7 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a3;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13 = sub_21DE53398(v11, v12, v9);

      sub_21DE53580(v13);

      v10 += 2;
      --v8;
    }

    while (v8);

    v7 = v15;
  }

  v6[2] = v7;
  v6[4] = a2;

  return v6;
}

void sub_21DE51490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E98, &qword_21DECCA48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DECCA20;
  v8 = *MEMORY[0x277D23168];
  *(inited + 32) = *MEMORY[0x277D23168];
  v9 = *(v4 + 24);
  *(inited + 40) = v9;
  v10 = v8;
  v11 = v9;
  sub_21DE535F0(inited);
  swift_setDeallocating();
  sub_21DE536E4(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93EA8, &qword_21DECCA58);
  type metadata accessor for CFString(0);
  sub_21DE53760();
  v12 = sub_21DEC6D30();

  v13 = LXCreateWordModerationLexicon();
  if (v13)
  {
    v32 = v12;
    v12 = v13;
    v14 = sub_21DE53398(a3, a4, v11);
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x277D84F90];
    v35 = v14;
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = (v14 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        v20 = sub_21DEC6D80();
        v21 = swift_allocObject();
        *(v21 + 16) = 25165824;
        *(v21 + 24) = v4;
        *(v21 + 32) = v18;
        *(v21 + 40) = v19;
        *(v21 + 48) = v15;
        aBlock[4] = sub_21DE538C4;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21DE519FC;
        aBlock[3] = &block_descriptor;
        v22 = _Block_copy(aBlock);

        LXLexiconEnumerateEntriesForString();
        _Block_release(v22);

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    swift_beginAccess();
    v23 = *(v15 + 16);

    if (*(v23 + 16))
    {

      sub_21DE53870();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = v23;
      *(v24 + 24) = 1;
      swift_willThrow();
    }

    else
    {

      v28 = sub_21DE51A74(v35);

      if (!*(v28 + 16))
      {

        goto LABEL_14;
      }

      sub_21DE53870();
      swift_allocError();
      *v29 = a1;
      *(v29 + 8) = a2;
      *(v29 + 16) = v28;
      *(v29 + 24) = 2;
      swift_willThrow();
    }
  }

  else
  {
    if (v37)
    {
      aBlock[0] = v37;
      type metadata accessor for CFError(0);
      sub_21DE53828(&qword_27CE93EC0, type metadata accessor for CFError);
      v25 = sub_21DEC7710();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_21DE53870();
    swift_allocError();
    *v30 = v25;
    *(v30 + 8) = v27;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    swift_willThrow();
  }

LABEL_14:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21DE51904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21DEC7770();
  sub_21DEC6E90();
  v7 = sub_21DEC77B0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21DEC7610() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_21DE519FC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_21DE51A74(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = *(v1 + 32);
  v24 = isUniquelyReferenced_nonNull_native + 32;
  v5 = MEMORY[0x277D84F90];
  v22 = v4;
  v23 = v2;
  do
  {
    v6 = (v24 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    v25[0] = *v6;
    v25[1] = v7;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v21[2] = v25;

    if (sub_21DE53140(sub_21DE53E58, v21, v4))
    {
      v9 = *(v1 + 16);
      if (*(v9 + 16) && (v10 = *(v9 + 40), sub_21DEC7770(), sub_21DEC6E90(), v11 = sub_21DEC77B0(), v12 = -1 << *(v9 + 32), v13 = v11 & ~v12, ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (1)
        {
          v15 = (*(v9 + 48) + 16 * v13);
          v16 = *v15 == v8 && v15[1] == v7;
          if (v16 || (sub_21DEC7610() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v4 = v22;
        v2 = v23;
      }

      else
      {
LABEL_15:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_21DE52454(0, *(v5 + 16) + 1, 1, v5);
          v5 = isUniquelyReferenced_nonNull_native;
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_21DE52454((v17 > 1), v18 + 1, 1, v5);
          v5 = isUniquelyReferenced_nonNull_native;
        }

        v4 = v22;
        v2 = v23;
        *(v5 + 16) = v18 + 1;
        v19 = v5 + 16 * v18;
        *(v19 + 32) = v8;
        *(v19 + 40) = v7;
      }
    }

    else
    {
    }

    ++v3;
  }

  while (v3 != v2);
  return v5;
}

uint64_t sub_21DE51CA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21DE51CF0(uint64_t a1, id *a2)
{
  result = sub_21DEC6D90();
  *a2 = 0;
  return result;
}

uint64_t sub_21DE51D68(uint64_t a1, id *a2)
{
  v3 = sub_21DEC6DA0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21DE51DE8@<X0>(uint64_t *a1@<X8>)
{
  sub_21DEC6DB0();
  v2 = sub_21DEC6D80();

  *a1 = v2;
  return result;
}

uint64_t sub_21DE51E2C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21DEC6A70();
}

uint64_t sub_21DE51E78()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21DEC6A60();
}

uint64_t sub_21DE51ED0()
{
  sub_21DEC7770();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21DEC6A60();
  return sub_21DEC77B0();
}

BOOL sub_21DE51F88(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_21DE51FB8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_21DE51FE4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_21DE520BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_21DEC6A50();
}

_DWORD *sub_21DE52128@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21DE52158@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_21DE53E20(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21DE52198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21DEC6D80();

  *a2 = v5;
  return result;
}

uint64_t sub_21DE521E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21DEC6DB0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21DE5220C(uint64_t a1)
{
  v2 = sub_21DE53828(&qword_27CE93F20, type metadata accessor for NLLanguage);
  v3 = sub_21DE53828(&qword_27CE93F28, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21DE522C8()
{
  v1 = *v0;
  v2 = sub_21DEC6DB0();
  v3 = MEMORY[0x223D4B370](v2);

  return v3;
}

uint64_t sub_21DE52304()
{
  v1 = *v0;
  sub_21DEC6DB0();
  sub_21DEC6E90();
}

uint64_t sub_21DE52358()
{
  v1 = *v0;
  sub_21DEC6DB0();
  sub_21DEC7770();
  sub_21DEC6E90();
  v2 = sub_21DEC77B0();

  return v2;
}

uint64_t sub_21DE523CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21DEC6DB0();
  v6 = v5;
  if (v4 == sub_21DEC6DB0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();
  }

  return v9 & 1;
}

char *sub_21DE52454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
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

char *sub_21DE52560(char *a1, int64_t a2, char a3)
{
  result = sub_21DE52580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DE52580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
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

uint64_t sub_21DE5268C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21DEC7770();
  sub_21DEC6E90();
  v9 = sub_21DEC77B0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21DEC7610() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21DE52A3C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21DE527DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F48, &qword_21DECD050);
  result = sub_21DEC72B0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21DEC7770();
      sub_21DEC6E90();
      result = sub_21DEC77B0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21DE52A3C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21DE527DC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21DE52BBC();
      goto LABEL_16;
    }

    sub_21DE52D18(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21DEC7770();
  sub_21DEC6E90();
  result = sub_21DEC77B0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21DEC7610();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21DEC76F0();
  __break(1u);
  return result;
}

void *sub_21DE52BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F48, &qword_21DECD050);
  v2 = *v0;
  v3 = sub_21DEC72A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_21DE52D18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F48, &qword_21DECD050);
  result = sub_21DEC72B0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21DEC7770();

      sub_21DEC6E90();
      result = sub_21DEC77B0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_21DE52F50(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21DEC7770();
  sub_21DEC7790();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_21DE53828(&qword_27CE93F40, type metadata accessor for CFString);
    sub_21DEC6A60();
  }

  v4 = sub_21DEC77B0();

  return sub_21DE53020(a1, v4);
}

unint64_t sub_21DE53020(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_21DE53828(&qword_27CE93F40, type metadata accessor for CFString);
          v10 = v9;
          v11 = sub_21DEC6A50();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21DE53140(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_21DE531EC()
{
  result = qword_27CE93E88;
  if (!qword_27CE93E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93E88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21DE53288()
{
  result = qword_280F7A6D8;
  if (!qword_280F7A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93E90, &qword_21DECCA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A6D8);
  }

  return result;
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

uint64_t sub_21DE53334(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = a2;
  if (a4 - 1 < 2)
  {
  }

  if (!a4)
  {
  }

  return result;
}

unint64_t sub_21DE53398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v5 = sub_21DEC6D80();
  [v4 setString_];

  [v4 setLanguage_];
  v6 = sub_21DEC7180();
  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v7, 0);
    v8 = v18;
    v9 = (v6 + 40);
    while (1)
    {
      result = *(v9 - 1);
      if (*v9 >> 14 < result >> 14)
      {
        break;
      }

      v11 = sub_21DEC7010();
      MEMORY[0x223D4B1D0](v11);

      v12 = sub_21DEC6E20();
      v14 = v13;

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21DE52560((v15 > 1), v16 + 1, 1);
      }

      v9 += 2;
      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21DE53580(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_21DE5268C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_21DE535F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F38, &qword_21DECD048);
    v3 = sub_21DEC7430();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      v8 = v6;
      result = sub_21DE52F50(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v8;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21DE536E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93EA0, &qword_21DECCA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DE53760()
{
  result = qword_27CE93EB0;
  if (!qword_27CE93EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93EA8, &qword_21DECCA58);
    sub_21DE53828(&qword_27CE93EB8, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93EB0);
  }

  return result;
}

uint64_t sub_21DE53828(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DE53870()
{
  result = qword_27CE93EC8;
  if (!qword_27CE93EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93EC8);
  }

  return result;
}

void sub_21DE538C4(void *a1, _BYTE *a2)
{
  if (a1)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = *(v2 + 16);
    v18 = a1;
    if ((LXEntryGetMetaFlags() & v8) != 0 && (sub_21DE51904(v5, v6, *(v4 + 16)) & 1) == 0)
    {
      swift_beginAccess();
      v9 = *(v7 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_21DE52454(0, *(v9 + 2) + 1, 1, v9);
        *(v7 + 16) = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v15 = v9;
        v16 = *(v9 + 2);
        v17 = sub_21DE52454((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v9 = v17;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = v5;
      *(v14 + 5) = v6;
      *(v7 + 16) = v9;
      swift_endAccess();
      if (a2)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21DE53A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_21DE53A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_21DE53B4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21DE53E20(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21DE53E58(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DEC7610() & 1;
  }
}

void sub_21DE53EB8()
{
  type metadata accessor for StructuredTextTGProcessorBuilder();
  v0 = swift_allocObject();
  sub_21DE53FD4();
  qword_280F7B928 = v0;
}

uint64_t sub_21DE53EF4()
{
  v0 = swift_allocObject();
  sub_21DE53FD4();
  return v0;
}

uint64_t *sub_21DE53F2C()
{
  if (qword_280F7B850 != -1)
  {
    swift_once();
  }

  return &qword_280F7B928;
}

uint64_t sub_21DE53F7C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[12];

  v5 = v0[15];

  return MEMORY[0x2821FE8D8](v0, 177, 7);
}

int64x2_t sub_21DE53FD4()
{
  *(v0 + 16) = 0xD000000000000037;
  *(v0 + 24) = 0x800000021DED92C0;
  *(v0 + 32) = 0xD000000000000021;
  *(v0 + 40) = 0x800000021DED9300;
  *(v0 + 48) = 0xD000000000000031;
  *(v0 + 56) = 0x800000021DED9330;
  *(v0 + 64) = "{{ specialToken.chat.role.system.default }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.user }}{{ images }}{{ task }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v0 + 72) = 218;
  *(v0 + 80) = 2;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x800000021DED9450;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0xD000000000000036;
  *(v0 + 120) = 0x800000021DED9470;
  *(v0 + 128) = 1;
  *(v0 + 136) = 1;
  result = vdupq_n_s64(0x4095000000000000uLL);
  *(v0 + 144) = result;
  *(v0 + 160) = xmmword_21DECD070;
  *(v0 + 176) = 0;
  return result;
}

uint64_t sub_21DE540A4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_21DE540D8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_21DE5410C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t sub_21DE54140()
{
  result = *(*v0 + 64);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 80);
  return result;
}

uint64_t sub_21DE54150()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);

  return v1;
}

uint64_t sub_21DE54190()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);

  return v1;
}

void sub_21DE541C4(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 136);
  *a1 = *(*v1 + 128);
  *(a1 + 8) = v2;
}

__n128 sub_21DE541EC@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*v1)[11].n128_u8[0];
  result = (*v1)[10];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_280F7A6C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280F7A6C0);
    }
  }
}

uint64_t sub_21DE542A0()
{
  v0 = sub_21DEC6830();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_21DEC6880();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  return sub_21DEC6860();
}

uint64_t sub_21DE54430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F58, &qword_21DECD130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DECCA20;
  sub_21DE61D00(0, 0xE000000000000000, (v0 + 32));
  return v0;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DE544C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21DE54508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21DE54580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21DE545C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DE54644(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE54664(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21DE546C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 123 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 125;
  }

  if (a1 == 125 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 123;
  }

  if (a1 == 91 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 93;
  }

  if (a1 == 93 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 91;
  }

  if (a1 == 34 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    return 34;
  }

  return 0;
}

uint64_t sub_21DE54808()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_21DE54854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_21DE548A8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_21DE548E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_21DE549AC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_21DE54A3C(void *a1)
{
  v2 = swift_allocObject();
  sub_21DE54A7C(a1);
  return v2;
}

uint64_t sub_21DE54A7C(void *a1)
{
  v3 = v1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0;
  *(v1 + 16) = a1;
  if (!a1)
  {
    *(v1 + 24) = 0;
    return v3;
  }

  v4 = a1[3];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v1 + 24) = v6;
  v7 = *(*a1 + 160);
  swift_retain_n();

  v2 = v7(v11);
  v9 = v8;
  MEMORY[0x223D4B3E0]();
  if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_8:
    sub_21DEC7080();
  }

  sub_21DEC70A0();
  v2(v11, 0);

  return v3;
}

uint64_t sub_21DE54BA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  MEMORY[0x223D4B290](a1, a2);
  result = swift_endAccess();
  v6 = *(v2 + 16);
  if (v6)
  {
    return (*(*v6 + 200))(a1, a2);
  }

  return result;
}

uint64_t sub_21DE54C40@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_21DEC6E00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 120))(v10);
  if (a1)
  {
    String.repairedJSON()();
  }

  sub_21DEC6DF0();
  v13 = sub_21DEC6DC0();
  v15 = v14;

  (*(v8 + 8))(v12, v7);
  if (v15 >> 60 == 15)
  {
    v16 = 1;
  }

  else
  {
    v17 = sub_21DEC66C0();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_21DEC66B0();
    v16 = 0;
    sub_21DEC6690();
    sub_21DE56358(v13, v15);
  }

  return (*(*(a2 - 8) + 56))(a3, v16, 1, a2);
}

void *sub_21DE54E50()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[2];
  v0[2] = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + 16);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_21DE54ED8()
{
  sub_21DE54E50();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

unint64_t sub_21DE54F0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DEC72F0();

  MEMORY[0x223D4B2A0](v1, v2);
  return 0xD000000000000010;
}

uint64_t sub_21DE54F88()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_21DE54FC0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_21DE55058()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_21DE55090(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_21DE55128()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_21DE55174(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_21DE55218()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_21DE55250(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_21DE55298()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_21DE552D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_21DE5536C()
{
  v0 = swift_allocObject();
  sub_21DE553A4();
  return v0;
}

void *sub_21DE553A4()
{
  v0[3] = 0;
  v1 = MEMORY[0x277D84F90];
  v0[4] = MEMORY[0x277D84F90];
  v0[5] = 32;
  v0[6] = 0xE100000000000000;
  type metadata accessor for JSONNode();
  v0[7] = 0;
  v0[8] = 0;
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = v1;
  *(v2 + 56) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v0[2] = v2;
  swift_beginAccess();
  v0[3] = v2;

  return v0;
}

uint64_t sub_21DE55444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DEC6D20();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 123 && a2 == 0xE100000000000000 || ((v18 = sub_21DEC7610(), a1 == 91) ? (v19 = a2 == 0xE100000000000000) : (v19 = 0), !v19 ? (v20 = 0) : (v20 = 1), (v18 & 1) != 0 || (v20 & 1) != 0 || (sub_21DEC7610() & 1) != 0))
  {
    v11 = ((*(*v2 + 152))() + 16);
    if (*v11)
    {
      v12 = &v11[2 * *v11];
      v14 = *v12;
      v13 = v12[1];

      if (v14 == 34 && v13 == 0xE100000000000000)
      {

LABEL_32:
        v33 = *(*v3 + 128);
        v34 = v33(v17);
        if (v34)
        {
          (*(*v34 + 200))(a1, a2);
        }

        v32 = a1;
        v143 = v33(v34);
LABEL_35:
        v35 = *(*v3 + 168);
        v36 = v3;
        v37 = a2;

        v38 = v36;
        v39 = v35(v144);
        v41 = v40;
        v42 = *v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v41 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_21DE56438(0, *(v42 + 2) + 1, 1, v42);
          *v41 = v42;
        }

        v45 = *(v42 + 2);
        v44 = *(v42 + 3);
        if (v45 >= v44 >> 1)
        {
          v42 = sub_21DE56438((v44 > 1), v45 + 1, 1, v42);
          *v41 = v42;
        }

        *(v42 + 2) = v45 + 1;
        v46 = &v42[16 * v45];
        *(v46 + 4) = v32;
        *(v46 + 5) = v37;
        v39(v144, 0);
        v47 = *(*v38 + 184);

        v47(v32, v37);
        return v143;
      }

      v16 = sub_21DEC7610();

      if (v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v27 = *(*v3 + 128);
    v28 = v27(v17);
    type metadata accessor for JSONNode();
    v29 = swift_allocObject();
    sub_21DE54A7C(v28);
    v30 = (*(*v3 + 136))(v29);
    v31 = v27(v30);
    if (v31)
    {
      (*(*v31 + 200))(a1, a2);
    }

    v32 = a1;
    v143 = v27(v31);
    goto LABEL_35;
  }

  if (a1 == 34 && a2 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
  {
    v21 = a2;
    v22 = *(*v2 + 128);
    v23 = v2;
    v24 = v22();
    if (v24)
    {
      (*(*v24 + 200))(a1, v21);
    }

    if ((*(*v2 + 176))(v24) == 92 && v25 == 0xE100000000000000)
    {

LABEL_41:
      v50 = (v22)(v26);
      v51 = *(*v2 + 184);

      v52 = a1;
      v53 = v21;
LABEL_42:
      v51(v52, v53);
      return v50;
    }

    v49 = sub_21DEC7610();

    if (v49)
    {
      goto LABEL_41;
    }

    v65 = ((*(*v2 + 152))(v26) + 16);
    v66 = *v65;
    v141 = a1;
    if (v66)
    {
      v67 = &v65[2 * v66];
      v69 = *v67;
      v68 = v67[1];

      if (v69 == 34 && v68 == 0xE100000000000000)
      {

        goto LABEL_91;
      }

      v71 = sub_21DEC7610();

      if (v71)
      {
LABEL_91:
        v101 = v23;
        v102 = (*(*v23 + 168))(v144);
        v104 = *v103;
        if (*(*v103 + 2))
        {
          v101 = v102;
          v6 = v103;
          v105 = *v103;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v106 = *(v104 + 2);
            if (v106)
            {
LABEL_94:
              v107 = v106 - 1;
              v108 = *&v104[16 * v107 + 40];
              *(v104 + 2) = v107;
              *v6 = v104;

              v98 = v101(v144, 0);
LABEL_95:
              v109 = v23;
              v77 = (v22)(v98);
              v78 = *(*v109 + 184);

              v81 = v141;
              v82 = v21;
LABEL_96:
              v78(v81, v82);
              return v77;
            }

            goto LABEL_113;
          }
        }

        else
        {
          __break(1u);
        }

        v104 = sub_21DE56B38(v104);
        v106 = *(v104 + 2);
        if (v106)
        {
          goto LABEL_94;
        }

LABEL_113:
        __break(1u);
        goto LABEL_114;
      }
    }

    else
    {
    }

    v143 = (*(*v23 + 168))(v144);
    v92 = v91;
    v93 = *v91;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *v92 = v93;
    if ((v94 & 1) == 0)
    {
      v93 = sub_21DE56438(0, *(v93 + 2) + 1, 1, v93);
      *v92 = v93;
    }

    v96 = *(v93 + 2);
    v95 = *(v93 + 3);
    if (v96 >= v95 >> 1)
    {
      v93 = sub_21DE56438((v95 > 1), v96 + 1, 1, v93);
      *v92 = v93;
    }

    *(v93 + 2) = v96 + 1;
    v97 = &v93[16 * v96];
    *(v97 + 4) = 34;
    *(v97 + 5) = 0xE100000000000000;
    v98 = v143(v144, 0);
    goto LABEL_95;
  }

  if (a1 != 125 || a2 != 0xE100000000000000)
  {
    v72 = sub_21DEC7610();
    v73 = a1 == 93 && a2 == 0xE100000000000000;
    v74 = v73;
    if ((v72 & 1) == 0 && !v74 && (sub_21DEC7610() & 1) == 0)
    {
      v75 = *(*v2 + 128);
      v76 = v75();
      if (v76)
      {
        (*(*v76 + 200))(a1, a2);
      }

      v77 = (v75)(v76);
      v78 = *(*v2 + 184);
      v79 = a1;
      v80 = *v3 + 184;

      v81 = v79;
      v82 = a2;
      goto LABEL_96;
    }
  }

  v54 = *(*v2 + 128);
  v55 = *v2 + 128;
  v143 = v2;
  v139[1] = v55;
  v140 = v54;
  v56 = v54();
  if (v56)
  {
    (*(*v56 + 200))(a1, a2);
  }

  v142 = a2;
  v57 = *(*v143 + 152);
  v58 = ((v57)(v56) + 16);
  if (*v58)
  {
    v59 = &v58[2 * *v58];
    v61 = *v59;
    v60 = v59[1];

    if (v61 == 34 && v60 == 0xE100000000000000)
    {

LABEL_89:
      v99 = v143;
      v50 = (v140)(v64);
      v51 = *(*v99 + 184);
      v100 = v142;

      v52 = a1;
      v53 = v100;
      goto LABEL_42;
    }

    v63 = sub_21DEC7610();

    if (v63)
    {
      goto LABEL_89;
    }
  }

  else
  {
  }

  result = sub_21DE546C0(a1, v142);
  v139[0] = result;
  if (!v83)
  {
LABEL_117:
    __break(1u);
    return result;
  }

  v84 = v83;
  v85 = (v57() + 16);
  if (*v85)
  {
    v86 = &v85[2 * *v85];
    v88 = *v86;
    v87 = v86[1];

    v89 = v88 == v139[0] && v84 == v87;
    v22 = v142;
    if (v89)
    {

      goto LABEL_102;
    }

    v90 = sub_21DEC7610();

    if (v90)
    {
LABEL_102:
      v23 = v143;
      v101 = v143;
      v126 = (*(*v143 + 168))(v144);
      v104 = *v127;
      if (*(*v127 + 2))
      {
        v101 = v126;
        v6 = v127;
        v128 = *v127;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v129 = *(v104 + 2);
          if (!v129)
          {
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          goto LABEL_105;
        }

LABEL_115:
        result = sub_21DE56B38(v104);
        v104 = result;
        v129 = *(result + 16);
        if (!v129)
        {
          goto LABEL_116;
        }

LABEL_105:
        v130 = v129 - 1;
        v131 = *&v104[16 * v130 + 40];
        *(v104 + 2) = v130;
        *v6 = v104;

        v132 = v101(v144, 0);
        v133 = v140;
        v134 = (v140)(v132);
        if (v134)
        {
          (*(*v134 + 176))(1);
        }

        v135 = (v133)(v134);
        v136 = v133();
        if (v136)
        {
          v137 = *(v136 + 16);
        }

        else
        {
          v137 = 0;
        }

        (*(*v23 + 136))(v137);
        v138 = *(*v23 + 184);

        v138(a1, v22);
        return v135;
      }

LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  else
  {

    v22 = v142;
  }

  v110 = sub_21DEBD248();
  (*(v7 + 16))(v10, v110, v6);
  v111 = v143;

  v112 = sub_21DEC6D00();
  v113 = sub_21DEC71B0();

  v114 = os_log_type_enabled(v112, v113);
  v141 = a1;
  if (v114)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v144[0] = v116;
    *v115 = 136315138;
    v145 = v112;
    v117 = (*(*v111[2] + 120))();
    v119 = sub_21DE56544(v117, v118, v144);

    *(v115 + 4) = v119;
    v22 = v142;
    v112 = v145;
    _os_log_impl(&dword_21DE0D000, v145, v113, "Malformed JSON %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x223D4D340](v116, -1, -1);
    MEMORY[0x223D4D340](v115, -1, -1);
  }

  v120 = (*(v7 + 8))(v10, v6);
  v121 = (*(*v111[2] + 120))(v120);
  v123 = v122;
  sub_21DE563E4();
  swift_allocError();
  *v124 = v121;
  v124[1] = v123;
  swift_willThrow();
  v125 = (*v111)[23];

  return v125(v141, v22);
}

uint64_t sub_21DE562F8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_21DE56358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DE5636C(a1, a2);
  }

  return a1;
}

uint64_t sub_21DE5636C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21DE563E4()
{
  result = qword_27CE93F78;
  if (!qword_27CE93F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE93F78);
  }

  return result;
}

char *sub_21DE56438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F50, &qword_21DECD058);
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

uint64_t sub_21DE56544(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DE56610(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21DE56CD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21DE56610(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21DE5671C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21DEC7370();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21DE5671C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DE56768(a1, a2);
  sub_21DE56898(&unk_282F25C98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21DE56768(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21DE56984(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21DEC7370();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21DEC6F50();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DE56984(v10, 0);
        result = sub_21DEC72D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21DE56898(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21DE569F8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21DE56984(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F80, &unk_21DECD4A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DE569F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F80, &unk_21DECD4A0);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21DE56B74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21DE56BBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21DE56C30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21DE56C78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21DE56CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21DE56D34()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21DE56D70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F88, &qword_21DECD4B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4 & 1;
  v22 = a5;
  (*(v14 + 104))(&v16[-v13], *MEMORY[0x277D858A0]);
  return sub_21DEC7130();
}

uint64_t sub_21DE56EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v43 = a6;
  v44 = a7;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v37 = a2;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v36 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  v34 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = sub_21DEC70F0();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, v37, v15);
  (*(v11 + 16))(v14, v38, v10);
  sub_21DE5C6E4(v40, v45, &qword_27CE93F90, &qword_21DECD500);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = (v17 + *(v11 + 80) + v25) & ~*(v11 + 80);
  v27 = (v12 + *(v39 + 80) + v26) & ~*(v39 + 80);
  v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  (*(v16 + 32))(v29 + v25, v19, v34);
  (*(v11 + 32))(v29 + v26, v36, v35);
  sub_21DE5754C(v45, v29 + v27);
  v30 = v42;
  *(v29 + v28) = v41;
  v31 = v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = v30;
  *(v31 + 8) = v43 & 1;
  *(v31 + 9) = v44;

  sub_21DE5C3E4(0, 0, v23, &unk_21DECD528, v29);
}

uint64_t sub_21DE572AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a5;
  v13 = swift_task_alloc();
  *(v8 + 32) = v13;
  *v13 = v8;
  v13[1] = sub_21DE57390;

  return sub_21DE578C4(a5, a6, a7, a8, v16 & 1, v17);
}

uint64_t sub_21DE57390()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DE574C4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21DE574C4()
{
  v1 = v0[3];
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  v2 = v0[1];

  return v2();
}

uint64_t sub_21DE5754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE575BC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10);
  v13 = *(v0 + v11);
  v14 = *(v0 + v11 + 8);
  v15 = *(v0 + v11 + 9);
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_21DE577D0;

  return sub_21DE572AC(v16, v17, v18, v0 + v3, v0 + v6, v0 + v9, v12, v13);
}

uint64_t sub_21DE577D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21DE578C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 656) = v6;
  *(v7 + 211) = a6;
  *(v7 + 210) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  *(v7 + 624) = a1;
  v8 = sub_21DEC6E00();
  *(v7 + 664) = v8;
  v9 = *(v8 - 8);
  *(v7 + 672) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 680) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB0, &qword_21DECD550);
  *(v7 + 688) = v11;
  v12 = *(v11 - 8);
  *(v7 + 696) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 704) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8) + 64) + 15;
  *(v7 + 712) = swift_task_alloc();
  *(v7 + 720) = swift_task_alloc();
  *(v7 + 728) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB8, &qword_21DECD558) - 8) + 64) + 15;
  *(v7 + 736) = swift_task_alloc();
  v16 = sub_21DEC6C00();
  *(v7 + 744) = v16;
  v17 = *(v16 - 8);
  *(v7 + 752) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 760) = swift_task_alloc();
  v19 = sub_21DEC6D20();
  *(v7 + 768) = v19;
  v20 = *(v19 - 8);
  *(v7 + 776) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  v22 = sub_21DEC6B30();
  *(v7 + 792) = v22;
  v23 = *(v22 - 8);
  *(v7 + 800) = v23;
  v24 = *(v23 + 64) + 15;
  *(v7 + 808) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC0, &qword_21DECD560) - 8) + 64) + 15;
  *(v7 + 816) = swift_task_alloc();
  v26 = sub_21DEC6BE0();
  *(v7 + 824) = v26;
  v27 = *(v26 - 8);
  *(v7 + 832) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 840) = swift_task_alloc();
  v29 = sub_21DEC6BC0();
  *(v7 + 848) = v29;
  v30 = *(v29 - 8);
  *(v7 + 856) = v30;
  v31 = *(v30 + 64) + 15;
  *(v7 + 864) = swift_task_alloc();
  v32 = sub_21DEC6BA0();
  *(v7 + 872) = v32;
  v33 = *(v32 - 8);
  *(v7 + 880) = v33;
  v34 = *(v33 + 64) + 15;
  *(v7 + 888) = swift_task_alloc();
  v35 = sub_21DEC6910();
  *(v7 + 896) = v35;
  v36 = *(v35 - 8);
  *(v7 + 904) = v36;
  v37 = *(v36 + 64) + 15;
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE57D54, 0, 0);
}

uint64_t sub_21DE57D54()
{
  v1 = v0[80];
  v2 = v0[78];
  type metadata accessor for CancellationActor();
  v3 = swift_allocObject();
  v0[116] = v3;
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;

  v0[117] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7100();
  if (*(v1 + 16))
  {
    v4 = v0[80];
  }

  else
  {
    v5 = static AFMChunkType.allCases.getter();
  }

  v0[118] = v5;
  v6 = v0[115];
  v7 = v0[111];
  v8 = v0[108];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[82];
  type metadata accessor for JSONStructure();
  v0[119] = sub_21DE5536C();
  sub_21DEC68F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  sub_21DEC6A80();
  sub_21DEC6BB0();
  (*(v9 + 8))(v8, v10);
  v12 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
  v13 = *(MEMORY[0x277D856D0] + 4);
  v14 = swift_task_alloc();
  v0[120] = v14;
  *v14 = v0;
  v14[1] = sub_21DE57F44;
  v15 = v0[111];
  v16 = v0[109];

  return MEMORY[0x282200308](v0 + 7, v16, v12);
}

uint64_t sub_21DE57F44()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v7 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = *(v2 + 944);

    v5 = sub_21DE585C4;
  }

  else
  {
    v5 = sub_21DE58060;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21DE58060()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 928);
    sub_21DE5CC84((v0 + 56), v0 + 16);

    return MEMORY[0x2822009F8](sub_21DE587EC, v1, 0);
  }

  v2 = *(v0 + 944);
  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  v3 = sub_21DE5C898(0, v2);

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(**(*(v0 + 952) + 16) + 120);

  v9 = v7(v8);
  v11 = v10;

  sub_21DEC6DF0();
  v12 = sub_21DEC6DC0();
  v14 = v13;
  (*(v5 + 8))(v4, v6);
  if (v14 >> 60 == 15)
  {
    v15 = *(v0 + 952);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    v18 = *(v0 + 920);
    v19 = *(v0 + 904);
    v20 = *(v0 + 896);
    v21 = *(v0 + 624);

    *(v0 + 536) = 0;
    sub_21DEC7120();

    (*(v19 + 8))(v18, v20);
LABEL_15:
    v52 = *(v0 + 920);
    v53 = *(v0 + 912);
    v54 = *(v0 + 888);
    v55 = *(v0 + 864);
    v56 = *(v0 + 840);
    v57 = *(v0 + 816);
    v58 = *(v0 + 808);
    v59 = *(v0 + 784);
    v60 = *(v0 + 760);
    v61 = *(v0 + 736);
    v65 = *(v0 + 728);
    v67 = *(v0 + 720);
    v69 = *(v0 + 712);
    v71 = *(v0 + 704);
    v73 = *(v0 + 680);

    v38 = *(v0 + 8);
    goto LABEL_16;
  }

  v22 = *(v0 + 968);
  v23 = sub_21DEC66C0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_21DEC66B0();
  type metadata accessor for StructuredText();
  sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
  sub_21DEC6690();
  if (!v22)
  {
    v39 = *(v0 + 211);

    v40 = *(v0 + 528);
    v41 = *(v0 + 936);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v72 = *(v0 + 688);
    v44 = *(v0 + 624);
    if (v39 == 1)
    {
      *(v0 + 256) = v9;
      *(v0 + 264) = v11;
      *(v0 + 272) = v40;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0x8000;
    }

    else
    {

      *(v0 + 216) = v40;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
    }

    sub_21DEC7110();
    sub_21DE56358(v12, v14);

    (*(v43 + 8))(v42, v72);
LABEL_14:
    v45 = *(v0 + 952);
    v46 = *(v0 + 936);
    v47 = *(v0 + 928);
    v48 = *(v0 + 920);
    v49 = *(v0 + 904);
    v50 = *(v0 + 896);
    v51 = *(v0 + 624);
    *(v0 + 544) = 0;
    sub_21DEC7120();

    (*(v49 + 8))(v48, v50);
    goto LABEL_15;
  }

  v26 = *(v0 + 952);
  v27 = *(v0 + 928);
  (*(*(v0 + 904) + 8))(*(v0 + 920), *(v0 + 896));

  sub_21DE56358(v12, v14);

  v28 = *(v0 + 920);
  v29 = *(v0 + 912);
  v30 = *(v0 + 888);
  v31 = *(v0 + 864);
  v32 = *(v0 + 840);
  v33 = *(v0 + 816);
  v34 = *(v0 + 808);
  v35 = *(v0 + 784);
  v36 = *(v0 + 760);
  v37 = *(v0 + 736);
  v63 = *(v0 + 728);
  v64 = *(v0 + 720);
  v66 = *(v0 + 712);
  v68 = *(v0 + 704);
  v70 = *(v0 + 680);

  v38 = *(v0 + 8);
LABEL_16:

  return v38();
}

uint64_t sub_21DE585C4()
{
  *(v0 + 560) = *(v0 + 968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC8, &qword_21DECD568);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_21DE58654, 0, 0);
}

uint64_t sub_21DE58654()
{
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[109];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[105];
  v14 = v0[102];
  v15 = v0[101];
  v16 = v0[98];
  v17 = v0[95];
  v18 = v0[92];
  v21 = v0[91];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[88];
  v25 = v0[85];
  v26 = v0[121];

  v19 = v0[1];

  return v19();
}

uint64_t sub_21DE58814()
{
  if (*(v0 + 212))
  {
    v1 = *(v0 + 952);
    v2 = *(v0 + 944);
    v3 = *(v0 + 936);
    v4 = *(v0 + 928);
    v167 = *(v0 + 920);
    v5 = *(v0 + 904);
    v6 = *(v0 + 896);
    v7 = *(v0 + 888);
    v8 = *(v0 + 880);
    v9 = *(v0 + 872);
    v10 = *(v0 + 624);

    *(v0 + 616) = 0;
    sub_21DEC7120();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v167, v6);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = *(v0 + 888);
    v14 = *(v0 + 864);
    v15 = *(v0 + 840);
    v16 = *(v0 + 816);
    v17 = *(v0 + 808);
    v18 = *(v0 + 784);
    v19 = *(v0 + 760);
    v20 = *(v0 + 736);
    v157 = *(v0 + 728);
    v158 = *(v0 + 720);
    v160 = *(v0 + 712);
    v163 = *(v0 + 704);
    v168 = *(v0 + 680);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(v0 + 832);
  v24 = *(v0 + 824);
  v25 = *(v0 + 816);
  sub_21DE5CC9C(v0 + 16, v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FD8, &qword_21DECD570);
  v26 = swift_dynamicCast();
  v27 = *(v23 + 56);
  if (v26)
  {
    v28 = *(v0 + 840);
    v29 = *(v0 + 832);
    v30 = *(v0 + 824);
    v31 = *(v0 + 816);
    v32 = *(v0 + 808);
    v33 = *(v0 + 800);
    v34 = *(v0 + 784);
    v35 = *(v0 + 776);
    v36 = *(v0 + 768);
    v164 = v36;
    v169 = *(v0 + 792);
    v27(v31, 0, 1, v30);
    (*(v29 + 32))(v28, v31, v30);
    sub_21DEC6BD0();
    v37 = sub_21DEBD114();
    (*(v35 + 16))(v34, v37, v164);
    ModelInformation.log(logger:)();
    (*(v35 + 8))(v34, v164);
    (*(v33 + 8))(v32, v169);
    (*(v29 + 8))(v28, v30);
    goto LABEL_43;
  }

  v38 = *(v0 + 816);
  v39 = *(v0 + 744);
  v40 = *(v0 + 736);
  v27(v38, 1, 1, *(v0 + 824));
  sub_21DE5CD00(v38, &qword_27CE93FC0, &qword_21DECD560);
  sub_21DE5CC9C(v0 + 16, v0 + 96);
  if (!swift_dynamicCast())
  {
    v104 = *(v0 + 752);
    v105 = *(v0 + 744);
    v106 = *(v0 + 736);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v104 + 56))(v106, 1, 1, v105);
    sub_21DE5CD00(v106, &qword_27CE93FB8, &qword_21DECD558);
LABEL_44:
    v133 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
    v134 = *(MEMORY[0x277D856D0] + 4);
    v135 = swift_task_alloc();
    *(v0 + 960) = v135;
    *v135 = v0;
    v135[1] = sub_21DE57F44;
    v136 = *(v0 + 888);
    v137 = *(v0 + 872);

    return MEMORY[0x282200308](v0 + 56, v137, v133);
  }

  v41 = *(v0 + 760);
  v42 = *(v0 + 752);
  v43 = *(v0 + 744);
  v44 = *(v0 + 736);
  (*(v42 + 56))(v44, 0, 1, v43);
  (*(v42 + 32))(v41, v44, v43);
  v45 = sub_21DEC6BF0();
  v47 = HIBYTE(v46) & 0xF;
  *(v0 + 496) = v45;
  *(v0 + 504) = v46;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v45 & 0xFFFFFFFFFFFFLL;
  }

  *(v0 + 512) = 0;
  *(v0 + 520) = v47;
  v48 = sub_21DEC6F40();
  if (v49)
  {
    v50 = v49;
    v51 = 0;
    v52 = *(v0 + 968);
    while (1)
    {
      *(v0 + 213) = v51 & 1;
      v56 = (*(**(v0 + 952) + 256))(v48, v50);
      *(v0 + 976) = v56;
      *(v0 + 214) = v57;
      if (v52)
      {

        v53 = *(v0 + 936);
        v54 = *(v0 + 624);
        *(v0 + 576) = v52;
        sub_21DEC7120();
      }

      else
      {
        v58 = v57;
        v59 = v56;
        v60 = *(v0 + 944);

        if (sub_21DE5C898(1, v60))
        {
          v61 = *(v0 + 952);
          v62 = sub_21DEC4ADC(v59, v58);
          *(v0 + 984) = v62;
          if (v62)
          {
            v63 = v62;
            v64 = *(v0 + 728);
            sub_21DE5C6E4(*(v0 + 632), v64, &qword_27CE93F90, &qword_21DECD500);
            v65 = type metadata accessor for SanitizerResource(0);
            if ((*(*(v65 - 8) + 48))(v64, 1, v65) != 1)
            {
              *(v0 + 608) = v63;
              v138 = swift_task_alloc();
              *(v0 + 992) = v138;
              v139 = type metadata accessor for StructuredText();
              v140 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
              v141 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
              *v138 = v0;
              v138[1] = sub_21DE596AC;
              v142 = *(v0 + 728);
              v143 = v0 + 600;
              v144 = v0 + 608;
              goto LABEL_50;
            }

            sub_21DE5CD00(*(v0 + 728), &qword_27CE93F90, &qword_21DECD500);

            v66 = *(v0 + 984);
            if (*(v0 + 211))
            {
              v67 = *(v0 + 936);
              v68 = *(v0 + 704);
              v69 = *(v0 + 696);
              v170 = *(v0 + 688);
              v70 = *(v0 + 624);
              v71 = *(**(*(v0 + 952) + 16) + 120);

              v73 = v71(v72);
              v75 = v74;

              *(v0 + 456) = v73;
              *(v0 + 464) = v75;
              *(v0 + 472) = v63;
              *(v0 + 480) = 0;
              *(v0 + 488) = -24576;
              sub_21DEC7110();

              (*(v69 + 8))(v68, v170);
            }

            else
            {
              v76 = *(v0 + 936);
              v77 = *(v0 + 704);
              v78 = *(v0 + 696);
              v79 = *(v0 + 688);
              v80 = *(v0 + 624);
              *(v0 + 416) = v63;
              *(v0 + 424) = 0;
              *(v0 + 432) = 0;
              *(v0 + 440) = 0;
              *(v0 + 448) = 0x2000;
              sub_21DEC7110();

              (*(v78 + 8))(v77, v79);
            }

            v51 = 1;
          }
        }

        *(v0 + 215) = v51 & 1;
        v81 = sub_21DE5C898(2, *(v0 + 944));
        v82 = *(v0 + 214);
        v83 = *(v0 + 976);
        if (!v81)
        {
          goto LABEL_29;
        }

        v84 = *(v0 + 952);
        v85 = sub_21DEC4E28(v83, v82);
        *(v0 + 1008) = v85;
        if (!v85)
        {
          v83 = *(v0 + 976);
          v82 = *(v0 + 214);
LABEL_29:
          sub_21DE5CE04(v83, v82);
          goto LABEL_14;
        }

        v86 = v85;
        v87 = *(v0 + 720);
        sub_21DE5C6E4(*(v0 + 632), v87, &qword_27CE93F90, &qword_21DECD500);
        v88 = type metadata accessor for SanitizerResource(0);
        if ((*(*(v88 - 8) + 48))(v87, 1, v88) != 1)
        {
          *(v0 + 592) = v86;
          v145 = swift_task_alloc();
          *(v0 + 1016) = v145;
          v139 = type metadata accessor for StructuredText();
          v140 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
          v141 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
          *v145 = v0;
          v145[1] = sub_21DE59FE0;
          v146 = *(v0 + 720);
          v143 = v0 + 584;
          v144 = v0 + 592;
          goto LABEL_50;
        }

        sub_21DE5CD00(*(v0 + 720), &qword_27CE93F90, &qword_21DECD500);

        v171 = *(v0 + 1008);
        v89 = *(v0 + 214);
        v90 = *(v0 + 976);
        if (*(v0 + 211))
        {
          v91 = *(v0 + 704);
          v92 = *(v0 + 696);
          v161 = *(v0 + 936);
          v165 = *(v0 + 688);
          v93 = *(v0 + 624);
          v94 = *(**(*(v0 + 952) + 16) + 120);

          v96 = v94(v95);
          v98 = v97;

          *(v0 + 376) = v96;
          *(v0 + 384) = v98;
          *(v0 + 392) = v86;
          *(v0 + 400) = 0;
          *(v0 + 408) = -16384;

          sub_21DEC7110();
          sub_21DE5CE04(v90, v89);

          (*(v92 + 8))(v91, v165);
        }

        else
        {
          v99 = *(v0 + 936);
          v100 = *(v0 + 704);
          v101 = *(v0 + 696);
          v102 = *(v0 + 688);
          v103 = *(v0 + 624);
          *(v0 + 336) = v86;
          *(v0 + 344) = 0;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = 0x4000;

          sub_21DEC7110();
          sub_21DE5CE04(v90, v89);

          (*(v101 + 8))(v100, v102);
        }

        v51 = 1;
      }

LABEL_14:
      v48 = sub_21DEC6F40();
      v50 = v55;
      v52 = 0;
      if (!v55)
      {
        goto LABEL_34;
      }
    }
  }

  v51 = 0;
LABEL_34:
  v107 = *(v0 + 210);
  v108 = *(v0 + 504);

  if (v107)
  {
    goto LABEL_42;
  }

  v109 = *(v0 + 920);
  v110 = *(v0 + 912);
  v111 = *(v0 + 904);
  v112 = *(v0 + 896);
  v113 = *(v0 + 648);
  sub_21DEC68F0();
  sub_21DEC68E0();
  v115 = v114;
  v116 = *(v111 + 8);
  *(v0 + 1032) = v116;
  *(v0 + 1040) = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v116(v110, v112);
  if (v115 <= v113 || (v51 & 1) != 0 || !sub_21DE5C898(2, *(v0 + 944)) || (v117 = *(v0 + 952), v118 = sub_21DEC58A0(), (*(v0 + 1048) = v118) == 0))
  {
LABEL_42:
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
LABEL_43:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_44;
  }

  v119 = v118;
  v120 = *(v0 + 712);
  sub_21DE5C6E4(*(v0 + 632), v120, &qword_27CE93F90, &qword_21DECD500);
  v121 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v121 - 8) + 48))(v120, 1, v121) == 1)
  {
    sub_21DE5CD00(*(v0 + 712), &qword_27CE93F90, &qword_21DECD500);
    v122 = *(v0 + 211);

    v123 = *(v0 + 1048);
    if (v122)
    {
      v124 = *(v0 + 752);
      v166 = *(v0 + 744);
      v172 = *(v0 + 760);
      v125 = *(v0 + 704);
      v126 = *(v0 + 696);
      v159 = *(v0 + 936);
      v162 = *(v0 + 688);
      v127 = *(v0 + 624);
      v128 = *(**(*(v0 + 952) + 16) + 120);

      v130 = v128(v129);
      v132 = v131;

      *(v0 + 296) = v130;
      *(v0 + 304) = v132;
      *(v0 + 312) = v119;
      *(v0 + 320) = 0;
      *(v0 + 328) = -16384;
      sub_21DEC7110();

      (*(v126 + 8))(v125, v162);
      (*(v124 + 8))(v172, v166);
    }

    else
    {
      v149 = *(v0 + 936);
      v150 = *(v0 + 760);
      v151 = *(v0 + 752);
      v152 = *(v0 + 744);
      v153 = *(v0 + 704);
      v154 = *(v0 + 696);
      v155 = *(v0 + 688);
      v156 = *(v0 + 624);
      *(v0 + 176) = v119;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0x4000;
      sub_21DEC7110();

      (*(v154 + 8))(v153, v155);
      (*(v151 + 8))(v150, v152);
    }

    goto LABEL_43;
  }

  *(v0 + 568) = v119;
  v147 = swift_task_alloc();
  *(v0 + 1056) = v147;
  v139 = type metadata accessor for StructuredText();
  v140 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
  v141 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
  *v147 = v0;
  v147[1] = sub_21DE5A8B8;
  v148 = *(v0 + 712);
  v143 = v0 + 552;
  v144 = v0 + 568;
LABEL_50:

  return sub_21DE62978(v143, v144, v139, v140, v141);
}

uint64_t sub_21DE596AC()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v6 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v4 = sub_21DE5AC34;
  }

  else
  {
    sub_21DE5CDA8(*(v2 + 728));
    v4 = sub_21DE597C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DE597C8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 1000);
  v3 = &qword_27CE93F90;
LABEL_2:
  v4 = *(v0 + 984);
  if (*(v0 + 211) == 1)
  {
    v77 = *(v0 + 704);
    v79 = *(v0 + 936);
    v5 = *(v0 + 696);
    v81 = *(v0 + 688);
    v75 = *(v0 + 624);
    v6 = *(**(*(v0 + 952) + 16) + 120);
    v7 = v3;

    v9 = v6(v8);
    v11 = v10;

    *(v0 + 456) = v9;
    *(v0 + 464) = v11;
    v3 = v7;
    *(v0 + 472) = v1;
    *(v0 + 480) = 0;
    *(v0 + 488) = -24576;
    sub_21DEC7110();

    (*(v5 + 8))(v77, v81);
  }

  else
  {
    v12 = *(v0 + 936);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v16 = *(v0 + 624);
    *(v0 + 416) = v1;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0x2000;
    sub_21DEC7110();

    (*(v14 + 8))(v13, v15);
  }

  while (1)
  {
    *(v0 + 215) = 1;
    v17 = sub_21DE5C898(2, *(v0 + 944));
    v18 = *(v0 + 214);
    v19 = *(v0 + 976);
    if (!v17)
    {
      goto LABEL_11;
    }

    v20 = *(v0 + 952);
    v21 = sub_21DEC4E28(v19, v18);
    *(v0 + 1008) = v21;
    if (!v21)
    {
      v19 = *(v0 + 976);
      v18 = *(v0 + 214);
LABEL_11:
      sub_21DE5CE04(v19, v18);
      goto LABEL_14;
    }

    v22 = v21;
    v23 = *(v0 + 720);
    sub_21DE5C6E4(*(v0 + 632), v23, v3, &qword_21DECD500);
    v24 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
    {
      *(v0 + 592) = v22;
      v64 = swift_task_alloc();
      *(v0 + 1016) = v64;
      v65 = type metadata accessor for StructuredText();
      v66 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
      v67 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
      *v64 = v0;
      v64[1] = sub_21DE59FE0;
      v68 = *(v0 + 720);
      v69 = v0 + 584;
      v70 = v0 + 592;
LABEL_28:

      return sub_21DE62978(v69, v70, v65, v66, v67);
    }

    sub_21DE5CD00(*(v0 + 720), v3, &qword_21DECD500);

    v82 = *(v0 + 1008);
    v25 = *(v0 + 214);
    v26 = *(v0 + 976);
    if (*(v0 + 211))
    {
      v76 = *(v0 + 704);
      v78 = *(v0 + 936);
      v27 = *(v0 + 696);
      v80 = *(v0 + 688);
      v74 = *(v0 + 624);
      v28 = *(**(*(v0 + 952) + 16) + 120);

      v30 = v28(v29);
      v32 = v31;

      *(v0 + 376) = v30;
      *(v0 + 384) = v32;
      *(v0 + 392) = v22;
      *(v0 + 400) = 0;
      *(v0 + 408) = -16384;

      v33 = v76;
    }

    else
    {
      v34 = *(v0 + 936);
      v33 = *(v0 + 704);
      v27 = *(v0 + 696);
      v80 = *(v0 + 688);
      v35 = *(v0 + 624);
      *(v0 + 336) = v22;
      *(v0 + 344) = 0;
      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0x4000;
    }

    sub_21DEC7110();
    sub_21DE5CE04(v26, v25);

    (*(v27 + 8))(v33, v80);
    v3 = &qword_27CE93F90;
LABEL_14:
    v36 = sub_21DEC6F40();
    if (!v37)
    {
      break;
    }

    *(v0 + 213) = 1;
    v38 = (*(**(v0 + 952) + 256))(v36);
    *(v0 + 976) = v38;
    *(v0 + 214) = v39;
    if (!v2)
    {
      goto LABEL_18;
    }

    v40 = *(v0 + 936);
    v41 = *(v0 + 624);
    *(v0 + 576) = v2;
    sub_21DEC7120();
    v42 = sub_21DEC6F40();
    if (!v43)
    {
      break;
    }

    *(v0 + 213) = 1;
    v38 = (*(**(v0 + 952) + 256))(v42, v43);
    *(v0 + 976) = v38;
    *(v0 + 214) = v39;
LABEL_18:
    v44 = v39;
    v45 = v38;
    v46 = *(v0 + 944);

    v47 = sub_21DE5C898(1, v46);
    v2 = 0;
    if (v47)
    {
      v48 = *(v0 + 952);
      v49 = sub_21DEC4ADC(v45, v44);
      v2 = 0;
      *(v0 + 984) = v49;
      if (v49)
      {
        v1 = v49;
        v50 = *(v0 + 728);
        sub_21DE5C6E4(*(v0 + 632), v50, v3, &qword_21DECD500);
        v51 = type metadata accessor for SanitizerResource(0);
        if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
        {
          sub_21DE5CD00(*(v0 + 728), v3, &qword_21DECD500);

          v2 = 0;
          goto LABEL_2;
        }

        *(v0 + 608) = v1;
        v71 = swift_task_alloc();
        *(v0 + 992) = v71;
        v65 = type metadata accessor for StructuredText();
        v66 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
        v67 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
        *v71 = v0;
        v71[1] = sub_21DE596AC;
        v72 = *(v0 + 728);
        v69 = v0 + 600;
        v70 = v0 + 608;
        goto LABEL_28;
      }
    }
  }

  v52 = *(v0 + 210);
  v53 = *(v0 + 504);

  if ((v52 & 1) == 0)
  {
    v54 = *(v0 + 920);
    v55 = *(v0 + 912);
    v56 = *(v0 + 904);
    v57 = *(v0 + 896);
    sub_21DEC68F0();
    sub_21DEC68E0();
    v58 = *(v56 + 8);
    *(v0 + 1032) = v58;
    *(v0 + 1040) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v58(v55, v57);
  }

  (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v59 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
  v60 = *(MEMORY[0x277D856D0] + 4);
  v61 = swift_task_alloc();
  *(v0 + 960) = v61;
  *v61 = v0;
  v61[1] = sub_21DE57F44;
  v62 = *(v0 + 888);
  v63 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v63, v59);
}

uint64_t sub_21DE59FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v6 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v4 = sub_21DE5B71C;
  }

  else
  {
    sub_21DE5CDA8(*(v2 + 720));
    v4 = sub_21DE5A0FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21DE5A0FC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 1024);
  while (2)
  {
    v81 = *(v0 + 1008);
    v3 = *(v0 + 214);
    v4 = *(v0 + 976);
    if (*(v0 + 211) == 1)
    {
      v5 = *(v0 + 704);
      v6 = *(v0 + 696);
      v79 = *(v0 + 936);
      v80 = *(v0 + 688);
      v78 = *(v0 + 624);
      v7 = *(**(*(v0 + 952) + 16) + 120);

      v9 = v7(v8);
      v11 = v10;

      *(v0 + 376) = v9;
      *(v0 + 384) = v11;
      *(v0 + 392) = v1;
      *(v0 + 400) = 0;
      *(v0 + 408) = -16384;

      sub_21DEC7110();
      sub_21DE5CE04(v4, v3);

      (*(v6 + 8))(v5, v80);
    }

    else
    {
      v12 = *(v0 + 936);
      v13 = *(v0 + 704);
      v14 = *(v0 + 696);
      v15 = *(v0 + 688);
      v16 = *(v0 + 624);
      *(v0 + 336) = v1;
      *(v0 + 344) = 0;
      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0x4000;

      sub_21DEC7110();
      sub_21DE5CE04(v4, v3);

      (*(v14 + 8))(v13, v15);
    }

    v17 = sub_21DEC6F40();
    if (!v18)
    {
LABEL_22:
      v56 = *(v0 + 210);
      v57 = *(v0 + 504);

      if ((v56 & 1) == 0)
      {
        v58 = *(v0 + 920);
        v59 = *(v0 + 912);
        v60 = *(v0 + 904);
        v61 = *(v0 + 896);
        sub_21DEC68F0();
        sub_21DEC68E0();
        v62 = *(v60 + 8);
        *(v0 + 1032) = v62;
        *(v0 + 1040) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v62(v59, v61);
      }

      (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v63 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
      v64 = *(MEMORY[0x277D856D0] + 4);
      v65 = swift_task_alloc();
      *(v0 + 960) = v65;
      *v65 = v0;
      v65[1] = sub_21DE57F44;
      v66 = *(v0 + 888);
      v67 = *(v0 + 872);

      return MEMORY[0x282200308](v0 + 56, v67, v63);
    }

    v19 = v18;
    while (1)
    {
      *(v0 + 213) = 1;
      v23 = (*(**(v0 + 952) + 256))(v17, v19);
      *(v0 + 976) = v23;
      *(v0 + 214) = v24;
      if (!v2)
      {
        break;
      }

      v20 = *(v0 + 936);
      v21 = *(v0 + 624);
      *(v0 + 576) = v2;
      sub_21DEC7120();
LABEL_8:
      v17 = sub_21DEC6F40();
      v19 = v22;
      v2 = 0;
      if (!v22)
      {
        goto LABEL_22;
      }
    }

    v25 = v24;
    v26 = v23;
    v27 = *(v0 + 944);

    if (sub_21DE5C898(1, v27))
    {
      v28 = *(v0 + 952);
      v29 = sub_21DEC4ADC(v26, v25);
      *(v0 + 984) = v29;
      if (v29)
      {
        v30 = v29;
        v31 = *(v0 + 728);
        sub_21DE5C6E4(*(v0 + 632), v31, &qword_27CE93F90, &qword_21DECD500);
        v32 = type metadata accessor for SanitizerResource(0);
        if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
        {
          *(v0 + 608) = v30;
          v68 = swift_task_alloc();
          *(v0 + 992) = v68;
          v69 = type metadata accessor for StructuredText();
          v70 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
          v71 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
          *v68 = v0;
          v68[1] = sub_21DE596AC;
          v72 = *(v0 + 728);
          v73 = v0 + 600;
          v74 = v0 + 608;
          goto LABEL_28;
        }

        sub_21DE5CD00(*(v0 + 728), &qword_27CE93F90, &qword_21DECD500);

        v33 = *(v0 + 984);
        if (*(v0 + 211))
        {
          v34 = *(v0 + 936);
          v35 = *(v0 + 704);
          v36 = *(v0 + 696);
          v82 = *(v0 + 688);
          v37 = *(v0 + 624);
          v38 = *(**(*(v0 + 952) + 16) + 120);

          v40 = v38(v39);
          v42 = v41;

          *(v0 + 456) = v40;
          *(v0 + 464) = v42;
          *(v0 + 472) = v30;
          *(v0 + 480) = 0;
          *(v0 + 488) = -24576;
          sub_21DEC7110();

          (*(v36 + 8))(v35, v82);
        }

        else
        {
          v43 = *(v0 + 936);
          v44 = *(v0 + 704);
          v45 = *(v0 + 696);
          v46 = *(v0 + 688);
          v47 = *(v0 + 624);
          *(v0 + 416) = v30;
          *(v0 + 424) = 0;
          *(v0 + 432) = 0;
          *(v0 + 440) = 0;
          *(v0 + 448) = 0x2000;
          sub_21DEC7110();

          (*(v45 + 8))(v44, v46);
        }
      }
    }

    *(v0 + 215) = 1;
    v48 = sub_21DE5C898(2, *(v0 + 944));
    v49 = *(v0 + 214);
    v50 = *(v0 + 976);
    if (!v48)
    {
LABEL_19:
      sub_21DE5CE04(v50, v49);
      goto LABEL_8;
    }

    v51 = *(v0 + 952);
    v52 = sub_21DEC4E28(v50, v49);
    *(v0 + 1008) = v52;
    if (!v52)
    {
      v50 = *(v0 + 976);
      v49 = *(v0 + 214);
      goto LABEL_19;
    }

    v53 = v52;
    v54 = *(v0 + 720);
    sub_21DE5C6E4(*(v0 + 632), v54, &qword_27CE93F90, &qword_21DECD500);
    v55 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      sub_21DE5CD00(*(v0 + 720), &qword_27CE93F90, &qword_21DECD500);
      v1 = v53;

      v2 = 0;
      continue;
    }

    break;
  }

  *(v0 + 592) = v53;
  v75 = swift_task_alloc();
  *(v0 + 1016) = v75;
  v69 = type metadata accessor for StructuredText();
  v70 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
  v71 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
  *v75 = v0;
  v75[1] = sub_21DE59FE0;
  v76 = *(v0 + 720);
  v73 = v0 + 584;
  v74 = v0 + 592;
LABEL_28:

  return sub_21DE62978(v73, v74, v69, v70, v71);
}

uint64_t sub_21DE5A8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v7 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = *(v2 + 944);

    v5 = sub_21DE5C204;
  }

  else
  {
    sub_21DE5CDA8(*(v2 + 712));
    v5 = sub_21DE5A9DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21DE5A9DC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 1048);
  if (*(v0 + 211) == 1)
  {
    v3 = *(v0 + 752);
    v28 = *(v0 + 744);
    v29 = *(v0 + 760);
    v4 = *(v0 + 704);
    v5 = *(v0 + 696);
    v26 = *(v0 + 936);
    v27 = *(v0 + 688);
    v6 = *(v0 + 624);
    v7 = *(**(*(v0 + 952) + 16) + 120);

    v9 = v7(v8);
    v11 = v10;

    *(v0 + 296) = v9;
    *(v0 + 304) = v11;
    *(v0 + 312) = v1;
    *(v0 + 320) = 0;
    *(v0 + 328) = -16384;
    sub_21DEC7110();

    (*(v5 + 8))(v4, v27);
    (*(v3 + 8))(v29, v28);
  }

  else
  {
    *(v0 + 176) = v1;
    v12 = *(v0 + 936);
    v13 = *(v0 + 760);
    v14 = *(v0 + 752);
    v15 = *(v0 + 744);
    v16 = *(v0 + 704);
    v17 = *(v0 + 696);
    v18 = *(v0 + 688);
    v19 = *(v0 + 624);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    *(v0 + 184) = 0;
    *(v0 + 208) = 0x4000;
    sub_21DEC7110();

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v20 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
  v21 = *(MEMORY[0x277D856D0] + 4);
  v22 = swift_task_alloc();
  *(v0 + 960) = v22;
  *v22 = v0;
  v22[1] = sub_21DE57F44;
  v23 = *(v0 + 888);
  v24 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v24, v20);
}

uint64_t sub_21DE5AC34()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 728);
  sub_21DE5CE04(*(v0 + 976), *(v0 + 214));

  sub_21DE5CDA8(v2);
  v3 = *(v0 + 213);
  v4 = *(v0 + 936);
  v5 = *(v0 + 624);
  *(v0 + 576) = *(v0 + 1000);
  sub_21DEC7120();
  v6 = sub_21DEC6F40();
  if (v7)
  {
    v8 = v7;
    v9 = &qword_27CE93F90;
    while (1)
    {
      *(v0 + 213) = v3 & 1;
      v10 = (*(**(v0 + 952) + 256))(v6, v8);
      *(v0 + 976) = v10;
      *(v0 + 214) = v11;
      v13 = v11;
      v14 = v10;
      v15 = *(v0 + 944);

      if (sub_21DE5C898(1, v15))
      {
        v16 = *(v0 + 952);
        v17 = sub_21DEC4ADC(v14, v13);
        *(v0 + 984) = v17;
        if (v17)
        {
          v18 = v17;
          v19 = *(v0 + 728);
          sub_21DE5C6E4(*(v0 + 632), v19, v9, &qword_21DECD500);
          v20 = type metadata accessor for SanitizerResource(0);
          if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
          {
            *(v0 + 608) = v18;
            v105 = swift_task_alloc();
            *(v0 + 992) = v105;
            v91 = type metadata accessor for StructuredText();
            v92 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
            v93 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
            *v105 = v0;
            v105[1] = sub_21DE596AC;
            v106 = *(v0 + 728);
            v95 = v0 + 600;
            v96 = v0 + 608;
            goto LABEL_38;
          }

          sub_21DE5CD00(*(v0 + 728), v9, &qword_21DECD500);

          v21 = *(v0 + 984);
          if (*(v0 + 211))
          {
            v22 = *(v0 + 704);
            v23 = *(v0 + 696);
            v113 = *(v0 + 936);
            v116 = *(v0 + 688);
            v24 = v9;
            v25 = *(v0 + 624);
            v26 = *(**(*(v0 + 952) + 16) + 120);

            v28 = v26(v27);
            v30 = v29;

            *(v0 + 456) = v28;
            *(v0 + 464) = v30;
            *(v0 + 472) = v18;
            *(v0 + 480) = 0;
            *(v0 + 488) = -24576;
            v9 = v24;
            sub_21DEC7110();

            (*(v23 + 8))(v22, v116);
          }

          else
          {
            v31 = *(v0 + 936);
            v32 = *(v0 + 704);
            v33 = *(v0 + 696);
            v34 = *(v0 + 688);
            v35 = *(v0 + 624);
            *(v0 + 416) = v18;
            *(v0 + 424) = 0;
            *(v0 + 432) = 0;
            *(v0 + 440) = 0;
            *(v0 + 448) = 0x2000;
            sub_21DEC7110();

            (*(v33 + 8))(v32, v34);
          }

          v3 = 1;
        }
      }

      *(v0 + 215) = v3 & 1;
      v36 = sub_21DE5C898(2, *(v0 + 944));
      v37 = *(v0 + 214);
      v38 = *(v0 + 976);
      if (!v36)
      {
        goto LABEL_19;
      }

      v39 = *(v0 + 952);
      v40 = sub_21DEC4E28(v38, v37);
      *(v0 + 1008) = v40;
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v42 = *(v0 + 720);
      sub_21DE5C6E4(*(v0 + 632), v42, v9, &qword_21DECD500);
      v43 = type metadata accessor for SanitizerResource(0);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) != 1)
      {
        *(v0 + 592) = v41;
        v107 = swift_task_alloc();
        *(v0 + 1016) = v107;
        v91 = type metadata accessor for StructuredText();
        v92 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
        v93 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
        *v107 = v0;
        v107[1] = sub_21DE59FE0;
        v108 = *(v0 + 720);
        v95 = v0 + 584;
        v96 = v0 + 592;
LABEL_38:

        return sub_21DE62978(v95, v96, v91, v92, v93);
      }

      sub_21DE5CD00(*(v0 + 720), v9, &qword_21DECD500);

      v117 = *(v0 + 1008);
      v44 = *(v0 + 214);
      v45 = *(v0 + 976);
      if (*(v0 + 211))
      {
        v46 = *(v0 + 704);
        v47 = *(v0 + 696);
        v111 = *(v0 + 936);
        v114 = *(v0 + 688);
        v48 = *(v0 + 624);
        v49 = *(**(*(v0 + 952) + 16) + 120);

        v51 = v49(v50);
        v53 = v52;

        *(v0 + 376) = v51;
        *(v0 + 384) = v53;
        *(v0 + 392) = v41;
        *(v0 + 400) = 0;
        *(v0 + 408) = -16384;

        v9 = &qword_27CE93F90;
        sub_21DEC7110();
        sub_21DE5CE04(v45, v44);

        (*(v47 + 8))(v46, v114);
      }

      else
      {
        v54 = *(v0 + 936);
        v55 = *(v0 + 704);
        v56 = *(v0 + 696);
        v57 = *(v0 + 688);
        v58 = *(v0 + 624);
        *(v0 + 336) = v41;
        *(v0 + 344) = 0;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0x4000;

        sub_21DEC7110();
        sub_21DE5CE04(v45, v44);

        (*(v56 + 8))(v55, v57);
      }

      v3 = 1;
LABEL_4:
      v6 = sub_21DEC6F40();
      v8 = v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v38 = *(v0 + 976);
    v37 = *(v0 + 214);
LABEL_19:
    sub_21DE5CE04(v38, v37);
    goto LABEL_4;
  }

LABEL_22:
  v59 = *(v0 + 210);
  v60 = *(v0 + 504);

  if (v59)
  {
    goto LABEL_30;
  }

  v61 = *(v0 + 920);
  v62 = *(v0 + 912);
  v63 = *(v0 + 904);
  v64 = *(v0 + 896);
  v65 = *(v0 + 648);
  sub_21DEC68F0();
  sub_21DEC68E0();
  v67 = v66;
  v68 = *(v63 + 8);
  *(v0 + 1032) = v68;
  *(v0 + 1040) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v62, v64);
  if (v67 <= v65 || (v3 & 1) != 0 || !sub_21DE5C898(2, *(v0 + 944)) || (v69 = *(v0 + 952), v70 = sub_21DEC58A0(), (*(v0 + 1048) = v70) == 0))
  {
LABEL_30:
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    v71 = v70;
    v72 = *(v0 + 712);
    sub_21DE5C6E4(*(v0 + 632), v72, &qword_27CE93F90, &qword_21DECD500);
    v73 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) != 1)
    {
      *(v0 + 568) = v71;
      v90 = swift_task_alloc();
      *(v0 + 1056) = v90;
      v91 = type metadata accessor for StructuredText();
      v92 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
      v93 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
      *v90 = v0;
      v90[1] = sub_21DE5A8B8;
      v94 = *(v0 + 712);
      v95 = v0 + 552;
      v96 = v0 + 568;
      goto LABEL_38;
    }

    sub_21DE5CD00(*(v0 + 712), &qword_27CE93F90, &qword_21DECD500);
    v74 = *(v0 + 211);

    v75 = *(v0 + 1048);
    if (v74)
    {
      v76 = *(v0 + 752);
      v115 = *(v0 + 744);
      v118 = *(v0 + 760);
      v77 = *(v0 + 704);
      v78 = *(v0 + 696);
      v110 = *(v0 + 936);
      v112 = *(v0 + 688);
      v79 = *(v0 + 624);
      v80 = *(**(*(v0 + 952) + 16) + 120);

      v82 = v80(v81);
      v84 = v83;

      *(v0 + 296) = v82;
      *(v0 + 304) = v84;
      *(v0 + 312) = v71;
      *(v0 + 320) = 0;
      *(v0 + 328) = -16384;
      sub_21DEC7110();

      (*(v78 + 8))(v77, v112);
      (*(v76 + 8))(v118, v115);
    }

    else
    {
      v97 = *(v0 + 936);
      v98 = *(v0 + 760);
      v99 = *(v0 + 752);
      v100 = *(v0 + 744);
      v101 = *(v0 + 704);
      v102 = *(v0 + 696);
      v103 = *(v0 + 688);
      v104 = *(v0 + 624);
      *(v0 + 176) = v71;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0x4000;
      sub_21DEC7110();

      (*(v102 + 8))(v101, v103);
      (*(v99 + 8))(v98, v100);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v85 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
  v86 = *(MEMORY[0x277D856D0] + 4);
  v87 = swift_task_alloc();
  *(v0 + 960) = v87;
  *v87 = v0;
  v87[1] = sub_21DE57F44;
  v88 = *(v0 + 888);
  v89 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v89, v85);
}

uint64_t sub_21DE5B71C()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 720);
  sub_21DE5CE04(*(v0 + 976), *(v0 + 214));

  sub_21DE5CDA8(v2);
  v3 = *(v0 + 215);
  v4 = *(v0 + 936);
  v5 = *(v0 + 624);
  *(v0 + 576) = *(v0 + 1024);
  sub_21DEC7120();
  v6 = sub_21DEC6F40();
  if (v7)
  {
    v8 = v7;
    v9 = &qword_27CE93F90;
    while (1)
    {
      *(v0 + 213) = v3 & 1;
      v10 = (*(**(v0 + 952) + 256))(v6, v8);
      *(v0 + 976) = v10;
      *(v0 + 214) = v11;
      v13 = v11;
      v14 = v10;
      v15 = *(v0 + 944);

      if (sub_21DE5C898(1, v15))
      {
        v16 = *(v0 + 952);
        v17 = sub_21DEC4ADC(v14, v13);
        *(v0 + 984) = v17;
        if (v17)
        {
          v18 = v17;
          v19 = *(v0 + 728);
          sub_21DE5C6E4(*(v0 + 632), v19, v9, &qword_21DECD500);
          v20 = type metadata accessor for SanitizerResource(0);
          if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
          {
            *(v0 + 608) = v18;
            v105 = swift_task_alloc();
            *(v0 + 992) = v105;
            v91 = type metadata accessor for StructuredText();
            v92 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
            v93 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
            *v105 = v0;
            v105[1] = sub_21DE596AC;
            v106 = *(v0 + 728);
            v95 = v0 + 600;
            v96 = v0 + 608;
            goto LABEL_38;
          }

          sub_21DE5CD00(*(v0 + 728), v9, &qword_21DECD500);

          v21 = *(v0 + 984);
          if (*(v0 + 211))
          {
            v22 = *(v0 + 704);
            v23 = *(v0 + 696);
            v113 = *(v0 + 936);
            v116 = *(v0 + 688);
            v24 = v9;
            v25 = *(v0 + 624);
            v26 = *(**(*(v0 + 952) + 16) + 120);

            v28 = v26(v27);
            v30 = v29;

            *(v0 + 456) = v28;
            *(v0 + 464) = v30;
            *(v0 + 472) = v18;
            *(v0 + 480) = 0;
            *(v0 + 488) = -24576;
            v9 = v24;
            sub_21DEC7110();

            (*(v23 + 8))(v22, v116);
          }

          else
          {
            v31 = *(v0 + 936);
            v32 = *(v0 + 704);
            v33 = *(v0 + 696);
            v34 = *(v0 + 688);
            v35 = *(v0 + 624);
            *(v0 + 416) = v18;
            *(v0 + 424) = 0;
            *(v0 + 432) = 0;
            *(v0 + 440) = 0;
            *(v0 + 448) = 0x2000;
            sub_21DEC7110();

            (*(v33 + 8))(v32, v34);
          }

          v3 = 1;
        }
      }

      *(v0 + 215) = v3 & 1;
      v36 = sub_21DE5C898(2, *(v0 + 944));
      v37 = *(v0 + 214);
      v38 = *(v0 + 976);
      if (!v36)
      {
        goto LABEL_19;
      }

      v39 = *(v0 + 952);
      v40 = sub_21DEC4E28(v38, v37);
      *(v0 + 1008) = v40;
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v42 = *(v0 + 720);
      sub_21DE5C6E4(*(v0 + 632), v42, v9, &qword_21DECD500);
      v43 = type metadata accessor for SanitizerResource(0);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) != 1)
      {
        *(v0 + 592) = v41;
        v107 = swift_task_alloc();
        *(v0 + 1016) = v107;
        v91 = type metadata accessor for StructuredText();
        v92 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
        v93 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
        *v107 = v0;
        v107[1] = sub_21DE59FE0;
        v108 = *(v0 + 720);
        v95 = v0 + 584;
        v96 = v0 + 592;
LABEL_38:

        return sub_21DE62978(v95, v96, v91, v92, v93);
      }

      sub_21DE5CD00(*(v0 + 720), v9, &qword_21DECD500);

      v117 = *(v0 + 1008);
      v44 = *(v0 + 214);
      v45 = *(v0 + 976);
      if (*(v0 + 211))
      {
        v46 = *(v0 + 704);
        v47 = *(v0 + 696);
        v111 = *(v0 + 936);
        v114 = *(v0 + 688);
        v48 = *(v0 + 624);
        v49 = *(**(*(v0 + 952) + 16) + 120);

        v51 = v49(v50);
        v53 = v52;

        *(v0 + 376) = v51;
        *(v0 + 384) = v53;
        *(v0 + 392) = v41;
        *(v0 + 400) = 0;
        *(v0 + 408) = -16384;

        v9 = &qword_27CE93F90;
        sub_21DEC7110();
        sub_21DE5CE04(v45, v44);

        (*(v47 + 8))(v46, v114);
      }

      else
      {
        v54 = *(v0 + 936);
        v55 = *(v0 + 704);
        v56 = *(v0 + 696);
        v57 = *(v0 + 688);
        v58 = *(v0 + 624);
        *(v0 + 336) = v41;
        *(v0 + 344) = 0;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0x4000;

        sub_21DEC7110();
        sub_21DE5CE04(v45, v44);

        (*(v56 + 8))(v55, v57);
      }

      v3 = 1;
LABEL_4:
      v6 = sub_21DEC6F40();
      v8 = v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v38 = *(v0 + 976);
    v37 = *(v0 + 214);
LABEL_19:
    sub_21DE5CE04(v38, v37);
    goto LABEL_4;
  }

LABEL_22:
  v59 = *(v0 + 210);
  v60 = *(v0 + 504);

  if (v59)
  {
    goto LABEL_30;
  }

  v61 = *(v0 + 920);
  v62 = *(v0 + 912);
  v63 = *(v0 + 904);
  v64 = *(v0 + 896);
  v65 = *(v0 + 648);
  sub_21DEC68F0();
  sub_21DEC68E0();
  v67 = v66;
  v68 = *(v63 + 8);
  *(v0 + 1032) = v68;
  *(v0 + 1040) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v62, v64);
  if (v67 <= v65 || (v3 & 1) != 0 || !sub_21DE5C898(2, *(v0 + 944)) || (v69 = *(v0 + 952), v70 = sub_21DEC58A0(), (*(v0 + 1048) = v70) == 0))
  {
LABEL_30:
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    v71 = v70;
    v72 = *(v0 + 712);
    sub_21DE5C6E4(*(v0 + 632), v72, &qword_27CE93F90, &qword_21DECD500);
    v73 = type metadata accessor for SanitizerResource(0);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) != 1)
    {
      *(v0 + 568) = v71;
      v90 = swift_task_alloc();
      *(v0 + 1056) = v90;
      v91 = type metadata accessor for StructuredText();
      v92 = sub_21DE5CD60(&qword_27CE93FD0, type metadata accessor for StructuredText);
      v93 = sub_21DE5CD60(&qword_27CE93FE0, type metadata accessor for StructuredText);
      *v90 = v0;
      v90[1] = sub_21DE5A8B8;
      v94 = *(v0 + 712);
      v95 = v0 + 552;
      v96 = v0 + 568;
      goto LABEL_38;
    }

    sub_21DE5CD00(*(v0 + 712), &qword_27CE93F90, &qword_21DECD500);
    v74 = *(v0 + 211);

    v75 = *(v0 + 1048);
    if (v74)
    {
      v76 = *(v0 + 752);
      v115 = *(v0 + 744);
      v118 = *(v0 + 760);
      v77 = *(v0 + 704);
      v78 = *(v0 + 696);
      v110 = *(v0 + 936);
      v112 = *(v0 + 688);
      v79 = *(v0 + 624);
      v80 = *(**(*(v0 + 952) + 16) + 120);

      v82 = v80(v81);
      v84 = v83;

      *(v0 + 296) = v82;
      *(v0 + 304) = v84;
      *(v0 + 312) = v71;
      *(v0 + 320) = 0;
      *(v0 + 328) = -16384;
      sub_21DEC7110();

      (*(v78 + 8))(v77, v112);
      (*(v76 + 8))(v118, v115);
    }

    else
    {
      v97 = *(v0 + 936);
      v98 = *(v0 + 760);
      v99 = *(v0 + 752);
      v100 = *(v0 + 744);
      v101 = *(v0 + 704);
      v102 = *(v0 + 696);
      v103 = *(v0 + 688);
      v104 = *(v0 + 624);
      *(v0 + 176) = v71;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0x4000;
      sub_21DEC7110();

      (*(v102 + 8))(v101, v103);
      (*(v99 + 8))(v98, v100);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v85 = sub_21DE5CD60(&qword_280F7AB58, MEMORY[0x277D71CD8]);
  v86 = *(MEMORY[0x277D856D0] + 4);
  v87 = swift_task_alloc();
  *(v0 + 960) = v87;
  *v87 = v0;
  v87[1] = sub_21DE57F44;
  v88 = *(v0 + 888);
  v89 = *(v0 + 872);

  return MEMORY[0x282200308](v0 + 56, v89, v85);
}

uint64_t sub_21DE5C204()
{
  v29 = v0[130];
  v31 = v0[131];
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[93];
  v25 = v0[89];
  v27 = v0[129];

  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v6 + 8))(v5, v7);
  v27(v3, v4);

  sub_21DE5CDA8(v25);
  v11 = v0[115];
  v12 = v0[114];
  v13 = v0[111];
  v14 = v0[108];
  v15 = v0[105];
  v16 = v0[102];
  v17 = v0[101];
  v18 = v0[98];
  v19 = v0[95];
  v20 = v0[92];
  v23 = v0[91];
  v24 = v0[90];
  v26 = v0[89];
  v28 = v0[88];
  v30 = v0[85];
  v32 = v0[133];

  v21 = v0[1];

  return v21();
}

uint64_t sub_21DE5C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21DE5C6E4(a3, v27 - v11, &qword_27CE93FA8, &qword_21DECD518);
  v13 = sub_21DEC70F0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21DE5CD00(v12, &qword_27CE93FA8, &qword_21DECD518);
  }

  else
  {
    sub_21DEC70E0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21DEC70C0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21DEC6E30() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21DE5CD00(a3, &qword_27CE93FA8, &qword_21DECD518);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DE5CD00(a3, &qword_27CE93FA8, &qword_21DECD518);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21DE5C6E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21DE5C74C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_21DEC70F0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_21DE5C3E4(0, 0, v5, &unk_21DECD580, v7);
}

BOOL sub_21DE5C898(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_21DE5CE18();
  }

  while ((sub_21DEC6D70() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_21DE5C91C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DE5CA14;

  return v7(a1);
}

uint64_t sub_21DE5CA14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21DE5CB0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DE5CF00;

  return sub_21DE5C91C(a1, v5);
}

uint64_t sub_21DE5CBC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DE577D0;

  return sub_21DE5C91C(a1, v5);
}

uint64_t sub_21DE5CC84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21DE5CC9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21DE5CD00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21DE5CD60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DE5CDA8(uint64_t a1)
{
  v2 = type metadata accessor for SanitizerResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DE5CE04(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

unint64_t sub_21DE5CE18()
{
  result = qword_280F7AAA0[0];
  if (!qword_280F7AAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7AAA0);
  }

  return result;
}

uint64_t sub_21DE5CE6C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21DE5CF00;

  return sub_21DE5C858(v3, v4, v5, v2);
}

uint64_t AFMData.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21DEC7770();
  AFMData.hash(into:)(v3);
  return sub_21DEC77B0();
}

uint64_t AFMData.hash(into:)(uint64_t a1)
{
  v26 = a1;
  v2 = sub_21DEC6E00();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v24[1] = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DEC66F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v1 + 8);
  v25 = *v1;
  v9 = *(v1 + 16);
  v10 = sub_21DEC6730();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_21DEC6720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FE8, &unk_21DECD590);
  v13 = *(v6 + 72);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DECCA20;
  sub_21DEC66D0();
  v27 = v15;
  sub_21DE67A5C(&unk_280F7AB60, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF0, &qword_21DED0190);
  sub_21DE6884C(&qword_280F7A6E0, &qword_27CE93FF0, &qword_21DED0190);
  sub_21DEC7280();
  sub_21DEC6700();
  v16 = *(v10 + 48);
  v17 = *(v10 + 52);
  swift_allocObject();
  sub_21DEC6720();
  v27 = v25;
  v28 = v8;
  v29 = v9;
  sub_21DE677CC();
  v18 = sub_21DEC6710();
  v20 = v19;

  sub_21DEC6DF0();
  sub_21DEC6DD0();
  v22 = v21;
  sub_21DE5636C(v18, v20);
  sub_21DEC7790();
  if (v22)
  {
    sub_21DEC6E90();
  }
}

uint64_t AFMData.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16) >> 14;
  if (v4)
  {
    if (v4 != 1)
    {
      v11 = type metadata accessor for JSONSchema(0);
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }

    v5 = *sub_21DEA9718();
    v13 = 1;
    v6 = *(*v5 + 112);

    v7 = &v13;
  }

  else
  {
    v8 = *sub_21DEA9718();
    v12 = 0;
    v6 = *(*v8 + 112);

    v7 = &v12;
  }

  v6(v7);

  if (!v2)
  {
    v10 = type metadata accessor for JSONSchema(0);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  return result;
}

uint64_t sub_21DE5D3F0()
{
  v1 = 0xD000000000000024;
  if (*v0 != 1)
  {
    v1 = 0x676E69727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7275746375727473;
  }
}

uint64_t sub_21DE5D458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE67AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE5D48C(uint64_t a1)
{
  v2 = sub_21DE67864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D4C8(uint64_t a1)
{
  v2 = sub_21DE67864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5D514(uint64_t a1)
{
  v2 = sub_21DE678B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D550(uint64_t a1)
{
  v2 = sub_21DE678B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5D58C(uint64_t a1)
{
  v2 = sub_21DE679B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D5C8(uint64_t a1)
{
  v2 = sub_21DE679B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5D604(uint64_t a1)
{
  v2 = sub_21DE6790C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5D640(uint64_t a1)
{
  v2 = sub_21DE6790C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF8, &qword_21DECD5A0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94000, &qword_21DECD5A8);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94008, &qword_21DECD5B0);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94010, &qword_21DECD5B8);
  v37 = *(v15 - 8);
  v38 = v15;
  v16 = *(v37 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  v19 = *v1;
  v35 = v1[1];
  v36 = v19;
  v20 = *(v1 + 8);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE67864();
  sub_21DEC7810();
  if (v20 >> 14)
  {
    if (v20 >> 14 == 1)
    {
      LOBYTE(v39) = 1;
      sub_21DE6790C();
      v22 = v38;
      sub_21DEC7530();
      v39 = v36;
      v40 = v35;
      v41 = v20 & 0x1FF;
      sub_21DE67960();
      v23 = v32;
      sub_21DEC75D0();
      (*(v31 + 8))(v10, v23);
    }

    else
    {
      LOBYTE(v39) = 2;
      sub_21DE678B8();
      v22 = v38;
      sub_21DEC7530();
      v27 = v34;
      sub_21DEC7590();
      (*(v33 + 8))(v6, v27);
    }

    return (*(v37 + 8))(v18, v22);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_21DE679B4();
    v24 = v38;
    sub_21DEC7530();
    v39 = v36;
    type metadata accessor for StructuredText();
    sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
    v25 = v30;
    sub_21DEC75D0();
    (*(v29 + 8))(v14, v25);
    return (*(v37 + 8))(v18, v24);
  }
}

uint64_t AFMData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94018, &qword_21DECD5C0);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94020, &qword_21DECD5C8);
  v50 = *(v48 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94028, &qword_21DECD5D0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94030, &qword_21DECD5D8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21DE67864();
  v19 = v55;
  sub_21DEC77E0();
  if (!v19)
  {
    v46 = v8;
    v47 = v13;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v55 = v16;
    v23 = sub_21DEC7520();
    v24 = *(v23 + 16);
    if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 3) : (v26 = 1), v26))
    {
      v27 = sub_21DEC7340();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0) + 48);
      *v29 = &type metadata for AFMData;
      v31 = v55;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v47 + 8))(v31, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v23;
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v56) = 1;
          sub_21DE6790C();
          v32 = v55;
          sub_21DEC7480();
          v33 = v47;
          sub_21DE67A08();
          v34 = v48;
          sub_21DEC7510();
          (*(v50 + 8))(v7, v34);
          (*(v33 + 8))(v32, v12);
          swift_unknownObjectRelease();
          v41 = v56;
          v39 = v57;
          if (v59)
          {
            v43 = 256;
          }

          else
          {
            v43 = 0;
          }

          v40 = v43 | v58 | 0x4000;
        }

        else
        {
          LOBYTE(v56) = 2;
          sub_21DE678B8();
          sub_21DEC7480();
          v36 = v47;
          v42 = v21;
          v41 = sub_21DEC74F0();
          v39 = v44;
          (*(v51 + 8))(v20, v42);
          (*(v36 + 8))(v55, v12);
          swift_unknownObjectRelease();
          v40 = 0x8000;
        }
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_21DE679B4();
        v35 = v55;
        sub_21DEC7480();
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
        v38 = v46;
        sub_21DEC7510();
        (*(v49 + 8))(v11, v38);
        (*(v47 + 8))(v35, v12);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = v56;
      }

      *v22 = v41;
      *(v22 + 8) = v39;
      *(v22 + 16) = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_21DE5E220()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21DEC7770();
  AFMData.hash(into:)(v3);
  return sub_21DEC77B0();
}

uint64_t sub_21DE5E278()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21DEC7770();
  AFMData.hash(into:)(v3);
  return sub_21DEC77B0();
}

uint64_t AFMChunk.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v4);
  return sub_21DEC77B0();
}

uint64_t AFMChunk.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_21DEC6E00();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v25[1] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DEC66F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *(v1 + 32);
  v10 = sub_21DEC6730();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_21DEC6720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FE8, &unk_21DECD590);
  v13 = *(v7 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DECCA20;
  sub_21DEC66D0();
  *&v29 = v15;
  sub_21DE67A5C(&unk_280F7AB60, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF0, &qword_21DED0190);
  sub_21DE6884C(&qword_280F7A6E0, &qword_27CE93FF0, &qword_21DED0190);
  v16 = *v2;
  v26 = v2[1];
  v27 = v16;
  sub_21DEC7280();
  sub_21DEC6700();
  v17 = *(v10 + 48);
  v18 = *(v10 + 52);
  swift_allocObject();
  sub_21DEC6720();
  v30 = v26;
  v29 = v27;
  v31 = v9;
  sub_21DE67CF0();
  v19 = sub_21DEC6710();
  v21 = v20;

  sub_21DEC6DF0();
  sub_21DEC6DD0();
  v23 = v22;
  sub_21DE5636C(v19, v21);
  sub_21DEC7790();
  if (v23)
  {
    sub_21DEC6E90();
  }
}

uint64_t sub_21DE5E650()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x747845746E657665;
    if (v1 != 6)
    {
      v5 = 0xD000000000000027;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7275746375727473;
    v3 = 0x746E657665;
    if (v1 != 2)
    {
      v3 = 0xD000000000000024;
    }

    if (*v0)
    {
      v2 = 0x746E6F4374786574;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_21DE5E770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE6BBC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE5E7A4(uint64_t a1)
{
  v2 = sub_21DE67D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E7E0(uint64_t a1)
{
  v2 = sub_21DE67D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E81C(uint64_t a1)
{
  v2 = sub_21DE67F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E858(uint64_t a1)
{
  v2 = sub_21DE67F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E894()
{
  if (*v0)
  {
    result = 7894131;
  }

  else
  {
    result = 0x6E656B6F54776172;
  }

  *v0;
  return result;
}

uint64_t sub_21DE5E8D0(uint64_t a1)
{
  v2 = sub_21DE67DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E90C(uint64_t a1)
{
  v2 = sub_21DE67DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E948(uint64_t a1)
{
  v2 = sub_21DE67FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E984(uint64_t a1)
{
  v2 = sub_21DE67FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5E9C0(uint64_t a1)
{
  v2 = sub_21DE67E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5E9FC(uint64_t a1)
{
  v2 = sub_21DE67E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5EA38(uint64_t a1)
{
  v2 = sub_21DE67F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5EA74(uint64_t a1)
{
  v2 = sub_21DE67F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5EAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F54776172 && a2 == 0xE900000000000073;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7894131 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DE5EB94(uint64_t a1)
{
  v2 = sub_21DE67E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5EBD0(uint64_t a1)
{
  v2 = sub_21DE67E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5EC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DE5EC8C(uint64_t a1)
{
  v2 = sub_21DE67EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5ECC8(uint64_t a1)
{
  v2 = sub_21DE67EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE5ED04()
{
  if (*v0)
  {
    result = 1667459446;
  }

  else
  {
    result = 0x6E656B6F54776172;
  }

  *v0;
  return result;
}

uint64_t sub_21DE5ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F54776172 && a2 == 0xE900000000000073;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1667459446 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DE5EE20(uint64_t a1)
{
  v2 = sub_21DE67D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE5EE5C(uint64_t a1)
{
  v2 = sub_21DE67D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMChunk.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94048, &qword_21DECD5E8);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94050, &qword_21DECD5F0);
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94058, &qword_21DECD5F8);
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94060, &qword_21DECD600);
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = &v57 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94068, &qword_21DECD608);
  v66 = *(v67 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v57 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94070, &qword_21DECD610);
  v63 = *(v65 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v57 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94078, &qword_21DECD618);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94080, &qword_21DECD620);
  v58 = *(v21 - 8);
  v22 = *(v58 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94088, &qword_21DECD628);
  v84 = *(v25 - 8);
  v26 = *(v84 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  v29 = *v1;
  v81 = v1[1];
  v82 = v29;
  v30 = v1[3];
  v80 = v1[2];
  v57 = v30;
  v31 = *(v1 + 16);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE67D44();
  sub_21DEC7810();
  v33 = v31 >> 13;
  if (v31 >> 13 <= 3)
  {
    if (v31 >> 13 <= 1)
    {
      if (v33)
      {
        LOBYTE(v85) = 1;
        sub_21DE67F90();
        v45 = v59;
        v34 = v28;
        sub_21DEC7530();
        v85 = v82;
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
        v46 = v61;
        sub_21DEC75D0();
        (*(v60 + 8))(v45, v46);
LABEL_22:
        v48 = *(v84 + 8);
        v49 = v34;
LABEL_23:
        v50 = v25;
        return v48(v49, v50);
      }

      LOBYTE(v85) = 0;
      sub_21DE67FE4();
      v34 = v28;
      sub_21DEC7530();
      v85 = v82;
      type metadata accessor for StructuredText();
      sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
      sub_21DEC75D0();
      v35 = *(v58 + 8);
      v36 = v24;
LABEL_21:
      v35(v36, v21);
      goto LABEL_22;
    }

    if (v33 != 2)
    {
      LOBYTE(v85) = 3;
      sub_21DE67EE8();
      v51 = v64;
      sub_21DEC7530();
      v85 = v82;
      v86 = v81;
      v87 = v80 & 0x1FF;
      sub_21DE67960();
      v52 = v67;
      sub_21DEC75D0();
      (*(v66 + 8))(v51, v52);
      v48 = *(v84 + 8);
      v49 = v28;
      goto LABEL_23;
    }

    LOBYTE(v85) = 2;
    sub_21DE67F3C();
    v37 = v62;
    v34 = v28;
    sub_21DEC7530();
    v85 = v82;
    type metadata accessor for StructuredText();
    sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
    v21 = v65;
    sub_21DEC75D0();
    v39 = v63;
LABEL_20:
    v35 = *(v39 + 8);
    v36 = v37;
    goto LABEL_21;
  }

  if (v31 >> 13 <= 5)
  {
    v34 = v28;
    if (v33 == 4)
    {
      LOBYTE(v85) = 4;
      sub_21DE67E94();
      v37 = v68;
      sub_21DEC7530();
      LOBYTE(v85) = 0;
      v21 = v70;
      v38 = v83;
      sub_21DEC7590();
      if (!v38)
      {
        v85 = v80;
        v88 = 1;
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
        sub_21DEC75D0();
      }

      v39 = v69;
    }

    else
    {
      LOBYTE(v85) = 5;
      sub_21DE67E40();
      v37 = v71;
      sub_21DEC7530();
      LOBYTE(v85) = 0;
      v21 = v73;
      v47 = v83;
      sub_21DEC7590();
      if (!v47)
      {
        v85 = v80;
        v88 = 1;
        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
        sub_21DEC75D0();
      }

      v39 = v72;
    }

    goto LABEL_20;
  }

  v40 = v25;
  v41 = v28;
  if (v33 == 6)
  {
    LOBYTE(v85) = 6;
    sub_21DE67DEC();
    v42 = v74;
    sub_21DEC7530();
    LOBYTE(v85) = 0;
    v43 = v77;
    v44 = v83;
    sub_21DEC7590();
    if (!v44)
    {
      v85 = v80;
      v88 = 1;
      type metadata accessor for StructuredText();
      sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
      sub_21DEC75D0();
    }

    (*(v76 + 8))(v42, v43);
  }

  else
  {
    LOBYTE(v85) = 7;
    sub_21DE67D98();
    v53 = v75;
    sub_21DEC7530();
    LOBYTE(v85) = 0;
    v54 = v79;
    v55 = v83;
    sub_21DEC7590();
    if (!v55)
    {
      v85 = v80;
      v86 = v57;
      v87 = v31 & 0x1FF;
      v88 = 1;
      sub_21DE67960();
      sub_21DEC75D0();
    }

    (*(v78 + 8))(v53, v54);
  }

  v48 = *(v84 + 8);
  v49 = v41;
  v50 = v40;
  return v48(v49, v50);
}

uint64_t AFMChunk.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94090, &qword_21DECD630);
  v122 = *(v117 - 8);
  v3 = *(v122 + 64);
  MEMORY[0x28223BE20](v117);
  v124 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94098, &qword_21DECD638);
  v6 = *(v5 - 8);
  v120 = v5;
  v121 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v129 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940A0, &qword_21DECD640);
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v128 = &v102 - v12;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940A8, &qword_21DECD648);
  v116 = *(v111 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v111);
  v127 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940B0, &qword_21DECD650);
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = *(v114 + 64);
  MEMORY[0x28223BE20](v15);
  v123 = &v102 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940B8, &qword_21DECD658);
  v112 = *(v113 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v126 = &v102 - v19;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940C0, &qword_21DECD660);
  v109 = *(v110 - 8);
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v22 = &v102 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940C8, &qword_21DECD668);
  v108 = *(v23 - 8);
  v24 = *(v108 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v102 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940D0, &qword_21DECD670);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v102 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_21DE67D44();
  v34 = v130;
  sub_21DEC77E0();
  if (!v34)
  {
    v35 = v26;
    v103 = v23;
    v104 = v22;
    v36 = v126;
    v37 = v127;
    v39 = v128;
    v38 = v129;
    v105 = 0;
    v107 = v28;
    v130 = v27;
    v106 = v31;
    v40 = sub_21DEC7520();
    if (*(v40 + 16) != 1 || (v41 = *(v40 + 32), v41 == 8))
    {
      v46 = sub_21DEC7340();
      swift_allocError();
      v48 = v47;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0) + 48);
      *v48 = &type metadata for AFMChunk;
      v50 = v130;
      v51 = v106;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v107 + 8))(v51, v50);
      goto LABEL_10;
    }

    if (*(v40 + 32) <= 3u)
    {
      if (*(v40 + 32) > 1u)
      {
        if (v41 == 2)
        {
          LOBYTE(v132) = 2;
          sub_21DE67F3C();
          v59 = v36;
          v60 = v130;
          v61 = v106;
          v62 = v105;
          sub_21DEC7480();
          if (v62)
          {
            (*(v107 + 8))(v61, v60);
            goto LABEL_10;
          }

          type metadata accessor for StructuredText();
          sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
          v84 = v113;
          sub_21DEC7510();
          (*(v112 + 8))(v59, v84);
          (*(v107 + 8))(v61, v130);
          swift_unknownObjectRelease();
          v90 = 0;
          v94 = 0;
          v93 = 0;
          v92 = v132;
          v95 = 0x4000;
        }

        else
        {
          LOBYTE(v132) = 3;
          sub_21DE67EE8();
          v75 = v123;
          v76 = v130;
          v77 = v106;
          v78 = v105;
          sub_21DEC7480();
          if (v78)
          {
            (*(v107 + 8))(v77, v76);
            goto LABEL_10;
          }

          sub_21DE67A08();
          v79 = v115;
          sub_21DEC7510();
          (*(v114 + 8))(v75, v79);
          (*(v107 + 8))(v77, v76);
          swift_unknownObjectRelease();
          v93 = 0;
          v92 = v132;
          v90 = v133;
          v100 = 256;
          if (!v135)
          {
            v100 = 0;
          }

          v94 = v100 | v134;
          v95 = 24576;
        }
      }

      else if (*(v40 + 32))
      {
        LOBYTE(v132) = 1;
        sub_21DE67F90();
        v67 = v104;
        v68 = v130;
        v69 = v106;
        v70 = v105;
        sub_21DEC7480();
        if (v70)
        {
          (*(v107 + 8))(v69, v68);
          goto LABEL_10;
        }

        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
        v71 = v110;
        sub_21DEC7510();
        (*(v109 + 8))(v67, v71);
        (*(v107 + 8))(v69, v68);
        swift_unknownObjectRelease();
        v90 = 0;
        v94 = 0;
        v93 = 0;
        v92 = v132;
        v95 = 0x2000;
      }

      else
      {
        LOBYTE(v132) = 0;
        sub_21DE67FE4();
        v42 = v35;
        v43 = v130;
        v44 = v106;
        v45 = v105;
        sub_21DEC7480();
        if (v45)
        {
          (*(v107 + 8))(v44, v43);
LABEL_10:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0(v131);
        }

        type metadata accessor for StructuredText();
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
        v83 = v103;
        sub_21DEC7510();
        (*(v108 + 8))(v42, v83);
        (*(v107 + 8))(v44, v43);
        swift_unknownObjectRelease();
        v90 = 0;
        v94 = 0;
        v93 = 0;
        v95 = 0;
        v92 = v132;
      }

      goto LABEL_44;
    }

    v53 = v130;
    v54 = v106;
    if (*(v40 + 32) > 5u)
    {
      v63 = v125;
      if (v41 != 6)
      {
        LOBYTE(v132) = 7;
        sub_21DE67D98();
        v80 = v53;
        v81 = v124;
        v82 = v105;
        sub_21DEC7480();
        if (v82)
        {
          (*(v107 + 8))(v54, v80);
          goto LABEL_10;
        }

        LOBYTE(v132) = 0;
        v85 = v117;
        v86 = sub_21DEC74F0();
        v87 = v107;
        v90 = v88;
        v129 = v86;
        v136 = 1;
        sub_21DE67A08();
        sub_21DEC7510();
        (*(v122 + 8))(v81, v85);
        (*(v87 + 8))(v54, v80);
        swift_unknownObjectRelease();
        v94 = v132;
        v93 = v133;
        if (v135)
        {
          v101 = 256;
        }

        else
        {
          v101 = 0;
        }

        v95 = v101 | v134 | 0xE000;
        v92 = v129;
LABEL_45:
        *v63 = v92;
        *(v63 + 8) = v90;
        *(v63 + 16) = v94;
        *(v63 + 24) = v93;
        *(v63 + 32) = v95;
        return __swift_destroy_boxed_opaque_existential_0(v131);
      }

      LOBYTE(v132) = 6;
      sub_21DE67DEC();
      v64 = v105;
      sub_21DEC7480();
      if (!v64)
      {
        LOBYTE(v132) = 0;
        v65 = v120;
        v66 = sub_21DEC74F0();
        v90 = v96;
        v97 = v53;
        v92 = v66;
        type metadata accessor for StructuredText();
        v136 = 1;
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
        sub_21DEC7510();
        (*(v121 + 8))(v38, v65);
        (*(v107 + 8))(v54, v97);
        swift_unknownObjectRelease();
        v93 = 0;
        v94 = v132;
        v95 = -16384;
        goto LABEL_44;
      }
    }

    else if (v41 == 4)
    {
      LOBYTE(v132) = 4;
      sub_21DE67E94();
      v55 = v37;
      v56 = v105;
      sub_21DEC7480();
      if (!v56)
      {
        LOBYTE(v132) = 0;
        v57 = v111;
        v58 = sub_21DEC74F0();
        v90 = v89;
        v91 = v53;
        v92 = v58;
        type metadata accessor for StructuredText();
        v136 = 1;
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
        sub_21DEC7510();
        (*(v116 + 8))(v55, v57);
        (*(v107 + 8))(v54, v91);
        swift_unknownObjectRelease();
        v93 = 0;
        v94 = v132;
        v95 = 0x8000;
LABEL_44:
        v63 = v125;
        goto LABEL_45;
      }
    }

    else
    {
      LOBYTE(v132) = 5;
      sub_21DE67E40();
      v72 = v105;
      sub_21DEC7480();
      if (!v72)
      {
        LOBYTE(v132) = 0;
        v73 = v118;
        v74 = sub_21DEC74F0();
        v90 = v98;
        v99 = v53;
        v92 = v74;
        type metadata accessor for StructuredText();
        v136 = 1;
        sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
        sub_21DEC7510();
        (*(v119 + 8))(v39, v73);
        (*(v107 + 8))(v54, v99);
        swift_unknownObjectRelease();
        v93 = 0;
        v94 = v132;
        v95 = -24576;
        goto LABEL_44;
      }
    }

    (*(v107 + 8))(v54, v53);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v131);
}

uint64_t sub_21DE60D18()
{
  v1 = *(v0 + 16);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v4);
  return sub_21DEC77B0();
}

uint64_t sub_21DE60D70()
{
  v1 = *(v0 + 16);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v4);
  return sub_21DEC77B0();
}

unint64_t sub_21DE60DD8()
{
  v1 = 0x7275746375727473;
  v2 = 0x746E657665;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0x746E6F4374786574;
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

uint64_t sub_21DE60E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE6BE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE60EA0(uint64_t a1)
{
  v2 = sub_21DE68038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE60EDC(uint64_t a1)
{
  v2 = sub_21DE68038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE60F24(uint64_t a1)
{
  v2 = sub_21DE680E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE60F60(uint64_t a1)
{
  v2 = sub_21DE680E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE60F9C(uint64_t a1)
{
  v2 = sub_21DE68188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE60FD8(uint64_t a1)
{
  v2 = sub_21DE68188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE61014(uint64_t a1)
{
  v2 = sub_21DE68134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE61050(uint64_t a1)
{
  v2 = sub_21DE68134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE6108C(uint64_t a1)
{
  v2 = sub_21DE6808C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE610C8(uint64_t a1)
{
  v2 = sub_21DE6808C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMChunkType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940D8, &qword_21DECD678);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940E0, &qword_21DECD680);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940E8, &qword_21DECD688);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940F0, &qword_21DECD690);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE940F8, &qword_21DECD698);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68038();
  sub_21DEC7810();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_21DE680E0();
      v24 = v33;
      sub_21DEC7530();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_21DE6808C();
      v24 = v36;
      sub_21DEC7530();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_21DE68134();
    v24 = v30;
    sub_21DEC7530();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_21DE68188();
  sub_21DEC7530();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t AFMChunkType.hashValue.getter()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t AFMChunkType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94100, &qword_21DECD6A0);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94108, &qword_21DECD6A8);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94110, &qword_21DECD6B0);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94118, &qword_21DECD6B8);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94120, &qword_21DECD6C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_21DE68038();
  v23 = v55;
  sub_21DEC77E0();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_21DEC7520();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_21DEC7340();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0) + 48);
      *v33 = &type metadata for AFMChunkType;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_21DE68134();
          v39 = v44;
          sub_21DEC7480();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_21DE68188();
          v35 = v44;
          sub_21DEC7480();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_0(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_21DE680E0();
        v38 = v44;
        sub_21DEC7480();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_21DE6808C();
        v40 = v44;
        sub_21DEC7480();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}

double ImageTensorDescriptor.imageSize.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ImageTensorDescriptor.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_21DE61CC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t OutputDescriptor.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21DE61D00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SanitizerResource.scrubMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SanitizerResource(0) + 24);
  v4 = sub_21DEC6C30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SanitizerResource.init(overrides:guardrails:scrubMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21DE682A8(a1, a4, &qword_27CE94128, &qword_21DECD6C8);
  v7 = type metadata accessor for SanitizerResource(0);
  sub_21DE682A8(a2, a4 + *(v7 + 20), &qword_27CE94130, &qword_21DECD6D0);
  v8 = *(v7 + 24);
  v9 = sub_21DEC6C30();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

unint64_t sub_21DE61EBC()
{
  if (*v0)
  {
    result = 0xD00000000000001FLL;
  }

  else
  {
    result = 0xD000000000000027;
  }

  *v0;
  return result;
}

uint64_t sub_21DE61EF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94130, &qword_21DECD6D0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_21DEC6C10();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94128, &qword_21DECD6C8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = sub_21DEC6C50();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v12 = sub_21DEC6C80();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE6212C, 0, 0);
}

uint64_t sub_21DE6212C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_21DE5C6E4(v0[4], v3, &qword_27CE94128, &qword_21DECD6C8);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[13];
    v6 = &qword_27CE94128;
    v7 = &qword_21DECD6C8;
  }

  else
  {
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];
    v11 = v0[4];
    (*(v0[15] + 32))(v0[18], v0[13], v0[14]);
    v12 = type metadata accessor for SanitizerResource(0);
    sub_21DE5C6E4(v11 + *(v12 + 20), v10, &qword_27CE94130, &qword_21DECD6D0);
    if ((*(v9 + 48))(v10, 1, v8) != 1)
    {
      v37 = v0[21];
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[14];
      v41 = v0[15];
      v43 = v0[10];
      v42 = v0[11];
      v44 = v0[7];
      v45 = v0[8];
      (*(v45 + 32))(v42, v0[6], v44);
      (*(v41 + 16))(v39, v38, v40);
      (*(v45 + 16))(v43, v42, v44);
      sub_21DEC6C60();
      (*(v45 + 8))(v42, v44);
      (*(v41 + 8))(v38, v40);
      goto LABEL_14;
    }

    v13 = v0[6];
    (*(v0[15] + 8))(v0[18], v0[14]);
    v6 = &qword_27CE94130;
    v7 = &qword_21DECD6D0;
    v5 = v13;
  }

  sub_21DE5CD00(v5, v6, v7);
  v14 = v0[14];
  v15 = v0[12];
  sub_21DE5C6E4(v0[4], v15, &qword_27CE94128, &qword_21DECD6C8);
  if (v4(v15, 1, v14) == 1)
  {
    v16 = v0[7];
    v17 = v0[8];
    v19 = v0[4];
    v18 = v0[5];
    sub_21DE5CD00(v0[12], &qword_27CE94128, &qword_21DECD6C8);
    v20 = type metadata accessor for SanitizerResource(0);
    sub_21DE5C6E4(v19 + *(v20 + 20), v18, &qword_27CE94130, &qword_21DECD6D0);
    if ((*(v17 + 48))(v18, 1, v16) == 1)
    {
      v21 = v0[3];
      sub_21DE5CD00(v0[5], &qword_27CE94130, &qword_21DECD6D0);
      v58 = v0[2];
      v59 = v0[3];
      v22 = v0[21];
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];
      v27 = v0[12];
      v26 = v0[13];
      v28 = v0[10];
      v29 = v0[11];
      v55 = v0[9];
      v56 = v0[6];
      v57 = v0[5];

      v30 = v0[1];

      return v30(v58, v59);
    }

    v46 = v0[21];
    v34 = v0[9];
    v47 = v0[10];
    v35 = v0[7];
    v36 = v0[8];
    (*(v36 + 32))(v34, v0[5], v35);
    (*(v36 + 16))(v47, v34, v35);
    sub_21DEC6C20();
  }

  else
  {
    v32 = v0[21];
    v34 = v0[16];
    v33 = v0[17];
    v35 = v0[14];
    v36 = v0[15];
    (*(v36 + 32))(v34, v0[12], v35);
    (*(v36 + 16))(v33, v34, v35);
    sub_21DEC6C70();
  }

  (*(v36 + 8))(v34, v35);
LABEL_14:
  v48 = v0[4];
  v49 = *(type metadata accessor for SanitizerResource(0) + 24);
  v50 = *(MEMORY[0x277D0E4B8] + 4);
  v51 = swift_task_alloc();
  v0[22] = v51;
  *v51 = v0;
  v51[1] = sub_21DE62628;
  v52 = v0[21];
  v54 = v0[2];
  v53 = v0[3];

  return MEMORY[0x2821669B8](v54, v53, v48 + v49);
}

uint64_t sub_21DE62628(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {
    v9 = sub_21DE62870;
  }

  else
  {
    *(v6 + 192) = a2;
    *(v6 + 200) = a1;
    v9 = sub_21DE6275C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_21DE6275C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v14 = v0[24];
  v15 = v0[25];
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[6];
  v13 = v0[5];

  v11 = v0[1];

  return v11(v15, v14);
}

uint64_t sub_21DE62870()
{
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v12 = v0[6];
  v13 = v0[5];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v9 = v0[1];
  v10 = v0[23];

  return v9();
}

uint64_t sub_21DE62978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_21DEC6E00();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE62A40, 0, 0);
}

uint64_t sub_21DE62A40()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_21DEC6730();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_21DEC6720();
  v7 = sub_21DEC6710();
  v9 = v8;

  v13 = v0[10];
  sub_21DEC6DF0();
  v14 = sub_21DEC6DD0();
  v16 = v15;
  v0[11] = v15;
  sub_21DE5636C(v7, v9);
  if (v16)
  {
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_21DE62BF4;
    v18 = v0[7];

    return sub_21DE61EF8(v14, v16);
  }

  else
  {
    sub_21DE681FC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_21DE62BF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_21DE62EA4;
  }

  else
  {
    v10 = v6[11];

    v6[14] = a2;
    v6[15] = a1;
    v9 = sub_21DE62D30;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_21DE62D30()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  sub_21DEC6DF0();
  v6 = sub_21DEC6DC0();
  v8 = v7;

  (*(v4 + 8))(v3, v5);
  if (v8 >> 60 == 15)
  {
    sub_21DE681FC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  else
  {
    v10 = v0[13];
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[2];
    v14 = sub_21DEC66C0();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_21DEC66B0();
    sub_21DEC6690();

    sub_21DE56358(v6, v8);
  }

  v17 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_21DE62EA4()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21DE62F28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v2++;
      v5 = v6;
      LOBYTE(v19) = v6;
      v20 = STXContentType.rawValue.getter();
      v21 = v7;
      MEMORY[0x28223BE20](v20);
      v18[2] = &v20;
      v8 = sub_21DE53140(sub_21DE53E58, v18, v3);

      if ((v8 & 1) == 0)
      {
        LOBYTE(v20) = v5;
        v9 = STXContentType.rawValue.getter();
        v11 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_21DE52454(0, *(v3 + 2) + 1, 1, v3);
        }

        v13 = *(v3 + 2);
        v12 = *(v3 + 3);
        if (v13 >= v12 >> 1)
        {
          v3 = sub_21DE52454((v12 > 1), v13 + 1, 1, v3);
        }

        *(v3 + 2) = v13 + 1;
        v4 = &v3[16 * v13];
        *(v4 + 4) = v9;
        *(v4 + 5) = v11;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(v3 + 2))
  {
    v20 = 60;
    v21 = 0xE100000000000000;
    v19 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40);
    v14 = sub_21DEC6D60();
    v16 = v15;

    MEMORY[0x223D4B2A0](v14, v16);

    MEMORY[0x223D4B2A0](62, 0xE100000000000000);
    return v20;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21DE63168(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21DE52560(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_21DE52560((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40);
    v13 = sub_21DEC6D60();
    v15 = v14;

    MEMORY[0x223D4B2A0](v13, v15);

    return 2618;
  }

  else
  {

    return 0;
  }
}

uint64_t OCRPromptFormatting.formatPrompt(input:sanitizerResource:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE633D0, 0, 0);
}

uint64_t sub_21DE633D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_21DE63168(v0[2]);
  v5 = v4;
  v0[5] = v4;
  sub_21DE5C6E4(v2, v1, &qword_27CE93F90, &qword_21DECD500);
  v6 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_21DE5CD00(v0[4], &qword_27CE93F90, &qword_21DECD500);
    v7 = v0[4];

    v8 = v0[1];

    return v8(v3, v5);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_21DE63554;
    v11 = v0[4];

    return sub_21DE61EF8(v3, v5);
  }
}

uint64_t sub_21DE63554(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = v6[5];

    v10 = sub_21DE63710;
  }

  else
  {
    v11 = v6[4];
    v6[8] = a2;
    v6[9] = a1;
    sub_21DE5CDA8(v11);
    v10 = sub_21DE63698;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_21DE63698()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];

  v5 = v0[1];

  return v5(v3, v2);
}

uint64_t sub_21DE63710()
{
  sub_21DE5CDA8(v0[4]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_21DE63788(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DE63824;

  return OCRPromptFormatting.formatPrompt(input:sanitizerResource:)(v4, a2);
}

uint64_t sub_21DE63824(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t TextPromptTemplate.separator.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_21DE6396C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TGProcessor.Variant.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_21DEC7610(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t TGProcessor.Variant.rawValue.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = 0x636972656E6567;
  }

  return v1;
}

uint64_t sub_21DE63A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 0x636972656E6567 && v3 == 0xE700000000000000;
  if (v5 || (v6 = *a1, v7 = a1[1], result = sub_21DEC7610(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_21DE63AC0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = v1[1];
    *a1 = *v1;
    a1[1] = v2;
  }

  else
  {
    *a1 = 0x636972656E6567;
    a1[1] = 0xE700000000000000;
  }
}

uint64_t TGProcessor.sessionConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DEC6B90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TGProcessor.samplingParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TGProcessor(0) + 20);
  v4 = sub_21DEC6B70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TGProcessor.promptTemplateFallback.getter()
{
  v1 = (v0 + *(type metadata accessor for TGProcessor(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TGProcessor.systemPrompt.getter()
{
  v1 = (v0 + *(type metadata accessor for TGProcessor(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TGProcessor.textPromptTemplate.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TGProcessor(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TGProcessor.imageFormat.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TGProcessor(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

double TGProcessor.maxImageSize.getter()
{
  v1 = v0 + *(type metadata accessor for TGProcessor(0) + 44);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

__n128 TGProcessor.cropMargin.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TGProcessor(0) + 48));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 sub_21DE63DA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t *a12, uint64_t *a13)
{
  v35 = *a8;
  v20 = a8[1].n128_u64[0];
  v21 = *a12;
  v22 = *(a12 + 8);
  v23 = a13[1];
  v37 = *a13;
  v36 = *(a13 + 16);
  v24 = sub_21DEC6B90();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for TGProcessor(0);
  v26 = v25[5];
  v27 = sub_21DEC6B70();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  sub_21DE682A8(a3, a9 + v25[6], &qword_27CE94140, &qword_21DECD700);
  v28 = (a9 + v25[7]);
  *v28 = a4;
  v28[1] = a5;
  v29 = (a9 + v25[8]);
  *v29 = a6;
  v29[1] = a7;
  v30 = (a9 + v25[9]);
  result = v35;
  *v30 = v35;
  v30[1].n128_u64[0] = v20;
  v32 = a9 + v25[10];
  *v32 = v21;
  *(v32 + 8) = v22;
  v33 = (a9 + v25[11]);
  *v33 = a10;
  v33[1] = a11;
  v34 = a9 + v25[12];
  *v34 = v37;
  *(v34 + 8) = v23;
  *(v34 + 16) = v36;
  return result;
}

uint64_t static ImageFormat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21DE63FE4()
{
  v1 = 6778480;
  if (*v0 != 1)
  {
    v1 = 0x7275536567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778986;
  }
}

uint64_t sub_21DE64034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE6BFE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE64068(uint64_t a1)
{
  v2 = sub_21DE68310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE640A4(uint64_t a1)
{
  v2 = sub_21DE68310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE640E0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21DE6411C(uint64_t a1)
{
  v2 = sub_21DE68364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE64158(uint64_t a1)
{
  v2 = sub_21DE68364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE641E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000021DED9890 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21DEC7610();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21DE64274(uint64_t a1)
{
  v2 = sub_21DE6840C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE642B0(uint64_t a1)
{
  v2 = sub_21DE6840C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE642EC(uint64_t a1)
{
  v2 = sub_21DE683B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE64328(uint64_t a1)
{
  v2 = sub_21DE683B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageFormat.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94148, &qword_21DECD708);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94150, &qword_21DECD710);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94158, &qword_21DECD718);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94160, &qword_21DECD720);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *v2;
  v20 = *(v2 + 8);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68310();
  sub_21DEC7810();
  if (v20 == 1)
  {
    if (v19)
    {
      v38 = 2;
      sub_21DE68364();
      v22 = v30;
      sub_21DEC7530();
      v24 = v31;
      v23 = v32;
    }

    else
    {
      v37 = 1;
      sub_21DE683B8();
      v22 = v27;
      sub_21DEC7530();
      v24 = v28;
      v23 = v29;
    }

    (*(v24 + 8))(v22, v23);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v36 = 0;
    sub_21DE6840C();
    sub_21DEC7530();
    v35 = v19;
    sub_21DE68460();
    v25 = v34;
    sub_21DEC75D0();
    (*(v33 + 8))(v13, v25);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t ImageFormat.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    return MEMORY[0x223D4BB10](v2);
  }

  else
  {
    MEMORY[0x223D4BB10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x223D4BB30](v3);
  }
}

uint64_t ImageFormat.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21DEC7770();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x223D4BB10](v3);
  }

  else
  {
    MEMORY[0x223D4BB10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x223D4BB30](v4);
  }

  return sub_21DEC77B0();
}

uint64_t ImageFormat.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94170, &qword_21DECD728);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v43 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94178, &qword_21DECD730);
  v50 = *(v48 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94180, &qword_21DECD738);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94188, &qword_21DECD740);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21DE68310();
  v20 = v52;
  sub_21DEC77E0();
  if (!v20)
  {
    v43 = v9;
    v44 = 0;
    v22 = v50;
    v21 = v51;
    v52 = v14;
    v23 = v17;
    v24 = sub_21DEC7520();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
    {
      v28 = sub_21DEC7340();
      swift_allocError();
      v29 = v13;
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0) + 48);
      *v31 = &type metadata for ImageFormat;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v52 + 8))(v23, v29);
LABEL_17:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v53);
    }

    if (*(v24 + 32))
    {
      if (v26 == 1)
      {
        v56 = 1;
        sub_21DE683B8();
        v33 = v44;
        sub_21DEC7480();
        v34 = v52;
        if (v33)
        {
          (*(v52 + 8))(v17, v13);
          goto LABEL_17;
        }

        (*(v22 + 8))(v8, v48);
        (*(v34 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v40 = 0;
        goto LABEL_23;
      }

      v57 = 2;
      sub_21DE68364();
      v38 = v44;
      sub_21DEC7480();
      v37 = v52;
      if (!v38)
      {
        (*(v45 + 8))(v21, v46);
        (*(v37 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v40 = 1;
LABEL_23:
        v42 = 1;
        v36 = v49;
LABEL_24:
        *v36 = v40;
        *(v36 + 8) = v42;
        return __swift_destroy_boxed_opaque_existential_0(v53);
      }
    }

    else
    {
      v55 = 0;
      sub_21DE6840C();
      v35 = v44;
      sub_21DEC7480();
      v36 = v49;
      if (!v35)
      {
        sub_21DE684B4();
        v41 = v43;
        sub_21DEC7510();
        (*(v47 + 8))(v12, v41);
        (*(v52 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v42 = 0;
        v40 = v54;
        goto LABEL_24;
      }

      v37 = v52;
    }

    (*(v37 + 8))(v17, v13);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_0(v53);
}

uint64_t sub_21DE64E3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21DEC7770();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x223D4BB10](v3);
  }

  else
  {
    MEMORY[0x223D4BB10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x223D4BB30](v4);
  }

  return sub_21DEC77B0();
}

uint64_t sub_21DE64EB8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21DE64F28()
{
  if (*v0)
  {
    return 31076;
  }

  else
  {
    return 30820;
  }
}

uint64_t sub_21DE64F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 30820 && a2 == 0xE200000000000000;
  if (v5 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 31076 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DE6501C(uint64_t a1)
{
  v2 = sub_21DE6855C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE65058(uint64_t a1)
{
  v2 = sub_21DE6855C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s17SceneIntelligence15ParkingLocationC10CodingKeysO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t sub_21DE650DC()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t sub_21DE65120()
{
  v1 = 0x6574756C6F736261;
  if (*v0 == 1)
  {
    v1 = 0x65766974616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_21DE65184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE6C0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE651AC(uint64_t a1)
{
  v2 = sub_21DE68508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE651E8(uint64_t a1)
{
  v2 = sub_21DE68508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE65240(uint64_t a1)
{
  v2 = sub_21DE68604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6527C(uint64_t a1)
{
  v2 = sub_21DE68604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE652B8()
{
  sub_21DEC7770();
  MEMORY[0x223D4BB10](0);
  return sub_21DEC77B0();
}

uint64_t sub_21DE652FC()
{
  sub_21DEC7770();
  MEMORY[0x223D4BB10](0);
  return sub_21DEC77B0();
}

uint64_t sub_21DE65340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DE653D0(uint64_t a1)
{
  v2 = sub_21DE685B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6540C(uint64_t a1)
{
  v2 = sub_21DE685B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageMargin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94198, &qword_21DECD748);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941A0, &qword_21DECD750);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941A8, &qword_21DECD758);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941B0, &qword_21DECD760);
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v34 = *v1;
  v18 = v1[1];
  v19 = *(v1 + 16);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68508();
  sub_21DEC7810();
  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v39) = 1;
      sub_21DE685B0();
      v21 = v36;
      sub_21DEC7530();
      v39 = v34;
      sub_21DE68460();
      v22 = v30;
      sub_21DEC75D0();
      v23 = *(v29 + 8);
      v24 = v9;
LABEL_8:
      v23(v24, v22);
      return (*(v35 + 8))(v17, v21);
    }

    LOBYTE(v39) = 2;
    sub_21DE6855C();
    v25 = v31;
    v21 = v36;
    sub_21DEC7530();
    v39 = v34;
    v38 = 0;
    sub_21DE68460();
    v22 = v33;
    v26 = v37;
    sub_21DEC75D0();
    if (!v26)
    {
      v39 = v18;
      v38 = 1;
      sub_21DEC75D0();
      v23 = *(v32 + 8);
      v24 = v25;
      goto LABEL_8;
    }

    (*(v32 + 8))(v25, v22);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_21DE68604();
    v21 = v36;
    sub_21DEC7530();
    v39 = v34;
    sub_21DE68460();
    sub_21DEC75D0();
    (*(v28 + 8))(v13, v10);
  }

  return (*(v35 + 8))(v17, v21);
}

uint64_t ImageMargin.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x223D4BB10](1);
    }

    else
    {
      v2 = v0[1];
      MEMORY[0x223D4BB10](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x223D4BB30](v3);
      v1 = v2;
    }
  }

  else
  {
    MEMORY[0x223D4BB10](0);
  }

  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x223D4BB30](v4);
}

uint64_t ImageMargin.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_21DEC7770();
  ImageMargin.hash(into:)();
  return sub_21DEC77B0();
}

uint64_t ImageMargin.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941B8, &qword_21DECD768);
  v48 = *(v46 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941C0, &qword_21DECD770);
  v47 = *(v44 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941C8, &qword_21DECD778);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941D0, &unk_21DECD780);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21DE68508();
  v19 = v51;
  sub_21DEC77E0();
  if (!v19)
  {
    v43 = v13;
    v51 = v16;
    v20 = sub_21DEC7520();
    v21 = v20;
    v22 = *(v20 + 16);
    if (!v22 || ((v23 = *(v20 + 32), v22 == 1) ? (v24 = v23 == 3) : (v24 = 1), v24))
    {
      v25 = sub_21DEC7340();
      swift_allocError();
      v26 = v12;
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0) + 48);
      *v28 = &type metadata for ImageMargin;
      v30 = v51;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v43 + 8))(v30, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v20 + 32))
      {
        if (v23 == 1)
        {
          v42 = v20;
          LOBYTE(v55) = 1;
          sub_21DE685B0();
          v32 = v51;
          sub_21DEC7480();
          sub_21DE684B4();
          v33 = v44;
          sub_21DEC7510();
          (*(v47 + 8))(v7, v33);
          (*(v43 + 8))(v32, v12);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = v55;
          v39 = v49;
        }

        else
        {
          LOBYTE(v55) = 2;
          sub_21DE6855C();
          sub_21DEC7480();
          v39 = v49;
          v42 = v21;
          v47 = v12;
          LOBYTE(v54) = 0;
          sub_21DE684B4();
          v35 = v46;
          sub_21DEC7510();
          v36 = v43;
          v38 = v55;
          v53 = 1;
          v40 = v50;
          sub_21DEC7510();
          (*(v48 + 8))(v40, v35);
          (*(v36 + 8))(v51, v47);
          swift_unknownObjectRelease();
          v37 = v54;
        }
      }

      else
      {
        v42 = v20;
        LOBYTE(v55) = 0;
        sub_21DE68604();
        v34 = v51;
        sub_21DEC7480();
        sub_21DE684B4();
        sub_21DEC7510();
        (*(v45 + 8))(v11, v8);
        (*(v43 + 8))(v34, v12);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = v55;
        v39 = v49;
      }

      *v39 = v38;
      *(v39 + 8) = v37;
      *(v39 + 16) = v23;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_21DE66148()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_21DEC7770();
  ImageMargin.hash(into:)();
  return sub_21DEC77B0();
}

uint64_t sub_21DE661A0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_21DEC7770();
  ImageMargin.hash(into:)();
  return sub_21DEC77B0();
}

unint64_t sub_21DE661F8()
{
  if (*v0)
  {
    result = 0xD00000000000002ELL;
  }

  else
  {
    result = 0x7275746375727453;
  }

  *v0;
  return result;
}

uint64_t AFMAnnotation.tgProcessor.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v9 = *sub_21DE9EEDC();
    v3 = type metadata accessor for VICCTGProcessorBuilder();

    v4 = &off_282F298A0;
    v5 = 0x800000021DED9790;
    v6 = a1;
    v7 = 0xD00000000000002ELL;
  }

  else
  {
    v10 = *sub_21DE53F2C();
    v3 = type metadata accessor for StructuredTextTGProcessorBuilder();

    v4 = &off_282F25980;
    v7 = 0x7275746375727453;
    v5 = 0xEF74786574206465;
    v6 = a1;
  }

  sub_21DE79BB0(v7, v5, v3, v4, v6);
}

uint64_t AFMAnnotation.tgProcessor(variant:)@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v9 = *sub_21DE9EEDC();
    v3 = type metadata accessor for VICCTGProcessorBuilder();

    v4 = &off_282F298A0;
    v5 = 0x800000021DED9790;
    v6 = a1;
    v7 = 0xD00000000000002ELL;
  }

  else
  {
    v10 = *sub_21DE53F2C();
    v3 = type metadata accessor for StructuredTextTGProcessorBuilder();

    v4 = &off_282F25980;
    v7 = 0x7275746375727453;
    v5 = 0xEF74786574206465;
    v6 = a1;
  }

  sub_21DE79BB0(v7, v5, v3, v4, v6);
}

uint64_t AFMAnnotation.postProcess(tgResponse:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 57) = *v2;

  return MEMORY[0x2822009F8](sub_21DE664E4, 0, 0);
}

uint64_t sub_21DE664E4()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 57);
  v2 = type metadata accessor for SanitizerResource(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_21DE665CC;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return AFMAnnotation.postProcess(tgResponse:sanitizerResource:)(v6, v4, v5);
}