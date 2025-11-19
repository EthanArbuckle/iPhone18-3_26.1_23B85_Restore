void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4PairVyAC18SeedCtrlUnadjustedVGGMd, &_ss23_ContiguousArrayStorageCy4VDAF4PairVyAC18SeedCtrlUnadjustedVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AE24wraparoundJointRandBlindAE012verificationjkL0tGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AE24wraparoundJointRandBlindAE012verificationjkL0tGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say4VDAF4LeafVyAD7Field32VGG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say4VDAF4LeafVyAD7Field32VGG5valuetGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMd, &_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMd, &_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AESg14jointRandBlindtGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AESg14jointRandBlindtGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMd, &_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

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

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2743B2D10](a2, a3);
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
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized ClientLevelOutput.nextLevelSeed(unadjusted:prevCtrl:correctionList:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v9 = a1;
  v10 = *(a3 + 16);
  result = outlined copy of Data._Representation(a1, a2);
  v12 = 0;
  v13 = a3 + 32;
  v14 = a4 + 24;
LABEL_2:
  v15 = (v14 + 16 * v12);
  while (1)
  {
    if (v10 == v12)
    {
      return v9;
    }

    if (v12 >= v10)
    {
      break;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_14;
    }

    v17 = *(a4 + 16);
    if (v12 == v17)
    {
      return v9;
    }

    if (v12 >= v17)
    {
      goto LABEL_15;
    }

    v18 = *(v13 + v12++);
    v15 += 2;
    if (v18)
    {
      v25 = v14;
      v19 = *(v15 - 1);
      v20 = *v15;
      outlined copy of Data._Representation(v19, *v15);
      outlined copy of Data._Representation(v19, v20);
      v21 = Data.xor(_:)(v19, v20, v9, v8);
      if (!v5)
      {
        v23 = v22;
        v24 = v21;
        outlined consume of Data._Representation(v19, v20);
        outlined consume of Data._Representation(v9, v8);
        result = outlined consume of Data._Representation(v19, v20);
        v12 = v16;
        v9 = v24;
        v14 = v25;
        v8 = v23;
        v5 = 0;
        goto LABEL_2;
      }

      outlined consume of Data._Representation(v19, v20);
      outlined consume of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v19, v20);
      return v9;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized ClientLevelOutput.nextLevelCtrlGroup(unadjusted:prevCtrl:ctrlCorrections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (!v4)
  {

    return v3;
  }

  v6 = *(a3 + 16);
  v14 = a3 + 32;
  v15 = (a2 + 32);

  v8 = 0;
  while (!v6)
  {
LABEL_3:
    if (++v8 == v4)
    {
      return v3;
    }
  }

  if (v6 > *(a2 + 16))
  {
    goto LABEL_21;
  }

  v10 = v14;
  v9 = v15;
  v11 = v6;
  while (1)
  {
    if ((*v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v8 >= *(v3 + 16))
    {
      break;
    }

    if (v8 >= *(*v10 + 16))
    {
      goto LABEL_19;
    }

    v12 = *(v3 + v8 + 32);
    v13 = *(*v10 + v8 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    if (v8 >= *(v3 + 16))
    {
      goto LABEL_20;
    }

    *(v3 + v8 + 32) = v12 ^ v13;
LABEL_8:
    v10 += 8;
    ++v9;
    if (!--v11)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ClientLevelOutput(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ClientLevelOutput(uint64_t result, int a2, int a3)
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

uint64_t QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = specialized QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*(v8 + 80) - 8) + 8))(a3);
  (*(*(a6 - 8) + 8))(a2, a6);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v14;
}

uint64_t QueryGadget.wireInputs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t QueryGadget.wireInputs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t QueryGadget.wireOutputs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t QueryGadget.wireOutputs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t QueryGadget.numOfCalled.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t QueryGadget.numOfCalled.setter(uint64_t a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*QueryGadget.numOfCalled.modify())()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return LeafParent.SuperBlockData.leaves.modify;
}

__n128 QueryGadget.parameters.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 136);
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*(v14 + 80) - 8) + 8))(a3);
  (*(*(a6 - 8) + 8))(a2, a6);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v15;
}

char *QueryGadget.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  return v0;
}

uint64_t QueryGadget.__deallocating_deinit()
{
  QueryGadget.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t QueryGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62[0] = a4;
  v7 = *v4;
  v74 = *(*v4 + 80);
  v70 = *(v74 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = v62 - v9;
  v11 = *(*(a3 + 8) + 8);
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v15 = *(v73 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v69 = v62 - v21;
  v22 = *(v7 + 128);
  result = swift_beginAccess();
  v24 = *(v4 + v22);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v27 = v4;
  v77 = v19;
  v68 = AssociatedTypeWitness;
  v28 = v11;
  v29 = v10;
  v30 = v22;
  *(v4 + v22) = v26;
  v31 = v28;
  result = dispatch thunk of Collection.count.getter();
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = v74;
  v76 = v29;
  if (result)
  {
    v33 = v31;
    v34 = 0;
    v63 = (v73 + 8);
    v62[2] = v70 + 16;
    v62[1] = v70 + 40;
    v35 = 32;
    v66 = v13;
    v67 = a3;
    v64 = v22;
    v65 = a1;
    v75 = v33;
    do
    {
      v73 = v34 + 1;
      v74 = result;
      v36 = *(v27 + v30);
      v71 = v34;
      v72 = v36;
      dispatch thunk of Collection.startIndex.getter();
      v37 = v69;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v38 = *v63;
      v39 = v68;
      (*v63)(v77, v68);
      v40 = dispatch thunk of Collection.subscript.read();
      v41 = v70;
      (*(v70 + 16))(v76);
      v40(v78, 0);
      v38(v37, v39);
      swift_beginAccess();
      v42 = type metadata accessor for Array();
      v43 = type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v44 = v27[2];
      Array._checkSubscript_mutating(_:)(v71);
      Array._makeMutableAndUnique()();
      v45 = *(v44 + v35);
      v46 = v72;
      Array._checkSubscript_mutating(_:)(v72);
      v47 = *(v44 + v35);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v49 = v47 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v49 = v47;
      }

      v50 = v49 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v46;
      v51 = *(v41 + 40);
      v30 = v64;
      v51(v50, v76, v32);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v42, v52, v53, v54, v55);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v43, v56, v57, v58, v59);
      swift_endAccess();
      v34 = v73;
      v35 += 8;
      result = v74 - 1;
    }

    while (v74 != 1);
  }

  v60 = *(v27 + *(*v27 + 120));
  if ((*(v27 + v30) * v60) >> 64 == (*(v27 + v30) * v60) >> 63)
  {
    swift_beginAccess();
    v61 = v27[3];
    Array.subscript.getter();
    return swift_endAccess();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v103 = a2;
  v94 = a1;
  v14 = *v8;
  v105 = a8;
  v109 = *(*(a8 + 8) + 8);
  v104 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v15 = *(v98 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v111 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v101 = &v85 - v21;
  v92 = *(a5 - 8);
  v22 = *(v92 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v91 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v14[10];
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v24, v29);
  v108 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v85 - v33;
  v35 = *(a4 + 4);
  *(v9 + v14[16]) = 0;
  v93 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v35);
  v36 = v9 + *(*v9 + 136);
  v37 = *a4;
  v95 = a4[1];
  v38 = v95;
  *v36 = v37;
  *(v36 + 1) = v38;
  v107 = v37;
  *(v36 + 4) = v35;
  v39 = v14[11];
  v40 = *(v39 + 8);
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  if (__OFADD__(v95, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v88 = v39;
  v89 = a7;
  v90 = a5;
  v42 = specialized Array.init(repeating:count:)(v34, v95 + 1, v26);
  v43 = *(v27 + 8);
  v86 = v34;
  v43(v34, v26);
  v112 = v42;
  v44 = type metadata accessor for Array();
  v45 = specialized Array.init(repeating:count:)(&v112, v107, v44);

  v9[2] = v45;

  v47 = MEMORY[0x2743B2830](v46, v44);

  if (v47 < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v85 = a3;
  v87 = v9;
  v106 = v27;
  v102 = v26;
  v100 = v44;
  v48 = AssociatedTypeWitness;
  if (v47)
  {
    v49 = 0;
    v97 = v106 + 16;
    v98 += 8;
    v96 = v106 + 40;
    v50 = 32;
    v99 = v9 + 2;
    do
    {
      *&v107 = v49 + 1;
      dispatch thunk of Collection.startIndex.getter();
      v51 = v47;
      v52 = v101;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v53 = *v98;
      (*v98)(v111, v48);
      v54 = dispatch thunk of Collection.subscript.read();
      v55 = v106;
      v56 = v102;
      (*(v106 + 16))(v108);
      v54(&v112, 0);
      v57 = v52;
      v58 = v51;
      v59 = v99;
      v53(v57, AssociatedTypeWitness);
      swift_beginAccess();
      v60 = v100;
      v61 = type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v62 = *v59;
      Array._checkSubscript_mutating(_:)(v49);
      Array._makeMutableAndUnique()();
      v63 = *(v62 + v50);
      Array._checkSubscript_mutating(_:)(0);
      v64 = *(v62 + v50);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v66 = v64 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v66 = v64;
      }

      v67 = v56;
      v48 = AssociatedTypeWitness;
      (*(v55 + 40))(v66 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v108, v67);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v60, v68, v69, v70, v71);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v61, v72, v73, v74, v75);
      swift_endAccess();
      v50 += 8;
      v49 = v107;
      v47 = v58 - 1;
    }

    while (v47);
  }

  v76 = v106;
  (*(v92 + 16))(v91, v94, v90);
  v77 = *(*(*(v89 + 8) + 8) + 8);
  v78 = v102;
  v79 = Array.init<A>(_:)();
  Polynomial.init(coefficients:)(v79, &v112);
  v80 = v112;
  v81 = type metadata accessor for Polynomial();
  v82 = v93;
  result = Polynomial.evaluateUsingRootsOfUnity(count:)(v93, v81);
  v83 = v87;
  *(v87 + 3) = result;
  if (!*(&v95 + 1))
  {
    goto LABEL_14;
  }

  if (v82 != 0x8000000000000000 || *(&v95 + 1) != -1)
  {
    *&v83[*(*v83 + 120)] = v82 / *(&v95 + 1);
    v112 = v80;
    v84 = v86;
    Polynomial.evaluate(at:)(v85, v81, v86);

    (*(v76 + 32))(&v83[*(*v83 + 112)], v84, v78);
    return v83;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  return specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t type metadata completion function for QueryGadget(uint64_t a1)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v22 = a3 + v8;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v23;
      v13 = v24;
      v25 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v24;
        v19 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v12 = v19;
        v6 = v25;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 32 * v15;
      *(v16 + 32) = v12;
      *(v16 + 48) = v13;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF8BitMasksCsAE_pTg5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    goto LABEL_21;
  }

  v6 = v4;
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v9 = 0;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a4;
    }

    v13 = v10 - a3 + 1;
    while (v9 < v5)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      v16 = a3 + v9;
      v14(&v17, &v16, &v15);
      if (v6)
      {
      }

      v6 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v18 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (a4 < a3)
      {
        goto LABEL_19;
      }

      if (v13 == ++v9)
      {
        goto LABEL_20;
      }

      if (v11 == v5)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF16InnerCorrectionsVsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v19 = a3 + v8;
      result = (v16)(&v20, &v19, &v18);
      if (v4)
      {

        return v6;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v20;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v10 == ++v8)
      {
        goto LABEL_21;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF29OneBlockSparseInnerCorrectionVsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = a3;
  v27 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v27;
    v9 = a4;
    if (a4 <= v7)
    {
      v9 = v7;
    }

    v18 = v9 - v7 + 1;
    v19 = v7;
    v17 = v5;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v23 = v7 + v8;
      result = (v20)(&v24, &v23, &v22);
      if (v4)
      {

        return v6;
      }

      v11 = v24;
      v12 = v25;
      v13 = v26;
      v27 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      *(v16 + 41) = v13;
      v7 = v19;
      if (a4 < v19)
      {
        goto LABEL_20;
      }

      if (v18 == ++v8)
      {
        goto LABEL_21;
      }

      v5 = v17;
      if (v10 == v17)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32Vs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 4 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF22SiblingLeafCorrectionsVyAG7Field32VGsAE_pTg5(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v14 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v18 = a3 + v8;
      result = v15(&v19, &v18, &v17);
      if (v4)
      {

        return v6;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v14 == ++v8)
      {
        goto LABEL_21;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v14 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v18 = a3 + v8;
      result = (v15)(&v19, &v18, &v17);
      if (v4)
      {

        return v6;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 4 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v14 == ++v8)
      {
        goto LABEL_21;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AISg14jointRandBlindts5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v24;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v18 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v21 = a3 + v8;
      a1(&v22, &v21);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v22;
      v12 = v23;
      v24 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v6 = v24;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v18 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field40VsAE_pTg5Tm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t))
{
  v17 = result;
  v6 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v22 = MEMORY[0x277D84F90];
  result = a5(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v22;
    v10 = a4;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    v16 = v10 - a3 + 1;
    while (v9 < v6)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }

      v20 = a3 + v9;
      result = v17(&v21, &v20, &v19);
      if (v5)
      {

        return v7;
      }

      v12 = v21;
      v22 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = a5(v13 > 1, v14 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v14 + 1;
      *(v7 + 8 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v16 == ++v9)
      {
        goto LABEL_21;
      }

      if (v11 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF25OneBlockSparsePublicShareVyAG7Field32VGsAE_pTg5(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v19 = a3 + v8;
      result = v16(&v20, &v19, &v18);
      if (v4)
      {

        return v6;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v20;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v10 == ++v8)
      {
        goto LABEL_21;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t static EvaluatorLevelInput.makeRootCtrl(for:keptBlockCount:)(uint64_t result, size_t a2)
{
  if ((*result & 1) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a2)
      {
        return MEMORY[0x277D84F90];
      }

      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = a2;
      bzero((v9 + 32), a2);
      return v9;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x277D84F90];
  if (a2)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0);
    v3 = a2;
    v4 = 0;
    result = v10;
    v5 = *(v10 + 16);
    do
    {
      v11 = result;
      v6 = *(result + 24);
      if (v5 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v5 + 1, 1);
        v3 = a2;
        result = v11;
      }

      v7 = v4++ == 0;
      *(result + 16) = v5 + 1;
      *(result + v5++ + 32) = v7;
    }

    while (v3 != v4);
  }

  return result;
}

_BYTE *specialized static EvaluatorLevelInput.makeRootInput(for:keptBlockCount:seed:)(_BYTE *result, size_t a2, uint64_t a3, unint64_t a4)
{
  if (*result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        v14 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0);
        v7 = a2;
        v8 = 0;
        v9 = *(v14 + 16);
        do
        {
          v10 = *(v14 + 24);
          if (v9 >= v10 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1);
            v7 = a2;
          }

          v11 = v8++ == 0;
          *(v14 + 16) = v9 + 1;
          *(v14 + v9++ + 32) = v11;
        }

        while (v7 != v8);
      }

LABEL_12:
      outlined copy of Data._Representation(a3, a4);
      return 0;
    }

    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v13 + 16) = a2;
      bzero((v13 + 32), a2);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for EvaluatorLevelInput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for EvaluatorLevelInput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t XofHmacSha256Aes128.nextVector(count:)(size_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v4 = *(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

  if (v3)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5[1].i64[0] = v3;
    bzero(&v5[2], v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v3 = *(MEMORY[0x277D84F90] + 16);
  }

  v6 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v7 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v5 + 2, v5[2].i64 + v3, v2 + v6, v2 + v7);
  swift_endAccess();

  return v5;
}

uint64_t SeedStreamAES128CTR.__allocating_init(key:iv:maxBufferSize:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(a1, a2, a3);

  return v9;
}

uint64_t SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(a1, a2, a3);

  return v3;
}

uint64_t SeedStreamAES128CTR.__allocating_init(key:)(uint64_t a1)
{
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v9[2] = 16;
  v9[4] = 0;
  v9[5] = 0;
  v10 = *(v1 + 48);
  v11 = *(v1 + 52);
  swift_allocObject();
  v12 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(v8, v9, 0x100uLL);

  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t SeedStreamAES128CTR.fillBuffer()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1[1].i64[0];
  if (v2)
  {
    v3 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v5 = v1[1].u64[0];
    v6 = v2 - 1;
    if (v5 < v2 - 1)
    {
      v6 = v1[1].u64[0];
    }

    if (v6 >= 0x20)
    {
      v8 = v6 + 1;
      v9 = v8 & 0x1F;
      if ((v8 & 0x1F) == 0)
      {
        v9 = 32;
      }

      v7 = v8 - v9;
      v10 = v1 + 3;
      v11 = v7;
      do
      {
        v10[-1] = 0uLL;
        *v10 = 0uLL;
        v10 += 2;
        v11 -= 32;
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }

    while (v7 < v5)
    {
      v1[2].i8[v7++] = 0;
      if (v2 == v7)
      {
        *(v0 + 16) = v1;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_15:
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v1;
  if ((v12 & 1) == 0)
  {
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    *(v0 + 16) = v1;
  }

  v13 = v1[1].i64[0];
  v14 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v15 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v1 + 2, v1[2].i64 + v13, v0 + v14, v0 + v15);
  swift_endAccess();
  *(v0 + 16) = v1;
  result = swift_endAccess();
  *(v0 + 24) = 0;
  return result;
}

Swift::UInt8 __swiftcall SeedStreamAES128CTR.next()()
{
  v1 = v0[3];
  if (v1 == v0[4])
  {
    SeedStreamAES128CTR.fillBuffer()();
    v1 = v0[3];
  }

  result = swift_beginAccess();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[2];
    if (v1 < *(v3 + 16))
    {
      result = *(v3 + v1 + 32);
      v0[3] = v1 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t SeedStreamAES128CTR.nextBytes(count:)(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v3[1].i64[0] = v2;
      bzero(&v3[2], v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      v2 = *(MEMORY[0x277D84F90] + 16);
    }

    v4 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v5 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v3 + 2, v3[2].i64 + v2, v1 + v4, v1 + v5);
    swift_endAccess();
    return v3;
  }

  return result;
}

uint64_t SeedStreamAES128CTR.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v3 = type metadata accessor for SymmetricKey();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SeedStreamAES128CTR.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v3 = type metadata accessor for SymmetricKey();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:maxBufferSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = *(v4 + 48);
  v13 = *(v4 + 52);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = v14;
  v18[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  if (*(a2 + 16) > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v18[0]) = *(a2 + 16);
  specialized _copyCollectionToContiguousArray<A>(_:)(v18, v18 + 1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  HMAC.update<A>(data:)();

  specialized Array.append<A>(contentsOf:)(a3);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v15 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = a4;
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t XofHmacSha256Aes128.init(seedBytes:domainSeparationTag:binder:maxBufferSize:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v20 - v16;
  *(v4 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v21 = a3;
  v22 = a4;
  v24[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac, v17, v12);
  if (a2[2] > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v24[0]) = a2[2];
  v23 = specialized _copyCollectionToContiguousArray<A>(_:)(v24, v24 + 1);
  swift_beginAccess();
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  HMAC.update<A>(data:)();

  v23 = a2;
  specialized Array.append<A>(contentsOf:)(v21);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v4 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = v22;
  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

Swift::UInt8 __swiftcall XofHmacSha256Aes128.next()()
{
  if (*(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {

    v1 = SeedStreamAES128CTR.next()();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall XofHmacSha256Aes128.update(_:)(Swift::OpaquePointer a1)
{
  if (*(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    HMAC.update<A>(data:)();
    swift_endAccess();
  }
}

Swift::Void __swiftcall XofHmacSha256Aes128.finalize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - v12;
  if (*(v1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    __break(1u);
  }

  else
  {
    v14 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    (*(v3 + 16))(v7, v1 + v14, v2);
    HMAC.finalize()();
    (*(v3 + 8))(v7, v2);
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    (*(v9 + 8))(v13, v8);
  }
}

size_t *closure #1 in XofHmacSha256Aes128.finalize()(size_t a1, size_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v25 - v14;
  v25 = xmmword_270C48950;
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  SymmetricKey.init<A>(data:)();
  result = (*(v7 + 16))(v12, v15, v6);
  v17 = a2 - a1;
  if (!a1)
  {
    v17 = 0;
  }

  if (v17 < 16)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 < 0x20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(16, 0);
  result = specialized Slice._copyContents(initializing:)(&v25, v18 + 4, 16, 0x10uLL, 0x20uLL, a1, a2);
  if (result == 16)
  {
    v19 = *(a3 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize);
    v20 = type metadata accessor for SeedStreamAES128CTR(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(v12, v18, v19);

    (*(v7 + 8))(v15, v6);
    v24 = *(a3 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
    *(a3 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = v23;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t XofHmacSha256Aes128.deinit()
{
  v1 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

  return v0;
}

uint64_t XofHmacSha256Aes128.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExtendableOutputFunction.update(_:) in conformance XofHmacSha256Aes128()
{
  if (*(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    HMAC.update<A>(data:)();
    return swift_endAccess();
  }

  return result;
}

void protocol witness for ExtendableOutputFunction.next() in conformance XofHmacSha256Aes128()
{
  if (*(v0 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {

    SeedStreamAES128CTR.next()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for BatchedExtendableOutputFunction.init(seedBytes:domainSeparationTag:binder:maxBufferSize:) in conformance XofHmacSha256Aes128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  XofHmacSha256Aes128.init(seedBytes:domainSeparationTag:binder:maxBufferSize:)(a1, a2, a3, a4);
  return v11;
}

size_t *specialized Slice._copyContents(initializing:)(size_t *result, void *__dst, int64_t a3, size_t a4, size_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if ((a5 - a4) >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = type metadata accessor for XofHmacSha256Aes128(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v13 = v12;
  v16[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  if (*(a2 + 16) > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v16[0]) = *(a2 + 16);
  specialized _copyCollectionToContiguousArray<A>(_:)(v16, v16 + 1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  HMAC.update<A>(data:)();

  specialized Array.append<A>(contentsOf:)(a3);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v13 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = 256;
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _s9CryptoKit3AESO4VDAFE3CTRO5NonceV10nonceBytesAHx_tKcSlRzs5UInt8V7ElementRtzlufCSayAKG_Tt0g5Tf4g_n(uint64_t a1)
{
  __dst[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1 == 16 || v1 == 12)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    memcpy(__dst, (a1 + 32), v1);
    result = __dst[0];
  }

  else
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v3 = 0;
    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized SeedStreamAES128CTR.init(key:iv:maxBufferSize:)(uint64_t a1, uint64_t a2, size_t a3)
{
  v6 = v3;
  v10 = *v6;
  if (SymmetricKey.bitCount.getter() != 128)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v6 + 4) = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    v22 = v11;

    swift_unexpectedError();
    v23 = *(v6 + 2);

    (*v22)(&v6[v5], v4);
    v24 = *(*v6 + 48);
    v25 = *(*v6 + 52);
    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  if (a3)
  {
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = a3;
    bzero((v12 + 32), a3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *(v6 + 2) = v12;
  *(v6 + 3) = a3;
  v13 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v14 = type metadata accessor for SymmetricKey();
  v15 = (*(v14 - 8) + 16);
  (*v15)(&v6[v13], a1, v14);
  v16 = _s9CryptoKit3AESO4VDAFE3CTRO5NonceV10nonceBytesAHx_tKcSlRzs5UInt8V7ElementRtzlufCSayAKG_Tt0g5Tf4g_n(a2);
  v18 = v17;
  v19 = HIDWORD(v17);
  (*(v15 - 1))(a1, v14);
  v20 = &v6[OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce];
  *v20 = v16;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  return v6;
}

uint64_t type metadata completion function for SeedStreamAES128CTR()
{
  result = type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SeedStreamAES128CTR(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for XofHmacSha256Aes128()
{
  type metadata accessor for HMAC<SHA256>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for HMAC<SHA256>()
{
  if (!lazy cache variable for type metadata for HMAC<SHA256>)
  {
    type metadata accessor for SHA256();
    lazy protocol witness table accessor for type SHA256 and conformance SHA256();
    v0 = type metadata accessor for HMAC();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HMAC<SHA256>);
    }
  }
}

uint64_t GadgetWireInputs.numOfCalled.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t GadgetWireInputs.values.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t GadgetWireInputs.values.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t GadgetWireInputs.__allocating_init<A>(numOfCalls:proveRand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5();
  (*(*(a3 - 8) + 8))(a2, a3);
  return v7;
}

uint64_t GadgetWireInputs.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*v4 + 80);
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v65 = v54 - v9;
  v10 = *(*(a3 + 8) + 8);
  v12 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v14 = *(v62 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v58 = v54 - v20;
  swift_beginAccess();
  v21 = v4[2];
  v22 = v4[3];
  if (v21 >= v22)
  {
    v71 = v4[2];
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v49;
    MEMORY[0x2743B25F0](540884512, 0xE400000000000000);
    v71 = v22;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    v51 = v69;
    v52 = v70;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v53 = v51;
    *(v53 + 8) = v52;
    *(v53 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v67 = v18;
    v23 = AssociatedTypeWitness;
    v4[2] = v21 + 1;
    result = dispatch thunk of Collection.count.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v25 = v10;
      v26 = 0;
      v55 = (v62 + 8);
      v54[3] = v59 + 16;
      v54[2] = v59 + 40;
      v27 = 32;
      v56 = v12;
      v57 = a3;
      v66 = a1;
      v63 = v23;
      v64 = v25;
      v68 = v4;
      do
      {
        v61 = v26 + 1;
        v62 = result;
        v60 = v4[2];
        dispatch thunk of Collection.startIndex.getter();
        v28 = v58;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v29 = *v55;
        (*v55)(v67, v23);
        v30 = dispatch thunk of Collection.subscript.read();
        v31 = v59;
        (*(v59 + 16))(v65);
        v30(&v69, 0);
        v29(v28, v63);
        swift_beginAccess();
        v32 = type metadata accessor for Array();
        v33 = type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v34 = v68[4];
        Array._checkSubscript_mutating(_:)(v26);
        Array._makeMutableAndUnique()();
        v35 = *(v34 + v27);
        v36 = v60;
        Array._checkSubscript_mutating(_:)(v60);
        v37 = *(v34 + v27);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v39 = v37 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v39 = v37;
        }

        (*(v31 + 40))(v39 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v36, v65, v7);
        v4 = v68;
        destructiveProjectEnumData for SeedCtrlUnadjustedError(v32, v40, v41, v42, v43);
        v44 = v33;
        v23 = v63;
        destructiveProjectEnumData for SeedCtrlUnadjustedError(v44, v45, v46, v47, v48);
        swift_endAccess();
        v26 = v61;
        v27 += 8;
        result = v62 - 1;
      }

      while (v62 != 1);
    }
  }

  return result;
}

uint64_t GadgetWireInputs.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t GadgetWireInputs.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t specialized GadgetWireInputs.init<A>(numOfCalls:proveRand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = *v5;
  v9 = v79;
  v80 = a1;
  v10 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v11 = *(v75 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v78 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v72 = &v64 - v17;
  v18 = v9[10];
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v16, v21);
  v76 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v64 - v25;
  v5[2] = 0;
  v27 = a2;
  v71 = a3;
  v28 = v10;
  v29 = dispatch thunk of Collection.count.getter();
  v30 = v79;
  v31 = v80;
  v5[3] = v80;
  v32 = *(v30[11] + 8);
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  if (__OFADD__(v31, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v34 = specialized Array.init(repeating:count:)(v26, v31 + 1, v18);
  v77 = v19;
  (*(v19 + 8))(v26, v18);
  v81[0] = v34;
  v35 = v18;
  v36 = type metadata accessor for Array();
  v37 = specialized Array.init(repeating:count:)(v81, v29, v36);

  v5[4] = v37;
  v38 = v5 + 4;
  if (v29 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v65 = v5;
  if (v29)
  {
    v39 = v29;
    v40 = 0;
    v69 = (v75 + 8);
    v70 = a4;
    v67 = v77 + 16;
    v68 = v35;
    v66 = v77 + 40;
    v41 = 32;
    v79 = v38;
    v80 = v36;
    do
    {
      v74 = v40 + 1;
      v75 = v39;
      v42 = v27;
      v43 = v28;
      dispatch thunk of Collection.startIndex.getter();
      v44 = v72;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v45 = *v69;
      v46 = AssociatedTypeWitness;
      (*v69)(v78, AssociatedTypeWitness);
      v47 = v68;
      v48 = dispatch thunk of Collection.subscript.read();
      (*(v77 + 16))(v76);
      v48(v81, 0);
      v45(v44, v46);
      swift_beginAccess();
      v49 = type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v50 = v42;
      v51 = *v79;
      Array._checkSubscript_mutating(_:)(v40);
      Array._makeMutableAndUnique()();
      v52 = *(v51 + v41);
      Array._checkSubscript_mutating(_:)(0);
      v53 = *(v51 + v41);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v55 = v53 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v55 = v53;
      }

      (*(v77 + 40))(v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v76, v47);
      v27 = v50;
      v28 = v43;
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v80, v56, v57, v58, v59);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v49, v60, v61, v62, v63);
      swift_endAccess();
      v40 = v74;
      v41 += 8;
      v39 = v75 - 1;
    }

    while (v75 != 1);
  }

  return v65;
}

uint64_t Gadget.evaluate<A>(at:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2 >> 62;
  if (v11)
  {
    if (v11 == 1)
    {
      return QueryGadget.evaluate<A>(at:)(a1, a4, a6, a7);
    }

    else
    {
      return (*(a5 + 64))(a1, a4, a6, a3);
    }
  }

  else
  {
    result = GadgetWireInputs.update<A>(_:)(a1, a4, a6);
    if (!v7)
    {
      return (*(a5 + 64))(a1, a4, a6, a3, a5);
    }
  }

  return result;
}

unint64_t Gadget.wirePolynomialLength.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((result + 1) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == -1)
  {
    return 1;
  }

  else
  {
    return 1 << -__clz(result);
  }
}

uint64_t Gadget.gadgetPolynomialLength.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  result = (*(a2 + 48))(a1, a2);
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 * v6;
  if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t Gadget.parameters.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  v7 = (*(a2 + 32))(a1, a2);
  v8 = (*(a2 + 40))(a1, a2);
  v9 = (*(a2 + 48))(a1, a2);
  result = (*(a2 + 56))(a1, a2);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = result;
  return result;
}

void __swiftcall GadgetParameters.init(arity:degree:numOfCalls:wirePolynomialLength:gadgetPolynomialLength:)(VDAF::GadgetParameters *__return_ptr retstr, Swift::Int arity, Swift::Int degree, Swift::Int numOfCalls, Swift::Int wirePolynomialLength, Swift::Int gadgetPolynomialLength)
{
  retstr->arity = arity;
  retstr->degree = degree;
  retstr->numOfCalls = numOfCalls;
  retstr->wirePolynomialLength = wirePolynomialLength;
  retstr->gadgetPolynomialLength = gadgetPolynomialLength;
}

uint64_t type metadata instantiation function for GadgetEvaluation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_4VDAF16GadgetEvaluationOyxG(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for GadgetEvaluation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GadgetEvaluation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for GadgetEvaluation(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GadgetParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GadgetParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t dispatch thunk of Gadget.evaluate<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 64))();
}

{
  return (*(a5 + 72))();
}

uint64_t Prio3.init(flp:numOfAggregators:numOfProofs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  if ((a2 - 2) > 0xFD)
  {
    _StringGuts.grow(_:)(46);

    v16 = 0xD000000000000032;
    v17 = 0x8000000270C52C10;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0, 0xE000000000000000);

    MEMORY[0x2743B25F0](0x20746F67202CLL, 0xE600000000000000);
  }

  else
  {
    if (static Prio3.isRecommended(numOfProofs:)(a3, a4, a5, a6))
    {
      *a7 = a2;
      *(a7 + 1) = a3;
      v12 = type metadata accessor for Prio3();
      return (*(*(a4 - 8) + 32))(&a7[*(v12 + 56)], a1, a4);
    }

    _StringGuts.grow(_:)(48);

    v16 = 0xD00000000000003CLL;
    v17 = 0x8000000270C52C50;
  }

  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v14);

  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v15 = v16;
  *(v15 + 8) = v17;
  *(v15 + 16) = 1;
  swift_willThrow();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t Prio3.shard<A>(_:nonce:seedBytes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a3 + 16);
  if (v9 != 16)
  {
    _StringGuts.grow(_:)(44);

    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v148 = v9;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    v34 = 0xD000000000000030;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v35 = 0xD000000000000030;
    *(v35 + 8) = 0x8000000270C52B10;
    *(v35 + 16) = 1;
LABEL_11:
    swift_willThrow();
    return v34;
  }

  v10 = v7;
  v12 = a5;
  v141 = a2;
  v133 = a3;
  v143 = v8;
  v125 = a1;
  v15 = a5[2];
  v14 = a5[3];
  v16 = a5[5];
  v142 = a5[4];
  v137 = v16;
  v138 = v14;
  v17 = *(*(a7 + 8) + 8);
  v19 = dispatch thunk of Collection.count.getter();
  if (v19 != Prio3.randomSizeForShard.getter(v12))
  {
    _StringGuts.grow(_:)(39);

    Prio3.randomSizeForShard.getter(v12);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v148 = dispatch thunk of Collection.count.getter();
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v37);

    v34 = 0xD00000000000002BLL;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v38 = 0xD00000000000002BLL;
    *(v38 + 8) = 0x8000000270C52B50;
    *(v38 + 16) = 0;
    goto LABEL_11;
  }

  v140 = v15;
  v122 = a6;
  v121 = a7;
  v20 = Prio3.splitSeedBytes<A>(_:)(a4, v12, a6, a7);
  v131 = v22;
  v23 = *(v20 + 16);
  v24 = MEMORY[0x277D84F90];
  v136 = v7;
  v123 = v21;
  v124 = v12;
  v134 = v20;
  if (v23)
  {
    v25 = v20;
    v144 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v26 = v24;
    v27 = (v25 + 32);
    v28 = v23;
    do
    {
      v29 = *v27;
      v144 = v26;
      v30 = *(v26 + 16);
      v31 = *(v26 + 24);

      if (v30 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v30 + 1, 1);
        v26 = v144;
      }

      *(v26 + 16) = v30 + 1;
      *(v26 + 8 * v30 + 32) = v29;
      v27 += 3;
      --v28;
    }

    while (v28);
    v144 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v40 = v143;
    v41 = (v134 + 40);
    v12 = v124;
    do
    {
      v42 = *v41;
      v144 = v24;
      v43 = *(v24 + 16);
      v44 = *(v24 + 24);

      if (v43 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v43 + 1, 1);
        v40 = v143;
        v24 = v144;
      }

      *(v24 + 16) = v43 + 1;
      *(v24 + 8 * v43 + 32) = v42;
      v41 += 3;
      --v23;
    }

    while (v23);
    v45 = v123;
    v10 = v136;
  }

  else
  {
    v45 = v21;
    v26 = MEMORY[0x277D84F90];
    v40 = v143;
  }

  v46 = *(v12 + 56);
  v47 = v142;
  v34 = v10 + v46;
  v48 = (*(v142 + 112))(v141, v140, v142);
  if (v40)
  {

LABEL_20:

    return v34;
  }

  v139 = v46;
  v135 = v48;
  v141 = 0;
  v49 = *(v12 + 56);
  v50 = v12;
  v51 = *(v142 + 80);
  v143 = (v142 + 80);
  v132 = v51;
  v52 = v51(v140, v142);
  if (v52 < 1)
  {
    v143 = &v119;
    v148 = v135;
    v71 = *v136;
    MEMORY[0x28223BE20](v52, v53);
    v133 = v110;
    v72 = v137;
    v111 = v140;
    v112 = v138;
    v113 = v122;
    v114 = v47;
    v115 = v137;
    v116 = v121;
    v117 = v26;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    static VDAFProtocol.splitShare<A, B>(_:into:_:)(&v148, v71, partial apply for closure #4 in Prio3.shard<A>(_:nonce:seedBytes:), v133, v50, AssociatedTypeWitness, v138, WitnessTable, AssociatedConformanceWitness, v72);

    v65 = v136;
    v76 = 0;
    goto LABEL_37;
  }

  if (v45)
  {
    v54 = v134;
    v55 = *(v134 + 16);

    v56 = 0;
    v57 = MEMORY[0x277D84F90];
LABEL_24:
    v58 = 24 * v56 + 48;
    while (v55 != v56)
    {
      if (v56 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v59 = *(v54 + v58);
      v58 += 24;
      ++v56;
      if (v59)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
        }

        v61 = *(v57 + 2);
        v60 = *(v57 + 3);
        v62 = v57;
        if (v61 >= v60 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v57);
        }

        *(v62 + 2) = v61 + 1;
        v57 = v62;
        *&v62[8 * v61 + 32] = v59;
        goto LABEL_24;
      }
    }

    v63 = v57;
    v144 = v124;
    v145 = swift_getAssociatedTypeWitness();
    v146 = swift_getWitnessTable();
    v147 = swift_getAssociatedConformanceWitness();
    v64 = type metadata accessor for VerificationJointRandomness();
    v65 = v136;
    v66 = *v136;
    v67 = swift_getWitnessTable();
    v120 = v66;
    v68 = v66;
    v34 = v64;
    v69 = static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(v135, v123, v63, v26, v68, v133, v64, v67);
    if (v141)
    {

      swift_bridgeObjectRelease_n();
      return v34;
    }

    v77 = v69;
    v78 = v70;

    v79 = v132(v140, v142);
    v76 = VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(v79, v136[1], v77);
    v148 = v78;
    v50 = v124;
    v71 = v120;
LABEL_37:
    v133 = v76;
    v120 = v71;
    LOBYTE(v144) = 3;
    v80 = swift_getWitnessTable();
    v81 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v144, v50, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_270C44540;
    v83 = v65[1];
    if ((v83 & 0x8000000000000000) != 0)
    {
LABEL_55:
      __break(1u);
    }

    else
    {
      v119 = v80;
      v84 = v142;
      v85 = v140;
      if (v83 <= 0xFF)
      {
        *(v82 + 32) = v83;
        v132 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v131, v81, v82, v138, v137);

        v86 = swift_getAssociatedTypeWitness();
        v144 = Array.init()();
        v87 = (*(v84 + 56))(v85, v84);
        v88 = v83 * v87;
        if ((v83 * v87) >> 64 == (v83 * v87) >> 63)
        {
          v131 = type metadata accessor for Array();
          Array.reserveCapacity(_:)(v88);
          v89 = v141;
          v90 = v133;
          if (!v83)
          {
            v101 = v133;

            v103 = v142;
            v104 = v140;
            v105 = swift_getAssociatedConformanceWitness();
LABEL_49:
            v106 = MEMORY[0x28223BE20](v105, v102);
            v111 = v104;
            v112 = v138;
            v113 = v122;
            v114 = v103;
            v115 = v137;
            v116 = v121;
            v117 = v24;
            v118 = v136;
            v107 = v124;
            static VDAFProtocol.splitShare<A, B>(_:into:_:)(&v144, v120, partial apply for closure #5 in Prio3.shard<A>(_:nonce:seedBytes:), v110, v124, v86, v138, v119, v106, v137);

            if (v101)
            {
              v108 = *(v101 + 16);
            }

            else
            {
              v109 = 0;
            }

            Prio3PublicShare.init(jointRandParts:)(v109, v125);
            v34 = Prio3.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderJointBlind:helperShares:)(v148, v144, v123, v134, v107);

            swift_unknownObjectRelease();

            return v34;
          }

          v91 = v83;
          v129 = *(v142 + 88);
          v130 = v142 + 88;
          v127 = *(v142 + 168);
          v128 = v142 + 168;
          while (1)
          {
            v141 = v89;
            v92 = v90 ? VerificationJointRandomness.next()() : Array.init()();
            v143 = v92;
            v93 = v140;
            v94 = v142;
            v95 = v129(v140, v142);
            v126 = swift_getAssociatedConformanceWitness();
            v96 = v86;
            v97 = static FieldElement.randomVector<A>(count:using:)(v95, v132, v86);
            v98 = v131;
            v99 = swift_getWitnessTable();
            v100 = v141;
            v127(&v144, v135, v97, v143, v98, v99, v93, v94, v119);
            v89 = v100;
            if (v100)
            {
              break;
            }

            --v91;
            v90 = v133;
            v86 = v96;
            if (!v91)
            {
              v101 = v133;
              v141 = 0;

              v103 = v142;
              v104 = v140;
              v105 = v126;
              goto LABEL_49;
            }
          }

          v34 = v148;

          swift_unknownObjectRelease();

          goto LABEL_20;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  v144 = 0;
  v145 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
  MEMORY[0x2743B25F0](0xD000000000000038, 0x8000000270C52B80);
  LODWORD(v118) = 0;
  v117 = 219;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Prio3.publicShare<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, size_t *a5@<X8>)
{
  v6 = v5;
  v21 = a5;
  v22 = a4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  v16 = (*(*(v14 + 32) + 80))(*(v14 + 16), *(v14 + 32)) > 0;
  v17 = *v6;
  (*(v10 + 16))(v13, a1, a3);
  v18 = *(a2 + 24);
  v19 = *(a2 + 40);
  return Prio3PublicShare.init<A>(from:parameter:)(v13, v16, v17, a3, v21, v22);
}

uint64_t Prio3.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v32 = a1;
  v33 = a6;
  v31 = *(a4 - 8);
  v10 = *(v31 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20);
  v22 = a3[2];
  v21 = a3[3];
  result = Prio3InputShareDecodableParameter.init(prio3:aggregatorID:)(v18, a2, v22, v21, a3[4], a3[5], &v34);
  if (!v6)
  {
    v29 = v35;
    v30 = v34;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v32;
    v28 = *(v31 + 16);
    v32 = 0;
    v28(v13, v27, a4);
    v34 = v30;
    v35 = v29;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    return Prio3InputShare.init<A>(from:parameter:)(v13, &v34, v22, v21, a4);
  }

  return result;
}

void Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v100 = a4;
  v89 = a2;
  v90 = a1;
  v10 = *a6;
  v11 = *a7;
  v97 = *(a7 + 8);
  v12 = *(a7 + 16);
  v93 = v10;
  v94 = v12;
  LODWORD(v95) = *(a7 + 24);
  v13 = *(a7 + 32);
  v91 = a3;
  v92 = v13;
  v14 = *(a3 + 16);
  v15 = *(a9 + 24);
  v98 = *(a9 + 16);
  v99 = v11;
  v16 = *(a9 + 40);
  v96 = *(a9 + 32);
  v17 = *(v16 + 8);
  if (v14 != v17(v15, v16))
  {
    _StringGuts.grow(_:)(49);

    *&v102 = 0xD000000000000035;
    *(&v102 + 1) = 0x8000000270C528D0;
    v106 = v17(v15, v16);
LABEL_9:
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v106 = v14;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v27 = v102;
    *(v27 + 16) = 1;
    swift_willThrow();
    return;
  }

  v88 = v16;
  v14 = *(a5 + 16);
  if (v14 != 16)
  {
    _StringGuts.grow(_:)(45);

    *&v102 = 0xD000000000000031;
    *(&v102 + 1) = 0x8000000270C52910;
    v106 = 16;
    goto LABEL_9;
  }

  WitnessTable = swift_getWitnessTable();
  VDAFProtocol.assertValidAggregatorID(_:)(v100);
  if (!v19)
  {
    if ((v100 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v86 = WitnessTable;
      v81 = a5;
      if (v100 <= 0xFF)
      {
        v20 = *(a9 + 56);
        v21 = v96[6];

        v87 = v20;
        v22 = v21(v98, v96);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v84 = static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(v99, v97, v100, v22, a9, AssociatedTypeWitness, v86);
        v83 = AssociatedConformanceWitness;
        v85 = AssociatedTypeWitness;
        v28 = v96[7];
        v80 = v96 + 7;
        v79 = v28;
        v29 = v28(v98, v96);
        v31 = v101[1];
        if ((v29 * v31) >> 64 == (v29 * v31) >> 63)
        {
          MEMORY[0x28223BE20](v29, v30);
          v68[2] = v98;
          v68[3] = v15;
          v68[4] = v96;
          v68[5] = v88;
          v32 = v100;
          v69 = v101;
          v70 = v100;
          v33 = v94;
          v34 = v95;
          v36 = specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(v94, v95, v35, partial apply for closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), v68, a9, v85);
          v82 = v31;
          v106 = v36;
          v107 = v37;
          v108 = v38;
          v109 = v39;
          v110 = v93;
          *&v102 = v99;
          BYTE8(v102) = v97;
          v103 = v33;
          LOBYTE(v104) = v34;
          v105 = v92;
          v78 = Prio3.jointRandFrom(aggregatorID:nonce:measurement:publicShare:inputShare:)(v32, v81, v84, &v110, &v102, a9);
          LOBYTE(v102) = 4;
          v40 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v102, a9, v86);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_270C44540;
          v42 = v82;
          if ((v82 & 0x8000000000000000) == 0)
          {
            v43 = v98;
            v44 = v78;
            if (v82 <= 0xFF)
            {
              *(v41 + 32) = v82;
              *&v102 = v41;

              specialized Array.append<A>(contentsOf:)(v45);
              v86 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v91, v40, v102, v15, v88);

              v110 = Array.init()();
              v46 = v96[8];
              v47 = v101;
              v48 = v43;
              v72 = v96 + 8;
              v71 = v46;
              v49 = v46(v43);
              v50 = v42 * v49;
              if ((v42 * v49) >> 64 == (v42 * v49) >> 63)
              {
                v81 = type metadata accessor for Array();
                Array.reserveCapacity(_:)(v50);
                v51 = v97;
                if (v42)
                {
                  v76 = v96[12];
                  v75 = *v47;
                  v77 = v96 + 12;
                  v73 = v96[23];
                  v74 = v96 + 23;
                  do
                  {
                    v82 = v42;
                    if (v44)
                    {

                      v94 = VerificationJointRandomness.next()();

                      v52 = v96;
                      v53 = v85;
                    }

                    else
                    {
                      v53 = v85;
                      v94 = Array.init()();
                      v52 = v96;
                    }

                    v54 = v79(v48, v52);
                    v55 = v48;
                    v56 = type metadata accessor for ArraySlice();
                    v93 = v56;
                    v92 = swift_getWitnessTable();
                    RandomAccessCollection<>.popFirst(_:)(v54, v56, v92);
                    v57 = v104;
                    v91 = v103;
                    v95 = v102;
                    v58 = v76(v48, v52);
                    v59 = static FieldElement.randomVector<A>(count:using:)(v58, v86, v53);
                    v102 = v95;
                    v103 = v91;
                    v104 = v57;
                    v60 = v81;
                    v61 = swift_getWitnessTable();
                    v73(&v110, v84, &v102, v59, v94, v75, v60, v93, v61, v92, v55, v52);
                    swift_unknownObjectRelease();

                    v42 = v82 - 1;
                    v51 = v97;
                    v48 = v98;
                    v44 = v78;
                  }

                  while (v82 != 1);
                }

                if (v44)
                {

                  v62 = VerificationJointRandomness.seed.getter();
                }

                else
                {
                  v62 = 0;
                }

                v63 = v71(v48, v96);
                v69 = v88;
                v64 = v100;
                Prio3PrepareState.init(measurementShare:jointRandSeed:aggregatorID:verifierLength:)(v99, v51, v62, v100, v63, v90);
                v65 = v110;
                if (!v44)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v67 = 0;
                  goto LABEL_28;
                }

                v66 = v44[2];
                if (*(v66 + 16) > v64)
                {
                  v67 = *(v66 + 8 * v64 + 32);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
LABEL_28:
                  Prio3PrepareShare.init(verifierShare:jointRandPart:)(v65, v67, v89);
                  return;
                }

                goto LABEL_35;
              }

LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              return;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_31;
  }
}

uint64_t Prio3.prepareMessageFrom(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v63 = a1;
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v50 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v15 = *(a2 + 56);
  v16 = *(v6 + 64);
  v59 = v6 + 64;
  v60 = v15;
  v58 = v16;
  result = v16(v7, v6);
  v18 = v3[1];
  if ((result * v18) >> 64 != (result * v18) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v54 = v3[1];
  v61 = v3;
  v52 = a3;
  v19 = specialized Array.init(repeating:count:)(v13, result * v18, AssociatedTypeWitness);
  v20 = (*(v9 + 8))(v13, AssociatedTypeWitness);
  v57 = &v50;
  v72 = v63;
  v67 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v22 = *(a2 + 24);
  *(&v50 - 4) = v7;
  *(&v50 - 3) = v22;
  v56 = v22;
  v23 = *(a2 + 40);
  *(&v50 - 2) = v6;
  *(&v50 - 1) = v23;
  v53 = v23;
  type metadata accessor for Prio3PrepareShare();
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v24 = v62;
  result = Sequence.reduce<A>(into:_:)();
  if (v24)
  {
    return result;
  }

  v72 = v64;
  swift_getWitnessTable();
  v57 = AssociatedTypeWitness;
  v68 = ArraySlice.init<A>(_:)();
  v69 = v25;
  v70 = v26;
  v71 = v27;
  *&v64 = v63;
  MEMORY[0x28223BE20](v68, v25);
  v28 = v56;
  *(&v50 - 4) = v7;
  *(&v50 - 3) = v28;
  v29 = v53;
  *(&v50 - 2) = v6;
  *(&v50 - 1) = v29;
  result = Sequence.compactMap<A>(_:)();
  v30 = v54;
  if (v54 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v53 = result;
  v63 = 0;
  v51 = a2;
  if (v54)
  {
    v56 = v6 + 192;
    while (1)
    {
      v31 = v58(v7, v6);
      v32 = type metadata accessor for ArraySlice();
      WitnessTable = swift_getWitnessTable();
      RandomAccessCollection<>.popFirst(_:)(v31, v32, WitnessTable);
      v62 = v64;
      v34 = v63;
      v35 = (*(v6 + 192))(&v64, v32, WitnessTable, v7, v6);
      if (v34)
      {
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      if ((v35 & 1) == 0)
      {
        break;
      }

      v63 = 0;
      swift_unknownObjectRelease();
      if (!--v30)
      {
        goto LABEL_9;
      }
    }

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 4;
    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_9:
    v36 = v51;
    v37 = *(v51 + 56);
    v38 = *(v6 + 80);
    v39 = v61;
    v40 = v38(v7, v6);
    v41 = *(v53 + 16);
    if (v40 < 1)
    {

      if (!v41)
      {
        result = swift_unknownObjectRelease();
        *v52 = 0;
        return result;
      }

      v46 = 0x8000000270C52850;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      v48 = 0xD00000000000003BLL;
    }

    else
    {
      if (v41 == *v39)
      {
        v42 = v53;
        v43 = swift_getWitnessTable();
        *&v64 = v36;
        *(&v64 + 1) = v57;
        v65 = v43;
        v66 = AssociatedConformanceWitness;
        type metadata accessor for VerificationJointRandomness();
        v44 = v38(v7, v6);
        VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(v44, v54, v42);
        v45 = VerificationJointRandomness.seed.getter();

        result = swift_unknownObjectRelease();
        *v52 = v45;
        return result;
      }

      v46 = 0x8000000270C52890;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      v48 = 0xD000000000000038;
    }

    *v47 = v48;
    *(v47 + 8) = v46;
    *(v47 + 16) = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t Prio3.prepareState<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v31 = a1;
  v32 = a6;
  v30 = *(a4 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20);
  v22 = a3[2];
  v21 = a3[3];
  result = Prio3PrepareStateDecodableParameter.init(prio3:aggregatorID:)(v18, a2, v22, v21, a3[4], a3[5], &v33);
  if (!v6)
  {
    v24 = v33;
    v25 = v34;
    v29 = v35;
    v26 = v36;
    v27 = v31;
    v28 = *(v30 + 16);
    v31 = 0;
    v28(v13, v27, a4);
    v33 = v24;
    v34 = v25;
    v35 = v29;
    v36 = v26;
    return Prio3PrepareState.init<A>(from:parameter:)(v13, &v33, v22, v21, a4);
  }

  return result;
}

uint64_t Prio3.prepareMessage<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  return Prio3PrepareMessage.init<A>(from:parameter:)(v9, a2, a3, a4);
}

uint64_t Prio3.prepareNext(state:message:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *a2;
  if (*(a1 + 16))
  {
    if (v10 && (specialized static Seed.== infix(_:_:)(*(a1 + 16), *a2) & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C527B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedVSgMd, &_s4VDAF4SeedVSgMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v17 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v17);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v18 = v23;
    *(v18 + 16) = 1;
    return swift_willThrow();
  }

  if (v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20 = a4;
  v11 = *(a3 + 32);
  v21 = *(a3 + 56);
  v12 = (*(v11 + 48))(*(a3 + 16), v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  result = static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(v7, v8, v9, v12, a3, AssociatedTypeWitness, WitnessTable);
  if (!v4)
  {
    v19 = (*(v11 + 128))();

    result = OutputShare.init(_:)(v19, &v26);
    *v20 = v26;
    *(v20 + 8) = v22;
    *(v20 + 24) = v24;
    *(v20 + 40) = v25;
    *(v20 + 56) = 1;
  }

  return result;
}

uint64_t Prio3.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v31[1] = a6;
  v32 = a2;
  v10 = *(a3 + 32);
  v11 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = v31 - v16;
  v34 = a5;
  v35 = a4;
  v18 = *(*(a5 + 8) + 8);
  v36 = a1;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = v18;
    v21 = *(AssociatedConformanceWitness + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v22 = *(v10 + 72);
    v31[0] = *(a3 + 56);
    v23 = v22(v11, v10);
    v24 = specialized Array.init(repeating:count:)(v17, v23, AssociatedTypeWitness);
    (*(v13 + 8))(v17, AssociatedTypeWitness);
    v25 = AggregateShare.init(_:)(v24, v38);
    MEMORY[0x28223BE20](v25, v26);
    v27 = *(a3 + 24);
    v31[-6] = v11;
    v31[-5] = v27;
    v31[-4] = v35;
    v31[-3] = v10;
    v28 = v34;
    v31[-2] = *(a3 + 40);
    v31[-1] = v28;
    type metadata accessor for AggregateShare();
    v29 = *(v33 + 8);
    v30 = v37;
    result = Sequence.reduce<A>(into:_:)();
    if (!v30)
    {
      (*(v10 + 120))(v38[2], v32, v11, v10);
    }
  }

  return result;
}

uint64_t Prio3.randomSizeForShard.getter(uint64_t result)
{
  v2 = *v1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*v1 + 0x3FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = (2 * (*v1 - 1)) | 1;
  v5 = *(result + 56);
  result = (*(*(result + 32) + 80))(*(result + 16));
  if (result <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
    goto LABEL_11;
  }

  v8 = *(v3 + 24);
  v9 = (*(*(v3 + 40) + 8))();
  result = v7 * v9;
  if ((v7 * v9) >> 64 != (v7 * v9) >> 63)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t static Prio3.isRecommended(numOfProofs:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v32[2] = *(*(v6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v32[1] = v32 - v10;
  v11 = swift_checkMetadataState();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v32 - v18;
  static Prio3.identifier.getter(a2, a4, &v35);
  if (v35 != 8)
  {
    static Prio3.identifier.getter(a2, a4, &v35);
    if (v35 != 9)
    {
      return v34 == 1;
    }
  }

  if (v34 - 256 < 0xFFFFFFFFFFFFFF01)
  {
    return 0;
  }

  swift_checkMetadataState();
  static FieldElement.modulus.getter();
  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v20)
  {
    if (v21 <= 32)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v22 = *(*(v6 + 32) + 8);
      v23 = dispatch thunk of static Comparable.> infix(_:_:)();
      v24 = *(v33 + 8);
      v24(v16, v11);
      if (v23)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      goto LABEL_16;
    }
  }

  else if (v21 < 33)
  {
    dispatch thunk of BinaryInteger._lowWord.getter();
    v24 = *(v33 + 8);
    goto LABEL_16;
  }

  LODWORD(v35) = -1;
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v26 = *(*(v6 + 32) + 8);
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  v24 = *(v33 + 8);
  v24(v16, v11);
  if ((v27 & 1) == 0)
  {
LABEL_16:
    v24(v19, v11);
    return 0;
  }

  v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v28)
  {
    if (v29 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v30 = dispatch thunk of static Comparable.> infix(_:_:)();
      v24(v16, v11);
      if ((v30 & 1) == 0)
      {
LABEL_22:
        v24(v19, v11);
        return v34 > 1;
      }

LABEL_21:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_22;
    }
  }

  else if (v29 < 65)
  {
    goto LABEL_21;
  }

  v35 = -1;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  v24(v16, v11);
  v24(v19, v11);
  if (v31)
  {
    return 1;
  }

  return v34 > 1;
}

uint64_t static Prio3.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 + 40);
  v6(&v9, a1, a2);
  if (v9 != 2)
  {
    return (v6)(a1, a2);
  }

  type metadata accessor for XofHmacSha256Aes128(0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v8 = 9;
  }

  else
  {
    v8 = 8;
  }

  *a3 = v8;
  return result;
}

uint64_t Prio3.splitSeedBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 + 8) + 8);
  v16 = dispatch thunk of Collection.count.getter();
  if (v16 != Prio3.randomSizeForShard.getter(v8))
  {
    __break(1u);
    goto LABEL_27;
  }

  (*(v10 + 16))(v13, a1, a3);
  v17 = *(v15 + 8);
  v69 = ArraySlice.init<A>(_:)();
  v70 = v18;
  v71 = v19;
  v72 = v20;
  v21 = *(v8 + 24);
  v22 = *(v8 + 40);
  v23 = (*(v22 + 8))(v21, v22);
  v25 = *v5 - 1;
  if (__OFSUB__(*v5, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v25 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v26 = v23;
  v66 = &v64;
  v67 = 0;
  v68 = v25;
  v27 = MEMORY[0x28223BE20](v23, v24);
  v28 = *(v8 + 16);
  *(&v64 - 10) = v28;
  *(&v64 - 9) = v21;
  v29 = *(v8 + 32);
  *(&v64 - 8) = a3;
  *(&v64 - 7) = v29;
  *(&v64 - 6) = v22;
  *(&v64 - 5) = a4;
  *(&v64 - 4) = &v69;
  *(&v64 - 3) = v27;
  *(&v64 - 2) = v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMR);
  v32 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v65 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Prio3.splitSeedBytes<A>(_:), (&v64 - 12), v30, v31, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v33);
  v34 = *(v8 + 56);
  if ((*(v29 + 80))(v28, v29) >= 1)
  {
    v35 = v69;
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = specialized Collection.prefix(_:)(v26, v69, v70, v71, v72);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v69 = specialized Collection.dropFirst(_:)(v26, v35, v36, v37, v38);
    v70 = v46;
    v71 = v47;
    v72 = v48;
    if (v45)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v49 = swift_dynamicCastClass();
      if (!v49)
      {
        swift_unknownObjectRelease();
        v49 = MEMORY[0x277D84F90];
      }

      v50 = *(v49 + 16);

      if (__OFSUB__(v45 >> 1, v43))
      {
        __break(1u);
      }

      else if (v50 == (v45 >> 1) - v43)
      {
        v51 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v51)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v39, v41, v43, v45);
LABEL_14:
    swift_unknownObjectRelease();
  }

LABEL_15:
  v53 = v69;
  v52 = v70;
  v55 = v71;
  v54 = v72;
  v5 = specialized Collection.prefix(_:)(v26, v69, v70, v71, v72);
  v8 = v56;
  v13 = v57;
  v15 = v58;
  specialized Collection.dropFirst(_:)(v26, v53, v52, v55, v54);
  if ((v15 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_17:
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v8, v13, v15);
LABEL_24:
    v62 = v65;
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v59 = MEMORY[0x277D84F90];
  }

  v60 = *(v59 + 16);

  if (__OFSUB__(v15 >> 1, v13))
  {
    goto LABEL_29;
  }

  if (v60 != (v15 >> 1) - v13)
  {
LABEL_30:
    swift_unknownObjectRelease_n();
    goto LABEL_17;
  }

  v61 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v61)
  {
    goto LABEL_24;
  }

  v62 = v65;
LABEL_25:
  swift_unknownObjectRelease();
  return v62;
}

uint64_t closure #1 in Prio3.splitSeedBytes<A>(_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = specialized Collection.prefix(_:)(a2, *a1, v6, v8, v7);
  v58 = v10;
  v12 = v11;
  v14 = v13;
  *a1 = specialized Collection.dropFirst(_:)(a2, v5, v6, v8, v7);
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  if (v14)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      swift_unknownObjectRelease();
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);

    if (__OFSUB__(v14 >> 1, v12))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 != (v14 >> 1) - v12)
    {
      goto LABEL_36;
    }

    v19 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v19)
    {
      goto LABEL_11;
    }

    v19 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v58, v12, v14);
    v19 = v18;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v58 = v19;
    v23 = *a1;
    v22 = a1[1];
    v25 = a1[2];
    v24 = a1[3];
    v26 = specialized Collection.prefix(_:)(a2, *a1, v22, v25, v24);
    v57 = v27;
    v14 = v28;
    v30 = v29;
    *a1 = specialized Collection.dropFirst(_:)(a2, v23, v22, v25, v24);
    a1[1] = v31;
    a1[2] = v32;
    a1[3] = v33;
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_13:
      specialized _copyCollectionToContiguousArray<A>(_:)(v26, v57, v14, v30);
      v35 = v34;
      goto LABEL_20;
    }

    v12 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v9 = *(v36 + 16);

    if (!__OFSUB__(v30 >> 1, v14))
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    swift_unknownObjectRelease_n();
  }

  if (v9 != (v30 >> 1) - v14)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_13;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v35)
  {
    goto LABEL_21;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  v37 = type metadata accessor for Prio3();
  v38 = *(v37 + 56);
  result = (*(*(v37 + 32) + 80))(*(v37 + 16));
  if (result < 1)
  {
    v54 = 0;
    goto LABEL_33;
  }

  v61 = v35;
  v41 = *a1;
  v40 = a1[1];
  v42 = a1[2];
  v43 = a1[3];
  v44 = specialized Collection.prefix(_:)(a2, *a1, v40, v42, v43);
  v60 = v45;
  v47 = v46;
  v49 = v48;
  *a1 = specialized Collection.dropFirst(_:)(a2, v41, v40, v42, v43);
  a1[1] = v50;
  a1[2] = v51;
  a1[3] = v52;
  if ((v49 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_24;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);

  if (__OFSUB__(v49 >> 1, v47))
  {
    __break(1u);
  }

  else if (v56 == (v49 >> 1) - v47)
  {
    v54 = swift_dynamicCastClass();
    result = swift_unknownObjectRelease_n();
    v35 = v61;
    if (!v54)
    {
      v54 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  swift_unknownObjectRelease_n();
LABEL_24:
  specialized _copyCollectionToContiguousArray<A>(_:)(v44, v60, v47, v49);
  v54 = v53;
  v35 = v61;
LABEL_32:
  result = swift_unknownObjectRelease();
LABEL_33:
  *a3 = v58;
  a3[1] = v35;
  a3[2] = v54;
  return result;
}

void *Prio3.jointRandFrom(aggregatorID:nonce:measurement:publicShare:inputShare:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *a4;
  v11 = *(a5 + 32);
  v12 = *(a6 + 56);
  v13 = *(a6 + 32);
  v14 = *(a6 + 16);
  v33 = *(v13 + 80);
  if (v33(v14, v13) <= 0)
  {
    if (!(v11 | v10))
    {
      return 0;
    }

    _StringGuts.grow(_:)(103);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD000000000000065, 0x8000000270C52950);
    v28 = 0;
    v25 = 0xE000000000000000;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    goto LABEL_10;
  }

  if (v11)
  {
    if (v10)
    {
      v31 = a2;
      swift_getAssociatedTypeWitness();
      swift_getWitnessTable();
      swift_getAssociatedConformanceWitness();
      v30 = type metadata accessor for VerificationJointRandomness();
      type metadata accessor for Array();

      swift_getWitnessTable();
      v15 = ArraySlice.init<A>(_:)();
      v17 = v16;
      v32 = v18;
      v29 = v19;
      WitnessTable = swift_getWitnessTable();
      v21 = static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(v10, v15, v17, v32, v29, v11, a1, v31, v30, WitnessTable);
      swift_unknownObjectRelease();
      v22 = v7 + *(a6 + 56);
      v23 = v33(v14, v13);
      return VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(v23, *(v7 + 8), v21);
    }

    v25 = 0x8000000270C52A00;
    lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
    swift_allocError();
    v28 = 0xD000000000000038;
LABEL_10:
    v27 = 1;
    goto LABEL_11;
  }

  v25 = 0x8000000270C529C0;
  lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
  swift_allocError();
  v27 = 0;
  v28 = 0xD000000000000037;
LABEL_11:
  *v26 = v28;
  *(v26 + 8) = v25;
  *(v26 + 16) = v27;
  return swift_willThrow();
}

uint64_t Prio3.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderJointBlind:helperShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5[3];
  v10 = a5[4];
  v11 = a5[5];
  v20[0] = a5[2];
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  type metadata accessor for Prio3InputShare();
  v21 = Array.init()();
  v12 = *v5;
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(v12);
  Prio3InputShare.init(measurementShare:proofShare:jointRandBlind:)(a1, 0, a2, 0, a3, v20);

  Array.append(_:)();
  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = (a4 + 48);
    do
    {
      v15 = *(v14 - 2);
      v16 = *(v14 - 1);
      v17 = *v14;
      v14 += 3;
      Prio3InputShare.init(measurementShare:proofShare:jointRandBlind:)(v15, 1, v16, 1, v17, v20);

      Array.append(_:)();
      --v13;
    }

    while (v13);
  }

  return v21;
}

uint64_t closure #4 in Prio3.shard<A>(_:nonce:seedBytes:)(uint64_t result, uint64_t a2)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = type metadata accessor for Prio3();
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) > v4)
  {
    v5 = result;
    v6 = *(a2 + 8 * v4 + 32);

    WitnessTable = swift_getWitnessTable();
    v8 = static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(v6, v2, v5, WitnessTable);

    return v8;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t closure #5 in Prio3.shard<A>(_:nonce:seedBytes:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 > 0xFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(a2 + 8 * result + 32);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a7;
  v18[3] = a8;
  v13 = type metadata accessor for Prio3();
  LOBYTE(v18[0]) = 1;

  WitnessTable = swift_getWitnessTable();
  v15 = static VDAFProtocol.domainSeparationTag(usage:)(v18, v13, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_270C44550;
  v16 = *(a3 + 8);
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= 0xFF)
  {
    *(result + 32) = v16;
    *(result + 33) = v8;
    v17 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v12, v15, result, a5, a8);

    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v12 = type metadata accessor for Prio3();
  LOBYTE(v18[0]) = 1;
  WitnessTable = swift_getWitnessTable();
  v14 = static VDAFProtocol.domainSeparationTag(usage:)(v18, v12, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_270C44550;
  v16 = *(a2 + 8);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v16 > 0xFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = v16;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= 0xFF)
  {
    *(result + 33) = a3;
    v17 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, v14, result, a5, a7);

    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in Prio3.prepareMessageFrom(_:parameter:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return Array<A>.elementwiseAdd(_:)(v2, v3, AssociatedConformanceWitness);
}

uint64_t Prio3.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a1;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v22 - v12;
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v15 = *(a2 + 56);
  v16 = (*(v6 + 72))(v7, v6);
  v17 = specialized Array.init(repeating:count:)(v13, v16, AssociatedTypeWitness);
  (*(v9 + 8))(v13, AssociatedTypeWitness);
  AggregateShare.init(_:)(v17, &v33);
  v18 = *(a2 + 24);
  v27 = v7;
  v28 = v18;
  v19 = v24;
  v29 = v23;
  v30 = v6;
  v31 = *(a2 + 40);
  v32 = v24;
  type metadata accessor for AggregateShare();
  v20 = *(*(*(v19 + 8) + 8) + 8);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t closure #1 in Prio3.aggregate<A>(_:parameter:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for AggregateShare();
  return AggregateShare.accumulate(_:)(&v4, v2);
}

uint64_t Prio3.isValid(parameter:previousParameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return specialized PINE.isValid(parameter:previousParameters:)(a1, a2);
}

uint64_t Prio3.prepareShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a6;
  v28 = a5;
  v26 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  v15 = *(v13 + 32);
  v16 = *(v13 + 16);
  result = (*(v15 + 64))(v16, v15);
  v18 = *(v6 + 8);
  v19 = result * v18;
  if ((result * v18) >> 64 == (result * v18) >> 63)
  {
    v20 = *(a3 + 56);
    if ((*(v15 + 80))(v16, v15) < 1)
    {
      v22 = 0;
    }

    else
    {
      v21 = *(a3 + 24);
      v22 = (*(*(a3 + 40) + 8))();
    }

    (*(v9 + 16))(v12, v26, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return Prio3PrepareShare.init<A>(from:parameter:)(v12, v19, v22, 0, AssociatedTypeWitness, a4, AssociatedConformanceWitness, v28, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Aggregator.isValid(parameter:previousParameters:) in conformance Prio3<A, B>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return specialized PINE.isValid(parameter:previousParameters:)(a1, a2);
}

uint64_t closure #1 in Prio3.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return static AggregateShare.+= infix(_:_:)(a1, &v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t Prio3.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18 = a5;
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return v18(v10, 1, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
}

uint64_t partial apply for closure #4 in Prio3.shard<A>(_:nonce:seedBytes:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return closure #4 in Prio3.shard<A>(_:nonce:seedBytes:)(a1, v1[8]);
}

uint64_t partial apply for closure #1 in Prio3.prepareMessageFrom(_:parameter:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return closure #1 in Prio3.prepareMessageFrom(_:parameter:)(a1, a2);
}

unint64_t instantiation function for generic protocol witness table for Prio3Error(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
  result = lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Prio3PrepareMessage and conformance Prio3PrepareMessage()
{
  result = lazy protocol witness table cache variable for type Prio3PrepareMessage and conformance Prio3PrepareMessage;
  if (!lazy protocol witness table cache variable for type Prio3PrepareMessage and conformance Prio3PrepareMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prio3PrepareMessage and conformance Prio3PrepareMessage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prio3Error(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Prio3Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for Prio3(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prio3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Prio3(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t partial apply for closure #1 in Prio3.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 80);
  v9 = *(v1 + 56);
  v8 = *(v1 + 48);
  return closure #1 in Prio3.splitSeedBytes<A>(_:)(*(v1 + 64), *(v1 + 72), a1);
}

uint64_t PINEPublicShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v18)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
LABEL_9:
    swift_willThrow();
    return (*(v12 + 8))(v11, a5);
  }

  v46 = v15;
  v47 = v6;
  v45 = v14;
  v20 = *(*(v14 + 8) + 8);
  v56 = v11;
  v48 = v20;
  v49 = v12;
  v21 = dispatch thunk of Collection.count.getter();
  v22 = *(a6 + 8);
  result = v22(a4, a6);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = 2 * result * a2;
  if ((2 * result * a2) >> 64 != v24 >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v21 != v24)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    type metadata accessor for PINEPublicShare();
    v38 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v38);

    MEMORY[0x2743B25F0](0x6572697571657220, 0xEF202A2032203A64);
    v50 = v22(a4, a6);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
    v50 = a2;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v11 = v56;
    v50 = dispatch thunk of Collection.count.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    v41 = v52;
    v42 = v53;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    v12 = v49;
    goto LABEL_9;
  }

  (*(v49 + 16))(v17, v56, a5);
  v25 = v48[1];
  result = ArraySlice.init<A>(_:)();
  v52 = result;
  v53 = v26;
  v54 = v27;
  v55 = v28;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v48 = &v44;
    v50 = 0;
    v51 = a2;
    MEMORY[0x28223BE20](result, v26);
    *(&v44 - 6) = a4;
    *(&v44 - 5) = a5;
    v29 = v45;
    *(&v44 - 4) = a6;
    *(&v44 - 3) = v29;
    *(&v44 - 2) = &v52;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v31 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v32 = MEMORY[0x277D84AC0];
    v47 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PINEPublicShare.init<A>(from:parameter:), (&v44 - 8), v30, &type metadata for Seed, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v33);
    v48 = &v44;
    v50 = 0;
    v51 = a2;
    MEMORY[0x28223BE20](v47, v34);
    *(&v44 - 6) = a4;
    *(&v44 - 5) = a5;
    *(&v44 - 4) = a6;
    *(&v44 - 3) = v29;
    *(&v44 - 2) = &v52;
    v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in PINEPublicShare.init<A>(from:parameter:), (&v44 - 8), v30, &type metadata for Seed, MEMORY[0x277D84A98], v31, v32, v35);
    (*(v49 + 8))(v56, a5);
    result = swift_unknownObjectRelease();
    v37 = v46;
    *v46 = v47;
    v37[1] = v36;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t PINEPublicShare.init(wraparoundJointRandParts:verificationJointRandParts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

BOOL static PINEPublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!_sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(*a1, *a2))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(v2, v3);
}

uint64_t closure #1 in PINEPublicShare.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = (*(a3 + 8))(a2, a3);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = specialized Collection.prefix(_:)(v5, *a1, v6, v8, v9);
  v25 = v11;
  v13 = v12;
  v15 = v14;
  *a1 = specialized Collection.dropFirst(_:)(v5, v7, v6, v8, v9);
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
  if ((v15 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_3:
    specialized _copyCollectionToContiguousArray<A>(_:)(v10, v25, v13, v15);
    v20 = v19;
    v21 = a4;
LABEL_10:
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v15 >> 1, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v23 != (v15 >> 1) - v13)
  {
LABEL_13:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v20 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  v21 = a4;
  if (!v20)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  *v21 = v20;
  return result;
}

uint64_t partial apply for closure #1 in PINEPublicShare.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return closure #1 in PINEPublicShare.init<A>(from:parameter:)(*(v1 + 48), *(v1 + 16), *(v1 + 32), a1);
}

{
  return partial apply for closure #2 in PINEPublicShare.init<A>(from:parameter:)(a1);
}

uint64_t PINEPublicShare.encodedLength.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v24;
    v6 = v1 + 32;
    v7 = *(v24 + 16);
    do
    {
      v8 = *(*v6 + 16);
      v25 = result;
      v9 = *(result + 24);
      v10 = v7 + 1;
      if (v7 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1);
        result = v25;
      }

      *(result + 16) = v10;
      *(result + 8 * v7 + 32) = v8;
      v6 += 8;
      ++v7;
      --v3;
    }

    while (v3);
LABEL_9:
    v11 = 0;
    v12 = 32;
    while (1)
    {
      v13 = *(result + v12);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      v12 += 8;
      if (!--v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v10 = *(MEMORY[0x277D84F90] + 16);
  if (v10)
  {
    result = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_12:

  v15 = *(v2 + 16);
  if (v15)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v2 + 32;
    v17 = *(v4 + 16);
    do
    {
      v18 = *(*v16 + 16);
      v19 = *(v4 + 24);
      v20 = v17 + 1;
      if (v17 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
      }

      *(v4 + 16) = v20;
      *(v4 + 8 * v17 + 32) = v18;
      v16 += 8;
      ++v17;
      --v15;
    }

    while (v15);
LABEL_19:
    v21 = 0;
    v22 = 32;
    while (1)
    {
      v23 = *(v4 + v22);
      v14 = __OFADD__(v21, v23);
      v21 += v23;
      if (v14)
      {
        break;
      }

      v22 += 8;
      if (!--v20)
      {
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v20 = *(v4 + 16);
  if (v20)
  {
    goto LABEL_19;
  }

  v21 = 0;
LABEL_22:

  result = v11 + v21;
  if (__OFADD__(v11, v21))
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t PINEPublicShare.encode<A>(into:)()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = (*v0 + 32);
    do
    {
      v4 = *v3++;

      Seed.encode<A>(into:)();

      --v2;
    }

    while (v2);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = (v1 + 32);
    do
    {
      v8 = *v7++;

      Seed.encode<A>(into:)();

      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t type metadata instantiation function for PINEPublicShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Prio3PrepareShare.init(verifierShare:jointRandPart:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Prio3PrepareShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v100 = a8;
  v101 = a3;
  v93 = a9;
  v97 = *(a7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v84 - v19;
  v21 = *(a6 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18, v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    swift_willThrow();
    return (*(v21 + 8))(a1, a6);
  }

  v99 = v21;
  v102 = a1;
  v28 = *(a7 + 64);
  v91 = a5;
  v92 = a7;
  v29 = v28(a5, a7);
  v30 = v29 * a2;
  if ((v29 * a2) >> 64 != (v29 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  v31 = *(*(v100 + 8) + 8);
  v94 = a6;
  v32 = dispatch thunk of Collection.count.getter();
  v33 = v30 + v101;
  if (__OFADD__(v30, v101))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v32 != v33)
  {
    v103 = 0;
    v104 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    type metadata accessor for Prio3PrepareShare();
    v58 = _typeName(_:qualified:)();
    v60 = v59;

    v103 = v58;
    v104 = v60;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v107 = v33;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v61);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v62 = v102;
    v63 = v94;
    v107 = dispatch thunk of Collection.count.getter();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v64);

    v65 = v103;
    v66 = v104;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v67 = v65;
    v67[1] = v66;
    swift_willThrow();
    return (*(v99 + 8))(v62, v63);
  }

  (*(v99 + 16))(v25, v102, v94);
  v34 = *(v31 + 8);
  v35 = ArraySlice.init<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v100 = specialized Collection.prefix(_:)(v30, v35, v36, v38, v40);
  v89 = v43;
  v90 = v42;
  v88 = v44;
  v45 = specialized Collection.dropFirst(_:)(v30, v35, v37, v39, v41);
  v86 = v47;
  v87 = v46;
  v85 = v48;
  v103 = v100;
  v104 = v90;
  v105 = v89;
  v106 = v88;
  v49 = TupleTypeMetadata3;
  v50 = *(TupleTypeMetadata3 + 48);
  v51 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1, 1);
  *(v20 + v50) = a2;
  swift_unknownObjectRetain();
  v52 = v28;
  v53 = v91;
  *(v20 + v51) = v52(v91, v92);
  (*(*(v49 - 8) + 56))(v20, 0, 1, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v55 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v56 = v98;
  v57 = Array<A>.init<A>(from:parameter:)(&v103, v20, v53, v54, v97, v55);
  if (v56)
  {
    (*(v99 + 8))(v102, v94);
    return swift_unknownObjectRelease();
  }

  v68 = v85;
  v69 = v86;
  v100 = v57;
  v70 = v101;
  if (v101 < 1)
  {
    (*(v99 + 8))(v102, v94, v87);
    result = swift_unknownObjectRelease();
    v79 = 0;
    goto LABEL_21;
  }

  v71 = v45;
  v72 = v45;
  v73 = v87;
  v28 = specialized Collection.prefix(_:)(v101, v72, v87, v86, v85);
  v98 = v74;
  a2 = v75;
  v20 = v76;
  specialized Collection.dropFirst(_:)(v70, v71, v73, v69, v68);
  v77 = v99;
  if (v20)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v80 = swift_dynamicCastClass();
    if (!v80)
    {
      swift_unknownObjectRelease();
      v80 = MEMORY[0x277D84F90];
    }

    v81 = *(v80 + 16);

    if (!__OFSUB__(v20 >> 1, a2))
    {
      if (v81 == (v20 >> 1) - a2)
      {
        v79 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v82 = v99;
        if (!v79)
        {
          swift_unknownObjectRelease();
          v79 = MEMORY[0x277D84F90];
        }

        (*(v82 + 8))(v102, v94);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease_n();
    v77 = v99;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
LABEL_12:
  specialized _copyCollectionToContiguousArray<A>(_:)(v28, v98, a2, v20);
  v79 = v78;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = (*(v77 + 8))(v102, v94);
LABEL_21:
  v83 = v93;
  *v93 = v100;
  v83[1] = v79;
  return result;
}

uint64_t static Prio3PrepareShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a4 + 8) + 8);
  if (static Array<A>.== infix(_:_:)())
  {
    if (v5)
    {
      if (v7 && (specialized static Seed.== infix(_:_:)(v5, v7) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Prio3PrepareShare.encodedLength.getter(uint64_t a1)
{
  v3 = v1[1];
  v10 = *v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection<>.encodedLength.getter(v5, WitnessTable, *(*(a1 + 24) + 40));
  if (v3)
  {
    v8 = *(v3 + 16);
    v9 = __OFADD__(result, v8);
    result += v8;
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Prio3PrepareShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v14 = *v4;
  v10 = *(a2 + 16);
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection<>.encode<A>(into:)(a1, v11, a3, WitnessTable, a4, *(*(a2 + 24) + 40));
  if (v9)
  {
    return Seed.encode<A>(into:)();
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PrepareShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, Swift::Int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void, void, void))
{
  v151 = a8;
  v142 = a5;
  v132 = a4;
  v157 = a3;
  v16 = a9;
  v123 = *(a9 - 8);
  v17 = *(v123 + 64);
  v18 = MEMORY[0x28223BE20](a1, a2);
  v156 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v141 = &v122 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v158 = &v122 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v140 = &v122 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v122 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v150 = &v122 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v149 = type metadata accessor for Optional();
  v124 = *(v149 - 8);
  v36 = *(v124 + 64);
  v38 = MEMORY[0x28223BE20](v149, v37);
  v148 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v147 = &v122 - v41;
  v139 = type metadata accessor for Data.Iterator();
  v42 = *(v139 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v139, v44);
  v138 = &v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a11 + 64))(a9, a11);
  v47 = result * a6;
  v131 = a6;
  if ((result * a6) >> 64 != (result * a6) >> 63)
  {
    goto LABEL_97;
  }

  v166 = a9;
  v167 = a10;
  v145 = a10;
  v168 = a11;
  v169 = a12;
  v146 = a12;
  v133 = type metadata accessor for LeafCorrectionCalculator.UncorrectedValues();
  v170 = static Array._allocateUninitialized(_:)();
  v125 = type metadata accessor for LeafParent();
  result = MEMORY[0x2743B2830](a7);
  if (result < 0)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v154 = a11;
  v126 = a7;
  v129 = a9;
  v152 = result;
  if (!result)
  {
    goto LABEL_70;
  }

  if (v152 > *(a1 + 16))
  {
    goto LABEL_99;
  }

  if (v152 > *(a2 + 16))
  {
LABEL_100:
    __break(1u);
    return result;
  }

  v144 = v47 >> 2;
  v135 = (v42 + 8);
  v134 = v132 >> 62;
  v48 = __OFSUB__(HIDWORD(v157), v157);
  v128 = v48;
  v127 = HIDWORD(v157) - v157;
  v130 = BYTE6(v132);
  v155 = (a2 + 40);
  v49 = (a1 + 40);
  while (1)
  {
    v57 = *(v49 - 1);
    v58 = *v49;
    v59 = *v49 >> 62;
    v143 = v49;
    if (v59 > 1)
    {
      v61 = v132;
      if (v59 != 2)
      {
        goto LABEL_18;
      }

      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      v60 = v62 - v63;
      if (__OFSUB__(v62, v63))
      {
        goto LABEL_89;
      }

      outlined copy of Data._Representation(v57, v58);
      if (!v60)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v59)
      {
        if (__OFSUB__(HIDWORD(v57), v57))
        {
          goto LABEL_90;
        }

        v60 = HIDWORD(v57) - v57;
        outlined copy of Data._Representation(v57, v58);
      }

      else
      {
        v60 = BYTE6(v58);
      }

      v61 = v132;
      if (!v60)
      {
LABEL_18:
        result = outlined consume of Data._Representation(v57, v58);
        v64 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    if (v60 < 1)
    {
      v64 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v64 = swift_allocObject();
      v65 = _swift_stdlib_malloc_size(v64);
      v64[2] = v60;
      v64[3] = 2 * v65 - 64;
    }

    v66 = v138;
    v67 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v57, v58);
    result = (*v135)(v66, v139);
    if (v67 != v60)
    {
      goto LABEL_86;
    }

LABEL_26:
    v68 = v134;
    if (v134 > 1)
    {
      if (v134 != 2)
      {
        goto LABEL_36;
      }

      v71 = *(v157 + 2);
      v70 = *(v157 + 3);
      v69 = v70 - v71;
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_92;
      }
    }

    else
    {
      v69 = v130;
      if (!v134)
      {
        goto LABEL_33;
      }

      v69 = v127;
      if (v128)
      {
        goto LABEL_91;
      }
    }

    outlined copy of Data._Representation(v157, v61);
LABEL_33:
    if (!v69)
    {
LABEL_36:
      outlined consume of Data._Representation(v157, v61);
      v72 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    if (v69 < 1)
    {
      v72 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v72 = swift_allocObject();
      v73 = _swift_stdlib_malloc_size(v72);
      v72[2] = v69;
      v72[3] = 2 * v73 - 64;
    }

    v74 = v138;
    v75 = v157;
    v76 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v75, v61);
    result = (*v135)(v74, v139);
    v77 = v76 == v69;
    v68 = v134;
    if (!v77)
    {
      goto LABEL_87;
    }

LABEL_40:
    v78 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(v64, v151, v72, v144, v145, v146);

    v79 = *(v155 - 1);
    v80 = *v155;
    v81 = *v155 >> 62;
    v153 = v78;
    if (v81 > 1)
    {
      if (v81 != 2)
      {
        goto LABEL_53;
      }

      v84 = *(v79 + 16);
      v83 = *(v79 + 24);
      v82 = v83 - v84;
      if (__OFSUB__(v83, v84))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (!v81)
      {
        v82 = BYTE6(v80);
        if (!BYTE6(v80))
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      if (__OFSUB__(HIDWORD(v79), v79))
      {
        goto LABEL_93;
      }

      v82 = HIDWORD(v79) - v79;
    }

    outlined copy of Data._Representation(v79, v80);
    if (!v82)
    {
LABEL_53:
      result = outlined consume of Data._Representation(v79, v80);
      v85 = MEMORY[0x277D84F90];
      goto LABEL_57;
    }

LABEL_51:
    if (v82 < 1)
    {
      v85 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v85 = swift_allocObject();
      v86 = _swift_stdlib_malloc_size(v85);
      v85[2] = v82;
      v85[3] = 2 * v86 - 64;
    }

    v87 = v138;
    v88 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v79, v80);
    result = (*v135)(v87, v139);
    v77 = v88 == v82;
    v16 = v129;
    if (!v77)
    {
      goto LABEL_88;
    }

LABEL_57:
    if (v68 <= 1)
    {
      break;
    }

    if (v68 == 2)
    {
      v91 = *(v157 + 2);
      v90 = *(v157 + 3);
      v89 = v90 - v91;
      if (__OFSUB__(v90, v91))
      {
        goto LABEL_96;
      }

      goto LABEL_63;
    }

LABEL_10:
    outlined consume of Data._Representation(v157, v61);
    v50 = MEMORY[0x277D84F90];
LABEL_11:
    v49 = (v143 + 16);
    v51 = v145;
    v52 = v146;
    v143 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(v85, v151, v50, v144, v145, v146);

    v53 = v131;
    v54 = v154;
    v55 = static FieldElement.randomVectorBatched<A>(count:using:)(v131, v153, v16, v51, v154, v52);
    v56 = static FieldElement.randomVectorBatched<A>(count:using:)(v53, v143, v16, v51, v54, v52);
    v166 = v55;
    v167 = v56;
    type metadata accessor for Array();
    Array.append(_:)();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v155 += 2;
    if (!--v152)
    {
      goto LABEL_70;
    }
  }

  v89 = v130;
  if (!v68)
  {
    goto LABEL_64;
  }

  v89 = v127;
  if (v128)
  {
    goto LABEL_95;
  }

LABEL_63:
  outlined copy of Data._Representation(v157, v61);
LABEL_64:
  if (!v89)
  {
    goto LABEL_10;
  }

  if (v89 < 1)
  {
    v50 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v50 = swift_allocObject();
    v92 = _swift_stdlib_malloc_size(v50);
    v50[2] = v89;
    v50[3] = 2 * v92 - 64;
  }

  v93 = v138;
  v94 = v157;
  v95 = Data._copyContents(initializing:)();
  outlined consume of Data._Representation(v94, v61);
  (*v135)(v93, v139);
  if (v95 == v89)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_70:
  v135 = type metadata accessor for SiblingLeafCorrections();
  v165 = static Array._allocateUninitialized(_:)();
  v166 = v170;
  v96 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2743B26D0](&v161, v96, WitnessTable);

  v164 = v161;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v134 = type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v153 = v162;
  if (v162)
  {
    v146 = (v124 + 32);
    v145 = TupleTypeMetadata2 - 8;
    v98 = v161;
    v151 = v163;
    v139 = (v123 + 32);
    v138 = (v142 + 32);
    v99 = (v123 + 16);
    v100 = (v123 + 8);
    v137 = TupleTypeMetadata2;
    v136 = v32;
LABEL_73:
    v164 = static Array._allocateUninitialized(_:)();
    v144 = v98;
    Array.subscript.getter();
    v101 = *(v161 + 24);

    v159 = v101;
    v102 = type metadata accessor for Array();
    v103 = swift_getWitnessTable();
    MEMORY[0x2743B26D0](&v160, v102, v103);

    v159 = v160;
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    v143 = v102;
    v16 = v129;
    v152 = type metadata accessor for EnumeratedSequence.Iterator();
    v104 = v150;
    while (1)
    {
      v106 = v148;
      EnumeratedSequence.Iterator.next()();
      v107 = v147;
      (*v146)(v147, v106, v149);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v107, 1, TupleTypeMetadata2) == 1)
      {

        v161 = SiblingLeafCorrections.init(corrections:)(v164, v16, v154);
        type metadata accessor for Array();
        Array.append(_:)();
        EnumeratedSequence.Iterator.next()();
        v98 = v161;
        v151 = v163;
        v153 = v162;
        if (!v162)
        {
          goto LABEL_82;
        }

        goto LABEL_73;
      }

      v108 = *v107;
      v109 = v107 + *(TupleTypeMetadata2 + 48);
      v110 = v16;
      result = (*v139)(v104, v109, v16);
      if ((v144 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v144 >= *(v142 + 16))
      {
        goto LABEL_84;
      }

      v111 = *&v138[8 * v144];
      if (v144 >= *(v111 + 16))
      {
        goto LABEL_85;
      }

      LODWORD(v155) = *(v111 + v144 + 32);
      Array.subscript.getter();
      v112 = *v99;
      v113 = v141;
      (*v99)(v141, v104, v16);
      v114 = v140;
      v115 = v100;
      v116 = v154;
      FieldElement.init(other:)(v113, v16, v154);
      v117 = *(v116 + 8);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v118 = *v115;
      (*v115)(v158, v110);
      Array.subscript.getter();
      v157 = v112;
      v112(v113, v114, v110);
      v119 = v136;
      v120 = v113;
      v121 = v158;
      FieldElement.init(other:)(v120, v110, v116);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v118(v121, v110);
      v118(v114, v110);
      if (v155 == 1)
      {
        dispatch thunk of static AdditiveArithmetic.zero.getter();
        v157(v121, v114, v110);
        FieldElement.init(other:)(v121, v110, v116);
        dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
        v118(v114, v110);
      }

      else
      {
        v157(v156, v119, v110);
      }

      v16 = v110;
      v105 = v156;
      v157(v114, v156, v110);
      Array.append(_:)();
      v118(v105, v110);
      v118(v119, v110);
      v104 = v150;
      v118(v150, v110);
      TupleTypeMetadata2 = v137;
      v100 = v115;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
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
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_82:

  return LeafCorrections.init(valueCorrections:)(v165, v16, v154);
}

void LeafCorrectionCalculator.keptBlockCount.getter()
{
  type metadata accessor for LeafParent();

  JUMPOUT(0x2743B2830);
}

uint64_t specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v12, 0);
      v16 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v17 = *(v5 + 8);
      v5 += 8;
      v17(v10, v4);
      result = v15;
      if (v16 == v12)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v18 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v12 = v18;
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LeafCorrectionCalculator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LeafCorrectionCalculator(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LeafCorrectionCalculator(uint64_t result, int a2, int a3)
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

uint64_t CountType.gadget.getter()
{
  result = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  return result;
}

uint64_t CountType.decode(data:numOfMeasurements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2743B2830](a1, v5);
  if (result == 1)
  {
    Array.subscript.getter();
    FieldElement.integerValue.getter(v5, v4);
    (*(v10 + 8))(v14, v5);
    v16 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CountType.truncate(measurement:)(uint64_t a1, uint64_t a2)
{
  result = specialized CountType.truncate(measurement:)(a1, a2);
  if (!v2)
  {
  }

  return result;
}

uint64_t CountType.evaluateGadget<A>(_:at:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = v4[6];
  return MultiplicationGadget.evaluate<A>(at:)(*(a1 + 16), a2, *(a1 + 24), a3, a4);
}

uint64_t CountType.evaluateGadget(_:at:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  type metadata accessor for Polynomial();
  type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return MultiplicationGadget.evaluate<A>(at:)(v7, v8, WitnessTable, a2);
}

uint64_t CountType.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v54 = a5;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v53 = &v50 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v50 - v18;
  v20 = MEMORY[0x2743B2830](v17, v8);
  v21 = *v5;
  if (v20 != *v5)
  {
    v43 = v20;
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v57 = 0xD00000000000001BLL;
    *(&v57 + 1) = 0x8000000270C51C80;
    v59 = v43;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v44);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v59 = v21;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_7:
    MEMORY[0x2743B25F0](v45);

    v48 = v57;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v49 = v48;
    *(v49 + 16) = 2;
    return swift_willThrow();
  }

  v51 = *(a4 + 24);
  v22 = type metadata accessor for GadgetEvaluation();
  v23 = MEMORY[0x2743B2830](a3, v22);
  v24 = *(v5 + 24);
  if (v23 != *(v24 + 16))
  {
    v46 = v23;
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v57 = 0x2064696C61766E49;
    *(&v57 + 1) = 0xEF203A746E756F63;
    v59 = v46;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v47);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v45 = MEMORY[0x2743B2770](v24, &type metadata for GadgetParameters);
    goto LABEL_7;
  }

  v57 = *(v5 + 32);
  v58 = *(v5 + 48);
  v25 = getContiguousArrayStorageType<A>(for:)(v8, v8);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = *(v9 + 72);
  v50 = v9;
  v29 = *(v9 + 80);
  swift_allocObject();
  v30 = static Array._adoptStorage(_:count:)();
  Array.subscript.getter();
  Array.subscript.getter();
  _finalizeUninitializedArray<A>(_:)();
  v59 = v30;
  Array.subscript.getter();
  v56[0] = v56[1];
  v31 = v51;
  v32 = type metadata accessor for MultiplicationGadget();
  v33 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v36 = v55;
  Gadget.evaluate<A>(at:for:)(&v59, v56, v32, v33, WitnessTable, v35, v19);
  outlined consume of GadgetEvaluation<A><A>(v56[0]);

  if (!v36)
  {
    v38 = v53;
    Array.subscript.getter();
    v39 = v50;
    v40 = v52;
    (*(v50 + 16))(v52, v19, v8);
    FieldElement.init(other:)(v40, v8, v31);
    v41 = *(v31 + 8);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v42 = *(v39 + 8);
    v42(v38, v8);
    return (v42)(v19, v8);
  }

  return result;
}

int64x2_t CountType.init()@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = MultiplicationGadget.init(numOfCalls:)();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_270C44540;
  v8 = type metadata accessor for MultiplicationGadget();
  WitnessTable = swift_getWitnessTable();
  Gadget.parameters.getter(v8, WitnessTable, (v7 + 32));
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = v7;
  a1[2].i64[0] = v2;
  a1[2].i64[1] = v4;
  a1[3].i64[0] = v6;
  return result;
}

uint64_t protocol witness for FullyLinearProof.truncate(measurement:) in conformance CountType<A>(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 6);
  result = specialized CountType.truncate(measurement:)(a1, a2);
  if (!v3)
  {
  }

  return result;
}

uint64_t specialized CountType.encode(measurement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v11 = &v30 - v10;
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v13)
  {
    if (v14 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v14 > 63)
  {
LABEL_3:
    v31 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = *(*(v12 + 16) + 8);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v7 + 8))(v11, AssociatedTypeWitness);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (!dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_17;
  }

LABEL_7:
  v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v17)
  {
    if (v18 < 65)
    {
      goto LABEL_14;
    }

    v31 = 1;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v19 = *(*(v12 + 16) + 8);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = (*(v7 + 8))(v11, AssociatedTypeWitness);
    if (v20)
    {
LABEL_17:
      v24 = getContiguousArrayStorageType<A>(for:)(a2, a2);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = *(*(a2 - 8) + 72);
      v28 = *(*(a2 - 8) + 80);
      swift_allocObject();
      v29 = static Array._adoptStorage(_:count:)();
      (*(v7 + 16))(v11, a1, AssociatedTypeWitness);
      FieldElement.init(_:)(v11, a2, a3);
      result = v29;
      _finalizeUninitializedArray<A>(_:)();
      return result;
    }

    __break(1u);
  }

  if (v18 > 63)
  {
    goto LABEL_16;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() == 1)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_14:
  if (dispatch thunk of BinaryInteger._lowWord.getter() == 1)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_16:
  v31 = 1;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v21 = *(*(v12 + 16) + 8);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v7 + 8))(v11, AssociatedTypeWitness);
  if (v22)
  {
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t specialized CountType.truncate(measurement:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2743B2830](a1, *(a2 + 16)) != *v2)
  {
    _StringGuts.grow(_:)(35);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v6 = 0xD00000000000001BLL;
    *(v6 + 8) = 0x8000000270C51C80;
    *(v6 + 16) = 2;
    swift_willThrow();
  }

  return a1;
}

uint64_t type metadata instantiation function for CountType()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CountType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CountType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MultiplicationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v72 = a3;
  v75 = a5;
  v77 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = swift_getAssociatedTypeWitness();
  v74 = *(v76 - 8);
  v8 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v76, v9);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v68 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v69 = &v63 - v17;
  v66 = *(a1 - 8);
  v18 = v66;
  v19 = *(v66 + 64);
  v21 = MEMORY[0x28223BE20](v16, v20);
  v67 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v79 = &v63 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v78 = &v63 - v27;
  v28 = *(*(a4 + 8) + 8);
  v63 = a2;
  v65 = swift_getAssociatedTypeWitness();
  v29 = *(v65 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v65, v31);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = &v63 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v63 - v40;
  dispatch thunk of Collection.startIndex.getter();
  v42 = dispatch thunk of Collection.subscript.read();
  v64 = *(v18 + 16);
  v43 = v78;
  v64(v78);
  v42(v80, 0);
  v44 = *(v29 + 8);
  v45 = v65;
  v44(v41, v65);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(after:)();
  v44(v34, v45);
  v46 = dispatch thunk of Collection.subscript.read();
  v47 = v77;
  v48 = v64;
  v64(v79);
  v46(v80, 0);
  v44(v38, v45);
  v49 = v67;
  v48(v67, v43, v47);
  v50 = v72;
  v51 = v47;
  FieldElement.init(other:)(v49, v47, v72);
  v52 = swift_checkMetadataState();
  v53 = *(v50 + 88);
  v54 = v68;
  v55 = v50;
  v53(v51);
  v56 = v70;
  v57 = v79;
  (v53)(v51, v50);
  v58 = v69;
  (*(AssociatedConformanceWitness + 56))(v54, v56, v52);
  v59 = *(v74 + 8);
  v60 = v76;
  v59(v56, v76);
  v59(v54, v60);
  (*(v55 + 96))(v58, v51, v55);
  v61 = *(v66 + 8);
  v61(v57, v51);
  return (v61)(v78, v51);
}

uint64_t MultiplicationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X4>, void *a2@<X6>, uint64_t a3@<X7>, void *a4@<X8>)
{
  v31 = a1;
  v32 = a2;
  v30 = a4;
  v4 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - v16;
  dispatch thunk of Collection.startIndex.getter();
  v18 = dispatch thunk of Collection.subscript.read();
  v20 = *v19;

  v18(v34, 0);
  v21 = *(v5 + 8);
  v22 = AssociatedTypeWitness;
  v21(v17, AssociatedTypeWitness);
  v33 = v20;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(after:)();
  v23 = v22;
  v21(v10, v22);
  v24 = dispatch thunk of Collection.subscript.read();
  v26 = *v25;

  v24(v34, 0);
  v21(v14, v23);
  v34[0] = v26;
  static Polynomial.* infix(_:_:)(&v33, v34, v31, v32, v30);
}

uint64_t type metadata instantiation function for MultiplicationGadget()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__int128 *Fraction.one.unsafeMutableAddressor()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  return &static Fraction.one;
}

void static Fraction.-= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFSUB__(0, a3);
  v4 = -a3;
  if (v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
LABEL_5:
    specialized static Fraction.+= infix(_:_:)(a1, a2, v4);
    return;
  }

  v3 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v3)
  {
    goto LABEL_7;
  }

  v3 = __OFSUB__(0, v4);
  v4 = -v4;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

VDAF::Fraction __swiftcall Fraction.init(_:)(Swift::Int a1)
{
  v2 = 1;
  result.numerator = a1;
  result.denominator = v2;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static Fraction.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[1] = a2;
  v4 = -a4;
  if (__OFSUB__(0, a4))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_5:
    specialized static Fraction.+= infix(_:_:)(v6, a3, v4);
    return;
  }

  v5 = __OFSUB__(0, a3);
  a3 = -a3;
  if (v5)
  {
    goto LABEL_7;
  }

  v5 = __OFSUB__(0, v4);
  v4 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

Swift::Void __swiftcall Fraction.reduce()()
{
  v1 = *v0;
  if (!*v0)
  {
    return;
  }

  v2 = v0[1];
  if (!v2)
  {
    *v0 = 1;
    return;
  }

  v3 = v0[1];
  if (v2 < 0)
  {
    v3 = -v2;
    if (__OFSUB__(0, v2))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v4 = specialized static Fraction.binaryGCD(_:_:)(v3, *v0);
  if (!v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_17;
  }

  v5 = v2 / v4;
  v0[1] = v2 / v4;
  if (v1 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_18;
  }

  v6 = v1 / v4;
  *v0 = v1 / v4;
  if (v1 / v4 < 0)
  {
    v7 = __OFSUB__(0, v6);
    v8 = -v6;
    if (!v7)
    {
      *v0 = v8;
      v7 = __OFSUB__(0, v5);
      v9 = -v5;
      if (!v7)
      {
        v0[1] = v9;
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

int64x2_t one-time initialization function for one()
{
  result = vdupq_n_s64(1uLL);
  static Fraction.one = result;
  return result;
}

uint64_t static Fraction.one.getter()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  return static Fraction.one;
}

uint64_t static Fraction.- prefix(_:)(uint64_t result, uint64_t a2)
{
  v2 = __OFSUB__(0, a2);
  v3 = -a2;
  if (v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v2 = __OFSUB__(0, result);
  result = -result;
  if (v2)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(0, v3))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t Fraction.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](47, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v2);

  return v3;
}

uint64_t static Fraction.+ infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 | result) || !(a4 | a3))
  {
    return 0;
  }

  if (result)
  {
    if (!a3)
    {
      return 0;
    }

    v4 = __OFADD__(a2 * a3, a4 * result);
    if ((a2 * a3) >> 64 == (a2 * a3) >> 63 && (a4 * result) >> 64 == (a4 * result) >> 63 && !v4 && (result * a3) >> 64 == (result * a3) >> 63)
    {
      v5 = result * a3;
      Fraction.reduce()();
      return v5;
    }

    else
    {
      return specialized Fraction.init(_:)(a2 / result + a4 / a3);
    }
  }

  else if (a3)
  {
    return 0;
  }

  else if ((a2 * a4) >> 64 == (a2 * a4) >> 63)
  {
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Fraction.*= infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v5 = *(result + 8);
  if (v5)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(result + 8) = 0;
    goto LABEL_13;
  }

  v7 = v5 * a3;
  v8 = v3 * a2;
  if ((v5 * a3) >> 64 != (v5 * a3) >> 63 || (v3 * a2) >> 64 != (v3 * a2) >> 63)
  {
    v16 = result;
    result = specialized Fraction.init(_:)(a3 / a2 * (v5 / v3));
    *v16 = result;
    v16[1] = v17;
    return result;
  }

  *result = v8;
  *(result + 8) = v7;
  if (!v8)
  {
    return result;
  }

  if (!v7)
  {
LABEL_13:
    *result = 1;
    return result;
  }

  v9 = v5 * a3;
  if (v7 < 0)
  {
    v9 = -v7;
    if (__OFSUB__(0, v7))
    {
      goto LABEL_34;
    }
  }

  v10 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v9, v8);
  if (!result)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v7 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_32;
  }

  v11 = v7 / result;
  v10[1] = v7 / result;
  if (v8 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_33;
  }

  v12 = v8 / result;
  *v10 = v8 / result;
  if (v8 / result < 0)
  {
    v13 = __OFSUB__(0, v12);
    v14 = -v12;
    if (!v13)
    {
      *v10 = v14;
      v13 = __OFSUB__(0, v11);
      v15 = -v11;
      if (!v13)
      {
        v10[1] = v15;
        return result;
      }

      goto LABEL_36;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

BOOL specialized static Fraction.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 | a1))
  {
    return 0;
  }

  if (!(a4 | a3))
  {
    return 0;
  }

  if (a1)
  {
    if (a3)
    {
      if ((a2 * a3) >> 64 == (a2 * a3) >> 63 && (a4 * a1) >> 64 == (a4 * a1) >> 63)
      {
        return a2 * a3 < a4 * a1;
      }

      else
      {
        return a2 / a1 < a4 / a3;
      }
    }

    else
    {
      return a4 > 0;
    }
  }

  else
  {
    v6 = a2 < 0 && a4 > 0;
    if (a3)
    {
      return a2 >> 63;
    }

    else
    {
      return v6;
    }
  }
}

BOOL specialized static Fraction.== infix(_:_:)(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 | result))
  {
    return 0;
  }

  if (!(a4 | a3))
  {
    return 0;
  }

  if (result && a3)
  {
    return a2 == a4 && result == a3;
  }

  if ((a2 * a4) >> 64 == (a2 * a4) >> 63)
  {
    return a2 * a4 > 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t specialized static Fraction.binaryGCD(_:_:)(int64_t result, int64_t a2)
{
  if (result < 0)
  {
    v2 = __OFSUB__(0, result);
    result = -result;
    if (v2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }
  }

  if (a2 < 0)
  {
    v2 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v2)
    {
      goto LABEL_29;
    }
  }

  if (result)
  {
    if (!a2)
    {
      return result;
    }

    v3 = __clz(__rbit64(result));
    v4 = __clz(__rbit64(a2));
    if (v4 >= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = result >> v3;
    v7 = a2 >> v4;
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v6 >= v7)
    {
      v6 = v7;
    }

    v9 = v8 - v6;
    if (__OFSUB__(v8, v6))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      while (v9)
      {
        v10 = v9 >> __clz(__rbit64(v9));
        if (v10 <= v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v10;
        }

        if (v10 < v6)
        {
          v6 = v10;
        }

        v9 = v11 - v6;
        if (__OFSUB__(v11, v6))
        {
          goto LABEL_24;
        }
      }
    }

    return v6 << v5;
  }

  return a2;
}

uint64_t specialized static Fraction.sternBrocotSearch(_:precision:maxIterations:)(uint64_t result, double a2, double a3)
{
  if (a2 < 0.0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = floor(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v4 = ceil(a2);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = v3;
    v6 = v4;
    if (*&v3 == *&v4)
    {
      return 1;
    }

    v7 = 1;
    if (result < 1)
    {
      v8 = 1;
LABEL_34:
      if (vabdd_f64(a2, v5 / v8) >= vabdd_f64(a2, v6 / v7))
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }

    v8 = 1;
    v9 = 1;
    v10 = 1;
    v11 = v4;
    v12 = v3;
    while (1)
    {
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      v14 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_39;
      }

      if (v14 < 0)
      {
        v15 = __OFSUB__(0, v14);
        v14 = -v14;
        if (v15)
        {
          goto LABEL_49;
        }

        v15 = __OFSUB__(0, v13);
        v13 = -v13;
        if (v15)
        {
          goto LABEL_50;
        }
      }

      v16 = v13 / v14;
      if (vabdd_f64(a2, v16) < a3)
      {
        return v14;
      }

      v17 = a2 - v16;
      if (v17 >= 0.0)
      {
        v8 = v14;
        v5 = v13;
      }

      else
      {
        v7 = v14;
        v6 = v13;
      }

      if (v17 >= 0.0)
      {
        v10 = v14;
      }

      else
      {
        v9 = v14;
      }

      if (v17 >= 0.0)
      {
        v12 = v13;
      }

      else
      {
        v11 = v13;
      }

      if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v12))
      {
        goto LABEL_40;
      }

      if (0x7FFFFFFFFFFFFFFFLL - v12 < v11)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v10))
      {
        goto LABEL_41;
      }

      if (0x7FFFFFFFFFFFFFFFLL - v10 >= v9)
      {
        if (--result)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized Fraction.init(_:)(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1 == 2047)
  {
    return 0;
  }

  if (!(v1 | *&a1 & 0xFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  v3 = fabs(a1);
  if (v3 > 9.22337204e18)
  {
    return 0;
  }

  result = specialized static Fraction.sternBrocotSearch(_:precision:maxIterations:)(0x100000000, v3, 0.000001);
  if (a1 < 0.0)
  {
    v6 = __OFSUB__(0, v5);
    v5 = -v5;
    if (v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v6 = __OFSUB__(0, result);
  result = -result;
  if (v6)
  {
    goto LABEL_14;
  }

  if (__OFSUB__(0, v5))
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Fraction./= infix(_:_:)(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = *result;
      if (*result)
      {
        v3 = *(result + 8);
        if (v3)
        {
          v4 = v2 * a2;
          v5 = 1.0;
          if ((v2 * a2) >> 64 == (v2 * a2) >> 63)
          {
            *result = v4;
            *(result + 8) = v3;
            if (!v4)
            {
              return result;
            }

            goto LABEL_19;
          }

LABEL_16:
          v7 = result;
          result = specialized Fraction.init(_:)(v5 / a2 * (v3 / v2));
          *v7 = result;
          v7[1] = v8;
          return result;
        }

        goto LABEL_12;
      }
    }

LABEL_14:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v6 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v6)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v2 = *result;
  if (!*result)
  {
    goto LABEL_14;
  }

  v3 = *(result + 8);
  v5 = -1.0;
  if (v3 == 0x8000000000000000)
  {
    goto LABEL_16;
  }

  if (!v3)
  {
LABEL_12:
    *(result + 8) = 0;
LABEL_13:
    *result = 1;
    return result;
  }

  v4 = v2 * a2;
  if ((v2 * a2) >> 64 != (v2 * a2) >> 63)
  {
    goto LABEL_16;
  }

  v3 = -v3;
  *result = v4;
  *(result + 8) = v3;
  if (!v4)
  {
    return result;
  }

LABEL_19:
  if (!v3)
  {
    goto LABEL_13;
  }

  v9 = v3;
  if (v3 < 0)
  {
    v9 = -v3;
    if (__OFSUB__(0, v3))
    {
      goto LABEL_35;
    }
  }

  v10 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v9, v4);
  if (!result)
  {
    goto LABEL_32;
  }

  if (v3 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_33;
  }

  v11 = v3 / result;
  v10[1] = v3 / result;
  if (v4 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_34;
  }

  v12 = v4 / result;
  *v10 = v4 / result;
  if (v4 / result < 0)
  {
    v6 = __OFSUB__(0, v12);
    v13 = -v12;
    if (!v6)
    {
      *v10 = v13;
      v6 = __OFSUB__(0, v11);
      v14 = -v11;
      if (!v6)
      {
        v10[1] = v14;
        return result;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

void specialized static Fraction.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == 0 || (a3 | a2) == 0)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    if (a2)
    {
      v7 = __OFADD__(v4 * a2, a3 * v5);
      if ((v4 * a2) >> 64 == (v4 * a2) >> 63 && (a3 * v5) >> 64 == (a3 * v5) >> 63 && !v7 && (v5 * a2) >> 64 == (v5 * a2) >> 63)
      {
        *a1 = v5 * a2;
        a1[1] = v4 * a2 + a3 * v5;
        Fraction.reduce()();
      }

      else
      {
        *a1 = specialized Fraction.init(_:)(a3 / a2 + v4 / v5);
        a1[1] = v8;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = a3;
    }

    return;
  }

  if (!a2)
  {
    if ((v4 * a3) >> 64 != (v4 * a3) >> 63)
    {
      __break(1u);
      return;
    }

    if (v4 * a3 < 0)
    {
LABEL_6:
      *a1 = 0;
      a1[1] = 0;
    }
  }
}

uint64_t specialized Fraction.init(numerator:denominator:)(uint64_t result, int64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 < 0)
  {
    v2 = -a2;
    if (__OFSUB__(0, a2))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v3 = -result;
    if (__OFSUB__(0, result))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (v3)
  {
    result = v3;
    if (v3 < 0)
    {
      result = -v3;
      if (__OFSUB__(0, v3))
      {
        goto LABEL_26;
      }
    }

    result = specialized static Fraction.binaryGCD(_:_:)(result, v2);
    if (result)
    {
      if (v3 != 0x8000000000000000 || result != -1)
      {
        if (v2 != 0x8000000000000000 || result != -1)
        {
          v4 = v3 / result;
          result = v2 / result;
          if ((result & 0x8000000000000000) == 0)
          {
            return result;
          }

          v5 = __OFSUB__(0, result);
          result = -result;
          if (!v5)
          {
            if (!__OFSUB__(0, v4))
            {
              return result;
            }

            __break(1u);
            return 1;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_22;
  }

  return 1;
}

uint64_t specialized static Fraction.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (!a1)
  {
    return v5;
  }

  result = 0;
  if (!a3)
  {
    return result;
  }

  result = 1;
  if (!a2 || !a4)
  {
    return result;
  }

  v8 = a2 * a4;
  v9 = a1 * a3;
  if ((a2 * a4) >> 64 != (a2 * a4) >> 63 || (a1 * a3) >> 64 != (a1 * a3) >> 63)
  {
    return specialized Fraction.init(_:)(a2 / a1 * (a4 / a3));
  }

  if (!v9)
  {
    return 0;
  }

  if (!v8)
  {
    return 1;
  }

  result = a2 * a4;
  if (v8 < 0)
  {
    result = -v8;
    if (__OFSUB__(0, v8))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v10 = a2 * a4;
  result = specialized static Fraction.binaryGCD(_:_:)(result, a1 * a3);
  if (!result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_27;
  }

  if (v9 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_28;
  }

  v11 = v10 / result;
  result = v9 / result;
  if (result < 0)
  {
    v12 = __OFSUB__(0, result);
    result = -result;
    if (!v12)
    {
      v12 = __OFSUB__(0, v11);
      v5 = -v11;
      if (!v12)
      {
        return result;
      }

      __break(1u);
      return v5;
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Fraction.*= infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v3 = *(result + 8);
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(result + 8) = 0;
    goto LABEL_8;
  }

  v5 = v3 * a2;
  if ((v3 * a2) >> 64 != (v3 * a2) >> 63)
  {
    v6 = v3 / v2 * a2;
    v7 = result;
    result = specialized Fraction.init(_:)(v6);
    *v7 = result;
    v7[1] = v8;
    return result;
  }

  *(result + 8) = v5;
  if (!v5)
  {
LABEL_8:
    *result = 1;
    return result;
  }

  v9 = v3 * a2;
  if (v5 < 0)
  {
    v9 = -v5;
    if (__OFSUB__(0, v5))
    {
      goto LABEL_30;
    }
  }

  v10 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v9, v2);
  if (!result)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_28;
  }

  v12 = v5 / result;
  v10[1] = v5 / result;
  if (v2 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_29;
  }

  v13 = v2 / result;
  *v10 = v2 / result;
  if (((v2 / result) & 0x8000000000000000) == 0)
  {
    return result;
  }

  v14 = __OFSUB__(0, v13);
  v15 = -v13;
  if (v14)
  {
    goto LABEL_31;
  }

  *v10 = v15;
  v14 = __OFSUB__(0, v12);
  v16 = -v12;
  if (v14)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v10[1] = v16;
  return result;
}

uint64_t specialized static Fraction./= infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v3 = __OFSUB__(0, a3);
    a3 = -a3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v3 = __OFSUB__(0, a2);
      a2 = -a2;
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_4:
  if (!a3 || (v4 = *result) == 0)
  {
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v5 = *(result + 8);
  if (!v5 || !a2)
  {
    *(result + 8) = 0;
    goto LABEL_25;
  }

  v6 = v5 * a2;
  v7 = v4 * a3;
  if ((v4 * a3) >> 64 != (v4 * a3) >> 63 || (v5 * a2) >> 64 != (v5 * a2) >> 63)
  {
    v14 = result;
    result = specialized Fraction.init(_:)(a2 / a3 * (v5 / v4));
    *v14 = result;
    v14[1] = v15;
    return result;
  }

  *result = v7;
  *(result + 8) = v6;
  if (!v7)
  {
    return result;
  }

  if (!v6)
  {
LABEL_25:
    *result = 1;
    return result;
  }

  v8 = v5 * a2;
  if (v6 < 0)
  {
    v8 = -v6;
    if (__OFSUB__(0, v6))
    {
      goto LABEL_33;
    }
  }

  v9 = result;
  result = specialized static Fraction.binaryGCD(_:_:)(v8, v7);
  if (!result)
  {
    goto LABEL_30;
  }

  if (v6 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v10 = v6 / result;
  v9[1] = v6 / result;
  if (v7 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_32;
  }

  v11 = v7 / result;
  *v9 = v7 / result;
  if (v7 / result < 0)
  {
    v3 = __OFSUB__(0, v11);
    v12 = -v11;
    if (!v3)
    {
      *v9 = v12;
      v3 = __OFSUB__(0, v10);
      v13 = -v10;
      if (!v3)
      {
        v9[1] = v13;
        return result;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}